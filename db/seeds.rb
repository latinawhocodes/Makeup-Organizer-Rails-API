lipstick = Category.create(category_name: 'Lipstick')
eyeshadow_palette = Category.create(category_name: 'Eyeshadow Palette')
blush = Category.create(category_name: 'Blush')
highlighter = Category.create(category_name: 'Highlighter')

desert_rose_palette = Product.create(category_id: 2, price: 65.00, product_name: 'Huda Beauty Desert Rose Eyeshadow Palette', date_purchased: "05-20-2020", source_name: 'Retail Store')

ofra_moondance_highlighter = Product.create(category_id: 4, price: 25.00, product_name: 'OFRA x Madison Miller Highlighter - Moondance', date_purchased: "03-10-2020", source_name: 'IPSY')