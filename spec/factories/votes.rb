# == Schema Information
#
# Table name: votes
#
#  id         :bigint           not null, primary key
#  vote       :integer
#  user_id    :bigint
#  card_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_votes_on_card_id  (card_id)
#  index_votes_on_user_id  (user_id)
#

FactoryBot.define do
  factory :vote do
    
  end
end
