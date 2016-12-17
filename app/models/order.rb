class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items

  validates_presence_of :user
end
