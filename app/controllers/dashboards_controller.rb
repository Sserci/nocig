class DashboardsController < ApplicationController
  def pot
    @all_transactions = {}
    current_user.transactions.each do |t|
      @all_transactions["t.date"] = t.packs_number
    end
  end

  def objective_amount
  end

  def dashboard
    @time = Time.new
  end

  def date
  end
end
