
class Checkout
    def initialize
        @total = 0
    end

    def scan(item)
        @total += item.price
    end

    def formatted_total
        total_2_dec_places = '%.2f' % @total
        '£' << total_2_dec_places.to_s
    end
end