require 'item.rb'

class AgedBrie < Item
  def tick
    # At the end of each day our system lowers both values for every item
    @days_remaining -= 1
    # "Aged Brie" actually increases in Quality the older it gets
    @quality += 1
    # The Quality of an item is never negative
    @quality = 0 if @quality < 0
    # Once the sell by date has passed, Quality degrades twice as fast
    @quality += 1 if @days_remaining <= 0
    # The Quality of an item is never more than 50
    @quality = 50 if @quality > 50
  end
end