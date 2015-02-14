class OthersController < ApplicationController
  def index
  	# ordered from earliest to latest date
  	@others = Other.order(:date)
  end

  def show
  	@others = Other.find(params[:id])
    
    #    get users signed up for this activity
    @signed = Activity.where(activity_type: "others", activity_id: params[:id])
    
     # find if current user is signed up for this activity
    @signed_user = Activity.where(activity_type: "lectures", activity_id: params[:id], user_id: current_user.id)
    
    @signup_data = { "user_id" => current_user.id, "activity_id" => params[:id], "activity_type" => params[:controller], :confirmed => false }
  end
end
