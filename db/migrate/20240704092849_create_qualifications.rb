class CreateQualifications < ActiveRecord::Migration[7.0]
  def change
    create_table :qualifications do |t|
      t.string :name,         null: false
      t.text   :official_url, null: false
      t.timestamps
    end
  end
end
