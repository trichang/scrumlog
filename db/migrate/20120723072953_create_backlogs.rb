class CreateBacklogs < ActiveRecord::Migration
  def change
    create_table :backlogs do |t|
      t.text :description
      t.integer :points
      t.integer :priority
      t.integer :value
      t.references :product
      t.references :release
      t.references :sprint
      t.references :user

      t.timestamps
    end
    add_index :backlogs, :product_id
    add_index :backlogs, :release_id
    add_index :backlogs, :sprint_id
    add_index :backlogs, :user_id
  end
end
