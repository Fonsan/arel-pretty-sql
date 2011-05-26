require 'bigdecimal'
require 'date'
require 'arel'
module Arel
  
  class TreeManager
    def to_pretty_sql
      Visitors::ToSqlPretty.new.accept @ast
    end
  end
  
  module Visitors
    class ToSqlPretty < ToSql
      
    end
  end
end