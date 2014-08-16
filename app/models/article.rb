class Article < ActiveRecord::Base
  belongs_to :user

  validates :body, presence: true
  validate :maximum_body_length

  validates :title, presence: true
  validate :maximum_title_length

  validate :last_editor_cannot_be_empty_string

  validates :publish_now, presence: true

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

  def last_editor_cannot_be_empty_string
    if last_editor != nil && last_editor == ''
      errors.add(:last_editor, 'can either be blank or a selection')
    end
  end

  
end
