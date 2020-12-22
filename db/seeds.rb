# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Agent.create!(
  user_id: 1,
  company_name: '(株)Ruby不動産',
  company_location: '東京都渋谷区笹塚1ー32ー8',
  last_name: '佐藤',
  first_name: '健太',
  last_name_kana: 'サトウ',
  first_name_kana: 'ケンタ'
)
Agent.create!(
  user_id: 1,
  company_name: 'レールズ不動産株式会社',
  company_location: '東京都港区虎ノ門1-2-4',
  last_name: '鈴木',
  first_name: '太郎',
  last_name_kana: 'スズキ',
  first_name_kana: 'タロウ'
)