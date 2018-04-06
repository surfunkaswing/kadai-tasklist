# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..25).each do |number|
  Task.create(content: 'test task' + number.to_s, status: '未着手' )
end
(26..50).each do |number|
  Task.create(content: 'test task' + number.to_s, status: '仕掛かり中' )
end
(51..75).each do |number|
  Task.create(content: 'test task' + number.to_s, status: '完了' )
end
(76..100).each do |number|
  Task.create(content: 'test task' + number.to_s, status: '創造的廃棄' )
end