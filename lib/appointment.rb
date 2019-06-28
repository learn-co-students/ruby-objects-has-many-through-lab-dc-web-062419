class Appointment
  @@all = []

  attr_reader :patient, :doctor, :date
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    self.class.all << self
  end

  def self.all
    @@all
  end
end