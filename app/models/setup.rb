# frozen_string_literal: true

class Setup < ApplicationRecord
  #
  # Validations
  #

  #
  # Associations
  #
  belongs_to :scenario,
             class_name: 'Scenario',
             foreign_key: 'scenario_id',
             inverse_of: :setups,
             optional: true

  #
  # Through Associations
  #

  #
  # Callbacks
  #

  #
  # Scopes
  #

  #
  # Supports
  #

  #
  # Public class methods
  #

  #
  # Public instance methods
  #

  #
  # Protected instance methods
  #
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
