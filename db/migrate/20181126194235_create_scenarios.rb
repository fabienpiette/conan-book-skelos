# frozen_string_literal: true

class CreateScenarios < ActiveRecord::Migration[5.2]
  def change
    create_table :scenarios do |t|
      t.string :name

      t.timestamps
    end

    create_table :scenario_tiles do |t|
      t.belongs_to :scenario, index: true
      t.belongs_to :tile, index: true

      t.integer :health_point, default: 1

      t.timestamps
    end

    create_table :setups do |t|
      t.belongs_to :scenario, index: true

      t.integer :player_count
      t.integer :reserve_gems_count
      t.integer :fatigue_gems_count
      t.integer :recovery_value
      t.integer :reinforcement_points, default: 0

      t.timestamps
    end
  end
end
