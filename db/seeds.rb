puts "🌱 Seeding spices..."

#chatroom data. title of a chatroom will be a spice name
5.times do 
    Chatroom.create(
        title: Faker::Food.spice, 
        timestamp: Faker::Date.between(from: '2022-11-15', to: "2021-11-15")
    )
end

#message data. messages will be a slack emoji for some reason
20.times do
    Message.create(
        message: Faker::SlackEmoji.emoji, 
        timestamp: Faker::Date.between(from: '2022-11-15', to: "2021-11-15"),
        user_id: rand(1..10),
        chatroom_id: rand(1..5)
    )
end

#user data. passwords will be the name of a tea. teacher/student boolean values will be randomly true/fasle 
10.times do 
    User.create(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        isTeacher?: rand(2) == 1 ? true : false,
        password: Faker::Tea.variety 
    )
end
puts "✅ Done seeding!"
