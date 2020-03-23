class CreateItemQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :item_questions do |t|

    	t.integer :item_id
    	t.text :question
    	t.boolean :anser_status, :default => false

      t.timestamps
    end
  end
end
