class ActivitiesController < ApplicationController
  def index
    @activities = Activity.order(id: :desc, activity_id: :asc)
  end

  def create
    @activity = Activity.new(article_params)

    @activity.save
    redirect_to :back
  end
  
  def update
    @activity = Activity.find(params[:id])
 
    # get confirmation address from form params (activity => confirmation)
    confirmation = params["activity"]["confirmation"]
    
    # update database entry
    @activity.update_attribute(:confirmed, true)
    @activity.update_attribute(:confirmation, confirmation.to_s)
    
    redirect_to :back
  end

  private
    def article_params
      params.require(:activity).permit(:user_id, :activity_id, :activity_type, :confirmed, :confirmation)
    end
  
end
