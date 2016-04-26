class CreateCheerups < ActiveRecord::Migration
  def change
    create_table :cheerups do |t|
      t.string :title
      t.text :text
      t.text :body
      t.references :cheerup, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
