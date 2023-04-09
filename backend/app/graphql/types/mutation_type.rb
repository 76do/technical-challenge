module Types
  class MutationType < Types::BaseObject
    field :update_item, mutation: Mutations::UpdateItem
    field :create_item, mutation: Mutations::CreateItem
  end
end
