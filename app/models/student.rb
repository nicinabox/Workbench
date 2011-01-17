# == Schema Information
#
# Table name: students
#
#  id         :integer(4)      not null, primary key
#  first_name :string(45)
#  last_name  :string(45)
#  residence  :string(45)
#  room       :string(45)
#  email      :string(45)
#  phone      :integer(8)
#  m_number   :integer(4)
#

class Student < ActiveRecord::Base
  has_many :tickets
end
