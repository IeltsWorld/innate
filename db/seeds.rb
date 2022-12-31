

user_avatars = []

16.times do 
    user_avatars << URI.parse(Faker::LoremFlickr.image).open
end


me = User.create(email: "vaibhav.upreti16@gmail.com", password: "idkidk", first_name: "meow", last_name: "meow")
# me = User.create(email: "vaibhav.upreti16@gmail.com", password: "idkidk", first_name: "meow", last_name: "meow", username: "meowmeow")
me.avatar.attach(io: user_avatars[0], filename: "#{me.full_name}.jpg")

15.times do |i|
    user = User.create(email: Faker::Internet.email , password: "idkidk", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
    # user = User.create(email: Faker::Internet.email , password: "idkidk", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Name.username  )

    user.avatar.attach(io: user_avatars[i + 1], filename: "#{user.full_name}.jpg")
end

15.times do |i|
    freecourse = Freecourse.create!(
        user: me,
        name: Faker::Lorem.unique.word,
        headling: Faker::Lorem.sentence,
        description: Faker::Lorem.paragraphs(number: 30).join(" "),
        author: Faker::Lorem.unique.word
    )
    freecourse.images.attach(io: File.open(Rails.root.join("db", "sample", "images", "freecourse_#{i + 1}.png" )), filename: freecourse.name )



    (1..5).to_a.sample.times do 
        Review.create(reviewable: freecourse , rating: (1..5).to_a.sample, title: Faker::Lorem.word , body: Faker::Lorem.paragraph , user: User.all.sample)
    end 
end 

# for paid course

=begin
5.times do |i|
    paidcourse = Paidcourse.create!(
        name: Faker::Lorem.unique.word,
        headling: Faker::Lorem.sentence,
        description: Faker::Lorem.paragraphs(number: 30).join(" "),
        author: Faker::Lorem.unique.word
    )
    paidcourse.images.attach(io: File.open(Rails.root.join("db", "sample", "images", "paidcourse_#{i + 1}.png" )), filename: paidcourse.name )



    (1..5).to_a.sample.times do 
        Review.create(reviewable: paidcourse , rating: (1..5).to_a.sample, title: Faker::Lorem.word , body: Faker::Lorem.paragraph , user: User.all.sample)
    end 
end 
=end
