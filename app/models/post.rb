class Post < ApplicationRecord
  validates :title, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :memo,presence: true, length: { in: 2..15}
  validate :date_validation
  def date_validation
    if start_date > end_date
      errors.add(:end_date, "開始日かそれ以降を指定してください。")
    end
  end
end
