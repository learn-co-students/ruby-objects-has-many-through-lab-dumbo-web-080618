class Appointment


attr_accessor :name, :doctor, :date, :patient

@@all = []




def initialize(patient, doctor, date)
  @patient = patient
  @date = date
  @doctor = doctor
  @@all << self
end

def self.all
  @@all
end

def new(patient, date)
    Appointment.new(patient, doctor, date)
end


end
