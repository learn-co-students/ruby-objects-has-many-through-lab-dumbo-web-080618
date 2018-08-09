class Patient 
  attr_reader :name
  attr_accessor :appointments
  def initialize(name)
    @name = name 
    @appointments = []
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(doctor, self, date)
    @appointments << appointment
    appointment
  end

  def doctors
    doctors = []
    @appointments.each{|appointment|
      if (doctors.include?(appointment.doctor) == false)
        doctors << appointment.doctor
      end
    }
    doctors
  end
end