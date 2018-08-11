class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appts|
      appts.doctor == self
    end
  end

  def patients
    appointments.map do |appts|
      appts.patient
    end
  end


end
