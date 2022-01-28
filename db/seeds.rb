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
    role: 'admin',
})

health_users = User.create([
    {
    last_name: 'Kujo',
    first_name: 'Jotaro',
    middle_name: 'J',
    email: 'Jotaro@kujo.com',
    password: 'jotaropass',
    password_confirmation: 'jotaropass',
    covid_status: 'Negative',
    role: 'health_user',
    gender: 'Male',
    address: 'Cavite',
    birthday: '1971-02-08',
    },
    {
    last_name: 'Polnareff',
    first_name: 'Jean Pierre',
    middle_name: 'P',
    email: 'jp@polnareff.com',
    password: 'polnareffpass',
    covid_status: 'Positive',
    role: 'health_user',
    gender: 'Male',
    address: 'Makati',
    birthday: '1965-01-16',
    },
    {
    last_name: 'Speedwagon',
    first_name: 'Robert',
    middle_name: 'E.O',
    email: 'reo@speedwagon.com',
    password: 'speedwagonpass',
    covid_status: 'Negative',
    role: 'health_user',
    gender: 'Male',
    address: 'Bacoor',
    birthday: '1955-05-14',
    },
   {
    last_name: 'Joestar',
    first_name: 'Jonathan',
    middle_name: 'J',
    email: 'jojo@joestar.com',
    password: 'joestarpassword',
    covid_status: 'Negative',
    role: 'health_user',
    gender: 'Male',
    address: 'Quezon City',
    birthday: '1959-06-11',
    },
    {
    last_name: 'Joestar',
    first_name: 'Joseph',
    middle_name: 'E',
    email: 'joseph@joestar.com',
    password: 'josephpass',
    covid_status: 'Negative',
    role: 'health_user',
    gender: 'Male',
    address: 'Laguna',
    birthday: '1989-09-21',
    },
    {
    last_name: 'Una',
    first_name: 'Trish',
    middle_name: 'D',
    email: 'trish@una.com',
    password: 'trishpass',
    covid_status: 'Positive',
    role: 'health_user',
    gender: 'Female',
    address: 'Pasay',
    birthday: '1999-02-18',
    },
    {
    last_name: 'Brando',
    first_name: 'Dio',
    middle_name: 'D',
    email: 'dio@brando.com',
    password: 'zaworldo',
    covid_status: 'Positive',
    role: 'health_user',
    gender: 'Male',
    address: 'Las Pinas',
    birthday: '1955-12-22',
    },
    {
    last_name: 'Mista',
    first_name: 'Guido',
    middle_name: 'S',
    email: 'guido@mista.com',
    password: 'sexpistols',
    covid_status: 'Negative',
    role: 'health_user',
    gender: 'Male',
    address: 'Makati',
    birthday: '1989-02-26',
    },
    {
    last_name: 'Fugo',
    first_name: 'Pannacotta',
    middle_name: 'F',
    email: 'fugo@fugo.com',
    password: 'bluehaze',
    covid_status: 'Negative',
    role: 'health_user',
    gender: 'Male',
    address: 'Pasay',
    birthday: '1992-12-14',
    },
    {
    last_name: 'Abbacchio',
    first_name: 'Leone',
    middle_name: 'A',
    email: 'Leone@Abbachio.com',
    password: 'moodyblues',
    covid_status: 'Negative',
    role: 'health_user',
    gender: 'Male',
    address: 'Bacoor',
    birthday: '1990-06-06',
    },
    {
    last_name: 'Ghirga',
    first_name: 'Narancia',
    middle_name: 'H',
    email: 'narancia@narancia.com',
    password: 'smallpass',
    covid_status: 'Positive',
    role: 'health_user',
    gender: 'Male',
    address: 'Pasig',
    birthday: '1995-05-28',
    },
    {
    last_name: 'Buccellati',
    first_name: 'Bruno',
    middle_name: 'B',
    email: 'bruno@buccellati.com',
    password: 'stickyfinger',
    covid_status: 'Negative',
    role: 'health_user',
    gender: 'Male',
    address: 'Laguna',
    birthday: '1990-05-26',
    },
    {
    last_name: 'Higashikata',
    first_name: 'Josuke',
    middle_name: 'J',
    email: 'jojo@higashikata.com',
    password: 'jojosukepass',
    covid_status: 'Negative',
    role: 'health_user',
    gender: 'Male',
    address: 'Quezon City',
    birthday: '1993-04-19',
    },
    {
    last_name: 'Kujo',
    first_name: 'Jolyne',
    middle_name: 'J',
    email: 'jolyne@kujo.com',
    password: 'moodyblues',
    covid_status: 'Positive',
    role: 'health_user',
    gender: 'Female',
    address: 'Makati',
    birthday: '2001-06-17',
    },
])

requests = Request.create([
    {
        request_type: 'Insurance',
        name: 'Travel Insurance',
        requested_by: 'Jotaro Kujo',
        status: 'Pending',
        user_id: 2
    },
    {
        request_type: 'Certification',
        name: 'Health Certificate',
        requested_by: 'Jotaro Kujo',
        status: 'Completed',
        user_id: 2
    },
    {
        request_type: 'Insurance',
        name: 'Health Insurance',
        requested_by: 'Jotaro Kujo',
        status: 'Pending',
        user_id: 2
    },
    {
        request_type: 'Certification',
        name: 'Certificate of Recovery',
        requested_by: 'Jean Pierre Polnareff',
        status: 'Pending',
        user_id: 3
    },
    {
        request_type: 'Insurance',
        name: 'Travel Insurance',
        requested_by: 'Jean Pierre Polnareff',
        status: 'Pending',
        user_id: 3
    },
    {
        request_type: 'Insurance',
        name: 'Travel Insurance',
        requested_by: 'Robert Speedwagon',
        status: 'Completed',
        user_id: 4
    },
    {
        request_type: 'Certification',
        name: 'Health Certificate',
        requested_by: 'Robert Speedwagon',
        status: 'Completed',
        user_id: 4
    },
    {
        request_type: 'Certification',
        name: 'Health Certificate',
        requested_by: 'Jonathan Joestar',
        status: 'Completed',
        user_id: 5
    },
    {
        request_type: 'Insurance',
        name: 'Health Insurance',
        requested_by: 'Jonathan Joestar',
        status: 'Pending',
        user_id: 5
    },
    {
        request_type: 'Insurance',
        name: 'Travel Insurance',
        requested_by: 'Joseph Joestar',
        status: 'Pending',
        user_id: 6
    },
    {
        request_type: 'Insurance',
        name: 'Health Insurance',
        requested_by: 'Trish Una',
        status: 'Pending',
        user_id: 7
    },
    {
        request_type: 'Certification',
        name: 'Certificate of Recovery',
        requested_by: 'Trish Una',
        status: 'Pending',
        user_id: 7
    },
    {
        request_type: 'Certification',
        name: 'Certificate of Recovery',
        requested_by: 'Dio Brando',
        status: 'Completed',
        user_id: 8
    },
    {
        request_type: 'Insurance',
        name: 'Travel Insurance',
        requested_by: 'Guido Mista',
        status: 'Completed',
        user_id: 9
    },
    {
        request_type: 'Insurance',
        name: 'Travel Insurance',
        requested_by: 'Pannacotta Fugo',
        status: 'Completed',
        user_id: 10
    },
    {
        request_type: 'Certification',
        name: 'Health Certificate',
        requested_by: 'Pannacotta Fugo',
        status: 'Pending',
        user_id: 10
    },
    {
        request_type: 'Certification',
        name: 'Health Certificate',
        requested_by: 'Leone Abbacchio',
        status: 'Completed',
        user_id: 11
    },
    {
        request_type: 'Insurance',
        name: 'Travel Insurance',
        requested_by: 'Leone Abbacchio',
        status: 'Pending',
        user_id: 11
    },
    {
        request_type: 'Insurance',
        name: 'Travel Insurance',
        requested_by: 'Narancia Ghirga',
        status: 'Pending',
        user_id: 12
    },
    {
        request_type: 'Insurance',
        name: 'Travel Insurance',
        requested_by: 'Bruno Buccellati',
        status: 'Completed',
        user_id: 13
    },
    {
        request_type: 'Certification',
        name: 'Health Certificate',
        requested_by: 'Bruno Buccellati',
        status: 'Completed',
        user_id: 13
    },
    {
        request_type: 'Insurance',
        name: 'Health Insurance',
        requested_by: 'Josuke Higashikata',
        status: 'Completed',
        user_id: 14
    },
    {
        request_type: 'Insurance',
        name: 'Travel Insurance',
        requested_by: 'Jolyne Kujo',
        status: 'Pending',
        user_id: 15
    },
    {
        request_type: 'Certification',
        name: 'Travel Certificate',
        requested_by: 'Jolyne Kujo',
        status: 'Pending',
        user_id: 15
    },
    {
        request_type: 'Certification',
        name: 'Certificate of Recovery',
        requested_by: 'Jolyne Kujo',
        status: 'Completed',
        user_id: 15
    },
])

appointments = Appointment.create([
    {
        atype: 'Clinic Checkup',
        aname: 'Clinic Checkup',
        adate: 'Mon Jan 31 2022 10:30:06 GMT+0800 (China Standard Time)',
        atime: '10:30 AM',
        user_id: 2
    },
    {
        atype: "Swab Test",
        aname: "Swab Test",
        adate: 'Sat Jan 29 2022 10:30:06 GMT+0800 (China Standard Time)',
        atime: '3:00 PM',
        user_id: 3
    },
    {
        atype: "Doctor's Consultation",
        aname: "Doctor's Consultation",
        adate: 'Sat Jan 29 2022 10:30:06 GMT+0800 (China Standard Time)',
        atime: '11:00 AM',
        user_id: 3
    },
    {
        atype: "Doctor's Consultation",
        aname: "Doctor's Consultation",
        adate: 'Mon Jan 31 2022 10:30:06 GMT+0800 (China Standard Time)',
        atime: '10:30 AM',
        user_id: 3
    },
])

activities = Activity.create([
    {
        name: "SM Bacoor",
        userFirstName: "Jotaro",
        userMiddleName: "J",
        userLastName: "Kujo",
        userEmail: "Jotaro@kujo.com",
        userAddress: "Cavite",
        userStatus: "Negative",
        user_id: 2
    },
    {
        name: "SM Bacoor",
        userFirstName: "Jean Pierre",
        userMiddleName: "P",
        userLastName: "Polnareff",
        userEmail: "jp@polnareff.com",
        userAddress: "Makati",
        userStatus: "Positive",
        user_id: 3
    },
    {
        name: "SM Bacoor",
        userFirstName: "Robert",
        userMiddleName: "E.O",
        userLastName: "Speedwagon",
        userEmail: "reo@speedwagon.com",
        userAddress: "Bacoor",
        userStatus: "Negative",
        user_id: 4
    },
    {
        name: "SM Bacoor",
        userFirstName: "Jonathan",
        userMiddleName: "J",
        userLastName: "Joestar",
        userEmail: "jojo@joestar.com",
        userAddress: "Quezon City",
        userStatus: "Negative",
        user_id: 5
    },
    {
        name: "SM Bacoor",
        userFirstName: "Joseph",
        userMiddleName: "E",
        userLastName: "Joestar",
        userEmail: "joseph@joestar.com",
        userAddress: "Laguna",
        userStatus: "Negative",
        user_id: 6
    },
    {
        name: "SM Bacoor",
        userFirstName: "Trish",
        userMiddleName: "D",
        userLastName: "Una",
        userEmail: "trish@una.com",
        userAddress: "Pasay",
        userStatus: "Positive",
        user_id: 7
    },
    {
        name: "SM Bacoor",
        userFirstName: "Dio",
        userMiddleName: "D",
        userLastName: "Brando",
        userEmail: "dio@brando.com",
        userAddress: "Las Pinas",
        userStatus: "Positive",
        user_id: 8
    },
    {
        name: "SM Makati",
        userFirstName: "Guido",
        userMiddleName: "S",
        userLastName: "Mista",
        userEmail: "guido@mista.com",
        userAddress: "Makati",
        userStatus: "Negative",
        user_id: 9
    },
    {
        name: "SM Makati",
        userFirstName: "Pannacotta",
        userMiddleName: "F",
        userLastName: "Fugo",
        userEmail: "fugo@fugo.com",
        userAddress: "Pasay",
        userStatus: "Negative",
        user_id: 10
    },
    {
        name: "SM Makati",
        userFirstName: "Leone",
        userMiddleName: "A",
        userLastName: "Abbacchio",
        userEmail: "Leone@Abbachio.com",
        userAddress: "Bacoor",
        userStatus: "Negative",
        user_id: 11
    },
    {
        name: "SM Makati",
        userFirstName: "Narancia",
        userMiddleName: "H",
        userLastName: "Ghirga",
        userEmail: "narancia@narancia.com",
        userAddress: "Pasig",
        userStatus: "Positive",
        user_id: 12
    },
    {
        name: "SM Makati",
        userFirstName: "Bruno",
        userMiddleName: "B",
        userLastName: "Buccellati",
        userEmail: "bruno@buccellati.com",
        userAddress: "Laguna",
        userStatus: "Negative",
        user_id: 13
    },
    {
        name: "SM Makati",
        userFirstName: "Josuke",
        userMiddleName: "J",
        userLastName: "Higashikata",
        userEmail: "jojo@higashikata.com",
        userAddress: "Quezon City",
        userStatus: "Negative",
        user_id: 14
    },
    {
        name: "SM Makati",
        userFirstName: "Kujo",
        userMiddleName: "J",
        userLastName: "Jolyne",
        userEmail: "jolyne@kujo.com",
        userAddress: "Makati",
        userStatus: "Positive",
        user_id: 15
    },
])
