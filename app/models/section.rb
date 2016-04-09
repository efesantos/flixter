class Section < ActiveRecord::Base

  belongs_to :course
  has_many :lessons, dependent: :destroy

  include RankedModel

  belongs_to :course
  ranks :row_order,
    :with_same => :course_id

end
