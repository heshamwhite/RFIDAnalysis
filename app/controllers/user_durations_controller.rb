class UserDurationsController < ApplicationController
  def index
    @users = User.all

  end

  def list
    tempid = 1
    @start_date = Date.new(2014,1,1)
    @end_date = Date.new(2014,1,14)

    @user = User.find(tempid)
    #@userDurations = UserDuration.find_by_name(@user.name)
    @userDurations = UserDuration.where('duration_date < ? AND duration_date > ?  AND name = ?',@end_date,@start_date,@user.name)
    render json: @userDurations
  end
end
