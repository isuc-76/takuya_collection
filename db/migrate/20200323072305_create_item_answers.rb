class CreateItemAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :item_answers do |t|

    	t.integer :item_question_id
    	t.text :answer

      t.timestamps
    end
  end
end
