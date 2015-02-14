class PostersController < ApplicationController
  def index
  	# ordered from earliest to latest date
  	@posters = Poster.order(:date)
  end

  def show
  	@posters = Poster.find(params[:id])
    
    #    get users signed up for this activity
    @signed = Activity.where(activity_type: "posters", activity_id: params[:id])
    
    @signed2 = @signed.where(user_id: current_user.id)
    
     # find if current user is signed up for this activity
    @signed_user = Activity.where(activity_type: "lectures", activity_id: params[:id], user_id: current_user.id)
    
    @signup_data = { "user_id" => current_user.id, "activity_id" => params[:id], "activity_type" => params[:controller], :confirmed => false }
  end
end
