# frozen_string_literal: true

module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :price, Integer, null: false
    field :status, Types::StatusEnum, null: false
    field :shop, Types::ShopType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def shop
      Loaders::RecordLoader.for(Shop).load(object.shop_id)
    end
  end
end