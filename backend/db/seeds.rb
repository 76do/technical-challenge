shop = Shop.create!(
  name: 'example_shop'
)

100.times do |item_index|
  item = shop.items.create!(
    price: rand(1000..100_000),
    status: Item.statuses.values.sample,
    title: "item#{item_index + 1}"
  )

  Variation.colors.each_value do |color_value|
    Variation.sizes.each_value do |size_value|
      item.variations.create!(
        color: color_value,
        size: size_value,
        stock: rand(0..100)
      )
    end
  end
end
