class Item
  attr_reader :quality, :days_remaining

  def initialize(quality, days_remaining)
    @quality = quality
    @days_remaining = days_remaining
  end
end