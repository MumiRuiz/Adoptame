# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Para poblar la base de datos correr rake db:seed
#Mascota de ejemplo para la base de datos
Pet.create(name: 'tony', kind: 'cat', age: '12', gender: 'male', size: 'small', story: 'me lo encontre', city: 'Bogota', country: 'Colombia', region: 'Cundinamarca')

#Instituciones de ejemplo para la base de datos
Institution.create(name: 'Huella roja', username: 'Senor Barriga', email: 'barriga@gmail.com', password: '1234567890', country: 'Colombia', state: 'Cundinamarca', city: 'Bogota', website: 'www.huellarojita.com', manager: 'Senor Barriga', address: 'Call 104 # 13d 77', description: 'Recojemos perritos')

#Tags de ejemplo para la base de datos
Tag.create(name: "Tag one")

#Articles de ejemplo para la base de datos
Article.create(title: "Primer tag", body: "Este es el primer tag de prueba")

#article almacena tags separando cada palabra en un nuevo tag
article = Article.create title: "A Sample Article for Tagging!", body: "Great article goes here", tag_list: "ruby, technology"
