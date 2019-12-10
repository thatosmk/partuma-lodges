require "administrate/base_dashboard"

class RoomDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    bookings: Field::HasMany,
    images: Field::ActiveStorage.with_options({url_only: true}),
    id: Field::Number,
    room_name: Field::String,
    description: Field::Text,
    amenities: Field::Text,
    price: Field::Number.with_options(decimals: 2),
    booking_id: Field::Number,
    check_in: Field::String,
    check_out: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    room_type: Field::String,
    booked: Field::Number,
    quantity: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  id
  room_name
  bookings
  price
  booked
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  bookings
  images
  id
  room_name
  description
  amenities
  price
  booking_id
  check_in
  check_out
  created_at
  updated_at
  room_type
  booked
  quantity
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  room_name
  description
  room_type
  amenities
  price
  images
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how rooms are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(room)
  #   "Room ##{room.id}"
  # end
end
