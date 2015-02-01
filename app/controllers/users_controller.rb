class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@users = User.find(params[:id])
    
#    cut "50" from link and append 200px size    
    @users.image = @users.image[0...-2] << "200"
  end
end