require_relative '../register'

RSpec.describe 'A cash register' do
  it 'takes a list of products as input and returns the subtotals' do
    product_list = [
        { product: 'Crackers', price: 3.47,   type: 'b' },
        { product: 'Red Wine', price: 13.99,  type: 'v' },
        { product: 'Cheese',   price: 6.98,   type: 'b' }
    ]
    total = Register.total(product_list)
    expect(total).to eql 24.44
  end
end
