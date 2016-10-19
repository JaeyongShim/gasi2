class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :nickname
      t.password :pw
      t.integer :grade

      t.timestamps null: false
    end
  end
end
