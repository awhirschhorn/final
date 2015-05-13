# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Now clearing databases"
LoyaltyProgram.delete_all
Coupon.delete_all
Transaction.delete_all
User.delete_all

targetfrequent = LoyaltyProgram.create(store: 'Target',program: 'Target Frequent',program_num: '0')
targetelite = LoyaltyProgram.create(store: 'Target',program: 'Target Elite',program_num: '1')
jewelvalued = LoyaltyProgram.create(store: 'Jewel',program: 'Valued Shopper',program_num: '0')
walgreensfriend = LoyaltyProgram.create(store: 'Walgreens',program: 'Friend of Walgreens',program_num: '0')
cvssaver = LoyaltyProgram.create(store: 'CVS',program: 'CVS Saver',program_num: '0')
containerfrequent = LoyaltyProgram.create(store: 'Container Store',program: 'Frequent Shopper',program_num: '0')

user1 = User.create(first_name: 'James',middle_initial: 'L',last_name: 'Howlett', dob: '1834',income: '250000',loyaltyProgram_id: targetfrequent.id,gender: 'M', hh_size: '1',address1: '1407 Graymalkin Lane',address2: '',city: 'Salem Center',state: 'NY',zip: '12345',race: 'C',language: 'English',marital_status: '0',kids_under_18: '0',education: 'Some College')
user2 = User.create(first_name: 'Scott',middle_initial: 'S',last_name: 'Summers', dob: '23264',income: '55000',loyaltyProgram_id: jewelvalued.id,gender: 'M',hh_size: '1',address1: '540 Evergreen Terrace',address2: '',city: 'Springfield',state: 'MO',zip: '88567',race: 'C',language: 'English',marital_status: '1',kids_under_18: '0',education: 'College')
user3 = User.create(first_name: 'Peter',middle_initial: 'Q',last_name: 'Rasputin', dob: '27426',income: '100000',loyaltyProgram_id: cvssaver.id,gender: 'M',hh_size: '3',address1: '540 Evergreen Terrace',address2: '',city: 'Springfield',state: 'MO',zip: '33780',race: 'C',language: 'English',marital_status: '0',kids_under_18: '0',education: 'High School')
user4 = User.create(first_name: 'Ororo',middle_initial: 'B',last_name: 'Munroe', dob: '27515',income: '40000',loyaltyProgram_id: containerfrequent.id,gender: 'F',hh_size: '1',address1: '890 Fifth Avenue',address2: '',city: 'New York',state: 'NY',zip: '22939',race: 'B',language: 'English',marital_status: '1',kids_under_18: '1',education: 'Graduate')
user5 = User.create(first_name: 'Charles',middle_initial: 'D',last_name: 'Xavier', dob: '27142',income: '200000',loyaltyProgram_id: walgreensfriend.id,gender: 'M',hh_size: '4',address1: '589 22nd St',address2: '',city: 'Washington',state: 'DC',zip: '88478',race: 'C',language: 'English',marital_status: '1',kids_under_18: '3',education: 'Graduate')

coupon1 = Coupon.create(loyaltyProgram_id: jewelvalued.id, discount:'0.05',discounted_item:'Purchase',discounted_category_num:'45',discounted_category_str:'Purchase',coupon_code:'888740')
coupon2 = Coupon.create(loyaltyProgram_id: targetelite.id, discount:'0.5',discounted_item:'Crest Whitening Strips',discounted_category_num:'3',discounted_category_str:'Dental',coupon_code:'44509984')
coupon3 = Coupon.create(loyaltyProgram_id: cvssaver.id, discount:'0.1',discounted_item:'Pyrex Glass Measuring Cup 2 Cup',discounted_category_num:'7',discounted_category_str:'Kitchen',coupon_code:'666747')
coupon4 = Coupon.create(loyaltyProgram_id: cvssaver.id, discount:'0',discounted_item:'3M Wall Hooks',discounted_category_num:'15',discounted_category_str:'Décor',coupon_code:'1555093')
coupon5 = Coupon.create(loyaltyProgram_id: cvssaver.id, discount:'.15',discounted_item:'Pumpkin Pie',discounted_category_num:'18',discounted_category_str:'Food',coupon_code:'982')

transaction1 = Transaction.create(loyaltyProgram_id: targetfrequent.id, item_bought: '778399',price: '5.67',qty_bought: '2',coupon_id: '7756661')
transaction2 = Transaction.create(loyaltyProgram_id: targetfrequent.id, item_bought: '1134',price: '78.9',qty_bought: '6',coupon_id: '88891')
transaction3 = Transaction.create(loyaltyProgram_id: containerfrequent.id, item_bought: '13390099',price: '105.76',qty_bought: '1',coupon_id: '57146')
transaction4 = Transaction.create(loyaltyProgram_id: cvssaver.id, item_bought: '6772108',price: '56.78',qty_bought: '10',coupon_id: coupon1.id)
transaction5 = Transaction.create(loyaltyProgram_id: walgreensfriend.id, item_bought: '8872231',price: '7.45',qty_bought: '3',coupon_id: '5561')

