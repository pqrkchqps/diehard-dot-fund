class Communities::Diehard_FundUsers < Communities::Base
  include Communities::Notify::InApp
  include Communities::Notify::Users
  set_community_type :diehard_fund_users
  set_custom_fields  :diehard_fund_user_ids, :slack_channel_id, :slack_channel_name

  alias :channel :slack_channel_id

  def to_group_community
    Communities::Diehard_FundGroup.new(group_key: identifier)
  end

  def members
    User.where(id: diehard_fund_user_ids)
  end

  def includes?(member)
    member.is_logged_in? && self.diehard_fund_user_ids.include?(member.id)
  end
end
