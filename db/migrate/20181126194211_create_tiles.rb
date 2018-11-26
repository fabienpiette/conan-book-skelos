# frozen_string_literal: true

class CreateTiles < ActiveRecord::Migration[5.2]
  def change
    create_table :tiles do |t|
      t.string  :name
      t.string  :base_color
      t.integer :base_movement
      t.integer :armor
      t.integer :reinforcement_cost, default: 0
      t.integer :base_health_point, default: 1
      t.string  :kind, default: 'unit'

      t.timestamps
    end
  end
end
