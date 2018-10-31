require 'pg'

class User

  def self.sign_up(su_user_name:, su_password:, su_email:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'Chitter_test')
    else
      connection = PG.connect(dbname: 'Chitter')
    end  
    query = "INSERT INTO users (user_name, password, email) VALUES('#{su_user_name}', '#{su_password}', '#{su_email}') RETURNING user_name, password, email;"
    p query
    connection.exec(query)
  end

  def self.username_list
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'Chitter_test')
    else
      connection = PG.connect(dbname: 'Chitter')
    end
    result = connection.exec('SELECT user_name FROM users')
    result.map { |users| users['user_name'] }
  end

  def self.password_list
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'Chitter_test')
    else
      connection = PG.connect(dbname: 'Chitter')
    end
    result = connection.exec('SELECT password FROM users')
    result.map { |users| users['password'] }
  end

  def self.email_list
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'Chitter_test')
    else
      connection = PG.connect(dbname: 'Chitter')
    end
    result = connection.exec('SELECT email FROM users')
    result.map { |users| users['email'] }
  end

end
