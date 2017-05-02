module PartiesHelper

  def pretty_size(size)
    size_parts = size.split('-')
    "#{size_parts.first} to #{size_parts.last}"
  end

end
