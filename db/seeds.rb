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

Discipline.create(
    name: 'TSI34A'
)

Discipline.create(
    name: 'TSI34B'
)

Discipline.create(
    name: 'TSI34C'
)

Discipline.create(
    name: 'TSI34D'
)

Book.create(
    title: 'The Pragmatic Programmer: From Apprentice to Master',
    author: 'Andy Hunt',
    publisher: 'Google Books',
    pages: 320,
    quantity: 2,
    language: 'EN-US',
    discipline_id: 1,
    user_id: 1
)

Book.create(
    title: 'Code Complete: A Practical Guide to Building Software',
    author: 'Steve McConnell',
    publisher: 'Google Books',
    pages: 914,
    quantity: 2,
    language: 'EN-US',
    discipline_id: 2,
    user_id: 1
)

Book.create(
    title: 'Algorithms: Theory and Practice',
    author: 'Thomas H. Cormen',
    publisher: 'MIT Press',
    pages: 1312,
    quantity: 2,
    language: 'EN-US',
    discipline_id: 2,
    user_id: 2
)

Book.create(
    title: 'The Mythical Man-Month',
    author: 'Fred Brooks',
    publisher: 'Addison-Wesley',
    pages: 500,
    quantity: 2,
    language: 'EN-US',
    discipline_id: 3,
    user_id: 2
)

Book.create(
    title: 'Structure and Interpretation of Computer Programs',
    author: 'Hal Abelson',
    publisher: 'MIT Press',
    pages: 657,
    quantity: 2,
    language: 'EN-US',
    discipline_id: 3,
    user_id: 3
)

Book.create(
    title: 'Design Patterns - Reusable Object Oriented Software Solutions',
    author: 'Erich Gamma',
    publisher: 'Addison-Wesley',
    pages: 395,
    quantity: 2,
    language: 'EN-US',
    discipline_id: 2,
    user_id: 3
)