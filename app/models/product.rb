class Product < ActiveRecord::Base
  has_many :orders
  
if Rails.env.development?
  def self.search(search_term)
    Product.where("name LIKE ?", "%#{search_term}%")
  end
else
  def self.search(search_term)
    Product.where("name ILIKE ?", "%#{search_term}%")
  end

end