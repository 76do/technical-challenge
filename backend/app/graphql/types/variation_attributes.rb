module Types
  class VariationAttributes < Types::BaseInputObject
    description "Attributes for creating or updating variation"
    argument :color, Integer, required: true
    argument :size, Integer, required: true
    argument :stock, Integer, required: true
  end
end