# == Schema Information
#
# Table name: colors
#
#  id   :integer(4)      not null, primary key
#  name :string(45)      not null
#  hex  :string(45)
#

class Color < ActiveRecord::Base
  has_many :machines
end
