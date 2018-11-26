# frozen_string_literal: true

class Tile < ApplicationRecord
  #
  # Supports
  #
  COLORS = {
    white: 'ffffff',
    blue: '0e6288',
    purple: '634c76',
    green: '739737',
    red: '8d1234'
  }.freeze

  #
  # Enumerize
  #
  extend Enumerize
  enumerize :kind, in: %i[unit event]
  enumerize :base_color, in: COLORS.keys

  #
  # Active Storage
  #
  has_one_attached :image

  #
  # Validations
  #

  #
  # Associations
  #
  has_many :scenario_tiles,
           class_name: 'ScenarioTile',
           foreign_key: 'tile_id',
           dependent: :nullify

  has_many :skill_tiles,
           class_name: 'SkillTile',
           foreign_key: 'tile_id',
           dependent: :destroy

  has_many :attacks,
           class_name: 'Attack',
           foreign_key: 'tile_id',
           dependent: :destroy
  accepts_nested_attributes_for :attacks

  #
  # Through Associations
  #
  has_many :scenarios,
           class_name: 'Scenario',
           through: :scenario_tiles

  has_many :skills,
           class_name: 'Skill',
           through: :skill_tiles

  has_many :dices,
           class_name: 'Dice',
           through: :attacks

  #
  # Callbacks
  #

  #
  # Scopes
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
# Table name: tiles
#
#  id                 :bigint(8)        not null, primary key
#  name               :string
#  base_color         :string
#  base_movement      :integer
#  armor              :integer
#  reinforcement_cost :integer          default(0)
#  base_health_point  :integer          default(1)
#  kind               :string           default("unit")
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
