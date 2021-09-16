class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.references :customize
      t.text       :detail, null: false
      t.timestamps
    end
  end
end
