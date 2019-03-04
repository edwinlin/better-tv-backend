class CreateUserShows < ActiveRecord::Migration[5.2]
  def change
    create_table :user_shows do |t|
      t.integer :tvshow_id
      t.integer :user_id

      t.timestamps
    end
  end
end
