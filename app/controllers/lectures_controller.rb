class LecturesController < ApplicationController
  def index
  	# ordered from earliest to latest date
  	@lectures = Lecture.order(:day)
  end
end
