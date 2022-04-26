class Post < ApplicationRecord
  validates :all_day, inclusion: { in: [true, false] }
end
