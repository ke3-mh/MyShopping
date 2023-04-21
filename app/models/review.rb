class Review < ApplicationRecord
  has_many :tag, dependent: :destroy
  has_many :goods, dependent: :destroy
  has_many :comments, dependent: :destroy

  # バリテーション
  # validate :image_length

  # 商品画像　保存
  # has_many_attached :item_images
  has_one_attached :item_image

  private

  # def image_length
  #   if images.length >= 5
  #     errors.add(:item_images, "は4枚以内にしてください")
  #   end
  # end
end