class LecturesController < ApplicationController
  def index
  	# order by earliest to latest lecture time
  	@lectures = Lecture.order(:time)

  	# find and sort lectures by days of the week
  	@mondays = Lecture.where day: "poniedziałek"
  	@tuesdays = Lecture.where day: "wtorek"
  	@wednesdays = Lecture.where day: "środa"
  	@thursdays = Lecture.where day: "czwartek"
  	@fridays = Lecture.where day: "piątek"
  	@saturdays = Lecture.where day: "sobota"
  	@sundays = Lecture.where day: "niedziela"

  	# create array of weekdays to create simple code in view
  	@weekdays = [@mondays, @tuesdays, @wednesdays, @thursdays, @fridays, @saturdays, @sundays]
  end

  def show
  	@lectures = Lecture.find(params[:id])
  end
end
