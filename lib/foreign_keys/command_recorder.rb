module ActiveRecord
  class Migration
    class CommandRecorder
      [:add_foreign_key, :remove_foreign_key].each do |method|
        class_eval <<-EOV, __FILE__, __LINE__ + 1
          def #{method}(*args)
            record(:"#{method}", args)
          end
        EOV
      end

      def invert_add_foreign_key(args)
        [:remove_foreign_key, args]
      end

      def invert_remove_foreign_key(args)
        [:remove_add_key, args]
      end
    end
  end
end