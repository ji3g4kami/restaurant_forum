namespace :dev do
  task fake: :environment do
    Restaurant.destroy_all
    50.times do
      Restaurant.create!(name: FFaker::Name.first_name,
        opening_hours: FFaker::Time.datetime,
        tel: FFaker::PhoneNumber.short_phone_number,
        address: FFaker::Address.street_address,
        description: FFaker::Lorem.paragraph
      )
    end
    puts "You have created #{Restaurant.count} restaurants data"
  end
end