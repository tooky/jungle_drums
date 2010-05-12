require 'machinist/mongo_mapper'
require 'sham'
require 'faker'

Sham.title { Faker::Lorem.sentence }
Sham.description  { Faker::Lorem.paragraph }
Sham.url   { "http://#{Faker::Internet.domain_name}/#{Faker::Lorem.words(1)}.html" }

Link.blueprint do
  title
  description
  url
end
