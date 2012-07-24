class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.string :vision
      
      t.references :account

      t.timestamps
    end
  end
end
