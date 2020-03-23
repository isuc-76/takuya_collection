class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|

    	t.text :comment

      t.timestamps
    end
  end
end
