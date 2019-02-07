require './lib/checkout.rb'

describe Checkout do
    it 'can scan items' do
      checkout = Checkout.new
      item = Item.new
  
      expect { checkout.scan(item) }.not_to raise_error
    end
  end