class PostersController < ApplicationController
  def index
  	# ordered from earliest to latest date
  	@posters = Poster.order(:date)
  end

  def show
  	@posters = Poster.find(params[:id])
  end
end
