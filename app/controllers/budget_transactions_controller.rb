class BudgetTransactionsController < ApplicationController
  before_action :set_budget_transaction, only: %i[ show edit update destroy ]

  # GET /budget_transactions or /budget_transactions.json
  def index
    @budget_transactions = BudgetTransaction.all
  end

  # GET /budget_transactions/1 or /budget_transactions/1.json
  def show
  end

  # GET /budget_transactions/new
  def new
    @budget_transaction = BudgetTransaction.new
  end

  # GET /budget_transactions/1/edit
  def edit
  end

  # POST /budget_transactions or /budget_transactions.json
  def create
    @budget_transaction = BudgetTransaction.new(budget_transaction_params)

    respond_to do |format|
      if @budget_transaction.save
        format.html { redirect_to budget_transaction_url(@budget_transaction), notice: "Budget transaction was successfully created." }
        format.json { render :show, status: :created, location: @budget_transaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @budget_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budget_transactions/1 or /budget_transactions/1.json
  def update
    respond_to do |format|
      if @budget_transaction.update(budget_transaction_params)
        format.html { redirect_to budget_transaction_url(@budget_transaction), notice: "Budget transaction was successfully updated." }
        format.json { render :show, status: :ok, location: @budget_transaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @budget_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budget_transactions/1 or /budget_transactions/1.json
  def destroy
    @budget_transaction.destroy

    respond_to do |format|
      format.html { redirect_to budget_transactions_url, notice: "Budget transaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget_transaction
      @budget_transaction = BudgetTransaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def budget_transaction_params
      params.fetch(:budget_transaction, {})
    end
end
