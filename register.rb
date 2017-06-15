
module Register
  def self.total(items)
    items.inject(0) { |sum, item| sum + item[:price] }
  end
end
