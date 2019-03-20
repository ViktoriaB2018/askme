class Hashtag < ApplicationRecord
  REGEXP = /#[[:word:]_]+/

  has_many :hashtags_questions, dependent: :destroy
  has_many :questions, through: :hashtags_questions, dependent: :destroy

  validates :name, uniqueness: true

  def to_param
    name
  end
end
