json.extract! room, :id, :room_name, :description, :amenities, :price, :booking_id, :check_in, :check_out, :created_at, :updated_at
json.url room_url(room, format: :json)
