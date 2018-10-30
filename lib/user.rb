require 'pg'

class User

  def self.username_list
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'Chitter_test')
    else
      connection = PG.connect(dbname: 'Chitter')
    end
    result = connection.exec('SELECT user_name FROM users')
    result.map { |users| users['user_name'] }
  end
end
