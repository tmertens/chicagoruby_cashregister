module Register
  def self.total(items)
    items.inject(0) { |sum, item| sum + price_with_tax(item) }
  end

  def self.price_with_tax(item)
    item[:price] + calculate_tax(item)
  end

  def self.get_tax_rate(tax_type)
    tax_type == 'v' ? 0.05 : 0.03
  end

  def self.calculate_tax(item)
    item[:price] * get_tax_rate(item[:tax_type])
  end

end

=begin

product_list = [
    { product: 'Crackers', price: 3.47,   tax_type: 'b' },
    { product: 'Red Wine', price: 13.99,  tax_type: 'v' },
    { product: 'Cheese',   price: 6.98,   tax_type: 'b' }
]

=end
