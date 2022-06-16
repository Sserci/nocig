class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :simulation ]

  def home
  end

  def simulation
    @cigarettes = Cigarette.all
    @simulation = Consumption.new
  end
end
