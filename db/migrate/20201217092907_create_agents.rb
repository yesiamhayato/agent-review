class CreateAgents < ActiveRecord::Migration[6.0]
  def change
    create_table :agents do |t|
      t.string :last_name,               null: false
      t.string :first_name,              null: false
      t.string :last_name_kana,          null: false
      t.string :first_name_kana,         null: false
      t.string :company_name,            null: false
      t.string :company_location,        null: false
      t.references :user,                null: false, foreign_key: true

      t.timestamps
    end
  end
end
