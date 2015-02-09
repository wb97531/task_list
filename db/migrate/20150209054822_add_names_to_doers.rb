class AddNamesToDoers < ActiveRecord::Migration
  def change
    add_column :doers, :first_name, :string
    add_column :doers, :last_name, :string
  end
end
