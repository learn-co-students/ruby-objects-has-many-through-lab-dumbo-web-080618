class Doctor 
  attr_reader :name
  attr_accessor :appointments
  @@all = []
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(self, patient, date)
    @appointments << appointment
    appointment
  end

  def self.all 
    @@all 
  end

  def patients
    patients = []
    @appointments.each{|appointment|
      if (patients.include?(appointment.patient) == false)
        patients << appointment.patient
      end
    }
    patients
  end
end