# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: temporal/api/enums/v1/query.proto

require 'google/protobuf'


descriptor_data = "\n!temporal/api/enums/v1/query.proto\x12\x15temporal.api.enums.v1*r\n\x0fQueryResultType\x12!\n\x1dQUERY_RESULT_TYPE_UNSPECIFIED\x10\x00\x12\x1e\n\x1aQUERY_RESULT_TYPE_ANSWERED\x10\x01\x12\x1c\n\x18QUERY_RESULT_TYPE_FAILED\x10\x02*\xb6\x01\n\x14QueryRejectCondition\x12&\n\"QUERY_REJECT_CONDITION_UNSPECIFIED\x10\x00\x12\x1f\n\x1bQUERY_REJECT_CONDITION_NONE\x10\x01\x12#\n\x1fQUERY_REJECT_CONDITION_NOT_OPEN\x10\x02\x12\x30\n,QUERY_REJECT_CONDITION_NOT_COMPLETED_CLEANLY\x10\x03\x42\x82\x01\n\x18io.temporal.api.enums.v1B\nQueryProtoP\x01Z!go.temporal.io/api/enums/v1;enums\xaa\x02\x17Temporalio.Api.Enums.V1\xea\x02\x1aTemporalio::Api::Enums::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Temporalio
  module Api
    module Enums
      module V1
        QueryResultType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.enums.v1.QueryResultType").enummodule
        QueryRejectCondition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.enums.v1.QueryRejectCondition").enummodule
      end
    end
  end
end