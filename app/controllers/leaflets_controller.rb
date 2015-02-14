class LeafletsController < ApplicationController
  def index
  	# ordered from earliest to latest date
  	@leaflets = Leaflet.order(:date)

  end

  def show
  	@leaflets = Leaflet.find(params[:id])
    
#    get users signed up for this activity
    @signed = Activity.where(activity_type: "leaflets", activity_id: params[:id])
  end
  
  def sign_up
    render plain: params[:activity].inspect
  end
  
end
