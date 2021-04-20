class Category < ApplicationRecord
  belongs_to :parent_category, class_name: "Category", optional: true, foreign_key: 'category_id'
  has_many :children_categories, class_name: "Category", foreign_key: 'category_id'

  has_many :bookmark_categories
  has_many :bookmarks, through: :bookmark_categories

  validates :name, presence: true

  def to_s
    name
  end
end
