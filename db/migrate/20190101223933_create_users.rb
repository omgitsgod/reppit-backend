class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :username
      t.text :name
      t.integer :age
      t.string :sex
      t.integer :height
      t.integer :weight
      t.timestamps
    end
  end
end
