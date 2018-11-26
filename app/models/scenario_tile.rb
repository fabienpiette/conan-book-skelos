# frozen_string_literal: true

class ScenarioTile < ApplicationRecord
  #
  # Validations
  #

  #
  # Associations
  #
  belongs_to :scenario,
             class_name: 'Scenario',
             foreign_key: 'scenario_id',
             inverse_of: :scenario_tiles

  belongs_to :tile,
             class_name: 'Tile',
             foreign_key: 'tile_id',
             inverse_of: :scenario_tiles

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
# Table name: scenario_tiles
#
#  id           :bigint(8)        not null, primary key
#  scenario_id  :bigint(8)
#  tile_id      :bigint(8)
#  health_point :integer          default(1)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_scenario_tiles_on_scenario_id  (scenario_id)
#  index_scenario_tiles_on_tile_id      (tile_id)
#
