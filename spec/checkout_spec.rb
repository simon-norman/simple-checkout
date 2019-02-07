require './lib/checkout.rb'

describe Checkout do
    before(:each) do
        @checkout = Checkout.new
    end

    def scan(no_of_items)
        no_of_items.times do
            @checkout.scan(Item.new)
        end
    end

    def format_as_£(total)
        price_2_dec_places = '%.2f' % total
        '£' << price_2_dec_places.to_s
    end

    def expected_total(no_of_items)
        expected_total = no_of_items * Item::DEFAULT_PRICE
        format_as_£(expected_total)
    end

    it 'can scan items' do
      item = Item.new
  
      expect { @checkout.scan(item) }.not_to raise_error
    end

    it 'can display price for all scanned items' do
        no_of_items = 5
        scan(no_of_items)

        expect(@checkout.formatted_total).to eq(expected_total(no_of_items))
    end
  end