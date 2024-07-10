class AddDescriptionToQualifications < ActiveRecord::Migration[7.0]
  def change
    add_column :qualifications, :description, :text, null: false
  end
end
