class ProgrammerClient < ApplicationRecord
  belongs_to :client
  belongs_to :programmer
end
