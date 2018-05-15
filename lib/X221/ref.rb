require_relative 'segment'

module X221
  class Ref < Segment

    attr_reader :reference_identification_qualifier,
                :reference_identification

    def initialize(raw_data)
      super
      @reference_identification_qualifier = @data_elements[1]
      @reference_identification           = @data_elements[2]
    end
  end
end
