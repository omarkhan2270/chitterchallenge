def setup_test_database
  require 'pg'

  p "Setting up test database..."

  connection = PG.connect(dbname: 'peep_table')

  connection.exec("TRUNCATE peeps;")
end
