class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      if appointment.doctor == self
        appointment
      end
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
end
