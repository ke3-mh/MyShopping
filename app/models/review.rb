class Review < ApplicationRecord
  has_many :goods, dependent: :destroy
  has_many :comments, dependent: :destroy

  belongs_to :user

  # ソート機能 scope
  scope :latest, -> {order(created_at: :desc)}
  scope :old, -> {order(created_at: :asc)}
  # scope :good_count, -> {order(good: :desc)}

  # 次のレビュー遷移機能 scope
  scope :top_next_review, -> {where()}
  scope :top_next_previous, -> {where()}

  # バリテーション
  validates :item_image, presence: true
  validates :name, presence: true, length: { minimum: 1, maximum: 20 }
  validates :tag,presence:true, length: { minimum: 1, maximum: 10 }
  validates :caption, presence: true, length: { minimum: 1, maximum: 300 }

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

  def previous
    Review.where("id < ?", self.id).order("id DESC").first
  end

  def next
    Review.where("id > ?", self.id).order("id ASC").first
  end

  def good_by?(user)
    goods.where(user_id: user.id).exists?
  end
end