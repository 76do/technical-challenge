# == Schema Information
#
# Table name: variations
#
#  id         :bigint           not null, primary key
#  color      :integer          not null
#  size       :integer          not null
#  stock      :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  item_id    :bigint           not null
#
# Indexes
#
#  index_variations_on_item_id  (item_id)
#
# Foreign Keys
#
#  fk_rails_...  (item_id => items.id)
#
require "test_helper"

class VariationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
