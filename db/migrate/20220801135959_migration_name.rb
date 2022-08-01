class MigrationName < ActiveRecord::Migration[7.0]
  def up
    remove_column :game_levels, :user
  end
end
