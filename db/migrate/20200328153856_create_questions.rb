class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :answer_num
      t.string :body
      t.timestamps
    end
  end
end
