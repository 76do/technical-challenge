module Attributes 
  class ItemAttributes < BaseInputObject
    description "Attributes for creating or updating item"
    argument :title, String, required: true
    argument :price, Integer, required: true
    argument :status, Integer, required: true
    argument :variations_attributes, [Attributes::VariationAttributes], required: true
  end
end
