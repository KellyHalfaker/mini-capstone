class Product < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :description, length: {in: 10..500}
  validates :supplier_id, presence: true

  belongs_to :supplier
  has_many :images
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :orders, through: :carted_products
  
  def is_discounted
    price < 1000
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    price + tax
  end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  # def images
  #   Image.where(product_id: id)
  # end

  def image_urls
    images_info = Image.where(product_id: id)
    urls = images_info.map{|image| image[:url]}
    return urls
  end

  def category_names
    categories.map{ |category| category.name}
  end
end
