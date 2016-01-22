json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :name, :address, :map_link, :img_link, :description
  json.url hotel_url(hotel, format: :json)
end
