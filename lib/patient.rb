class Patient

  attr_accessor :name, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, doctor, self)
  end

  def appointments
    Appointment.all.select do |app|
      app.patient == self
    end
  end

  def doctors
    self.appointments.collect do |app|
      app.doctor
    end
  end

  def self.all
    @@all
  end



end
