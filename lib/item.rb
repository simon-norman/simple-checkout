class Item
    attr_reader :price
    attr_reader :formatted_price
    DEFAULT_PRICE = 20.00

    def initialize
        @price = DEFAULT_PRICE
        set_formatted_price
    end

    def set_formatted_price
        price_2_dec_places = '%.2f' % @price
        @formatted_price = '£' << price_2_dec_places.to_s
    end
end