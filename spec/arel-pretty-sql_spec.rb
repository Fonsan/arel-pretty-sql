require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
module Arel
  module Visitors
    describe ToSqlPretty do

      before(:each) do
        @visitor = ToSqlPretty.new Table.engine
        @table = Table.new(:users)
        @attr = @table[:id]
      end

      it "should return a string" do
        relation = Table.new(:users)
        manager = Arel::SelectManager.new Table.engine

        manager.from relation
        manager.to_sql.must_be_like %{
          SELECT FROM "users" 
        }
      end
    end
  end

end