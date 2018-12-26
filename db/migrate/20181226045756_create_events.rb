class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :recurring
      t.boolean :reminder

      t.timestamps
    end
  end
end
