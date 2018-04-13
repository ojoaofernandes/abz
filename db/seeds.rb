# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
  email: 'utfpr@abz.com',
  name: 'UTFPR',
  password: '123456',
  password_confirmation: '123456',
  role: 'admin',
  phone: '45999999999'
)

User.create(
  email: 'alice@alunos.utfpr.edu.br',
  name: 'Alice',
  password: '123456',
  password_confirmation: '123456',
  role: 'user',
  phone: '45999999999'
)

User.create(
  email: 'bob@alunos.utfpr.edu.br',
  name: 'Bob',
  password: '123456',
  password_confirmation: '123456',
  role: 'user',
  phone: '45999999999'
)

User.create(
  email: 'charlie@alunos.utfpr.edu.br',
  name: 'Charlie',
  password: '123456',
  password_confirmation: '123456',
  role: 'user',
  phone: '45999999999'
)

User.create(
  email: 'david@alunos.utfpr.edu.br',
  name: 'David',
  password: '123456',
  password_confirmation: '123456',
  role: 'user',
  phone: '45999999999'
)

User.create(
  email: 'erin@alunos.utfpr.edu.br',
  name: 'Erin',
  password: '123456',
  password_confirmation: '123456',
  role: 'user',
  phone: '45999999999'
)
