class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items

  validates_presence_of :user

  def self.active_order(user)
    self.where(user: user).first_or_create
  end
end
