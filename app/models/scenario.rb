# frozen_string_literal: true

class Scenario < ApplicationRecord
  #
  # Validations
  #

  #
  # Associations
  #
  has_many :scenario_tiles,
           class_name: 'ScenarioTile',
           foreign_key: 'scenario_id',
           dependent: :destroy

  has_many :setups,
           class_name: 'Setup',
           foreign_key: 'scenario_id',
           dependent: :destroy
  accepts_nested_attributes_for :setups

  #
  # Through Associations
  #
  has_many :tiles,
           class_name: 'Tile',
           through: :scenario_tiles

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
# Table name: scenarios
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
