class UserTrafficsController < ApplicationController
  def index
  end

  def list
    @userTraffics = UserTraffic.all
    render json: @userTraffics
  end
end