# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: temporal/api/command/v1/message.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'
require 'temporalio/api/enums/v1/workflow'
require 'temporalio/api/enums/v1/command_type'
require 'temporalio/api/common/v1/message'
require 'temporalio/api/failure/v1/message'
require 'temporalio/api/taskqueue/v1/message'
require 'temporalio/api/sdk/v1/user_metadata'


descriptor_data = "\n%temporal/api/command/v1/message.proto\x12\x17temporal.api.command.v1\x1a\x1egoogle/protobuf/duration.proto\x1a$temporal/api/enums/v1/workflow.proto\x1a(temporal/api/enums/v1/command_type.proto\x1a$temporal/api/common/v1/message.proto\x1a%temporal/api/failure/v1/message.proto\x1a\'temporal/api/taskqueue/v1/message.proto\x1a\'temporal/api/sdk/v1/user_metadata.proto\"\x82\x05\n%ScheduleActivityTaskCommandAttributes\x12\x13\n\x0b\x61\x63tivity_id\x18\x01 \x01(\t\x12;\n\ractivity_type\x18\x02 \x01(\x0b\x32$.temporal.api.common.v1.ActivityType\x12\x38\n\ntask_queue\x18\x04 \x01(\x0b\x32$.temporal.api.taskqueue.v1.TaskQueue\x12.\n\x06header\x18\x05 \x01(\x0b\x32\x1e.temporal.api.common.v1.Header\x12/\n\x05input\x18\x06 \x01(\x0b\x32 .temporal.api.common.v1.Payloads\x12<\n\x19schedule_to_close_timeout\x18\x07 \x01(\x0b\x32\x19.google.protobuf.Duration\x12<\n\x19schedule_to_start_timeout\x18\x08 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x39\n\x16start_to_close_timeout\x18\t \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x34\n\x11heartbeat_timeout\x18\n \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x39\n\x0cretry_policy\x18\x0b \x01(\x0b\x32#.temporal.api.common.v1.RetryPolicy\x12\x1f\n\x17request_eager_execution\x18\x0c \x01(\x08\x12\x1d\n\x15use_workflow_build_id\x18\r \x01(\x08J\x04\x08\x03\x10\x04\"H\n*RequestCancelActivityTaskCommandAttributes\x12\x1a\n\x12scheduled_event_id\x18\x01 \x01(\x03\"i\n\x1bStartTimerCommandAttributes\x12\x10\n\x08timer_id\x18\x01 \x01(\t\x12\x38\n\x15start_to_fire_timeout\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\"^\n*CompleteWorkflowExecutionCommandAttributes\x12\x30\n\x06result\x18\x01 \x01(\x0b\x32 .temporal.api.common.v1.Payloads\"[\n&FailWorkflowExecutionCommandAttributes\x12\x31\n\x07\x66\x61ilure\x18\x01 \x01(\x0b\x32 .temporal.api.failure.v1.Failure\"0\n\x1c\x43\x61ncelTimerCommandAttributes\x12\x10\n\x08timer_id\x18\x01 \x01(\t\"]\n(CancelWorkflowExecutionCommandAttributes\x12\x31\n\x07\x64\x65tails\x18\x01 \x01(\x0b\x32 .temporal.api.common.v1.Payloads\"\xaf\x01\n7RequestCancelExternalWorkflowExecutionCommandAttributes\x12\x11\n\tnamespace\x18\x01 \x01(\t\x12\x13\n\x0bworkflow_id\x18\x02 \x01(\t\x12\x0e\n\x06run_id\x18\x03 \x01(\t\x12\x0f\n\x07\x63ontrol\x18\x04 \x01(\t\x12\x1b\n\x13\x63hild_workflow_only\x18\x05 \x01(\x08\x12\x0e\n\x06reason\x18\x06 \x01(\t\"\xa7\x02\n0SignalExternalWorkflowExecutionCommandAttributes\x12\x11\n\tnamespace\x18\x01 \x01(\t\x12<\n\texecution\x18\x02 \x01(\x0b\x32).temporal.api.common.v1.WorkflowExecution\x12\x13\n\x0bsignal_name\x18\x03 \x01(\t\x12/\n\x05input\x18\x04 \x01(\x0b\x32 .temporal.api.common.v1.Payloads\x12\x0f\n\x07\x63ontrol\x18\x05 \x01(\t\x12\x1b\n\x13\x63hild_workflow_only\x18\x06 \x01(\x08\x12.\n\x06header\x18\x07 \x01(\x0b\x32\x1e.temporal.api.common.v1.Header\"v\n/UpsertWorkflowSearchAttributesCommandAttributes\x12\x43\n\x11search_attributes\x18\x01 \x01(\x0b\x32(.temporal.api.common.v1.SearchAttributes\"`\n)ModifyWorkflowPropertiesCommandAttributes\x12\x33\n\rupserted_memo\x18\x01 \x01(\x0b\x32\x1c.temporal.api.common.v1.Memo\"\xbf\x02\n\x1dRecordMarkerCommandAttributes\x12\x13\n\x0bmarker_name\x18\x01 \x01(\t\x12T\n\x07\x64\x65tails\x18\x02 \x03(\x0b\x32\x43.temporal.api.command.v1.RecordMarkerCommandAttributes.DetailsEntry\x12.\n\x06header\x18\x03 \x01(\x0b\x32\x1e.temporal.api.common.v1.Header\x12\x31\n\x07\x66\x61ilure\x18\x04 \x01(\x0b\x32 .temporal.api.failure.v1.Failure\x1aP\n\x0c\x44\x65tailsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12/\n\x05value\x18\x02 \x01(\x0b\x32 .temporal.api.common.v1.Payloads:\x02\x38\x01\"\xcb\x06\n/ContinueAsNewWorkflowExecutionCommandAttributes\x12;\n\rworkflow_type\x18\x01 \x01(\x0b\x32$.temporal.api.common.v1.WorkflowType\x12\x38\n\ntask_queue\x18\x02 \x01(\x0b\x32$.temporal.api.taskqueue.v1.TaskQueue\x12/\n\x05input\x18\x03 \x01(\x0b\x32 .temporal.api.common.v1.Payloads\x12\x37\n\x14workflow_run_timeout\x18\x04 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x38\n\x15workflow_task_timeout\x18\x05 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x39\n\x16\x62\x61\x63koff_start_interval\x18\x06 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x39\n\x0cretry_policy\x18\x07 \x01(\x0b\x32#.temporal.api.common.v1.RetryPolicy\x12@\n\tinitiator\x18\x08 \x01(\x0e\x32-.temporal.api.enums.v1.ContinueAsNewInitiator\x12\x31\n\x07\x66\x61ilure\x18\t \x01(\x0b\x32 .temporal.api.failure.v1.Failure\x12@\n\x16last_completion_result\x18\n \x01(\x0b\x32 .temporal.api.common.v1.Payloads\x12\x15\n\rcron_schedule\x18\x0b \x01(\t\x12.\n\x06header\x18\x0c \x01(\x0b\x32\x1e.temporal.api.common.v1.Header\x12*\n\x04memo\x18\r \x01(\x0b\x32\x1c.temporal.api.common.v1.Memo\x12\x43\n\x11search_attributes\x18\x0e \x01(\x0b\x32(.temporal.api.common.v1.SearchAttributes\x12\x18\n\x10inherit_build_id\x18\x0f \x01(\x08\"\xe5\x06\n,StartChildWorkflowExecutionCommandAttributes\x12\x11\n\tnamespace\x18\x01 \x01(\t\x12\x13\n\x0bworkflow_id\x18\x02 \x01(\t\x12;\n\rworkflow_type\x18\x03 \x01(\x0b\x32$.temporal.api.common.v1.WorkflowType\x12\x38\n\ntask_queue\x18\x04 \x01(\x0b\x32$.temporal.api.taskqueue.v1.TaskQueue\x12/\n\x05input\x18\x05 \x01(\x0b\x32 .temporal.api.common.v1.Payloads\x12=\n\x1aworkflow_execution_timeout\x18\x06 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x37\n\x14workflow_run_timeout\x18\x07 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x38\n\x15workflow_task_timeout\x18\x08 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x45\n\x13parent_close_policy\x18\t \x01(\x0e\x32(.temporal.api.enums.v1.ParentClosePolicy\x12\x0f\n\x07\x63ontrol\x18\n \x01(\t\x12N\n\x18workflow_id_reuse_policy\x18\x0b \x01(\x0e\x32,.temporal.api.enums.v1.WorkflowIdReusePolicy\x12\x39\n\x0cretry_policy\x18\x0c \x01(\x0b\x32#.temporal.api.common.v1.RetryPolicy\x12\x15\n\rcron_schedule\x18\r \x01(\t\x12.\n\x06header\x18\x0e \x01(\x0b\x32\x1e.temporal.api.common.v1.Header\x12*\n\x04memo\x18\x0f \x01(\x0b\x32\x1c.temporal.api.common.v1.Memo\x12\x43\n\x11search_attributes\x18\x10 \x01(\x0b\x32(.temporal.api.common.v1.SearchAttributes\x12\x18\n\x10inherit_build_id\x18\x11 \x01(\x08\"6\n ProtocolMessageCommandAttributes\x12\x12\n\nmessage_id\x18\x01 \x01(\t\"\xea\x02\n\'ScheduleNexusOperationCommandAttributes\x12\x10\n\x08\x65ndpoint\x18\x01 \x01(\t\x12\x0f\n\x07service\x18\x02 \x01(\t\x12\x11\n\toperation\x18\x03 \x01(\t\x12.\n\x05input\x18\x04 \x01(\x0b\x32\x1f.temporal.api.common.v1.Payload\x12<\n\x19schedule_to_close_timeout\x18\x05 \x01(\x0b\x32\x19.google.protobuf.Duration\x12g\n\x0cnexus_header\x18\x06 \x03(\x0b\x32Q.temporal.api.command.v1.ScheduleNexusOperationCommandAttributes.NexusHeaderEntry\x1a\x32\n\x10NexusHeaderEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"J\n,RequestCancelNexusOperationCommandAttributes\x12\x1a\n\x12scheduled_event_id\x18\x01 \x01(\x03\"\xc2\x11\n\x07\x43ommand\x12\x38\n\x0c\x63ommand_type\x18\x01 \x01(\x0e\x32\".temporal.api.enums.v1.CommandType\x12\x39\n\ruser_metadata\x18\xad\x02 \x01(\x0b\x32!.temporal.api.sdk.v1.UserMetadata\x12s\n)schedule_activity_task_command_attributes\x18\x02 \x01(\x0b\x32>.temporal.api.command.v1.ScheduleActivityTaskCommandAttributesH\x00\x12^\n\x1estart_timer_command_attributes\x18\x03 \x01(\x0b\x32\x34.temporal.api.command.v1.StartTimerCommandAttributesH\x00\x12}\n.complete_workflow_execution_command_attributes\x18\x04 \x01(\x0b\x32\x43.temporal.api.command.v1.CompleteWorkflowExecutionCommandAttributesH\x00\x12u\n*fail_workflow_execution_command_attributes\x18\x05 \x01(\x0b\x32?.temporal.api.command.v1.FailWorkflowExecutionCommandAttributesH\x00\x12~\n/request_cancel_activity_task_command_attributes\x18\x06 \x01(\x0b\x32\x43.temporal.api.command.v1.RequestCancelActivityTaskCommandAttributesH\x00\x12`\n\x1f\x63\x61ncel_timer_command_attributes\x18\x07 \x01(\x0b\x32\x35.temporal.api.command.v1.CancelTimerCommandAttributesH\x00\x12y\n,cancel_workflow_execution_command_attributes\x18\x08 \x01(\x0b\x32\x41.temporal.api.command.v1.CancelWorkflowExecutionCommandAttributesH\x00\x12\x99\x01\n=request_cancel_external_workflow_execution_command_attributes\x18\t \x01(\x0b\x32P.temporal.api.command.v1.RequestCancelExternalWorkflowExecutionCommandAttributesH\x00\x12\x62\n record_marker_command_attributes\x18\n \x01(\x0b\x32\x36.temporal.api.command.v1.RecordMarkerCommandAttributesH\x00\x12\x89\x01\n5continue_as_new_workflow_execution_command_attributes\x18\x0b \x01(\x0b\x32H.temporal.api.command.v1.ContinueAsNewWorkflowExecutionCommandAttributesH\x00\x12\x82\x01\n1start_child_workflow_execution_command_attributes\x18\x0c \x01(\x0b\x32\x45.temporal.api.command.v1.StartChildWorkflowExecutionCommandAttributesH\x00\x12\x8a\x01\n5signal_external_workflow_execution_command_attributes\x18\r \x01(\x0b\x32I.temporal.api.command.v1.SignalExternalWorkflowExecutionCommandAttributesH\x00\x12\x88\x01\n4upsert_workflow_search_attributes_command_attributes\x18\x0e \x01(\x0b\x32H.temporal.api.command.v1.UpsertWorkflowSearchAttributesCommandAttributesH\x00\x12h\n#protocol_message_command_attributes\x18\x0f \x01(\x0b\x32\x39.temporal.api.command.v1.ProtocolMessageCommandAttributesH\x00\x12{\n-modify_workflow_properties_command_attributes\x18\x11 \x01(\x0b\x32\x42.temporal.api.command.v1.ModifyWorkflowPropertiesCommandAttributesH\x00\x12w\n+schedule_nexus_operation_command_attributes\x18\x12 \x01(\x0b\x32@.temporal.api.command.v1.ScheduleNexusOperationCommandAttributesH\x00\x12\x82\x01\n1request_cancel_nexus_operation_command_attributes\x18\x13 \x01(\x0b\x32\x45.temporal.api.command.v1.RequestCancelNexusOperationCommandAttributesH\x00\x42\x0c\n\nattributesB\x8e\x01\n\x1aio.temporal.api.command.v1B\x0cMessageProtoP\x01Z%go.temporal.io/api/command/v1;command\xaa\x02\x19Temporalio.Api.Command.V1\xea\x02\x1cTemporalio::Api::Command::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Temporalio
  module Api
    module Command
      module V1
        ScheduleActivityTaskCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.ScheduleActivityTaskCommandAttributes").msgclass
        RequestCancelActivityTaskCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.RequestCancelActivityTaskCommandAttributes").msgclass
        StartTimerCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.StartTimerCommandAttributes").msgclass
        CompleteWorkflowExecutionCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.CompleteWorkflowExecutionCommandAttributes").msgclass
        FailWorkflowExecutionCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.FailWorkflowExecutionCommandAttributes").msgclass
        CancelTimerCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.CancelTimerCommandAttributes").msgclass
        CancelWorkflowExecutionCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.CancelWorkflowExecutionCommandAttributes").msgclass
        RequestCancelExternalWorkflowExecutionCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.RequestCancelExternalWorkflowExecutionCommandAttributes").msgclass
        SignalExternalWorkflowExecutionCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.SignalExternalWorkflowExecutionCommandAttributes").msgclass
        UpsertWorkflowSearchAttributesCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.UpsertWorkflowSearchAttributesCommandAttributes").msgclass
        ModifyWorkflowPropertiesCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.ModifyWorkflowPropertiesCommandAttributes").msgclass
        RecordMarkerCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.RecordMarkerCommandAttributes").msgclass
        ContinueAsNewWorkflowExecutionCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.ContinueAsNewWorkflowExecutionCommandAttributes").msgclass
        StartChildWorkflowExecutionCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.StartChildWorkflowExecutionCommandAttributes").msgclass
        ProtocolMessageCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.ProtocolMessageCommandAttributes").msgclass
        ScheduleNexusOperationCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.ScheduleNexusOperationCommandAttributes").msgclass
        RequestCancelNexusOperationCommandAttributes = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.RequestCancelNexusOperationCommandAttributes").msgclass
        Command = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("temporal.api.command.v1.Command").msgclass
      end
    end
  end
end