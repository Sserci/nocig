class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :simulation ]

  def home
  end

  def simulation
    @simulation = Consumption.new
  end
  def result
    @simulation = Consumption.find(params[:result])
    @superiorTo1000 = [{
                       background: "assets/thailande",
                       title: "Voyage en Thailande"
                     }, {
                          background: "assets/vespa",
                          title: "Voyage en Thailande"
                       }, {
                            background: "assets/thailande",
                            title: "Voyage en Thailande"
                       }]

    @background = "assets/thailande"
  end
end
