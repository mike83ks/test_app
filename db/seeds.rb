# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
act_new = ActionCategory.create(name: 'Куплю');
act_new = ActionCategory.create(name: 'Продам');
act_new = ActionCategory.create(name: 'Обменяю');

product_new = Product.create(title: 'Стиральная машина', price: '5000');
product_new = Product.create(title: 'Весы', price: '1000');
product_new = Product.create(title: 'Зубная паста', price: '100');
