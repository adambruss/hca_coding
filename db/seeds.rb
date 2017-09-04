Patient.find_or_create_by(account_number: "1234567", first_name: "Adam", last_name: "Bruss")
Encounter.find_or_create_by(patient: Patient.first, date_of_service: 1.hour.ago, reason_for_visit: "Testing Unbilled", billed: false)
Encounter.find_or_create_by(patient: Patient.first, date_of_service: 2.hours.ago, reason_for_visit: "Testing Billed", billed: true)
