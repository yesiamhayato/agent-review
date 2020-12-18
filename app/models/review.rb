class Review < ApplicationRecord
  with_options presence: true do
    validates :user_id
    validates :agent_id
    validates :content

    validates :score               #ちゃんとしたバリデーション書く
    validates :deal_type_id
    validates :close_deal_id
  end

  belongs_to :user
  belongs_to :agent
end