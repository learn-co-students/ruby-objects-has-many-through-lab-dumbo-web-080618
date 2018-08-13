require_relative '../lib/doctor.rb'
require_relative '../lib/patient.rb'
require_relative '../lib/appointment.rb'
require 'pry'


jp = Doctor.new("jp")
patient = Patient.new("joe")
jan23 = Appointment.new("jan 23", patient, jp)
oct3 = Appointment.new("oct3", patient, jp)




binding.pry
0
