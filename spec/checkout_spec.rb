require './lib/checkout.rb'

describe Checkout do
    it 'can scan items' do
      checkout = Checkout.new
      item = Item.new
  
      expect { checkout.scan(item) }.not_to raise_error
    end

    it 'can display price for all scanned items' do
        checkout = Checkout.new
        no_of_items = 5
        
        no_of_items.times do
            checkout.scan(Item.new)
        end
    
        expected_price = no_of_items * Item::DEFAULT_PRICE
        expect(checkout.total).to eq(expected_price)
      end
  end