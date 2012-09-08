class AddPersentToTodolists < ActiveRecord::Migration
  def change
    add_column :todolists, :percent, :integer, default: 0
  end
end
