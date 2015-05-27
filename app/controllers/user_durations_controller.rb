class UserDurationsController < ApplicationController
  def index
  end

  def list
    @userDurations = UserDuration.all
    render json: @userDurations
  end
end
