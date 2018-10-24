class CreateMicroposts < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.references :fav, foreign_key: { to_table: :users }

      t.timestamps

    end
  end
end
