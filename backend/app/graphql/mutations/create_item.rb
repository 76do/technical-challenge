module Mutations
  class CreateItem < BaseMutation
    field :item, Types::ItemType, null: false

    argument :shop_id, Integer, required: true
    argument :item_attributes, Types::ItemAttributes, required: true

    def resolve(shop_id:, item_attributes:)
      puts shop_id
      puts item_attributes
      shop = Shop.find(shop_id)
      unless shop
        rails GraphQL::ExecutionError, "Shop not found"
      end
      item = shop.items.build(item_attributes.to_h)
      if item.save
        {
          item: item
        }
      else
        raise GraphQL::ExecutionError, item.errors.full_messages
      end
    end
  end
end
