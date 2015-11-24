class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.string :name
      t.string :size
      t.string :guest1
      t.string :size1
      t.string :guest2
      t.string :size2
      t.string :guest3
      t.string :size3
      t.string :guest4
      t.string :size4

      t.timestamps null: false
    end
  end
end
