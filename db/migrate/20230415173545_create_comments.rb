class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|

      t.integer :user_id,         null: false # (外部キー)ユーザid
      t.integer :review_id,       null: false # (外部キー)レビューid
      t.text :comment_text,       null: false # コメント本文
      t.timestamps
    end
  end
end
