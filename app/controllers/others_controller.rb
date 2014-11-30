class OthersController < ApplicationController
  def index
  	# ordered from earliest to latest date
  	@others = Other.order(:date)
  end
end
