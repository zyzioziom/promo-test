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

  	@sun = @sundays.count
  end

  def show
  	@lectures = Lecture.find(params[:id])
  end
end
