require './lib/item.rb'

describe Item do
  it 'can display its price in the format "£xx.xx"' do
    item = Item.new

    expect(item.formatted_price).to eq('£20.00')
  end
end
