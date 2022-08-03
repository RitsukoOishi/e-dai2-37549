class CreateEdais < ActiveRecord::Migration[6.0]
  def change
    create_table :edais do |t|
      t.integer    :balance_id,   null: false
      t.date       :entry_day,     null: false
      t.integer    :genre_id,      null: false
      t.integer    :description_id, null: false
      t.string     :note
      t.integer    :price,       null: false
      t.timestamps
    end
  end
end
