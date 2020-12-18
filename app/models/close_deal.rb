class CloseDeal < ActiveHash::Base
  self.data = [
    { id: 1, name: '取引済み' },
    { id: 2, name: '取引していない' },
    { id: 3, name: '取引予定' },
    { id: 4, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :reviews
end
