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
    @account = Account.create(account_params)
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account.update(account_params)
    redirect_to account_path(@account)
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
  end

  private

  def account_params
    params.require(:account).permit(:user_id, :bank_id)
  end
end
