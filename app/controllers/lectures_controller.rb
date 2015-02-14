class LecturesController < ApplicationController
  def index
  	# find and group lectures by days of the week
    # regexes match all variations of weekday names in Polish, 
    #   only first two letters are needed to distinct days (it's not case sensitive)
    
    @mondays = Lecture.order(:hour).where("day LIKE ?", "po%")
  	@tuesdays = Lecture.order(:hour).where("day LIKE ?", "wt%")
    # wednesday reads only second letter (r), no other day has r as second letter and o as third (it works as regex for "s" and "ś" in sqlite)
  	@wednesdays = Lecture.order(:hour).where("day LIKE ?", "_ro%") #+ Lecture.order(:hour).where("day LIKE ?", "sr%")
  	@thursdays = Lecture.order(:hour).where("day LIKE ?", "cz%")
  	@fridays = Lecture.order(:hour).where("day LIKE ?", "pi%")
  	@saturdays = Lecture.order(:hour).where("day LIKE ?", "so%")
  	@sundays = Lecture.order(:hour).where("day LIKE ?", "ni%")

  	# create array of weekdays to help create simple code in view
  	@weekdays = [@mondays, @tuesdays, @wednesdays, @thursdays, @fridays, @saturdays, @sundays]
  end

  def show
  	@lectures = Lecture.find(params[:id])
    
    #    get users signed up for this activity
    @signed = Activity.where(activity_type: "lectures", activity_id: params[:id])
    
    # find if current user is signed up for this activity
    @signed_user = Activity.where(activity_type: "lectures", activity_id: params[:id], user_id: current_user.id)
    
    @signup_data = { "user_id" => current_user.id, "activity_id" => params[:id], "activity_type" => params[:controller], :confirmed => false }
  end
end
