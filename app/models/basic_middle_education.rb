class BasicMiddleEducation < ApplicationRecord
  belongs_to :user

  validates :last_degree, presence: true

end
