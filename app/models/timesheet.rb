class Timesheet < ApplicationRecord
  belongs_to :user
  enum Timesheet: {personal_leave:0,
                sick_leave:1,
                sickness:2,
                accident:3
  }
end
