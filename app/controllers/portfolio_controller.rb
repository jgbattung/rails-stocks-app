class PortfolioController < ApplicationController
    before_action :authenticate_user!
  
    def portfolio
        @transactions = Transaction.all
    end
  end