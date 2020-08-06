# == Schema Information
#
# Table name: comments
#
#  id          :bigint           not null, primary key
#  description :string
#  user_id     :bigint
#  card_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_comments_on_card_id  (card_id)
#  index_comments_on_user_id  (user_id)
#

FactoryBot.define do
  factory :comment do
    
  end
end
