# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])


cities = City.create(
  [
    #{ name: 'Chicago' }, 
    #{ name: 'Copenhagen' },
    { name: 'São Paulo' }
  ])



  categories = Category.create(
    [
      { name: 'Praia' }, 
      { name: 'Trilhas' },
      { name: 'Cafeterias' },
      { name: 'Shopping/lojas' },
      { name: 'Restaurantes' },
      { name: 'Balada' },
    ])