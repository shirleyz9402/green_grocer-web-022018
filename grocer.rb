def consolidate_cart(cart)
  consolidated = {}
  cart.each do |item|
    item.each do |name, details|
      count[name] += 1
      details[:count] = count
      if consolidated.keys.include?(name)
        consolidated[name] = {}
      end 
      if name == item[name]
        consolidated[name] << item[details]
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
