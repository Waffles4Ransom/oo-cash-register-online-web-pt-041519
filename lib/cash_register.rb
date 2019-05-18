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
      self.total*discount.to_f
    else 
      "No discount available"
    
     
  end
end
