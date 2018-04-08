# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: 'testuser1', email: 'TestUser1@tasklist.com', password: 'test1234')
User.create(name: 'testuser2', email: 'TestUser2@tasklist.com', password: 'test2345')
User.create(name: 'testuser3', email: 'TestUser3@tasklist.com', password: 'test3456')
User.create(name: 'testuser4', email: 'TestUser4@tasklist.com', password: 'test4567')
User.create(name: 'testuser5', email: 'TestUser5@tasklist.com', password: 'test5678')


(1..25).each do |number|
  Task.create(content: 'test task' + number.to_s, status: '未着手', user_id: 1 )
end
(26..50).each do |number|
  Task.create(content: 'test task' + number.to_s, status: '仕掛かり中', user_id: 2 )
end
(51..75).each do |number|
  Task.create(content: 'test task' + number.to_s, status: '完了', user_id: 3 )
end
(76..100).each do |number|
  Task.create(content: 'test task' + number.to_s, status: '創造的廃棄', user_id: 4 )
end
(101..125).each do |number|
  Task.create(content: 'test task' + number.to_s, status: '創造的廃棄', user_id: 5 )
end