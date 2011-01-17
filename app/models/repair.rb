# == Schema Information
#
# Table name: repairs
#
#  id             :integer(4)      not null, primary key
#  ticket_id      :integer(4)
#  summary        :text
#  last_action_at :integer(4)
#

class Repair < ActiveRecord::Base
  belongs_to :ticket
end
