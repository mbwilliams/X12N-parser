require_relative 'segment'

module X221
  class Iea < Segment
    attr_reader :number_of_included_functional_groups,
                :interchange_control_number

    def initialize(raw_data)
      super
      @number_of_included_functional_groups = @data_elements[1]
      @interchange_control_number           = @data_elements[2]
    end
  end
end
