# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(email: 'email@gmail.com', password: '123456', firstname: 'User', lastname: 'Last', gender: 'female', dob: '12/01/1980')

custom1 = Custom.create(user_id: 1,
	indulgence_1: 'cigarettes', indulgence_2: 'alcohol', indulgence_3: 'snacks', indulgence_4: 'soda', 
	responsibility_1: 'work', responsibility_2: 'taking care of pet'
	activity_1: 'gym', activity_2: 'hike')

post1 = Post.create(user_id: 1, sleep: 7, water: 6, breakfast: 'true', lunch: 'true', dinner: 'true', tv: 1, social_media: 3, socialization: 6, work: 8, content: 'This would be the text post that the user writes', rating: 7, indulgence_1: true, indulgence_2: true, indulgence_3: false, indulgence_4: true, responsibility_1: true, responsibility_2: true, activity_1: false, activity_2: true)