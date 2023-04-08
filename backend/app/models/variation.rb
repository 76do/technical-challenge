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
#  index_variations_on_color_and_size_and_item_id  (color,size,item_id) UNIQUE
#  index_variations_on_item_id                     (item_id)
#
# Foreign Keys
#
#  fk_rails_...  (item_id => items.id)
#
class Variation < ApplicationRecord
  belongs_to :item 
  
  validates: color, presence: true, uniqueness: { scope: [:size, :item_id]}
  validates: size, presence: true
  validates: stock, presence: true
end
