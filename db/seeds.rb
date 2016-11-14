# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(email: 'email@gmail.com', password: '123456', firstname: 'Jessica', lastname: 'Last', gender: 'female', dob: '12/01/1980')

custom1 = Custom.create(user_id: 1,
	indulgence_1: 'cigarettes', indulgence_2: 'alcohol', indulgence_3: 'snacks', indulgence_4: 'soda', 
	responsibility_1: 'work', responsibility_2: 'taking care of pet',
	activity_1: 'gym', activity_2: 'hike')

post1 = Post.create(user_id: 1, sleep: 7, water: 6, breakfast: 'true', lunch: 'true', dinner: 'true', tv: 1, social_media: 3, socialization: 6, work: 8, content: 'This would be the text post that the user writes', rating: 7, indulgence_1: true, indulgence_2: true, indulgence_3: false, indulgence_4: true, responsibility_1: true, responsibility_2: true, activity_1: false, activity_2: true, created_at: '2016-11-10')

post2 = Post.create(user_id: 1, sleep: 5, water: 6, breakfast: 'true', lunch: 'true', dinner: 'true', tv: 1, social_media: 3, socialization: 6, work: 8, content: 'This would be the text post that the user writes', rating: 4, indulgence_1: true, indulgence_2: true, indulgence_3: false, indulgence_4: true, responsibility_1: true, responsibility_2: true, activity_1: false, activity_2: true, created_at: '2016-11-11')

post3 = Post.create(user_id: 1, sleep: 3, water: 6, breakfast: 'true', lunch: 'true', dinner: 'true', tv: 1, social_media: 3, socialization: 6, work: 8, content: 'This would be the text post that the user writes', rating: 2, indulgence_1: true, indulgence_2: true, indulgence_3: false, indulgence_4: true, responsibility_1: true, responsibility_2: true, activity_1: false, activity_2: true, created_at: '2016-11-12')

post4 = Post.create(user_id: 1, sleep: 5, water: 6, breakfast: 'true', lunch: 'true', dinner: 'true', tv: 1, social_media: 3, socialization: 6, work: 8, content: 'This would be the text post that the user writes', rating: 2, indulgence_1: true, indulgence_2: true, indulgence_3: false, indulgence_4: true, responsibility_1: true, responsibility_2: true, activity_1: false, activity_2: true, created_at: '2016-11-13')

post5 = Post.create(user_id: 1, sleep: 6, rating: 2, water: 6, breakfast: 'true', lunch: 'true', dinner: 'true', tv: 1, social_media: 3, socialization: 6, work: 8, content: 'This would be the text post that the user writes', indulgence_1: true, indulgence_2: true, indulgence_3: false, indulgence_4: true, responsibility_1: true, responsibility_2: true, activity_1: false, activity_2: true, created_at: '2016-11-14')

post6 = Post.create(user_id: 1, sleep: 8, rating: 6, water: 6, breakfast: 'true', lunch: 'true', dinner: 'true', tv: 1, social_media: 3, socialization: 6, work: 8, content: 'This would be the text post that the user writes', indulgence_1: true, indulgence_2: true, indulgence_3: false, indulgence_4: true, responsibility_1: true, responsibility_2: true, activity_1: false, activity_2: true, created_at: '2016-11-15')

post7 = Post.create(user_id: 1, sleep: 7, rating: 8, water: 6, breakfast: 'true', lunch: 'true', dinner: 'true', tv: 1, social_media: 3, socialization: 6, work: 8, content: 'This would be the text post that the user writes', indulgence_1: true, indulgence_2: true, indulgence_3: false, indulgence_4: true, responsibility_1: true, responsibility_2: true, activity_1: false, activity_2: true, created_at: '2016-11-16')

post8 = Post.create(user_id: 1, sleep: 9, rating: 9, water: 6, breakfast: 'true', lunch: 'true', dinner: 'true', tv: 1, social_media: 3, socialization: 6, work: 8, content: 'This would be the text post that the user writes',  indulgence_1: true, indulgence_2: true, indulgence_3: false, indulgence_4: true, responsibility_1: true, responsibility_2: true, activity_1: false, activity_2: true, created_at: '2016-11-17')

post9 = Post.create(user_id: 1, sleep: 8, rating: 10, water: 6, breakfast: 'true', lunch: 'true', dinner: 'true', tv: 1, social_media: 3, socialization: 9, work: 8, content: 'This would be the text post that the user writes',  indulgence_1: false, indulgence_2: false, indulgence_3: false, indulgence_4: false, responsibility_1: true, responsibility_2: true, activity_1: true, activity_2: true, created_at: '2016-11-18')
