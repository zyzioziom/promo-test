class LecturesController < ApplicationController
  def index
  	# ordered from earliest to latest date
  	@lectures = Lecture.order(:day)
  end

  def show
  	@lectures = Lecture.find(params[:id])
  end
end
