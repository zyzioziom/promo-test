class LecturesController < ApplicationController
  def index
  	# find and group lectures by days of the week
    # regexes match all variations of weekday names in Polish, 
    #   only first two letters are needed to distinct days (it's not case sensitive)
    
    @mondays = Lecture.mondays
  	@tuesdays = Lecture.tuesdays
  	@wednesdays = Lecture.wednesdays
  	@thursdays = Lecture.thursdays
  	@fridays = Lecture.fridays
  	@saturdays = Lecture.saturdays
  	@sundays = Lecture.sundays

  	# create array of weekdays to help create simple code in view
  	@weekdays = [@mondays, @tuesdays, @wednesdays, @thursdays, @fridays, @saturdays, @sundays]
  end

  def show
  	@lectures = Lecture.find(params[:id])
    
    #    get users signed up for this activity
    @signed = Activity.where(activity_type: params[:controller], activity_id: params[:id])
    
    # find if current user is signed up for this activity
    @signed_user = Activity.where(activity_type: params[:controller], activity_id: params[:id], user_id: current_user.id)
    
    @signup_data = { "user_id" => current_user.id, "activity_id" => params[:id], "activity_type" => params[:controller], :confirmed => false }
  end
end
