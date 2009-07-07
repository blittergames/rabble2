# building.rb

class Building
  include DataMapper::Resource

  property :id,         Serial
  property :name,       String
  property :created_at, DateTime

  validates_present :name
end

