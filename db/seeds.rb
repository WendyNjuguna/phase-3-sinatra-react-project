puts "🌱 Seeding spices..."

# Seed your database here
# seed farmers
puts "🌱 Seeding farmers..."
firstfarmer = Farmer.create( 
    name: "Wendy",
    email: "wendy287@gmail.com",
    contact: "0985623789",
    goods: "pigs",
    password: "pass234"
)
secondfarmer = Farmer.create( 
    name: "Njuguna",
    email: "njuguna287@gmail.com",
    contact: "43579",
    goods: "ostrich",
    password: "rattin..08"
)
thirdfarmer = Farmer.create( 
    name: "Wilberforce",
    email: "wilberforce@gmail.com",
    contact: "265765",
    goods: " broiler Chicken",
    password: "quest53e3.."
)

# seed investments
puts "🌱 Seeding investments..."
investmentA = Investment.create(
    farmer_id: "1",
    investor_id: "1",
    amount: "40,000"
)
investmentB = Investment.create(
    farmer_id: "2",
    investor_id: "2",
    amount: "60,000"
)


# seed investors
puts "🌱 Seeding investors..."
investorA = Investor.create(
    firstname: "Alvis",
    lastname: "Minjire",
    username: "Minsal",
    email: "alvisminj@gmail.com",
    # password: "halo465.."
)
investorB = Investor.create(
    firstname: "Grass",
    lastname: "Mint",
    username: "Mintgrass",
    email: "grasswow@gmail.com",
    # password: "Minty254..."
)

investorC = Investor.create(
    firstname: "Wesly",
    lastname: "Muyeid",
    username: "yeisMu",
    email: "muyeid@gmail.com",
    # password: "yeisjf883."
)


# seed reviews
puts "🌱 Seeding reviews..."
reviewA = Review.create( rating: "3", comment: "Nice", farmer_id: 1 )
reviewB = Review.create( rating: "4", comment: "Done", farmer_id: 2 )
reviewC = Review.create( rating: "5", comment: "Testing", farmer_id: 3 )

puts "✅ Done seeding!"            

