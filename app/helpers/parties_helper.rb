module PartiesHelper

  def pretty_size(size)
    size_parts = size.split('-')
    "#{size_parts.first} to #{size_parts.last}"
  end

  def pretty_time(start_time)
    hour = start_time.hour
    minute = start_time.min.to_s
    minute = '0' + minute if minute.length == 1
    "#{hour} : #{minute}"
  end

  def pretty_address(address)
    address_parts = address.split(',')
    "#{address_parts[0]}, #{address_parts[1]}"
  end

end
