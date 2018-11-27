# frozen_string_literal: true

class ScenarioSerializer < ApplicationSerializer
  attributes :name
end

# == Schema Information
#
# Table name: scenarios
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
