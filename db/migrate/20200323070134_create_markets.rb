class CreateMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :markets do |t|

    	t.string :day
    	t.text :content

      t.timestamps
    end
  end
end
