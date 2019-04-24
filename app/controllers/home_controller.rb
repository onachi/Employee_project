require 'date'
class HomeController < ApplicationController
  def index

  end
  def start
    # new timesheet
    # User.last.timesheets << Timesheet.new
    # add to current user
    #(current_user.id)
    current_user.timesheets << Timesheet.new(user_session)
    @start_time = Time.now.to_s
    #timesheet = Timesheet.find(current_user.id)
    timesheet = User.find(current_user.id).timesheets.last
    timesheet.update(start_time:DateTime.now)
    # in_time_zone('Bangkok')
    timesheet.update(start_date:Date.today)

    render :index

  end

  def stop

    # find the timesheet user_id
    # last_timesheet  = Timesheet.last(current_user.id)
    # User.first.timesheets.all
    last_timesheet  = User.find(current_user.id).timesheets.last
    #last_timesheet  = Timesheet.last
    @stop_time = Time.now.to_s
    # update that one
    last_timesheet.update(end_time:DateTime.now)
    last_timesheet.update(end_date:Date.today)
    render :index
  end
end
