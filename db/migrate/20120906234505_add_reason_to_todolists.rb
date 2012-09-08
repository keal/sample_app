# -*- encoding: utf-8 -*-
class AddReasonToTodolists < ActiveRecord::Migration
  def change
    add_column :todolists, :reason, :string, default: 'なんとなく'
  end
end
