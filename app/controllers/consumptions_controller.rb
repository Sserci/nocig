class ConsumptionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create ]
  def create
    @consumption = Consumption.new(consumption_params)
    if @consumption.save
      redirect_to result_path(result: @consumption)
    else
      redirect_to simulation_path
    end
  end

  private

  def consumption_params
    params.require(:consumption).permit(:quantity, :cigarette_id)
  end
end
