class CreateUserEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :user_events do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :status

      t.timestamps
    end
  end
end
