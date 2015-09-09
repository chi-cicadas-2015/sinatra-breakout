class User < ActiveRecord::Base
  has_many :purchaes
  has_many :products, through: :purchases
end