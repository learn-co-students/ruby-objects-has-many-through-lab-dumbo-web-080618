class Patient

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments

    Appointment.all.select do |appts|
      appts.patient == self
    end
  end


  def doctors
    appointments.collect do |appts|
      appts.doctor
    end
  end



end
