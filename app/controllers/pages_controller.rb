class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :simulation, :result ]

  def home
  end

  def simulation
    @simulation = Consumption.new
  end

  def result
    @result = []
    @simulation = Consumption.find(params[:result])
    @superior_to_1000 = [{
                       background: "assets/thailande",
                       title: "Voyage en Thailande",
                       budget: 1500
                     }, {
                          background: "assets/vespa",
                          title: "Un nouveau scooter",
                          budget: 4000
                       }, {
                            background: "assets/macbook",
                            title: "Un Macbook Pro",
                            budget: 1900
                       }]

    @inferior_to_500 = [{
                          background: "assets/laptop",
                          title: "Nouvel ordinateur",
                          budget: 450
                        }, {
                          background: "assets/restaurant",
                          title: "Repas dans un restaurant étoilé",
                          budget: 250
                        }, {
                          background: "assets/rome",
                          title: "Weekend à Rome",
                          budget: 450
                        }]

    @inferior_to_1000 = [{
                          background: "assets/tv",
                          title: "Nouvelle TV",
                          budget: 990
                        }, {
                          background: "assets/canape",
                          title: "Un nouveau canapé",
                          budget: 1000
                        }, {
                          background: "assets/marrakech",
                          title: "Voyage à Marrakech",
                          budget: 1000
                        }]
    @cost = @simulation.cigarette.price * @simulation.quantity * 52
    if @cost <= 600
      @result = @inferior_to_500
    elsif @cost <= 1000
      @result = @inferior_to_1000
    else
      @result = @superior_to_1000
    end
  end

  def new_objective
  end

  def create_objective
    current_user.objective_amount = params[:objective_amount]
    if current_user.save
      redirect_to show_objective_path
    else
      render :new_objective
    end
  end

  def show_objective
  end
end
