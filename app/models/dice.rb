# frozen_string_literal: true

class Dice < ApplicationRecord
  #
  # Enumerize
  #
  extend Enumerize
  enumerize :kind, in: %i[yellow orange red]

  #
  # Validations
  #

  #
  # Associations
  #
  has_many :attacks,
           class_name: 'Attack',
           foreign_key: 'dice_id',
           dependent: :destroy

  #
  # Through Associations
  #
  has_many :tiles,
           class_name: 'Tile',
           through: :attacks

  #
  # Callbacks
  #

  #
  # Scopes
  #
  kind.values.each do |value|
    scope value, -> { find_by(kind: value) }
  end

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
# Table name: dices
#
#  id         :bigint(8)        not null, primary key
#  kind       :string           default("yellow")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
