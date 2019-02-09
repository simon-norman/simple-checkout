require './lib/item.rb'

describe Item do
  before(:each) { @item = Item.new }

  it 'can display its price in the format "£xx.xx"' do
    expect(@item.get_formatted_price).to eq('£20.00')
  end

  it 'can set the item price when the item is created' do
    price = 10
    item = Item.new(price)

    expect(item.price).to eq(price)
  end

  it 'can change the price' do
    new_price = 40
    @item.set_price(new_price)

    expect(@item.price).to eq(new_price)
  end
end
