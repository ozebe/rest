class HomeController < ApplicationController
  def index
    @plates = Plate.all
  end

end
