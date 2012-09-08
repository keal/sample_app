# -*- encoding: utf-8 -*-
class CreateTodolists < ActiveRecord::Migration
  def change
    create_table :todolists do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
    add_index :todolists, [:user_id, :created_at]
  end
end
