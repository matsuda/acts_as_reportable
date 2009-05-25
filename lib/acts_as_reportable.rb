# ActsAsReportable
module ActiveRecord #:nodoc:
  module Acts #:nodoc:
    module Reportable #:nodoc:
      def self.included(base)
        base.extend(ClassMethods)
      end
      
      module ClassMethods
        def acts_as_reportable
          has_many :reports, :as => :reportable, :dependent => :destroy

          include ActiveRecord::Acts::Reportable::InstanceMethods
          extend ActiveRecord::Acts::Reportable::SingletonMethods
        end
      end
      
      module SingletonMethods
        def find_with_reported(options = {})
          reportable = ActiveRecord::Base.send(:class_name_of_active_record_descendant, self).to_s

          find(:all,
            { :select => "distinct #{table_name}.*",
              :joins => "INNER JOIN reports ON reports.reportable_type = '#{reportable}' AND reports.reportable_id = #{table_name}.id"
            }.update(options)
          )
        end
      end
      
      module InstanceMethods
        def find_reports(options = {})
          Report.find(:all,
            {
              :conditions => ["reportable_id = ? and reportable_type = ?", self.id, self.class.to_s]
            }.update(options))
        end

        def add_report(report)
          reports << report
        end
      end
    end
  end
end

ActiveRecord::Base.send(:include, ActiveRecord::Acts::Reportable)
