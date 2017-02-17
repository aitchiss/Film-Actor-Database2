require ('PG')

class SqlRunner

  def self.run(sql)
    begin
      db = PG.connect( {dbname: 'movies', host: 'localhost'} )
      result = db.exec(sql)
    ensure
      return result
      db.close

    end
  end


end