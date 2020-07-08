class BanksController < ApplicationController

  before_action :find_bank, only: [:show, :edit, :update, :destroy]

  def index
    @banks = Bank.all
  end

  def show
  end

  def new
    @bank = Bank.new
  end

  def create
    @bank = Bank.new(bank_params)
    if @bank.valid?
      @bank.save
      redirect_to bank_path(@bank)
    else 
      render :new
    end
  end

  def edit
  end

  def update
    @bank.update(bank_params)
    redirect_to bank_path(@bank.id)
  end

  def destroy
    @bank.destroy
    redirect_to banks_path
  end

  private
  
  def find_bank
    @bank = Bank.find(params[:id])
  end

  def bank_params
    params.require(:bank).permit()
  end
end
