require_relative 'aged_brie.rb'
require_relative 'conjured_mana.rb'

class GildedRose
  attr_reader :name, :days_remaining, :quality

  def initialize(name:, days_remaining:, quality:)
    @item = {
      'Aged Brie' => AgedBrie,
      'Conjured Mana Cake' => ConjuredMana
    }[name].new(quality, days_remaining)
  end

  # def conjured_tick
  #   if @name == "Conjured Mana Cake"
  #     if @days_remaining > 0
  #       if @quality > 1
  #         @quality -= 2
  #       else 
  #         @quality = 0
  #       end
  #     end
  #     # @days_remaining -= 1
  #   end
  # end

  def tick
    @item.tick
    @quality = @item.quality
    @days_remaining = @item.days_remaining
  end
end
