# frozen_string_literal: true

class AttackSerializer < ApplicationSerializer
  attributes :kind, :reroll

  belongs_to :dice
  belongs_to :tile
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
