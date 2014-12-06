class LecturesController < ApplicationController
  def index
  	# find and group lectures by days of the week
    # regexes match all variations of weekday names in Polish, 
    #   only first two letters are needed to distinct days (it's not case sensitive)
    
    @mondays = Lecture.order(:hour).where("day LIKE ?", "po%")
  	@tuesdays = Lecture.order(:hour).where("day LIKE ?", "wt%")
    # wednesday reads only second letter (r), no other day has r as second letter (it works as regex for "s" and "ś" in sqlite)
  	@wednesdays = Lecture.order(:hour).where("day LIKE ?", "_r%") #+ Lecture.order(:hour).where("day LIKE ?", "sr%")
  	@thursdays = Lecture.order(:hour).where("day LIKE ?", "cz%")
  	@fridays = Lecture.order(:hour).where("day LIKE ?", "pi%")
  	@saturdays = Lecture.order(:hour).where("day LIKE ?", "so%")
  	@sundays = Lecture.order(:hour).where("day LIKE ?", "ni%")

  	# create array of weekdays to help create simple code in view
  	@weekdays = [@mondays, @tuesdays, @wednesdays, @thursdays, @fridays, @saturdays, @sundays]
  end

  def show
  	@lectures = Lecture.find(params[:id])
  end
end
