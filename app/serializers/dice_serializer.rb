# frozen_string_literal: true

class DiceSerializer < ApplicationSerializer
  attributes :kind
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
