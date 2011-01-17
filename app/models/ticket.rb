# == Schema Information
#
# Table name: tickets
#
#  id            :integer(4)      not null, primary key
#  machine_id    :integer(4)
#  student_id    :integer(4)
#  has_powercord :integer(4)
#  in_at         :integer(4)
#  out_at        :integer(4)
#  called_at     :integer(4)
#  finished_at   :integer(4)
#  technician_id :integer(4)
#  abstract_id   :integer(4)
#  problem       :text
#

class Ticket < ActiveRecord::Base
  belongs_to :technician
  belongs_to :abstract
  belongs_to :machine
  belongs_to :student
  has_many :repairs
  accepts_nested_attributes_for :abstract, :machine, :student, :technician
end
