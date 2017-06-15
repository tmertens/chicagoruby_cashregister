require_relative '../register'

RSpec.describe 'A cash register' do
  describe '.total' do
    it 'takes a list of products as input and returns the subtotals' do
      product_list = [
          { product: 'Crackers', price: 3.47,   tax_type: 'b' },
          { product: 'Red Wine', price: 13.99,  tax_type: 'v' },
          { product: 'Cheese',   price: 6.98,   tax_type: 'b' }
      ]
      total = Register.total(product_list)
      expect(total).to eql 25.453
    end
  end

  describe '.calculate_tax' do
    it 'takes an regular item and adds proper tax' do
      product = { product: 'Crackers', price: 3.47,   tax_type: 'b' }
      tax = Register.calculate_tax(product)
      expect(tax).to eql 0.1041
    end

    it 'takes an alcoholic item and adds proper tax' do
      product = { product: 'Red Wine', price: 13.99,  tax_type: 'v' }
      tax = Register.calculate_tax(product)
      expect(tax).to eql 0.6995
    end
  end

  describe '.lookup_item' do
    it "returns information about the given item" do
      item_info = Register.lookup_item('Crackers')
      expect(item_info).to eql ({ product: 'Crackers', price: 3.48, tax_type: 'b' })
    end

  end

end
