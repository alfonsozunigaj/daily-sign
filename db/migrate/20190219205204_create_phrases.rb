class CreatePhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :phrases do |t|
      t.date :day
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
