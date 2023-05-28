class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :review

   validates :comment_text,length: { minimum: 1, maximum: 50 }
end
