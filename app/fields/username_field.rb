require "administrate/field/base"

class UsernameField < Administrate::Field::Base

  def to_s
    data.username
  end
end
