class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :user
      t.references :product
      t.timestamps
    end
  end
end
