require './lib/item.rb'

describe Item do
  before :each do
    @item = Item.new
  end

  it 'can view the price of an item' do
    expect(@item.price).to be_kind_of(Float)
  end
end
