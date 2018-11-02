require 'pg'

class Peep
  attr_reader :id, :peep

  def initialize(id:, peep:)
    @id = id
    @peep = peep
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect( dbname: 'Chitter_test' )
    else
      connection = PG.connect( dbname: 'Chitter')
    end
    connection.exec( 'SELECT * FROM peeps' ).map { |peep| Peep.new(id: peep['id'], peep: peep['peep'])}.reverse
  end

  def self.create(peep:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect( dbname: 'Chitter_test' )
    else
      connection = PG.connect( dbname: 'Chitter')
    end
    peep = connection.exec( "INSERT INTO peeps (peep) VALUES('#{peep}') RETURNING id, peep;")
    Peep.new(id: peep[0]['id'], peep: peep[0]['peep'])
  end

  def self.first
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect( dbname: 'Chitter_test' )
    else
      connection = PG.connect( dbname: 'Chitter')
    end
    connection.exec(' SELECT * FROM peeps')

end
