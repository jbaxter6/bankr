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
