# == Schema Information
#
# Table name: cards
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_cards_on_user_id  (user_id)
#

class Card < ApplicationRecord

    belongs_to :user
end
