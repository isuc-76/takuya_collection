class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

    	t.string :item_name
    	t.text :content
    	t.string :image_id
    	t.integer :price
    	t.boolean :selling_status, :default => true

      t.timestamps
    end
  end
end
