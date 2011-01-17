# == Schema Information
#
# Table name: manufacturers
#
#  id   :integer(4)      not null, primary key
#  name :string(45)
#

class Manufacturer < ActiveRecord::Base
  has_many :machines
end
