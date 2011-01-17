# == Schema Information
#
# Table name: roles
#
#  id   :integer(4)      not null, primary key
#  name :string(45)
#

class Role < ActiveRecord::Base
  has_many :technicians
end
