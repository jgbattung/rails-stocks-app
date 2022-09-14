class TransactionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_transaction, only: %i[ show edit update destroy ]

  # GET /transactions or /transactions.json
  def index
    # @user = current_user
    @transactions = Transaction.all
    redirect_to stocks_path, notice: "You are not authorized to view this page" if current_user.role != 'admin'
    # @stock = Stock.find(params[:stock_id])
  end

  # GET /transactions/1 or /transactions/1.json
  def show
    # @user = current_user
    # @stock = Stock.find(params[:stock_id])
  end

  # GET /transactions/new
  def new
    @user = current_user
    @transaction = Transaction.new
    @stock = Stock.find(params[:stock_id])
  end

# GET /transactions/1/edit
  def edit
    # @user = current_user
    # @stock = Stock.find(params[:stock_id])
  end

  # POST /transactions or /transactions.json
  def create
    client = Stock.client

    @transaction = Transaction.new(transaction_params)
    @stock = Stock.find(params[:transaction][:stock_id])
    latest_price = client.quote(@stock.company_code)['latest_price']
    @transaction.user_id = current_user.id
    @transaction.email = current_user.email
    # @transaction.company_name = @stock.company_name
    @transaction.price = latest_price

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to transaction_url(@transaction), notice: "Transaction was successfully created." }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transactions/1 or /transactions/1.json
  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to transaction_url(@transaction), notice: "Transaction was successfully updated." }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions/1 or /transactions/1.json
  def destroy
    @transaction.destroy

    respond_to do |format|
      format.html { redirect_to transactions_url, notice: "Transaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transaction_params
      params.require(:transaction).permit(:stock_name, :transaction_type, :price, :shares, :user_id, :stock_id, :email)
    end
end
