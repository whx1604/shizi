# == Schema Information
#
# Table name: event_contents
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  content    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_event_contents_on_event_id  (event_id)
#

class EventContent < ApplicationRecord
  belongs_to :event, required: true
end
