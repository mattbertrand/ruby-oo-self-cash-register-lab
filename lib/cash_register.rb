class CashRegister

    attr_accessor :total, :discount, :items, :void_last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @void_last_transaction
    end

    def add_item(title, price, quantity =1)
        @total += price * quantity
        @items << [title] * quantity
        self.void_last_transaction = price * quantity
    end

    def apply_discount
        if discount == 0
            return "There is no discount to apply."
        elsif
            reduced = @total * discount.to_f / 100.0
            @total -= reduced
            return "After the discount, the total comes to $#{@total.to_i}."
        end
    end

    def items
        @items.flatten
    end

    def void_last_transaction
        @total -= @void_last_transaction
    end

end
