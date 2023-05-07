class Review < ApplicationRecord
  has_many :goods, dependent: :destroy
  has_many :comments, dependent: :destroy

  belongs_to :user

  # バリテーション
  validates :item_image, presence: true
  validates :name, presence: true
  validates :tag,presence:true
  validates :caption, presence: true

  # 商品画像　保存
  # has_many_attached :item_images
  has_one_attached :item_image

  def get_item_image(width, height)
    unless item_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      item_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    item_image.variant(resize_to_limit: [width, height]).processed
  end
  # def image_length
  #   if images.length >= 5
  #     errors.add(:item_images, "は4枚以内にしてください")
  #   end
  # end
end