# -*- encoding: utf-8 -*-
class AddMotivationToTodolists < ActiveRecord::Migration
  def change
    add_column :todolists, :motivation, :string, default: '自分でがんばる'
  end
end
