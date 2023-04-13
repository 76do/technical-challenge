module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :items, [Types::ItemType], null: false
    def items
      Item.all
    end

    field :item, Types::ItemType, null: false do
      argument :item_id, ID, required: true
    end
    def item(item_id:)
      item = Item.find_by(id: item_id)
      raise GraphQL::ExecutionError, [I18n.t('activerecord.errors.messages.item_not_found')] unless item

      item
    end
  end
end
