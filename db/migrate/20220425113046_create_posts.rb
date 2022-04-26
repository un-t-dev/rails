class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.boolean :all_day, null: false, default: false
      t.datetime :update_date
      t.text :memo

      t.timestamps
    end
  end
end
