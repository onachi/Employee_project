require 'date'
class HomeController < ApplicationController
  def index

  end
  def start
    # new timesheet
    # User.last.timesheets << Timesheet.new
    # add to current user
    # current_user.timesheets << Timesheet.new(user_session)
    #(current_user.id)

    #last_timesheet  = Timesheet.find_last_by_user_id(current_user.id)
    @start_time = Time.now.to_s
    Timesheet.update(start_time:DateTime.now)
    # in_time_zone('Bangkok')
    Timesheet.update(start_date:Date.today)
    sfgsdgdfgsdh
    # start time logic
    render :index

  end

  def stop

    # find the timesheet

    @stop_time = Time.now.to_s

    # update that one
    Timesheet.update(end_time:DateTime.now)
    Timesheet.update(end_date:Date.today)
    render :index
  end
end
