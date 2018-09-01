# The rest of the information displayed on the dashboard in each section.

Admin.create!(first_name: "Chibiusa", last_name: "Tsukino", photo_url: "app/assets/images/chibiusa.jpg", username: "ctsukinomoon1").build_user(email: "ctsukino@juubanmunhs.co.jp", password: "pinksugarlady").save
Admin.create!(first_name: "Hotaru", last_name: "Tomoe", photo_url: "app/assets/images/hotaru.jpg", username: "htomoesaturn2").build_user(email: "htomoe@juubanmunhs.co.jp", password: "silencewalldeath").save
Admin.create!(first_name: "Rei", last_name: "Hino", photo_url: "app/assets/images/rei.jpg", username: "rhinomars3").build_user(email: "rhino@juubanmunhs.co.jp", password: "flamesniperheels").save

Course.create(name: "Physics", location: "Lab 1007", description: "Learning about the general concepts of physics such as motion, matter, energy and force within its interaction.", icon_url: "app/assets/images/physics.png", class_hours: "7AM - 8AM")
Course.create(name: "Astronomy", location: "Room 427B", description: "Learning about the general concepts of astronomy such as celestial objects and phenomena within its divine universe.", icon_url: "app/assets/images/astronomy.png", class_hours: "8AM - 9AM")
Course.create(name: "History", location: "Room 239C", description: "Learning about the most important historical facts that happened in the past stated in such vital documentation.", icon_url: "app/assets/images/history.png", class_hours: "9AM - 10AM")
Course.create(name: "Chemistry", location: "Lab 1002", description: "Learning about the general concepts of chemistry such as atoms, elements and molecules within its behavioral properties.", icon_url: "app/assets/images/chemistry.png", class_hours: "10AM - 11AM")
Course.create(name: "English", location: "Room 127D", description: "Learning about the wonderful language and its works of literature and other masterpieces which is English.", icon_url: "app/assets/images/english.png", class_hours: "11AM - 12PM")
Course.create(name: "Studio Art", location: "Room 538B", description: "Learning about the expression and creative concepts of aesthetics, emotion and beauty through artfacts.", icon_url: "app/assets/images/studio_art.png", class_hours: "1PM - 2PM")
Course.create(name: "Physical Education", location: "General Gymnasium", description: "Learning about the general concepts of fitness, sportsmanship, athleticism and physical health overall.", icon_url: "app/assets/images/physical_education.png", class_hours: "2PM - 3PM")
Course.create(name: "Music", location: "Room 530D", description: "Learning about the art form and cultural activity whose medium is sound measured in time.", icon_url: "app/assets/images/music.png", class_hours: "3PM - 4PM")
Course.create(name: "Mathematics", location: "Room 157A", description: "Learning about the general concepts of mathematics such as computation, quantity, logic and measurement within abstraction in space.", icon_url: "app/assets/images/mathematics.png", class_hours: "4PM - 5PM")
Course.create(name: "Home Economics", location: "Room 220C", description: "Learning about the general concepts which deals with domestic life with economics in terms of budgeting and financing living expenses.", icon_url: "app/assets/images/home_economics.png", class_hours: "5PM - 6PM")

Teacher.create(first_name: "Setsuna", last_name: "Meioh", age: 24, date_of_birth: "October 29, 1978", photo_url: "app/assets/images/setsuna.jpg", username: "smeioh4", fair: true, salary: "75980", education: "Keio University - Ph.D", subject: "Physics").build_user(email: "smeioh@juubanmunhs.co.jp", password: "redchronostyphoon").save
Teacher.create(first_name: "Wataru", last_name: "Amanogawa", age: 35, date_of_birth: "April 12, 1966", photo_url: "app/assets/images/wataru.jpg", username: "wamanogawa5", fair: true, salary: "85980", education: "Kyoto University - Ph.D", subject: "Astronomy").build_user(email: "wamanogawa@juubanmunhs.co.jp", password: "ilovethestars").save
Teacher.create(first_name: "Haruna", last_name: "Sakurada", age: 25, date_of_birth: "June 24, 1977", photo_url: "app/assets/images/haruna.jpg", username: "hsakurada6", fair: false, salary: "65456", education: "Osaka University - M.S.Ed", subject: "History").build_user(email: "hsakurada@juubanmunhs.co.jp", password: "studyorfail").save
Teacher.create(first_name: "Souichi", last_name: "Tomoe", age: 40, date_of_birth: "December 26, 1964", photo_url: "app/assets/images/souichi.jpg", username: "stomoe7", fair: true, salary: "85988", education: "Waseda University - Ph.D", subject: "Chemistry").build_user(email: "stomoe@juubanmunhs.co.jp", password: "goodchemdude").save
Teacher.create(first_name: "Mamoru", last_name: "Chiba", age: 23, date_of_birth: "August 3, 1978", photo_url: "app/assets/images/mamoru.jpg", username: "mchiba8", fair: true, salary: "65382", education: "Harvard University - Ph.D", subject: "English").build_user(email: "mchiba@juubanmunhs.co.jp", password: "theredrose").save
Teacher.create(first_name: "Yumemi", last_name: "Yumeno", age: 22, date_of_birth: "February 28, 1979", photo_url: "app/assets/images/yumemi.jpg", username: "yyumeno9", fair: true, salary: "55294", education: "Tokyo University of the Arts - M.S.Ed", subject: "Studio Art").build_user(email: "yyumeno@juubanmunhs.co.jp", password: "fineartsfancy").save
Teacher.create(first_name: "Shun", last_name: "Hayase", age: 27, date_of_birth: "January 8, 1973", photo_url: "app/assets/images/shun.jpg", username: "shayase10", fair: true, salary: "55392", education: "Meiji University - M.S.Ed", subject: "Physical Education").build_user(email: "shayase@juubanmunhs.co.jp", password: "thegymfreak").save
Teacher.create(first_name: "Takuzou", last_name: "Igarashi", age: 30, date_of_birth: "August 24, 1974", photo_url: "app/assets/images/takuzou.jpg", username: "tigarashi11", fair: false, salary: "55392", education: "Tokyo University of the Arts - M.S.Ed", subject: "Music").build_user(email: "tigarashi@juubanmunhs.co.jp", password: "leviolinsnob").save
Teacher.create(first_name: "Ryo", last_name: "Urawa", age: 20, date_of_birth: "January 9, 1978", photo_url: "app/assets/images/ryo.jpg", username: "rurawa12", fair: true, salary: "75980", education: "Keisen University - M.S.Ed", subject: "Mathematics").build_user(email: "rurawa@juubanmunhs.co.jp", password: "psychomathkid").save
Teacher.create(first_name: "Ikuko", last_name: "Tsukino", age: 40, date_of_birth: "September 28, 1964", photo_url: "app/assets/images/ikuko.jpg", username: "itsukino13", fair: true, salary: "54293", education: "Osaka University - M.S.Ed", subject: "Home Economics").build_user(email: "itsukino@juubanmunhs.co.jp", password: "homesweethome").save

Cohort.create(name: "Physics - Volume 1", start_date: "09/05/2018", end_date: "12/19/2018", icon_url: "app/assets/images/physics.png", course_id: 1, teacher_id: 1)
Cohort.create(name: "Astronomy - Volume 1", start_date: "09/05/2018", end_date: "12/19/2018", icon_url: "app/assets/images/astronomy.png", course_id: 2, teacher_id: 2)
Cohort.create(name: "History - Volume 1", start_date: "09/05/2018", end_date: "12/19/2018", icon_url: "app/assets/images/history.png", course_id: 3, teacher_id: 3)
Cohort.create(name: "Chemistry - Volume 1", start_date: "09/05/2018", end_date: "12/19/2018", icon_url: "app/assets/images/chemistry.png", course_id: 4, teacher_id: 4)
Cohort.create(name: "English - Volume 1", start_date: "09/05/2018", end_date: "12/19/2018", icon_url: "app/assets/images/english.png", course_id: 5, teacher_id: 5)
Cohort.create(name: "Studio Art - Volume 1", start_date: "09/05/2018", end_date: "12/19/2018", icon_url: "app/assets/images/studio_art.png", course_id: 6, teacher_id: 6)
Cohort.create(name: "Physical Education - Volume 1", start_date: "09/05/2018", end_date: "12/19/2018", icon_url: "app/assets/images/physical_education.png", course_id: 7, teacher_id: 7)
Cohort.create(name: "Music - Volume 1", start_date: "09/05/2018", end_date: "12/19/2018", icon_url: "app/assets/images/music.png", course_id: 8, teacher_id: 8)
Cohort.create(name: "Mathematics - Volume 1", start_date: "09/05/2018", end_date: "12/19/2018", icon_url: "app/assets/images/mathematics.png", course_id: 9, teacher_id: 9)
Cohort.create(name: "Home Economics - Volume 1", start_date: "09/05/2018", end_date: "12/19/2018", icon_url: "app/assets/images/home_economics.png", course_id: 10, teacher_id: 10)

Student.create(first_name: "Usagi", last_name: "Tsukino", age: 14, date_of_birth: "June 30, 1978", year: "Freshman", photo_url: "app/assets/images/usagi.jpg", email: "utsukino@juubanmunhs.co.jp", good: false)
Student.create(first_name: "Ami", last_name: "Mizuno", age: 14, date_of_birth: "September 10, 1978", year: "Freshman", photo_url: "app/assets/images/ami.jpg", email: "amizuno@juubanmunhs.co.jp", good: true)
Student.create(first_name: "Makoto", last_name: "Kino", age: 14, date_of_birth: "December 5, 1978", year: "Freshman", photo_url: "app/assets/images/makoto.jpg", email: "mkino@juubanmunhs.co.jp", good: true)
Student.create(first_name: "Minako", last_name: "Aino", age: 14, date_of_birth: "October 22, 1978", year: "Freshman", photo_url: "app/assets/images/minako.jpg", email: "maino@juubanmunhs.co.jp", good: false)
Student.create(first_name: "Haruka", last_name: "Tenoh", age: 15, date_of_birth: "January 27, 1978", year: "Sophomore", photo_url: "app/assets/images/haruka.jpg", email: "htenoh@juubanmunhs.co.jp", good: true)
Student.create(first_name: "Michiru", last_name: "Kaioh", age: 15, date_of_birth: "March 6, 1978", year: "Sophomore", photo_url: "app/assets/images/michiru.jpg", email: "mkaioh@juubanmunhs.co.jp", good: true)
Student.create(first_name: "Seiya", last_name: "Kou", age: 16, date_of_birth: "July 30, 1976", year: "Junior", photo_url: "app/assets/images/seiya.jpg", email: "skou@juubanmunhs.co.jp", good: false)
Student.create(first_name: "Taiki", last_name: "Kou", age: 16, date_of_birth: "May 30, 1976", year: "Junior", photo_url: "app/assets/images/taiki.jpg", email: "tkou@juubanmunhs.co.jp", good: true)
Student.create(first_name: "Yaten", last_name: "Kou", age: 16, date_of_birth: "February 8, 1976", year: "Junior", photo_url: "app/assets/images/yaten.jpg", email: "ykou@juubanmunhs.co.jp", good: true)
Student.create(first_name: "Naru", last_name: "Osaka", age: 14, date_of_birth: "May 6, 1978", year: "Freshman", photo_url: "app/assets/images/naru.jpg", email: "nosaka@juubanmunhs.co.jp", good: true)
Student.create(first_name: "Gurio", last_name: "Umino", age: 14, date_of_birth: "June 15, 1978", year: "Freshman", photo_url: "app/assets/images/gurio.jpg", email: "gumino@juubanmunhs.co.jp", good: true)
Student.create(first_name: "Sonoko", last_name: "Ijuuin", age: 17, date_of_birth: "November 10, 1975", year: "Senior", photo_url: "app/assets/images/sonoko.jpg", email: "sijuuin@juubanmunhs.co.jp", good: true)
Student.create(first_name: "Yuji", last_name: "Kayama", age: 17, date_of_birth: "December 8, 1975", year: "Senior", photo_url: "app/assets/images/yuji.jpg", email: "ykayama@juubanmunhs.co.jp", good: false)
Student.create(first_name: "Nyanko", last_name: "Suzu", age: 15, date_of_birth: "July 5, 1978", year: "Sophomore", photo_url: "app/assets/images/nyanko.jpg", email: "nsuzu@juubanmunhs.co.jp", good: false)

Grade.create(pass: false, cohort_id: 1, student_id: 1)
Grade.create(pass: true, cohort_id: 1, student_id: 2)
Grade.create(pass: true, cohort_id: 1, student_id: 3)
Grade.create(pass: false, cohort_id: 1, student_id: 4)
Grade.create(pass: true, cohort_id: 1, student_id: 5)
Grade.create(pass: true, cohort_id: 1, student_id: 6)
Grade.create(pass: false, cohort_id: 1, student_id: 7)
Grade.create(pass: true, cohort_id: 1, student_id: 8)
Grade.create(pass: true, cohort_id: 1, student_id: 9)
Grade.create(pass: true, cohort_id: 1, student_id: 10)
Grade.create(pass: true, cohort_id: 1, student_id: 11)
Grade.create(pass: true, cohort_id: 1, student_id: 12)
Grade.create(pass: false, cohort_id: 1, student_id: 13)
Grade.create(pass: false, cohort_id: 1, student_id: 14)
