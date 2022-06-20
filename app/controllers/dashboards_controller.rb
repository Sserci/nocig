class DashboardsController < ApplicationController
  def pot
    # @pot = Pot.new
  end

  def objective_amount
  end

  def dashboard
    @time = Time.new
  end

  def new_consumption
    @user = current_user
    @new_consumption = Consumption.new
  end
end
