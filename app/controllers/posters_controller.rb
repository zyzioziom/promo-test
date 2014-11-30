class PostersController < ApplicationController
  def index
  	# ordered from earliest to latest date
  	@posters = Poster.order(:date)
  end
end
