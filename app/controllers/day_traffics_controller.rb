class DayTrafficsController < ApplicationController
  def index

  end

  def list
    #@dayTraffics = DayTraffic.all
    @start_date = Date.new(2014,1,1)
    @end_date = Date.new(2015,1,1)
    @dayTraffics = DayTraffic.where('traffic_date < ? AND traffic_date > ? ',@end_date,@start_date)
    render json: @dayTraffics
  end
end
