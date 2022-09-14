class HistoryController < ApplicationController
    before_action :authenticate_user!
  
    def history
        @transactions = Transaction.all
    end
  end
  


