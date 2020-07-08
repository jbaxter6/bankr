class LoansController < ApplicationController
  def index
    #TODO: fix with authentication
    @loans = Loan.where(account: Account.find(params[:account_id]))
  end

  def show
    #TODO: fix with authentication
    @loan = Loan.find(params[:id])
  end

  def new
    @loan = Loan.new
  end

  def create
    @loan = Loan.create(bank_id: params[:bank_id], account_id: params[:account_id], amount: params[:amount], interest_rate: params[:interest_rate])
    redirect_to user_account_path(session[:user_id], @loan.account_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
