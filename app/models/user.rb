class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :articles

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
  validates :email, length: {minimum: 5}
  validate :email_must_have_at_symbol, :email_must_have_period

  validates :name, length: {minimum: 2}
  validate :password_must_include_integer

  private
  def email_must_have_at_symbol
    if email.split('').include?('@') == false
      errors.add(:email, 'must include @ symbol')
    end 
  end

  def email_must_have_period
    if email.split('').include?('.') == false
      errors.add(:email, 'must include . (period) symbol')      
    end
  end

  def password_must_include_integer
    results = []
    password.split('').each do |p|
      if p.is_a? Integer
        results.push(p)
      end
    end

    if results.empty? == true
      errors.add(:password, 'must inuclude a number')
    end
  end
end
