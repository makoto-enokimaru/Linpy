class ChengeColumnToNull < ActiveRecord::Migration[6.0]
  def up
    change_column_null :events, :memo, true
  end
  def down
    change_column_null :events, :memo, true
  end
end
