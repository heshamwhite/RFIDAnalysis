class UserTrafficsController < ApplicationController
  def index
    @users = User.all
  end

  def list
    tempid = 2
    @user = User.find(tempid)
    @userTraffics = UserTraffic.find_by_name(@user.name)
    render json: @userTraffics
  end
end