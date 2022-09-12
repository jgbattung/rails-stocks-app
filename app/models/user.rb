class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  # has_many :user_roles
  # has_many :roles, through: :user_roles
  has_and_belongs_to_many :stocks

  # after_initialize :set_default_role, 

  after_create :set_default_role, :set_default_approval

  def set_default_role
    self.role = 'trader' if email != 'admin@trader.com'
  end

  def set_default_approval
    self.approved = 'false' unless role == 'admin'
  end
end
