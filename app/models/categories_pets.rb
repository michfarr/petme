class CategoriesPets < ActiveRecord::Base
  belongs_to :category
  belongs_to :pet
end
