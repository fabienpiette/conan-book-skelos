# frozen_string_literal: true

Trestle.resource(:tiles) do
  menu do
    item :tiles, icon: 'fa fa-star'
  end

  active_storage_fields do
    [:image]
  end

  form do |tile|
    text_field   :name
    select       :base_color, Tile::COLORS.keys
    number_field :base_movement, min: 0, step: 1
    number_field :armor, min: 0, step: 1
    number_field :reinforcement_cost, min: 0, step: 1

    fields_for :attacks, tile.attacks || tile.attacks.build do
      select    :dice, Dice.kind.options
      check_box :reroll, label: Attack.human_attribute_name(:reroll)
    end

    # has_many :attacks do
    #   row do
    #     col(xs: 8, sm: 10) { select :dice, Dice.kind.options }
    #     col(xs: 4, sm: 2) { check_box :reroll, label: Attack.human_attribute_name(:reroll) }
    #   end
    # end

    active_storage_field :image
  end

  # Customize the table columns shown on the index view.
  #
  # table do
  #   column :name
  #   column :created_at, align: :center
  #   actions
  # end

  # Customize the form fields shown on the new/edit views.
  #
  # form do |tile|
  #   text_field :name
  #
  #   row do
  #     col(xs: 6) { datetime_field :updated_at }
  #     col(xs: 6) { datetime_field :created_at }
  #   end
  # end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:tile).permit(:name, ...)
  # end
end
