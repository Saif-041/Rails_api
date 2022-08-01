class CreateGameLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :game_levels do |t|
      t.boolean :isAdmin
      t.string :user
      t.integer :level_no
      t.integer :balance

      t.timestamps
    end
  end
end
