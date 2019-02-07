require './lib/item.rb'

describe Item do
  it 'can display its price' do
    item = Item.new

    expect(item.price).to be_kind_of(Float)
  end
end
