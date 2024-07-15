class Qualification < ApplicationRecord
  has_many :comments, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    %w[name description exam_fee exam_info_url official_url source_url study_hours]
  end
end
