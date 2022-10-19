class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo, default: "https://cdn-icons-png.flaticon.com/512/149/149071.png"
      t.timestamps
    end
  end
end
