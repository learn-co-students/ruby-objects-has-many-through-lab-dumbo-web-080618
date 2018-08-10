class Patient
attr_reader :name
 @@all = []

 def initialize (name)
   @name = name
   @@all << self
end

def new_appointment(doctor, date)
  Appointment.new(date,self,doctor)
end

def appointments
  Appointment.all.select do |appointment_instance|
    appointment_instance.patient == self
  end
end

def doctors
  appointments.map do |appointment_instance|
    appointment_instance.doctor
  end
end

def self.all
  @@all
end

end
