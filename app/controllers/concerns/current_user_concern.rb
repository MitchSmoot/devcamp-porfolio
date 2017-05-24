module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest McGuestington"
    guest.first_name = "Guest"
    guest.last_name = "McGuestington"
    guest.email = "guest@example.com"
    return guest
  end

end