module Mutations
  class CreateItem < BaseMutation
    field :item, Types::ItemType, null: false
  end
end
