def consolidate_cart(cart)
  consolidated = {}
  cart.each do |item|
    item.each do |name, details|
      if consolidated.keys.include?(name) == false
        consolidated[name] = details.merge({:count => 1})
      else 
        consolidated[name][:count] += 1
      end 
    end 
  end 
  consolidated
end

def apply_coupons(cart, coupons)
  coupons.each do |items|
    if cart.keys.include?(items[:item]) == true && cart[(items[:item])][:count] >= items[:num]
      cart[(items[:item])][:count] = cart[(items[:item])][:count] - items[:num]
      cart["#{(items[:item])} W/ COUPON"] = {
        :price => items[:cost],
        :clearance => cart[(items[:item])][:clearance],
        :count => 1
      }
    end 
  end 
  cart 
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
