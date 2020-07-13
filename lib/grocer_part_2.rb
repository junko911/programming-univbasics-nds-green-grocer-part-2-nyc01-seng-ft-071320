require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  cart.each { |cart_item|
    
    coupons.each { |coupon_item|
    
      if coupon_item[:item] == cart_item[:item]
        cart << {
          :item => cart_item[:item],
          :price => cart_item[:price],
          :clearance => cart_item[:clearance],
          :count => cart_item[:count] - coupon_item[:num]
        }
        
        cart_item[:item] = cart_item[:item] + " W/COUPON"
        cart_item[:price] = coupon_item[:cost] / coupon_item[:num]
        cart_item[:count] =  coupon_item[:num]
      end
    
    }
  }
end


def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
