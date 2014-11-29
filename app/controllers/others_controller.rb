class OthersController < ApplicationController
  def index
  	@others = Other.all
  end
end
