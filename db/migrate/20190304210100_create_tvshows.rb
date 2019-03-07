class CreateTvshows < ActiveRecord::Migration[5.2]
  def change
    create_table :tvshows do |t|
      t.string :name
      t.integer :tvmaze_id
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end
