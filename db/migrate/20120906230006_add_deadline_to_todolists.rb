# -*- encoding: utf-8 -*-
class AddDeadlineToTodolists < ActiveRecord::Migration
  def change
    add_column :todolists, :deadline, :string, default: 'なし'
  end
end
