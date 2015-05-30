class DayTrafficsController < ApplicationController
  def index
    @dayTraffics = DayTraffic.new

  end

  def list
    #@dayTraffics = DayTraffic.all
    @start_date = Date.parse(params[:startdate])
    @end_date = Date.parse (params[:enddate])

    # @start_date = Date.new(2014,1,1)
    # @end_date = Date.new(2015,1,1)
    @dayTraffics = DayTraffic.where('traffic_date < ? AND traffic_date > ? ',@end_date,@start_date)
    render json: @dayTraffics
  end
end
