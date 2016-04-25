class CreateCheerups < ActiveRecord::Migration
  def change
    create_table :cheerups do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
