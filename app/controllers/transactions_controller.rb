class TransactionsController < ApplicationController
  def new
    @user = current_user
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user
    @transaction.date = Date.today
    initial_consumption = current_user.consumptions.first.quantity
    @cigarette_price = current_user.consumptions.first.cigarette.price
    @delta = initial_consumption - params[:transaction][:packs_number].to_i
    @transaction_amount = @delta * @cigarette_price
    @transaction.amount = @transaction_amount
    @transaction.save
    current_user.pot += @transaction_amount
    if current_user.save
      redirect_to dashboard_pot_path
    else
      render :new
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:user, :date, :packs_number)
  end
end
