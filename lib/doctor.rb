class Doctor
  attr_accessor :name, :patients
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, self, patient)
  end

  def appointments #its all the song that the artist have
    Appointment.all.select do |app|
      app.doctor == self
    end
  end

  def patients
    self.appointments.collect do |app|
      app.patient
    end
  end

end
