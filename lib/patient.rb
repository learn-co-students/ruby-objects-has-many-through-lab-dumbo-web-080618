class Patient
  @@all = []
  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    self.appointments.map {|appointment| appointment.doctor}
  end

end
