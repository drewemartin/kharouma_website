require 'rails_helper'

describe User do
  it 'has a valid factory' do
    user1 = FactoryGirl.build(:user)
    expect(user1).to be_valid
  end

  it 'should have an email with at least 5 chars' do
    expect(FactoryGirl.build(:user, email:'1234')).to_not be_valid
  end

  it 'should have an email that includes an @ symbol' do
    expect(FactoryGirl.build(:user, email:'drewgmail.com')).to_not be_valid
  end

  it 'should have an email that includes a period' do
    expect(FactoryGirl.build(:user, email:'drew@gmailcom')).to_not be_valid
  end

  it 'should have a name with at least 2 chars' do
    expect(FactoryGirl.build(:user, name:'a')).to_not be_valid
  end

  it 'should have a password that includes at least one integer' do
    expect(FactoryGirl.build(:user, password:'hello')).to_not be_valid
  end
end

