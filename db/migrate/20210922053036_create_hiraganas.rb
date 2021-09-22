class CreateHiraganas < ActiveRecord::Migration[6.0]
  def change
    create_table :hiraganas do |t|
      t.string :hiragana, null: false
      t.text   :comment
      t.timestamps
    end
  end
end
