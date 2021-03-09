class Taco < ApplicationRecord
  belongs_to :category

  def category_attributes=(category_name)
    self.category = Category.find_or_create_by(name: category_name)
  end
end
