# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding Database!"

Company.destroy_all
Service.destroy_all
CompanyService.destroy_all


COMPANIES = [
  {
    name: "All Speed Motors",
    address: "2527 Clement St",
    city: "San Francisco, CA 94121",
    phone: "(415) 668-0299",
    email: "natapoli90@gmail.com",
    image_url: "http://i.imgur.com/RnqHokp.png"
  },
  {
    name: "Your Mechanic",
    address: "500 3rd St, Suite 525",
    city: "San Francisco, CA 94114",
    phone: "(888) 977-8523",
    email: "pxlperfection@gmail.com",
    image_url:"http://i.imgur.com/Hcl9sZX.png"
  },
  {
    name: "Pat’s Garage",
    address: "1090 26th St",
    city: "San Francisco, CA 94107",
    phone: "(415) 801-0115",
    email: "abr415city@gmail.com",
    image_url: "http://i.imgur.com/YZfdlO4.png"
  },
  {
    name: "Luscious Garage",
    address: "475 9th St",
    city: "San Francisco, CA 94103",
    phone: "(415) 875-9030",
    email: "lsgarage@gmail.com",
    image_url: "http://i.imgur.com/HAwzVnZ.png"
  },
  {
    name: "My Mechanic",
    address: "888 Folsom St",
    city: "San Francisco, CA 94107",
    phone: "(415) 552-0555",
    email: "mymechanic@gmail.com",
    image_url:"http://i.imgur.com/6wMb5CF.png"
  },
  {
    name: "SF Auto Works ",
    address: "1021 Valencia St",
    city: "San Francisco, CA 94110",
    phone: "(415) 282-4300",
    email: "autoworks@gmail.com",
    image_url: "http://i.imgur.com/36azydJ.png"
  }
]

SERVICES = [
  {
    name: "Air Conditioning Systems",
    category: "Under the hood"
  },
  {
    name: "Electrical Systems",
    category: "Under the hood"
  },
  {
    name: "Oil Change, Filters & Lube",
    category: "Under the hood"
  },
  {
    name: "Brake Repair & Service",
    category: "Under the car"
  },
  {
    name: "Universal Joint",
    category: "Under the car"
  },
  {
    name: "Wheel Balancing",
    category: "Under the car"
  },
  {
  name: "Headlights & Headlamps",
  category: "Exterior and Performance"
  },
  {
  name: "Chrome Accessories",
  category: "Exterior and Performance"
  },
  {
  name: "Power Window Repair",
  category: "Exterior and Performance"
  }
]

COMPANY_SERVICES = [
  {
    company_id: 1,
    service_id: 1
  },
  {
    company_id: 1,
    service_id: 4
  },
  {
    company_id: 1,
    service_id: 5
  },
  {
    company_id: 1,
    service_id: 7
  },
  {
    company_id: 1,
    service_id: 8
  },
  {
    company_id: 1,
    service_id: 9
  },
  {
    company_id: 2,
    service_id: 1
  },
  {
    company_id: 2,
    service_id: 2
  },
  {
    company_id: 2,
    service_id: 3
  },
  {
    company_id: 2,
    service_id: 5
  },
  {
    company_id: 2,
    service_id: 6
  },
  {
    company_id: 3,
    service_id: 7
  },
  {
    company_id: 3,
    service_id: 8
  },
  {
    company_id: 3,
    service_id: 9
  }
]


Company.create(COMPANIES)
Service.create(SERVICES)
CompanyService.create(COMPANY_SERVICES)


p "#{Company.count} Companies created!"
p "#{Service.count} Services created!"
p "#{CompanyService.count} created!"
