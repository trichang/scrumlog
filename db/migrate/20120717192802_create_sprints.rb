class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :goal

      t.timestamps
      
      t.references :product
      t.references :release  
    end
  end
end
