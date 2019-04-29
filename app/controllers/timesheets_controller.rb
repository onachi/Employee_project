class TimesheetsController < ApplicationController

  def index

  end

  def update_status

      current_user.timesheets << Timesheet.new(user_session)
      timesheet =  User.find(current_user.id).timesheets.last
      timesheet.update(start_date:Date.today)
      timesheet.update(end_date:Date.today)
      status = params[:status]
      timesheet.update(status:status)
      detail = params[:detail]
      timesheet.update(detail:detail)
      #detail = params[:detail]
      #Timesheet.update(detail:detail)

  end

end
