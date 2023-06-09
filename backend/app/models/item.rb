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
#  index_items_on_shop_id            (shop_id)
#  index_items_on_title_and_shop_id  (title,shop_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (shop_id => shops.id)
#
class Item < ApplicationRecord
  enum status: { unpublished: 0, published: 1 }
  belongs_to :shop
  has_many :variations, dependent: :destroy
  accepts_nested_attributes_for :variations, allow_destroy: true

  validates :price, presence: true
  validates :status, presence: true
  validates :title, presence: true, uniqueness: { scope: :shop_id }
end
