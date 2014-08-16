require 'rails_helper'

describe Article do
  it 'should have a valid factory' do
    article1 = FactoryGirl.build(:article)
    expect(article1).to be_valid
  end

  it 'should have a body that is not nil' do
    expect(FactoryGirl.build(:article, body:nil)).to_not be_valid
  end

  it 'should have a body that is not an empty string' do
    expect(FactoryGirl.build(:article, body:"")).to_not be_valid
  end

  xit 'should have a body that is less than 65537 chars' do
    article2 = FactoryGirl.build(:article)
    expect(article2).to_not be_valid
  end
  #can be run after changing factory
  #will clash w/ 1st test

  it 'should have a title that is not nil' do
    expect(FactoryGirl.build(:article, title: nil)).to_not be_valid
  end

  it 'should have a title that is not an empty string' do
    expect(FactoryGirl.build(:article, title:'')).to_not be_valid
  end

  xit 'should have title that is less than 256 chars' do
    article3 = FactoryGirl.build(:article)
    expect(article3).to_not be_valid
  end
  #can be run after changing factory
  #will clash w/ 1st test

  it 'should have publish_now option that is a boolean' do
    expect(FactoryGirl.build(:article, publish_now:nil)).to_not be_valid
  end
end

# body
# - cannot be nil
# - cannot have empty string
# - cannot have more than 65536 chars 
# title 
# - cannot be nil
# - cannot have empty string
# - cannot have more than 255 chars
# last_editor 
# - can be nil
# - cannot have an empty string
# - cannot have more than 255 chars
# publish_location (going to drop column and add new model in place)
# publish_now (boolean)
# - must be a boolean
# - cannot be nil
# user_id 
# - check for relation