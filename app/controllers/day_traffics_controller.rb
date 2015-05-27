class DayTrafficsController < ApplicationController
  def index
  end

  def list
    @dayTraffics = DayTraffic.all
    render json: @dayTraffics
  end
end
