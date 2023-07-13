class CreateFrequentquestions < ActiveRecord::Migration[7.0]
  def change
    create_table :frequentquestions do |t|
      t.string :questions
      t.string :answer

      t.timestamps
    end
  end
end
