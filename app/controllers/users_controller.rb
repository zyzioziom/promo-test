class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
    
#    cut "50" from link and append 200px size    
    @user.image = @user.image[0...-2] << "200"
    
    @user_activities = Activity.where(user_id: params[:id])
  end
end