class AddDescriptionToTemplates < ActiveRecord::Migration[7.2]
  def change
    add_column :templates, :description, :text
  end
end
