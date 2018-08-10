class Appointment
  attr_accessor :doctor, :date, :patient

  @@all = []
    def self.all
      @@all
    end

    def initialize(patient, doctor, date)
      @doctor = doctor
      @date = date
      @patient = patient
      @@all << self
    end





end
