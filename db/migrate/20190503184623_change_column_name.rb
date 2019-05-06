class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :comedians, :birthplace, :city
  end
end
