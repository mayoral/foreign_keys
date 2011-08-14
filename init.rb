require 'foreign_keys/mysql_adapter' if defined?(ActiveRecord::ConnectionAdapters::MysqlAdapter)
require 'foreign_keys/postgresql_adapter' if defined?(ActiveRecord::ConnectionAdapters::PostgreSQLAdapter)
require 'foreign_keys/schema_dumper'
require 'foreign_keys/schema_statements'
require 'foreign_keys/command_recorder' if defined?(ActiveRecord::Migration::CommandRecorder)