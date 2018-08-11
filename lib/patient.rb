
class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date,doctor,self)
  end

  def appointments
    Appointment.all.select {|apoint| apoint.patient == self}

  end

  def doctors
    appointments.map do |doc|
      # binding.pry
      doc.date
    end
  end

end
