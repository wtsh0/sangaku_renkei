module TimestampPatch
  module TableDefinition
    def timestamps(*args)
      options = args.extract_options!

      options[:null] = false if options[:null].nil?

      column(:f_reg_date, :datetime, options)
      column(:f_upd_date, :datetime, options)
    end
  end

  module SchemaStatements
    def add_timestamps(table_name, options = {})
      options[:null] = false if options[:null].nil?

      add_column table_name, :f_reg_date, :datetime, options
      add_column table_name, :f_upd_date, :datetime, options
    end

    def remove_timestamps(table_name, options = {})
      remove_column table_name, :f_upd_date
      remove_column table_name, :f_reg_date
    end
  end

  module Timestamp
    def timestamp_attributes_for_update
      [:f_upd_date]
    end

    def timestamp_attributes_for_create
      [:f_reg_date]
    end
  end
end

ActiveRecord::ConnectionAdapters::TableDefinition.prepend TimestampPatch::TableDefinition
ActiveRecord::ConnectionAdapters::SchemaStatements.prepend TimestampPatch::SchemaStatements
ActiveRecord::Base.prepend TimestampPatch::Timestamp