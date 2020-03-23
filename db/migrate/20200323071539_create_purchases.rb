class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|

    	t.integer :user_id
    	t.integer :item_id
    	t.string :item_name
    	t.integer :derivery_price
    	t.integer :transaction_status, :default => 0

      t.timestamps
    end
  end
end
