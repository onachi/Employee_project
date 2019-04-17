require 'date'
class HomeController < ApplicationController
  def index
  end
  def start
    @start_time = Time.now.to_s
    Timesheet.update(start_time:Time.now)
    Timesheet.update(start_date:Time.now)
    # start time logic
    render :index
  end
  def stop
    @stop_time = Time.now.to_s
    Timesheet.update(end_time:Time.now)
    Timesheet.update(end_date:Time.now)
    render :index
  end
end
