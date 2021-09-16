class CreateCustomizes < ActiveRecord::Migration[6.0]
  def change
    create_table :customizes do |t|
      t.string :theme, null:false
      t.references :user
      t.timestamps
    end
  end
end
