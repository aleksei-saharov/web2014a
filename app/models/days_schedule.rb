class DaysSchedule < ActiveRecord::Base
  belongs_to :role
  belongs_to :user
  belongs_to :working_days_calendar  
  validates :working_days_calendar_id, presence: true
  validates :user_id, presence: true
  validates :role_id, presence: true
  validates :schedule_time_start, presence: true
  validates :schedule_time_end, presence: true
end
