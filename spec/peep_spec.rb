require 'peep'

describe Peep do
  describe '.all' do
    it 'returns all peeps' do
      message = Peep.create(peep: "This is my first post to chitter")
      Peep.create(peep: "This is my second post to chitter")
      Peep.create(peep: "This is my third post to chitter")

      messages = Peep.all
      peep = :peep

      expect(Peep.length).to eq 3
      expect(Peep.first).to be_a Peep
      expect(Peep.first.id).to eq Peep.id
      expect(Peep.first.peep).to eq 'This is my first post to chitter'
    end
  end

  describe '.create' do
    it 'Adds a bookmark to our database' do
      peep = Peep.create(peep: "This is my first post to chitter")
      persisted_data = PG.connect(dbname: 'Chitter_test').exec("SELECT * FROM peeps WHERE id = #{peep.id};").to_a

      expect(peep).to be_a Peep
      expect(peep.id).to eq persisted_data.first['id']
      expect(peep.peep).to eq "This is my first post to chitter"
    end
  end
end
