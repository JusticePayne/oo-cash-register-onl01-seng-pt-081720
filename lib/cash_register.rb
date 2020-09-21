require 'pry'

class CashRegister
  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(items, price, quantity=1)
    @total += price * quantity
    quantity.times do 
      @items << items  
    end
    @last_trans = price * quantity
  end
  end
  
  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

   def void_last_transaction
    @total -= @last_trans
  end
end