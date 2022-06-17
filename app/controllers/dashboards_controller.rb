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
    @consumption = Consumption.find_by(user_id: current_user.id)
    @new_consumption = Consumption.new
  end
end
