class Pet < ActiveRecord::Base
  belongs_to :user

  validates :name, :image, :category, :price, :description, presence: true
end
