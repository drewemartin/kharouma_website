class Article < ActiveRecord::Base
  belongs_to :user

  validates :body, presence: true
  validate :maximum_body_length

  validates :title, presence: true
  validate :maximum_title_length

  validate :type_is_either_project_or_update
  validate :show_on_homepage_is_either_yes_or_no

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

  def type_is_either_project_or_update
    if type != 'update'.downcase && type != 'project'.downcase
      errors.add(:type, 'it must either be a project or an update')
    end
  end

  def show_on_homepage_is_either_yes_or_no
    if show_on_homepage != 'yes'.downcase && show_on_homepage != 'no'.downcase
      errors.add(:type, 'it must either be a project or an update')
    end
  end
  
  
end
