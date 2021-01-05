class Agent < ApplicationRecord
  with_options presence: true do
    validates :user_id
    validates :company_name
    validates :company_location

    with_options format: { with: /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/ } do
      validates :first_name
      validates :last_name
    end
    with_options format: { with: /\A[ァ-ヶー－]+\z/ } do
      validates :last_name_kana
      validates :first_name_kana
    end
  end

  def avg_score
    if reviews.empty?
      0.0
    else
      reviews.average(:score).round(1).to_f
    end
  end

  def review_score_percentage
    if reviews.empty?
      0.0
    else
      reviews.average(:score).round(1).to_f / 5 * 100
    end
  end

  def self.search(search)
    if search != ""
      Agent.where('last_name LIKE(?) OR first_name LIKE(?) OR last_name_kana LIKE(?) OR first_name_kana LIKE(?) OR company_name LIKE(?) OR company_location LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    else
      Agent.all
    end
  end

  has_many :reviews, dependent: :destroy
  belongs_to :user
end
