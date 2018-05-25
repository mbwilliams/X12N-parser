require_relative 'segment'

module X221
  class Svc < Segment

    attr_reader :composite_medical_procedure_identifier,
                :line_item_charge_amount,
                :line_item_provider_payment_amount

    def initialize(raw_data)
      super
      @composite_medical_procedure_identifier = @data_elements[1]
      @line_item_charge_amount                = @data_elements[2]
      @line_item_provider_payment_amount      = @data_elements[3]
    end
  end
end
