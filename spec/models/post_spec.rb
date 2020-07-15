require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { build(:post) }

  context 'validations' do
    it 'has a valid factory' do
      expect(build(:post)).to be_valid
end

    it { expect(subject).to validate_presence_of(:title) }
    it { expect(subject).to validate_presence_of(:image_url) }
end

  context 'associations' do
    it { expect(subject).to have_many(:tags).through(:post_tags) }
    it { expect(subject).to belong_to(:user) }
 end
end