class ScheduleTemplate < ActiveRecord::Base
  has_many :time_interval_for_templates
end
