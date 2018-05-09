require_relative 'segment'

module X221
  class Isa < Segment

    attr_reader :authorization_information_qualifier,
                :authorization_information,
                :security_information_qualifier,
                :security_information,
                :interchange_sender_id_qualifier,
                :interchange_sender_id,
                :interchange_receiver_id_qualifier,
                :interchange_receiver_id,
                :interchange_date, :interchange_time,
                :interchange_control_version_number,
                :repitition_separator,
                :interchange_control_number,
                :acknowledgement_requested,
                :interchange_usage_indicator,
                :component_element_separator

    def initialize(raw_data)
      super(raw_data)
      @authorization_information_qualifier = @data_elements[1]
      @authorization_information           = @data_elements[2]
      @security_information_qualifier      = @data_elements[3]
      @security_information                = @data_elements[4]
      @interchange_sender_id_qualifier     = @data_elements[5]
      @interchange_sender_id               = @data_elements[6]
      @interchange_receiver_id_qualifier   = @data_elements[7]
      @interchange_receiver_id             = @data_elements[8]
      @interchange_date                    = @data_elements[9]
      @interchange_time                    = @data_elements[10]
      @repitition_separator                = @data_elements[11]
      @interchange_control_version_number  = @data_elements[12]
      @interchange_control_number          = @data_elements[13]
      @acknowledgement_requested           = @data_elements[14]
      @interchange_usage_indicator         = @data_elements[15]
      @component_element_separator         = @data_elements[16]
    end
  end
end
