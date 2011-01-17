# == Schema Information
#
# Table name: abstracts
#
#  id       :integer(4)      not null, primary key
#  abstract :string(45)
#

class Abstract < ActiveRecord::Base
  has_many :tickets
end
