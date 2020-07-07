class TransfersController < ApplicationController
  def index
    #TODO: fix with authentication
    # @transfers = Transfer.all
  end

  def show
    #TODO: fix with authentication
    @transfer = Transfer.find(params[:id])
  end

  def new
    @transfer = Transfer.new
  end

  def create
    @transfer = Transfer.create(transfer_params)
    redirect_to accounts_path(@transfer.sender)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def transfer_params
    params.require(:transfer).permit(:sender, :receiver, :amount)
  end
end
