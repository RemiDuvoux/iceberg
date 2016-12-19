class StartupsController < ApplicationController
  def show
    @startup = Startup.find(params[:id])

  end
end
