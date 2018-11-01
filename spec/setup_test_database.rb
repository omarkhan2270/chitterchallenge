def setup_test_database
  require 'pg'

  p "Setting up test database..."

  connection = PG.connect(dbname: 'chitter')

  connection.exec("TRUNCATE peeps;")
end
