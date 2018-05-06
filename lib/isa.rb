require_relative 'segment'

class Isa < Segment

  attr_reader :interchange_date, :interchange_time, :interchange_control_number

  def initialize(raw_data)
    super(raw_data)
    @authorization_information_qualifier = @data_ary[1]
    @authorization_information           = @data_ary[2]
    @security_information_qualifier      = @data_ary[3]
    @security_information                = @data_ary[4]
    @interchange_sender_id_qualifier     = @data_ary[5]
    @interchange_sender_id               = @data_ary[6]
    @interchange_receiver_id_qualifier   = @data_ary[7]
    @interchange_receiver_id             = @data_ary[8]
    @interchange_date                    = @data_ary[9]
    @interchange_time                    = @data_ary[10]
    @interchange_control_version_number  = @data_ary[12]
    @interchange_control_number          = @data_ary[13]
    @acknowledgement_requested           = @data_ary[14]
    @interchange_usage_indicator         = @data_ary[15]
  end

  def name
    SEGMENT_NAMES[:isa]
  end
end
