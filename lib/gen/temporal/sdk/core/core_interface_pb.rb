# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: temporal/sdk/core/core_interface.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'
require 'temporal/sdk/core/activity_result/activity_result_pb'
require 'temporal/sdk/core/activity_task/activity_task_pb'
require 'temporal/sdk/core/common/common_pb'
require 'temporal/sdk/core/external_data/external_data_pb'
require 'temporal/sdk/core/workflow_activation/workflow_activation_pb'
require 'temporal/sdk/core/workflow_commands/workflow_commands_pb'
require 'temporal/sdk/core/workflow_completion/workflow_completion_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("temporal/sdk/core/core_interface.proto", :syntax => :proto3) do
    add_message "coresdk.ActivityHeartbeat" do
      optional :task_token, :bytes, 1
      repeated :details, :message, 2, "coresdk.common.Payload"
    end
    add_message "coresdk.ActivityTaskCompletion" do
      optional :task_token, :bytes, 1
      optional :result, :message, 2, "coresdk.activity_result.ActivityExecutionResult"
    end
  end
end

module Coresdk
  ActivityHeartbeat = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.ActivityHeartbeat").msgclass
  ActivityTaskCompletion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("coresdk.ActivityTaskCompletion").msgclass
end