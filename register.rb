
module Register
  def self.total(items)
    items.inject(0) { |sum, item| sum + item[:price] }
  end
  def self.get_tax_rate(tax_type)
    tax_type == 'v' ? 0.05 : 0.03
  end
  def self.calculate_tax(item)
    item[:price] * get_tax_rate(item[:tax_type])
  end
end
