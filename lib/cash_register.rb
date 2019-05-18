class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    @items << title
  end
  
  def apply_discount
    if discount != 0 
      after_discount = self.total - (self.total*(discount.to_f/100)).to_i
      puts "After the discount, the total comes to #{after_discount}."
    else 
      puts "There is no discount to apply."
    end
  end
  
  
end
