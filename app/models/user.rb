class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
    has_many :user_roles
    has_many :roles, through: :user_roles

    # after_initialize :set_default_role, 

    after_create :set_default_role, :if => :new_record?

    def set_default_role
        self.role = 'trader' unless role = 'admin'
    end
end
