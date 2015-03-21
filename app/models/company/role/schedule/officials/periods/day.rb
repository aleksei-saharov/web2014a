class Day < ActiveRecord::Base
  has_one :company_role_schedule_officials_periods_week, :class_name => 'Company::Role::Schedule::Officials::Periods::Week'
  belongs_to :company_role_schedule_officials_periods_month, :class_name => 'Company::Role::Schedule::Officials::Periods::Month'
  belongs_to :company_role_schedule_officials_periods_year, :class_name => 'Company::Role::Schedule::Officials::Periods::Year'
  belongs_to :company_role_schedule_officials_full_main, :class_name => 'Company::Role::Schedule::Officials::FullMain'

  has_one :company_role_role, :class_name => 'Company::Role::Role'
end
