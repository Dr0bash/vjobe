# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.new([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.new(name: 'Luke', movie: movies.first)
#AdminUser.create!(email: 'igorshamaev9@gmail.com', password: '123456789', password_confirmation: '123456789') if Rails.env.development?
Employee.create!(first_name: 'Иван', second_name: 'Иванов', patronymic: 'Иванович', description: 'Я - Ваня', mail: 'ivan@yandex.ru', number: '88005553535', password: '12345', gender: true, verified: true, birth_date: '01.01.2000', country: 'Россия', city: 'Ростов-на-Дону', pref_min_sal: 3000)
Employee.create!(first_name: 'Михаил', second_name: 'Лобанов', patronymic: 'Иванович', description: 'Я - Миша', mail: 'misha@yandex.ru', number: '88005553536', password: '54321', gender: true, verified: true, birth_date: '03.01.2000', country: 'Россия', city: 'Воронеж',pref_min_sal: 5000)
Employee.create!(first_name: 'Алина', second_name: 'Фонарева', patronymic: 'Егоровна', description: 'Я - Алина', mail: 'alina@yandex.ru', number: '88005553537', password: '12321', gender: false, verified: true, birth_date: '01.03.2000', country: 'Россия', city: 'Москва',pref_min_sal: 4000)
#Employer.create!(name: 'ОАО Тетрис', number: '88005553538', password: '123456', mail: 'company@mail.ru', verified: true, country: 'Россия', city: 'Москва')
#Employer.create!(name: 'ОАО Марио', number: '88005553539', password: '654321', mail: 'prkol@gmail.ru', verified: true, country: 'Россия', city: 'Санкт-Петербург')
