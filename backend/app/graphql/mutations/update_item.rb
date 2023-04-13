module Mutations
  class UpdateItem < BaseMutation
    field :item, Types::ItemType, null: false

    argument :item_id, ID, required: true
    argument :item_attributes, Attributes::ItemAttributes, required: true

    def resolve(item_id:, item_attributes:)
      item = Item.find_by(id: item_id)
      raise GraphQL::ExecutionError, ['Item not found'] unless item

      raise GraphQL::ExecutionError, item.errors.full_messages unless item.update(item_attributes.to_h)

      {
        item:
      }
    end
  end
end
