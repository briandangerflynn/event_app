class CreateEventInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :event_instances do |t|
      t.datetime :start
      t.datetime :end
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
