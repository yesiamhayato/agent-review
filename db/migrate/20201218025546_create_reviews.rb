class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :user,                 null: false, foreign_key: true
      t.references :agent,                null: false, foreign_key: true
      t.integer :score,                   null: false
      t.integer :deal_type_id,            null: false
      t.integer :close_deal_id,           null: false
      t.text :content,                    null: false

      t.timestamps
    end
  end
end
