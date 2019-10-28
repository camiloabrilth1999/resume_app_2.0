# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
countries_list = [
  "Colombia",
  "Estados Unidos"
]

states_list = [
  ["Norte de Santander", 1],
  ["Cundinamarca", 1],
  ["Santander", 1],
  ["Antioquia", 1],
  ["Colorado", 2],
  ["Michigan", 2]
]

cities_list = [
  ["Cucuta", 1],
  ["Abrego", 1],
  ["Pamplona", 1],
  ["Chinacota", 1],
  ["Medellin", 4],
  ["Bogota", 2],
  ["Bucaramanga", 3],
  ["San Gil", 3],
  ["Socorro", 3],
  ["Denver", 5],
  ["Detroid", 6],
  ["Grand Rapids", 6]
]

genders_list = [
  ["Masculino", "M"],
  ["Femenino", "F"]
]

nacionalities_list = [
  "Colombiana",
  "Extranjero"
]

military_card_types_list = [
  "Primera clase",
  "Segunda clase"
]

academic_modalities_list = [
  ["Técnica", "TC"],
  ["Especialización", "ES"],
  ["Tecnología", "TL"],
  ["Maestría o magister", "MG"],
  ["Tecnología Especializada", "TE"],
  ["Doctorado o PHD", "DOC"],
  ["Universitaria", "UN"]
]

national_identifier_type_list = [
  ["Cedula de ciudadanía", "CC"],
  ["Cedula extranjera", "CE"],
  ["Pasaporte", "PAS"]
]

users_list = [
  ["Camilo", "camiloabrilth1999@gmail.com", "123456", "1", "5", "1", "1", "1", "1", "Obando",
  "Abril", "3186996123", "09/07/1999", "Colombia", "1090528761", "Av.4-e", "1", "12312", "55"],
]


countries_list.each do |name|
  Country.create( name: name )
end

states_list.each do |state, country_id|
  Department.create( name: state , country_id: country_id)
end

cities_list.each do |city, state_id|
  City.create( name: city , department_id: state_id)
end

genders_list.each do |description, resume_desc|
  Gender.create( description: description , resume_desc: resume_desc)
end

nacionalities_list.each do |description|
  NacionalityType.create( description: description)
end

military_card_types_list.each do |description|
  MilitaryCardType.create( description: description)
end

academic_modalities_list.each do |description, resume_desc|
  AcademicModality.create( description: description , resume_desc: resume_desc)
end

national_identifier_type_list.each do |description, resume_desc|
  NationalIdentifierType.create( description: description , resume_desc: resume_desc)
end


#users_list.each do |name|
#  User.create( name: name, email: email, password: password, city_birth_id: city_birth_id,
#     city_residence_id: city_residence_id, military_card_id: military_card_id, national_identifier_type_id:
#     national_identifier_type_id, gender_id: gender_id, nacionality_type_id: nacionality_type_id,
#     first_surname: first_surname, second_surname: second_surname, number_phone: number_phone,
#     birth_date: birth_date, country_nationality: country_nationality, number_national_identifier:
#     number_national_identifier, address: address, military_card_type_id: military_card_type_id,
#     number_military_card: number_military_card, dm_military_card: dm_military_card )
#end
