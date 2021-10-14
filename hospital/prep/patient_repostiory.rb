class PatientRepository
  def initialize(csv_file, room_repository)

    ...
    @next_id = 0
    load_csv
  end

  def load_csv
    @next_id = patients.empty? ? 1 : @patients.last.id + 1
  end
end
