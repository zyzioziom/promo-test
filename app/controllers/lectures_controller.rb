class LecturesController < ApplicationController
  def index
  	# order by earliest to latest lecture time
  	@lectures = Lecture.order(:time)

  	# find and group lectures by days of the week
    # regexes match all variations of weekday names in Polish, 
    #   only first two letters are needed to distinct days (it's not case sensitive)
    
    @mondays = Lecture.where("day LIKE ?", "po%")
  	@tuesdays = Lecture.where("day LIKE ?", "wt%")
    # wednesday needs to be refactored into working SQL regex
  	@wednesdays = Lecture.where("day LIKE ?", "sr%") + Lecture.where("day LIKE ?", "śr%")
  	@thursdays = Lecture.where("day LIKE ?", "cz%")
  	@fridays = Lecture.where("day LIKE ?", "pi%")
  	@saturdays = Lecture.where("day LIKE ?", "so%")
  	@sundays = Lecture.where("day LIKE ?", "ni%")

  	# create array of weekdays to help create simple code in view
  	@weekdays = [@mondays, @tuesdays, @wednesdays, @thursdays, @fridays, @saturdays, @sundays]
  end

  def show
  	@lectures = Lecture.find(params[:id])
  end
end
