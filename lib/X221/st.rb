require_relative 'segment'

module X221
  class St < Segment

    attr_reader :transaction_set_control_number

    def initialize(raw_data)
      super(raw_data)
      @transaction_set_identifier_code = @data_ary[1]
      @transaction_set_control_number  = @data_ary[2]
    end

    def name
      SEGMENT_NAMES[:st]
    end
  end
end
