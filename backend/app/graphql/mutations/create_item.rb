module Mutations
  class CreateItem < BaseMutation
    field :item, Types::ItemType, null: false

    argument :shop_id, ID, required: true
    argument :item_attributes, Attributes::ItemAttributes, required: true

    def resolve(shop_id:, item_attributes:)
      shop = Shop.find_by(id: shop_id)
      raise GraphQL::ExecutionError, [I18n.t('activerecord.errors.messages.shop_not_found')] unless shop

      item = shop.items.build(item_attributes.to_h)
      raise GraphQL::ExecutionError, item.errors.full_messages unless item.save

      {
        item:
      }
    end
  end
end
