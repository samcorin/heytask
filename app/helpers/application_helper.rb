module ApplicationHelper
  def notification_count(bookings, gigs)
    if (bookings + gigs) > 0
      return (bookings + gigs)
    else
      return '0'
    end
  end

end
