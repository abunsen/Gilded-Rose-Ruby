require 'item.rb'

class ConjuredMana < Item
  def tick
    # At the end of each day our system lowers both values for every item
    @days_remaining -= 1
    # "Conjured" items degrade in Quality twice as fast as normal items
    @quality -= 2    
    # Once the sell by date has passed, Quality degrades twice as fast
    @quality -= 2 if @days_remaining <= 0
    # The Quality of an item is never negative
    @quality = 0 if @quality < 0   
  end
end