require_relative '../lib/doctor.rb'
require_relative '../lib/patient.rb'
require_relative '../lib/appointment.rb'
require 'pry'


jp = Doctor.new("jp")
joe = Patient.new("joe")
jane = Patient.new("jane")

jan23 = Appointment.new(jane, jp, "jan23")
oct3 = Appointment.new(joe, jp, "oct3")




binding.pry
0
