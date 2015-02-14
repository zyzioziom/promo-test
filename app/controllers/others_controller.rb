class OthersController < ApplicationController
  def index
  	# ordered from earliest to latest date
  	@others = Other.order(:date)
  end

  def show
  	@others = Other.find(params[:id])
    
    #    get users signed up for this activity
    @signed = Activity.where(activity_type: "others", activity_id: params[:id])
  end
end
