class DealType < ActiveHash::Base
  self.data = [
    { id: 1, name: '賃貸' },
    { id: 2, name: '売買' },
    { id: 3, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :reviews
end
