class Timesheet < ApplicationRecord
  belongs_to :user
  enum status: [:open, :closed, :pending]
end
