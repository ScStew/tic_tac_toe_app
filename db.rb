require "pg"
load './local_env.rb' if File.exist?('./local_env.rb')


def winner_card(players,message)
 time = Time.new
    db_params = {
        host: ENV['host'],
        port: ENV['port'],
        dbname: ENV['dbname'],
        user: ENV['user'],
        password: ENV['password']
    }
    db = PG::Connection.new(db_params)
    db.exec("insert into winning_card(player_1,player_2,outcome,date_time)VALUES('#{players[0]}','#{players[1]}','#{message}','#{time}')")
    # db.exec("UPDATE winning_card SET player_1 = '#{players[0]}',player_2 = '#{players[1]}', outcome = '#{message}'")
  
end

def pull_table()
    db_params = {
        host: ENV['host'],
        port: ENV['port'],
        dbname: ENV['dbname'],
        user: ENV['user'],
        password: ENV['password']
    }

    db = PG::Connection.new(db_params)

    table = db.exec("select * from winning_card")
    table.values
end

pull_table()