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
    name: "Alternators & Starters",
    category: "Under the hood"
  },
  {
    name: "Belts & Hoses",
    category: "Under the hood"
  },
  {
    name: "Car Batteries",
    category: "Under the hood"
  },
  {
    name: "Complete Engine Repair",
    category: "Under the hood"
  },
  {
    name: "Computerized Engine Diagnostics",
    category: "Under the hood"
  },
  {
    name: "Cooling System Repair & Service",
    category: "Under the hood"
  },
  {
    name: "Electrical Systems",
    category: "Under the hood"
  },
  {
    name: "Emission Repair",
    category: "Under the hood"
  },
  {
    name: "Factory Scheduled Maintenance",
    category: "Under the hood"
  },
  {
    name: "Fuel Pumps & Lines",
    category: "Under the hood"
  },
  {
    name: "Fuel System Injector Cleaning",
    category: "Under the hood"
  },
  {
    name: "Oil Change, Filters & Lube",
    category: "Under the hood"
  },
  {
    name: "Radiator Repair & Service",
    category: "Under the hood"
  },
  {
    name: "Serpentine Belt",
    category: "Under the hood"
  },
  {
    name: "Timing Belts & Chains",
    category: "Under the hood"
  },
  {
    name: "Towing Service",
    category: "Under the hood"
  },
  {
    name: "Transmission Service & Repair",
    category: "Under the hood"
  },
  {
    name: "Tune Ups",
    category: "Under the hood"
  },
  {
    name: "Under The Hood",
    category: "Under the hood"
  },
  {
    name: "ABS Repair",
    category: "Under the car"
  },
  {
    name: "Axle Repair",
    category: "Under the car"
  },
  {
    name: "Brake Repair & Service",
    category: "Under the car"
  },
  {
    name: "Car Tires",
    category: "Under the car"
  },
  {
    name: "Catalytic Converters",
    category: "Under the car"
  },
  {
    name: "CV Shafts & Joints",
    category: "Under the car"
  },
  {
    name: "Driveline Repair",
    category: "Under the car"
  },
  {
    name: "Exhaust & Muffler Repair",
    category: "Under the car"
  },
  {
  name: "Four-Wheel Drive Repair",
  category: "Under the car"
  },
  {
  name: "Rack & Pinion Steering Systems",
  category: "Under the car"
  },
  {
  name: "Shock Absorbers & Struts",
  category: "Under the car"
  },
  {
  name: "Springs & Suspension",
  category: "Under the car"
  },
  {
  name: "Steering & Chassis",
  category: "Under the car"
  },
  {
  name: "SUV & Truck Tires",
  category: "Under the car"
  },
  {
  name: "Car Tire Repair",
  category: "Under the car"
  },
  {
  name: "Universal Joint",
  category: "Under the car"
  },
  {
  name: "Wheel Alignment",
  category: "Under the car"
  },
  {
  name: "Wheel Balancing",
  category: "Under the car"
  },
  {
  name: "Wheel Bearings",
  category: "Under the car"
  },
  {
  name: "Headlights & Headlamps",
  category: "Exterior and Performance"
  },
  {
  name: "Electrical Accessories",
  category: "Exterior and Performance"
  },
  {
  name: "Power Window Repair",
  category: "Exterior and Performance"
  },
  {
  name: "Trailer Hitches",
  category: "Exterior and Performance"
  },
  {
  name: "Windshield Wipers",
  category: "Exterior and Performance"
  },
  {
  name: "Custom Wheels",
  category: "Exterior and Performance"
  },
  {
  name: "Chrome Accessories",
  category: "Exterior and Performance"
  },
  {
  name: "Cold Air Intakes",
  category: "Exterior and Performance"
  },
  {
  name: "Cold Air Intakes",
  category: "Exterior and Performance"
  },
  {
  name: "Custom Exhaust Systems",
  category: "Exterior and Performance"
  },
  {
  name: "Off-Road Lift Kits",
  category: "Exterior and Performance"
  },
  {
  name: "Performance Exhaust",
  category: "Exterior and Performance"
  },
  {
  name: "Performance Tires",
  category: "Exterior and Performance"
  },
  {
  name: "Suspension Lowering",
  category: "Exterior and Performance"
  }
]

Company.create(COMPANIES).each do |c|
  c.services.create(SERVICES)
end

p "#{Company.count} Companies created!"
p "#{Service.count} Services created!"
p "#{CompanyService.count} created!"
