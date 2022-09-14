class PortfolioController < ApplicationController
    before_action :authenticate_user!
  
    def portfolio
        @transactions = Transaction.all
    end

    def sell_stock
    end
  end