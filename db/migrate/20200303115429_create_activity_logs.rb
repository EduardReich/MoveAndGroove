class CreateActivityLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :activity_logs do |t|
      t.date :date
      t.integer :duration
      t.integer :activity_id
      t.integer :user_id

      t.timestamps
    end
  end
end
