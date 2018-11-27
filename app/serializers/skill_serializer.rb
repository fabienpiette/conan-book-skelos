# frozen_string_literal: true

class SkillSerializer < ApplicationSerializer
  attributes :name,
             :description
end

# == Schema Information
#
# Table name: skills
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
