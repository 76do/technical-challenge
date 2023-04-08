# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  price      :integer          not null
#  status     :integer          not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  shop_id    :bigint           not null
#
# Indexes
#
#  index_items_on_shop_id  (shop_id)
#
# Foreign Keys
#
#  fk_rails_...  (shop_id => shops.id)
#
class Item < ApplicationRecord
  belongs_to :shop
end
