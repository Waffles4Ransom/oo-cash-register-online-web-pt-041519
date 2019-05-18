class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price*quantity
    quantity.times do 
      @items << title
    end
    #keep track of last item, item total is the price times the quantity
    @last_transaction = (price*quantity)
  end
  
  def apply_discount
    if @discount > 0 
      after_discount = self.total - (self.total*(discount.to_f/100)).to_i
      self.total = after_discount
      return "After the discount, the total comes to $#{after_discount}."
    else 
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    #the last transaction would be the last item that used add_items
    self.total -= self.last_transaction
  end 
  
end
