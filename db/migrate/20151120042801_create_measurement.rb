class CreateMeasurement < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
    	t.integer :neck, :decimal, precision: 5, scale: 2
    	t.integer :chest, :decimal, precision: 5, scale: 2
    	t.integer :shoulder, :decimal, precision: 5, scale: 2
    	t.integer :right_sleeve, :decimal, precision: 5, scale: 2
    	t.integer :left_sleeve, :decimal, precision: 5, scale: 2
    	t.integer :waist, :decimal, precision: 5, scale: 2
    	t.integer :hips, :decimal, precision: 5, scale: 2
    	t.integer :half_back, :decimal, precision: 5, scale: 2
    	t.integer :full_back, :decimal, precision: 5, scale: 2
    	t.integer :knee, :decimal, precision: 5, scale: 2
    	t.integer :trouser_waist, :decimal, precision: 5, scale: 2
    	t.integer :trouser_outsean, :decimal, precision: 5, scale: 2
    	t.integer :trouser_inseam, :decimal, precision: 5, scale: 2
    	t.integer :thigh, :decimal, precision: 5, scale: 2
    	t.integer :crotch, :decimal, precision: 5, scale: 2
        t.integer  "user_id"

	t.timestamps null: false
    end
  end
end
