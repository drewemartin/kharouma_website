require 'rails_helper'

describe Article do

  context "before creation" do

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

  end

  context "as for association" do
    it 'should belong to a user' do
      expect(FactoryGirl.create(:article)).to respond_to(:user)
    end
  end

end

