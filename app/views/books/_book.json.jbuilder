json.extract! book, :id, :user_id, :title, :description, :price, :shipping_cost, :sold, :recommended_retail_price, :condition, :format, :publisher, :pages, :isbn10, :isbn13, :created_at, :updated_at
json.url book_url(book, format: :json)
