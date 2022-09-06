class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user, only: %i[ show edit update destroy ]

    def index
        @users = User.all
    end

    def show
    end

    def new
        @user = User.new
    end

    def edit
    end

    def create
        @user = User.new(user_params)

        respond_to do |format|
            if @user.save
              # Tell the UserMailer to send a welcome email after save
              UserMailer.with(user: @user).welcome_email.deliver_later
      
              format.html { redirect_to(@user, notice: 'User was successfully created.') }
              format.json { render json: @user, status: :created, location: @user }
            else
              format.html { render action: 'new' }
              format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end

  end