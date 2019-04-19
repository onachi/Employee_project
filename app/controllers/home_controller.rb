require 'date'
class HomeController < ApplicationController
  def index

  end
  def start

    @start_time = Time.now.to_s
    Timesheet.update(start_time:DateTime.now)
    # in_time_zone('Bangkok')
    Timesheet.update(start_date:Date.today)
    # start time logic
    render :index
  end
  def stop
    @stop_time = Time.now.to_s
    Timesheet.update(end_time:DateTime.now)
    Timesheet.update(end_date:Date.today)
    render :index
  end
end
