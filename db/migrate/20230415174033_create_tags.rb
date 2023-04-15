class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|

      t.integer :review_id,       null: false # (外部キー)レビューid
      t.string :name,             null: false # タグ名
      t.timestamps
    end
  end
end
