class Timesheet < ApplicationRecord
  belongs_to :user
  enum status: [:open, :closed,:under_review, :pending]
end
