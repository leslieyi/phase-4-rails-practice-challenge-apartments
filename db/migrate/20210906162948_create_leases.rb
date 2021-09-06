class CreateLeases < ActiveRecord::Migration[6.1]
  def change
    create_table :leases do |t|
      t.integer :rent 
      t.belongs_to :tenant, null: false, foreign_key: true #can do null:true without dependent destroy
      t.belongs_to :apartment, null: false, foreign_key: true #can do null:true without dependent destroy

      t.timestamps
    end
  end
end
