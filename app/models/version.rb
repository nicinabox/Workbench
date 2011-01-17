# == Schema Information
#
# Table name: versions
#
#  id              :integer(4)      not null, primary key
#  manufacturer_id :integer(4)
#  name            :string(45)
#  thumbnail       :string(45)
#

class Version < ActiveRecord::Base
  has_many :machines
end
