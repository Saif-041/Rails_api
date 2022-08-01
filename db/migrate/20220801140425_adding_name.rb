class AddingName < ActiveRecord::Migration[7.0]
  def change
    add_column :game_levels, :user_id, :integer
  end
end
