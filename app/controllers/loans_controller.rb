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
    @loan = Loan.create(bank_id: Bank.find(Account.find(params[:account_id]).bank_id).id, account_id: params[:account_id], amount: params[:loan][:amount], interest_rate: params[:loan][:interest_rate])
    @loan.fulfill_loan
    redirect_to user_account_path(session[:user_id], @loan.account_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
