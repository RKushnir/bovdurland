require 'firehose'
require 'json'

class Bovdur < ActiveRecord::Base
  attr_accessible :name
  validates :name, presence: true

  after_commit do
    json = attributes.to_json
    firehose = Firehose::Producer.new('//127.0.0.1:7474')
    firehose.publish(json).to("/bovdurs")
  end
end
