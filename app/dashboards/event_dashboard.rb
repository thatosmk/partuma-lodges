require "administrate/base_dashboard"

class EventDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    images_attachments: Field::HasMany.with_options(class_name: "ActiveStorage::Attachment"),
    images_blobs: Field::HasMany.with_options(class_name: "ActiveStorage::Blob"),
    rsvps_attachments: Field::HasMany.with_options(class_name: "ActiveStorage::Attachment"),
    rsvps_blobs: Field::HasMany.with_options(class_name: "ActiveStorage::Blob"),
    id: Field::Number,
    name: Field::String,
    description: Field::Text,
    event_date: Field::DateTime,
    event_time: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    rsvp: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  images_attachments
  images_blobs
  rsvps_attachments
  rsvps_blobs
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  images_attachments
  images_blobs
  rsvps_attachments
  rsvps_blobs
  id
  name
  description
  event_date
  event_time
  created_at
  updated_at
  rsvp
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  images_attachments
  images_blobs
  rsvps_attachments
  rsvps_blobs
  name
  description
  event_date
  event_time
  rsvp
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

  # Overwrite this method to customize how events are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(event)
  #   "Event ##{event.id}"
  # end
end
