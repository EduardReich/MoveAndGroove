class AddFk < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key "activity_logs", "activities"
    add_foreign_key "activity_logs", "users"
  end
end
