class Session < ActiveRecord::Base
  serialize :segments
end
