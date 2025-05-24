# Create Patients
puts "Creating Patients..."
patient1 = Patient.create!(
  name: "Alice Smith",
  date_of_birth: "1990-05-15",
  address: "123 Main St, Anytown, USA"
)
patient2 = Patient.create!(
  name: "Bob Johnson",
  date_of_birth: "1985-11-20",
  address: "456 Oak Ave, Somewhere, USA"
)
patient3 = Patient.create!(
  name: "Charlie Brown",
  date_of_birth: "1995-07-01",
  address: "789 Pine Ln, Nowhere, USA"
)
puts "Created #{Patient.count} patients."

# Create Professionals
puts "Creating Physicians..."
physician1 = Physician.create!(
  name: "Dr. Emily White",
  specialty: "Cardiology",
  phone_number: "555-1234"
)
physician2 = Physician.create!(
  name: "Dr. David Green",
  specialty: "Pediatrics",
  phone_number: "555-5678"
)
puts "Created #{Physician.count} physicians."

puts "Creating Life Coaches..."
lifecoach1 = LifeCoach.create!(
  name: "Sarah Adams",
  expertise: "Career Coaching",
  email: "sarah@example.com"
)
lifecoach2 = LifeCoach.create!(
  name: "Michael Lee",
  expertise: "Wellness Coaching",
  email: "michael@example.com"
)
puts "Created #{LifeCoach.count} life coaches."

puts "Creating Chefs..."
chef1 = Chef.create!(
  name: "Gordon Ramsay",
  cuisine_type: "French",
  years_of_experience: 30
)
chef2 = Chef.create!(
  name: "Jamie Oliver",
  cuisine_type: "Italian/British",
  years_of_experience: 25
)
puts "Created #{Chef.count} chefs."

# Create Appointments
puts "Creating Appointments..."

# Alice has an appointment with a Physician
appointment1 = Appointment.create!(
  patient: patient1,
  professional: physician1, # Assigning a Physician
  appointment_time: DateTime.now + 1.day,
  duration: 60,
  notes: "Annual check-up."
)

# Bob has an appointment with a Physician
appointment2 = Appointment.create!(
  patient: patient2,
  professional: physician2, # Assigning a Physician
  appointment_time: DateTime.now + 2.days,
  duration: 45,
  notes: "Child's vaccination."
)

# Charlie has an appointment with a Life Coach
appointment3 = Appointment.create!(
  patient: patient3,
  professional: lifecoach1, # Assigning a LifeCoach
  appointment_time: DateTime.now + 3.days,
  duration: 90,
  notes: "First career coaching session."
)

# Alice has an appointment with a Life Coach
appointment4 = Appointment.create!(
  patient: patient1,
  professional: lifecoach2, # Assigning a LifeCoach
  appointment_time: DateTime.now + 4.days,
  duration: 75,
  notes: "Wellness goal setting."
)

# Bob has an appointment with a Chef
appointment5 = Appointment.create!(
  patient: patient2,
  professional: chef2, # Assigning a Chef
  appointment_time: DateTime.now + 5.days,
  duration: 120,
  notes: "Private cooking lesson."
)

# Charlie has an appointment with a Chef (using the other chef)
appointment6 = Appointment.create!(
  patient: patient3,
  professional: chef1, # Assigning the other Chef
  appointment_time: DateTime.now + 6.days,
  duration: 150,
  notes: "Advanced techniques."
)

puts "Created #{Appointment.count} appointments."

puts "Database seeding complete!"
