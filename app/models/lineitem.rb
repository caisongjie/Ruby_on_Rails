class Lineitem < ApplicationRecord
 belongs_to :product
 belongs_to :cart
 belongs_to :order, optional: true
 def totalprice
 quantity * product.price
 end
end
