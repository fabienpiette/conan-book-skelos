# frozen_string_literal: true

class Attack < ApplicationRecord
  #
  # Enumerize
  #
  extend Enumerize
  enumerize :kind, in: %i[melee ranged]

  #
  # Validations
  #

  #
  # Associations
  #
  belongs_to :dice,
             class_name: 'Dice',
             foreign_key: 'dice_id',
             inverse_of: :attacks

  belongs_to :tile,
             class_name: 'Tile',
             foreign_key: 'tile_id',
             inverse_of: :attacks,
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
# Table name: attacks
#
#  id         :bigint(8)        not null, primary key
#  dice_id    :bigint(8)
#  tile_id    :bigint(8)
#  kind       :string           default("melee")
#  reroll     :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_attacks_on_dice_id  (dice_id)
#  index_attacks_on_tile_id  (tile_id)
#
