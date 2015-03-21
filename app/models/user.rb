class User < ActiveRecord::Base
  has_many :company_role_roles, :class_name => 'Company::Role::Role'
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :timeoutable
end
