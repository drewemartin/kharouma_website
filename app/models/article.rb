class Article < ActiveRecord::Base
  belongs_to :user

  validates :body, presence: true
  validate :maximum_body_length

  validates :title, presence: true
  validate :maximum_title_length

  private
  def maximum_body_length
    if body.nil? != true && body.length > 65536
      errors.add(:body, 'must be shorter')
    end
  end

  def maximum_title_length
    if title.nil? != true && title.length > 255
      errors.add(:title, 'must be shorter')
    end
  end
  
end
