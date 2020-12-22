class Review < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :deal_type
  belongs_to :close_deal

  with_options presence: true do                       #以下のものが存在している時のみに保存されるようにバリデーションをかけた
    validates :user_id
    validates :agent_id
    validates :content
    validates :score               #ちゃんとしたバリデーション書く
    validates :deal_type_id
    validates :close_deal_id
  end

  validates :deal_type_id, format: { with: /\A[1-3]\z/ }     #deal_type_idには1,2,3のときのみ保存する
  validates :close_deal_id, format: { with: /\A[1-4]\z/ }    #close_deal_idには1,2,3,4のときのみ保存する

  belongs_to :user
  belongs_to :agent
end