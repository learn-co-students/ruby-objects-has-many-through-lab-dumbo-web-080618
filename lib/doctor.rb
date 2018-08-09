class Doctor
  @@all = []
  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    appointment.doctor = self
    appointment
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end

end
