class Department < ActiveRecord::Base
  has_many :schedule_templates
end
