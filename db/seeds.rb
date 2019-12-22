# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.new([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.new(name: 'Luke', movie: movies.first)
#AdminUser.create!(email: 'igorshamaev9@gmail.com', password: '123456789', password_confirmation: '123456789') if Rails.env.development?
#
#Employee.create!(password: '123456',first_name: 'Иван', second_name: 'Иванов', patronymic: 'Иванович', description: 'Я - Ваня', number: '88005553535',  gender: true, birth_date: '01.01.2000', country: 'Россия', city: 'Ростов-на-Дону', pref_min_sal: 3000, email: 'ivan@yandex.ru', created_at: '15.12.2019', updated_at: '15.12.2019')
#Employee.create!(password: '123456',first_name: 't', second_name: 't', patronymic: 't', description: '', number: '00000000000',  gender: true, birth_date: '01.01.2000', country: 't', city: 't', pref_min_sal: 100, email: 'bot@mail.ru', created_at: '21.12.2019', updated_at: '21.12.2019')
#Employee.create!(password: '123456',first_name: 'Михаил', second_name: 'Лобанов', patronymic: 'Иванович', description: 'Я - Миша', number: '88005553536',  gender: true, birth_date: '03.01.2000', country: 'Россия', city: 'Воронеж', pref_min_sal: 5000, email: 'misha@yandex.ru', created_at: '10.12.2019', updated_at: '13.12.2019')
#Employee.create!(password: '123456',first_name: 'Алина', second_name: 'Фонарева', patronymic: 'Егоровна', description: 'Я - Алина', number: '88005553537',  gender: false, birth_date: '01.03.2000', country: 'Россия', city: 'Москва', pref_min_sal: 4000, email: 'alina@yandex.ru', created_at: '12.12.2019', updated_at: '14.12.2019')
#Employer.create!(password: '123456',name: 'ОАО Тетрис', number: '88005553538', email: 'company@mail.ru', country: 'Россия', city: 'Москва',created_at: '01.12.2019', updated_at: '09.12.2019')
#Employer.create!(password: '123456',name: 'ОАО Марио', number: '88005553539', email: 'prkol@gmail.ru', country: 'Россия', city: 'Санкт-Петербург',created_at: '02.12.2019', updated_at: '05.12.2019')
#JobSphere.create!(sphere_title: 'IT')
#JobSphere.create!(sphere_title: 'Marketing')
#Job.create!(job_title: 'Programmer', job_spheres_id: 1)
#Job.create!(job_title: 'System administrator', job_spheres_id: 1)
#Job.create!(job_title: 'Seller', job_spheres_id: 2)
#Request.create!(description: 'Нужно починить интернет', address: 'Мильчакова 8а', min_salary: 2, rating: 0, employers_id: 6, job_id: 1)
#Request.create!(description: 'Нужно починить компьютер', address: 'Стачки 228', min_salary: 10, rating: 0, employer_id: 6, job_id: 2)
#Request.create!(description: 'Нужно починить все', address: 'Зорге 5', min_salary: 10, rating: 0, employer_id: 5, job_id: 2)
#Condition.create!(title: 'Работник не назначен')
#Condition.create!(title: 'В процессе')
#Condition.create!(title: 'Выполнено')