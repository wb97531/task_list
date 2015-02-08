class AddOmniauthToDoers < ActiveRecord::Migration
  def change
    add_column :doers, :omniauth, :boolean
  end
end
