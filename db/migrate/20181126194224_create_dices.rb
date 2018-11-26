# frozen_string_literal: true

class CreateDices < ActiveRecord::Migration[5.2]
  def change
    create_table :dices do |t|
      t.string :kind, default: 'yellow'

      t.timestamps
    end

    create_table :attacks do |t|
      t.belongs_to :dice, index: true
      t.belongs_to :tile, index: true

      t.string :kind, default: 'melee'
      t.boolean :reroll, default: false

      t.timestamps
    end
  end
end
