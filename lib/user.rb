require 'pg'

class User

  def username_list
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'Chitter_test')
    else
      connection = PG.connect(dbname: 'Chitter')
    end
    result = connection.exec('SELECT username FROM users')
    result.map { |users| users['username'] }
  end

end
