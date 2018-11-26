# frozen_string_literal: true

class SkillTile < ApplicationRecord
  #
  # Validations
  #

  #
  # Associations
  #
  belongs_to :skill,
             class_name: 'Skill',
             foreign_key: 'skill_id',
             inverse_of: :skill_tiles

  belongs_to :tile,
             class_name: 'Tile',
             foreign_key: 'tile_id',
             inverse_of: :skill_tiles

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
# Table name: skill_tiles
#
#  id         :bigint(8)        not null, primary key
#  skill_id   :bigint(8)
#  tile_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_skill_tiles_on_skill_id  (skill_id)
#  index_skill_tiles_on_tile_id   (tile_id)
#
