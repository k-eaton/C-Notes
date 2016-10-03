class AddTitleToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :pages, :page_title, :string
  end
end
