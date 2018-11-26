# frozen_string_literal: true

Dice.kind.values.each do |kind|
  Dice.create!(kind: kind)
end

tiles = []

tiles << Tile.create!(
  kind: :event,
  name: '1'
)

tiles << Tile.create!(
  kind: :event,
  name: '2'
)

tiles << Tile.create!(
  name: 'chasseurs pictes',
  base_color: :blue,
  base_movement: 2,
  armor: 1,
  reinforcement_cost: 1,
  attacks_attributes: [
    { dice: Dice.yellow, reroll: true },
    { dice: Dice.yellow, reroll: true }
  ]
)

zogar = Tile.create!(
  name: 'zogar sag',
  base_color: :white,
  base_movement: 3,
  armor: 3,
  reinforcement_cost: 0,
  attacks_attributes: [
    { dice: Dice.orange, reroll: true },
    { dice: Dice.orange, reroll: true }
  ]
)
tiles << zogar

tiles << Tile.create!(
  name: 'guerriers pictes',
  base_color: :purple,
  base_movement: 2,
  armor: 2,
  reinforcement_cost: 2,
  attacks_attributes: [
    { dice: Dice.red, reroll: true }
  ]
)

tiles << Tile.create!(
  name: 'hyènes',
  base_color: :white,
  base_movement: 5,
  armor: 0,
  reinforcement_cost: 1,
  attacks_attributes: [
    { dice: Dice.orange }
  ]
)

tiles << Tile.create!(
  name: 'chasseurs pictes',
  base_color: :green,
  base_movement: 2,
  armor: 1,
  reinforcement_cost: 1,
  attacks_attributes: [
    { dice: Dice.yellow, reroll: true },
    { dice: Dice.yellow, reroll: true }
  ]
)

serpent = Tile.create!(
  name: 'serpent géant',
  base_color: :white,
  base_movement: 3,
  armor: 3,
  reinforcement_cost: 0,
  attacks_attributes: [
    { dice: Dice.orange, reroll: true },
    { dice: Dice.orange, reroll: true },
    { dice: Dice.orange, reroll: true }
  ]
)
tiles << serpent

tiles << Tile.create!(
  name: 'chasseurs pictes',
  base_color: :red,
  base_movement: 2,
  armor: 1,
  reinforcement_cost: 1,
  attacks_attributes: [
    { dice: Dice.yellow, reroll: true },
    { dice: Dice.yellow, reroll: true }
  ]
)

scenario = Scenario.create!(
  name: 'dans les griffes des pictes',
  setups_attributes: [
    {
      player_count: 4,
      reserve_gems_count: 10,
      fatigue_gems_count: 3,
      recovery_value: 5,
      reinforcement_points: 4
    },
    {
      player_count: 5,
      reserve_gems_count: 11,
      fatigue_gems_count: 4,
      recovery_value: 7,
      reinforcement_points: 4
    }
  ]
)
scenario.tiles = tiles

scenario.scenario_tiles.find_by(tile: zogar).update!(health_point: 4)
scenario.scenario_tiles.find_by(tile: serpent).update!(health_point: 8)
