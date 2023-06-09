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
class Shop < ApplicationRecord
  has_many :items, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
