# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create({
    last_name: 'Giovanna',
    first_name: 'Giorno',
    middle_name: 'jojo',
    email: 'admin@project.com',
    password: 'admin01',
    password_confirmation: 'admin01',
    role: 'admin'
})

# health_users = User.create([
#     {
#     last_name: 'Kujo',
#     first_name: 'Jotaro',
#     middle_name: 'J',
#     email: 'Jotaro@kujo.com',
#     password: 'jotaropass',
#     password_confirmation: 'jotaropass',
#     covid_status: 'negative',
#     role: 'health_user'
#     },
#     {
#     last_name: 'Polnareff',
#     first_name: 'Jean Pierre',
#     middle_name: 'P',
#     email: 'JP@polnareff.com',
#     password: 'polnareffpass',
#     covid_status: 'positive',
#     role: 'health_user'
#     },
#     {
#     last_name: 'Speedwagon',
#     first_name: 'Robert',
#     middle_name: 'E.O',
#     email: 'reo@speedwagon.com',
#     password: 'speedwagonpass',
#     covid_status: 'negative',
#     role: 'health_user'
#     }
# ])

# requests = Request.create([
#     {
#         request_type: 'Insurance',
#         name: 'Travel Insurance',
#         user_id: 2
#     },
#     {
#         request_type: 'Certification',
#         name: 'Health Certificate',
#         user_id: 2
#     },
#     {
#         request_type: 'Certification',
#         name: 'Covid Recovery Certificate',
#         user_id: 3
#     },
#     {
#         request_type: 'Swab Test',
#         name: 'Covid Swab Test',
#         user_id: 3
#     },
#     {
#         request_type: 'Vaccination',
#         name: 'Covid Vaccination',
#         user_id: 4
#     }
# ])
