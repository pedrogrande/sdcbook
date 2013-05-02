class CreateStatusUpdates < ActiveRecord::Migration
  def change
    create_table :status_updates do |t|
      t.references :user
      t.string :title
      t.text :content

      t.timestamps
    end
    add_index :status_updates, :user_id
  end
end
