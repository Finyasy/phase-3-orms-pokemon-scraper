class Pokemon
    # schema_migration.sql creates pokemon table
    attr_accessor :id, :name, :type, :db
    def initialize(id=nil, name:, type:, db:)
        @id = id
        @name = name
        @type = type
        @db = db
    end

    # creates pokemon table (FAILED
    def self.create_table
        db = SQLite3::Database.new("pokemon.db")
        db.execute(<<-SQL)
            CREATE TABLE IF NOT EXISTS pokemon (
                id INTEGER PRIMARY KEY,
                name TEXT,
                type TEXT
            )
        SQL
    end
end
