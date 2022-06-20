class DashboardsController < ApplicationController
  def pot
    @all_transactions = {}
    current_user.transactions.each do |t|
      @all_transactions[t.date] = t.amount
    end
  end

  def objective_amount
  end

  def dashboard
    @time = Time.new
  end
end
