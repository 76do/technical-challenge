# frozen_string_literal: true

module Types
  class StatusEnum < Types::BaseEnum
    value "unpublished", "The status of the item is unpublished"
    value "published", "The status of the item is published"
  end
end
