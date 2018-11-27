# frozen_string_literal: true

require 'test_helper'

class TileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: tiles
#
#  id                 :bigint(8)        not null, primary key
#  type               :string
#  name               :string
#  base_color         :string
#  base_movement      :integer          default(0), not null
#  armor              :integer          default(0)
#  reinforcement_cost :integer          default(0)
#  base_health_point  :integer          default(1)
#  kind               :string           default("unit")
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
