def consolidate_cart(cart)
  consolidated = {}
  cart.each do |item|
    item.each do |name, details|
      if consolidated.keys.include?(name)
        consolidated[name] = details.merge({:count => 1})
      else 
        consolidated[name][:count] += 1
      end 
    end 
  end 
  consolidated
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
