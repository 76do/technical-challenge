module Attributes
  class VariationAttributes < BaseInputObject
    description "Attributes for creating or updating variation"
    argument :id, ID, required: false 
    argument :color, Integer, required: true
    argument :size, Integer, required: true
    argument :stock, Integer, required: true
    argument :_destroy, Boolean, required: false, default_value: false
  end
end
