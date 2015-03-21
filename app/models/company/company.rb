class Company < ActiveRecord::Base
  has_many :company_role_roles, :class_name => 'Company::Role::Role'
  has_many :company_role_names, :class_name => 'Company::Role::Name'
  has_many :company_department_departments, :class_name => 'Company::Department::Department'

end
