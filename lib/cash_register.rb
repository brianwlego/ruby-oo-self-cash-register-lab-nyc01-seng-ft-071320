require 'pry'

class CashRegister
  attr_accessor :total, :title, :items, :discount, :last_transaction
  
  

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
    quantity.times do 
      @items << title
    end
    self.last_transaction = price * quantity
    #binding.pry
  end

  def apply_discount
    if @discount != 0
      @total = self.total - (self.total*0.2)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction 
    #binding.pry
    self.total = self.total - last_transaction
  end

end 
