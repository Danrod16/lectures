class Room
  def initialize(attributes = {})
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patient] || []
  end

  def full?
    @patients.length == @capacity
  end

  def add_patient(patient)
    patient.id = @next_id
    @next_id += 1
    raise StandardError, "Room is full!" if full?
    patient.room = self
    @patients << patient
    save_to_csv
  end
end
