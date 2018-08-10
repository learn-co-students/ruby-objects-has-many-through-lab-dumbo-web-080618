class Doctor

  attr_accessor :name, :appointment, :patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new(name)
    @@all << self.new(name)
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
    appointment.doctor = self
    appointment
  end

  def appointments
    Appointment.all
  end

  def patients
    self.appointments.collect {|appointment| appointment.patient}
  end

end
