class WorkingDaysCalendar < ActiveRecord::Base
  has_many :days_shedules
  validates :date, presence: true
  validates :working_day_flag, presence: true
end
