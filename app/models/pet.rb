class Pet < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, :image, :price, :description, presence: true
end
