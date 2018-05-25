require_relative 'segment'

module X221
  class Lq < Segment

    attr_reader :code_list_qualifier_code,
                :remark_code

    def initialize(raw_data)
      super
      @code_list_qualifier_code = @data_elements[1]
      @remark_code              = @data_elements[2]
    end
  end
end
