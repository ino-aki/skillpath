class AddApplyUrlToQualifications < ActiveRecord::Migration[7.0]
  def change
    add_column :qualifications, :exam_info_url, :text, null: false
    add_column :qualifications, :exam_fee, :string, null: false
    add_column :qualifications, :study_hours, :integer, null: false
    add_column :qualifications, :source_url, :string, null: false
  end
end
