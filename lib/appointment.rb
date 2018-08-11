class Appointment
  attr_accessor :date,:patient, :doctor

  @@all = []

  def initialize(date, doctor, patient)
    @patient = patient
    @doctor = doctor
    @date  = date
    @@all << self
  end

  def self.all
    @@all
  end

  # def patient=(patient)
  #   @patient = patient
  # end

end
