require 'rails_helper'

 describe Communities::DiehardFundGroup do

   let(:group) { create :group }
   let(:another_group) { create :group }
   let(:community) { create :diehard_fund_group_community, group: group }
   let(:user) { create :user }
   let(:non_member) { create :user }
   let(:visitor) { create :visitor }

   before do
     group.add_member! user
   end

   describe 'group' do
     it 'allows setting group by key' do
       community.update(identifier: another_group.key)
       expect(community.reload.identifier).to eq another_group.key
       expect(community.group).to eq another_group
     end

     it 'allows setting group by reference' do
       community.update(group: another_group)
       expect(community.reload.identifier).to eq another_group.key
       expect(community.group).to eq another_group
     end
   end

   describe 'includes?' do
     it 'returns true for group members' do
       expect(community.includes?(user)).to eq true
     end

     it 'returns false for non group members' do
       expect(community.includes?(non_member)).to eq false
     end

     it 'returns false for visitors' do
       expect(community.includes?(visitor)).to eq false
     end

     it 'only includes admins for groups where members cannot vote' do
       group.update(members_can_vote: false)
       expect(community.includes?(user)).to eq false
       Membership.find_by(user: user, group: group).update(admin: true)
       expect(community.reload.includes?(user)).to eq true
     end
   end

 end
