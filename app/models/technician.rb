# == Schema Information
#
# Table name: technicians
#
#  id         :integer(4)      not null, primary key
#  username   :string(45)
#  password   :string(45)
#  first_name :string(45)
#  last_name  :string(45)
#  email      :string(45)
#  role_id    :string(45)
#

class Technician < ActiveRecord::Base
  has_many :tickets
  belongs_to :role
end
