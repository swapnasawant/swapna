class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.integer :session_id
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
