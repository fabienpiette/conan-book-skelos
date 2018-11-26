# frozen_string_literal: true

class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name
      t.text   :description

      t.timestamps
    end

    create_table :skill_tiles do |t|
      t.belongs_to :skill, index: true
      t.belongs_to :tile, index: true

      t.timestamps
    end
  end
end
