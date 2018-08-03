json.extract! event, :id, :name, :description, :event_date, :event_time, :created_at, :updated_at
json.url event_url(event, format: :json)
