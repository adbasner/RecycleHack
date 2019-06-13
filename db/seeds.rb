# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Trash.delete_all
response = Unirest.get('https://raw.githubusercontent.com/chicagoruby/hack-night-is-it-recyclable/master/data/chicago-recycling-guide.json')

trash = response.body["data"]
trash.each do |item|
  t = Trash.new(name: item["Material"], accepted: item["Is Material accepted in Chicago's Blue Cart Program or at Recycling Drop-Off Centers?"], alternative: item["Alternative Recycling Outlet"], mail: item["Mail or Drop-Off Program?"], address: item["Address"], phone: item["Phone"], website: item["Website"], details: item["Details and/or Restrictions"] )
  t.save
end

