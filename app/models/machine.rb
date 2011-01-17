# == Schema Information
#
# Table name: machines
#
#  id              :integer(4)      not null, primary key
#  color_id        :integer(4)
#  manufacturer_id :integer(4)
#  version_id      :integer(4)
#  password        :string(45)
#

class Machine < ActiveRecord::Base
  has_many :tickets
  belongs_to :color
  belongs_to :manufacturer
  belongs_to :version
end
