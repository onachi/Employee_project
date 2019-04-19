class TimesheetsController < ApplicationController
  def index

  end

  def update_status
      status = params[:status]
      Timesheet.update(status:status)
      detail = params[:detail]
      Timesheet.update(detail:detail)
      #detail = params[:detail]
      #Timesheet.update(detail:detail)
  end

end
