require_relative 'segment'

module X221
  class Plb < Segment

    attr_reader :provider_identifier,
                :fiscal_period_date,
                :adjustment_identifier,
                :provider_adjustment_amount

    def initialize(raw_data)
      super
      @provider_identifier        = @data_elements[1]
      @fiscal_period_date         = @data_elements[2]
      @adjustment_identifier      = @data_elements[3]
      @provider_adjustment_amount = @data_elements[4]
    end
  end
end
