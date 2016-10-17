# == Schema Information
#
# Table name: teams
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  leader      :string(255)
#  phone_num   :string(255)
#  school      :string(255)
#  edu_num     :string(255)
#  email       :string(255)
#  secret_code :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_teams_on_name         (name)
#  index_teams_on_secret_code  (secret_code)
#

class Team < ApplicationRecord
end
