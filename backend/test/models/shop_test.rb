# == Schema Information
#
# Table name: shops
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_shops_on_name  (name) UNIQUE
#
require "test_helper"

class ShopTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
