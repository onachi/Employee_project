class Timesheet < ApplicationRecord
  belongs_to :user
  enum status: [:personal_leave, :sick_leave, :sickness, :accident]
end
