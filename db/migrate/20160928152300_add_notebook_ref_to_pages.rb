class AddNotebookRefToPages < ActiveRecord::Migration[5.0]
  def change
    add_reference :pages, :notebook, foreign_key: true
  end
end
