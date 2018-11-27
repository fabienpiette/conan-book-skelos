# frozen_string_literal: true

class SetupSerializer < ApplicationSerializer
  attributes :player_count,
             :reserve_gems_count,
             :fatigue_gems_count,
             :recovery_value,
             :reinforcement_points

  belongs_to :scenario
end

# == Schema Information
#
# Table name: setups
#
#  id                   :bigint(8)        not null, primary key
#  scenario_id          :bigint(8)
#  player_count         :integer
#  reserve_gems_count   :integer
#  fatigue_gems_count   :integer
#  recovery_value       :integer
#  reinforcement_points :integer          default(0)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
# Indexes
#
#  index_setups_on_scenario_id  (scenario_id)
#
