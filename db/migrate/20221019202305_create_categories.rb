class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :icon, default: "https://cdn-icons-png.flaticon.com/512/3979/3979525.png"
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
