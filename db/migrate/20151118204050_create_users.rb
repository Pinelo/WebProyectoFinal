class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :address
      t.string :telephone

      t.timestamps null: false
    end
  end
end
