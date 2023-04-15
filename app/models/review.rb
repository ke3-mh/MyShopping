class Review < ApplicationRecord
  has_many :tag, dependent: :destroy
  has_many :goods, dependent: :destroy
  has_many :comments, dependent: :destroy
end
