class AccountsController < ApplicationController
  def index
    #For banks and admins
    @accounts = Account.all
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.create(bank_id: params[:account][:bank_id], user_id: params[:user_id], balance: params[:account][:balance])
    redirect_to user_account_path(@account.user_id, @account.id)
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account.update(account_params)
    redirect_to user_account_path(@account.id)
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
  end

  private

  def account_params
    params.require(:account).permit(:user, :bank_id)
  end
end
