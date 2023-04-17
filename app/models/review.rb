class Review < ApplicationRecord
  has_many :tag, dependent: :destroy
  has_many :goods, dependent: :destroy
  has_many :comments, dependent: :destroy

  # バリテーション

  # 商品画像　保存
  has_many_attached :iteimages
end