# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `activerecord-postgis-adapter` gem.
# Please instead update this file by running `bin/tapioca gem activerecord-postgis-adapter`.

# :startdoc:
#
# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/version.rb#3
module ActiveRecord
  class << self
    # source://activerecord/7.0.4.2/lib/active_record.rb#277
    def action_on_strict_loading_violation; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#277
    def action_on_strict_loading_violation=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#270
    def application_record_class; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#270
    def application_record_class=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#213
    def async_query_executor; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#213
    def async_query_executor=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#183
    def default_timezone; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#187
    def default_timezone=(default_timezone); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#311
    def dump_schema_after_migration; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#311
    def dump_schema_after_migration=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#321
    def dump_schemas; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#321
    def dump_schemas=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#365
    def eager_load!; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#296
    def error_on_ignored_order; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#296
    def error_on_ignored_order=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record/gem_version.rb#5
    def gem_version; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#236
    def global_executor_concurrency; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#228
    def global_executor_concurrency=(global_executor_concurrency); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#216
    def global_thread_pool_async_query_executor; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#240
    def index_nested_attribute_errors; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#240
    def index_nested_attribute_errors=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#171
    def lazily_load_schema_cache; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#171
    def lazily_load_schema_cache=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#180
    def legacy_connection_handling; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#180
    def legacy_connection_handling=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#258
    def maintain_test_schema; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#258
    def maintain_test_schema=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#340
    def query_transformers; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#340
    def query_transformers=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#255
    def queues; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#255
    def queues=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#355
    def raise_int_wider_than_64bit; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#355
    def raise_int_wider_than_64bit=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#200
    def reading_role; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#200
    def reading_role=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#177
    def schema_cache_ignored_tables; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#177
    def schema_cache_ignored_tables=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#288
    def schema_format; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#288
    def schema_format=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#328
    def suppress_multiple_database_warning; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#328
    def suppress_multiple_database_warning=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#302
    def timestamped_migrations; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#302
    def timestamped_migrations=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#347
    def use_yaml_unsafe_load; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#347
    def use_yaml_unsafe_load=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#248
    def verbose_query_logs; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#248
    def verbose_query_logs=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#337
    def verify_foreign_keys_for_fixtures; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#337
    def verify_foreign_keys_for_fixtures=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record/version.rb#7
    def version; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#267
    def warn_on_records_fetched_greater_than; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#267
    def warn_on_records_fetched_greater_than=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#197
    def writing_role; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#197
    def writing_role=(_arg0); end

    # source://activerecord/7.0.4.2/lib/active_record.rb#362
    def yaml_column_permitted_classes; end

    # source://activerecord/7.0.4.2/lib/active_record.rb#362
    def yaml_column_permitted_classes=(_arg0); end
  end
end

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/version.rb#4
module ActiveRecord::ConnectionAdapters; end

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/version.rb#5
module ActiveRecord::ConnectionAdapters::PostGIS; end

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_table_definition.rb#30
module ActiveRecord::ConnectionAdapters::PostGIS::ColumnDefinitionUtils
  class << self
    # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_table_definition.rb#47
    def default_srid(options); end

    # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_table_definition.rb#32
    def geo_type(type = T.unsafe(nil)); end

    # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_table_definition.rb#39
    def limit_from_options(type, options = T.unsafe(nil)); end
  end
end

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/column_methods.rb#6
module ActiveRecord::ConnectionAdapters::PostGIS::ColumnMethods
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/column_methods.rb#12
  def geography(name, options = T.unsafe(nil)); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/column_methods.rb#16
  def geometry(name, options = T.unsafe(nil)); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/column_methods.rb#20
  def geometry_collection(name, options = T.unsafe(nil)); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/column_methods.rb#24
  def line_string(name, options = T.unsafe(nil)); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/column_methods.rb#28
  def multi_line_string(name, options = T.unsafe(nil)); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/column_methods.rb#32
  def multi_point(name, options = T.unsafe(nil)); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/column_methods.rb#36
  def multi_polygon(name, options = T.unsafe(nil)); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/column_methods.rb#7
  def spatial(name, options = T.unsafe(nil)); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/column_methods.rb#40
  def st_point(name, options = T.unsafe(nil)); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/column_methods.rb#44
  def st_polygon(name, options = T.unsafe(nil)); end
end

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/database_statements.rb#6
module ActiveRecord::ConnectionAdapters::PostGIS::DatabaseStatements
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/database_statements.rb#7
  def truncate_tables(*table_names); end
end

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/oid/spatial.rb#6
module ActiveRecord::ConnectionAdapters::PostGIS::OID; end

# OID used to represent geometry/geography database types and attributes.
#
# Accepts `geo_type`, `srid`, `has_z`, `has_m`, and `geographic` as parameters.
# Responsible for parsing sql_types returned from the database and WKT features.
#
# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/oid/spatial.rb#11
class ActiveRecord::ConnectionAdapters::PostGIS::OID::Spatial < ::ActiveModel::Type::Value
  # @return [Spatial] a new instance of Spatial
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/oid/spatial.rb#12
  def initialize(geo_type: T.unsafe(nil), srid: T.unsafe(nil), has_z: T.unsafe(nil), has_m: T.unsafe(nil), geographic: T.unsafe(nil)); end

  # support setting an RGeo object or a WKT string
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/oid/spatial.rb#68
  def serialize(value); end

  # @return [Boolean]
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/oid/spatial.rb#59
  def spatial?; end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/oid/spatial.rb#52
  def spatial_factory; end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/oid/spatial.rb#63
  def type; end

  private

  # @return [Boolean]
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/oid/spatial.rb#94
  def binary_string?(string); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/oid/spatial.rb#82
  def cast_value(value); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/oid/spatial.rb#106
  def factory_attrs; end

  # convert WKT string into RGeo object
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/oid/spatial.rb#88
  def parse_wkt(string); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/oid/spatial.rb#98
  def wkt_parser(string); end

  class << self
    # sql_type: geometry, geometry(Point), geometry(Point,4326), ...
    #
    # returns [geo_type, srid, has_z, has_m]
    #   geo_type: geography, geometry, point, line_string, polygon, ...
    #   srid:     1234
    #   has_z:    false
    #   has_m:    false
    #
    # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/oid/spatial.rb#27
    def parse_sql_type(sql_type); end
  end
end

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/schema_statements.rb#6
module ActiveRecord::ConnectionAdapters::PostGIS::SchemaStatements
  # override
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/schema_statements.rb#38
  def create_table_definition(*args, **kwargs); end

  # override
  # https://github.com/rails/rails/blob/7-0-stable/activerecord/lib/active_record/connection_adapters/postgresql/schema_statements.rb#L662
  # Create a SpatialColumn instead of a PostgreSQL::Column
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/schema_statements.rb#10
  def new_column_from_field(table_name, field); end

  # memoize hash of column infos for tables
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/schema_statements.rb#43
  def spatial_column_info(table_name); end
end

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column.rb#9
class ActiveRecord::ConnectionAdapters::PostGIS::SpatialColumn < ::ActiveRecord::ConnectionAdapters::PostgreSQL::Column
  # sql_type examples:
  #   "Geometry(Point,4326)"
  #   "Geography(Point,4326)"
  #
  # @return [SpatialColumn] a new instance of SpatialColumn
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column.rb#10
  def initialize(name, default, sql_type_metadata = T.unsafe(nil), null = T.unsafe(nil), default_function = T.unsafe(nil), collation: T.unsafe(nil), comment: T.unsafe(nil), serial: T.unsafe(nil), generated: T.unsafe(nil), spatial: T.unsafe(nil)); end

  # Returns the value of attribute geographic.
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column.rb#43
  def geographic; end

  # Returns the value of attribute geographic.
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column.rb#43
  def geographic?; end

  # Returns the value of attribute geometric_type.
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column.rb#43
  def geometric_type; end

  # Returns the value of attribute has_m.
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column.rb#43
  def has_m; end

  # Returns the value of attribute has_m.
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column.rb#43
  def has_m?; end

  # Returns the value of attribute has_z.
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column.rb#43
  def has_z; end

  # Returns the value of attribute has_z.
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column.rb#43
  def has_z?; end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column.rb#53
  def limit; end

  # @return [Boolean]
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column.rb#57
  def spatial?; end

  # Returns the value of attribute srid.
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column.rb#43
  def srid; end

  private

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column.rb#67
  def build_from_sql_type(sql_type); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column.rb#63
  def set_geometric_type_from_name(name); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column.rb#72
  def to_type_name(geometric_type); end
end

# Do spatial sql queries for column info and memoize that info.
#
# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column_info.rb#7
class ActiveRecord::ConnectionAdapters::PostGIS::SpatialColumnInfo
  # @return [SpatialColumnInfo] a new instance of SpatialColumnInfo
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column_info.rb#8
  def initialize(adapter, table_name); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column_info.rb#13
  def all; end

  # do not query the database for non-spatial columns/tables
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_column_info.rb#38
  def get(column_name, type); end
end

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_table_definition.rb#6
class ActiveRecord::ConnectionAdapters::PostGIS::TableDefinition < ::ActiveRecord::ConnectionAdapters::PostgreSQL::TableDefinition
  include ::ActiveRecord::ConnectionAdapters::PostGIS::ColumnMethods

  # super: https://github.com/rails/rails/blob/master/activerecord/lib/active_record/connection_adapters/abstract/schema_definitions.rb
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/spatial_table_definition.rb#10
  def new_column_definition(name, type, **options); end
end

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/type.rb#6
module ActiveRecord::ConnectionAdapters::PostGIS::Type
  # Look for :postgis types first, then check for :postgresql
  # types to simulate a kind of Type inheritance.
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/type.rb#9
  def lookup(*args, adapter: T.unsafe(nil), **kwargs); end
end

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/version.rb#6
ActiveRecord::ConnectionAdapters::PostGIS::VERSION = T.let(T.unsafe(nil), String)

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis_adapter.rb#27
class ActiveRecord::ConnectionAdapters::PostGISAdapter < ::ActiveRecord::ConnectionAdapters::PostgreSQLAdapter
  include ::ActiveRecord::ConnectionAdapters::PostGIS::SchemaStatements
  include ::ActiveRecord::ConnectionAdapters::PostGIS::DatabaseStatements

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis_adapter.rb#50
  def arel_visitor; end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis_adapter.rb#62
  def default_srid; end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis_adapter.rb#58
  def postgis_lib_version; end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis_adapter.rb#122
  def quote(value); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis_adapter.rb#132
  def quote_default_expression(value, column); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis_adapter.rb#113
  def srs_database_columns; end

  class << self
    # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis_adapter.rb#67
    def initialize_type_map(map = T.unsafe(nil)); end

    # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis_adapter.rb#94
    def native_database_types; end

    # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis_adapter.rb#54
    def spatial_column_options(key); end
  end
end

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis_adapter.rb#28
ActiveRecord::ConnectionAdapters::PostGISAdapter::ADAPTER_NAME = T.let(T.unsafe(nil), String)

# http://postgis.17.x6.nabble.com/Default-SRID-td5001115.html
#
# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis_adapter.rb#45
ActiveRecord::ConnectionAdapters::PostGISAdapter::DEFAULT_SRID = T.let(T.unsafe(nil), Integer)

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis_adapter.rb#30
ActiveRecord::ConnectionAdapters::PostGISAdapter::SPATIAL_COLUMN_OPTIONS = T.let(T.unsafe(nil), Hash)

class ActiveRecord::ConnectionAdapters::PostgreSQL::Table < ::ActiveRecord::ConnectionAdapters::Table
  include ::ActiveRecord::ConnectionAdapters::PostGIS::ColumnMethods
end

# source://activerecord/7.0.4.2/lib/active_record/connection_adapters/postgresql/column.rb#67
ActiveRecord::ConnectionAdapters::PostgreSQLColumn = ActiveRecord::ConnectionAdapters::PostgreSQL::Column

# source://activerecord/7.0.4.2/lib/active_record/connection_adapters/postgresql/type_metadata.rb#42
ActiveRecord::ConnectionAdapters::PostgreSQLTypeMetadata = ActiveRecord::ConnectionAdapters::PostgreSQL::TypeMetadata

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/create_connection.rb#10
module ActiveRecord::ConnectionHandling
  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#337
  def clear_active_connections!(*_arg0, **_arg1, &_arg2); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#337
  def clear_all_connections!(*_arg0, **_arg1, &_arg2); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#333
  def clear_cache!; end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#266
  def clear_query_caches_for_current_thread; end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#337
  def clear_reloadable_connections!(*_arg0, **_arg1, &_arg2); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#317
  def connected?; end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#137
  def connected_to(role: T.unsafe(nil), shard: T.unsafe(nil), prevent_writes: T.unsafe(nil), &blk); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#252
  def connected_to?(role:, shard: T.unsafe(nil)); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#172
  def connected_to_many(*classes, role:, shard: T.unsafe(nil), prevent_writes: T.unsafe(nil)); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#198
  def connecting_to(role: T.unsafe(nil), shard: T.unsafe(nil), prevent_writes: T.unsafe(nil)); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#279
  def connection; end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#304
  def connection_db_config; end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#308
  def connection_pool; end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#286
  def connection_specification_name; end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#283
  def connection_specification_name=(_arg0); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#81
  def connects_to(database: T.unsafe(nil), shards: T.unsafe(nil)); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#49
  def establish_connection(config_or_env = T.unsafe(nil)); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#337
  def flush_idle_connections!(*_arg0, **_arg1, &_arg2); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#256
  def lookup_connection_handler(handler_key); end

  # Based on the default <tt>postgresql_connection</tt> definition from ActiveRecord.
  # https://github.com/rails/rails/blob/master/activerecord/lib/active_record/connection_adapters/postgresql_adapter.rb
  # FULL REPLACEMENT because we need to create a different class.
  #
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/create_connection.rb#29
  def postgis_connection(config); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_adapters/postgresql_adapter.rb#25
  def postgresql_connection(config); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#293
  def primary_class?; end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#214
  def prohibit_shard_swapping(enabled = T.unsafe(nil)); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#321
  def remove_connection(name = T.unsafe(nil)); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#312
  def retrieve_connection; end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#223
  def shard_swapping_prohibited?; end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#238
  def while_preventing_writes(enabled = T.unsafe(nil), &block); end

  private

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#382
  def append_to_connected_to_stack(entry); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#341
  def clear_on_handler(handler); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#347
  def resolve_config_for_connection(config_or_env); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#390
  def swap_connection_handler(handler, &blk); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#357
  def with_handler(handler_key, &blk); end

  # source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#362
  def with_role_and_shard(role, shard, prevent_writes); end
end

# source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#6
ActiveRecord::ConnectionHandling::DEFAULT_ENV = T.let(T.unsafe(nil), Proc)

# source://activerecord/7.0.4.2/lib/active_record/connection_handling.rb#5
ActiveRecord::ConnectionHandling::RAILS_ENV = T.let(T.unsafe(nil), Proc)

module ActiveRecord::Type
  extend ::ActiveRecord::ConnectionAdapters::PostGIS::Type

  class << self
    # source://activerecord/7.0.4.2/lib/active_record/type.rb#49
    def adapter_name_from(model); end

    # source://activerecord/7.0.4.2/lib/active_record/type.rb#27
    def add_modifier(*_arg0, **_arg1, &_arg2); end

    # source://activerecord/7.0.4.2/lib/active_record/type.rb#45
    def default_value; end

    # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/type.rb#9
    def lookup(*args, adapter: T.unsafe(nil), **kwargs); end

    # source://activerecord/7.0.4.2/lib/active_record/type.rb#37
    def register(type_name, klass = T.unsafe(nil), **options, &block); end

    # source://activerecord/7.0.4.2/lib/active_record/type.rb#26
    def registry; end

    # source://activerecord/7.0.4.2/lib/active_record/type.rb#26
    def registry=(_arg0); end

    private

    # source://activerecord/7.0.4.2/lib/active_record/type.rb#54
    def current_adapter_name; end
  end
end

# source://activerecord/7.0.4.2/lib/active_record/type.rb#59
ActiveRecord::Type::BigInteger = ActiveModel::Type::BigInteger

# source://activerecord/7.0.4.2/lib/active_record/type.rb#60
ActiveRecord::Type::Binary = ActiveModel::Type::Binary

# source://activerecord/7.0.4.2/lib/active_record/type.rb#61
ActiveRecord::Type::Boolean = ActiveModel::Type::Boolean

# source://activerecord/7.0.4.2/lib/active_record/type.rb#62
ActiveRecord::Type::Decimal = ActiveModel::Type::Decimal

# source://activerecord/7.0.4.2/lib/active_record/type.rb#63
ActiveRecord::Type::Float = ActiveModel::Type::Float

# source://activerecord/7.0.4.2/lib/active_record/type.rb#65
ActiveRecord::Type::ImmutableString = ActiveModel::Type::ImmutableString

# source://activerecord/7.0.4.2/lib/active_record/type.rb#64
ActiveRecord::Type::Integer = ActiveModel::Type::Integer

# source://activerecord/7.0.4.2/lib/active_record/type.rb#66
ActiveRecord::Type::String = ActiveModel::Type::String

# source://activerecord/7.0.4.2/lib/active_record/type.rb#67
ActiveRecord::Type::Value = ActiveModel::Type::Value

# source://activerecord/7.0.4.2/lib/active_record/errors.rb#347
ActiveRecord::UnknownAttributeError = ActiveModel::UnknownAttributeError

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/arel_tosql.rb#21
module Arel
  class << self
    # source://activerecord/7.0.4.2/lib/arel.rb#46
    def arel_node?(value); end

    # source://activerecord/7.0.4.2/lib/arel.rb#50
    def fetch_attribute(value, &block); end

    # source://rgeo-activerecord/7.0.1/lib/rgeo/active_record/spatial_expressions.rb#253
    def spatial(arg); end

    # source://activerecord/7.0.4.2/lib/arel.rb#38
    def sql(raw_sql); end

    # source://activerecord/7.0.4.2/lib/arel.rb#42
    def star; end
  end
end

# source://activerecord/7.0.4.2/lib/arel/attributes/attribute.rb#32
Arel::Attribute = Arel::Attributes::Attribute

# source://activerecord/7.0.4.2/lib/arel.rb#29
Arel::VERSION = T.let(T.unsafe(nil), String)

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/arel_tosql.rb#22
module Arel::Visitors; end

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/arel_tosql.rb#30
class Arel::Visitors::PostGIS < ::Arel::Visitors::PostgreSQL
  include ::RGeo::ActiveRecord::SpatialToSql
  include ::RGeo::ActiveRecord::SpatialToPostGISSql
end

# Different super-class under JRuby JDBC adapter.
#
# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/arel_tosql.rb#24
Arel::Visitors::PostGISSuperclass = Arel::Visitors::PostgreSQL

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/arel_tosql.rb#3
module RGeo; end

# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/arel_tosql.rb#4
module RGeo::ActiveRecord
  class << self
    # source://rgeo-activerecord/7.0.1/lib/rgeo/active_record/common_adapter_elements.rb#6
    def geometric_type_from_name(name); end

    # source://rgeo-activerecord/7.0.1/lib/rgeo/active_record/spatial_expressions.rb#7
    def spatial_expressions_supported?; end
  end
end

# Extend rgeo-activerecord visitors to use PostGIS specific functionality
#
# source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/arel_tosql.rb#7
module RGeo::ActiveRecord::SpatialToPostGISSql
  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/arel_tosql.rb#8
  def visit_in_spatial_context(node, collector); end
end

module RGeo::ActiveRecord::SpatialToSql
  include ::RGeo::ActiveRecord::SpatialToPostGISSql

  # source://rgeo-activerecord/7.0.1/lib/rgeo/active_record/arel_spatial_queries.rb#16
  def st_func(standard_name); end

  # source://rgeo-activerecord/7.0.1/lib/rgeo/active_record/arel_spatial_queries.rb#25
  def visit_RGeo_ActiveRecord_SpatialNamedFunction(node, collector); end

  # source://activerecord-postgis-adapter//lib/active_record/connection_adapters/postgis/arel_tosql.rb#8
  def visit_in_spatial_context(node, collector); end
end

# source://rgeo-activerecord/7.0.1/lib/rgeo/active_record/version.rb#5
RGeo::ActiveRecord::VERSION = T.let(T.unsafe(nil), String)

# source://rgeo/2.4.0/lib/rgeo/version.rb#4
RGeo::VERSION = T.let(T.unsafe(nil), String)
