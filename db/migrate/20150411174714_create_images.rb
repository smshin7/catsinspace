class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.datetime :date
      t.string :description
      t.string :link
      t.string :photo

      t.timestamps null: false
    end
  end
end
