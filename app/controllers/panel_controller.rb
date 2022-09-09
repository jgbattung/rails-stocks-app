class PanelController < ApplicationController
    before_action :authenticate_user!
    before_action :correct_user
  
    def index
    end

    def correct_user
      @user = current_user
      redirect_to dashboard_path, notice: 'You are not authorized to view this page' unless @user.role == 'admin'
    end
  end