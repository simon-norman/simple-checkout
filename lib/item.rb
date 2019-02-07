class Item
    attr_reader :price
    DEFAULT_PRICE = 20.00

    def initialize
        @price = DEFAULT_PRICE
    end
end