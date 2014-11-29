class LeafletsController < ApplicationController
  def index
  	# ordered from earliest to latest date
  	@leaflets = Leaflet.order(:date) 
  end
end
