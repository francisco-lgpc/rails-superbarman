module ReviewsHelper
  def pretty_date(created_at)
    day = created_at.day
    month = created_at.month
    year = created_at.year
    "#{day} #{month} #{year}"
  end
end
