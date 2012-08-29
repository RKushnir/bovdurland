class CreateBovdurs < ActiveRecord::Migration
  def change
    create_table :bovdurs do |t|
      t.string :name

      t.timestamps
    end
    add_index :bovdurs, :name, :unique => true
  end
end
