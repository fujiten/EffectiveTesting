Sandwich = Struct.new(:taste, :toppings)
RSpec.describe 'An ideal sandwich' do

  it 'is delicious' do

    taste = sandwich.taste

    expect(taste).to eq('delicious')
  end

  it 'let me add toppings' do

    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings

    expect(toppings).not_to be_empty
  end

  def sandwich
    @sandwich ||= Sandwich.new('delicious', [])
  end

end
