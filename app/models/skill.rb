# frozen_string_literal: true

class Skill < ApplicationRecord
  #
  # Validations
  #

  #
  # Associations
  #
  has_many :skill_tiles,
           class_name: 'SkillTile',
           foreign_key: 'skill_id',
           dependent: :nullify

  #
  # Through Associations
  #
  has_many :tiles,
           class_name: 'Tile',
           through: :skill_tiles

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
# Table name: skills
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
