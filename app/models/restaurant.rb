class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true

  # def name_length
  #   if self.length > 3
  #     return "long name"
  #   else
  #     return "short name"
  #   end
  # end
end
