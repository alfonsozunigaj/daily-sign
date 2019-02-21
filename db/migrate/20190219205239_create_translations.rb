class CreateTranslations < ActiveRecord::Migration[5.2]
  def change
    create_table :translations do |t|
      t.string :language
      t.string :content
      t.string :definition
      t.references :phrase, foreign_key: true

      t.timestamps
    end
  end
end
