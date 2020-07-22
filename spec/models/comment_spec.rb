require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject { build(:comment) }

  context 'validations' do
    it 'has a valid factory' do
      expect(build(:comment)).to be_valid
end

    it { expect(subject).to validate_presence_of(:username) }
    it { expect(subject).to validate_length_of(:username).is_at_least(5).is_at_most(15) }
    it { expect(subject).to validate_presence_of(:comment) }
end

#   context 'associations' do
#     it { expect(subject).to have_many(:tags).through(:post_tags) }
#     it { expect(subject).to belong_to(:user) }
#  end
end