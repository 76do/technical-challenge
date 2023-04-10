# frozen_string_literal: true

module Enums
  class StatusEnum < BaseEnum
    value "unpublished", "The status of the item is unpublished"
    value "published", "The status of the item is published"
  end
end
