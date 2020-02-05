class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {
                               only_interger: true,
                               greater_than: 0,
                             }
  validate :has_men_or_women_apparel

  def has_men_or_women_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "must be carried if no other apparel is carried.")
      errors.add(:womens_apparel, "must be carried if no other apparel is carried.")
    end
  end
end
