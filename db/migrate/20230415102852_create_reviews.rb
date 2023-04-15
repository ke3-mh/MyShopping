class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|

      t.integer :user_id,         null: false # (外部キー)ユーザid
      t.string :name,             null: false # 商品名
      t.text :caption,            null: false # レビュー説明
      t.timestamps
    end
  end
end
