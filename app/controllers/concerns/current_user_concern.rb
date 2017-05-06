module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(
      name: "Guest McGuestington",
      first_name: "Guest", 
      last_name: "McGuestington",
      email: "guest@example.com"
      )
  end

end