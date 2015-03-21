class Department < ActiveRecord::Base
  has_many :company_role_roles, :class_name => 'Company::Role::Role'
end
