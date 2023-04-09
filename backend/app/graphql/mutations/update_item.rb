module Mutations
  class UpdateItem < BaseMutation
    field :item, Types::ItemType, null: false

    argument :item_id, Integer, required: true
    argument :item_attributes, Types::ItemAttributes, required: true

    def resolve(item_id:, item_attributes:)
      item = Item.find_by(id: item_id)
      unless item
        raise GraphQL::ExecutionError, "Item not found"
      end
      if item.update(item_attributes.to_h)
        {
          item: item
        }
      else
        raise GraphQL::ExecutionError, item.errors.full_messages
      end
    end
  end
end
