class Item
  attr_reader :price
  DEFAULT_PRICE = 20.00

  def initialize(price = DEFAULT_PRICE)
    @price = price
  end

  def get_formatted_price
    price_2_dec_places = '%.2f' % @price
    '£' << price_2_dec_places.to_s
  end

  def set_price(price)
    @price = price
  end
end