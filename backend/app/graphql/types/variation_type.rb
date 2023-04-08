# frozen_string_literal: true

module Types
  class VariationType < Types::BaseObject
    field :id, ID, null: false
    field :color, Integer, null: false
    field :size, Integer, null: false
    field :stock, Integer, null: false
    field :item_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
