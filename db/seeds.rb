# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding Database!"

Admin.destroy_all
Company.destroy_all
Service.destroy_all
CompanyService.destroy_all

ADMINS = [
  {
    email: "admin@admin.com",
    password_digest: "$2a$10$66teMbHTZMx6wpZenaJ6TewOrEZEUxlOVXxuwqf86JdzKrC/kgavy"
  }
]

COMPANIES = [
  {
    name: "Euro Motorcars",
    address: "SoMa, 240 6th St",
    city: "San Francisco, CA 94103",
    phone: "(415) 255-8140",
    email: "natapoli90@gmail.com",
    image_url: "http://www.naijaloaded.com.ng/wp-content/uploads/2014/06/YOUNG-SWITT.jpg"
  },
  {
    name: "Will’s Auto Body",
    address: "Inner Richmond, 2715 Geary Blvd",
    city: "San Francisco, CA 94118",
    phone: "(415) 563-8777",
    email: "pxlperfection@gmail.com",
    image_url: "http://www.naijaloaded.com.ng/wp-content/uploads/2014/06/YOUNG-SWITT.jpg"
  },
  {
    name: "Auto Body Garage",
    address: "SoMa, 565 Bryant St",
    city: "San Francisco, CA 94107",
    phone: "(415) 371-8822",
    email: "bodygarage@gmail.com",
    image_url: "http://www.naijaloaded.com.ng/wp-content/uploads/2014/06/YOUNG-SWITT.jpg"
  },
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

Admin.create(ADMINS)
Company.create(COMPANIES)
Service.create(SERVICES)
CompanyService.create(COMPANY_SERVICES)

p "#{Admin.count} Admin created!"
p "#{Company.count} Companies created!"
p "#{Service.count} Services created!"
p "#{CompanyService.count} created!"
