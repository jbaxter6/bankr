class LoansController < ApplicationController
  def index
    #TODO: fix with authentication
    #@loans = Loan.all
  end

  def show
    #TODO: fix with authentication
    @loan = Loan.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
