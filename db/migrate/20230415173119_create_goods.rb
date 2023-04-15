class CreateGoods < ActiveRecord::Migration[6.1]
  def change
    create_table :goods do |t|

      t.integer :user_id,         null: false # (外部キー)ユーザid
      t.integer :review_id,       null: false # (外部キー)レビューid
      t.timestamps
    end
  end
end
