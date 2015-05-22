# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Now clearing databases"
Loyalty.delete_all
Coupon.delete_all
Purchase.delete_all
User.delete_all
Store.delete_all

target = Store.create(name: 'Target')
jewel = Store.create(name: 'Jewel')
walgreens = Store.create(name: 'Walgreens')
cvs = Store.create(name: 'CVS')
containerstore = Store.create(name: 'Container Store')

user1 = User.create(first_name: 'James',middle_initial: 'L',last_name: 'Howlett', dob: '1834',income: '250000', gender: 'M', hh_size: '1',address1: '1407 Graymalkin Lane',address2: '',city: 'Salem Center',state: 'NY',zip: '12345',race: 'C',language: 'English',marital_status: '0',kids_under_18: '0',education: 'Some College')
user2 = User.create(first_name: 'Scott',middle_initial: 'S',last_name: 'Summers', dob: '23264',income: '55000', gender: 'M',hh_size: '1',address1: '540 Evergreen Terrace',address2: '',city: 'Springfield',state: 'MO',zip: '88567',race: 'C',language: 'English',marital_status: '1',kids_under_18: '0',education: 'College')
user3 = User.create(first_name: 'Peter',middle_initial: 'Q',last_name: 'Rasputin', dob: '27426',income: '100000',gender: 'M',hh_size: '3',address1: '540 Evergreen Terrace',address2: '',city: 'Springfield',state: 'MO',zip: '33780',race: 'C',language: 'English',marital_status: '0',kids_under_18: '0',education: 'High School')
user4 = User.create(first_name: 'Ororo',middle_initial: 'B',last_name: 'Munroe', dob: '27515',income: '40000', gender: 'F',hh_size: '1',address1: '890 Fifth Avenue',address2: '',city: 'New York',state: 'NY',zip: '22939',race: 'B',language: 'English',marital_status: '1',kids_under_18: '1',education: 'Graduate')
user5 = User.create(first_name: 'Charles',middle_initial: 'D',last_name: 'Xavier', dob: '27142',income: '200000', gender: 'M',hh_size: '4',address1: '589 22nd St',address2: '',city: 'Washington',state: 'DC',zip: '88478',race: 'C',language: 'English',marital_status: '1',kids_under_18: '3',education: 'Graduate')

targetfrequent = Loyalty.create(store_id: target.id,program: 'Target Frequent',program_num: '0', user_id: user1.id)
targetfrequent2 = Loyalty.create(store_id: target.id,program: 'Target Frequent',program_num: '0', user_id: user2.id)
targetfrequent3 = Loyalty.create(store_id: target.id,program: 'Target Frequent',program_num: '0', user_id: user3.id)
targetfrequent4 = Loyalty.create(store_id: target.id,program: 'Target Frequent',program_num: '0', user_id: user4.id)
targetfrequent5 = Loyalty.create(store_id: target.id,program: 'Target Frequent',program_num: '0', user_id: user5.id)
targetelite = Loyalty.create(store_id: target.id,program: 'Target Elite',program_num: '1', user_id: user1.id)
targetelite2 = Loyalty.create(store_id: target.id,program: 'Target Elite',program_num: '1',  user_id: user2.id)
targetelite3 = Loyalty.create(store_id: target.id,program: 'Target Elite',program_num: '1',  user_id: user3.id)
targetelite4 = Loyalty.create(store_id: target.id,program: 'Target Elite',program_num: '1',  user_id: user4.id)
targetelite5 = Loyalty.create(store_id: target.id,program: 'Target Elite',program_num: '1',  user_id: user5.id)
jewelvalued = Loyalty.create(store_id: jewel.id,program: 'Valued Shopper',program_num: '0')
walgreensfriend = Loyalty.create(store_id: walgreens.id,program: 'Friend of Walgreens',program_num: '0')
cvssaver = Loyalty.create(store_id: cvs.id,program: 'CVS Saver',program_num: '0')
containerfrequent = Loyalty.create(store_id: containerstore.id,program: 'Frequent Shopper',program_num: '0')

coupon1 = Coupon.create(loyalty_id: jewelvalued.id, discount:'0.05',discounted_item:'Purchase',discounted_category_num:'45',discounted_category_str:'Purchase',coupon_code:'888740')
coupon2 = Coupon.create(loyalty_id: targetelite.id, discount:'0.5',discounted_item:'Crest Whitening Strips',discounted_category_num:'3',discounted_category_str:'Dental',coupon_code:'44509984')
coupon3 = Coupon.create(loyalty_id: cvssaver.id, discount:'0.1',discounted_item:'Pyrex Glass Measuring Cup 2 Cup',discounted_category_num:'7',discounted_category_str:'Kitchen',coupon_code:'666747')
coupon4 = Coupon.create(loyalty_id: cvssaver.id, discount:'0',discounted_item:'3M Wall Hooks',discounted_category_num:'15',discounted_category_str:'Décor',coupon_code:'1555093')
coupon5 = Coupon.create(loyalty_id: cvssaver.id, discount:'.15',discounted_item:'Pumpkin Pie',discounted_category_num:'18',discounted_category_str:'Food',coupon_code:'982')
coupon6 = Coupon.create(loyalty_id: containerfrequent.id, discount: '.1', discounted_item: 'Boxes', discounted_category_num: '22', discounted_category_str: 'Storage', coupon_code:'2231009')
coupon7 = Coupon.create(loyalty_id: walgreensfriend.id, discount: '.05', discounted_item: 'Tea', discounted_category_num: '23', discounted_category_str: 'Beverage', coupon_code: '39938208')

purchase1 = Purchase.create(item_bought: '778399',price: '5.67',qty_bought: '2',coupon_id: coupon2.id)
purchase2 = Purchase.create(item_bought: '1134',price: '78.9',qty_bought: '6',coupon_id: coupon2.id)
purchase3 = Purchase.create(item_bought: '13390099',price: '105.76',qty_bought: '1',coupon_id: coupon6.id)
purchase4 = Purchase.create(item_bought: '6772108',price: '56.78',qty_bought: '10',coupon_id: coupon3.id)
purchase5 = Purchase.create(item_bought: '8872231',price: '7.45',qty_bought: '3',coupon_id: coupon1.id)
