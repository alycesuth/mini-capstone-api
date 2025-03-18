class Product < ApplicationRecord
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :description, length: { in: 1..500 }

  belongs_to :supplier
  has_many :images
  has_many :orders

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
