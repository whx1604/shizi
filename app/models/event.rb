# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  start_time :datetime
#  end_time   :datetime
#  creator    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ApplicationRecord
  acts_as_commentable
  has_one :event_content, dependent: :destroy
end
