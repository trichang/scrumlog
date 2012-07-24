class LinkAccountToUser < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.references :account  
    end
  end

  def down
  end
end
