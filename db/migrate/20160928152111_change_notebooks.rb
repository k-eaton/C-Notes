class ChangeNotebooks < ActiveRecord::Migration[5.0]
  def change
      add_reference :notebooks, :user, foreign_key: true
  end
end
