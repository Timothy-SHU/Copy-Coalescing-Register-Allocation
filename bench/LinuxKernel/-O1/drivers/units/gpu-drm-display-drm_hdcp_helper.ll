; ModuleID = 'drivers/gpu/drm/display/drm_hdcp_helper.c'
source_filename = "drivers/gpu/drm/display/drm_hdcp_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_hdcp_check_ksvs_revoked: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_hdcp_check_ksvs_revoked ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_connector_attach_content_protection_property: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_connector_attach_content_protection_property ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_hdcp_update_content_protection: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_hdcp_update_content_protection ; .previous"

%struct.drm_prop_enum_list = type { i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.16, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.16 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.firmware = type { i64, ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, ptr, %struct.mutex, i64, i32, ptr, [128 x i8], %struct.mutex, [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, %struct.drm_luminance_range_info, i8, i8, i32, ptr, i32, i32 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [4 x i64], [4 x i64], i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i16, i16 }
%struct.drm_luminance_range_info = type { i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins, i32, i8 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.15 }
%union.anon.15 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdcp_srm_header = type <{ i8, i8, i16, i8 }>

@.str = private unnamed_addr constant [16 x i8] c"Revoked KSV is \00", align 1, !dbg !0
@__UNIQUE_ID___addressable_drm_hdcp_check_ksvs_revoked305 = internal global ptr @drm_hdcp_check_ksvs_revoked, section ".discard.addressable", align 8, !dbg !7
@drm_cp_enum_list = internal global [3 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.15 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.16 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.17 }], align 16, !dbg !383
@.str.1 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1, !dbg !306
@drm_hdcp_content_type_enum_list = internal global [2 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.18 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.19 }], align 16, !dbg !400
@.str.2 = private unnamed_addr constant [19 x i8] c"Content Protection\00", align 1, !dbg !311
@.str.3 = private unnamed_addr constant [18 x i8] c"HDCP Content Type\00", align 1, !dbg !316
@__UNIQUE_ID___addressable_drm_connector_attach_content_protection_property306 = internal global ptr @drm_connector_attach_content_protection_property, section ".discard.addressable", align 8, !dbg !321
@.str.4 = private unnamed_addr constant [42 x i8] c"drivers/gpu/drm/display/drm_hdcp_helper.c\00", align 1, !dbg !323
@__UNIQUE_ID___addressable_drm_hdcp_update_content_protection307 = internal global ptr @drm_hdcp_update_content_protection, section ".discard.addressable", align 8, !dbg !328
@__const.drm_hdcp_request_srm.fw_name = private unnamed_addr constant [36 x i8] c"display_hdcp_srm.bin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"Invalid blob length\0A\00", align 1, !dbg !330
@.str.6 = private unnamed_addr constant [47 x i8] c"SRM ID: 0x%x, SRM Ver: 0x%x, SRM Gen No: 0x%x\0A\00", align 1, !dbg !335
@.str.7 = private unnamed_addr constant [35 x i8] c"Invalid blob length or vrl length\0A\00", align 1, !dbg !340
@.str.8 = private unnamed_addr constant [14 x i8] c"No vrl found\0A\00", align 1, !dbg !345
@.str.9 = private unnamed_addr constant [24 x i8] c"Revoked KSV count is 0\0A\00", align 1, !dbg !350
@.str.10 = private unnamed_addr constant [15 x i8] c"Out of Memory\0A\00", align 1, !dbg !355
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.11 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !360
@.str.12 = private unnamed_addr constant [27 x i8] c"vrl: %d, Revoked KSVs: %d\0A\00", align 1, !dbg !362
@.str.13 = private unnamed_addr constant [18 x i8] c"Revoked KSVs: %d\0A\00", align 1, !dbg !367
@.str.14 = private unnamed_addr constant [36 x i8] c"\09%#02x, %#02x, %#02x, %#02x, %#02x\0A\00", align 1, !dbg !369
@.str.15 = private unnamed_addr constant [10 x i8] c"Undesired\00", align 1, !dbg !374
@.str.16 = private unnamed_addr constant [8 x i8] c"Desired\00", align 1, !dbg !376
@.str.17 = private unnamed_addr constant [8 x i8] c"Enabled\00", align 1, !dbg !381
@.str.18 = private unnamed_addr constant [11 x i8] c"HDCP Type0\00", align 1, !dbg !393
@.str.19 = private unnamed_addr constant [11 x i8] c"HDCP Type1\00", align 1, !dbg !398
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_drm_hdcp_check_ksvs_revoked305, ptr @__UNIQUE_ID___addressable_drm_connector_attach_content_protection_property306, ptr @__UNIQUE_ID___addressable_drm_hdcp_update_content_protection307], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_hdcp_check_ksvs_revoked(ptr noundef %drm_dev, ptr noundef %ksvs, i32 noundef %ksv_count) #0 align 16 !dbg !414 {
entry:
  %retval = alloca i32, align 4
  %drm_dev.addr = alloca ptr, align 8
  %ksvs.addr = alloca ptr, align 8
  %ksv_count.addr = alloca i32, align 4
  %revoked_ksv_cnt = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %revoked_ksv_list = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drm_dev, ptr %drm_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drm_dev.addr, metadata !5076, metadata !DIExpression()), !dbg !5084
  store ptr %ksvs, ptr %ksvs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ksvs.addr, metadata !5077, metadata !DIExpression()), !dbg !5085
  store i32 %ksv_count, ptr %ksv_count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ksv_count.addr, metadata !5078, metadata !DIExpression()), !dbg !5086
  call void @llvm.lifetime.start.p0(i64 4, ptr %revoked_ksv_cnt) #14, !dbg !5087
  call void @llvm.dbg.declare(metadata ptr %revoked_ksv_cnt, metadata !5079, metadata !DIExpression()), !dbg !5088
  store i32 0, ptr %revoked_ksv_cnt, align 4, !dbg !5088
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !5087
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5080, metadata !DIExpression()), !dbg !5089
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #14, !dbg !5087
  call void @llvm.dbg.declare(metadata ptr %j, metadata !5081, metadata !DIExpression()), !dbg !5090
  call void @llvm.lifetime.start.p0(i64 8, ptr %revoked_ksv_list) #14, !dbg !5091
  call void @llvm.dbg.declare(metadata ptr %revoked_ksv_list, metadata !5082, metadata !DIExpression()), !dbg !5092
  store ptr null, ptr %revoked_ksv_list, align 8, !dbg !5092
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !5093
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5083, metadata !DIExpression()), !dbg !5094
  store i32 0, ptr %ret, align 4, !dbg !5094
  %0 = load ptr, ptr %drm_dev.addr, align 8, !dbg !5095
  %call = call i32 @drm_hdcp_request_srm(ptr noundef %0, ptr noundef %revoked_ksv_list, ptr noundef %revoked_ksv_cnt) #15, !dbg !5096
  store i32 %call, ptr %ret, align 4, !dbg !5097
  %1 = load i32, ptr %ret, align 4, !dbg !5098
  %tobool = icmp ne i32 %1, 0, !dbg !5098
  br i1 %tobool, label %if.then, label %if.end, !dbg !5100

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !5101
  store i32 %2, ptr %retval, align 4, !dbg !5102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5102

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !5103
  br label %for.cond, !dbg !5105

for.cond:                                         ; preds = %for.inc15, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !5106
  %4 = load i32, ptr %revoked_ksv_cnt, align 4, !dbg !5108
  %cmp = icmp ult i32 %3, %4, !dbg !5109
  br i1 %cmp, label %for.body, label %for.end17, !dbg !5110

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !dbg !5111
  br label %for.cond1, !dbg !5113

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %j, align 4, !dbg !5114
  %6 = load i32, ptr %ksv_count.addr, align 4, !dbg !5116
  %cmp2 = icmp ult i32 %5, %6, !dbg !5117
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !5118

for.body3:                                        ; preds = %for.cond1
  %7 = load ptr, ptr %ksvs.addr, align 8, !dbg !5119
  %8 = load i32, ptr %j, align 4, !dbg !5121
  %mul = mul i32 %8, 5, !dbg !5122
  %idxprom = zext i32 %mul to i64, !dbg !5119
  %arrayidx = getelementptr i8, ptr %7, i64 %idxprom, !dbg !5119
  %9 = load ptr, ptr %revoked_ksv_list, align 8, !dbg !5123
  %10 = load i32, ptr %i, align 4, !dbg !5124
  %mul4 = mul i32 %10, 5, !dbg !5125
  %idxprom5 = zext i32 %mul4 to i64, !dbg !5123
  %arrayidx6 = getelementptr i8, ptr %9, i64 %idxprom5, !dbg !5123
  %call7 = call i32 @memcmp(ptr noundef %arrayidx, ptr noundef %arrayidx6, i64 noundef 5) #15, !dbg !5126
  %tobool8 = icmp ne i32 %call7, 0, !dbg !5126
  br i1 %tobool8, label %if.end13, label %if.then9, !dbg !5127

if.then9:                                         ; preds = %for.body3
  call void (ptr, i32, ptr, ...) @___drm_dbg(ptr noundef null, i32 noundef 0, ptr noundef @.str) #15, !dbg !5128
  %11 = load ptr, ptr %ksvs.addr, align 8, !dbg !5130
  %12 = load i32, ptr %j, align 4, !dbg !5131
  %mul10 = mul i32 %12, 5, !dbg !5132
  %idxprom11 = zext i32 %mul10 to i64, !dbg !5130
  %arrayidx12 = getelementptr i8, ptr %11, i64 %idxprom11, !dbg !5130
  call void @drm_hdcp_print_ksv(ptr noundef %arrayidx12) #15, !dbg !5133
  %13 = load i32, ptr %ret, align 4, !dbg !5134
  %inc = add i32 %13, 1, !dbg !5134
  store i32 %inc, ptr %ret, align 4, !dbg !5134
  br label %if.end13, !dbg !5135

if.end13:                                         ; preds = %if.then9, %for.body3
  br label %for.inc, !dbg !5136

for.inc:                                          ; preds = %if.end13
  %14 = load i32, ptr %j, align 4, !dbg !5137
  %inc14 = add i32 %14, 1, !dbg !5137
  store i32 %inc14, ptr %j, align 4, !dbg !5137
  br label %for.cond1, !dbg !5138, !llvm.loop !5139

for.end:                                          ; preds = %for.cond1
  br label %for.inc15, !dbg !5140

for.inc15:                                        ; preds = %for.end
  %15 = load i32, ptr %i, align 4, !dbg !5143
  %inc16 = add i32 %15, 1, !dbg !5143
  store i32 %inc16, ptr %i, align 4, !dbg !5143
  br label %for.cond, !dbg !5144, !llvm.loop !5145

for.end17:                                        ; preds = %for.cond
  %16 = load ptr, ptr %revoked_ksv_list, align 8, !dbg !5147
  call void @kfree(ptr noundef %16) #15, !dbg !5148
  %17 = load i32, ptr %ret, align 4, !dbg !5149
  store i32 %17, ptr %retval, align 4, !dbg !5150
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5150

cleanup:                                          ; preds = %for.end17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !5151
  call void @llvm.lifetime.end.p0(i64 8, ptr %revoked_ksv_list) #14, !dbg !5151
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #14, !dbg !5151
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !5151
  call void @llvm.lifetime.end.p0(i64 4, ptr %revoked_ksv_cnt) #14, !dbg !5151
  %18 = load i32, ptr %retval, align 4, !dbg !5151
  ret i32 %18, !dbg !5151
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_hdcp_request_srm(ptr noundef %drm_dev, ptr noundef %revoked_ksv_list, ptr noundef %revoked_ksv_cnt) #0 align 16 !dbg !5152 {
entry:
  %drm_dev.addr = alloca ptr, align 8
  %revoked_ksv_list.addr = alloca ptr, align 8
  %revoked_ksv_cnt.addr = alloca ptr, align 8
  %fw_name = alloca [36 x i8], align 16
  %fw = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %drm_dev, ptr %drm_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drm_dev.addr, metadata !5157, metadata !DIExpression()), !dbg !5174
  store ptr %revoked_ksv_list, ptr %revoked_ksv_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %revoked_ksv_list.addr, metadata !5158, metadata !DIExpression()), !dbg !5175
  store ptr %revoked_ksv_cnt, ptr %revoked_ksv_cnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %revoked_ksv_cnt.addr, metadata !5159, metadata !DIExpression()), !dbg !5176
  call void @llvm.lifetime.start.p0(i64 36, ptr %fw_name) #14, !dbg !5177
  call void @llvm.dbg.declare(metadata ptr %fw_name, metadata !5160, metadata !DIExpression()), !dbg !5178
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %fw_name, ptr align 16 @__const.drm_hdcp_request_srm.fw_name, i64 36, i1 false), !dbg !5178
  call void @llvm.lifetime.start.p0(i64 8, ptr %fw) #14, !dbg !5179
  call void @llvm.dbg.declare(metadata ptr %fw, metadata !5161, metadata !DIExpression()), !dbg !5180
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !5181
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5172, metadata !DIExpression()), !dbg !5182
  %arraydecay = getelementptr inbounds [36 x i8], ptr %fw_name, i64 0, i64 0, !dbg !5183
  %0 = load ptr, ptr %drm_dev.addr, align 8, !dbg !5184
  %dev = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2, !dbg !5185
  %1 = load ptr, ptr %dev, align 8, !dbg !5185
  %call = call i32 @request_firmware_direct(ptr noundef %fw, ptr noundef %arraydecay, ptr noundef %1) #15, !dbg !5186
  store i32 %call, ptr %ret, align 4, !dbg !5187
  %2 = load i32, ptr %ret, align 4, !dbg !5188
  %cmp = icmp slt i32 %2, 0, !dbg !5190
  br i1 %cmp, label %if.then, label %if.end, !dbg !5191

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %revoked_ksv_cnt.addr, align 8, !dbg !5192
  store i32 0, ptr %3, align 4, !dbg !5194
  %4 = load ptr, ptr %revoked_ksv_list.addr, align 8, !dbg !5195
  store ptr null, ptr %4, align 8, !dbg !5196
  store i32 0, ptr %ret, align 4, !dbg !5197
  br label %exit, !dbg !5198

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %fw, align 8, !dbg !5199
  %size = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 0, !dbg !5201
  %6 = load i64, ptr %size, align 8, !dbg !5201
  %tobool = icmp ne i64 %6, 0, !dbg !5199
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !5202

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %fw, align 8, !dbg !5203
  %data = getelementptr inbounds %struct.firmware, ptr %7, i32 0, i32 1, !dbg !5204
  %8 = load ptr, ptr %data, align 8, !dbg !5204
  %tobool1 = icmp ne ptr %8, null, !dbg !5203
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !5205

if.then2:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %fw, align 8, !dbg !5206
  %data3 = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1, !dbg !5207
  %10 = load ptr, ptr %data3, align 8, !dbg !5207
  %11 = load ptr, ptr %fw, align 8, !dbg !5208
  %size4 = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 0, !dbg !5209
  %12 = load i64, ptr %size4, align 8, !dbg !5209
  %13 = load ptr, ptr %revoked_ksv_list.addr, align 8, !dbg !5210
  %14 = load ptr, ptr %revoked_ksv_cnt.addr, align 8, !dbg !5211
  %call5 = call i32 @drm_hdcp_srm_update(ptr noundef %10, i64 noundef %12, ptr noundef %13, ptr noundef %14) #15, !dbg !5212
  store i32 %call5, ptr %ret, align 4, !dbg !5213
  br label %if.end6, !dbg !5214

if.end6:                                          ; preds = %if.then2, %land.lhs.true, %if.end
  br label %exit, !dbg !5204

exit:                                             ; preds = %if.end6, %if.then
  call void @llvm.dbg.label(metadata !5173), !dbg !5215
  %15 = load ptr, ptr %fw, align 8, !dbg !5216
  call void @release_firmware(ptr noundef %15) #15, !dbg !5217
  %16 = load i32, ptr %ret, align 4, !dbg !5218
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !5219
  call void @llvm.lifetime.end.p0(i64 8, ptr %fw) #14, !dbg !5219
  call void @llvm.lifetime.end.p0(i64 36, ptr %fw_name) #14, !dbg !5219
  ret i32 %16, !dbg !5220
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5221 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5225 dso_local void @___drm_dbg(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_hdcp_print_ksv(ptr noundef %ksv) #4 align 16 !dbg !5261 {
entry:
  %ksv.addr = alloca ptr, align 8
  store ptr %ksv, ptr %ksv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ksv.addr, metadata !5265, metadata !DIExpression()), !dbg !5266
  %0 = load ptr, ptr %ksv.addr, align 8, !dbg !5267
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !5267
  %1 = load i8, ptr %arrayidx, align 1, !dbg !5267
  %conv = zext i8 %1 to i32, !dbg !5267
  %2 = load ptr, ptr %ksv.addr, align 8, !dbg !5267
  %arrayidx1 = getelementptr i8, ptr %2, i64 1, !dbg !5267
  %3 = load i8, ptr %arrayidx1, align 1, !dbg !5267
  %conv2 = zext i8 %3 to i32, !dbg !5267
  %4 = load ptr, ptr %ksv.addr, align 8, !dbg !5267
  %arrayidx3 = getelementptr i8, ptr %4, i64 2, !dbg !5267
  %5 = load i8, ptr %arrayidx3, align 1, !dbg !5267
  %conv4 = zext i8 %5 to i32, !dbg !5267
  %6 = load ptr, ptr %ksv.addr, align 8, !dbg !5267
  %arrayidx5 = getelementptr i8, ptr %6, i64 3, !dbg !5267
  %7 = load i8, ptr %arrayidx5, align 1, !dbg !5267
  %conv6 = zext i8 %7 to i32, !dbg !5267
  %8 = load ptr, ptr %ksv.addr, align 8, !dbg !5267
  %arrayidx7 = getelementptr i8, ptr %8, i64 4, !dbg !5267
  %9 = load i8, ptr %arrayidx7, align 1, !dbg !5267
  %conv8 = zext i8 %9 to i32, !dbg !5267
  call void (ptr, i32, ptr, ...) @___drm_dbg(ptr noundef null, i32 noundef 0, ptr noundef @.str.14, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8) #15, !dbg !5267
  ret void, !dbg !5268
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5269 dso_local void @kfree(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_get_content_protection_name(i32 noundef %val) #0 align 16 !dbg !5272 {
entry:
  %retval = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5276, metadata !DIExpression()), !dbg !5278
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !5278
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5277, metadata !DIExpression()), !dbg !5278
  store i32 0, ptr %i, align 4, !dbg !5279
  br label %for.cond, !dbg !5279

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5281
  %conv = sext i32 %0 to i64, !dbg !5281
  %cmp = icmp ult i64 %conv, 3, !dbg !5281
  br i1 %cmp, label %for.body, label %for.end, !dbg !5279

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !5283
  %idxprom = sext i32 %1 to i64, !dbg !5283
  %arrayidx = getelementptr [3 x %struct.drm_prop_enum_list], ptr @drm_cp_enum_list, i64 0, i64 %idxprom, !dbg !5283
  %type = getelementptr inbounds %struct.drm_prop_enum_list, ptr %arrayidx, i32 0, i32 0, !dbg !5283
  %2 = load i32, ptr %type, align 16, !dbg !5283
  %3 = load i32, ptr %val.addr, align 4, !dbg !5283
  %cmp2 = icmp eq i32 %2, %3, !dbg !5283
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5286

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !5283
  %idxprom4 = sext i32 %4 to i64, !dbg !5283
  %arrayidx5 = getelementptr [3 x %struct.drm_prop_enum_list], ptr @drm_cp_enum_list, i64 0, i64 %idxprom4, !dbg !5283
  %name = getelementptr inbounds %struct.drm_prop_enum_list, ptr %arrayidx5, i32 0, i32 1, !dbg !5283
  %5 = load ptr, ptr %name, align 8, !dbg !5283
  store ptr %5, ptr %retval, align 8, !dbg !5283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5283

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5286

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4, !dbg !5281
  %inc = add i32 %6, 1, !dbg !5281
  store i32 %inc, ptr %i, align 4, !dbg !5281
  br label %for.cond, !dbg !5281, !llvm.loop !5287

for.end:                                          ; preds = %for.cond
  store ptr @.str.1, ptr %retval, align 8, !dbg !5278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5278

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !5278
  %7 = load ptr, ptr %retval, align 8, !dbg !5278
  ret ptr %7, !dbg !5278
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_get_hdcp_content_type_name(i32 noundef %val) #0 align 16 !dbg !5288 {
entry:
  %retval = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5290, metadata !DIExpression()), !dbg !5292
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !5292
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5291, metadata !DIExpression()), !dbg !5292
  store i32 0, ptr %i, align 4, !dbg !5293
  br label %for.cond, !dbg !5293

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5295
  %conv = sext i32 %0 to i64, !dbg !5295
  %cmp = icmp ult i64 %conv, 2, !dbg !5295
  br i1 %cmp, label %for.body, label %for.end, !dbg !5293

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !5297
  %idxprom = sext i32 %1 to i64, !dbg !5297
  %arrayidx = getelementptr [2 x %struct.drm_prop_enum_list], ptr @drm_hdcp_content_type_enum_list, i64 0, i64 %idxprom, !dbg !5297
  %type = getelementptr inbounds %struct.drm_prop_enum_list, ptr %arrayidx, i32 0, i32 0, !dbg !5297
  %2 = load i32, ptr %type, align 16, !dbg !5297
  %3 = load i32, ptr %val.addr, align 4, !dbg !5297
  %cmp2 = icmp eq i32 %2, %3, !dbg !5297
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5300

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !5297
  %idxprom4 = sext i32 %4 to i64, !dbg !5297
  %arrayidx5 = getelementptr [2 x %struct.drm_prop_enum_list], ptr @drm_hdcp_content_type_enum_list, i64 0, i64 %idxprom4, !dbg !5297
  %name = getelementptr inbounds %struct.drm_prop_enum_list, ptr %arrayidx5, i32 0, i32 1, !dbg !5297
  %5 = load ptr, ptr %name, align 8, !dbg !5297
  store ptr %5, ptr %retval, align 8, !dbg !5297
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5297

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5300

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4, !dbg !5295
  %inc = add i32 %6, 1, !dbg !5295
  store i32 %inc, ptr %i, align 4, !dbg !5295
  br label %for.cond, !dbg !5295, !llvm.loop !5301

for.end:                                          ; preds = %for.cond
  store ptr @.str.1, ptr %retval, align 8, !dbg !5292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5292

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !5292
  %7 = load ptr, ptr %retval, align 8, !dbg !5292
  ret ptr %7, !dbg !5292
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_connector_attach_content_protection_property(ptr noundef %connector, i1 noundef zeroext %hdcp_content_type) #0 align 16 !dbg !5302 {
entry:
  %retval = alloca i32, align 4
  %connector.addr = alloca ptr, align 8
  %hdcp_content_type.addr = alloca i8, align 1
  %dev = alloca ptr, align 8
  %prop = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %connector, ptr %connector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %connector.addr, metadata !5674, metadata !DIExpression()), !dbg !5678
  %frombool = zext i1 %hdcp_content_type to i8
  store i8 %frombool, ptr %hdcp_content_type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %hdcp_content_type.addr, metadata !5675, metadata !DIExpression()), !dbg !5679
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !5680
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5676, metadata !DIExpression()), !dbg !5681
  %0 = load ptr, ptr %connector.addr, align 8, !dbg !5682
  %dev1 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 0, !dbg !5683
  %1 = load ptr, ptr %dev1, align 8, !dbg !5683
  store ptr %1, ptr %dev, align 8, !dbg !5681
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop) #14, !dbg !5684
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !5677, metadata !DIExpression()), !dbg !5685
  %2 = load ptr, ptr %dev, align 8, !dbg !5686
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 31, !dbg !5687
  %content_protection_property = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config, i32 0, i32 89, !dbg !5688
  %3 = load ptr, ptr %content_protection_property, align 8, !dbg !5688
  store ptr %3, ptr %prop, align 8, !dbg !5685
  %4 = load ptr, ptr %prop, align 8, !dbg !5689
  %tobool = icmp ne ptr %4, null, !dbg !5689
  br i1 %tobool, label %if.end, label %if.then, !dbg !5691

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %dev, align 8, !dbg !5692
  %call = call ptr @drm_property_create_enum(ptr noundef %5, i32 noundef 0, ptr noundef @.str.2, ptr noundef @drm_cp_enum_list, i32 noundef 3) #15, !dbg !5693
  store ptr %call, ptr %prop, align 8, !dbg !5694
  br label %if.end, !dbg !5695

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %prop, align 8, !dbg !5696
  %tobool2 = icmp ne ptr %6, null, !dbg !5696
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5698

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !5699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5699

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %connector.addr, align 8, !dbg !5700
  %base = getelementptr inbounds %struct.drm_connector, ptr %7, i32 0, i32 6, !dbg !5701
  %8 = load ptr, ptr %prop, align 8, !dbg !5702
  call void @drm_object_attach_property(ptr noundef %base, ptr noundef %8, i64 noundef 0) #15, !dbg !5703
  %9 = load ptr, ptr %prop, align 8, !dbg !5704
  %10 = load ptr, ptr %dev, align 8, !dbg !5705
  %mode_config5 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 31, !dbg !5706
  %content_protection_property6 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config5, i32 0, i32 89, !dbg !5707
  store ptr %9, ptr %content_protection_property6, align 8, !dbg !5708
  %11 = load i8, ptr %hdcp_content_type.addr, align 1, !dbg !5709, !range !5711, !noundef !1140
  %tobool7 = trunc i8 %11 to i1, !dbg !5709
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !5712

if.then8:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4, !dbg !5713
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5713

if.end9:                                          ; preds = %if.end4
  %12 = load ptr, ptr %dev, align 8, !dbg !5714
  %mode_config10 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 31, !dbg !5715
  %hdcp_content_type_property = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config10, i32 0, i32 90, !dbg !5716
  %13 = load ptr, ptr %hdcp_content_type_property, align 8, !dbg !5716
  store ptr %13, ptr %prop, align 8, !dbg !5717
  %14 = load ptr, ptr %prop, align 8, !dbg !5718
  %tobool11 = icmp ne ptr %14, null, !dbg !5718
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !5720

if.then12:                                        ; preds = %if.end9
  %15 = load ptr, ptr %dev, align 8, !dbg !5721
  %call13 = call ptr @drm_property_create_enum(ptr noundef %15, i32 noundef 0, ptr noundef @.str.3, ptr noundef @drm_hdcp_content_type_enum_list, i32 noundef 2) #15, !dbg !5722
  store ptr %call13, ptr %prop, align 8, !dbg !5723
  br label %if.end14, !dbg !5724

if.end14:                                         ; preds = %if.then12, %if.end9
  %16 = load ptr, ptr %prop, align 8, !dbg !5725
  %tobool15 = icmp ne ptr %16, null, !dbg !5725
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !5727

if.then16:                                        ; preds = %if.end14
  store i32 -12, ptr %retval, align 4, !dbg !5728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5728

if.end17:                                         ; preds = %if.end14
  %17 = load ptr, ptr %connector.addr, align 8, !dbg !5729
  %base18 = getelementptr inbounds %struct.drm_connector, ptr %17, i32 0, i32 6, !dbg !5730
  %18 = load ptr, ptr %prop, align 8, !dbg !5731
  call void @drm_object_attach_property(ptr noundef %base18, ptr noundef %18, i64 noundef 0) #15, !dbg !5732
  %19 = load ptr, ptr %prop, align 8, !dbg !5733
  %20 = load ptr, ptr %dev, align 8, !dbg !5734
  %mode_config19 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 31, !dbg !5735
  %hdcp_content_type_property20 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config19, i32 0, i32 90, !dbg !5736
  store ptr %19, ptr %hdcp_content_type_property20, align 8, !dbg !5737
  store i32 0, ptr %retval, align 4, !dbg !5738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5738

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then8, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop) #14, !dbg !5739
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !5739
  %21 = load i32, ptr %retval, align 4, !dbg !5739
  ret i32 %21, !dbg !5739
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5740 dso_local ptr @drm_property_create_enum(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5745 dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_hdcp_update_content_protection(ptr noundef %connector, i64 noundef %val) #0 align 16 !dbg !5749 {
entry:
  %connector.addr = alloca ptr, align 8
  %val.addr = alloca i64, align 8
  %dev = alloca ptr, align 8
  %state = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %connector, ptr %connector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %connector.addr, metadata !5753, metadata !DIExpression()), !dbg !5762
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5754, metadata !DIExpression()), !dbg !5763
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !5764
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5755, metadata !DIExpression()), !dbg !5765
  %0 = load ptr, ptr %connector.addr, align 8, !dbg !5766
  %dev1 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 0, !dbg !5767
  %1 = load ptr, ptr %dev1, align 8, !dbg !5767
  store ptr %1, ptr %dev, align 8, !dbg !5765
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #14, !dbg !5768
  call void @llvm.dbg.declare(metadata ptr %state, metadata !5756, metadata !DIExpression()), !dbg !5769
  %2 = load ptr, ptr %connector.addr, align 8, !dbg !5770
  %state2 = getelementptr inbounds %struct.drm_connector, ptr %2, i32 0, i32 54, !dbg !5771
  %3 = load ptr, ptr %state2, align 8, !dbg !5771
  store ptr %3, ptr %state, align 8, !dbg !5769
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5772
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5757, metadata !DIExpression()), !dbg !5772
  %4 = load ptr, ptr %dev, align 8, !dbg !5772
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 31, !dbg !5772
  %connection_mutex = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config, i32 0, i32 1, !dbg !5772
  %call = call zeroext i1 @drm_modeset_is_locked(ptr noundef %connection_mutex) #15, !dbg !5772
  %lnot = xor i1 %call, true, !dbg !5772
  %lnot3 = xor i1 %lnot, true, !dbg !5772
  %lnot4 = xor i1 %lnot3, true, !dbg !5772
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5772
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5772
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5773
  %tobool = icmp ne i32 %5, 0, !dbg !5773
  %lnot5 = xor i1 %tobool, true, !dbg !5773
  %lnot7 = xor i1 %lnot5, true, !dbg !5773
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5773
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5773
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5773
  %tobool9 = icmp ne i64 %expval, 0, !dbg !5773
  br i1 %tobool9, label %if.then, label %if.end, !dbg !5772

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5773

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !5774
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5759, metadata !DIExpression()), !dbg !5774
  store i32 2305, ptr %__flags, align 4, !dbg !5774
  br label %do.body10, !dbg !5774

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !5775

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !5775

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !5774

do.body11:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !5777
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 413, i32 %6, i64 12) #14, !dbg !5777, !srcloc !5779
  br label %do.cond12, !dbg !5777

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5777

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5774

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !5780

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5780

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !5773
  br label %do.cond17, !dbg !5774

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5774

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !5774

if.end:                                           ; preds = %do.end18, %entry
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5772
  %tobool19 = icmp ne i32 %7, 0, !dbg !5772
  %lnot20 = xor i1 %tobool19, true, !dbg !5772
  %lnot22 = xor i1 %lnot20, true, !dbg !5772
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5772
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5772
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5772
  store i64 %expval25, ptr %tmp, align 8, !dbg !5773
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5782
  %8 = load i64, ptr %tmp, align 8, !dbg !5772
  %9 = load ptr, ptr %state, align 8, !dbg !5783
  %content_protection = getelementptr inbounds %struct.drm_connector_state, ptr %9, i32 0, i32 12, !dbg !5785
  %10 = load i32, ptr %content_protection, align 4, !dbg !5785
  %conv26 = zext i32 %10 to i64, !dbg !5783
  %11 = load i64, ptr %val.addr, align 8, !dbg !5786
  %cmp = icmp eq i64 %conv26, %11, !dbg !5787
  br i1 %cmp, label %if.then28, label %if.end29, !dbg !5788

if.then28:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5789

if.end29:                                         ; preds = %if.end
  %12 = load i64, ptr %val.addr, align 8, !dbg !5790
  %conv30 = trunc i64 %12 to i32, !dbg !5790
  %13 = load ptr, ptr %state, align 8, !dbg !5791
  %content_protection31 = getelementptr inbounds %struct.drm_connector_state, ptr %13, i32 0, i32 12, !dbg !5792
  store i32 %conv30, ptr %content_protection31, align 4, !dbg !5793
  %14 = load ptr, ptr %connector.addr, align 8, !dbg !5794
  %15 = load ptr, ptr %dev, align 8, !dbg !5795
  %mode_config32 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 31, !dbg !5796
  %content_protection_property = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config32, i32 0, i32 89, !dbg !5797
  %16 = load ptr, ptr %content_protection_property, align 8, !dbg !5797
  call void @drm_sysfs_connector_property_event(ptr noundef %14, ptr noundef %16) #15, !dbg !5798
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5799
  br label %cleanup, !dbg !5799

cleanup:                                          ; preds = %if.end29, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #14, !dbg !5799
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !5799
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5799

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_modeset_is_locked(ptr noundef %lock) #4 align 16 !dbg !5800 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5804, metadata !DIExpression()), !dbg !5805
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5806
  %mutex = getelementptr inbounds %struct.drm_modeset_lock, ptr %0, i32 0, i32 0, !dbg !5807
  %call = call zeroext i1 @ww_mutex_is_locked(ptr noundef %mutex) #15, !dbg !5808
  ret i1 %call, !dbg !5809
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5810 dso_local void @drm_sysfs_connector_property_event(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5814 dso_local i32 @request_firmware_direct(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_hdcp_srm_update(ptr noundef %buf, i64 noundef %count, ptr noundef %revoked_ksv_list, ptr noundef %revoked_ksv_cnt) #0 align 16 !dbg !5818 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %revoked_ksv_list.addr = alloca ptr, align 8
  %revoked_ksv_cnt.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5822, metadata !DIExpression()), !dbg !5826
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5823, metadata !DIExpression()), !dbg !5827
  store ptr %revoked_ksv_list, ptr %revoked_ksv_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %revoked_ksv_list.addr, metadata !5824, metadata !DIExpression()), !dbg !5828
  store ptr %revoked_ksv_cnt, ptr %revoked_ksv_cnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %revoked_ksv_cnt.addr, metadata !5825, metadata !DIExpression()), !dbg !5829
  %0 = load i64, ptr %count.addr, align 8, !dbg !5830
  %cmp = icmp ult i64 %0, 5, !dbg !5832
  br i1 %cmp, label %if.then, label %if.end, !dbg !5833

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5834
  br label %return, !dbg !5834

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !5835
  %call = call zeroext i1 @is_srm_version_hdcp1(ptr noundef %1) #15, !dbg !5837
  br i1 %call, label %if.then1, label %if.else, !dbg !5838

if.then1:                                         ; preds = %if.end
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5839
  %3 = load i64, ptr %count.addr, align 8, !dbg !5840
  %4 = load ptr, ptr %revoked_ksv_list.addr, align 8, !dbg !5841
  %5 = load ptr, ptr %revoked_ksv_cnt.addr, align 8, !dbg !5842
  %call2 = call i32 @drm_hdcp_parse_hdcp1_srm(ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5) #15, !dbg !5843
  store i32 %call2, ptr %retval, align 4, !dbg !5844
  br label %return, !dbg !5844

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !5845
  %call3 = call zeroext i1 @is_srm_version_hdcp2(ptr noundef %6) #15, !dbg !5847
  br i1 %call3, label %if.then4, label %if.else6, !dbg !5848

if.then4:                                         ; preds = %if.else
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !5849
  %8 = load i64, ptr %count.addr, align 8, !dbg !5850
  %9 = load ptr, ptr %revoked_ksv_list.addr, align 8, !dbg !5851
  %10 = load ptr, ptr %revoked_ksv_cnt.addr, align 8, !dbg !5852
  %call5 = call i32 @drm_hdcp_parse_hdcp2_srm(ptr noundef %7, i64 noundef %8, ptr noundef %9, ptr noundef %10) #15, !dbg !5853
  store i32 %call5, ptr %retval, align 4, !dbg !5854
  br label %return, !dbg !5854

if.else6:                                         ; preds = %if.else
  store i32 -22, ptr %retval, align 4, !dbg !5855
  br label %return, !dbg !5855

return:                                           ; preds = %if.else6, %if.then4, %if.then1, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !5856
  ret i32 %11, !dbg !5856
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5857 dso_local void @release_firmware(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_srm_version_hdcp1(ptr noundef %buf) #4 align 16 !dbg !5860 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5864, metadata !DIExpression()), !dbg !5865
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5866
  %1 = load i8, ptr %0, align 1, !dbg !5867
  %conv = zext i8 %1 to i32, !dbg !5867
  %cmp = icmp eq i32 %conv, 128, !dbg !5868
  ret i1 %cmp, !dbg !5869
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_hdcp_parse_hdcp1_srm(ptr noundef %buf, i64 noundef %count, ptr noundef %revoked_ksv_list, ptr noundef %revoked_ksv_cnt) #0 align 16 !dbg !5870 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %revoked_ksv_list.addr = alloca ptr, align 8
  %revoked_ksv_cnt.addr = alloca ptr, align 8
  %header = alloca ptr, align 8
  %vrl_length = alloca i32, align 4
  %ksv_count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5872, metadata !DIExpression()), !dbg !5884
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5873, metadata !DIExpression()), !dbg !5885
  store ptr %revoked_ksv_list, ptr %revoked_ksv_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %revoked_ksv_list.addr, metadata !5874, metadata !DIExpression()), !dbg !5886
  store ptr %revoked_ksv_cnt, ptr %revoked_ksv_cnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %revoked_ksv_cnt.addr, metadata !5875, metadata !DIExpression()), !dbg !5887
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #14, !dbg !5888
  call void @llvm.dbg.declare(metadata ptr %header, metadata !5876, metadata !DIExpression()), !dbg !5889
  call void @llvm.lifetime.start.p0(i64 4, ptr %vrl_length) #14, !dbg !5890
  call void @llvm.dbg.declare(metadata ptr %vrl_length, metadata !5877, metadata !DIExpression()), !dbg !5891
  call void @llvm.lifetime.start.p0(i64 4, ptr %ksv_count) #14, !dbg !5890
  call void @llvm.dbg.declare(metadata ptr %ksv_count, metadata !5878, metadata !DIExpression()), !dbg !5892
  %0 = load i64, ptr %count.addr, align 8, !dbg !5893
  %cmp = icmp ult i64 %0, 48, !dbg !5895
  br i1 %cmp, label %if.then, label %if.end, !dbg !5896

if.then:                                          ; preds = %entry
  call void (ptr, ...) @__drm_err(ptr noundef @.str.5) #15, !dbg !5897
  store i32 -22, ptr %retval, align 4, !dbg !5899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5899

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !5900
  store ptr %1, ptr %header, align 8, !dbg !5901
  %2 = load ptr, ptr %header, align 8, !dbg !5902
  %srm_id = getelementptr inbounds %struct.hdcp_srm_header, ptr %2, i32 0, i32 0, !dbg !5902
  %3 = load i8, ptr %srm_id, align 1, !dbg !5902
  %conv = zext i8 %3 to i32, !dbg !5902
  %4 = load ptr, ptr %header, align 8, !dbg !5902
  %srm_version = getelementptr inbounds %struct.hdcp_srm_header, ptr %4, i32 0, i32 2, !dbg !5902
  %5 = load i16, ptr %srm_version, align 1, !dbg !5902
  %6 = call i16 @llvm.bswap.i16(i16 %5), !dbg !5902
  %conv1 = zext i16 %6 to i32, !dbg !5902
  %7 = load ptr, ptr %header, align 8, !dbg !5902
  %srm_gen_no = getelementptr inbounds %struct.hdcp_srm_header, ptr %7, i32 0, i32 3, !dbg !5902
  %8 = load i8, ptr %srm_gen_no, align 1, !dbg !5902
  %conv2 = zext i8 %8 to i32, !dbg !5902
  call void (ptr, i32, ptr, ...) @___drm_dbg(ptr noundef null, i32 noundef 0, ptr noundef @.str.6, i32 noundef %conv, i32 noundef %conv1, i32 noundef %conv2) #15, !dbg !5902
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5903
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5879, metadata !DIExpression()), !dbg !5903
  %9 = load ptr, ptr %header, align 8, !dbg !5903
  %reserved = getelementptr inbounds %struct.hdcp_srm_header, ptr %9, i32 0, i32 1, !dbg !5903
  %10 = load i8, ptr %reserved, align 1, !dbg !5903
  %tobool = icmp ne i8 %10, 0, !dbg !5903
  %lnot = xor i1 %tobool, true, !dbg !5903
  %lnot3 = xor i1 %lnot, true, !dbg !5903
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5903
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5903
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !5904
  %tobool4 = icmp ne i32 %11, 0, !dbg !5904
  %lnot5 = xor i1 %tobool4, true, !dbg !5904
  %lnot7 = xor i1 %lnot5, true, !dbg !5904
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5904
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !5904
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !5904
  %tobool10 = icmp ne i64 %expval, 0, !dbg !5904
  br i1 %tobool10, label %if.then11, label %if.end21, !dbg !5903

if.then11:                                        ; preds = %if.end
  br label %do.body, !dbg !5904

do.body:                                          ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !5905
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5881, metadata !DIExpression()), !dbg !5905
  store i32 2305, ptr %__flags, align 4, !dbg !5905
  br label %do.body12, !dbg !5905

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !5906

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !5906

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !5905

do.body13:                                        ; preds = %do.end
  %12 = load i32, ptr %__flags, align 4, !dbg !5908
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 101, i32 %12, i64 12) #14, !dbg !5908, !srcloc !5910
  br label %do.cond14, !dbg !5908

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5908

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !5905

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !5911

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5911

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !5904
  br label %do.cond19, !dbg !5905

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !5905

do.end20:                                         ; preds = %do.cond19
  br label %if.end21, !dbg !5905

if.end21:                                         ; preds = %do.end20, %if.end
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !5903
  %tobool22 = icmp ne i32 %13, 0, !dbg !5903
  %lnot23 = xor i1 %tobool22, true, !dbg !5903
  %lnot25 = xor i1 %lnot23, true, !dbg !5903
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !5903
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !5903
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !5903
  store i64 %expval28, ptr %tmp, align 8, !dbg !5904
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5913
  %14 = load i64, ptr %tmp, align 8, !dbg !5903
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !5914
  %add.ptr = getelementptr i8, ptr %15, i64 5, !dbg !5915
  store ptr %add.ptr, ptr %buf.addr, align 8, !dbg !5916
  %16 = load ptr, ptr %buf.addr, align 8, !dbg !5917
  %call = call i32 @get_vrl_length(ptr noundef %16) #15, !dbg !5918
  store i32 %call, ptr %vrl_length, align 4, !dbg !5919
  %17 = load i64, ptr %count.addr, align 8, !dbg !5920
  %18 = load i32, ptr %vrl_length, align 4, !dbg !5922
  %conv29 = zext i32 %18 to i64, !dbg !5922
  %add = add i64 5, %conv29, !dbg !5923
  %cmp30 = icmp ult i64 %17, %add, !dbg !5924
  br i1 %cmp30, label %if.then34, label %lor.lhs.false, !dbg !5925

lor.lhs.false:                                    ; preds = %if.end21
  %19 = load i32, ptr %vrl_length, align 4, !dbg !5926
  %cmp32 = icmp ult i32 %19, 43, !dbg !5927
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !5928

if.then34:                                        ; preds = %lor.lhs.false, %if.end21
  call void (ptr, ...) @__drm_err(ptr noundef @.str.7) #15, !dbg !5929
  store i32 -22, ptr %retval, align 4, !dbg !5931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5931

if.end35:                                         ; preds = %lor.lhs.false
  %20 = load i32, ptr %vrl_length, align 4, !dbg !5932
  %sub = sub i32 %20, 43, !dbg !5932
  store i32 %sub, ptr %vrl_length, align 4, !dbg !5932
  %21 = load i32, ptr %vrl_length, align 4, !dbg !5933
  %tobool36 = icmp ne i32 %21, 0, !dbg !5933
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !5935

if.then37:                                        ; preds = %if.end35
  call void (ptr, ...) @__drm_err(ptr noundef @.str.8) #15, !dbg !5936
  store i32 -22, ptr %retval, align 4, !dbg !5938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5938

if.end38:                                         ; preds = %if.end35
  %22 = load ptr, ptr %buf.addr, align 8, !dbg !5939
  %add.ptr39 = getelementptr i8, ptr %22, i64 3, !dbg !5939
  store ptr %add.ptr39, ptr %buf.addr, align 8, !dbg !5939
  %23 = load ptr, ptr %buf.addr, align 8, !dbg !5940
  %24 = load i32, ptr %vrl_length, align 4, !dbg !5941
  %call40 = call i32 @drm_hdcp_get_revoked_ksv_count(ptr noundef %23, i32 noundef %24) #15, !dbg !5942
  store i32 %call40, ptr %ksv_count, align 4, !dbg !5943
  %25 = load i32, ptr %ksv_count, align 4, !dbg !5944
  %tobool41 = icmp ne i32 %25, 0, !dbg !5944
  br i1 %tobool41, label %if.end43, label %if.then42, !dbg !5946

if.then42:                                        ; preds = %if.end38
  call void (ptr, i32, ptr, ...) @___drm_dbg(ptr noundef null, i32 noundef 0, ptr noundef @.str.9) #15, !dbg !5947
  store i32 0, ptr %retval, align 4, !dbg !5949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5949

if.end43:                                         ; preds = %if.end38
  %26 = load i32, ptr %ksv_count, align 4, !dbg !5950
  %conv44 = zext i32 %26 to i64, !dbg !5950
  %call45 = call noalias ptr @kcalloc(i64 noundef %conv44, i64 noundef 5, i32 noundef 3264) #16, !dbg !5951
  %27 = load ptr, ptr %revoked_ksv_list.addr, align 8, !dbg !5952
  store ptr %call45, ptr %27, align 8, !dbg !5953
  %28 = load ptr, ptr %revoked_ksv_list.addr, align 8, !dbg !5954
  %29 = load ptr, ptr %28, align 8, !dbg !5956
  %tobool46 = icmp ne ptr %29, null, !dbg !5956
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !5957

if.then47:                                        ; preds = %if.end43
  call void (ptr, ...) @__drm_err(ptr noundef @.str.10) #15, !dbg !5958
  store i32 -12, ptr %retval, align 4, !dbg !5960
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5960

if.end48:                                         ; preds = %if.end43
  %30 = load ptr, ptr %buf.addr, align 8, !dbg !5961
  %31 = load ptr, ptr %revoked_ksv_list.addr, align 8, !dbg !5963
  %32 = load i32, ptr %vrl_length, align 4, !dbg !5964
  %call49 = call i32 @drm_hdcp_get_revoked_ksvs(ptr noundef %30, ptr noundef %31, i32 noundef %32) #15, !dbg !5965
  %33 = load i32, ptr %ksv_count, align 4, !dbg !5966
  %cmp50 = icmp ne i32 %call49, %33, !dbg !5967
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !5968

if.then52:                                        ; preds = %if.end48
  %34 = load ptr, ptr %revoked_ksv_cnt.addr, align 8, !dbg !5969
  store i32 0, ptr %34, align 4, !dbg !5971
  %35 = load ptr, ptr %revoked_ksv_list.addr, align 8, !dbg !5972
  %36 = load ptr, ptr %35, align 8, !dbg !5973
  call void @kfree(ptr noundef %36) #15, !dbg !5974
  store i32 -22, ptr %retval, align 4, !dbg !5975
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5975

if.end53:                                         ; preds = %if.end48
  %37 = load i32, ptr %ksv_count, align 4, !dbg !5976
  %38 = load ptr, ptr %revoked_ksv_cnt.addr, align 8, !dbg !5977
  store i32 %37, ptr %38, align 4, !dbg !5978
  store i32 0, ptr %retval, align 4, !dbg !5979
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5979

cleanup:                                          ; preds = %if.end53, %if.then52, %if.then47, %if.then42, %if.then37, %if.then34, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ksv_count) #14, !dbg !5980
  call void @llvm.lifetime.end.p0(i64 4, ptr %vrl_length) #14, !dbg !5980
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #14, !dbg !5980
  %39 = load i32, ptr %retval, align 4, !dbg !5980
  ret i32 %39, !dbg !5980
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_srm_version_hdcp2(ptr noundef %buf) #4 align 16 !dbg !5981 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5983, metadata !DIExpression()), !dbg !5984
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5985
  %1 = load i8, ptr %0, align 1, !dbg !5986
  %conv = zext i8 %1 to i32, !dbg !5986
  %cmp = icmp eq i32 %conv, 145, !dbg !5987
  ret i1 %cmp, !dbg !5988
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_hdcp_parse_hdcp2_srm(ptr noundef %buf, i64 noundef %count, ptr noundef %revoked_ksv_list, ptr noundef %revoked_ksv_cnt) #0 align 16 !dbg !5989 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %revoked_ksv_list.addr = alloca ptr, align 8
  %revoked_ksv_cnt.addr = alloca ptr, align 8
  %header = alloca ptr, align 8
  %vrl_length = alloca i32, align 4
  %ksv_count = alloca i32, align 4
  %ksv_sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5991, metadata !DIExpression()), !dbg !5999
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5992, metadata !DIExpression()), !dbg !6000
  store ptr %revoked_ksv_list, ptr %revoked_ksv_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %revoked_ksv_list.addr, metadata !5993, metadata !DIExpression()), !dbg !6001
  store ptr %revoked_ksv_cnt, ptr %revoked_ksv_cnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %revoked_ksv_cnt.addr, metadata !5994, metadata !DIExpression()), !dbg !6002
  call void @llvm.lifetime.start.p0(i64 8, ptr %header) #14, !dbg !6003
  call void @llvm.dbg.declare(metadata ptr %header, metadata !5995, metadata !DIExpression()), !dbg !6004
  call void @llvm.lifetime.start.p0(i64 4, ptr %vrl_length) #14, !dbg !6005
  call void @llvm.dbg.declare(metadata ptr %vrl_length, metadata !5996, metadata !DIExpression()), !dbg !6006
  call void @llvm.lifetime.start.p0(i64 4, ptr %ksv_count) #14, !dbg !6005
  call void @llvm.dbg.declare(metadata ptr %ksv_count, metadata !5997, metadata !DIExpression()), !dbg !6007
  call void @llvm.lifetime.start.p0(i64 4, ptr %ksv_sz) #14, !dbg !6005
  call void @llvm.dbg.declare(metadata ptr %ksv_sz, metadata !5998, metadata !DIExpression()), !dbg !6008
  %0 = load i64, ptr %count.addr, align 8, !dbg !6009
  %cmp = icmp ult i64 %0, 392, !dbg !6011
  br i1 %cmp, label %if.then, label %if.end, !dbg !6012

if.then:                                          ; preds = %entry
  call void (ptr, ...) @__drm_err(ptr noundef @.str.5) #15, !dbg !6013
  store i32 -22, ptr %retval, align 4, !dbg !6015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6015

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !6016
  store ptr %1, ptr %header, align 8, !dbg !6017
  %2 = load ptr, ptr %header, align 8, !dbg !6018
  %srm_id = getelementptr inbounds %struct.hdcp_srm_header, ptr %2, i32 0, i32 0, !dbg !6018
  %3 = load i8, ptr %srm_id, align 1, !dbg !6018
  %conv = zext i8 %3 to i32, !dbg !6018
  %and = and i32 %conv, 240, !dbg !6018
  %4 = load ptr, ptr %header, align 8, !dbg !6018
  %srm_version = getelementptr inbounds %struct.hdcp_srm_header, ptr %4, i32 0, i32 2, !dbg !6018
  %5 = load i16, ptr %srm_version, align 1, !dbg !6018
  %6 = call i16 @llvm.bswap.i16(i16 %5), !dbg !6018
  %conv1 = zext i16 %6 to i32, !dbg !6018
  %7 = load ptr, ptr %header, align 8, !dbg !6018
  %srm_gen_no = getelementptr inbounds %struct.hdcp_srm_header, ptr %7, i32 0, i32 3, !dbg !6018
  %8 = load i8, ptr %srm_gen_no, align 1, !dbg !6018
  %conv2 = zext i8 %8 to i32, !dbg !6018
  call void (ptr, i32, ptr, ...) @___drm_dbg(ptr noundef null, i32 noundef 0, ptr noundef @.str.6, i32 noundef %and, i32 noundef %conv1, i32 noundef %conv2) #15, !dbg !6018
  %9 = load ptr, ptr %header, align 8, !dbg !6019
  %reserved = getelementptr inbounds %struct.hdcp_srm_header, ptr %9, i32 0, i32 1, !dbg !6021
  %10 = load i8, ptr %reserved, align 1, !dbg !6021
  %tobool = icmp ne i8 %10, 0, !dbg !6019
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !6022

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6023
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6023

if.end4:                                          ; preds = %if.end
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !6024
  %add.ptr = getelementptr i8, ptr %11, i64 5, !dbg !6025
  store ptr %add.ptr, ptr %buf.addr, align 8, !dbg !6026
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !6027
  %call = call i32 @get_vrl_length(ptr noundef %12) #15, !dbg !6028
  store i32 %call, ptr %vrl_length, align 4, !dbg !6029
  %13 = load i64, ptr %count.addr, align 8, !dbg !6030
  %14 = load i32, ptr %vrl_length, align 4, !dbg !6032
  %conv5 = zext i32 %14 to i64, !dbg !6032
  %add = add i64 5, %conv5, !dbg !6033
  %cmp6 = icmp ult i64 %13, %add, !dbg !6034
  br i1 %cmp6, label %if.then10, label %lor.lhs.false, !dbg !6035

lor.lhs.false:                                    ; preds = %if.end4
  %15 = load i32, ptr %vrl_length, align 4, !dbg !6036
  %cmp8 = icmp ult i32 %15, 387, !dbg !6037
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !6038

if.then10:                                        ; preds = %lor.lhs.false, %if.end4
  call void (ptr, ...) @__drm_err(ptr noundef @.str.7) #15, !dbg !6039
  store i32 -22, ptr %retval, align 4, !dbg !6041
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6041

if.end11:                                         ; preds = %lor.lhs.false
  %16 = load i32, ptr %vrl_length, align 4, !dbg !6042
  %sub = sub i32 %16, 387, !dbg !6042
  store i32 %sub, ptr %vrl_length, align 4, !dbg !6042
  %17 = load i32, ptr %vrl_length, align 4, !dbg !6043
  %tobool12 = icmp ne i32 %17, 0, !dbg !6043
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !6045

if.then13:                                        ; preds = %if.end11
  call void (ptr, ...) @__drm_err(ptr noundef @.str.8) #15, !dbg !6046
  store i32 -22, ptr %retval, align 4, !dbg !6048
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6048

if.end14:                                         ; preds = %if.end11
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !6049
  %add.ptr15 = getelementptr i8, ptr %18, i64 3, !dbg !6049
  store ptr %add.ptr15, ptr %buf.addr, align 8, !dbg !6049
  %19 = load ptr, ptr %buf.addr, align 8, !dbg !6050
  %20 = load i8, ptr %19, align 1, !dbg !6051
  %conv16 = zext i8 %20 to i32, !dbg !6051
  %shl = shl i32 %conv16, 2, !dbg !6052
  %21 = load ptr, ptr %buf.addr, align 8, !dbg !6053
  %add.ptr17 = getelementptr i8, ptr %21, i64 1, !dbg !6053
  %22 = load i8, ptr %add.ptr17, align 1, !dbg !6053
  %conv18 = zext i8 %22 to i32, !dbg !6053
  %and19 = and i32 %conv18, 192, !dbg !6053
  %shr = ashr i32 %and19, 6, !dbg !6053
  %or = or i32 %shl, %shr, !dbg !6054
  store i32 %or, ptr %ksv_count, align 4, !dbg !6055
  %23 = load i32, ptr %ksv_count, align 4, !dbg !6056
  %tobool20 = icmp ne i32 %23, 0, !dbg !6056
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !6058

if.then21:                                        ; preds = %if.end14
  call void (ptr, i32, ptr, ...) @___drm_dbg(ptr noundef null, i32 noundef 0, ptr noundef @.str.9) #15, !dbg !6059
  store i32 0, ptr %retval, align 4, !dbg !6061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6061

if.end22:                                         ; preds = %if.end14
  %24 = load i32, ptr %ksv_count, align 4, !dbg !6062
  %conv23 = zext i32 %24 to i64, !dbg !6062
  %call24 = call noalias ptr @kcalloc(i64 noundef %conv23, i64 noundef 5, i32 noundef 3264) #16, !dbg !6063
  %25 = load ptr, ptr %revoked_ksv_list.addr, align 8, !dbg !6064
  store ptr %call24, ptr %25, align 8, !dbg !6065
  %26 = load ptr, ptr %revoked_ksv_list.addr, align 8, !dbg !6066
  %27 = load ptr, ptr %26, align 8, !dbg !6068
  %tobool25 = icmp ne ptr %27, null, !dbg !6068
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !6069

if.then26:                                        ; preds = %if.end22
  call void (ptr, ...) @__drm_err(ptr noundef @.str.10) #15, !dbg !6070
  store i32 -12, ptr %retval, align 4, !dbg !6072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6072

if.end27:                                         ; preds = %if.end22
  %28 = load i32, ptr %ksv_count, align 4, !dbg !6073
  %mul = mul i32 %28, 5, !dbg !6074
  store i32 %mul, ptr %ksv_sz, align 4, !dbg !6075
  %29 = load ptr, ptr %buf.addr, align 8, !dbg !6076
  %add.ptr28 = getelementptr i8, ptr %29, i64 4, !dbg !6076
  store ptr %add.ptr28, ptr %buf.addr, align 8, !dbg !6076
  %30 = load i32, ptr %ksv_count, align 4, !dbg !6077
  call void (ptr, i32, ptr, ...) @___drm_dbg(ptr noundef null, i32 noundef 0, ptr noundef @.str.13, i32 noundef %30) #15, !dbg !6077
  %31 = load ptr, ptr %revoked_ksv_list.addr, align 8, !dbg !6078
  %32 = load ptr, ptr %31, align 8, !dbg !6079
  %33 = load ptr, ptr %buf.addr, align 8, !dbg !6080
  %34 = load i32, ptr %ksv_sz, align 4, !dbg !6081
  %conv29 = zext i32 %34 to i64, !dbg !6081
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %32, ptr align 1 %33, i64 %conv29, i1 false), !dbg !6082
  %35 = load i32, ptr %ksv_count, align 4, !dbg !6083
  %36 = load ptr, ptr %revoked_ksv_cnt.addr, align 8, !dbg !6084
  store i32 %35, ptr %36, align 4, !dbg !6085
  store i32 0, ptr %retval, align 4, !dbg !6086
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6086

cleanup:                                          ; preds = %if.end27, %if.then26, %if.then21, %if.then13, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ksv_sz) #14, !dbg !6087
  call void @llvm.lifetime.end.p0(i64 4, ptr %ksv_count) #14, !dbg !6087
  call void @llvm.lifetime.end.p0(i64 4, ptr %vrl_length) #14, !dbg !6087
  call void @llvm.lifetime.end.p0(i64 8, ptr %header) #14, !dbg !6087
  %37 = load i32, ptr %retval, align 4, !dbg !6087
  ret i32 %37, !dbg !6087
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6088 dso_local void @__drm_err(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_vrl_length(ptr noundef %buf) #4 align 16 !dbg !6091 {
entry:
  %buf.addr = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6095, metadata !DIExpression()), !dbg !6096
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6097
  %call = call i32 @drm_hdcp_be24_to_cpu(ptr noundef %0) #15, !dbg !6098
  ret i32 %call, !dbg !6099
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_hdcp_get_revoked_ksv_count(ptr noundef %buf, i32 noundef %vrls_length) #0 align 16 !dbg !6100 {
entry:
  %buf.addr = alloca ptr, align 8
  %vrls_length.addr = alloca i32, align 4
  %parsed_bytes = alloca i32, align 4
  %ksv_count = alloca i32, align 4
  %vrl_ksv_cnt = alloca i32, align 4
  %vrl_sz = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6104, metadata !DIExpression()), !dbg !6110
  store i32 %vrls_length, ptr %vrls_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vrls_length.addr, metadata !6105, metadata !DIExpression()), !dbg !6111
  call void @llvm.lifetime.start.p0(i64 4, ptr %parsed_bytes) #14, !dbg !6112
  call void @llvm.dbg.declare(metadata ptr %parsed_bytes, metadata !6106, metadata !DIExpression()), !dbg !6113
  store i32 0, ptr %parsed_bytes, align 4, !dbg !6113
  call void @llvm.lifetime.start.p0(i64 4, ptr %ksv_count) #14, !dbg !6112
  call void @llvm.dbg.declare(metadata ptr %ksv_count, metadata !6107, metadata !DIExpression()), !dbg !6114
  store i32 0, ptr %ksv_count, align 4, !dbg !6114
  call void @llvm.lifetime.start.p0(i64 4, ptr %vrl_ksv_cnt) #14, !dbg !6112
  call void @llvm.dbg.declare(metadata ptr %vrl_ksv_cnt, metadata !6108, metadata !DIExpression()), !dbg !6115
  call void @llvm.lifetime.start.p0(i64 4, ptr %vrl_sz) #14, !dbg !6112
  call void @llvm.dbg.declare(metadata ptr %vrl_sz, metadata !6109, metadata !DIExpression()), !dbg !6116
  br label %while.cond, !dbg !6117

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %parsed_bytes, align 4, !dbg !6118
  %1 = load i32, ptr %vrls_length.addr, align 4, !dbg !6119
  %cmp = icmp ult i32 %0, %1, !dbg !6120
  br i1 %cmp, label %while.body, label %while.end, !dbg !6117

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !6121
  %3 = load i8, ptr %2, align 1, !dbg !6123
  %conv = zext i8 %3 to i32, !dbg !6123
  store i32 %conv, ptr %vrl_ksv_cnt, align 4, !dbg !6124
  %4 = load i32, ptr %vrl_ksv_cnt, align 4, !dbg !6125
  %5 = load i32, ptr %ksv_count, align 4, !dbg !6126
  %add = add i32 %5, %4, !dbg !6126
  store i32 %add, ptr %ksv_count, align 4, !dbg !6126
  %6 = load i32, ptr %vrl_ksv_cnt, align 4, !dbg !6127
  %mul = mul i32 %6, 5, !dbg !6128
  %add1 = add i32 %mul, 1, !dbg !6129
  store i32 %add1, ptr %vrl_sz, align 4, !dbg !6130
  %7 = load i32, ptr %vrl_sz, align 4, !dbg !6131
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !6132
  %idx.ext = zext i32 %7 to i64, !dbg !6132
  %add.ptr = getelementptr i8, ptr %8, i64 %idx.ext, !dbg !6132
  store ptr %add.ptr, ptr %buf.addr, align 8, !dbg !6132
  %9 = load i32, ptr %vrl_sz, align 4, !dbg !6133
  %10 = load i32, ptr %parsed_bytes, align 4, !dbg !6134
  %add2 = add i32 %10, %9, !dbg !6134
  store i32 %add2, ptr %parsed_bytes, align 4, !dbg !6134
  br label %while.cond, !dbg !6117, !llvm.loop !6135

while.end:                                        ; preds = %while.cond
  %11 = load i32, ptr %parsed_bytes, align 4, !dbg !6137
  %12 = load i32, ptr %vrls_length.addr, align 4, !dbg !6139
  %cmp3 = icmp ne i32 %11, %12, !dbg !6140
  br i1 %cmp3, label %if.then, label %if.end, !dbg !6141

if.then:                                          ; preds = %while.end
  store i32 0, ptr %ksv_count, align 4, !dbg !6142
  br label %if.end, !dbg !6143

if.end:                                           ; preds = %if.then, %while.end
  %13 = load i32, ptr %ksv_count, align 4, !dbg !6144
  call void @llvm.lifetime.end.p0(i64 4, ptr %vrl_sz) #14, !dbg !6145
  call void @llvm.lifetime.end.p0(i64 4, ptr %vrl_ksv_cnt) #14, !dbg !6145
  call void @llvm.lifetime.end.p0(i64 4, ptr %ksv_count) #14, !dbg !6145
  call void @llvm.lifetime.end.p0(i64 4, ptr %parsed_bytes) #14, !dbg !6145
  ret i32 %13, !dbg !6146
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6147 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6151, metadata !DIExpression()), !dbg !6154
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6152, metadata !DIExpression()), !dbg !6155
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6153, metadata !DIExpression()), !dbg !6156
  %0 = load i64, ptr %n.addr, align 8, !dbg !6157
  %1 = load i64, ptr %size.addr, align 8, !dbg !6158
  %2 = load i32, ptr %flags.addr, align 4, !dbg !6159
  %or = or i32 %2, 256, !dbg !6160
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #16, !dbg !6161
  ret ptr %call, !dbg !6162
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_hdcp_get_revoked_ksvs(ptr noundef %buf, ptr noundef %revoked_ksv_list, i32 noundef %vrls_length) #0 align 16 !dbg !6163 {
entry:
  %buf.addr = alloca ptr, align 8
  %revoked_ksv_list.addr = alloca ptr, align 8
  %vrls_length.addr = alloca i32, align 4
  %vrl_ksv_cnt = alloca i32, align 4
  %vrl_ksv_sz = alloca i32, align 4
  %vrl_idx = alloca i32, align 4
  %parsed_bytes = alloca i32, align 4
  %ksv_count = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6167, metadata !DIExpression()), !dbg !6175
  store ptr %revoked_ksv_list, ptr %revoked_ksv_list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %revoked_ksv_list.addr, metadata !6168, metadata !DIExpression()), !dbg !6176
  store i32 %vrls_length, ptr %vrls_length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vrls_length.addr, metadata !6169, metadata !DIExpression()), !dbg !6177
  call void @llvm.lifetime.start.p0(i64 4, ptr %vrl_ksv_cnt) #14, !dbg !6178
  call void @llvm.dbg.declare(metadata ptr %vrl_ksv_cnt, metadata !6170, metadata !DIExpression()), !dbg !6179
  call void @llvm.lifetime.start.p0(i64 4, ptr %vrl_ksv_sz) #14, !dbg !6178
  call void @llvm.dbg.declare(metadata ptr %vrl_ksv_sz, metadata !6171, metadata !DIExpression()), !dbg !6180
  call void @llvm.lifetime.start.p0(i64 4, ptr %vrl_idx) #14, !dbg !6178
  call void @llvm.dbg.declare(metadata ptr %vrl_idx, metadata !6172, metadata !DIExpression()), !dbg !6181
  store i32 0, ptr %vrl_idx, align 4, !dbg !6181
  call void @llvm.lifetime.start.p0(i64 4, ptr %parsed_bytes) #14, !dbg !6182
  call void @llvm.dbg.declare(metadata ptr %parsed_bytes, metadata !6173, metadata !DIExpression()), !dbg !6183
  store i32 0, ptr %parsed_bytes, align 4, !dbg !6183
  call void @llvm.lifetime.start.p0(i64 4, ptr %ksv_count) #14, !dbg !6182
  call void @llvm.dbg.declare(metadata ptr %ksv_count, metadata !6174, metadata !DIExpression()), !dbg !6184
  store i32 0, ptr %ksv_count, align 4, !dbg !6184
  br label %do.body, !dbg !6185

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6186
  %1 = load i8, ptr %0, align 1, !dbg !6188
  %conv = zext i8 %1 to i32, !dbg !6188
  store i32 %conv, ptr %vrl_ksv_cnt, align 4, !dbg !6189
  %2 = load i32, ptr %vrl_ksv_cnt, align 4, !dbg !6190
  %mul = mul i32 %2, 5, !dbg !6191
  store i32 %mul, ptr %vrl_ksv_sz, align 4, !dbg !6192
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6193
  %incdec.ptr = getelementptr i8, ptr %3, i32 1, !dbg !6193
  store ptr %incdec.ptr, ptr %buf.addr, align 8, !dbg !6193
  %4 = load i32, ptr %vrl_idx, align 4, !dbg !6194
  %inc = add i32 %4, 1, !dbg !6194
  store i32 %inc, ptr %vrl_idx, align 4, !dbg !6194
  %5 = load i32, ptr %vrl_ksv_cnt, align 4, !dbg !6194
  call void (ptr, i32, ptr, ...) @___drm_dbg(ptr noundef null, i32 noundef 0, ptr noundef @.str.12, i32 noundef %4, i32 noundef %5) #15, !dbg !6194
  %6 = load ptr, ptr %revoked_ksv_list.addr, align 8, !dbg !6195
  %7 = load ptr, ptr %6, align 8, !dbg !6196
  %8 = load i32, ptr %ksv_count, align 4, !dbg !6197
  %mul1 = mul i32 %8, 5, !dbg !6198
  %idx.ext = zext i32 %mul1 to i64, !dbg !6199
  %add.ptr = getelementptr i8, ptr %7, i64 %idx.ext, !dbg !6199
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !6200
  %10 = load i32, ptr %vrl_ksv_sz, align 4, !dbg !6201
  %conv2 = zext i32 %10 to i64, !dbg !6201
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %9, i64 %conv2, i1 false), !dbg !6202
  %11 = load i32, ptr %vrl_ksv_cnt, align 4, !dbg !6203
  %12 = load i32, ptr %ksv_count, align 4, !dbg !6204
  %add = add i32 %12, %11, !dbg !6204
  store i32 %add, ptr %ksv_count, align 4, !dbg !6204
  %13 = load i32, ptr %vrl_ksv_sz, align 4, !dbg !6205
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !6206
  %idx.ext3 = zext i32 %13 to i64, !dbg !6206
  %add.ptr4 = getelementptr i8, ptr %14, i64 %idx.ext3, !dbg !6206
  store ptr %add.ptr4, ptr %buf.addr, align 8, !dbg !6206
  %15 = load i32, ptr %vrl_ksv_sz, align 4, !dbg !6207
  %add5 = add i32 %15, 1, !dbg !6208
  %16 = load i32, ptr %parsed_bytes, align 4, !dbg !6209
  %add6 = add i32 %16, %add5, !dbg !6209
  store i32 %add6, ptr %parsed_bytes, align 4, !dbg !6209
  br label %do.cond, !dbg !6210

do.cond:                                          ; preds = %do.body
  %17 = load i32, ptr %parsed_bytes, align 4, !dbg !6211
  %18 = load i32, ptr %vrls_length.addr, align 4, !dbg !6212
  %cmp = icmp ult i32 %17, %18, !dbg !6213
  br i1 %cmp, label %do.body, label %do.end, !dbg !6210, !llvm.loop !6214

do.end:                                           ; preds = %do.cond
  %19 = load i32, ptr %ksv_count, align 4, !dbg !6216
  call void @llvm.lifetime.end.p0(i64 4, ptr %ksv_count) #14, !dbg !6217
  call void @llvm.lifetime.end.p0(i64 4, ptr %parsed_bytes) #14, !dbg !6217
  call void @llvm.lifetime.end.p0(i64 4, ptr %vrl_idx) #14, !dbg !6217
  call void @llvm.lifetime.end.p0(i64 4, ptr %vrl_ksv_sz) #14, !dbg !6217
  call void @llvm.lifetime.end.p0(i64 4, ptr %vrl_ksv_cnt) #14, !dbg !6217
  ret i32 %19, !dbg !6218
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_hdcp_be24_to_cpu(ptr noundef %seq_num) #4 align 16 !dbg !6219 {
entry:
  %seq_num.addr = alloca ptr, align 8
  store ptr %seq_num, ptr %seq_num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq_num.addr, metadata !6221, metadata !DIExpression()), !dbg !6222
  %0 = load ptr, ptr %seq_num.addr, align 8, !dbg !6223
  %arrayidx = getelementptr i8, ptr %0, i64 2, !dbg !6223
  %1 = load i8, ptr %arrayidx, align 1, !dbg !6223
  %conv = zext i8 %1 to i32, !dbg !6223
  %2 = load ptr, ptr %seq_num.addr, align 8, !dbg !6224
  %arrayidx1 = getelementptr i8, ptr %2, i64 1, !dbg !6224
  %3 = load i8, ptr %arrayidx1, align 1, !dbg !6224
  %conv2 = zext i8 %3 to i32, !dbg !6224
  %shl = shl i32 %conv2, 8, !dbg !6225
  %or = or i32 %conv, %shl, !dbg !6226
  %4 = load ptr, ptr %seq_num.addr, align 8, !dbg !6227
  %arrayidx3 = getelementptr i8, ptr %4, i64 0, !dbg !6227
  %5 = load i8, ptr %arrayidx3, align 1, !dbg !6227
  %conv4 = zext i8 %5 to i32, !dbg !6227
  %shl5 = shl i32 %conv4, 16, !dbg !6228
  %or6 = or i32 %or, %shl5, !dbg !6229
  ret i32 %or6, !dbg !6230
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6231 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6233, metadata !DIExpression()), !dbg !6237
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6234, metadata !DIExpression()), !dbg !6238
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6235, metadata !DIExpression()), !dbg !6239
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #14, !dbg !6240
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6236, metadata !DIExpression()), !dbg !6241
  %0 = load i64, ptr %n.addr, align 8, !dbg !6242
  %1 = load i64, ptr %size.addr, align 8, !dbg !6242
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6242
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6242
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6242
  store i64 %4, ptr %bytes, align 8, !dbg !6242
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #15, !dbg !6242
  %lnot = xor i1 %call, true, !dbg !6242
  %lnot1 = xor i1 %lnot, true, !dbg !6242
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6242
  %conv = sext i32 %lnot.ext to i64, !dbg !6242
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6242
  %tobool = icmp ne i64 %expval, 0, !dbg !6242
  br i1 %tobool, label %if.then, label %if.end, !dbg !6244

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6245

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6246
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6248
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6249

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6250
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6251
  br i1 %8, label %if.then2, label %if.end4, !dbg !6252

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6253
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6254
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #17, !dbg !6255
  store ptr %call3, ptr %retval, align 8, !dbg !6256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6256

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6257
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6258
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #17, !dbg !6259
  store ptr %call5, ptr %retval, align 8, !dbg !6260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6260

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #14, !dbg !6261
  %13 = load ptr, ptr %retval, align 8, !dbg !6261
  ret ptr %13, !dbg !6261
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !6262 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6267, metadata !DIExpression()), !dbg !6268
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6269, !range !5711, !noundef !1140
  %tobool = trunc i8 %0 to i1, !dbg !6269
  %lnot = xor i1 %tobool, true, !dbg !6269
  %lnot1 = xor i1 %lnot, true, !dbg !6269
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6269
  %conv = sext i32 %lnot.ext to i64, !dbg !6269
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6269
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6269
  ret i1 %tobool2, !dbg !6270
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6271 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6275, metadata !DIExpression()), !dbg !6280
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6276, metadata !DIExpression()), !dbg !6281
  %0 = load i64, ptr %size.addr, align 8, !dbg !6282
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6283
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6284

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6285
  %tobool = icmp ne i64 %2, 0, !dbg !6285
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6286

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !6287
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6277, metadata !DIExpression()), !dbg !6288
  %3 = load i64, ptr %size.addr, align 8, !dbg !6289
  %cmp = icmp ugt i64 %3, 8192, !dbg !6291
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6292

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6293
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6294
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !6295
  store ptr %call, ptr %retval, align 8, !dbg !6296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6296

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6297
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !6297
  store i32 %call2, ptr %index, align 4, !dbg !6298
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6299
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6300
  %9 = ptrtoint ptr %8 to i64, !dbg !6300
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !6301
  %idxprom = zext i32 %call3 to i64, !dbg !6302
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6302
  %10 = load i32, ptr %index, align 4, !dbg !6303
  %idxprom4 = zext i32 %10 to i64, !dbg !6302
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6302
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6302
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6304
  %13 = load i64, ptr %size.addr, align 8, !dbg !6305
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !6306
  store ptr %call6, ptr %retval, align 8, !dbg !6307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6307

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !6308
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6309
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6310
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !6311
  store ptr %call8, ptr %retval, align 8, !dbg !6312
  br label %return, !dbg !6312

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6313
  ret ptr %16, !dbg !6313
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6314 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6315 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !6316 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6320, metadata !DIExpression()), !dbg !6322
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6321, metadata !DIExpression()), !dbg !6323
  %0 = load i64, ptr %size.addr, align 8, !dbg !6324
  %tobool = icmp ne i64 %0, 0, !dbg !6324
  br i1 %tobool, label %if.end, label %if.then, !dbg !6326

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6327
  br label %return, !dbg !6327

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6328
  %cmp = icmp ule i64 %1, 8, !dbg !6330
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6331

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6332
  br label %return, !dbg !6332

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6333
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6335
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6336

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6337
  %cmp4 = icmp ule i64 %3, 96, !dbg !6338
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6339

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6340
  br label %return, !dbg !6340

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6341
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6343
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6344

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6345
  %cmp9 = icmp ule i64 %5, 192, !dbg !6346
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6347

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6348
  br label %return, !dbg !6348

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6349
  %cmp12 = icmp ule i64 %6, 8, !dbg !6351
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6352

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6353
  br label %return, !dbg !6353

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6354
  %cmp15 = icmp ule i64 %7, 16, !dbg !6356
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6357

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6358
  br label %return, !dbg !6358

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6359
  %cmp18 = icmp ule i64 %8, 32, !dbg !6361
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6362

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6363
  br label %return, !dbg !6363

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6364
  %cmp21 = icmp ule i64 %9, 64, !dbg !6366
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6367

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6368
  br label %return, !dbg !6368

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6369
  %cmp24 = icmp ule i64 %10, 128, !dbg !6371
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6372

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6373
  br label %return, !dbg !6373

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6374
  %cmp27 = icmp ule i64 %11, 256, !dbg !6376
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6377

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6378
  br label %return, !dbg !6378

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6379
  %cmp30 = icmp ule i64 %12, 512, !dbg !6381
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6382

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6383
  br label %return, !dbg !6383

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6384
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6386
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6387

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6388
  br label %return, !dbg !6388

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6389
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6391
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6392

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6393
  br label %return, !dbg !6393

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6394
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6396
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6397

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6398
  br label %return, !dbg !6398

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6399
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6401
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6402

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6403
  br label %return, !dbg !6403

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6404
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6406
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6407

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6408
  br label %return, !dbg !6408

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6409
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6411
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6412

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6413
  br label %return, !dbg !6413

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6414
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6416
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6417

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6418
  br label %return, !dbg !6418

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6419
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6421
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6422

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6423
  br label %return, !dbg !6423

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6424
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6426
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6427

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6428
  br label %return, !dbg !6428

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6429
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6431
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6432

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6433
  br label %return, !dbg !6433

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6434
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6436
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6437

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6438
  br label %return, !dbg !6438

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6439
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6441
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6442

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6443
  br label %return, !dbg !6443

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6444, !range !5711, !noundef !1140
  %tobool69 = trunc i8 %25 to i1, !dbg !6444
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6446

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6447

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #19, !dbg !6448, !srcloc !6451
  unreachable, !dbg !6448

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6452

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6453

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6454

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6456

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6454

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 480, i32 0, i64 12) #14, !dbg !6458, !srcloc !6460
  br label %do.end75, !dbg !6458

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6454

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6461
  br label %return, !dbg !6461

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6462
  ret i32 %26, !dbg !6462
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6463 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !6466 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6470, metadata !DIExpression()), !dbg !6472
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6471, metadata !DIExpression()), !dbg !6473
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6474
  %and = and i32 %0, 17, !dbg !6474
  %cmp = icmp eq i32 %and, 0, !dbg !6474
  %lnot = xor i1 %cmp, true, !dbg !6474
  %lnot1 = xor i1 %lnot, true, !dbg !6474
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6474
  %conv = sext i32 %lnot.ext to i64, !dbg !6474
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6474
  %tobool = icmp ne i64 %expval, 0, !dbg !6474
  br i1 %tobool, label %if.then, label %if.end, !dbg !6476

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6477
  br label %return, !dbg !6477

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6478
  %and2 = and i32 %1, 1, !dbg !6480
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6480
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6481

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6482
  br label %return, !dbg !6482

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6483
  br label %return, !dbg !6483

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6485
  ret i32 %2, !dbg !6485
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6486 dso_local void @__compiletime_assert_204() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ww_mutex_is_locked(ptr noundef %lock) #4 align 16 !dbg !6487 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6492, metadata !DIExpression()), !dbg !6493
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6494
  %base = getelementptr inbounds %struct.ww_mutex, ptr %0, i32 0, i32 0, !dbg !6494
  %call = call zeroext i1 @mutex_is_locked(ptr noundef %base) #15, !dbg !6494
  ret i1 %call, !dbg !6495
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6496 dso_local zeroext i1 @mutex_is_locked(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0,1) }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!405, !406, !407, !408, !409, !410, !411, !412}
!llvm.ident = !{!413}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/gpu/drm/display/drm_hdcp_helper.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "795a5391473bfe4b9a3b38154feb1ebb")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 16)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_hdcp_check_ksvs_revoked305", scope: !9, file: !2, line: 309, type: !280, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/display/.drm_hdcp_helper.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/display/drm_display_helper\22 -D KBUILD_BASENAME=\22drm_hdcp_helper\22 -D KBUILD_MODNAME=\22drm_display_helper\22 -D __KBUILD_MODNAME=kmod_drm_display_helper -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/display/drm_hdcp_helper.ll drivers/gpu/drm/display/drm_hdcp_helper.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !279, globals: !305, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !29, !35, !43, !59, !66, !74, !80, !87, !93, !99, !106, !114, !122, !131, !136, !141, !147, !154, !167, !173, !178, !186, !190, !206, !215, !235, !241, !247, !254, !264, !269}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !20, line: 2052, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!23 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !13, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !30, line: 16, baseType: !13, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "TT_NONE", value: 0)
!33 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!34 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !36, line: 68, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!39 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!40 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !44, line: 1325, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!46 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!47 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!48 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!49 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!50 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!51 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!52 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!53 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!54 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!55 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!56 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!57 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!58 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !60, line: 51, baseType: !13, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!63 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!64 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!65 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !67, line: 9, baseType: !13, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!70 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!71 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!72 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!73 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !75, line: 54, baseType: !13, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "USRQUOTA", value: 0)
!78 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!79 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !81, line: 15, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!84 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!85 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!86 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !88, line: 26, baseType: !13, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!92 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !94, line: 45, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!97 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!98 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !100, line: 487, baseType: !13, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!103 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!104 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!105 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !107, line: 620, baseType: !13, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!108 = !{!109, !110, !111, !112, !113}
!109 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!110 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!111 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!112 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!113 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !107, line: 597, baseType: !115, size: 32, elements: !116)
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!118 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!119 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!120 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!121 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !100, line: 547, baseType: !13, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130}
!124 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!125 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!126 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!127 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!128 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!129 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!130 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !100, line: 564, baseType: !13, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!134 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!135 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !100, line: 577, baseType: !13, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!139 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !100, line: 503, baseType: !13, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!144 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!145 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!146 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !148, line: 30, baseType: !13, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!149 = !{!150, !151, !152, !153}
!150 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!151 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!152 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!153 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !155, line: 330, baseType: !13, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!156 = !{!157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!157 = !DIEnumerator(name: "DRM_UT_CORE", value: 0)
!158 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 1)
!159 = !DIEnumerator(name: "DRM_UT_KMS", value: 2)
!160 = !DIEnumerator(name: "DRM_UT_PRIME", value: 3)
!161 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 4)
!162 = !DIEnumerator(name: "DRM_UT_VBL", value: 5)
!163 = !DIEnumerator(name: "DRM_UT_STATE", value: 6)
!164 = !DIEnumerator(name: "DRM_UT_LEASE", value: 7)
!165 = !DIEnumerator(name: "DRM_UT_DP", value: 8)
!166 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 9)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !168, line: 98, baseType: !13, size: 32, elements: !169)
!168 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63c858da11ce2de4f038056be4cf749")
!169 = !{!170, !171, !172}
!170 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0)
!171 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1)
!172 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2)
!173 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !168, line: 63, baseType: !13, size: 32, elements: !174)
!174 = !{!175, !176, !177}
!175 = !DIEnumerator(name: "connector_status_connected", value: 1)
!176 = !DIEnumerator(name: "connector_status_disconnected", value: 2)
!177 = !DIEnumerator(name: "connector_status_unknown", value: 3)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !168, line: 137, baseType: !13, size: 32, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !185}
!180 = !DIEnumerator(name: "SubPixelUnknown", value: 0)
!181 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1)
!182 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2)
!183 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3)
!184 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4)
!185 = !DIEnumerator(name: "SubPixelNone", value: 5)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !168, line: 337, baseType: !13, size: 32, elements: !187)
!187 = !{!188, !189}
!188 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0)
!189 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !191, line: 387, baseType: !13, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!193 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0)
!194 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0)
!195 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1)
!196 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3)
!197 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4)
!198 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5)
!199 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6)
!200 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8)
!201 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9)
!202 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10)
!203 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11)
!204 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15)
!205 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18)
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !207, line: 96, baseType: !13, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "47f4ac8f6225c51a6d030bad9086771f")
!208 = !{!209, !210, !211, !212, !213, !214}
!209 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0)
!210 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1)
!211 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2)
!212 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3)
!213 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4)
!214 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_colorspace", file: !168, line: 502, baseType: !13, size: 32, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234}
!217 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DEFAULT", value: 0)
!218 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_NO_DATA", value: 0)
!219 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SMPTE_170M_YCC", value: 1)
!220 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT709_YCC", value: 2)
!221 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_601", value: 3)
!222 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_709", value: 4)
!223 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SYCC_601", value: 5)
!224 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPYCC_601", value: 6)
!225 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPRGB", value: 7)
!226 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_CYCC", value: 8)
!227 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_RGB", value: 9)
!228 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_YCC", value: 10)
!229 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65", value: 11)
!230 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER", value: 12)
!231 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FIXED", value: 13)
!232 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FLOAT", value: 14)
!233 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT601_YCC", value: 15)
!234 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_COUNT", value: 16)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_privacy_screen_status", file: !168, line: 421, baseType: !13, size: 32, elements: !236)
!236 = !{!237, !238, !239, !240}
!237 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED", value: 0)
!238 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED", value: 1)
!239 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED_LOCKED", value: 2)
!240 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED_LOCKED", value: 3)
!241 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !168, line: 50, baseType: !13, size: 32, elements: !242)
!242 = !{!243, !244, !245, !246}
!243 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0)
!244 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1)
!245 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2)
!246 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !168, line: 363, baseType: !115, size: 32, elements: !248)
!248 = !{!249, !250, !251, !252, !253}
!249 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!250 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!251 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!252 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!253 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_tv_mode", file: !168, line: 156, baseType: !13, size: 32, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263}
!256 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC", value: 0)
!257 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_443", value: 1)
!258 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_J", value: 2)
!259 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL", value: 3)
!260 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_M", value: 4)
!261 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_N", value: 5)
!262 = !DIEnumerator(name: "DRM_MODE_TV_MODE_SECAM", value: 6)
!263 = !DIEnumerator(name: "DRM_MODE_TV_MODE_MAX", value: 7)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !265, line: 10, baseType: !13, size: 32, elements: !266)
!265 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!266 = !{!267, !268}
!267 = !DIEnumerator(name: "false", value: 0)
!268 = !DIEnumerator(name: "true", value: 1)
!269 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !270, line: 364, baseType: !13, size: 32, elements: !271)
!270 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!271 = !{!272, !273, !274, !275, !276, !277, !278}
!272 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!273 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!274 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!275 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!276 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!277 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!278 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!279 = !{!280, !115, !281, !283, !288, !297, !295, !300, !302, !304}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !284, line: 17, baseType: !285)
!284 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !286, line: 21, baseType: !287)
!286 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!287 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdcp_srm_header", file: !290, line: 287, size: 40, elements: !291)
!290 = !DIFile(filename: "./include/drm/display/drm_hdcp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa32c7106c28607515eb90e9d8c1e568")
!291 = !{!292, !293, !294, !299}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "srm_id", scope: !289, file: !290, line: 288, baseType: !283, size: 8)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !289, file: !290, line: 289, baseType: !283, size: 8, offset: 8)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "srm_version", scope: !289, file: !290, line: 290, baseType: !295, size: 16, offset: 16)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !296, line: 37, baseType: !297)
!296 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !286, line: 24, baseType: !298)
!298 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "srm_gen_no", scope: !289, file: !290, line: 291, baseType: !283, size: 8, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !301, line: 154, baseType: !13)
!301 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !284, line: 21, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !286, line: 27, baseType: !13)
!304 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!305 = !{!0, !7, !306, !311, !316, !321, !323, !328, !330, !335, !340, !345, !350, !355, !360, !362, !367, !369, !374, !376, !381, !383, !393, !398, !400}
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !2, line: 316, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 10)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !2, line: 363, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 19)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !2, line: 378, type: !318, isLocal: true, isDefinition: true)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 18)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_connector_attach_content_protection_property306", scope: !9, file: !2, line: 391, type: !280, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !2, line: 413, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 42)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_hdcp_update_content_protection307", scope: !9, file: !2, line: 421, type: !280, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 21)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !337, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 47)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !342, isLocal: true, isDefinition: true)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 35)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !2, line: 117, type: !347, isLocal: true, isDefinition: true)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 14)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !2, line: 124, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 24)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !357, isLocal: true, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 15)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !270, line: 480, type: !332, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !364, isLocal: true, isDefinition: true)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 27)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !318, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 36)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 312, type: !308, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 313, type: !378, isLocal: true, isDefinition: true)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 8)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !2, line: 314, type: !378, isLocal: true, isDefinition: true)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "drm_cp_enum_list", scope: !9, file: !2, line: 311, type: !385, isLocal: true, isDefinition: true)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 384, elements: !391)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prop_enum_list", file: !387, line: 225, size: 128, elements: !388)
!387 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !386, file: !387, line: 226, baseType: !115, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !386, file: !387, line: 227, baseType: !281, size: 64, offset: 64)
!391 = !{!392}
!392 = !DISubrange(count: 3)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !395, isLocal: true, isDefinition: true)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 11)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !2, line: 320, type: !395, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "drm_hdcp_content_type_enum_list", scope: !9, file: !2, line: 318, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 256, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 2)
!405 = !{i32 7, !"Dwarf Version", i32 5}
!406 = !{i32 2, !"Debug Info Version", i32 3}
!407 = !{i32 1, !"wchar_size", i32 2}
!408 = !{i32 8, !"cf-protection-branch", i32 1}
!409 = !{i32 4, !"function_return_thunk_extern", i32 1}
!410 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!411 = !{i32 1, !"Code Model", i32 2}
!412 = !{i32 1, !"override-stack-alignment", i32 8}
!413 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!414 = distinct !DISubprogram(name: "drm_hdcp_check_ksvs_revoked", scope: !2, file: !2, line: 283, type: !415, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5075)
!415 = !DISubroutineType(types: !416)
!416 = !{!115, !417, !5074, !302}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !148, line: 50, size: 12736, elements: !419)
!419 = !{!420, !421, !435, !4762, !4768, !4773, !4774, !4777, !4778, !4779, !4780, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !5060, !5061, !5062, !5065, !5068, !5069, !5072, !5073}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !418, file: !148, line: 52, baseType: !115, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !418, file: !148, line: 55, baseType: !422, size: 32, offset: 32)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !423, line: 19, size: 32, elements: !424)
!423 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !422, file: !423, line: 20, baseType: !426, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !427, line: 113, baseType: !428)
!427 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !427, line: 111, size: 32, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !428, file: !427, line: 112, baseType: !431, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !301, line: 174, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 172, size: 32, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !432, file: !301, line: 173, baseType: !115, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !418, file: !148, line: 58, baseType: !436, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !100, line: 705, size: 5824, elements: !438)
!438 = !{!439, !4417, !4418, !4421, !4422, !4475, !4545, !4546, !4547, !4548, !4549, !4556, !4648, !4661, !4671, !4675, !4677, !4678, !4679, !4683, !4690, !4691, !4694, !4697, !4701, !4704, !4705, !4706, !4707, !4708, !4709, !4739, !4740, !4741, !4744, !4747, !4756, !4757, !4758, !4759, !4760, !4761}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !437, file: !100, line: 706, baseType: !440, size: 512)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !441, line: 64, size: 512, elements: !442)
!441 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!442 = !{!443, !444, !450, !452, !528, !4320, !4411, !4412, !4413, !4414, !4415, !4416}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !440, file: !441, line: 65, baseType: !281, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !440, file: !441, line: 66, baseType: !445, size: 128, offset: 64)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !301, line: 190, size: 128, elements: !446)
!446 = !{!447, !449}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !445, file: !301, line: 191, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !445, file: !301, line: 191, baseType: !448, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !440, file: !441, line: 67, baseType: !451, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !440, file: !441, line: 68, baseType: !453, size: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !441, line: 168, size: 768, elements: !455)
!455 = !{!456, !457, !489, !490}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !454, file: !441, line: 169, baseType: !445, size: 128)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !454, file: !441, line: 170, baseType: !458, size: 32, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !459, line: 29, baseType: !460)
!459 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !459, line: 17, size: 32, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !459, line: 18, baseType: !463, size: 32)
!463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !460, file: !459, line: 18, size: 32, elements: !464)
!464 = !{!465}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !463, file: !459, line: 19, baseType: !466, size: 32)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !467, line: 14, size: 32, elements: !468)
!467 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !466, file: !467, line: 15, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !471, line: 44, baseType: !472)
!471 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !471, line: 14, size: 32, elements: !473)
!473 = !{!474}
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !471, line: 15, baseType: !475, size: 32)
!475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !471, line: 15, size: 32, elements: !476)
!476 = !{!477, !478, !483}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !475, file: !471, line: 16, baseType: !431, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !471, line: 24, baseType: !479, size: 16)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !475, file: !471, line: 24, size: 16, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !479, file: !471, line: 25, baseType: !283, size: 8)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !479, file: !471, line: 26, baseType: !283, size: 8, offset: 8)
!483 = !DIDerivedType(tag: DW_TAG_member, scope: !475, file: !471, line: 28, baseType: !484, size: 32)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !475, file: !471, line: 28, size: 32, elements: !485)
!485 = !{!486, !488}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !484, file: !471, line: 29, baseType: !487, size: 16)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !284, line: 19, baseType: !297)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !484, file: !471, line: 30, baseType: !487, size: 16, offset: 16)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !454, file: !441, line: 171, baseType: !440, size: 512, offset: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !454, file: !441, line: 172, baseType: !491, size: 64, offset: 704)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !441, line: 133, size: 192, elements: !494)
!494 = !{!495, !502, !507}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !493, file: !441, line: 134, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!115, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !493, file: !441, line: 135, baseType: !503, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!281, !500}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !493, file: !441, line: 136, baseType: !508, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!115, !500, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !441, line: 125, size: 20736, elements: !514)
!514 = !{!515, !518, !522, !523, !527}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !513, file: !441, line: 126, baseType: !516, size: 192)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 192, elements: !391)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !513, file: !441, line: 127, baseType: !519, size: 4096, offset: 192)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 4096, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !513, file: !441, line: 128, baseType: !115, size: 32, offset: 4288)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !513, file: !441, line: 129, baseType: !524, size: 16384, offset: 4320)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 2048)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !513, file: !441, line: 130, baseType: !115, size: 32, offset: 20704)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !440, file: !441, line: 69, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !441, line: 116, size: 384, elements: !532)
!532 = !{!533, !537, !565, !4282, !4310, !4314}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !531, file: !441, line: 117, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !451}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !531, file: !441, line: 118, baseType: !538, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !541, line: 254, size: 128, elements: !542)
!541 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!542 = !{!543, !558}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !540, file: !541, line: 255, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!547, !451, !552, !517}
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !301, line: 66, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !549, line: 73, baseType: !550)
!549 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !549, line: 15, baseType: !551)
!551 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !541, line: 30, size: 128, elements: !554)
!554 = !{!555, !556}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !553, file: !541, line: 31, baseType: !281, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !553, file: !541, line: 32, baseType: !557, size: 16, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !301, line: 24, baseType: !298)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !540, file: !541, line: 256, baseType: !559, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!547, !451, !552, !281, !562}
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !301, line: 61, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !549, line: 72, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !549, line: 16, baseType: !304)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !531, file: !441, line: 119, baseType: !566, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !541, line: 84, size: 320, elements: !570)
!570 = !{!571, !572, !576, !4278, !4280}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !569, file: !541, line: 85, baseType: !281, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !569, file: !541, line: 86, baseType: !573, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!557, !451, !552, !115}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !569, file: !541, line: 88, baseType: !577, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!557, !451, !580, !115}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !541, line: 175, size: 512, elements: !582)
!582 = !{!583, !584, !585, !586, !4269, !4273, !4274}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !581, file: !541, line: 176, baseType: !553, size: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !581, file: !541, line: 177, baseType: !562, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !581, file: !541, line: 178, baseType: !280, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !581, file: !541, line: 179, baseType: !587, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !592)
!592 = !{!593, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4263, !4264, !4265, !4266, !4267, !4268}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !591, file: !20, line: 473, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !596)
!596 = !{!597, !598, !599, !607, !608, !615, !616, !619, !620, !4041, !4042, !4043, !4044, !4045, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4085, !4088, !4089, !4090, !4099, !4100, !4101, !4102}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !595, file: !20, line: 642, baseType: !557, size: 16)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !595, file: !20, line: 643, baseType: !298, size: 16, offset: 16)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !595, file: !20, line: 644, baseType: !600, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !601, line: 23, baseType: !602)
!601 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !601, line: 21, size: 32, elements: !603)
!603 = !{!604}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !602, file: !601, line: 22, baseType: !605, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !301, line: 37, baseType: !606)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !549, line: 49, baseType: !13)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !595, file: !20, line: 645, baseType: !445, size: 128, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !595, file: !20, line: 646, baseType: !609, size: 32, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !601, line: 28, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !601, line: 26, size: 32, elements: !611)
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !610, file: !601, line: 27, baseType: !613, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !301, line: 38, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !549, line: 50, baseType: !13)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !595, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !595, file: !20, line: 650, baseType: !617, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !595, file: !20, line: 651, baseType: !617, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !595, file: !20, line: 654, baseType: !621, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !624)
!624 = !{!625, !3875, !3885, !3889, !3893, !3897, !3901, !3905, !3909, !3913, !3917, !3918, !3922, !3926, !3963, !3992, !3996, !4002, !4006, !4010, !4014, !4018, !4022, !4028, !4032}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !623, file: !20, line: 1967, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!629, !594, !629, !13}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !631, line: 82, size: 1536, elements: !632)
!631 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!632 = !{!633, !634, !644, !652, !653, !671, !672, !676, !689, !3858, !3859, !3860, !3861, !3867, !3868, !3869}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !630, file: !631, line: 84, baseType: !13, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !630, file: !631, line: 85, baseType: !635, size: 32, offset: 32)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !636, line: 275, baseType: !637)
!636 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !636, line: 275, size: 32, elements: !638)
!638 = !{!639}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !637, file: !636, line: 275, baseType: !640, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !636, line: 69, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !636, line: 64, size: 32, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !641, file: !636, line: 65, baseType: !13, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !630, file: !631, line: 86, baseType: !645, size: 128, offset: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !646, line: 38, size: 128, elements: !647)
!646 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!647 = !{!648, !650}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !645, file: !646, line: 39, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !645, file: !646, line: 39, baseType: !651, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !630, file: !631, line: 87, baseType: !629, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !630, file: !631, line: 88, baseType: !654, size: 128, offset: 256)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !631, line: 49, size: 128, elements: !655)
!655 = !{!656, !668}
!656 = !DIDerivedType(tag: DW_TAG_member, scope: !654, file: !631, line: 50, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !654, file: !631, line: 50, size: 64, elements: !658)
!658 = !{!659, !664}
!659 = !DIDerivedType(tag: DW_TAG_member, scope: !657, file: !631, line: 51, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !657, file: !631, line: 51, size: 64, elements: !661)
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !660, file: !631, line: 52, baseType: !302, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !660, file: !631, line: 52, baseType: !302, size: 32, offset: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !657, file: !631, line: 54, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !284, line: 23, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !286, line: 31, baseType: !667)
!667 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !654, file: !631, line: 56, baseType: !669, size: 64, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !630, file: !631, line: 89, baseType: !594, size: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !630, file: !631, line: 91, baseType: !673, size: 256, offset: 448)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 256, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !630, file: !631, line: 94, baseType: !677, size: 64, offset: 704)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !678, line: 25, size: 64, elements: !679)
!678 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !677, file: !678, line: 26, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !677, file: !678, line: 26, size: 64, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !681, file: !678, line: 28, baseType: !666, size: 64, align: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !681, file: !678, line: 30, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !681, file: !678, line: 30, size: 64, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !685, file: !678, line: 31, baseType: !458, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !685, file: !678, line: 32, baseType: !115, size: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !630, file: !631, line: 95, baseType: !690, size: 64, offset: 768)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !631, line: 128, size: 1024, align: 512, elements: !693)
!693 = !{!694, !698, !699, !706, !712, !716, !720, !724, !725, !729, !733, !3848, !3852}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !692, file: !631, line: 129, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!115, !629, !13}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !692, file: !631, line: 130, baseType: !695, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !692, file: !631, line: 131, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!115, !703, !705}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !630)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !692, file: !631, line: 132, baseType: !707, size: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!115, !703, !13, !281, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !692, file: !631, line: 134, baseType: !713, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!115, !703}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !692, file: !631, line: 135, baseType: !717, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!115, !629}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !692, file: !631, line: 136, baseType: !721, size: 64, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !629}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !692, file: !631, line: 137, baseType: !721, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !692, file: !631, line: 138, baseType: !726, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !629, !594}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !692, file: !631, line: 139, baseType: !730, size: 64, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!517, !629, !517, !115}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !692, file: !631, line: 140, baseType: !734, size: 64, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!737, !3847}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !739, line: 70, size: 256, elements: !740)
!739 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!740 = !{!741, !742, !3843, !3844}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !738, file: !739, line: 71, baseType: !629, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !738, file: !739, line: 72, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !745)
!745 = !{!746, !747, !750, !751, !752, !756, !1234, !3548, !3588, !3673, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3690, !3694, !3695, !3698, !3701, !3704, !3707, !3708, !3709, !3750, !3776, !3777, !3778, !3779, !3780, !3781, !3784, !3786, !3793, !3794, !3795, !3796, !3797, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !744, file: !20, line: 1191, baseType: !445, size: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !744, file: !20, line: 1192, baseType: !748, size: 32, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !301, line: 21, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !301, line: 18, baseType: !302)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !744, file: !20, line: 1193, baseType: !287, size: 8, offset: 160)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !744, file: !20, line: 1194, baseType: !304, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !744, file: !20, line: 1195, baseType: !753, size: 64, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !301, line: 52, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !549, line: 88, baseType: !755)
!755 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !744, file: !20, line: 1196, baseType: !757, size: 64, offset: 320)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !759)
!759 = !{!760, !761, !762, !769, !773, !777, !781, !1219, !1220, !1224, !1226, !1227, !1228, !1230, !1231, !1232, !1233}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !758, file: !20, line: 2367, baseType: !281, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !758, file: !20, line: 2368, baseType: !115, size: 32, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !758, file: !20, line: 2376, baseType: !763, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!115, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !768, line: 32, flags: DIFlagFwdDecl)
!768 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!769 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !758, file: !20, line: 2377, baseType: !770, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !772)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !758, file: !20, line: 2378, baseType: !774, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!629, !757, !115, !281, !280}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !758, file: !20, line: 2380, baseType: !778, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !743}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !758, file: !20, line: 2381, baseType: !782, size: 64, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !784)
!784 = !{!785, !786, !787, !791, !813, !839, !840, !841, !842, !846, !851, !852, !872, !928, !929, !930, !931, !932, !935, !936, !937, !945, !949, !974, !995, !996, !997, !998, !1007, !1030, !1031, !1034, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1048, !1049, !1177, !1185, !1186, !1187, !1189, !1193, !1194, !1198, !1199, !1200, !1201, !1203, !1204, !1205, !1212, !1213, !1214, !1218}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !783, file: !12, line: 403, baseType: !11, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !783, file: !12, line: 406, baseType: !445, size: 128, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !783, file: !12, line: 409, baseType: !788, size: 448, offset: 192)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !789)
!789 = !{!790}
!790 = !DISubrange(count: 56)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !783, file: !12, line: 417, baseType: !792, size: 768, offset: 640)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !793)
!793 = !{!794, !795, !796, !797, !800}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !792, file: !12, line: 46, baseType: !440, size: 512)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !792, file: !12, line: 47, baseType: !782, size: 64, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !792, file: !12, line: 48, baseType: !451, size: 64, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !792, file: !12, line: 49, baseType: !798, size: 64, offset: 640)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !792, file: !12, line: 50, baseType: !801, size: 64, offset: 704)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !803, line: 26, size: 256, elements: !804)
!803 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !802, file: !803, line: 27, baseType: !13, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !802, file: !803, line: 28, baseType: !807, size: 192, offset: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !808, line: 43, size: 192, elements: !809)
!808 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!809 = !{!810, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !807, file: !808, line: 44, baseType: !811, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !467, line: 23, baseType: !466)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !807, file: !808, line: 45, baseType: !445, size: 128, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !783, file: !12, line: 418, baseType: !814, size: 64, offset: 1408)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !816)
!816 = !{!817, !818, !823, !827, !831, !835}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !815, file: !12, line: 54, baseType: !553, size: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !815, file: !12, line: 55, baseType: !819, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!547, !814, !822, !517}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !815, file: !12, line: 57, baseType: !824, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!547, !814, !822, !281, !562}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !815, file: !12, line: 59, baseType: !828, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !782, !281}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !815, file: !12, line: 60, baseType: !832, size: 64, offset: 320)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!115, !782}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !815, file: !12, line: 61, baseType: !836, size: 64, offset: 384)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !782}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !783, file: !12, line: 419, baseType: !281, size: 64, offset: 1472)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !783, file: !12, line: 420, baseType: !281, size: 64, offset: 1536)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !783, file: !12, line: 421, baseType: !451, size: 64, offset: 1600)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !783, file: !12, line: 424, baseType: !843, size: 64, offset: 1664)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !783, file: !12, line: 425, baseType: !847, size: 64, offset: 1728)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !284, line: 20, baseType: !850)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !286, line: 26, baseType: !115)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !783, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !783, file: !12, line: 435, baseType: !853, size: 256, offset: 1856)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !854, line: 66, size: 256, elements: !855)
!854 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!855 = !{!856, !865, !866, !871}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !853, file: !854, line: 67, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !858, line: 13, baseType: !859)
!858 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !301, line: 181, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 179, size: 64, elements: !861)
!861 = !{!862}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !860, file: !301, line: 180, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !284, line: 22, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !286, line: 30, baseType: !755)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !853, file: !854, line: 68, baseType: !811, size: 32, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !853, file: !854, line: 70, baseType: !867, size: 32, offset: 96)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !868, line: 15, size: 32, elements: !869)
!868 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !867, file: !868, line: 20, baseType: !431, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !853, file: !854, line: 72, baseType: !445, size: 128, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !783, file: !12, line: 437, baseType: !873, size: 64, offset: 2112)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !875, line: 69, size: 320, elements: !876)
!875 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!876 = !{!877, !878, !879, !899, !901, !905, !906}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !874, file: !875, line: 70, baseType: !281, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !874, file: !875, line: 71, baseType: !782, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !874, file: !875, line: 72, baseType: !880, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !875, line: 47, size: 256, elements: !883)
!883 = !{!884, !885, !891, !895}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !882, file: !875, line: 49, baseType: !13, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !882, file: !875, line: 51, baseType: !886, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!115, !281, !889}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !874)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !882, file: !875, line: 53, baseType: !892, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!115, !517, !889}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !882, file: !875, line: 55, baseType: !896, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !280}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !874, file: !875, line: 73, baseType: !900, size: 16, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !874, file: !875, line: 74, baseType: !902, size: 8, offset: 208)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !284, line: 16, baseType: !903)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !286, line: 20, baseType: !904)
!904 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !874, file: !875, line: 75, baseType: !283, size: 8, offset: 216)
!906 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !875, line: 76, baseType: !907, size: 64, offset: 256)
!907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !875, line: 76, size: 64, elements: !908)
!908 = !{!909, !910, !917}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !907, file: !875, line: 77, baseType: !280, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !907, file: !875, line: 78, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !913)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !875, line: 86, size: 128, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !913, file: !875, line: 87, baseType: !13, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !913, file: !875, line: 88, baseType: !517, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !907, file: !875, line: 79, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !875, line: 92, size: 256, elements: !921)
!921 = !{!922, !923, !924, !926, !927}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !920, file: !875, line: 94, baseType: !13, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !920, file: !875, line: 95, baseType: !13, size: 32, offset: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !920, file: !875, line: 96, baseType: !925, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !920, file: !875, line: 97, baseType: !880, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !920, file: !875, line: 98, baseType: !280, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !783, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !783, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !783, file: !12, line: 442, baseType: !843, size: 64, offset: 2240)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !783, file: !12, line: 443, baseType: !847, size: 64, offset: 2304)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !783, file: !12, line: 444, baseType: !933, size: 8, offset: 2368)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !301, line: 35, baseType: !934)
!934 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !783, file: !12, line: 451, baseType: !933, size: 8, offset: 2376)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !783, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !783, file: !12, line: 455, baseType: !938, size: 64, offset: 2432)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !940, line: 23, size: 96, elements: !941)
!940 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!941 = !{!942, !943, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !939, file: !940, line: 24, baseType: !115, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !939, file: !940, line: 24, baseType: !115, size: 32, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !939, file: !940, line: 24, baseType: !115, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !783, file: !12, line: 458, baseType: !946, size: 64, offset: 2496)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!115}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !783, file: !12, line: 460, baseType: !950, size: 4032, align: 512, offset: 2560)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !951, size: 4032, elements: !972)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !952)
!952 = !{!953, !954, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !951, file: !12, line: 363, baseType: !280, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !951, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !951, file: !12, line: 367, baseType: !956, size: 448, offset: 128)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !956, file: !12, line: 320, baseType: !782, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !956, file: !12, line: 321, baseType: !960, size: 384, offset: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !961, line: 40, size: 384, elements: !962)
!961 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!962 = !{!963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !960, file: !961, line: 41, baseType: !964, size: 384, align: 64)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !965, size: 384, align: 64, elements: !403)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !966, line: 5, size: 192, align: 64, elements: !967)
!966 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!967 = !{!968, !969, !971}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !965, file: !966, line: 6, baseType: !304, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !965, file: !966, line: 7, baseType: !970, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !965, file: !966, line: 8, baseType: !970, size: 64, offset: 128)
!972 = !{!973}
!973 = !DISubrange(count: 7)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !783, file: !12, line: 463, baseType: !975, size: 192, offset: 6592)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !976, line: 8, size: 192, elements: !977)
!976 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!977 = !{!978, !979, !981}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !975, file: !976, line: 10, baseType: !13, size: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !975, file: !976, line: 11, baseType: !980, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !975, file: !976, line: 12, baseType: !982, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !984, line: 59, size: 48, elements: !985)
!984 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!985 = !{!986, !990, !991, !992, !993, !994}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !983, file: !984, line: 60, baseType: !987, size: 16)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !284, line: 18, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !286, line: 23, baseType: !989)
!989 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !983, file: !984, line: 61, baseType: !987, size: 16, offset: 16)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !983, file: !984, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !983, file: !984, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !983, file: !984, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !983, file: !984, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !783, file: !12, line: 465, baseType: !304, size: 64, offset: 6784)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !783, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !783, file: !12, line: 470, baseType: !445, size: 128, offset: 6912)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !783, file: !12, line: 471, baseType: !999, size: 64, offset: 7040)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1001, line: 33, size: 96, elements: !1002)
!1001 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1002 = !{!1003, !1004, !1005, !1006}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1000, file: !1001, line: 37, baseType: !115, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1000, file: !1001, line: 43, baseType: !115, size: 32, offset: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1000, file: !1001, line: 45, baseType: !298, size: 16, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1000, file: !1001, line: 47, baseType: !298, size: 16, offset: 80)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !783, file: !12, line: 476, baseType: !1008, size: 64, offset: 7104)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !1010)
!1010 = !{!1011, !1027, !1028, !1029}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1009, file: !12, line: 379, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1014, line: 204, baseType: !1015)
!1014 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1014, line: 197, size: 192, elements: !1016)
!1016 = !{!1017, !1019, !1020, !1021, !1023, !1025}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1015, file: !1014, line: 198, baseType: !1018, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1014, line: 21, baseType: !303)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1015, file: !1014, line: 199, baseType: !287, size: 8, offset: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1015, file: !1014, line: 200, baseType: !287, size: 8, offset: 40)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1015, file: !1014, line: 201, baseType: !1022, size: 16, offset: 48)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1014, line: 17, baseType: !297)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1015, file: !1014, line: 202, baseType: !1024, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1014, line: 16, baseType: !666)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1015, file: !1014, line: 203, baseType: !1026, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1014, line: 22, baseType: !666)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1009, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1009, file: !12, line: 381, baseType: !517, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1009, file: !12, line: 382, baseType: !517, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !783, file: !12, line: 477, baseType: !1009, size: 256, offset: 7168)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !783, file: !12, line: 480, baseType: !1032, size: 64, offset: 7424)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !783, file: !12, line: 483, baseType: !1035, size: 64, offset: 7488)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !783, file: !12, line: 488, baseType: !517, size: 64, offset: 7552)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !783, file: !12, line: 492, baseType: !280, size: 64, offset: 7616)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !783, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !783, file: !12, line: 495, baseType: !280, size: 64, offset: 7744)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !783, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !783, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !783, file: !12, line: 500, baseType: !1044, size: 64, offset: 7872)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1046, line: 45, baseType: !1047)
!1046 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !783, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !783, file: !12, line: 504, baseType: !1050, size: 64, offset: 8000)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1053, line: 96, size: 192, elements: !1054)
!1053 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1054 = !{!1055, !1056, !1137, !1141}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1052, file: !1053, line: 97, baseType: !13, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1052, file: !1053, line: 98, baseType: !1057, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1053, line: 24, size: 3072, elements: !1059)
!1059 = !{!1060, !1062, !1063, !1064, !1065, !1089, !1090, !1091, !1092, !1110, !1122, !1123, !1134, !1135, !1136}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1058, file: !1053, line: 26, baseType: !1061, size: 128)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !857, size: 128, elements: !403)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1058, file: !1053, line: 27, baseType: !1061, size: 128, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1058, file: !1053, line: 28, baseType: !115, size: 32, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1058, file: !1053, line: 31, baseType: !458, size: 32, align: 512, offset: 512)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1058, file: !1053, line: 32, baseType: !1066, size: 960, offset: 576)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1067, line: 206, size: 960, elements: !1068)
!1067 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1068 = !{!1069, !1078, !1083, !1085, !1086, !1088}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1066, file: !1067, line: 207, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !301, line: 232, size: 128, align: 64, elements: !1072)
!1072 = !{!1073, !1074}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1071, file: !301, line: 233, baseType: !1070, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1071, file: !301, line: 234, baseType: !1075, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{null, !1070}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1066, file: !1067, line: 208, baseType: !1079, size: 256, offset: 64)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1080, size: 256, elements: !1081)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1081 = !{!1082}
!1082 = !DISubrange(count: 4)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1066, file: !1067, line: 209, baseType: !1084, size: 256, offset: 320)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 256, elements: !1081)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1066, file: !1067, line: 213, baseType: !551, size: 64, offset: 576)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1066, file: !1067, line: 215, baseType: !1087, size: 256, offset: 640)
!1087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 256, elements: !1081)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1066, file: !1067, line: 216, baseType: !283, size: 8, offset: 896)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1058, file: !1053, line: 33, baseType: !304, size: 64, offset: 1536)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1058, file: !1053, line: 34, baseType: !304, size: 64, offset: 1600)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1058, file: !1053, line: 35, baseType: !933, size: 8, offset: 1664)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1058, file: !1053, line: 36, baseType: !1093, size: 320, offset: 1728)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1094, line: 11, size: 320, elements: !1095)
!1094 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1095 = !{!1096, !1103, !1104, !1109}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1093, file: !1094, line: 16, baseType: !1097, size: 128)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !301, line: 198, size: 128, elements: !1098)
!1098 = !{!1099, !1101}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1097, file: !301, line: 199, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1097, file: !301, line: 199, baseType: !1102, size: 64, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1093, file: !1094, line: 17, baseType: !304, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1093, file: !1094, line: 18, baseType: !1105, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{null, !1108}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1093, file: !1094, line: 19, baseType: !302, size: 32, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1058, file: !1053, line: 37, baseType: !1111, size: 256, offset: 2048)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1112, line: 98, size: 256, elements: !1113)
!1112 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1113 = !{!1114, !1115, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1111, file: !1112, line: 99, baseType: !857, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1111, file: !1112, line: 100, baseType: !445, size: 128, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1111, file: !1112, line: 101, baseType: !1117, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1112, line: 21, baseType: !1118)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !1121}
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1058, file: !1053, line: 38, baseType: !1071, size: 128, align: 64, offset: 2304)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1058, file: !1053, line: 39, baseType: !1124, size: 64, offset: 2432)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1053, line: 49, size: 768, elements: !1126)
!1126 = !{!1127, !1128, !1129, !1130, !1131, !1132, !1133}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1125, file: !1053, line: 50, baseType: !458, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1125, file: !1053, line: 51, baseType: !1084, size: 256, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1125, file: !1053, line: 53, baseType: !1084, size: 256, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1125, file: !1053, line: 54, baseType: !304, size: 64, offset: 576)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1125, file: !1053, line: 55, baseType: !1124, size: 64, offset: 640)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1125, file: !1053, line: 56, baseType: !115, size: 32, offset: 704)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1125, file: !1053, line: 57, baseType: !115, size: 32, offset: 736)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1058, file: !1053, line: 40, baseType: !304, size: 64, offset: 2496)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1058, file: !1053, line: 42, baseType: !115, size: 32, offset: 2560)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1058, file: !1053, line: 43, baseType: !1051, size: 64, offset: 2624)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1052, file: !1053, line: 99, baseType: !1138, offset: 128)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1139, line: 211, elements: !1140)
!1139 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1140 = !{}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1052, file: !1053, line: 100, baseType: !1142, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1053, line: 63, size: 3008, elements: !1144)
!1144 = !{!1145, !1146, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1176}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1143, file: !1053, line: 64, baseType: !1124, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1143, file: !1053, line: 65, baseType: !1147, size: 192, offset: 64)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1124, size: 192, elements: !391)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1143, file: !1053, line: 67, baseType: !115, size: 32, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1143, file: !1053, line: 68, baseType: !853, size: 256, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1143, file: !1053, line: 69, baseType: !458, size: 32, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1143, file: !1053, line: 70, baseType: !853, size: 256, offset: 640)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1143, file: !1053, line: 71, baseType: !304, size: 64, offset: 896)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1143, file: !1053, line: 72, baseType: !304, size: 64, offset: 960)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1143, file: !1053, line: 73, baseType: !304, size: 64, offset: 1024)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1143, file: !1053, line: 74, baseType: !304, size: 64, offset: 1088)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1143, file: !1053, line: 75, baseType: !304, size: 64, offset: 1152)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1143, file: !1053, line: 76, baseType: !304, size: 64, offset: 1216)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1143, file: !1053, line: 77, baseType: !304, size: 64, offset: 1280)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1143, file: !1053, line: 78, baseType: !304, size: 64, offset: 1344)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1143, file: !1053, line: 79, baseType: !933, size: 8, offset: 1408)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1143, file: !1053, line: 80, baseType: !304, size: 64, offset: 1472)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1143, file: !1053, line: 81, baseType: !853, size: 256, offset: 1536)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1143, file: !1053, line: 82, baseType: !802, size: 256, offset: 1792)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1143, file: !1053, line: 84, baseType: !431, size: 32, offset: 2048)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1143, file: !1053, line: 87, baseType: !304, size: 64, offset: 2112)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1143, file: !1053, line: 88, baseType: !304, size: 64, offset: 2176)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1143, file: !1053, line: 89, baseType: !1168, size: 704, offset: 2240)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1112, line: 111, size: 704, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1175}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1168, file: !1112, line: 112, baseType: !1111, size: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1168, file: !1112, line: 113, baseType: !1093, size: 320, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1168, file: !1112, line: 116, baseType: !1173, size: 64, offset: 576)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1112, line: 18, flags: DIFlagFwdDecl)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1168, file: !1112, line: 117, baseType: !115, size: 32, offset: 640)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1143, file: !1053, line: 90, baseType: !1051, size: 64, offset: 2944)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !783, file: !12, line: 515, baseType: !1178, size: 64, offset: 8064)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1180, line: 117, size: 128, elements: !1181)
!1180 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1181 = !{!1182, !1183, !1184}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1179, file: !1180, line: 118, baseType: !849, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1179, file: !1180, line: 119, baseType: !849, size: 32, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1179, file: !1180, line: 120, baseType: !551, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !783, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !783, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !783, file: !12, line: 520, baseType: !1188, size: 64, offset: 8192)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !783, file: !12, line: 523, baseType: !1190, size: 64, offset: 8256)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !783, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !783, file: !12, line: 525, baseType: !1195, size: 64, offset: 8384)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !783, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !783, file: !12, line: 533, baseType: !280, size: 64, offset: 8512)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !783, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !783, file: !12, line: 535, baseType: !1202, size: 64, offset: 8640)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !783, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !783, file: !12, line: 539, baseType: !115, size: 32, offset: 8736)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !783, file: !12, line: 540, baseType: !1206, size: 64, offset: 8768)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1208, line: 32, size: 64, elements: !1209)
!1208 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1207, file: !1208, line: 33, baseType: !849, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1207, file: !1208, line: 34, baseType: !849, size: 32, offset: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !783, file: !12, line: 563, baseType: !445, size: 128, offset: 8832)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !783, file: !12, line: 565, baseType: !445, size: 128, offset: 8960)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !783, file: !12, line: 568, baseType: !1215, size: 64, offset: 9088)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !783, file: !12, line: 570, baseType: !431, size: 32, offset: 9152)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !758, file: !20, line: 2382, baseType: !757, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !758, file: !20, line: 2383, baseType: !1221, size: 64, offset: 512)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !301, line: 194, size: 64, elements: !1222)
!1222 = !{!1223}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1221, file: !301, line: 195, baseType: !1100, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !758, file: !20, line: 2385, baseType: !1225, offset: 576)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1139, line: 206, elements: !1140)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !758, file: !20, line: 2386, baseType: !1225, offset: 576)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !758, file: !20, line: 2387, baseType: !1225, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !758, file: !20, line: 2388, baseType: !1229, offset: 576)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1225, elements: !391)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !758, file: !20, line: 2390, baseType: !1225, offset: 576)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !758, file: !20, line: 2391, baseType: !1225, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !758, file: !20, line: 2392, baseType: !1225, offset: 576)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !758, file: !20, line: 2393, baseType: !1225, offset: 576)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !744, file: !20, line: 1197, baseType: !1235, size: 64, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1237)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !1238)
!1238 = !{!1239, !1243, !1247, !1248, !1252, !1258, !1262, !1263, !1264, !1268, !1272, !1276, !1277, !1278, !1284, !1288, !1289, !3473, !3474, !3475, !3476, !3480, !3484, !3531, !3546, !3547}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1237, file: !20, line: 2058, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!594, !743}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1237, file: !20, line: 2059, baseType: !1244, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null, !594}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1237, file: !20, line: 2060, baseType: !1244, size: 64, offset: 128)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1237, file: !20, line: 2062, baseType: !1249, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, !594, !115}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1237, file: !20, line: 2063, baseType: !1253, size: 64, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!115, !594, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1237, file: !20, line: 2064, baseType: !1259, size: 64, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!115, !594}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1237, file: !20, line: 2065, baseType: !1244, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1237, file: !20, line: 2066, baseType: !778, size: 64, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1237, file: !20, line: 2067, baseType: !1265, size: 64, offset: 512)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!115, !743, !115}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1237, file: !20, line: 2068, baseType: !1269, size: 64, offset: 576)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!115, !743, !19}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1237, file: !20, line: 2069, baseType: !1273, size: 64, offset: 640)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!115, !743}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1237, file: !20, line: 2070, baseType: !1269, size: 64, offset: 704)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1237, file: !20, line: 2071, baseType: !1273, size: 64, offset: 768)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1237, file: !20, line: 2072, baseType: !1279, size: 64, offset: 832)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!115, !629, !1282}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1237, file: !20, line: 2073, baseType: !1285, size: 64, offset: 896)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!115, !743, !980, !517}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1237, file: !20, line: 2074, baseType: !778, size: 64, offset: 960)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1237, file: !20, line: 2076, baseType: !1290, size: 64, offset: 1024)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!115, !1293, !629}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1295, line: 17, size: 960, elements: !1296)
!1295 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1327, !1328, !3472}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1294, file: !1295, line: 18, baseType: !517, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1294, file: !1295, line: 19, baseType: !562, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1294, file: !1295, line: 20, baseType: !562, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1294, file: !1295, line: 21, baseType: !562, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1294, file: !1295, line: 22, baseType: !562, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1294, file: !1295, line: 23, baseType: !753, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1294, file: !1295, line: 24, baseType: !753, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1294, file: !1295, line: 25, baseType: !853, size: 256, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1294, file: !1295, line: 26, baseType: !1306, size: 64, offset: 704)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1295, line: 32, size: 256, elements: !1309)
!1309 = !{!1310, !1315, !1319, !1323}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1308, file: !1295, line: 33, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!280, !1293, !1314}
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1308, file: !1295, line: 34, baseType: !1316, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !1293, !280}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1308, file: !1295, line: 35, baseType: !1320, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!280, !1293, !280, !1314}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1308, file: !1295, line: 36, baseType: !1324, size: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!115, !1293, !280}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1294, file: !1295, line: 27, baseType: !115, size: 32, offset: 768)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1294, file: !1295, line: 28, baseType: !1329, size: 64, offset: 832)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !1332)
!1332 = !{!1333, !1344, !1345, !1347, !1348, !1349, !1350, !1351, !3287, !3288, !3297, !3303, !3304, !3462, !3463, !3464, !3465, !3467, !3468, !3471}
!1333 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !20, line: 995, baseType: !1334, size: 128)
!1334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1331, file: !20, line: 995, size: 128, elements: !1335)
!1335 = !{!1336, !1342, !1343}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1334, file: !20, line: 996, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1338, line: 60, size: 64, elements: !1339)
!1338 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1337, file: !1338, line: 61, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1334, file: !20, line: 997, baseType: !1071, size: 128, align: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1334, file: !20, line: 998, baseType: !13, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1331, file: !20, line: 1005, baseType: !458, size: 32, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1331, file: !20, line: 1006, baseType: !1346, size: 32, offset: 160)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !301, line: 156, baseType: !13)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1331, file: !20, line: 1007, baseType: !857, size: 64, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1331, file: !20, line: 1008, baseType: !853, size: 256, offset: 256)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1331, file: !20, line: 1009, baseType: !753, size: 64, offset: 512)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1331, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1331, file: !20, line: 1011, baseType: !1352, size: 256, offset: 640)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !1353)
!1353 = !{!1354, !1375, !3283, !3284, !3285, !3286}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1352, file: !20, line: 949, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1356, line: 34, baseType: !1357)
!1356 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1356, line: 25, size: 64, elements: !1358)
!1358 = !{!1359}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1357, file: !1356, line: 26, baseType: !1360, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1361, line: 27, baseType: !1362)
!1361 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1361, line: 13, size: 64, elements: !1363)
!1363 = !{!1364, !1374}
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1362, file: !1361, line: 14, baseType: !1365, size: 32)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1362, file: !1361, line: 14, size: 32, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1365, file: !1361, line: 15, baseType: !431, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !1361, line: 16, baseType: !1369, size: 32)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1365, file: !1361, line: 16, size: 32, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1369, file: !1361, line: 18, baseType: !283, size: 8)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1369, file: !1361, line: 19, baseType: !1373, size: 24, offset: 8)
!1373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 24, elements: !391)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1362, file: !1361, line: 26, baseType: !470, size: 32, offset: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1352, file: !20, line: 950, baseType: !1376, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !67, line: 59, size: 768, elements: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1384, !1385, !1392, !1393}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1377, file: !67, line: 61, baseType: !426, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1377, file: !67, line: 62, baseType: !13, size: 32, offset: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1377, file: !67, line: 63, baseType: !458, size: 32, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1377, file: !67, line: 65, baseType: !1383, size: 256, offset: 128)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 256, elements: !1081)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1377, file: !67, line: 66, baseType: !1221, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1377, file: !67, line: 68, baseType: !1386, size: 192, offset: 448)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1387, line: 41, baseType: !1388)
!1387 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1387, line: 37, size: 192, elements: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1388, file: !1387, line: 38, baseType: !458, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1388, file: !1387, line: 39, baseType: !445, size: 128, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1377, file: !67, line: 69, baseType: !1071, size: 128, align: 64, offset: 640)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1377, file: !67, line: 70, baseType: !1394, offset: 768)
!1394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1395, elements: !1878)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !67, line: 54, size: 128, elements: !1396)
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1395, file: !67, line: 55, baseType: !115, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1395, file: !67, line: 56, baseType: !1399, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1401, line: 26, size: 1152, elements: !1402)
!1401 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1402 = !{!1403, !1416, !1417, !1418, !3259, !3263, !3264, !3265, !3268, !3269, !3270, !3271, !3282}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1400, file: !1401, line: 27, baseType: !1404, size: 192)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1405, line: 19, size: 192, elements: !1406)
!1405 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1406 = !{!1407, !1414, !1415}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1404, file: !1405, line: 20, baseType: !1408, size: 128)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1409, line: 296, size: 128, elements: !1410)
!1409 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1410 = !{!1411, !1412, !1413}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1408, file: !1409, line: 297, baseType: !458, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1408, file: !1409, line: 299, baseType: !300, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1408, file: !1409, line: 300, baseType: !280, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1404, file: !1405, line: 21, baseType: !13, size: 32, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1404, file: !1405, line: 22, baseType: !13, size: 32, offset: 160)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1400, file: !1401, line: 28, baseType: !1071, size: 128, align: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1400, file: !1401, line: 29, baseType: !13, size: 32, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1400, file: !1401, line: 30, baseType: !1419, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1421, line: 746, size: 58368, elements: !1422)
!1421 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1422 = !{!1423, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1503, !1514, !1607, !1611, !1614, !1645, !1646, !1647, !1648, !1659, !1661, !1662, !1663, !1664, !1665, !1666, !1677, !1678, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1695, !1696, !1703, !1704, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1959, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !2007, !2013, !2195, !2196, !2197, !2198, !2199, !2202, !2209, !2214, !2217, !2220, !2223, !2249, !2387, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2425, !2426, !2427, !2436, !2444, !2445, !2446, !2447, !2448, !2453, !2454, !2455, !2458, !2459, !2462, !2465, !2468, !2476, !2479, !2480, !2565, !2566, !2567, !2568, !2569, !2575, !2576, !2577, !2578, !2581, !2582, !2585, !2588, !2589, !2592, !2593, !2594, !2597, !2598, !2599, !2602, !2603, !2604, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2636, !2639, !2928, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2940, !3012, !3014, !3015, !3016, !3017, !3018, !3019, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3036, !3037, !3038}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1420, file: !1421, line: 752, baseType: !1424, size: 192)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1425, line: 56, size: 192, elements: !1426)
!1425 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1426 = !{!1427, !1428, !1429, !1430}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1424, file: !1425, line: 57, baseType: !304, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1424, file: !1425, line: 58, baseType: !304, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1424, file: !1425, line: 59, baseType: !302, size: 32, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1424, file: !1425, line: 61, baseType: !302, size: 32, offset: 160)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1420, file: !1421, line: 754, baseType: !13, size: 32, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1420, file: !1421, line: 767, baseType: !280, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1420, file: !1421, line: 768, baseType: !426, size: 32, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1420, file: !1421, line: 770, baseType: !13, size: 32, offset: 352)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1420, file: !1421, line: 771, baseType: !13, size: 32, offset: 384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1420, file: !1421, line: 774, baseType: !115, size: 32, offset: 416)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1420, file: !1421, line: 775, baseType: !1438, size: 128, offset: 448)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1439, line: 58, size: 128, elements: !1440)
!1439 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1440 = !{!1441, !1442, !1447, !1448}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1438, file: !1439, line: 59, baseType: !1337, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1438, file: !1439, line: 60, baseType: !1443, size: 32, offset: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1438, file: !1439, line: 60, size: 32, elements: !1444)
!1444 = !{!1445, !1446}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1443, file: !1439, line: 61, baseType: !13, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1443, file: !1439, line: 62, baseType: !431, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1438, file: !1439, line: 65, baseType: !487, size: 16, offset: 96)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1438, file: !1439, line: 65, baseType: !487, size: 16, offset: 112)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1420, file: !1421, line: 776, baseType: !13, size: 32, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1420, file: !1421, line: 777, baseType: !304, size: 64, offset: 640)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1420, file: !1421, line: 778, baseType: !1419, size: 64, offset: 704)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1420, file: !1421, line: 787, baseType: !115, size: 32, offset: 768)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1420, file: !1421, line: 788, baseType: !115, size: 32, offset: 800)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1420, file: !1421, line: 790, baseType: !115, size: 32, offset: 832)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1420, file: !1421, line: 792, baseType: !115, size: 32, offset: 864)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1420, file: !1421, line: 793, baseType: !115, size: 32, offset: 896)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1420, file: !1421, line: 794, baseType: !115, size: 32, offset: 928)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1420, file: !1421, line: 795, baseType: !13, size: 32, offset: 960)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1420, file: !1421, line: 797, baseType: !1460, size: 2048, offset: 1024)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1421, line: 551, size: 2048, elements: !1461)
!1461 = !{!1462, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1482, !1485, !1486, !1487}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1460, file: !1421, line: 553, baseType: !1463, size: 128)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1421, line: 411, size: 128, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1463, file: !1421, line: 412, baseType: !304, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1463, file: !1421, line: 413, baseType: !302, size: 32, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1460, file: !1421, line: 554, baseType: !965, size: 192, align: 64, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1460, file: !1421, line: 555, baseType: !665, size: 64, offset: 320)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1460, file: !1421, line: 556, baseType: !665, size: 64, offset: 384)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1460, file: !1421, line: 558, baseType: !445, size: 128, offset: 448)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1460, file: !1421, line: 559, baseType: !13, size: 32, offset: 576)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1460, file: !1421, line: 561, baseType: !665, size: 64, offset: 640)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1460, file: !1421, line: 562, baseType: !665, size: 64, offset: 704)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1460, file: !1421, line: 563, baseType: !665, size: 64, offset: 768)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1460, file: !1421, line: 564, baseType: !665, size: 64, offset: 832)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1460, file: !1421, line: 565, baseType: !863, size: 64, offset: 896)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1460, file: !1421, line: 566, baseType: !665, size: 64, offset: 960)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1460, file: !1421, line: 568, baseType: !665, size: 64, offset: 1024)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1460, file: !1421, line: 571, baseType: !115, size: 32, offset: 1088)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1460, file: !1421, line: 572, baseType: !1481, size: 64, offset: 1152)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1460, file: !1421, line: 574, baseType: !1483, size: 64, offset: 1216)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1421, line: 49, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1460, file: !1421, line: 576, baseType: !1483, size: 64, offset: 1280)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1460, file: !1421, line: 578, baseType: !304, size: 64, offset: 1344)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1460, file: !1421, line: 588, baseType: !1488, size: 512, align: 512, offset: 1536)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1421, line: 497, size: 512, align: 512, elements: !1489)
!1489 = !{!1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1488, file: !1421, line: 498, baseType: !665, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1488, file: !1421, line: 499, baseType: !665, size: 64, offset: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1488, file: !1421, line: 500, baseType: !665, size: 64, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1488, file: !1421, line: 501, baseType: !302, size: 32, offset: 192)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1488, file: !1421, line: 502, baseType: !302, size: 32, offset: 224)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1488, file: !1421, line: 503, baseType: !304, size: 64, offset: 256)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1488, file: !1421, line: 504, baseType: !304, size: 64, offset: 320)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1488, file: !1421, line: 505, baseType: !304, size: 64, offset: 384)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1488, file: !1421, line: 506, baseType: !1499, size: 64, align: 64, offset: 448)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1421, line: 445, size: 64, align: 64, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1499, file: !1421, line: 446, baseType: !13, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1499, file: !1421, line: 447, baseType: !13, size: 32, offset: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1420, file: !1421, line: 798, baseType: !1504, size: 384, offset: 3072)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1421, line: 592, size: 384, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1504, file: !1421, line: 593, baseType: !445, size: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1504, file: !1421, line: 594, baseType: !304, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1504, file: !1421, line: 595, baseType: !304, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1504, file: !1421, line: 596, baseType: !13, size: 32, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1504, file: !1421, line: 597, baseType: !298, size: 16, offset: 288)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1504, file: !1421, line: 598, baseType: !298, size: 16, offset: 304)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1504, file: !1421, line: 600, baseType: !1513, size: 64, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1420, file: !1421, line: 799, baseType: !1515, size: 1792, offset: 3456)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1421, line: 610, size: 1792, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1604, !1605}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1515, file: !1421, line: 611, baseType: !965, size: 192, align: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1515, file: !1421, line: 618, baseType: !665, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1515, file: !1421, line: 619, baseType: !665, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1515, file: !1421, line: 620, baseType: !665, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1515, file: !1421, line: 621, baseType: !665, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1515, file: !1421, line: 622, baseType: !665, size: 64, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1515, file: !1421, line: 629, baseType: !863, size: 64, offset: 512)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1515, file: !1421, line: 630, baseType: !665, size: 64, offset: 576)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1515, file: !1421, line: 631, baseType: !13, size: 32, offset: 640)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1515, file: !1421, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1515, file: !1421, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1515, file: !1421, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1515, file: !1421, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1515, file: !1421, line: 662, baseType: !1531, size: 512, offset: 704)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1532)
!1532 = !{!1533, !1541, !1542, !1547, !1600, !1601, !1602, !1603}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1531, file: !25, line: 119, baseType: !1534, size: 256)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1535, line: 9, size: 256, elements: !1536)
!1535 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1536 = !{!1537, !1538}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1534, file: !1535, line: 10, baseType: !965, size: 192, align: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1534, file: !1535, line: 11, baseType: !1539, size: 64, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1540, line: 29, baseType: !863)
!1540 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1531, file: !25, line: 120, baseType: !1539, size: 64, offset: 256)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1531, file: !25, line: 121, baseType: !1543, size: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!24, !1546}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1531, file: !25, line: 122, baseType: !1548, size: 64, offset: 384)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1550)
!1550 = !{!1551, !1574, !1575, !1578, !1583, !1584, !1595, !1599}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1549, file: !25, line: 160, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1554)
!1554 = !{!1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1553, file: !25, line: 216, baseType: !811, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1553, file: !25, line: 217, baseType: !13, size: 32, offset: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1553, file: !25, line: 218, baseType: !13, size: 32, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1553, file: !25, line: 219, baseType: !13, size: 32, offset: 96)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1553, file: !25, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1553, file: !25, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1553, file: !25, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1553, file: !25, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1553, file: !25, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1553, file: !25, line: 226, baseType: !13, size: 32, offset: 160)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1553, file: !25, line: 227, baseType: !298, size: 16, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1553, file: !25, line: 228, baseType: !298, size: 16, offset: 208)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1553, file: !25, line: 229, baseType: !13, size: 32, offset: 224)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1553, file: !25, line: 235, baseType: !1539, size: 64, offset: 256)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1553, file: !25, line: 236, baseType: !1546, size: 64, offset: 320)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1553, file: !25, line: 237, baseType: !1539, size: 64, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1553, file: !25, line: 238, baseType: !1546, size: 64, offset: 448)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1553, file: !25, line: 239, baseType: !1573, size: 4096, align: 512, offset: 512)
!1573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1549, size: 4096, align: 512, elements: !379)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1549, file: !25, line: 161, baseType: !13, size: 32, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1549, file: !25, line: 162, baseType: !1576, size: 32, offset: 96)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !301, line: 32, baseType: !1577)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !549, line: 96, baseType: !115)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1549, file: !25, line: 163, baseType: !1579, size: 32, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !636, line: 274, baseType: !1580)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !636, line: 274, size: 32, elements: !1581)
!1581 = !{!1582}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1580, file: !636, line: 274, baseType: !640, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1549, file: !25, line: 164, baseType: !1546, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1549, file: !25, line: 165, baseType: !1585, size: 128, offset: 256)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1535, line: 14, size: 128, elements: !1586)
!1586 = !{!1587}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1585, file: !1535, line: 15, baseType: !1588, size: 128)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !966, line: 26, size: 128, elements: !1589)
!1589 = !{!1590, !1594}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1588, file: !966, line: 27, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !966, line: 12, size: 64, elements: !1592)
!1592 = !{!1593}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1591, file: !966, line: 13, baseType: !970, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1588, file: !966, line: 28, baseType: !970, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1549, file: !25, line: 166, baseType: !1596, size: 64, offset: 384)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!1539}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1549, file: !25, line: 167, baseType: !1539, size: 64, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1531, file: !25, line: 123, baseType: !283, size: 8, offset: 448)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1531, file: !25, line: 124, baseType: !283, size: 8, offset: 456)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1531, file: !25, line: 125, baseType: !283, size: 8, offset: 464)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1531, file: !25, line: 126, baseType: !283, size: 8, offset: 472)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1515, file: !1421, line: 671, baseType: !1531, size: 512, offset: 1216)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1515, file: !1421, line: 679, baseType: !1606, size: 64, offset: 1728)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1420, file: !1421, line: 800, baseType: !1608, size: 64, offset: 5248)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1610)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1421, line: 800, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1420, file: !1421, line: 809, baseType: !1612, size: 64, offset: 5312)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1421, line: 70, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1420, file: !1421, line: 825, baseType: !1615, size: 2048, align: 512, offset: 5632)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1421, line: 509, size: 2048, align: 512, elements: !1616)
!1616 = !{!1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1615, file: !1421, line: 511, baseType: !665, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1615, file: !1421, line: 512, baseType: !665, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1615, file: !1421, line: 513, baseType: !665, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1615, file: !1421, line: 514, baseType: !665, size: 64, offset: 192)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1615, file: !1421, line: 515, baseType: !665, size: 64, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1615, file: !1421, line: 516, baseType: !665, size: 64, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1615, file: !1421, line: 518, baseType: !665, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1615, file: !1421, line: 519, baseType: !665, size: 64, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1615, file: !1421, line: 520, baseType: !863, size: 64, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1615, file: !1421, line: 522, baseType: !665, size: 64, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1615, file: !1421, line: 523, baseType: !665, size: 64, offset: 640)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1615, file: !1421, line: 524, baseType: !863, size: 64, offset: 704)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1615, file: !1421, line: 526, baseType: !863, size: 64, offset: 768)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1615, file: !1421, line: 527, baseType: !665, size: 64, offset: 832)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1615, file: !1421, line: 529, baseType: !665, size: 64, offset: 896)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1615, file: !1421, line: 530, baseType: !665, size: 64, offset: 960)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1615, file: !1421, line: 531, baseType: !665, size: 64, offset: 1024)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1615, file: !1421, line: 532, baseType: !665, size: 64, offset: 1088)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1615, file: !1421, line: 533, baseType: !665, size: 64, offset: 1152)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1615, file: !1421, line: 535, baseType: !665, size: 64, offset: 1216)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1615, file: !1421, line: 536, baseType: !665, size: 64, offset: 1280)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1615, file: !1421, line: 537, baseType: !665, size: 64, offset: 1344)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1615, file: !1421, line: 538, baseType: !665, size: 64, offset: 1408)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1615, file: !1421, line: 539, baseType: !665, size: 64, offset: 1472)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1615, file: !1421, line: 540, baseType: !665, size: 64, offset: 1536)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1615, file: !1421, line: 541, baseType: !665, size: 64, offset: 1600)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1615, file: !1421, line: 542, baseType: !665, size: 64, offset: 1664)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1615, file: !1421, line: 543, baseType: !665, size: 64, offset: 1728)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1420, file: !1421, line: 833, baseType: !13, size: 32, offset: 7680)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1420, file: !1421, line: 836, baseType: !13, size: 32, offset: 7712)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1420, file: !1421, line: 837, baseType: !115, size: 32, offset: 7744)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1420, file: !1421, line: 838, baseType: !1649, size: 64, offset: 7808)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1651)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1652, line: 19, baseType: !1653)
!1652 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1652, line: 19, size: 64, elements: !1654)
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1653, file: !1652, line: 19, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 64, elements: !1657)
!1657 = !{!1658}
!1658 = !DISubrange(count: 1)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1420, file: !1421, line: 839, baseType: !1660, size: 64, offset: 7872)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1420, file: !1421, line: 840, baseType: !1651, size: 64, offset: 7936)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1420, file: !1421, line: 841, baseType: !280, size: 64, offset: 8000)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1420, file: !1421, line: 843, baseType: !298, size: 16, offset: 8064)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1420, file: !1421, line: 845, baseType: !298, size: 16, offset: 8080)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1420, file: !1421, line: 848, baseType: !115, size: 32, offset: 8096)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1420, file: !1421, line: 849, baseType: !1667, size: 32, offset: 8128)
!1667 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1421, line: 718, size: 32, elements: !1668)
!1668 = !{!1669, !1676}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1667, file: !1421, line: 724, baseType: !1670, size: 32)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1667, file: !1421, line: 719, size: 32, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1670, file: !1421, line: 720, baseType: !283, size: 8)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1670, file: !1421, line: 721, baseType: !283, size: 8, offset: 8)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1670, file: !1421, line: 722, baseType: !283, size: 8, offset: 16)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1670, file: !1421, line: 723, baseType: !283, size: 8, offset: 24)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1667, file: !1421, line: 725, baseType: !302, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1420, file: !1421, line: 850, baseType: !445, size: 128, offset: 8192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1420, file: !1421, line: 851, baseType: !1679, size: 64, offset: 8320)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1421, line: 60, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1420, file: !1421, line: 855, baseType: !304, size: 64, offset: 8384)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1420, file: !1421, line: 856, baseType: !283, size: 8, offset: 8448)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1420, file: !1421, line: 857, baseType: !283, size: 8, offset: 8456)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1420, file: !1421, line: 858, baseType: !115, size: 32, offset: 8480)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1420, file: !1421, line: 859, baseType: !445, size: 128, offset: 8512)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1420, file: !1421, line: 860, baseType: !115, size: 32, offset: 8640)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1420, file: !1421, line: 861, baseType: !445, size: 128, offset: 8704)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1420, file: !1421, line: 873, baseType: !1689, size: 256, offset: 8832)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1421, line: 376, size: 256, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1689, file: !1421, line: 381, baseType: !304, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1689, file: !1421, line: 384, baseType: !667, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1689, file: !1421, line: 389, baseType: !667, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1689, file: !1421, line: 392, baseType: !667, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1420, file: !1421, line: 875, baseType: !445, size: 128, offset: 9088)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1420, file: !1421, line: 877, baseType: !1697, size: 320, offset: 9216)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1698, line: 86, size: 320, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1699 = !{!1700, !1701, !1702}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1697, file: !1698, line: 87, baseType: !115, size: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1697, file: !1698, line: 88, baseType: !445, size: 128, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1697, file: !1698, line: 89, baseType: !445, size: 128, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1420, file: !1421, line: 878, baseType: !965, size: 192, align: 64, offset: 9536)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1420, file: !1421, line: 881, baseType: !1705, size: 64, offset: 9728)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !44, line: 733, size: 10240, elements: !1707)
!1707 = !{!1708, !1876}
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !44, line: 734, baseType: !1709, size: 10240)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1706, file: !44, line: 734, size: 10240, elements: !1710)
!1710 = !{!1711, !1715, !1728, !1733, !1734, !1735, !1736, !1737, !1738, !1747, !1748, !1749, !1755, !1756, !1757, !1758, !1759, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1796, !1806, !1809, !1854, !1855, !1856, !1859, !1862, !1863, !1866, !1867, !1868, !1874, !1875}
!1711 = !DIDerivedType(tag: DW_TAG_member, scope: !1709, file: !44, line: 739, baseType: !1712, size: 512, align: 512)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1709, file: !44, line: 739, size: 512, align: 512, elements: !1713)
!1713 = !{!1714}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1712, file: !44, line: 747, baseType: !431, size: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1709, file: !44, line: 750, baseType: !1716, size: 128, offset: 512)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1717, line: 218, size: 128, elements: !1718)
!1717 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1718 = !{!1719, !1726, !1727}
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1716, file: !1717, line: 219, baseType: !1720, size: 32)
!1720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1716, file: !1717, line: 219, size: 32, elements: !1721)
!1721 = !{!1722, !1723}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1720, file: !1717, line: 220, baseType: !458, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1720, file: !1717, line: 221, baseType: !1724)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1717, line: 197, baseType: !1725)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1717, line: 197, elements: !1140)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1716, file: !1717, line: 223, baseType: !13, size: 32, offset: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1716, file: !1717, line: 224, baseType: !280, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1709, file: !44, line: 752, baseType: !1729, size: 64, offset: 640)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!304, !1732, !304, !304, !304, !304}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1709, file: !44, line: 756, baseType: !304, size: 64, offset: 704)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1709, file: !44, line: 757, baseType: !304, size: 64, offset: 768)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1709, file: !44, line: 760, baseType: !304, size: 64, offset: 832)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1709, file: !44, line: 761, baseType: !304, size: 64, offset: 896)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1709, file: !44, line: 763, baseType: !304, size: 64, offset: 960)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1709, file: !44, line: 764, baseType: !1739, size: 64, offset: 1024)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1741, line: 299, baseType: !1742)
!1741 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1741, line: 299, size: 64, elements: !1743)
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1742, file: !1741, line: 299, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1746, line: 18, baseType: !304)
!1746 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1709, file: !44, line: 773, baseType: !431, size: 32, offset: 1088)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1709, file: !44, line: 785, baseType: !431, size: 32, offset: 1120)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1709, file: !44, line: 795, baseType: !1750, size: 64, offset: 1152)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !44, line: 726, size: 128, elements: !1752)
!1752 = !{!1753, !1754}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1751, file: !44, line: 727, baseType: !665, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1751, file: !44, line: 728, baseType: !115, size: 32, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1709, file: !44, line: 801, baseType: !304, size: 64, offset: 1216)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1709, file: !44, line: 804, baseType: !857, size: 64, offset: 1280)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1709, file: !44, line: 806, baseType: !115, size: 32, offset: 1344)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1709, file: !44, line: 808, baseType: !458, size: 32, offset: 1376)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1709, file: !44, line: 823, baseType: !1760, size: 320, offset: 1408)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1761, line: 48, size: 320, elements: !1762)
!1761 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1762 = !{!1763, !1764, !1765, !1766, !1767}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1760, file: !1761, line: 49, baseType: !857, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1760, file: !1761, line: 55, baseType: !857, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1760, file: !1761, line: 57, baseType: !867, size: 32, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1760, file: !1761, line: 59, baseType: !811, size: 32, offset: 160)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1760, file: !1761, line: 60, baseType: !445, size: 128, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1709, file: !44, line: 825, baseType: !445, size: 128, offset: 1728)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1709, file: !44, line: 845, baseType: !115, size: 32, offset: 1856)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1709, file: !44, line: 849, baseType: !304, size: 64, offset: 1920)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1709, file: !44, line: 850, baseType: !304, size: 64, offset: 1984)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1709, file: !44, line: 852, baseType: !304, size: 64, offset: 2048)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1709, file: !44, line: 853, baseType: !304, size: 64, offset: 2112)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1709, file: !44, line: 854, baseType: !859, size: 64, offset: 2176)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1709, file: !44, line: 855, baseType: !304, size: 64, offset: 2240)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1709, file: !44, line: 856, baseType: !304, size: 64, offset: 2304)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1709, file: !44, line: 857, baseType: !304, size: 64, offset: 2368)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1709, file: !44, line: 858, baseType: !304, size: 64, offset: 2432)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1709, file: !44, line: 865, baseType: !640, size: 32, offset: 2496)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1709, file: !44, line: 867, baseType: !458, size: 32, offset: 2528)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1709, file: !44, line: 869, baseType: !304, size: 64, offset: 2560)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1709, file: !44, line: 869, baseType: !304, size: 64, offset: 2624)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1709, file: !44, line: 869, baseType: !304, size: 64, offset: 2688)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1709, file: !44, line: 869, baseType: !304, size: 64, offset: 2752)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1709, file: !44, line: 870, baseType: !304, size: 64, offset: 2816)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1709, file: !44, line: 870, baseType: !304, size: 64, offset: 2880)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1709, file: !44, line: 870, baseType: !304, size: 64, offset: 2944)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1709, file: !44, line: 871, baseType: !304, size: 64, offset: 3008)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1709, file: !44, line: 871, baseType: !304, size: 64, offset: 3072)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1709, file: !44, line: 871, baseType: !304, size: 64, offset: 3136)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1709, file: !44, line: 871, baseType: !304, size: 64, offset: 3200)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1709, file: !44, line: 873, baseType: !1793, size: 3328, offset: 3264)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 3328, elements: !1794)
!1794 = !{!1795}
!1795 = !DISubrange(count: 52)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1709, file: !44, line: 875, baseType: !1797, size: 1280, offset: 6592)
!1797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1798, size: 1280, elements: !1081)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1799, line: 22, size: 320, elements: !1800)
!1799 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1800 = !{!1801, !1802, !1803, !1804}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1798, file: !1799, line: 23, baseType: !811, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1798, file: !1799, line: 24, baseType: !863, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1798, file: !1799, line: 26, baseType: !445, size: 128, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1798, file: !1799, line: 28, baseType: !1805, size: 64, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1709, file: !44, line: 877, baseType: !1807, size: 64, offset: 7872)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !44, line: 877, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1709, file: !44, line: 880, baseType: !1810, size: 1088, offset: 7936)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1811, line: 72, baseType: !1812)
!1811 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1811, line: 23, size: 1088, elements: !1813)
!1813 = !{!1814, !1815, !1816, !1817, !1818, !1821, !1822, !1823, !1824, !1851, !1852, !1853}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1812, file: !1811, line: 28, baseType: !665, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1812, file: !1811, line: 38, baseType: !859, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1812, file: !1811, line: 40, baseType: !304, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1812, file: !1811, line: 43, baseType: !1760, size: 320, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1812, file: !1811, line: 44, baseType: !1819, size: 64, offset: 512)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1811, line: 44, flags: DIFlagFwdDecl)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1812, file: !1811, line: 48, baseType: !304, size: 64, offset: 576)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1812, file: !1811, line: 59, baseType: !853, size: 256, offset: 640)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1812, file: !1811, line: 60, baseType: !280, size: 64, offset: 896)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1812, file: !1811, line: 61, baseType: !1825, size: 64, offset: 960)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1827)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1828, line: 13, size: 1216, elements: !1829)
!1828 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835, !1836, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1827, file: !1828, line: 14, baseType: !280, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1827, file: !1828, line: 15, baseType: !304, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1827, file: !1828, line: 17, baseType: !304, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1827, file: !1828, line: 17, baseType: !304, size: 64, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1827, file: !1828, line: 18, baseType: !304, size: 64, offset: 256)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1827, file: !1828, line: 18, baseType: !304, size: 64, offset: 320)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1827, file: !1828, line: 19, baseType: !1837, size: 64, offset: 384)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1827, file: !1828, line: 21, baseType: !551, size: 64, offset: 448)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1827, file: !1828, line: 23, baseType: !551, size: 64, offset: 512)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1827, file: !1828, line: 24, baseType: !551, size: 64, offset: 576)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1827, file: !1828, line: 25, baseType: !551, size: 64, offset: 640)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1827, file: !1828, line: 26, baseType: !551, size: 64, offset: 704)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1827, file: !1828, line: 27, baseType: !551, size: 64, offset: 768)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1827, file: !1828, line: 28, baseType: !551, size: 64, offset: 832)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1827, file: !1828, line: 29, baseType: !551, size: 64, offset: 896)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1827, file: !1828, line: 30, baseType: !551, size: 64, offset: 960)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1827, file: !1828, line: 31, baseType: !551, size: 64, offset: 1024)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1827, file: !1828, line: 32, baseType: !551, size: 64, offset: 1088)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1827, file: !1828, line: 33, baseType: !551, size: 64, offset: 1152)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1812, file: !1811, line: 63, baseType: !431, size: 32, offset: 1024)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1812, file: !1811, line: 69, baseType: !487, size: 16, offset: 1056)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1812, file: !1811, line: 70, baseType: !987, size: 16, offset: 1072)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1709, file: !44, line: 882, baseType: !304, size: 64, offset: 9024)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1709, file: !44, line: 885, baseType: !458, size: 32, offset: 9088)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1709, file: !44, line: 886, baseType: !1857, size: 64, offset: 9152)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !44, line: 732, flags: DIFlagFwdDecl)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1709, file: !44, line: 901, baseType: !1860, size: 64, offset: 9216)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !601, line: 18, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1709, file: !44, line: 904, baseType: !1732, size: 64, offset: 9280)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1709, file: !44, line: 906, baseType: !1864, size: 64, offset: 9344)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !44, line: 906, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1709, file: !44, line: 930, baseType: !431, size: 32, offset: 9408)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1709, file: !44, line: 933, baseType: !431, size: 32, offset: 9440)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1709, file: !44, line: 935, baseType: !1869, size: 64, offset: 9472)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !60, line: 103, size: 64, elements: !1870)
!1870 = !{!1871}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1869, file: !60, line: 104, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !60, line: 101, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1709, file: !44, line: 940, baseType: !857, size: 64, offset: 9536)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1709, file: !44, line: 942, baseType: !1111, size: 256, offset: 9600)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1706, file: !44, line: 986, baseType: !1877, offset: 10240)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, elements: !1878)
!1878 = !{!1879}
!1879 = !DISubrange(count: -1)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1420, file: !1421, line: 882, baseType: !1705, size: 64, offset: 9792)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1420, file: !1421, line: 884, baseType: !115, size: 32, offset: 9856)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1420, file: !1421, line: 885, baseType: !115, size: 32, offset: 9888)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1420, file: !1421, line: 886, baseType: !115, size: 32, offset: 9920)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1420, file: !1421, line: 888, baseType: !115, size: 32, offset: 9952)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1420, file: !1421, line: 890, baseType: !304, size: 64, offset: 9984)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1420, file: !1421, line: 893, baseType: !13, size: 32, offset: 10048)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1420, file: !1421, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1420, file: !1421, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1420, file: !1421, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1420, file: !1421, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1420, file: !1421, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1420, file: !1421, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1420, file: !1421, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1420, file: !1421, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1420, file: !1421, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1420, file: !1421, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1420, file: !1421, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1420, file: !1421, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1420, file: !1421, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1420, file: !1421, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1420, file: !1421, line: 969, baseType: !304, size: 64, offset: 10176)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1420, file: !1421, line: 971, baseType: !1903, size: 448, offset: 10240)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !30, line: 25, size: 448, elements: !1904)
!1904 = !{!1905, !1906, !1911}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1903, file: !30, line: 26, baseType: !304, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1903, file: !30, line: 27, baseType: !1907, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!551, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, scope: !1903, file: !30, line: 28, baseType: !1912, size: 320, offset: 128)
!1912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1903, file: !30, line: 28, size: 320, elements: !1913)
!1913 = !{!1914, !1924, !1949}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1912, file: !30, line: 37, baseType: !1915, size: 320)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !30, line: 30, size: 320, elements: !1916)
!1916 = !{!1917, !1919, !1920, !1921, !1922, !1923}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1915, file: !30, line: 31, baseType: !1918, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1915, file: !30, line: 32, baseType: !302, size: 32, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1915, file: !30, line: 33, baseType: !302, size: 32, offset: 96)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1915, file: !30, line: 34, baseType: !302, size: 32, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1915, file: !30, line: 35, baseType: !665, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1915, file: !30, line: 36, baseType: !1918, size: 64, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1912, file: !30, line: 47, baseType: !1925, size: 192)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !30, line: 39, size: 192, elements: !1926)
!1926 = !{!1927, !1928, !1929, !1948}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1925, file: !30, line: 40, baseType: !1576, size: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1925, file: !30, line: 41, baseType: !29, size: 32, offset: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, scope: !1925, file: !30, line: 42, baseType: !1930, size: 64, offset: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1925, file: !30, line: 42, size: 64, elements: !1931)
!1931 = !{!1932, !1940}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1930, file: !30, line: 43, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1935, line: 7, size: 128, elements: !1936)
!1935 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1936 = !{!1937, !1939}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1934, file: !1935, line: 8, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !549, line: 93, baseType: !755)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1934, file: !1935, line: 9, baseType: !755, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1930, file: !30, line: 44, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1943, line: 7, size: 64, elements: !1944)
!1943 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1944 = !{!1945, !1947}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1942, file: !1943, line: 8, baseType: !1946, size: 32)
!1946 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1943, line: 5, baseType: !849)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1942, file: !1943, line: 9, baseType: !849, size: 32, offset: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1925, file: !30, line: 46, baseType: !665, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1912, file: !30, line: 55, baseType: !1950, size: 256)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1912, file: !30, line: 49, size: 256, elements: !1951)
!1951 = !{!1952, !1955, !1956, !1957, !1958}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1950, file: !30, line: 50, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !30, line: 14, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1950, file: !30, line: 51, baseType: !115, size: 32, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1950, file: !30, line: 52, baseType: !115, size: 32, offset: 96)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1950, file: !30, line: 53, baseType: !304, size: 64, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1950, file: !30, line: 54, baseType: !304, size: 64, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1420, file: !1421, line: 973, baseType: !1960, size: 32, offset: 10688)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !301, line: 27, baseType: !1961)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !549, line: 28, baseType: !115)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1420, file: !1421, line: 974, baseType: !1960, size: 32, offset: 10720)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1420, file: !1421, line: 978, baseType: !304, size: 64, offset: 10752)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1420, file: !1421, line: 987, baseType: !1419, size: 64, offset: 10816)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1420, file: !1421, line: 990, baseType: !1419, size: 64, offset: 10880)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1420, file: !1421, line: 995, baseType: !445, size: 128, offset: 10944)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1420, file: !1421, line: 996, baseType: !445, size: 128, offset: 11072)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1420, file: !1421, line: 997, baseType: !1419, size: 64, offset: 11200)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1420, file: !1421, line: 1005, baseType: !445, size: 128, offset: 11264)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1420, file: !1421, line: 1006, baseType: !445, size: 128, offset: 11392)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1420, file: !1421, line: 1009, baseType: !1376, size: 64, offset: 11520)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1420, file: !1421, line: 1010, baseType: !1973, size: 512, offset: 11584)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1097, size: 512, elements: !1081)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1420, file: !1421, line: 1011, baseType: !445, size: 128, offset: 12096)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1420, file: !1421, line: 1012, baseType: !445, size: 128, offset: 12224)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1420, file: !1421, line: 1014, baseType: !801, size: 64, offset: 12352)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1420, file: !1421, line: 1017, baseType: !980, size: 64, offset: 12416)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1420, file: !1421, line: 1020, baseType: !980, size: 64, offset: 12480)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1420, file: !1421, line: 1023, baseType: !280, size: 64, offset: 12544)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1420, file: !1421, line: 1025, baseType: !665, size: 64, offset: 12608)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1420, file: !1421, line: 1026, baseType: !665, size: 64, offset: 12672)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1420, file: !1421, line: 1031, baseType: !665, size: 64, offset: 12736)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1420, file: !1421, line: 1032, baseType: !1984, size: 192, offset: 12800)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1421, line: 324, size: 192, elements: !1985)
!1985 = !{!1986, !1987, !1988}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1984, file: !1421, line: 326, baseType: !665, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1984, file: !1421, line: 327, baseType: !665, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1984, file: !1421, line: 328, baseType: !811, size: 32, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1420, file: !1421, line: 1041, baseType: !304, size: 64, offset: 12992)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1420, file: !1421, line: 1042, baseType: !304, size: 64, offset: 13056)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1420, file: !1421, line: 1045, baseType: !665, size: 64, offset: 13120)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1420, file: !1421, line: 1048, baseType: !665, size: 64, offset: 13184)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1420, file: !1421, line: 1051, baseType: !304, size: 64, offset: 13248)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1420, file: !1421, line: 1052, baseType: !304, size: 64, offset: 13312)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1420, file: !1421, line: 1055, baseType: !1996, size: 640, offset: 13376)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1997, line: 132, size: 640, elements: !1998)
!1997 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1998 = !{!1999, !2005, !2006}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1996, file: !1997, line: 133, baseType: !2000, size: 576)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2001, size: 576, elements: !391)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1997, line: 117, size: 192, elements: !2002)
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2001, file: !1997, line: 118, baseType: !665, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2001, file: !1997, line: 119, baseType: !1585, size: 128, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1996, file: !1997, line: 134, baseType: !13, size: 32, offset: 576)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1996, file: !1997, line: 135, baseType: !13, size: 32, offset: 608)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1420, file: !1421, line: 1058, baseType: !2008, size: 448, offset: 14016)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1997, line: 144, size: 448, elements: !2009)
!2009 = !{!2010, !2011, !2012}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2008, file: !1997, line: 145, baseType: !1071, size: 128, align: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2008, file: !1997, line: 146, baseType: !853, size: 256, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2008, file: !1997, line: 147, baseType: !13, size: 32, offset: 384)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1420, file: !1421, line: 1064, baseType: !2014, size: 64, offset: 14464)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2016)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2017, line: 110, size: 1472, elements: !2018)
!2017 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!2018 = !{!2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2035, !2036, !2037, !2038, !2039, !2040, !2150, !2151, !2152, !2153, !2154, !2177, !2178, !2182, !2190}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2016, file: !2017, line: 111, baseType: !857, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2016, file: !2017, line: 112, baseType: !600, size: 32, offset: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2016, file: !2017, line: 113, baseType: !609, size: 32, offset: 96)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2016, file: !2017, line: 114, baseType: !600, size: 32, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2016, file: !2017, line: 115, baseType: !609, size: 32, offset: 160)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2016, file: !2017, line: 116, baseType: !600, size: 32, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2016, file: !2017, line: 117, baseType: !609, size: 32, offset: 224)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2016, file: !2017, line: 118, baseType: !600, size: 32, offset: 256)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2016, file: !2017, line: 119, baseType: !609, size: 32, offset: 288)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2016, file: !2017, line: 120, baseType: !13, size: 32, offset: 320)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2016, file: !2017, line: 121, baseType: !2030, size: 64, offset: 384)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2031, line: 24, baseType: !2032)
!2031 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2031, line: 24, size: 64, elements: !2033)
!2033 = !{!2034}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2032, file: !2031, line: 24, baseType: !665, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2016, file: !2017, line: 122, baseType: !2030, size: 64, offset: 448)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2016, file: !2017, line: 123, baseType: !2030, size: 64, offset: 512)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2016, file: !2017, line: 124, baseType: !2030, size: 64, offset: 576)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2016, file: !2017, line: 125, baseType: !2030, size: 64, offset: 640)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2016, file: !2017, line: 127, baseType: !287, size: 8, offset: 704)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2016, file: !2017, line: 129, baseType: !2041, size: 64, offset: 768)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2043, line: 195, size: 1728, elements: !2044)
!2043 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!2044 = !{!2045, !2046, !2049, !2054, !2055, !2058, !2059, !2066, !2067, !2068, !2069, !2072, !2073, !2074, !2075, !2076, !2114, !2135}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2042, file: !2043, line: 196, baseType: !426, size: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2042, file: !2043, line: 197, baseType: !2047, size: 32, offset: 32)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2043, line: 28, baseType: !2048)
!2048 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !301, line: 104, baseType: !849)
!2049 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !2043, line: 198, baseType: !2050, size: 192, offset: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2042, file: !2043, line: 198, size: 192, elements: !2051)
!2051 = !{!2052, !2053}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2050, file: !2043, line: 199, baseType: !445, size: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2050, file: !2043, line: 200, baseType: !965, size: 192, align: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2042, file: !2043, line: 205, baseType: !1760, size: 320, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2042, file: !2043, line: 206, baseType: !2056, size: 64, offset: 576)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2043, line: 206, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2042, file: !2043, line: 207, baseType: !280, size: 64, offset: 640)
!2059 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !2043, line: 208, baseType: !2060, size: 64, offset: 704)
!2060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2042, file: !2043, line: 208, size: 64, elements: !2061)
!2061 = !{!2062, !2065}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2060, file: !2043, line: 209, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !2064, line: 8, baseType: !864)
!2064 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2060, file: !2043, line: 210, baseType: !2063, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2042, file: !2043, line: 212, baseType: !2063, size: 64, offset: 768)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2042, file: !2043, line: 213, baseType: !600, size: 32, offset: 832)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2042, file: !2043, line: 214, baseType: !609, size: 32, offset: 864)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2042, file: !2043, line: 215, baseType: !2070, size: 32, offset: 896)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2043, line: 31, baseType: !2071)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !301, line: 110, baseType: !302)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2042, file: !2043, line: 216, baseType: !298, size: 16, offset: 928)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2042, file: !2043, line: 217, baseType: !298, size: 16, offset: 944)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2042, file: !2043, line: 221, baseType: !989, size: 16, offset: 960)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2042, file: !2043, line: 228, baseType: !304, size: 64, offset: 1024)
!2076 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !2043, line: 245, baseType: !2077, size: 320, offset: 1088)
!2077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2042, file: !2043, line: 245, size: 320, elements: !2078)
!2078 = !{!2079, !2106}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2077, file: !2043, line: 246, baseType: !2080, size: 320)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2043, line: 114, size: 320, elements: !2081)
!2081 = !{!2082, !2083, !2095, !2098, !2105}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2080, file: !2043, line: 116, baseType: !304, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !2043, line: 117, baseType: !2084, size: 64, offset: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2080, file: !2043, line: 117, size: 64, elements: !2085)
!2085 = !{!2086, !2094}
!2086 = !DIDerivedType(tag: DW_TAG_member, scope: !2084, file: !2043, line: 118, baseType: !2087, size: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2084, file: !2043, line: 118, size: 64, elements: !2088)
!2088 = !{!2089, !2090}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2087, file: !2043, line: 120, baseType: !487, size: 16)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2087, file: !2043, line: 121, baseType: !2091, size: 48, offset: 16)
!2091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !2092)
!2092 = !{!2093}
!2093 = !DISubrange(count: 6)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2084, file: !2043, line: 127, baseType: !304, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2080, file: !2043, line: 129, baseType: !2096, size: 64, offset: 128)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2043, line: 102, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2080, file: !2043, line: 130, baseType: !2099, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2043, line: 108, size: 192, elements: !2101)
!2101 = !{!2102, !2103, !2104}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2100, file: !2043, line: 109, baseType: !1071, size: 128, align: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2100, file: !2043, line: 110, baseType: !426, size: 32, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2100, file: !2043, line: 111, baseType: !933, size: 8, offset: 160)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2080, file: !2043, line: 131, baseType: !281, size: 64, offset: 256)
!2106 = !DIDerivedType(tag: DW_TAG_member, scope: !2077, file: !2043, line: 247, baseType: !2107, size: 320)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2077, file: !2043, line: 247, size: 320, elements: !2108)
!2108 = !{!2109, !2110, !2111, !2112, !2113}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2107, file: !2043, line: 248, baseType: !304, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2107, file: !2043, line: 249, baseType: !304, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2107, file: !2043, line: 250, baseType: !2096, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2107, file: !2043, line: 251, baseType: !2099, size: 64, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2107, file: !2043, line: 252, baseType: !517, size: 64, offset: 256)
!2114 = !DIDerivedType(tag: DW_TAG_member, scope: !2042, file: !2043, line: 260, baseType: !2115, size: 256, offset: 1408)
!2115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2042, file: !2043, line: 260, size: 256, elements: !2116)
!2116 = !{!2117, !2123}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2115, file: !2043, line: 261, baseType: !2118, size: 256)
!2118 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2043, line: 134, size: 256, elements: !2119)
!2119 = !{!2120, !2121}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2118, file: !2043, line: 135, baseType: !280, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2118, file: !2043, line: 136, baseType: !2122, size: 256)
!2122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 256, elements: !1081)
!2123 = !DIDerivedType(tag: DW_TAG_member, scope: !2115, file: !2043, line: 262, baseType: !2124, size: 256)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2115, file: !2043, line: 262, size: 256, elements: !2125)
!2125 = !{!2126, !2127}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2124, file: !2043, line: 264, baseType: !445, size: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2124, file: !2043, line: 265, baseType: !2128, size: 128, offset: 128)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2129, line: 22, size: 128, elements: !2130)
!2129 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2130 = !{!2131, !2134}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2128, file: !2129, line: 23, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2129, line: 23, flags: DIFlagFwdDecl)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2128, file: !2129, line: 24, baseType: !304, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2042, file: !2043, line: 280, baseType: !2136, size: 64, offset: 1664)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2043, line: 176, size: 192, elements: !2138)
!2138 = !{!2139, !2148, !2149}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2137, file: !2043, line: 177, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2043, line: 171, baseType: !2141)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!115, !2041, !2144, !2146, !2041}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2097)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2118)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2137, file: !2043, line: 178, baseType: !2041, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2137, file: !2043, line: 179, baseType: !2096, size: 64, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2016, file: !2017, line: 130, baseType: !2041, size: 64, offset: 832)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2016, file: !2017, line: 131, baseType: !2041, size: 64, offset: 896)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2016, file: !2017, line: 132, baseType: !2041, size: 64, offset: 960)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2016, file: !2017, line: 135, baseType: !280, size: 64, offset: 1024)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2016, file: !2017, line: 137, baseType: !2155, size: 64, offset: 1088)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2157, line: 14, size: 1088, elements: !2158)
!2157 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2158 = !{!2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2156, file: !2157, line: 15, baseType: !426, size: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2156, file: !2157, line: 17, baseType: !1798, size: 320, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2156, file: !2157, line: 19, baseType: !304, size: 64, offset: 384)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2156, file: !2157, line: 20, baseType: !857, size: 64, offset: 448)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2156, file: !2157, line: 23, baseType: !1097, size: 128, offset: 512)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2156, file: !2157, line: 24, baseType: !600, size: 32, offset: 640)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2156, file: !2157, line: 29, baseType: !857, size: 64, offset: 704)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2156, file: !2157, line: 36, baseType: !2167, size: 320, offset: 768)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2168, line: 15, size: 320, elements: !2169)
!2168 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2169 = !{!2170, !2171, !2172, !2173, !2174, !2175, !2176}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2167, file: !2168, line: 16, baseType: !811, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2167, file: !2168, line: 18, baseType: !115, size: 32, offset: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2167, file: !2168, line: 19, baseType: !115, size: 32, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2167, file: !2168, line: 20, baseType: !115, size: 32, offset: 96)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2167, file: !2168, line: 21, baseType: !115, size: 32, offset: 128)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2167, file: !2168, line: 22, baseType: !304, size: 64, offset: 192)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2167, file: !2168, line: 23, baseType: !304, size: 64, offset: 256)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2016, file: !2017, line: 138, baseType: !1860, size: 64, offset: 1152)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2016, file: !2017, line: 139, baseType: !2179, size: 64, offset: 1216)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2181, line: 16, flags: DIFlagFwdDecl)
!2181 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2016, file: !2017, line: 140, baseType: !2183, size: 64, offset: 1280)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2017, line: 25, size: 64, elements: !2185)
!2185 = !{!2186, !2187, !2188}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2184, file: !2017, line: 26, baseType: !431, size: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2184, file: !2017, line: 27, baseType: !115, size: 32, offset: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2184, file: !2017, line: 28, baseType: !2189, offset: 64)
!2189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, elements: !1878)
!2190 = !DIDerivedType(tag: DW_TAG_member, scope: !2016, file: !2017, line: 142, baseType: !2191, size: 128, offset: 1344)
!2191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2016, file: !2017, line: 142, size: 128, elements: !2192)
!2192 = !{!2193, !2194}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2191, file: !2017, line: 143, baseType: !115, size: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2191, file: !2017, line: 144, baseType: !1071, size: 128, align: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1420, file: !1421, line: 1067, baseType: !2014, size: 64, offset: 14528)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1420, file: !1421, line: 1070, baseType: !2014, size: 64, offset: 14592)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1420, file: !1421, line: 1074, baseType: !2041, size: 64, offset: 14656)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1420, file: !1421, line: 1084, baseType: !3, size: 128, offset: 14720)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1420, file: !1421, line: 1086, baseType: !2200, size: 64, offset: 14848)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1421, line: 55, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1420, file: !1421, line: 1089, baseType: !2203, size: 64, offset: 14912)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2204, line: 12, size: 64, elements: !2205)
!2204 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2205 = !{!2206}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2203, file: !2204, line: 13, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2204, line: 8, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1420, file: !1421, line: 1090, baseType: !2210, size: 128, offset: 14976)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2211, line: 13, size: 128, elements: !2212)
!2211 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2212 = !{!2213}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2210, file: !2211, line: 14, baseType: !445, size: 128)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1420, file: !1421, line: 1097, baseType: !2215, size: 64, offset: 15104)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1421, line: 50, flags: DIFlagFwdDecl)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1420, file: !1421, line: 1100, baseType: !2218, size: 64, offset: 15168)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1421, line: 1100, flags: DIFlagFwdDecl)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1420, file: !1421, line: 1103, baseType: !2221, size: 64, offset: 15232)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1421, line: 53, flags: DIFlagFwdDecl)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1420, file: !1421, line: 1107, baseType: !2224, size: 64, offset: 15296)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2226, line: 31, size: 576, elements: !2227)
!2226 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2227 = !{!2228, !2229, !2232, !2235, !2238, !2239, !2242, !2245, !2246}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2225, file: !2226, line: 32, baseType: !426, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2225, file: !2226, line: 33, baseType: !2230, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2226, line: 9, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2225, file: !2226, line: 34, baseType: !2233, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2226, line: 10, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2225, file: !2226, line: 35, baseType: !2236, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2226, line: 8, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2225, file: !2226, line: 36, baseType: !1399, size: 64, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2225, file: !2226, line: 37, baseType: !2240, size: 64, offset: 320)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2043, line: 34, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2225, file: !2226, line: 38, baseType: !2243, size: 64, offset: 384)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2226, line: 38, flags: DIFlagFwdDecl)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2225, file: !2226, line: 39, baseType: !2243, size: 64, offset: 448)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2225, file: !2226, line: 40, baseType: !2247, size: 64, offset: 512)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2226, line: 12, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1420, file: !1421, line: 1110, baseType: !2250, size: 64, offset: 15360)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2252, line: 93, size: 8768, elements: !2253)
!2252 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2301, !2310, !2311, !2313, !2314, !2315, !2318, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2356, !2357, !2364, !2374, !2377, !2378, !2381, !2382, !2383, !2384, !2385, !2386}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2251, file: !2252, line: 94, baseType: !426, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2251, file: !2252, line: 95, baseType: !431, size: 32, offset: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2251, file: !2252, line: 96, baseType: !115, size: 32, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2251, file: !2252, line: 97, baseType: !115, size: 32, offset: 96)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2251, file: !2252, line: 98, baseType: !445, size: 128, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2251, file: !2252, line: 100, baseType: !1386, size: 192, offset: 256)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2251, file: !2252, line: 103, baseType: !1419, size: 64, offset: 448)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2251, file: !2252, line: 106, baseType: !2262, size: 192, offset: 512)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2181, line: 32, size: 192, elements: !2263)
!2263 = !{!2264, !2265}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2262, file: !2181, line: 33, baseType: !445, size: 128)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2262, file: !2181, line: 34, baseType: !2266, size: 64, offset: 128)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2267, line: 25, baseType: !2268)
!2267 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2267, line: 23, size: 64, elements: !2269)
!2269 = !{!2270}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2268, file: !2267, line: 24, baseType: !1656, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2251, file: !2252, line: 109, baseType: !1221, size: 64, offset: 704)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2251, file: !2252, line: 112, baseType: !115, size: 32, offset: 768)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2251, file: !2252, line: 114, baseType: !115, size: 32, offset: 800)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2251, file: !2252, line: 115, baseType: !1419, size: 64, offset: 832)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2251, file: !2252, line: 118, baseType: !115, size: 32, offset: 896)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2251, file: !2252, line: 119, baseType: !13, size: 32, offset: 928)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2251, file: !2252, line: 121, baseType: !2278, size: 64, offset: 960)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2252, line: 80, size: 448, elements: !2280)
!2280 = !{!2281, !2282, !2288}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2279, file: !2252, line: 81, baseType: !431, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2279, file: !2252, line: 82, baseType: !2283, size: 128, offset: 64)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2252, line: 75, size: 128, elements: !2284)
!2284 = !{!2285, !2286}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2283, file: !2252, line: 76, baseType: !1419, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2283, file: !2252, line: 77, baseType: !2287, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2279, file: !2252, line: 83, baseType: !802, size: 256, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2251, file: !2252, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2251, file: !2252, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2251, file: !2252, line: 138, baseType: !13, size: 32, offset: 1056)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2251, file: !2252, line: 139, baseType: !445, size: 128, offset: 1088)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2251, file: !2252, line: 142, baseType: !1531, size: 512, offset: 1216)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2251, file: !2252, line: 143, baseType: !1539, size: 64, offset: 1728)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2251, file: !2252, line: 150, baseType: !2296, size: 256, offset: 1792)
!2296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2297, size: 256, elements: !403)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2252, line: 38, size: 128, elements: !2298)
!2298 = !{!2299, !2300}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2297, file: !2252, line: 39, baseType: !665, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2297, file: !2252, line: 40, baseType: !665, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2251, file: !2252, line: 156, baseType: !2302, size: 192, offset: 2048)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2252, line: 66, size: 192, elements: !2303)
!2303 = !{!2304}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2302, file: !2252, line: 67, baseType: !2305, size: 192)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2252, line: 47, size: 192, elements: !2306)
!2306 = !{!2307, !2308, !2309}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2305, file: !2252, line: 48, baseType: !859, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2305, file: !2252, line: 49, baseType: !859, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2305, file: !2252, line: 50, baseType: !859, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2251, file: !2252, line: 160, baseType: !1996, size: 640, offset: 2240)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2251, file: !2252, line: 163, baseType: !2312, size: 256, offset: 2880)
!2312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1376, size: 256, elements: !1081)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2251, file: !2252, line: 169, baseType: !1376, size: 64, offset: 3136)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2251, file: !2252, line: 172, baseType: !115, size: 32, offset: 3200)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2251, file: !2252, line: 174, baseType: !2316, size: 64, offset: 3264)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2252, line: 174, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2251, file: !2252, line: 185, baseType: !2319, size: 64, offset: 3328)
!2319 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !636, line: 860, baseType: !2320)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !636, line: 853, size: 64, elements: !2321)
!2321 = !{!2322, !2323}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2320, file: !636, line: 858, baseType: !635, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2320, file: !636, line: 859, baseType: !458, size: 32, offset: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2251, file: !2252, line: 186, baseType: !665, size: 64, offset: 3392)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2251, file: !2252, line: 186, baseType: !665, size: 64, offset: 3456)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2251, file: !2252, line: 186, baseType: !665, size: 64, offset: 3520)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2251, file: !2252, line: 186, baseType: !665, size: 64, offset: 3584)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2251, file: !2252, line: 187, baseType: !665, size: 64, offset: 3648)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2251, file: !2252, line: 188, baseType: !665, size: 64, offset: 3712)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2251, file: !2252, line: 189, baseType: !1984, size: 192, offset: 3776)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2251, file: !2252, line: 190, baseType: !304, size: 64, offset: 3968)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2251, file: !2252, line: 190, baseType: !304, size: 64, offset: 4032)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2251, file: !2252, line: 190, baseType: !304, size: 64, offset: 4096)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2251, file: !2252, line: 190, baseType: !304, size: 64, offset: 4160)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2251, file: !2252, line: 191, baseType: !304, size: 64, offset: 4224)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2251, file: !2252, line: 191, baseType: !304, size: 64, offset: 4288)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2251, file: !2252, line: 191, baseType: !304, size: 64, offset: 4352)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2251, file: !2252, line: 191, baseType: !304, size: 64, offset: 4416)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2251, file: !2252, line: 192, baseType: !304, size: 64, offset: 4480)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2251, file: !2252, line: 192, baseType: !304, size: 64, offset: 4544)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2251, file: !2252, line: 192, baseType: !304, size: 64, offset: 4608)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2251, file: !2252, line: 192, baseType: !304, size: 64, offset: 4672)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2251, file: !2252, line: 193, baseType: !304, size: 64, offset: 4736)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2251, file: !2252, line: 193, baseType: !304, size: 64, offset: 4800)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2251, file: !2252, line: 194, baseType: !2346, size: 448, offset: 4864)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2347, line: 12, size: 448, elements: !2348)
!2347 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2348 = !{!2349, !2350, !2351, !2352, !2353, !2354, !2355}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2346, file: !2347, line: 15, baseType: !665, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2346, file: !2347, line: 17, baseType: !665, size: 64, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2346, file: !2347, line: 19, baseType: !665, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2346, file: !2347, line: 21, baseType: !665, size: 64, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2346, file: !2347, line: 29, baseType: !665, size: 64, offset: 256)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2346, file: !2347, line: 35, baseType: !665, size: 64, offset: 320)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2346, file: !2347, line: 44, baseType: !665, size: 64, offset: 384)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2251, file: !2252, line: 202, baseType: !667, size: 64, offset: 5312)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2251, file: !2252, line: 213, baseType: !2358, size: 2048, offset: 5376)
!2358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2359, size: 2048, elements: !5)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2360, line: 43, size: 128, elements: !2361)
!2360 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2361 = !{!2362, !2363}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2359, file: !2360, line: 44, baseType: !564, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2359, file: !2360, line: 45, baseType: !564, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2251, file: !2252, line: 216, baseType: !2365, size: 448, offset: 7424)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2252, line: 30, size: 448, elements: !2366)
!2366 = !{!2367, !2368, !2369, !2370, !2371, !2372, !2373}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2365, file: !2252, line: 31, baseType: !115, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2365, file: !2252, line: 32, baseType: !551, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2365, file: !2252, line: 33, baseType: !304, size: 64, offset: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2365, file: !2252, line: 34, baseType: !665, size: 64, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2365, file: !2252, line: 34, baseType: !665, size: 64, offset: 256)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2365, file: !2252, line: 35, baseType: !304, size: 64, offset: 320)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2365, file: !2252, line: 35, baseType: !304, size: 64, offset: 384)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2251, file: !2252, line: 219, baseType: !2375, size: 64, offset: 7872)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2252, line: 219, flags: DIFlagFwdDecl)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2251, file: !2252, line: 222, baseType: !13, size: 32, offset: 7936)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2251, file: !2252, line: 223, baseType: !2379, size: 64, offset: 8000)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2252, line: 223, flags: DIFlagFwdDecl)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2251, file: !2252, line: 230, baseType: !933, size: 8, offset: 8064)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2251, file: !2252, line: 231, baseType: !989, size: 16, offset: 8080)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2251, file: !2252, line: 232, baseType: !989, size: 16, offset: 8096)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2251, file: !2252, line: 234, baseType: !1705, size: 64, offset: 8128)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2251, file: !2252, line: 237, baseType: !853, size: 256, offset: 8192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2251, file: !2252, line: 243, baseType: !1760, size: 320, offset: 8448)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1420, file: !1421, line: 1111, baseType: !2388, size: 64, offset: 15424)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2252, line: 20, size: 16640, elements: !2390)
!2390 = !{!2391, !2392, !2393, !2394}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2389, file: !2252, line: 21, baseType: !458, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2389, file: !2252, line: 22, baseType: !426, size: 32, offset: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2389, file: !2252, line: 23, baseType: !1386, size: 192, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2389, file: !2252, line: 24, baseType: !2395, size: 16384, offset: 256)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2396, size: 16384, elements: !520)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2181, line: 51, size: 256, elements: !2397)
!2397 = !{!2398}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2396, file: !2181, line: 52, baseType: !2399, size: 256)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2181, line: 37, size: 256, elements: !2400)
!2400 = !{!2401, !2408, !2409, !2413}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2399, file: !2181, line: 39, baseType: !2402, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2403, line: 83, baseType: !2404)
!2403 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2403, line: 82, baseType: !2406)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !115}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2399, file: !2181, line: 40, baseType: !304, size: 64, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2399, file: !2181, line: 46, baseType: !2410, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2403, line: 86, baseType: !2411)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2403, line: 85, baseType: !1216)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2399, file: !2181, line: 48, baseType: !2266, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1420, file: !1421, line: 1112, baseType: !2266, size: 64, offset: 15488)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1420, file: !1421, line: 1113, baseType: !2266, size: 64, offset: 15552)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1420, file: !1421, line: 1115, baseType: !2266, size: 64, offset: 15616)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1420, file: !1421, line: 1116, baseType: !2262, size: 192, offset: 15680)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1420, file: !1421, line: 1117, baseType: !304, size: 64, offset: 15872)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1420, file: !1421, line: 1118, baseType: !562, size: 64, offset: 15936)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1420, file: !1421, line: 1119, baseType: !13, size: 32, offset: 16000)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1420, file: !1421, line: 1121, baseType: !1070, size: 64, offset: 16064)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1420, file: !1421, line: 1125, baseType: !2423, size: 64, offset: 16128)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1421, line: 43, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1420, file: !1421, line: 1127, baseType: !600, size: 32, offset: 16192)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1420, file: !1421, line: 1128, baseType: !13, size: 32, offset: 16224)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1420, file: !1421, line: 1130, baseType: !2428, size: 128, offset: 16256)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2429, line: 37, size: 128, elements: !2430)
!2429 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2430 = !{!2431, !2432, !2433}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2428, file: !2429, line: 38, baseType: !115, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2428, file: !2429, line: 39, baseType: !431, size: 32, offset: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2428, file: !2429, line: 40, baseType: !2434, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2429, line: 24, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1420, file: !1421, line: 1131, baseType: !2437, size: 256, offset: 16384)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2438, line: 12, size: 256, elements: !2439)
!2438 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2439 = !{!2440, !2441, !2442, !2443}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2437, file: !2438, line: 13, baseType: !517, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2437, file: !2438, line: 14, baseType: !304, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2437, file: !2438, line: 15, baseType: !304, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2437, file: !2438, line: 16, baseType: !933, size: 8, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1420, file: !1421, line: 1134, baseType: !665, size: 64, offset: 16640)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1420, file: !1421, line: 1135, baseType: !665, size: 64, offset: 16704)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1420, file: !1421, line: 1138, baseType: !458, size: 32, offset: 16768)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1420, file: !1421, line: 1141, baseType: !811, size: 32, offset: 16800)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1420, file: !1421, line: 1143, baseType: !2449, size: 64, offset: 16832)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1421, line: 735, size: 64, elements: !2450)
!2450 = !{!2451}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2449, file: !1421, line: 736, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1420, file: !1421, line: 1147, baseType: !1588, size: 128, offset: 16896)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1420, file: !1421, line: 1149, baseType: !1419, size: 64, offset: 17024)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1420, file: !1421, line: 1151, baseType: !2456, size: 64, offset: 17088)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1421, line: 1151, flags: DIFlagFwdDecl)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1420, file: !1421, line: 1188, baseType: !280, size: 64, offset: 17152)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1420, file: !1421, line: 1191, baseType: !2460, size: 64, offset: 17216)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1421, line: 44, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1420, file: !1421, line: 1194, baseType: !2463, size: 64, offset: 17280)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1421, line: 45, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1420, file: !1421, line: 1197, baseType: !2466, size: 64, offset: 17344)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1421, line: 61, flags: DIFlagFwdDecl)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1420, file: !1421, line: 1199, baseType: !2469, size: 64, offset: 17408)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2471, line: 99, size: 128, elements: !2472)
!2471 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2472 = !{!2473, !2474, !2475}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2470, file: !2471, line: 100, baseType: !857, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2470, file: !2471, line: 101, baseType: !431, size: 32, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2470, file: !2471, line: 103, baseType: !298, size: 16, offset: 96)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1420, file: !1421, line: 1202, baseType: !2477, size: 64, offset: 17472)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1421, line: 48, flags: DIFlagFwdDecl)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1420, file: !1421, line: 1205, baseType: !304, size: 64, offset: 17536)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1420, file: !1421, line: 1206, baseType: !2481, size: 64, offset: 17600)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2181, line: 14, baseType: !2483)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2181, line: 12, size: 384, elements: !2484)
!2484 = !{!2485}
!2485 = !DIDerivedType(tag: DW_TAG_member, scope: !2483, file: !2181, line: 13, baseType: !2486, size: 384)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2483, file: !2181, line: 13, size: 384, elements: !2487)
!2487 = !{!2488, !2489, !2490, !2491}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2486, file: !2181, line: 13, baseType: !115, size: 32)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2486, file: !2181, line: 13, baseType: !115, size: 32, offset: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2486, file: !2181, line: 13, baseType: !115, size: 32, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2486, file: !2181, line: 13, baseType: !2492, size: 256, offset: 128)
!2492 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2493, line: 37, size: 256, elements: !2494)
!2493 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2494 = !{!2495, !2500, !2513, !2519, !2528, !2554, !2559}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2492, file: !2493, line: 42, baseType: !2496, size: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2492, file: !2493, line: 39, size: 64, elements: !2497)
!2497 = !{!2498, !2499}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2496, file: !2493, line: 40, baseType: !1961, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2496, file: !2493, line: 41, baseType: !606, size: 32, offset: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2492, file: !2493, line: 50, baseType: !2501, size: 192)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2492, file: !2493, line: 45, size: 192, elements: !2502)
!2502 = !{!2503, !2505, !2506, !2512}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2501, file: !2493, line: 46, baseType: !2504, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !549, line: 95, baseType: !115)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2501, file: !2493, line: 47, baseType: !115, size: 32, offset: 32)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2501, file: !2493, line: 48, baseType: !2507, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2493, line: 11, baseType: !2508)
!2508 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2493, line: 8, size: 64, elements: !2509)
!2509 = !{!2510, !2511}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2508, file: !2493, line: 9, baseType: !115, size: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2508, file: !2493, line: 10, baseType: !280, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2501, file: !2493, line: 49, baseType: !115, size: 32, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2492, file: !2493, line: 57, baseType: !2514, size: 128)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2492, file: !2493, line: 53, size: 128, elements: !2515)
!2515 = !{!2516, !2517, !2518}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2514, file: !2493, line: 54, baseType: !1961, size: 32)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2514, file: !2493, line: 55, baseType: !606, size: 32, offset: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2514, file: !2493, line: 56, baseType: !2507, size: 64, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2492, file: !2493, line: 66, baseType: !2520, size: 256)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2492, file: !2493, line: 60, size: 256, elements: !2521)
!2521 = !{!2522, !2523, !2524, !2525, !2527}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2520, file: !2493, line: 61, baseType: !1961, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2520, file: !2493, line: 62, baseType: !606, size: 32, offset: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2520, file: !2493, line: 63, baseType: !115, size: 32, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2520, file: !2493, line: 64, baseType: !2526, size: 64, offset: 128)
!2526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !549, line: 94, baseType: !550)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2520, file: !2493, line: 65, baseType: !2526, size: 64, offset: 192)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2492, file: !2493, line: 105, baseType: !2529, size: 256)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2492, file: !2493, line: 69, size: 256, elements: !2530)
!2530 = !{!2531, !2532}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2529, file: !2493, line: 70, baseType: !280, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, scope: !2529, file: !2493, line: 79, baseType: !2533, size: 192, offset: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2529, file: !2493, line: 79, size: 192, elements: !2534)
!2534 = !{!2535, !2536, !2537, !2543, !2548}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2533, file: !2493, line: 81, baseType: !115, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2533, file: !2493, line: 86, baseType: !989, size: 16)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2533, file: !2493, line: 92, baseType: !2538, size: 192)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2533, file: !2493, line: 88, size: 192, elements: !2539)
!2539 = !{!2540, !2541, !2542}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2538, file: !2493, line: 89, baseType: !378, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2538, file: !2493, line: 90, baseType: !280, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2538, file: !2493, line: 91, baseType: !280, size: 64, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2533, file: !2493, line: 97, baseType: !2544, size: 96)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2533, file: !2493, line: 94, size: 96, elements: !2545)
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2544, file: !2493, line: 95, baseType: !378, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2544, file: !2493, line: 96, baseType: !303, size: 32, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2533, file: !2493, line: 103, baseType: !2549, size: 128)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2533, file: !2493, line: 99, size: 128, elements: !2550)
!2550 = !{!2551, !2552, !2553}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2549, file: !2493, line: 100, baseType: !304, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2549, file: !2493, line: 101, baseType: !303, size: 32, offset: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2549, file: !2493, line: 102, baseType: !303, size: 32, offset: 96)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2492, file: !2493, line: 111, baseType: !2555, size: 128)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2492, file: !2493, line: 108, size: 128, elements: !2556)
!2556 = !{!2557, !2558}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2555, file: !2493, line: 109, baseType: !551, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2555, file: !2493, line: 110, baseType: !115, size: 32, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2492, file: !2493, line: 118, baseType: !2560, size: 128)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2492, file: !2493, line: 114, size: 128, elements: !2561)
!2561 = !{!2562, !2563, !2564}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2560, file: !2493, line: 115, baseType: !280, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2560, file: !2493, line: 116, baseType: !115, size: 32, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2560, file: !2493, line: 117, baseType: !13, size: 32, offset: 96)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1420, file: !1421, line: 1208, baseType: !2346, size: 448, offset: 17664)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1420, file: !1421, line: 1215, baseType: !665, size: 64, offset: 18112)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1420, file: !1421, line: 1217, baseType: !665, size: 64, offset: 18176)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1420, file: !1421, line: 1219, baseType: !665, size: 64, offset: 18240)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1420, file: !1421, line: 1223, baseType: !2570, size: 64, offset: 18304)
!2570 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2571, line: 99, baseType: !2572)
!2571 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2571, line: 99, size: 64, elements: !2573)
!2573 = !{!2574}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2572, file: !2571, line: 99, baseType: !1656, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1420, file: !1421, line: 1225, baseType: !635, size: 32, offset: 18368)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1420, file: !1421, line: 1226, baseType: !115, size: 32, offset: 18400)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1420, file: !1421, line: 1227, baseType: !115, size: 32, offset: 18432)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1420, file: !1421, line: 1231, baseType: !2579, size: 64, offset: 18496)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1421, line: 1231, flags: DIFlagFwdDecl)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1420, file: !1421, line: 1233, baseType: !445, size: 128, offset: 18560)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1420, file: !1421, line: 1240, baseType: !2583, size: 64, offset: 18688)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1421, line: 62, flags: DIFlagFwdDecl)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1420, file: !1421, line: 1242, baseType: !2586, size: 64, offset: 18752)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1421, line: 1242, flags: DIFlagFwdDecl)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1420, file: !1421, line: 1244, baseType: !445, size: 128, offset: 18816)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1420, file: !1421, line: 1245, baseType: !2590, size: 64, offset: 18944)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1421, line: 51, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1420, file: !1421, line: 1246, baseType: !853, size: 256, offset: 19008)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1420, file: !1421, line: 1247, baseType: !13, size: 32, offset: 19264)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1420, file: !1421, line: 1250, baseType: !2595, size: 64, offset: 19328)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1421, line: 57, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1420, file: !1421, line: 1251, baseType: !853, size: 256, offset: 19392)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1420, file: !1421, line: 1252, baseType: !445, size: 128, offset: 19648)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1420, file: !1421, line: 1259, baseType: !2600, size: 64, offset: 19776)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1421, line: 54, flags: DIFlagFwdDecl)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1420, file: !1421, line: 1260, baseType: !989, size: 16, offset: 19840)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1420, file: !1421, line: 1261, baseType: !989, size: 16, offset: 19856)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1420, file: !1421, line: 1314, baseType: !2605, size: 64, offset: 19904)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2607, line: 62, size: 256, align: 256, elements: !2608)
!2607 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2608 = !{!2609, !2610, !2611, !2612, !2613, !2614, !2615}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2606, file: !2607, line: 75, baseType: !303, size: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2606, file: !2607, line: 90, baseType: !303, size: 32, offset: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2606, file: !2607, line: 112, baseType: !666, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2606, file: !2607, line: 132, baseType: !303, size: 32, offset: 128)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2606, file: !2607, line: 140, baseType: !303, size: 32, offset: 160)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2606, file: !2607, line: 149, baseType: !303, size: 32, offset: 192)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2606, file: !2607, line: 154, baseType: !2616, offset: 224)
!2616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1878)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1420, file: !1421, line: 1315, baseType: !302, size: 32, offset: 19968)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1420, file: !1421, line: 1316, baseType: !302, size: 32, offset: 20000)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1420, file: !1421, line: 1321, baseType: !304, size: 64, offset: 20032)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1420, file: !1421, line: 1325, baseType: !115, size: 32, offset: 20096)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1420, file: !1421, line: 1326, baseType: !115, size: 32, offset: 20128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1420, file: !1421, line: 1327, baseType: !115, size: 32, offset: 20160)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1420, file: !1421, line: 1328, baseType: !115, size: 32, offset: 20192)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1420, file: !1421, line: 1329, baseType: !1071, size: 128, align: 64, offset: 20224)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1420, file: !1421, line: 1332, baseType: !2626, size: 128, offset: 20352)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2627, line: 51, size: 128, elements: !2628)
!2627 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2628 = !{!2629, !2634, !2635}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2626, file: !2627, line: 60, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2631, line: 7, size: 64, elements: !2632)
!2631 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2632 = !{!2633}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2630, file: !2631, line: 12, baseType: !1653, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2626, file: !2627, line: 63, baseType: !933, size: 8, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2626, file: !2627, line: 70, baseType: !933, size: 8, offset: 72)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1420, file: !1421, line: 1335, baseType: !2637, size: 64, offset: 20480)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1421, line: 59, flags: DIFlagFwdDecl)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1420, file: !1421, line: 1337, baseType: !2640, size: 128, offset: 20544)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2627, line: 39, size: 128, elements: !2641)
!2641 = !{!2642, !2926, !2927}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2640, file: !2627, line: 40, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !44, line: 74, size: 512, align: 128, elements: !2645)
!2645 = !{!2646, !2647, !2920, !2925}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2644, file: !44, line: 75, baseType: !304, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, scope: !2644, file: !44, line: 83, baseType: !2648, size: 320, offset: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2644, file: !44, line: 83, size: 320, elements: !2649)
!2649 = !{!2650, !2671, !2685, !2689, !2919}
!2650 = !DIDerivedType(tag: DW_TAG_member, scope: !2648, file: !44, line: 84, baseType: !2651, size: 320)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2648, file: !44, line: 84, size: 320, elements: !2652)
!2652 = !{!2653, !2664, !2665, !2670}
!2653 = !DIDerivedType(tag: DW_TAG_member, scope: !2651, file: !44, line: 90, baseType: !2654, size: 128)
!2654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2651, file: !44, line: 90, size: 128, elements: !2655)
!2655 = !{!2656, !2657, !2662, !2663}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2654, file: !44, line: 91, baseType: !445, size: 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, scope: !2654, file: !44, line: 94, baseType: !2658, size: 128)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2654, file: !44, line: 94, size: 128, elements: !2659)
!2659 = !{!2660, !2661}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2658, file: !44, line: 96, baseType: !280, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2658, file: !44, line: 98, baseType: !13, size: 32, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2654, file: !44, line: 102, baseType: !445, size: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2654, file: !44, line: 103, baseType: !445, size: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2651, file: !44, line: 106, baseType: !590, size: 64, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, scope: !2651, file: !44, line: 107, baseType: !2666, size: 64, offset: 192)
!2666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2651, file: !44, line: 107, size: 64, elements: !2667)
!2667 = !{!2668, !2669}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2666, file: !44, line: 108, baseType: !304, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2666, file: !44, line: 109, baseType: !304, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2651, file: !44, line: 117, baseType: !304, size: 64, offset: 256)
!2671 = !DIDerivedType(tag: DW_TAG_member, scope: !2648, file: !44, line: 119, baseType: !2672, size: 320)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2648, file: !44, line: 119, size: 320, elements: !2673)
!2673 = !{!2674, !2675, !2678, !2679, !2680}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2672, file: !44, line: 124, baseType: !304, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2672, file: !44, line: 125, baseType: !2676, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !44, line: 125, flags: DIFlagFwdDecl)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2672, file: !44, line: 126, baseType: !304, size: 64, offset: 128)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2672, file: !44, line: 127, baseType: !304, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_member, scope: !2672, file: !44, line: 128, baseType: !2681, size: 64, offset: 256)
!2681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2672, file: !44, line: 128, size: 64, elements: !2682)
!2682 = !{!2683, !2684}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2681, file: !44, line: 133, baseType: !304, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2681, file: !44, line: 138, baseType: !857, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, scope: !2648, file: !44, line: 141, baseType: !2686, size: 64)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2648, file: !44, line: 141, size: 64, elements: !2687)
!2687 = !{!2688}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2686, file: !44, line: 142, baseType: !304, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, scope: !2648, file: !44, line: 144, baseType: !2690, size: 128)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2648, file: !44, line: 144, size: 128, elements: !2691)
!2691 = !{!2692, !2918}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2690, file: !44, line: 146, baseType: !2693, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !36, line: 126, size: 1216, elements: !2695)
!2695 = !{!2696, !2706, !2727, !2728, !2729, !2730, !2731, !2900, !2901, !2902}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2694, file: !36, line: 127, baseType: !2697, size: 384)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !36, line: 21, size: 384, elements: !2698)
!2698 = !{!2699, !2700, !2702, !2703, !2704, !2705}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2697, file: !36, line: 22, baseType: !304, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2697, file: !36, line: 23, baseType: !2701, size: 64, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2697, file: !36, line: 24, baseType: !2701, size: 64, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2697, file: !36, line: 25, baseType: !304, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2697, file: !36, line: 26, baseType: !304, size: 64, offset: 256)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2697, file: !36, line: 27, baseType: !304, size: 64, offset: 320)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2694, file: !36, line: 128, baseType: !2707, size: 128, offset: 384)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2708, line: 105, size: 128, elements: !2709)
!2708 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2709 = !{!2710, !2711}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2707, file: !2708, line: 110, baseType: !304, size: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2707, file: !2708, line: 118, baseType: !2712, size: 64, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2708, line: 95, size: 448, elements: !2714)
!2714 = !{!2715, !2716, !2722, !2723, !2724, !2725, !2726}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2713, file: !2708, line: 96, baseType: !857, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2713, file: !2708, line: 97, baseType: !2717, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2708, line: 60, baseType: !2719)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !2721}
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2713, file: !2708, line: 98, baseType: !2717, size: 64, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2713, file: !2708, line: 99, baseType: !933, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2713, file: !2708, line: 100, baseType: !933, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2713, file: !2708, line: 101, baseType: !1071, size: 128, align: 64, offset: 256)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2713, file: !2708, line: 102, baseType: !2721, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2694, file: !36, line: 129, baseType: !802, size: 256, offset: 512)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2694, file: !36, line: 130, baseType: !35, size: 32, offset: 768)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2694, file: !36, line: 131, baseType: !13, size: 32, offset: 800)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2694, file: !36, line: 132, baseType: !304, size: 64, offset: 832)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2694, file: !36, line: 133, baseType: !2732, size: 64, offset: 896)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2734)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !36, line: 77, size: 192, elements: !2735)
!2735 = !{!2736, !2740, !2896}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2734, file: !36, line: 83, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{null, !2643}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2734, file: !36, line: 89, baseType: !2741, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!2744, !2745}
!2744 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !44, line: 1184, baseType: !13)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2747, line: 512, size: 896, elements: !2748)
!2747 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2748 = !{!2749, !2863, !2864, !2871, !2878, !2888, !2889, !2890, !2892, !2894}
!2749 = !DIDerivedType(tag: DW_TAG_member, scope: !2746, file: !2747, line: 513, baseType: !2750, size: 320)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2746, file: !2747, line: 513, size: 320, elements: !2751)
!2751 = !{!2752, !2859, !2860, !2861, !2862}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2750, file: !2747, line: 514, baseType: !2753, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !44, line: 625, size: 1344, elements: !2755)
!2755 = !{!2756, !2765, !2766, !2772, !2779, !2780, !2785, !2786, !2791, !2792, !2795, !2852, !2853, !2854, !2855, !2856, !2857}
!2756 = !DIDerivedType(tag: DW_TAG_member, scope: !2754, file: !44, line: 628, baseType: !2757, size: 128)
!2757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2754, file: !44, line: 628, size: 128, elements: !2758)
!2758 = !{!2759, !2764}
!2759 = !DIDerivedType(tag: DW_TAG_member, scope: !2757, file: !44, line: 629, baseType: !2760, size: 128)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2757, file: !44, line: 629, size: 128, elements: !2761)
!2761 = !{!2762, !2763}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2760, file: !44, line: 631, baseType: !304, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2760, file: !44, line: 632, baseType: !304, size: 64, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2757, file: !44, line: 635, baseType: !1071, size: 128, align: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2754, file: !44, line: 639, baseType: !1705, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2754, file: !44, line: 640, baseType: !2767, size: 64, offset: 192)
!2767 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1741, line: 297, baseType: !2768)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1741, line: 297, size: 64, elements: !2769)
!2769 = !{!2770}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2768, file: !1741, line: 297, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1746, line: 19, baseType: !304)
!2772 = !DIDerivedType(tag: DW_TAG_member, scope: !2754, file: !44, line: 646, baseType: !2773, size: 64, offset: 256)
!2773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2754, file: !44, line: 646, size: 64, elements: !2774)
!2774 = !{!2775, !2778}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2773, file: !44, line: 647, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2777)
!2777 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !44, line: 542, baseType: !304)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2773, file: !44, line: 648, baseType: !2777, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2754, file: !44, line: 666, baseType: !115, size: 32, offset: 320)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2754, file: !44, line: 667, baseType: !2781, size: 64, offset: 384)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !44, line: 579, size: 320, elements: !2783)
!2783 = !{!2784}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2782, file: !44, line: 580, baseType: !1760, size: 320)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2754, file: !44, line: 670, baseType: !933, size: 8, offset: 448)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2754, file: !44, line: 681, baseType: !2787, size: 256, offset: 512)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2754, file: !44, line: 678, size: 256, elements: !2788)
!2788 = !{!2789, !2790}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2787, file: !44, line: 679, baseType: !965, size: 192, align: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2787, file: !44, line: 680, baseType: !304, size: 64, offset: 192)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2754, file: !44, line: 689, baseType: !445, size: 128, offset: 768)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2754, file: !44, line: 691, baseType: !2793, size: 64, offset: 896)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !44, line: 691, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2754, file: !44, line: 694, baseType: !2796, size: 64, offset: 960)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2798)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2747, line: 563, size: 1024, elements: !2799)
!2799 = !{!2800, !2804, !2805, !2809, !2813, !2817, !2818, !2822, !2826, !2830, !2831, !2832, !2836, !2840, !2844, !2848}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2798, file: !2747, line: 564, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{null, !2753}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2798, file: !2747, line: 569, baseType: !2801, size: 64, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2798, file: !2747, line: 571, baseType: !2806, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!115, !2753, !304}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2798, file: !2747, line: 572, baseType: !2810, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!115, !2753}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2798, file: !2747, line: 578, baseType: !2814, size: 64, offset: 256)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!115, !2753, !304, !304, !304}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2798, file: !2747, line: 580, baseType: !2741, size: 64, offset: 320)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2798, file: !2747, line: 581, baseType: !2819, size: 64, offset: 384)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!2744, !2745, !13}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2798, file: !2747, line: 582, baseType: !2823, size: 64, offset: 448)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!2744, !2745, !304, !304}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2798, file: !2747, line: 584, baseType: !2827, size: 64, offset: 512)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!304, !2753}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2798, file: !2747, line: 588, baseType: !2741, size: 64, offset: 576)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2798, file: !2747, line: 591, baseType: !2741, size: 64, offset: 640)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2798, file: !2747, line: 597, baseType: !2833, size: 64, offset: 704)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!115, !2753, !304, !280, !115, !115}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2798, file: !2747, line: 603, baseType: !2837, size: 64, offset: 768)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!281, !2753}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2798, file: !2747, line: 613, baseType: !2841, size: 64, offset: 832)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!115, !2753, !2600}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2798, file: !2747, line: 625, baseType: !2845, size: 64, offset: 896)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!2600, !2753, !304}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2798, file: !2747, line: 633, baseType: !2849, size: 64, offset: 960)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!2643, !2753, !304}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2754, file: !44, line: 697, baseType: !304, size: 64, offset: 1024)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2754, file: !44, line: 699, baseType: !1732, size: 64, offset: 1088)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2754, file: !44, line: 700, baseType: !280, size: 64, offset: 1152)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2754, file: !44, line: 711, baseType: !857, size: 64, offset: 1216)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2754, file: !44, line: 717, baseType: !2600, size: 64, offset: 1280)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2754, file: !44, line: 722, baseType: !2858, offset: 1344)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !44, line: 570, elements: !1140)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2750, file: !2747, line: 515, baseType: !300, size: 32, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2750, file: !2747, line: 516, baseType: !304, size: 64, offset: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2750, file: !2747, line: 517, baseType: !304, size: 64, offset: 192)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2750, file: !2747, line: 518, baseType: !304, size: 64, offset: 256)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2746, file: !2747, line: 520, baseType: !43, size: 32, offset: 320)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2746, file: !2747, line: 522, baseType: !2865, size: 64, offset: 384)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1746, line: 22, baseType: !2867)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1746, line: 22, size: 64, elements: !2868)
!2868 = !{!2869}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2867, file: !1746, line: 22, baseType: !2870, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1746, line: 15, baseType: !304)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2746, file: !2747, line: 524, baseType: !2872, size: 64, offset: 448)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1741, line: 372, baseType: !2874)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1741, line: 372, size: 64, elements: !2875)
!2875 = !{!2876}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2874, file: !1741, line: 372, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1746, line: 16, baseType: !304)
!2878 = !DIDerivedType(tag: DW_TAG_member, scope: !2746, file: !2747, line: 527, baseType: !2879, size: 64, offset: 512)
!2879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2746, file: !2747, line: 527, size: 64, elements: !2880)
!2880 = !{!2881, !2887}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2879, file: !2747, line: 528, baseType: !2882, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1746, line: 21, baseType: !2883)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1746, line: 21, size: 64, elements: !2884)
!2884 = !{!2885}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2883, file: !1746, line: 21, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1746, line: 14, baseType: !304)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2879, file: !2747, line: 529, baseType: !2866, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2746, file: !2747, line: 534, baseType: !2643, size: 64, offset: 576)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2746, file: !2747, line: 535, baseType: !2643, size: 64, offset: 640)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2746, file: !2747, line: 541, baseType: !2891, size: 64, offset: 704)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2746, file: !2747, line: 545, baseType: !2893, size: 64, offset: 768)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2746, file: !2747, line: 549, baseType: !2895, size: 64, offset: 832)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1741, line: 520, baseType: !2643)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2734, file: !36, line: 100, baseType: !2897, size: 64, offset: 128)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!115, !2693, !304, !304, !115}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2694, file: !36, line: 134, baseType: !280, size: 64, offset: 960)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2694, file: !36, line: 135, baseType: !115, size: 32, offset: 1024)
!2902 = !DIDerivedType(tag: DW_TAG_member, scope: !2694, file: !36, line: 136, baseType: !2903, size: 128, offset: 1088)
!2903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2694, file: !36, line: 136, size: 128, elements: !2904)
!2904 = !{!2905, !2911}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2903, file: !36, line: 137, baseType: !2906, size: 128)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2907, line: 6, size: 128, elements: !2908)
!2907 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2908 = !{!2909, !2910}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2906, file: !2907, line: 7, baseType: !665, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2906, file: !2907, line: 8, baseType: !665, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !2903, file: !36, line: 138, baseType: !2912)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2903, file: !36, line: 138, elements: !2913)
!2913 = !{!2914, !2916}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2912, file: !36, line: 138, baseType: !2915)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2912, file: !36, line: 138, elements: !1140)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2912, file: !36, line: 138, baseType: !2917)
!2917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2906, elements: !1878)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2690, file: !44, line: 147, baseType: !280, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2648, file: !44, line: 161, baseType: !1071, size: 128, align: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, scope: !2644, file: !44, line: 164, baseType: !2921, size: 32, offset: 384)
!2921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2644, file: !44, line: 164, size: 32, elements: !2922)
!2922 = !{!2923, !2924}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2921, file: !44, line: 169, baseType: !431, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2921, file: !44, line: 177, baseType: !13, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2644, file: !44, line: 181, baseType: !431, size: 32, offset: 416)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2640, file: !2627, line: 42, baseType: !303, size: 32, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2640, file: !2627, line: 43, baseType: !303, size: 32, offset: 96)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1420, file: !1421, line: 1340, baseType: !2929, size: 64, offset: 20672)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1421, line: 69, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1420, file: !1421, line: 1351, baseType: !115, size: 32, offset: 20736)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1420, file: !1421, line: 1352, baseType: !115, size: 32, offset: 20768)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1420, file: !1421, line: 1354, baseType: !304, size: 64, offset: 20800)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1420, file: !1421, line: 1364, baseType: !665, size: 64, offset: 20864)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1420, file: !1421, line: 1365, baseType: !665, size: 64, offset: 20928)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1420, file: !1421, line: 1412, baseType: !304, size: 64, offset: 20992)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1420, file: !1421, line: 1453, baseType: !2938, size: 64, offset: 21056)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1421, line: 1453, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1420, file: !1421, line: 1457, baseType: !2941, size: 64, offset: 21120)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !60, line: 61, size: 576, elements: !2943)
!2943 = !{!2944, !2945, !2964, !2967, !2968, !3001, !3011}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2942, file: !60, line: 62, baseType: !59, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, scope: !2942, file: !60, line: 64, baseType: !2946, size: 192, offset: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2942, file: !60, line: 64, size: 192, elements: !2947)
!2947 = !{!2948, !2959}
!2948 = !DIDerivedType(tag: DW_TAG_member, scope: !2946, file: !60, line: 65, baseType: !2949, size: 192)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !60, line: 65, size: 192, elements: !2950)
!2950 = !{!2951, !2958}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2949, file: !60, line: 66, baseType: !2952, size: 128)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2953, line: 50, size: 128, elements: !2954)
!2953 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2954 = !{!2955, !2956, !2957}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2952, file: !2953, line: 52, baseType: !304, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2952, file: !2953, line: 54, baseType: !13, size: 32, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2952, file: !2953, line: 55, baseType: !13, size: 32, offset: 96)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2949, file: !60, line: 67, baseType: !304, size: 64, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, scope: !2946, file: !60, line: 70, baseType: !2960, size: 192)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2946, file: !60, line: 70, size: 192, elements: !2961)
!2961 = !{!2962, !2963}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2960, file: !60, line: 71, baseType: !1071, size: 128, align: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2960, file: !60, line: 72, baseType: !304, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2942, file: !60, line: 76, baseType: !2965, size: 64, offset: 256)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !60, line: 76, flags: DIFlagFwdDecl)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2942, file: !60, line: 77, baseType: !304, size: 64, offset: 320)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2942, file: !60, line: 79, baseType: !2969, size: 64, offset: 384)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2953, line: 25, size: 256, elements: !2971)
!2971 = !{!2972, !2978, !2982}
!2972 = !DIDerivedType(tag: DW_TAG_member, scope: !2970, file: !2953, line: 26, baseType: !2973, size: 128)
!2973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2970, file: !2953, line: 26, size: 128, elements: !2974)
!2974 = !{!2975, !2977}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2973, file: !2953, line: 27, baseType: !2976, size: 128)
!2976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 128, elements: !5)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2973, file: !2953, line: 28, baseType: !2976, size: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2970, file: !2953, line: 31, baseType: !2979, size: 64, offset: 128)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2981)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2953, line: 23, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, scope: !2970, file: !2953, line: 33, baseType: !2983, size: 64, offset: 192)
!2983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2970, file: !2953, line: 33, size: 64, elements: !2984)
!2984 = !{!2985, !2991, !2996}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2983, file: !2953, line: 38, baseType: !2986, size: 64)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !2953, line: 34, size: 64, elements: !2987)
!2987 = !{!2988, !2989, !2990}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2986, file: !2953, line: 35, baseType: !849, size: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2986, file: !2953, line: 36, baseType: !283, size: 8, offset: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2986, file: !2953, line: 37, baseType: !283, size: 8, offset: 40)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2983, file: !2953, line: 42, baseType: !2992, size: 16)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !2953, line: 39, size: 16, elements: !2993)
!2993 = !{!2994, !2995}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2992, file: !2953, line: 40, baseType: !283, size: 8)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2992, file: !2953, line: 41, baseType: !283, size: 8, offset: 8)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2983, file: !2953, line: 46, baseType: !2997, size: 16)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2983, file: !2953, line: 43, size: 16, elements: !2998)
!2998 = !{!2999, !3000}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2997, file: !2953, line: 44, baseType: !283, size: 8)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2997, file: !2953, line: 45, baseType: !283, size: 8, offset: 8)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2942, file: !60, line: 81, baseType: !3002, size: 64, offset: 448)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !60, line: 85, size: 384, elements: !3004)
!3004 = !{!3005, !3006, !3007, !3008, !3009, !3010}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3003, file: !60, line: 86, baseType: !2965, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3003, file: !60, line: 87, baseType: !304, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3003, file: !60, line: 88, baseType: !304, size: 64, offset: 128)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3003, file: !60, line: 89, baseType: !304, size: 64, offset: 192)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3003, file: !60, line: 90, baseType: !933, size: 8, offset: 256)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3003, file: !60, line: 92, baseType: !3002, size: 64, offset: 320)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2942, file: !60, line: 82, baseType: !13, size: 32, offset: 512)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1420, file: !1421, line: 1463, baseType: !3013, offset: 21184)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1421, line: 739, elements: !1140)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1420, file: !1421, line: 1470, baseType: !1071, size: 128, align: 64, offset: 21184)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1420, file: !1421, line: 1471, baseType: !426, size: 32, offset: 21312)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1420, file: !1421, line: 1472, baseType: !115, size: 32, offset: 21344)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1420, file: !1421, line: 1474, baseType: !1419, size: 64, offset: 21376)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1420, file: !1421, line: 1475, baseType: !1093, size: 320, offset: 21440)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1420, file: !1421, line: 1478, baseType: !3020, size: 64, offset: 21760)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1421, line: 1478, flags: DIFlagFwdDecl)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1420, file: !1421, line: 1482, baseType: !426, size: 32, offset: 21824)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1420, file: !1421, line: 1489, baseType: !280, size: 64, offset: 21888)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1420, file: !1421, line: 1504, baseType: !280, size: 64, offset: 21952)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1420, file: !1421, line: 1505, baseType: !666, size: 64, offset: 22016)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1420, file: !1421, line: 1506, baseType: !665, size: 64, offset: 22080)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1420, file: !1421, line: 1507, baseType: !666, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1420, file: !1421, line: 1508, baseType: !666, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1420, file: !1421, line: 1509, baseType: !666, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1420, file: !1421, line: 1510, baseType: !1071, size: 128, align: 64, offset: 22208)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1420, file: !1421, line: 1511, baseType: !115, size: 32, offset: 22336)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1420, file: !1421, line: 1515, baseType: !3033, size: 64, offset: 22400)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1338, line: 56, size: 64, elements: !3034)
!3034 = !{!3035}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3033, file: !1338, line: 57, baseType: !1341, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1420, file: !1421, line: 1518, baseType: !3033, size: 64, offset: 22464)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1420, file: !1421, line: 1528, baseType: !1071, size: 128, align: 64, offset: 22528)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1420, file: !1421, line: 1552, baseType: !3039, size: 35328, offset: 23040)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3040, line: 430, size: 35328, elements: !3041)
!3040 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3041 = !{!3042, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3071, !3072, !3073, !3074, !3075, !3076, !3079, !3080, !3081, !3082}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3039, file: !3040, line: 432, baseType: !3043, size: 192)
!3043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3044, size: 192, elements: !391)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3045, line: 16, size: 64, elements: !3046)
!3045 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3046 = !{!3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3044, file: !3045, line: 17, baseType: !487, size: 16)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3044, file: !3045, line: 18, baseType: !487, size: 16, offset: 16)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3044, file: !3045, line: 19, baseType: !487, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3044, file: !3045, line: 19, baseType: !487, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3044, file: !3045, line: 19, baseType: !487, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3044, file: !3045, line: 19, baseType: !487, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3044, file: !3045, line: 19, baseType: !487, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3044, file: !3045, line: 20, baseType: !487, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3044, file: !3045, line: 20, baseType: !487, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3044, file: !3045, line: 20, baseType: !487, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3044, file: !3045, line: 20, baseType: !487, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3044, file: !3045, line: 20, baseType: !487, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3044, file: !3045, line: 20, baseType: !487, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3039, file: !3040, line: 436, baseType: !304, size: 64, offset: 192)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3039, file: !3040, line: 440, baseType: !298, size: 16, offset: 256)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3039, file: !3040, line: 441, baseType: !298, size: 16, offset: 272)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3039, file: !3040, line: 442, baseType: !298, size: 16, offset: 288)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3039, file: !3040, line: 443, baseType: !298, size: 16, offset: 304)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3039, file: !3040, line: 447, baseType: !304, size: 64, offset: 320)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3039, file: !3040, line: 448, baseType: !304, size: 64, offset: 384)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3039, file: !3040, line: 459, baseType: !3068, size: 256, offset: 448)
!3068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3069, size: 256, elements: !1081)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3040, line: 428, flags: DIFlagFwdDecl)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3039, file: !3040, line: 461, baseType: !304, size: 64, offset: 704)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3039, file: !3040, line: 463, baseType: !304, size: 64, offset: 768)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3039, file: !3040, line: 465, baseType: !304, size: 64, offset: 832)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3039, file: !3040, line: 466, baseType: !304, size: 64, offset: 896)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3039, file: !3040, line: 467, baseType: !304, size: 64, offset: 960)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3039, file: !3040, line: 473, baseType: !3077, size: 64, offset: 1024)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3040, line: 10, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3039, file: !3040, line: 480, baseType: !304, size: 64, offset: 1088)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3039, file: !3040, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3039, file: !3040, line: 491, baseType: !302, size: 32, offset: 1184)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3039, file: !3040, line: 501, baseType: !3083, size: 33792, offset: 1536)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3084, line: 448, size: 33792, elements: !3085)
!3084 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3085 = !{!3086, !3087, !3088, !3250, !3251, !3257, !3258}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3083, file: !3084, line: 461, baseType: !13, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3083, file: !3084, line: 468, baseType: !304, size: 64, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3083, file: !3084, line: 476, baseType: !3089, size: 64, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3084, line: 356, size: 33280, align: 512, elements: !3091)
!3091 = !{!3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3090, file: !3084, line: 358, baseType: !13, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3090, file: !3084, line: 361, baseType: !13, size: 32, offset: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3090, file: !3084, line: 364, baseType: !665, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3090, file: !3084, line: 367, baseType: !665, size: 64, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3090, file: !3084, line: 370, baseType: !665, size: 64, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3090, file: !3084, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3090, file: !3084, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3090, file: !3084, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3090, file: !3084, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3090, file: !3084, line: 397, baseType: !3102, size: 32768, offset: 512)
!3102 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3084, line: 348, size: 32768, elements: !3103)
!3103 = !{!3104, !3119, !3156, !3233, !3246}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3102, file: !3084, line: 349, baseType: !3105, size: 896)
!3105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3084, line: 12, size: 896, elements: !3106)
!3106 = !{!3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3118}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3105, file: !3084, line: 13, baseType: !302, size: 32)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3105, file: !3084, line: 14, baseType: !302, size: 32, offset: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3105, file: !3084, line: 15, baseType: !302, size: 32, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3105, file: !3084, line: 16, baseType: !302, size: 32, offset: 96)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3105, file: !3084, line: 17, baseType: !302, size: 32, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3105, file: !3084, line: 18, baseType: !302, size: 32, offset: 160)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3105, file: !3084, line: 19, baseType: !302, size: 32, offset: 192)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3105, file: !3084, line: 22, baseType: !3115, size: 640, offset: 224)
!3115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 640, elements: !3116)
!3116 = !{!3117}
!3117 = !DISubrange(count: 20)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3105, file: !3084, line: 25, baseType: !302, size: 32, offset: 864)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3102, file: !3084, line: 350, baseType: !3120, size: 4096, align: 128)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3084, line: 34, size: 4096, align: 128, elements: !3121)
!3121 = !{!3122, !3123, !3124, !3125, !3126, !3141, !3142, !3143, !3145, !3147, !3151}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3120, file: !3084, line: 35, baseType: !487, size: 16)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3120, file: !3084, line: 36, baseType: !487, size: 16, offset: 16)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3120, file: !3084, line: 37, baseType: !487, size: 16, offset: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3120, file: !3084, line: 38, baseType: !487, size: 16, offset: 48)
!3126 = !DIDerivedType(tag: DW_TAG_member, scope: !3120, file: !3084, line: 39, baseType: !3127, size: 128, offset: 64)
!3127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3120, file: !3084, line: 39, size: 128, elements: !3128)
!3128 = !{!3129, !3134}
!3129 = !DIDerivedType(tag: DW_TAG_member, scope: !3127, file: !3084, line: 40, baseType: !3130, size: 128)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3127, file: !3084, line: 40, size: 128, elements: !3131)
!3131 = !{!3132, !3133}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3130, file: !3084, line: 41, baseType: !665, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3130, file: !3084, line: 42, baseType: !665, size: 64, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, scope: !3127, file: !3084, line: 44, baseType: !3135, size: 128)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3127, file: !3084, line: 44, size: 128, elements: !3136)
!3136 = !{!3137, !3138, !3139, !3140}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3135, file: !3084, line: 45, baseType: !302, size: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3135, file: !3084, line: 46, baseType: !302, size: 32, offset: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3135, file: !3084, line: 47, baseType: !302, size: 32, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3135, file: !3084, line: 48, baseType: !302, size: 32, offset: 96)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3120, file: !3084, line: 51, baseType: !302, size: 32, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3120, file: !3084, line: 52, baseType: !302, size: 32, offset: 224)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3120, file: !3084, line: 55, baseType: !3144, size: 1024, offset: 256)
!3144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 1024, elements: !674)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3120, file: !3084, line: 58, baseType: !3146, size: 2048, offset: 1280)
!3146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 2048, elements: !520)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3120, file: !3084, line: 60, baseType: !3148, size: 384, offset: 3328)
!3148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 384, elements: !3149)
!3149 = !{!3150}
!3150 = !DISubrange(count: 12)
!3151 = !DIDerivedType(tag: DW_TAG_member, scope: !3120, file: !3084, line: 62, baseType: !3152, size: 384, offset: 3712)
!3152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3120, file: !3084, line: 62, size: 384, elements: !3153)
!3153 = !{!3154, !3155}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3152, file: !3084, line: 63, baseType: !3148, size: 384)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3152, file: !3084, line: 64, baseType: !3148, size: 384)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3102, file: !3084, line: 351, baseType: !3157, size: 1088)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3084, line: 79, size: 1088, elements: !3158)
!3158 = !{!3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3232}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3157, file: !3084, line: 80, baseType: !302, size: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3157, file: !3084, line: 81, baseType: !302, size: 32, offset: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3157, file: !3084, line: 82, baseType: !302, size: 32, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3157, file: !3084, line: 83, baseType: !302, size: 32, offset: 96)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3157, file: !3084, line: 84, baseType: !302, size: 32, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3157, file: !3084, line: 85, baseType: !302, size: 32, offset: 160)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3157, file: !3084, line: 86, baseType: !302, size: 32, offset: 192)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3157, file: !3084, line: 88, baseType: !3115, size: 640, offset: 224)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3157, file: !3084, line: 89, baseType: !283, size: 8, offset: 864)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3157, file: !3084, line: 90, baseType: !283, size: 8, offset: 872)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3157, file: !3084, line: 91, baseType: !283, size: 8, offset: 880)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3157, file: !3084, line: 92, baseType: !283, size: 8, offset: 888)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3157, file: !3084, line: 93, baseType: !283, size: 8, offset: 896)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3157, file: !3084, line: 94, baseType: !283, size: 8, offset: 904)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3157, file: !3084, line: 95, baseType: !3174, size: 64, offset: 960)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3176, line: 11, size: 128, elements: !3177)
!3176 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3177 = !{!3178, !3179}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3175, file: !3176, line: 12, baseType: !551, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3175, file: !3176, line: 13, baseType: !3180, size: 64, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3182, line: 103, size: 1344, elements: !3183)
!3182 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3183 = !{!3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3212, !3213, !3214}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3181, file: !3182, line: 109, baseType: !304, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3181, file: !3182, line: 110, baseType: !304, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3181, file: !3182, line: 111, baseType: !304, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3181, file: !3182, line: 112, baseType: !304, size: 64, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3181, file: !3182, line: 113, baseType: !304, size: 64, offset: 256)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3181, file: !3182, line: 114, baseType: !304, size: 64, offset: 320)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3181, file: !3182, line: 117, baseType: !304, size: 64, offset: 384)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3181, file: !3182, line: 118, baseType: !304, size: 64, offset: 448)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3181, file: !3182, line: 119, baseType: !304, size: 64, offset: 512)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3181, file: !3182, line: 120, baseType: !304, size: 64, offset: 576)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3181, file: !3182, line: 121, baseType: !304, size: 64, offset: 640)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3181, file: !3182, line: 122, baseType: !304, size: 64, offset: 704)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3181, file: !3182, line: 123, baseType: !304, size: 64, offset: 768)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3181, file: !3182, line: 124, baseType: !304, size: 64, offset: 832)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3181, file: !3182, line: 125, baseType: !304, size: 64, offset: 896)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3181, file: !3182, line: 139, baseType: !304, size: 64, offset: 960)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3181, file: !3182, line: 142, baseType: !304, size: 64, offset: 1024)
!3201 = !DIDerivedType(tag: DW_TAG_member, scope: !3181, file: !3182, line: 144, baseType: !3202, size: 64, offset: 1088)
!3202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3181, file: !3182, line: 144, size: 64, elements: !3203)
!3203 = !{!3204, !3205, !3206}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3202, file: !3182, line: 146, baseType: !487, size: 16)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3202, file: !3182, line: 148, baseType: !665, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3202, file: !3182, line: 150, baseType: !3207, size: 64)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3182, line: 59, size: 64, elements: !3208)
!3208 = !{!3209, !3210, !3211}
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3207, file: !3182, line: 61, baseType: !665, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3207, file: !3182, line: 63, baseType: !665, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3207, file: !3182, line: 65, baseType: !665, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3181, file: !3182, line: 153, baseType: !304, size: 64, offset: 1152)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3181, file: !3182, line: 154, baseType: !304, size: 64, offset: 1216)
!3214 = !DIDerivedType(tag: DW_TAG_member, scope: !3181, file: !3182, line: 156, baseType: !3215, size: 64, offset: 1280)
!3215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3181, file: !3182, line: 156, size: 64, elements: !3216)
!3216 = !{!3217, !3218, !3219}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3215, file: !3182, line: 158, baseType: !487, size: 16)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3215, file: !3182, line: 160, baseType: !665, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3215, file: !3182, line: 162, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3182, line: 69, size: 64, elements: !3221)
!3221 = !{!3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3220, file: !3182, line: 71, baseType: !665, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3220, file: !3182, line: 73, baseType: !665, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3220, file: !3182, line: 75, baseType: !665, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3220, file: !3182, line: 77, baseType: !665, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3220, file: !3182, line: 80, baseType: !665, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3220, file: !3182, line: 83, baseType: !665, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3220, file: !3182, line: 86, baseType: !665, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3220, file: !3182, line: 88, baseType: !665, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3220, file: !3182, line: 93, baseType: !665, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3220, file: !3182, line: 100, baseType: !665, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3157, file: !3084, line: 96, baseType: !302, size: 32, offset: 1024)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3102, file: !3084, line: 352, baseType: !3234, size: 4608, align: 512)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3084, line: 333, size: 4608, align: 512, elements: !3235)
!3235 = !{!3236, !3237, !3244}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3234, file: !3084, line: 334, baseType: !3120, size: 4096, align: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3234, file: !3084, line: 335, baseType: !3238, size: 512, offset: 4096)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3084, line: 312, size: 512, elements: !3239)
!3239 = !{!3240, !3241, !3242}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3238, file: !3084, line: 313, baseType: !665, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3238, file: !3084, line: 314, baseType: !665, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3238, file: !3084, line: 315, baseType: !3243, size: 384, offset: 128)
!3243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 384, elements: !2092)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3234, file: !3084, line: 336, baseType: !3245, offset: 4608)
!3245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, elements: !1878)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3102, file: !3084, line: 353, baseType: !3247, size: 32768)
!3247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 32768, elements: !3248)
!3248 = !{!3249}
!3249 = !DISubrange(count: 4096)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3083, file: !3084, line: 484, baseType: !3089, size: 64, offset: 192)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3083, file: !3084, line: 491, baseType: !3252, size: 128, offset: 256)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3084, line: 404, size: 128, elements: !3253)
!3253 = !{!3254, !3255, !3256}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3252, file: !3084, line: 424, baseType: !665, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3252, file: !3084, line: 432, baseType: !13, size: 32, offset: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3252, file: !3084, line: 440, baseType: !13, size: 32, offset: 96)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3083, file: !3084, line: 498, baseType: !3252, size: 128, offset: 384)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3083, file: !3084, line: 508, baseType: !3090, size: 33280, align: 512, offset: 512)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1400, file: !1401, line: 31, baseType: !3260, size: 64, offset: 448)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3262, line: 11, flags: DIFlagFwdDecl)
!3262 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1400, file: !1401, line: 32, baseType: !13, size: 32, offset: 512)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1400, file: !1401, line: 33, baseType: !1399, size: 64, offset: 576)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1400, file: !1401, line: 35, baseType: !3266, size: 64, offset: 640)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1401, line: 17, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1400, file: !1401, line: 37, baseType: !1860, size: 64, offset: 704)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1400, file: !1401, line: 38, baseType: !2179, size: 64, offset: 768)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1400, file: !1401, line: 39, baseType: !115, size: 32, offset: 832)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1400, file: !1401, line: 40, baseType: !3272, size: 192, offset: 896)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !3273, line: 9, size: 192, elements: !3274)
!3273 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!3274 = !{!3275, !3276, !3280, !3281}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !3272, file: !3273, line: 10, baseType: !857, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3272, file: !3273, line: 11, baseType: !3277, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3279)
!3279 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !3273, line: 7, flags: DIFlagFwdDecl)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !3272, file: !3273, line: 12, baseType: !13, size: 32, offset: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3272, file: !3273, line: 13, baseType: !426, size: 32, offset: 160)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1400, file: !1401, line: 42, baseType: !115, size: 32, offset: 1088)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1352, file: !20, line: 951, baseType: !66, size: 32, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1352, file: !20, line: 952, baseType: !600, size: 32, offset: 160)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1352, file: !20, line: 952, baseType: !600, size: 32, offset: 192)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1352, file: !20, line: 953, baseType: !115, size: 32, offset: 224)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1331, file: !20, line: 1012, baseType: !2014, size: 64, offset: 896)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1331, file: !20, line: 1013, baseType: !3289, size: 256, offset: 960)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !3290)
!3290 = !{!3291, !3292, !3293, !3294, !3295, !3296}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3289, file: !20, line: 971, baseType: !304, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3289, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3289, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3289, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3289, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3289, file: !20, line: 976, baseType: !753, size: 64, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1331, file: !20, line: 1014, baseType: !3298, size: 128, offset: 1216)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3299, line: 8, size: 128, elements: !3300)
!3299 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3300 = !{!3301, !3302}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3298, file: !3299, line: 9, baseType: !737, size: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3298, file: !3299, line: 10, baseType: !629, size: 64, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1331, file: !20, line: 1015, baseType: !594, size: 64, offset: 1344)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1331, file: !20, line: 1016, baseType: !3305, size: 64, offset: 1408)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3307)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !3308)
!3308 = !{!3309, !3310, !3314, !3318, !3322, !3350, !3351, !3357, !3370, !3377, !3381, !3382, !3386, !3387, !3391, !3396, !3397, !3401, !3405, !3411, !3412, !3416, !3417, !3421, !3425, !3429, !3435, !3439, !3443, !3447, !3451, !3452, !3458}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3307, file: !20, line: 1915, baseType: !782, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3307, file: !20, line: 1916, baseType: !3311, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!753, !1732, !753, !115}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3307, file: !20, line: 1917, baseType: !3315, size: 64, offset: 128)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!547, !1732, !517, !562, !1314}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3307, file: !20, line: 1918, baseType: !3319, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!547, !1732, !281, !562, !1314}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3307, file: !20, line: 1919, baseType: !3323, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!547, !3326, !3348}
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3335, !3336, !3337, !3338}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3327, file: !20, line: 374, baseType: !1732, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3327, file: !20, line: 375, baseType: !753, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3327, file: !20, line: 376, baseType: !3332, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{null, !3326, !551}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3327, file: !20, line: 377, baseType: !280, size: 64, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3327, file: !20, line: 378, baseType: !115, size: 32, offset: 256)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3327, file: !20, line: 379, baseType: !487, size: 16, offset: 288)
!3338 = !DIDerivedType(tag: DW_TAG_member, scope: !3327, file: !20, line: 380, baseType: !3339, size: 64, offset: 320)
!3339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3327, file: !20, line: 380, size: 64, elements: !3340)
!3340 = !{!3341, !3344}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3339, file: !20, line: 386, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3339, file: !20, line: 395, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!547, !280}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !20, line: 69, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3307, file: !20, line: 1920, baseType: !3323, size: 64, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3307, file: !20, line: 1921, baseType: !3352, size: 64, offset: 384)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!115, !3326, !3355, !13}
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !20, line: 53, flags: DIFlagFwdDecl)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3307, file: !20, line: 1923, baseType: !3358, size: 64, offset: 448)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!115, !1732, !3361}
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !3363)
!3363 = !{!3364, !3369}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3362, file: !20, line: 1859, baseType: !3365, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !3366)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!933, !3361, !281, !115, !753, !665, !13}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3362, file: !20, line: 1860, baseType: !753, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3307, file: !20, line: 1924, baseType: !3371, size: 64, offset: 512)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!3374, !1732, !3375}
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !296, line: 59, baseType: !13)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !768, line: 31, flags: DIFlagFwdDecl)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3307, file: !20, line: 1925, baseType: !3378, size: 64, offset: 576)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!551, !1732, !13, !304}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3307, file: !20, line: 1926, baseType: !3378, size: 64, offset: 640)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3307, file: !20, line: 1927, baseType: !3383, size: 64, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!115, !1732, !2753}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3307, file: !20, line: 1928, baseType: !304, size: 64, offset: 768)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3307, file: !20, line: 1929, baseType: !3388, size: 64, offset: 832)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!115, !594, !1732}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3307, file: !20, line: 1930, baseType: !3392, size: 64, offset: 896)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!115, !1732, !3395}
!3395 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !280)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3307, file: !20, line: 1931, baseType: !3388, size: 64, offset: 960)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3307, file: !20, line: 1932, baseType: !3398, size: 64, offset: 1024)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!115, !1732, !753, !753, !115}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3307, file: !20, line: 1933, baseType: !3402, size: 64, offset: 1088)
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!115, !115, !1732, !115}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3307, file: !20, line: 1934, baseType: !3406, size: 64, offset: 1152)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DISubroutineType(types: !3408)
!3408 = !{!115, !1732, !115, !3409}
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3307, file: !20, line: 1935, baseType: !1729, size: 64, offset: 1216)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3307, file: !20, line: 1936, baseType: !3413, size: 64, offset: 1280)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!115, !115}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3307, file: !20, line: 1937, baseType: !3406, size: 64, offset: 1344)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3307, file: !20, line: 1938, baseType: !3418, size: 64, offset: 1408)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!547, !2637, !1732, !1314, !562, !13}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3307, file: !20, line: 1939, baseType: !3422, size: 64, offset: 1472)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!547, !1732, !1314, !2637, !562, !13}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3307, file: !20, line: 1940, baseType: !3426, size: 64, offset: 1536)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{null, !1732}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3307, file: !20, line: 1941, baseType: !3430, size: 64, offset: 1600)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!115, !1732, !115, !3433, !3434}
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3307, file: !20, line: 1942, baseType: !3436, size: 64, offset: 1664)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!551, !1732, !115, !753, !753}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3307, file: !20, line: 1944, baseType: !3440, size: 64, offset: 1728)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{null, !1293, !1732}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3307, file: !20, line: 1948, baseType: !3444, size: 64, offset: 1792)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!547, !1732, !753, !1732, !753, !562, !13}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3307, file: !20, line: 1950, baseType: !3448, size: 64, offset: 1856)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!753, !1732, !753, !1732, !753, !753, !13}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3307, file: !20, line: 1953, baseType: !3398, size: 64, offset: 1920)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3307, file: !20, line: 1954, baseType: !3453, size: 64, offset: 1984)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!115, !3456, !13}
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3307, file: !20, line: 1955, baseType: !3459, size: 64, offset: 2048)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!115, !3456, !3355, !13}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1331, file: !20, line: 1018, baseType: !665, size: 64, offset: 1472)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1331, file: !20, line: 1020, baseType: !280, size: 64, offset: 1536)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1331, file: !20, line: 1023, baseType: !280, size: 64, offset: 1600)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1331, file: !20, line: 1027, baseType: !3466, size: 64, offset: 1664)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1331, file: !20, line: 1029, baseType: !590, size: 64, offset: 1728)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1331, file: !20, line: 1030, baseType: !3469, size: 32, offset: 1792)
!3469 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3470, line: 8, baseType: !302)
!3470 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1331, file: !20, line: 1031, baseType: !3469, size: 32, offset: 1824)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1294, file: !1295, line: 29, baseType: !280, size: 64, offset: 896)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1237, file: !20, line: 2077, baseType: !1290, size: 64, offset: 1088)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1237, file: !20, line: 2078, baseType: !1290, size: 64, offset: 1152)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1237, file: !20, line: 2079, baseType: !1290, size: 64, offset: 1216)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1237, file: !20, line: 2081, baseType: !3477, size: 64, offset: 1280)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!547, !743, !115, !517, !562, !753}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1237, file: !20, line: 2082, baseType: !3481, size: 64, offset: 1344)
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{!547, !743, !115, !281, !562, !753}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1237, file: !20, line: 2083, baseType: !3485, size: 64, offset: 1408)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!3488, !594}
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !75, line: 296, size: 1664, elements: !3491)
!3491 = !{!3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3516, !3517, !3518}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3490, file: !75, line: 297, baseType: !1097, size: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3490, file: !75, line: 298, baseType: !445, size: 128, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3490, file: !75, line: 299, baseType: !445, size: 128, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3490, file: !75, line: 300, baseType: !445, size: 128, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3490, file: !75, line: 301, baseType: !853, size: 256, offset: 512)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3490, file: !75, line: 302, baseType: !458, size: 32, offset: 768)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3490, file: !75, line: 303, baseType: !431, size: 32, offset: 800)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3490, file: !75, line: 304, baseType: !743, size: 64, offset: 832)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3490, file: !75, line: 305, baseType: !3501, size: 64, offset: 896)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !75, line: 68, size: 64, elements: !3502)
!3502 = !{!3503, !3515}
!3503 = !DIDerivedType(tag: DW_TAG_member, scope: !3501, file: !75, line: 69, baseType: !3504, size: 32)
!3504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3501, file: !75, line: 69, size: 32, elements: !3505)
!3505 = !{!3506, !3507, !3508}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3504, file: !75, line: 70, baseType: !600, size: 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3504, file: !75, line: 71, baseType: !609, size: 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3504, file: !75, line: 72, baseType: !3509, size: 32)
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3510, line: 24, baseType: !3511)
!3510 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3510, line: 22, size: 32, elements: !3512)
!3512 = !{!3513}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3511, file: !3510, line: 23, baseType: !3514, size: 32)
!3514 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3510, line: 20, baseType: !606)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3501, file: !75, line: 74, baseType: !74, size: 32, offset: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3490, file: !75, line: 306, baseType: !753, size: 64, offset: 960)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3490, file: !75, line: 307, baseType: !304, size: 64, offset: 1024)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3490, file: !75, line: 308, baseType: !3519, size: 576, offset: 1088)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !75, line: 205, size: 576, elements: !3520)
!3520 = !{!3521, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3519, file: !75, line: 206, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !75, line: 66, baseType: !755)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3519, file: !75, line: 207, baseType: !3522, size: 64, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3519, file: !75, line: 208, baseType: !3522, size: 64, offset: 128)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3519, file: !75, line: 209, baseType: !3522, size: 64, offset: 192)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3519, file: !75, line: 210, baseType: !3522, size: 64, offset: 256)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3519, file: !75, line: 211, baseType: !3522, size: 64, offset: 320)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3519, file: !75, line: 212, baseType: !3522, size: 64, offset: 384)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3519, file: !75, line: 213, baseType: !2063, size: 64, offset: 448)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3519, file: !75, line: 214, baseType: !2063, size: 64, offset: 512)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1237, file: !20, line: 2085, baseType: !3532, size: 64, offset: 1472)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!551, !743, !3535}
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3537, line: 15, size: 256, elements: !3538)
!3537 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3538 = !{!3539, !3540, !3541, !3542, !3543}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3536, file: !3537, line: 16, baseType: !300, size: 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3536, file: !3537, line: 19, baseType: !115, size: 32, offset: 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3536, file: !3537, line: 26, baseType: !304, size: 64, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3536, file: !3537, line: 33, baseType: !304, size: 64, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3536, file: !3537, line: 36, baseType: !3544, size: 64, offset: 192)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !44, line: 33, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1237, file: !20, line: 2087, baseType: !3532, size: 64, offset: 1536)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1237, file: !20, line: 2089, baseType: !778, size: 64, offset: 1600)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !744, file: !20, line: 1198, baseType: !3549, size: 64, offset: 448)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3551)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !75, line: 324, size: 704, elements: !3552)
!3552 = !{!3553, !3557, !3561, !3565, !3566, !3567, !3568, !3569, !3574, !3579, !3583}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3551, file: !75, line: 325, baseType: !3554, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!115, !3489}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3551, file: !75, line: 326, baseType: !3558, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!3489, !743, !115}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3551, file: !75, line: 327, baseType: !3562, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{null, !3489}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3551, file: !75, line: 328, baseType: !3554, size: 64, offset: 192)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3551, file: !75, line: 329, baseType: !3554, size: 64, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3551, file: !75, line: 330, baseType: !3554, size: 64, offset: 320)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3551, file: !75, line: 331, baseType: !1265, size: 64, offset: 384)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3551, file: !75, line: 334, baseType: !3570, size: 64, offset: 448)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!3573, !594}
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3551, file: !75, line: 335, baseType: !3575, size: 64, offset: 512)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!115, !594, !3578}
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3551, file: !75, line: 337, baseType: !3580, size: 64, offset: 576)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!115, !594, !3573}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3551, file: !75, line: 339, baseType: !3584, size: 64, offset: 640)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!115, !743, !3587}
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !744, file: !20, line: 1199, baseType: !3589, size: 64, offset: 512)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3591)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !75, line: 430, size: 704, elements: !3592)
!3592 = !{!3593, !3599, !3600, !3604, !3605, !3606, !3621, !3644, !3648, !3649, !3672}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3591, file: !75, line: 431, baseType: !3594, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!115, !743, !115, !115, !3597}
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3298)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3591, file: !75, line: 432, baseType: !1265, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3591, file: !75, line: 433, baseType: !3601, size: 64, offset: 128)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!115, !743, !13}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3591, file: !75, line: 434, baseType: !3601, size: 64, offset: 192)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3591, file: !75, line: 435, baseType: !1265, size: 64, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3591, file: !75, line: 436, baseType: !3607, size: 64, offset: 320)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!115, !743, !115, !3610}
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !75, line: 417, size: 256, elements: !3612)
!3612 = !{!3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620}
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3611, file: !75, line: 418, baseType: !115, size: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3611, file: !75, line: 419, baseType: !13, size: 32, offset: 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3611, file: !75, line: 420, baseType: !13, size: 32, offset: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3611, file: !75, line: 422, baseType: !13, size: 32, offset: 96)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3611, file: !75, line: 423, baseType: !13, size: 32, offset: 128)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3611, file: !75, line: 424, baseType: !13, size: 32, offset: 160)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3611, file: !75, line: 425, baseType: !13, size: 32, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3611, file: !75, line: 426, baseType: !13, size: 32, offset: 224)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3591, file: !75, line: 437, baseType: !3622, size: 64, offset: 384)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!115, !743, !3501, !3625}
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !75, line: 345, size: 960, elements: !3627)
!3627 = !{!3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3626, file: !75, line: 346, baseType: !115, size: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3626, file: !75, line: 347, baseType: !665, size: 64, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3626, file: !75, line: 348, baseType: !665, size: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3626, file: !75, line: 349, baseType: !665, size: 64, offset: 192)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3626, file: !75, line: 350, baseType: !665, size: 64, offset: 256)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3626, file: !75, line: 351, baseType: !665, size: 64, offset: 320)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3626, file: !75, line: 352, baseType: !665, size: 64, offset: 384)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3626, file: !75, line: 353, baseType: !863, size: 64, offset: 448)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3626, file: !75, line: 355, baseType: !863, size: 64, offset: 512)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3626, file: !75, line: 356, baseType: !115, size: 32, offset: 576)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3626, file: !75, line: 357, baseType: !115, size: 32, offset: 608)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3626, file: !75, line: 358, baseType: !665, size: 64, offset: 640)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3626, file: !75, line: 359, baseType: !665, size: 64, offset: 704)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3626, file: !75, line: 360, baseType: !665, size: 64, offset: 768)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3626, file: !75, line: 361, baseType: !863, size: 64, offset: 832)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3626, file: !75, line: 362, baseType: !115, size: 32, offset: 896)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3591, file: !75, line: 438, baseType: !3645, size: 64, offset: 448)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!115, !743, !3587, !3625}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3591, file: !75, line: 440, baseType: !3622, size: 64, offset: 512)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3591, file: !75, line: 441, baseType: !3650, size: 64, offset: 576)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!115, !743, !3653}
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !75, line: 411, size: 1408, elements: !3655)
!3655 = !{!3656, !3657}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3654, file: !75, line: 412, baseType: !13, size: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3654, file: !75, line: 413, baseType: !3658, size: 1344, offset: 64)
!3658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3659, size: 1344, elements: !391)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !75, line: 397, size: 448, elements: !3660)
!3660 = !{!3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3671}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3659, file: !75, line: 398, baseType: !13, size: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3659, file: !75, line: 399, baseType: !13, size: 32, offset: 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3659, file: !75, line: 401, baseType: !13, size: 32, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3659, file: !75, line: 402, baseType: !13, size: 32, offset: 96)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3659, file: !75, line: 403, baseType: !13, size: 32, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3659, file: !75, line: 404, baseType: !13, size: 32, offset: 160)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3659, file: !75, line: 405, baseType: !13, size: 32, offset: 192)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3659, file: !75, line: 406, baseType: !667, size: 64, offset: 256)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3659, file: !75, line: 407, baseType: !3670, size: 64, offset: 320)
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !301, line: 132, baseType: !665)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3659, file: !75, line: 408, baseType: !3670, size: 64, offset: 384)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3591, file: !75, line: 442, baseType: !3601, size: 64, offset: 640)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !744, file: !20, line: 1200, baseType: !3674, size: 64, offset: 576)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3676)
!3676 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !744, file: !20, line: 1201, baseType: !304, size: 64, offset: 640)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !744, file: !20, line: 1202, baseType: !304, size: 64, offset: 704)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !744, file: !20, line: 1203, baseType: !304, size: 64, offset: 768)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !744, file: !20, line: 1204, baseType: !629, size: 64, offset: 832)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !744, file: !20, line: 1205, baseType: !1760, size: 320, offset: 896)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !744, file: !20, line: 1206, baseType: !115, size: 32, offset: 1216)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !744, file: !20, line: 1207, baseType: !431, size: 32, offset: 1248)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !744, file: !20, line: 1209, baseType: !280, size: 64, offset: 1280)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !744, file: !20, line: 1211, baseType: !3686, size: 64, offset: 1344)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3689)
!3689 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !744, file: !20, line: 1223, baseType: !3691, size: 64, offset: 1408)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !646, line: 34, size: 64, elements: !3692)
!3692 = !{!3693}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3691, file: !646, line: 35, baseType: !649, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !744, file: !20, line: 1224, baseType: !445, size: 128, offset: 1472)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !744, file: !20, line: 1225, baseType: !3696, size: 64, offset: 1600)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !20, line: 1225, flags: DIFlagFwdDecl)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !744, file: !20, line: 1226, baseType: !3699, size: 64, offset: 1664)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !20, line: 1226, flags: DIFlagFwdDecl)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !744, file: !20, line: 1227, baseType: !3702, size: 64, offset: 1728)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !744, file: !20, line: 1228, baseType: !3705, size: 64, offset: 1792)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !744, file: !20, line: 1229, baseType: !1097, size: 128, offset: 1856)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !744, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !744, file: !20, line: 1231, baseType: !3710, size: 2496, offset: 2048)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !75, line: 521, size: 2496, elements: !3711)
!3711 = !{!3712, !3713, !3714, !3716, !3748}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3710, file: !75, line: 522, baseType: !13, size: 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3710, file: !75, line: 523, baseType: !1760, size: 320, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3710, file: !75, line: 524, baseType: !3715, size: 192, offset: 384)
!3715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !594, size: 192, elements: !391)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3710, file: !75, line: 525, baseType: !3717, size: 1728, offset: 576)
!3717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3718, size: 1728, elements: !391)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !75, line: 222, size: 576, elements: !3719)
!3719 = !{!3720, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3718, file: !75, line: 223, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !75, line: 445, size: 256, elements: !3723)
!3723 = !{!3724, !3725, !3738, !3739}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3722, file: !75, line: 446, baseType: !115, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3722, file: !75, line: 447, baseType: !3726, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3728)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !75, line: 312, size: 512, elements: !3729)
!3729 = !{!3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3728, file: !75, line: 313, baseType: !1265, size: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3728, file: !75, line: 314, baseType: !1265, size: 64, offset: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3728, file: !75, line: 315, baseType: !1265, size: 64, offset: 128)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3728, file: !75, line: 316, baseType: !1265, size: 64, offset: 192)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3728, file: !75, line: 317, baseType: !3554, size: 64, offset: 256)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3728, file: !75, line: 318, baseType: !3554, size: 64, offset: 320)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3728, file: !75, line: 319, baseType: !3554, size: 64, offset: 384)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3728, file: !75, line: 320, baseType: !3584, size: 64, offset: 448)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3722, file: !75, line: 448, baseType: !782, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3722, file: !75, line: 449, baseType: !3721, size: 64, offset: 192)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3718, file: !75, line: 224, baseType: !115, size: 32, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3718, file: !75, line: 226, baseType: !445, size: 128, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3718, file: !75, line: 227, baseType: !304, size: 64, offset: 256)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3718, file: !75, line: 228, baseType: !13, size: 32, offset: 320)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3718, file: !75, line: 229, baseType: !13, size: 32, offset: 352)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3718, file: !75, line: 230, baseType: !3522, size: 64, offset: 384)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3718, file: !75, line: 231, baseType: !3522, size: 64, offset: 448)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3718, file: !75, line: 232, baseType: !280, size: 64, offset: 512)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3710, file: !75, line: 526, baseType: !3749, size: 192, offset: 2304)
!3749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3726, size: 192, elements: !391)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !744, file: !20, line: 1233, baseType: !3751, size: 2368, offset: 4544)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !3752)
!3752 = !{!3753, !3754, !3755}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3751, file: !20, line: 1185, baseType: !298, size: 16)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3751, file: !20, line: 1186, baseType: !298, size: 16, offset: 16)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3751, file: !20, line: 1187, baseType: !3756, size: 2304, offset: 64)
!3756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3757, size: 2304, elements: !391)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3758, line: 12, size: 768, elements: !3759)
!3758 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3759 = !{!3760, !3768, !3769, !3774, !3775}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3757, file: !3758, line: 13, baseType: !3761, size: 384)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3762, line: 17, size: 384, elements: !3763)
!3762 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3763 = !{!3764, !3765, !3766, !3767}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3761, file: !3762, line: 18, baseType: !115, size: 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3761, file: !3762, line: 19, baseType: !115, size: 32, offset: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3761, file: !3762, line: 20, baseType: !1386, size: 192, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3761, file: !3762, line: 22, baseType: !1071, size: 128, align: 64, offset: 256)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3757, file: !3758, line: 14, baseType: !925, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3757, file: !3758, line: 15, baseType: !3770, size: 64, offset: 448)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3771, line: 16, size: 64, elements: !3772)
!3771 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3772 = !{!3773}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3770, file: !3771, line: 17, baseType: !1419, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3757, file: !3758, line: 16, baseType: !1386, size: 192, offset: 512)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3757, file: !3758, line: 17, baseType: !431, size: 32, offset: 704)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !744, file: !20, line: 1240, baseType: !280, size: 64, offset: 6912)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !744, file: !20, line: 1243, baseType: !302, size: 32, offset: 6976)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !744, file: !20, line: 1245, baseType: !2063, size: 64, offset: 7040)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !744, file: !20, line: 1246, baseType: !2063, size: 64, offset: 7104)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !744, file: !20, line: 1248, baseType: !303, size: 32, offset: 7168)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !744, file: !20, line: 1249, baseType: !3782, size: 64, offset: 7232)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !744, file: !20, line: 1252, baseType: !3785, size: 256, offset: 7296)
!3785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !674)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !744, file: !20, line: 1253, baseType: !3787, size: 128, offset: 7552)
!3787 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3788, line: 21, baseType: !3789)
!3788 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3788, line: 19, size: 128, elements: !3790)
!3790 = !{!3791}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3789, file: !3788, line: 20, baseType: !3792, size: 128)
!3792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 128, elements: !5)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !744, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !744, file: !20, line: 1261, baseType: !853, size: 256, offset: 7744)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !744, file: !20, line: 1267, baseType: !281, size: 64, offset: 8000)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !744, file: !20, line: 1269, baseType: !690, size: 64, offset: 8064)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !744, file: !20, line: 1271, baseType: !3798, size: 448, offset: 8128)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3537, line: 63, size: 448, elements: !3799)
!3799 = !{!3800, !3805, !3806, !3807, !3808, !3809, !3810}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3798, file: !3537, line: 64, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!304, !3804, !3535}
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3798, file: !3537, line: 66, baseType: !3801, size: 64, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3798, file: !3537, line: 69, baseType: !551, size: 64, offset: 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3798, file: !3537, line: 70, baseType: !115, size: 32, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3798, file: !3537, line: 71, baseType: !13, size: 32, offset: 224)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3798, file: !3537, line: 74, baseType: !445, size: 128, offset: 256)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3798, file: !3537, line: 85, baseType: !3811, size: 64, offset: 384)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !744, file: !20, line: 1274, baseType: !857, size: 64, offset: 8576)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !744, file: !20, line: 1280, baseType: !857, size: 64, offset: 8640)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !744, file: !20, line: 1283, baseType: !115, size: 32, offset: 8704)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !744, file: !20, line: 1286, baseType: !3469, size: 32, offset: 8736)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !744, file: !20, line: 1289, baseType: !1173, size: 64, offset: 8768)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !744, file: !20, line: 1290, baseType: !1221, size: 64, offset: 8832)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !744, file: !20, line: 1297, baseType: !1860, size: 64, offset: 8896)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !744, file: !20, line: 1304, baseType: !3820, size: 64, offset: 8960)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3821, line: 49, size: 64, elements: !3822)
!3821 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3822 = !{!3823}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3820, file: !3821, line: 50, baseType: !3824, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3821, line: 41, size: 512, align: 512, elements: !3826)
!3826 = !{!3827, !3828, !3833}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3825, file: !3821, line: 43, baseType: !458, size: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3825, file: !3821, line: 45, baseType: !3829, size: 192, offset: 64)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3821, line: 29, size: 192, elements: !3830)
!3830 = !{!3831, !3832}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3829, file: !3821, line: 30, baseType: !445, size: 128)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3829, file: !3821, line: 32, baseType: !551, size: 64, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3825, file: !3821, line: 46, baseType: !551, size: 64, offset: 256)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !744, file: !20, line: 1305, baseType: !3820, size: 64, offset: 9024)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !744, file: !20, line: 1306, baseType: !1071, size: 128, align: 64, offset: 9088)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !744, file: !20, line: 1307, baseType: !1111, size: 256, offset: 9216)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !744, file: !20, line: 1309, baseType: !853, size: 256, offset: 9472)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !744, file: !20, line: 1314, baseType: !115, size: 32, offset: 9728)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !744, file: !20, line: 1317, baseType: !458, size: 32, align: 512, offset: 10240)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !744, file: !20, line: 1318, baseType: !445, size: 128, offset: 10304)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !744, file: !20, line: 1320, baseType: !458, size: 32, offset: 10432)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !744, file: !20, line: 1321, baseType: !445, size: 128, offset: 10496)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !738, file: !739, line: 73, baseType: !115, size: 32, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !738, file: !739, line: 74, baseType: !3845, size: 64, offset: 192)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !2031, line: 42, flags: DIFlagFwdDecl)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !692, file: !631, line: 141, baseType: !3849, size: 64, offset: 704)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!115, !3597, !933}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !692, file: !631, line: 142, baseType: !3853, size: 64, offset: 768)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!629, !629, !3856}
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !630, file: !631, line: 96, baseType: !743, size: 64, offset: 832)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !630, file: !631, line: 97, baseType: !304, size: 64, offset: 896)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !630, file: !631, line: 98, baseType: !280, size: 64, offset: 960)
!3861 = !DIDerivedType(tag: DW_TAG_member, scope: !630, file: !631, line: 100, baseType: !3862, size: 128, offset: 1024)
!3862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !630, file: !631, line: 100, size: 128, elements: !3863)
!3863 = !{!3864, !3865}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3862, file: !631, line: 101, baseType: !445, size: 128)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3862, file: !631, line: 102, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !630, file: !631, line: 104, baseType: !445, size: 128, offset: 1152)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !630, file: !631, line: 105, baseType: !445, size: 128, offset: 1280)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !630, file: !631, line: 113, baseType: !3870, size: 128, offset: 1408)
!3870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !630, file: !631, line: 109, size: 128, elements: !3871)
!3871 = !{!3872, !3873, !3874}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3870, file: !631, line: 110, baseType: !1097, size: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3870, file: !631, line: 111, baseType: !645, size: 128)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3870, file: !631, line: 112, baseType: !1071, size: 128, align: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !623, file: !20, line: 1968, baseType: !3876, size: 64, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!281, !629, !594, !3879}
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3881, line: 10, size: 128, elements: !3882)
!3881 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3882 = !{!3883, !3884}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3880, file: !3881, line: 11, baseType: !896, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3880, file: !3881, line: 12, baseType: !280, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !623, file: !20, line: 1969, baseType: !3886, size: 64, offset: 128)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!115, !3845, !594, !115}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !623, file: !20, line: 1970, baseType: !3890, size: 64, offset: 192)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!617, !594, !115, !933}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !623, file: !20, line: 1972, baseType: !3894, size: 64, offset: 256)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!115, !629, !517, !115}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !623, file: !20, line: 1974, baseType: !3898, size: 64, offset: 320)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!115, !3845, !594, !629, !557, !933}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !623, file: !20, line: 1976, baseType: !3902, size: 64, offset: 384)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!115, !629, !594, !629}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !623, file: !20, line: 1977, baseType: !3906, size: 64, offset: 448)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!115, !594, !629}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !623, file: !20, line: 1978, baseType: !3910, size: 64, offset: 512)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!115, !3845, !594, !629, !281}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !623, file: !20, line: 1980, baseType: !3914, size: 64, offset: 576)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!115, !3845, !594, !629, !557}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !623, file: !20, line: 1982, baseType: !3906, size: 64, offset: 640)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !623, file: !20, line: 1983, baseType: !3919, size: 64, offset: 704)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!115, !3845, !594, !629, !557, !748}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !623, file: !20, line: 1985, baseType: !3923, size: 64, offset: 768)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!115, !3845, !594, !629, !594, !629, !13}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !623, file: !20, line: 1987, baseType: !3927, size: 64, offset: 832)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!115, !3845, !629, !3930}
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !3932)
!3932 = !{!3933, !3934, !3935, !3945, !3954, !3955, !3960, !3961, !3962}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3931, file: !20, line: 227, baseType: !13, size: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3931, file: !20, line: 228, baseType: !557, size: 16, offset: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, scope: !3931, file: !20, line: 241, baseType: !3936, size: 32, offset: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3931, file: !20, line: 241, size: 32, elements: !3937)
!3937 = !{!3938, !3939}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3936, file: !20, line: 242, baseType: !600, size: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3936, file: !20, line: 243, baseType: !3940, size: 32)
!3940 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3941, line: 16, baseType: !3942)
!3941 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3942 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3941, line: 14, size: 32, elements: !3943)
!3943 = !{!3944}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3942, file: !3941, line: 15, baseType: !605, size: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, scope: !3931, file: !20, line: 245, baseType: !3946, size: 32, offset: 96)
!3946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3931, file: !20, line: 245, size: 32, elements: !3947)
!3947 = !{!3948, !3949}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3946, file: !20, line: 246, baseType: !609, size: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3946, file: !20, line: 247, baseType: !3950, size: 32)
!3950 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3941, line: 20, baseType: !3951)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3941, line: 18, size: 32, elements: !3952)
!3952 = !{!3953}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3951, file: !3941, line: 19, baseType: !613, size: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3931, file: !20, line: 249, baseType: !753, size: 64, offset: 128)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3931, file: !20, line: 250, baseType: !3956, size: 128, offset: 192)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !2064, line: 13, size: 128, elements: !3957)
!3957 = !{!3958, !3959}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3956, file: !2064, line: 14, baseType: !2063, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3956, file: !2064, line: 15, baseType: !551, size: 64, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3931, file: !20, line: 251, baseType: !3956, size: 128, offset: 320)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3931, file: !20, line: 252, baseType: !3956, size: 128, offset: 448)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3931, file: !20, line: 259, baseType: !1732, size: 64, offset: 576)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !623, file: !20, line: 1988, baseType: !3964, size: 64, offset: 896)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DISubroutineType(types: !3966)
!3966 = !{!115, !3845, !3597, !3967, !302, !13}
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3969, line: 22, size: 1280, elements: !3970)
!3969 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3970 = !{!3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3968, file: !3969, line: 23, baseType: !302, size: 32)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3968, file: !3969, line: 24, baseType: !557, size: 16, offset: 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3968, file: !3969, line: 25, baseType: !13, size: 32, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3968, file: !3969, line: 26, baseType: !2071, size: 32, offset: 96)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3968, file: !3969, line: 27, baseType: !665, size: 64, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3968, file: !3969, line: 28, baseType: !665, size: 64, offset: 192)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3968, file: !3969, line: 41, baseType: !665, size: 64, offset: 256)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3968, file: !3969, line: 42, baseType: !748, size: 32, offset: 320)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3968, file: !3969, line: 43, baseType: !748, size: 32, offset: 352)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3968, file: !3969, line: 44, baseType: !600, size: 32, offset: 384)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3968, file: !3969, line: 45, baseType: !609, size: 32, offset: 416)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3968, file: !3969, line: 46, baseType: !753, size: 64, offset: 448)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3968, file: !3969, line: 47, baseType: !3956, size: 128, offset: 512)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3968, file: !3969, line: 48, baseType: !3956, size: 128, offset: 640)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3968, file: !3969, line: 49, baseType: !3956, size: 128, offset: 768)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3968, file: !3969, line: 50, baseType: !3956, size: 128, offset: 896)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3968, file: !3969, line: 51, baseType: !665, size: 64, offset: 1024)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3968, file: !3969, line: 52, baseType: !665, size: 64, offset: 1088)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3968, file: !3969, line: 53, baseType: !302, size: 32, offset: 1152)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3968, file: !3969, line: 54, baseType: !302, size: 32, offset: 1184)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3968, file: !3969, line: 55, baseType: !665, size: 64, offset: 1216)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !623, file: !20, line: 1990, baseType: !3993, size: 64, offset: 960)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!547, !629, !517, !562}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !623, file: !20, line: 1991, baseType: !3997, size: 64, offset: 1024)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!115, !594, !4000, !665, !665}
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !623, file: !20, line: 1993, baseType: !4003, size: 64, offset: 1088)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!115, !594, !115}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !623, file: !20, line: 1994, baseType: !4007, size: 64, offset: 1152)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!115, !594, !629, !1732, !13, !557}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !623, file: !20, line: 1997, baseType: !4011, size: 64, offset: 1216)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!115, !3845, !594, !1732, !557}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !623, file: !20, line: 1999, baseType: !4015, size: 64, offset: 1280)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!617, !3845, !629, !115}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !623, file: !20, line: 2001, baseType: !4019, size: 64, offset: 1344)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!115, !3845, !629, !617, !115}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !623, file: !20, line: 2003, baseType: !4023, size: 64, offset: 1408)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!115, !3845, !629, !4026}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !623, file: !20, line: 2005, baseType: !4029, size: 64, offset: 1472)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!115, !629, !4026}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !623, file: !20, line: 2006, baseType: !4033, size: 64, offset: 1536)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!4036, !594}
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !4038)
!4038 = !{!4039, !4040}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4037, file: !20, line: 3193, baseType: !1408, size: 128)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4037, file: !20, line: 3194, baseType: !302, size: 32, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !595, file: !20, line: 655, baseType: !743, size: 64, offset: 448)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !595, file: !20, line: 656, baseType: !590, size: 64, offset: 512)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !595, file: !20, line: 659, baseType: !280, size: 64, offset: 576)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !595, file: !20, line: 663, baseType: !304, size: 64, offset: 640)
!4045 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !20, line: 671, baseType: !4046, size: 32, offset: 704)
!4046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !595, file: !20, line: 671, size: 32, elements: !4047)
!4047 = !{!4048, !4050}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4046, file: !20, line: 672, baseType: !4049, size: 32)
!4049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4046, file: !20, line: 673, baseType: !13, size: 32)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !595, file: !20, line: 675, baseType: !748, size: 32, offset: 736)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !595, file: !20, line: 676, baseType: !753, size: 64, offset: 768)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !595, file: !20, line: 677, baseType: !3956, size: 128, offset: 832)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !595, file: !20, line: 678, baseType: !3956, size: 128, offset: 960)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !595, file: !20, line: 679, baseType: !3956, size: 128, offset: 1088)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !595, file: !20, line: 680, baseType: !458, size: 32, offset: 1216)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !595, file: !20, line: 681, baseType: !298, size: 16, offset: 1248)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !595, file: !20, line: 682, baseType: !283, size: 8, offset: 1264)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !595, file: !20, line: 683, baseType: !283, size: 8, offset: 1272)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !595, file: !20, line: 684, baseType: !3670, size: 64, offset: 1280)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !595, file: !20, line: 691, baseType: !304, size: 64, offset: 1344)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !595, file: !20, line: 692, baseType: !1760, size: 320, offset: 1408)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !595, file: !20, line: 694, baseType: !304, size: 64, offset: 1728)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !595, file: !20, line: 695, baseType: !304, size: 64, offset: 1792)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !595, file: !20, line: 697, baseType: !1097, size: 128, offset: 1856)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !595, file: !20, line: 698, baseType: !445, size: 128, offset: 1984)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !595, file: !20, line: 707, baseType: !445, size: 128, offset: 2112)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !595, file: !20, line: 708, baseType: !445, size: 128, offset: 2240)
!4069 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !20, line: 709, baseType: !4070, size: 128, offset: 2368)
!4070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !595, file: !20, line: 709, size: 128, elements: !4071)
!4071 = !{!4072, !4073}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4070, file: !20, line: 710, baseType: !1221, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4070, file: !20, line: 711, baseType: !1071, size: 128, align: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !595, file: !20, line: 713, baseType: !859, size: 64, offset: 2496)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !595, file: !20, line: 714, baseType: !859, size: 64, offset: 2560)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !595, file: !20, line: 715, baseType: !431, size: 32, offset: 2624)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !595, file: !20, line: 716, baseType: !431, size: 32, offset: 2656)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !595, file: !20, line: 717, baseType: !431, size: 32, offset: 2688)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !595, file: !20, line: 719, baseType: !431, size: 32, offset: 2720)
!4080 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !20, line: 721, baseType: !4081, size: 64, offset: 2752)
!4081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !595, file: !20, line: 721, size: 64, elements: !4082)
!4082 = !{!4083, !4084}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4081, file: !20, line: 722, baseType: !3305, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4081, file: !20, line: 723, baseType: !1244, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !595, file: !20, line: 725, baseType: !4086, size: 64, offset: 2816)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !595, file: !20, line: 726, baseType: !591, size: 1536, align: 64, offset: 2880)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !595, file: !20, line: 727, baseType: !445, size: 128, offset: 4416)
!4090 = !DIDerivedType(tag: DW_TAG_member, scope: !595, file: !20, line: 728, baseType: !4091, size: 64, offset: 4544)
!4091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !595, file: !20, line: 728, size: 64, elements: !4092)
!4092 = !{!4093, !4094, !4097, !4098}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4091, file: !20, line: 729, baseType: !2637, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4091, file: !20, line: 730, baseType: !4095, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !20, line: 730, flags: DIFlagFwdDecl)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4091, file: !20, line: 731, baseType: !517, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4091, file: !20, line: 732, baseType: !13, size: 32)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !595, file: !20, line: 735, baseType: !303, size: 32, offset: 4608)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !595, file: !20, line: 738, baseType: !303, size: 32, offset: 4640)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !595, file: !20, line: 739, baseType: !3782, size: 64, offset: 4672)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !595, file: !20, line: 750, baseType: !280, size: 64, offset: 4736)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !591, file: !20, line: 474, baseType: !1408, size: 128, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !591, file: !20, line: 475, baseType: !1760, size: 320, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !591, file: !20, line: 476, baseType: !300, size: 32, offset: 512)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !591, file: !20, line: 477, baseType: !431, size: 32, offset: 544)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !591, file: !20, line: 482, baseType: !1588, size: 128, offset: 576)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !591, file: !20, line: 483, baseType: !304, size: 64, offset: 704)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !591, file: !20, line: 484, baseType: !304, size: 64, offset: 768)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !591, file: !20, line: 485, baseType: !4111, size: 64, offset: 832)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4113)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !4114)
!4114 = !{!4115, !4119, !4189, !4193, !4197, !4203, !4208, !4212, !4217, !4221, !4225, !4229, !4230, !4234, !4238, !4242, !4247, !4251, !4258, !4259}
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4113, file: !20, line: 405, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!115, !2643, !1256}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4113, file: !20, line: 406, baseType: !4120, size: 64, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!115, !1732, !4123}
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !44, line: 293, size: 1536, elements: !4125)
!4125 = !{!4126, !4156, !4170}
!4126 = !DIDerivedType(tag: DW_TAG_member, scope: !4124, file: !44, line: 295, baseType: !4127, size: 512)
!4127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4124, file: !44, line: 295, size: 512, elements: !4128)
!4128 = !{!4129, !4155}
!4129 = !DIDerivedType(tag: DW_TAG_member, scope: !4127, file: !44, line: 296, baseType: !4130, size: 448)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4127, file: !44, line: 296, size: 448, elements: !4131)
!4131 = !{!4132, !4133, !4142, !4143, !4144, !4153, !4154}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4130, file: !44, line: 298, baseType: !304, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, scope: !4130, file: !44, line: 299, baseType: !4134, size: 128, offset: 64)
!4134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4130, file: !44, line: 299, size: 128, elements: !4135)
!4135 = !{!4136, !4137}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4134, file: !44, line: 300, baseType: !445, size: 128)
!4137 = !DIDerivedType(tag: DW_TAG_member, scope: !4134, file: !44, line: 302, baseType: !4138, size: 128)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4134, file: !44, line: 302, size: 128, elements: !4139)
!4139 = !{!4140, !4141}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4138, file: !44, line: 303, baseType: !280, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4138, file: !44, line: 305, baseType: !13, size: 32, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4130, file: !44, line: 310, baseType: !590, size: 64, offset: 192)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4130, file: !44, line: 311, baseType: !304, size: 64, offset: 256)
!4144 = !DIDerivedType(tag: DW_TAG_member, scope: !4130, file: !44, line: 312, baseType: !4145, size: 64, offset: 320)
!4145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4130, file: !44, line: 312, size: 64, elements: !4146)
!4146 = !{!4147, !4148}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4145, file: !44, line: 313, baseType: !280, size: 64)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4145, file: !44, line: 314, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !44, line: 257, baseType: !4150)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 255, size: 64, elements: !4151)
!4151 = !{!4152}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4150, file: !44, line: 256, baseType: !304, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4130, file: !44, line: 316, baseType: !431, size: 32, offset: 384)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4130, file: !44, line: 317, baseType: !431, size: 32, offset: 416)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4127, file: !44, line: 323, baseType: !2644, size: 512, align: 128)
!4156 = !DIDerivedType(tag: DW_TAG_member, scope: !4124, file: !44, line: 325, baseType: !4157, size: 512, offset: 512)
!4157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4124, file: !44, line: 325, size: 512, elements: !4158)
!4158 = !{!4159, !4169}
!4159 = !DIDerivedType(tag: DW_TAG_member, scope: !4157, file: !44, line: 326, baseType: !4160, size: 320)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4157, file: !44, line: 326, size: 320, elements: !4161)
!4161 = !{!4162, !4163, !4164, !4165, !4166, !4167, !4168}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4160, file: !44, line: 327, baseType: !304, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4160, file: !44, line: 328, baseType: !304, size: 64, offset: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4160, file: !44, line: 329, baseType: !304, size: 64, offset: 128)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4160, file: !44, line: 331, baseType: !431, size: 32, offset: 192)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4160, file: !44, line: 332, baseType: !431, size: 32, offset: 224)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4160, file: !44, line: 333, baseType: !431, size: 32, offset: 256)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4160, file: !44, line: 335, baseType: !13, size: 32, offset: 288)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4157, file: !44, line: 339, baseType: !2644, size: 512, align: 128)
!4170 = !DIDerivedType(tag: DW_TAG_member, scope: !4124, file: !44, line: 341, baseType: !4171, size: 512, offset: 1024)
!4171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4124, file: !44, line: 341, size: 512, elements: !4172)
!4172 = !{!4173, !4182, !4188}
!4173 = !DIDerivedType(tag: DW_TAG_member, scope: !4171, file: !44, line: 342, baseType: !4174, size: 384)
!4174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4171, file: !44, line: 342, size: 384, elements: !4175)
!4175 = !{!4176, !4177, !4178, !4179, !4180, !4181}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4174, file: !44, line: 343, baseType: !304, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4174, file: !44, line: 344, baseType: !304, size: 64, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4174, file: !44, line: 346, baseType: !280, size: 64, offset: 128)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4174, file: !44, line: 347, baseType: !280, size: 64, offset: 192)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4174, file: !44, line: 348, baseType: !280, size: 64, offset: 256)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4174, file: !44, line: 349, baseType: !280, size: 64, offset: 320)
!4182 = !DIDerivedType(tag: DW_TAG_member, scope: !4171, file: !44, line: 352, baseType: !4183, size: 256)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4171, file: !44, line: 352, size: 256, elements: !4184)
!4184 = !{!4185, !4186, !4187}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4183, file: !44, line: 353, baseType: !304, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4183, file: !44, line: 354, baseType: !304, size: 64, offset: 64)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4183, file: !44, line: 356, baseType: !445, size: 128, offset: 128)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4171, file: !44, line: 359, baseType: !2644, size: 512, align: 128)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4113, file: !20, line: 409, baseType: !4190, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!115, !590, !1256}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4113, file: !20, line: 412, baseType: !4194, size: 64, offset: 192)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!933, !590, !4123}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4113, file: !20, line: 414, baseType: !4198, size: 64, offset: 256)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DISubroutineType(types: !4200)
!4200 = !{null, !4201}
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4113, file: !20, line: 416, baseType: !4204, size: 64, offset: 320)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!115, !1732, !590, !753, !13, !4207, !3434}
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4113, file: !20, line: 419, baseType: !4209, size: 64, offset: 384)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!115, !1732, !590, !753, !13, !13, !2643, !280}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4113, file: !20, line: 424, baseType: !4213, size: 64, offset: 448)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!4216, !590, !4216}
!4216 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !301, line: 131, baseType: !665)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4113, file: !20, line: 425, baseType: !4218, size: 64, offset: 512)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{null, !4123, !562, !562}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4113, file: !20, line: 426, baseType: !4222, size: 64, offset: 576)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!933, !4123, !300}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4113, file: !20, line: 427, baseType: !4226, size: 64, offset: 640)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{null, !4123}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4113, file: !20, line: 428, baseType: !3323, size: 64, offset: 704)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4113, file: !20, line: 433, baseType: !4231, size: 64, offset: 768)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!115, !590, !4123, !4123, !80}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4113, file: !20, line: 435, baseType: !4235, size: 64, offset: 832)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!115, !4123}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4113, file: !20, line: 436, baseType: !4239, size: 64, offset: 896)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!933, !4123, !562, !562}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4113, file: !20, line: 438, baseType: !4243, size: 64, offset: 960)
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{null, !4123, !4246, !4246}
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4113, file: !20, line: 439, baseType: !4248, size: 64, offset: 1024)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!115, !590, !2643}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4113, file: !20, line: 442, baseType: !4252, size: 64, offset: 1088)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!115, !4255, !1732, !4257}
!4255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4256, size: 64)
!4256 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4113, file: !20, line: 444, baseType: !3426, size: 64, offset: 1152)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4113, file: !20, line: 445, baseType: !4260, size: 64, offset: 1216)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!115, !3326, !3348}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !20, line: 486, baseType: !304, size: 64, offset: 896)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !591, file: !20, line: 487, baseType: !1760, size: 320, offset: 960)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !591, file: !20, line: 488, baseType: !3469, size: 32, offset: 1280)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !591, file: !20, line: 489, baseType: !458, size: 32, offset: 1312)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !591, file: !20, line: 490, baseType: !445, size: 128, offset: 1344)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !591, file: !20, line: 491, baseType: !280, size: 64, offset: 1472)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !581, file: !541, line: 180, baseType: !4270, size: 64, offset: 320)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = !DISubroutineType(types: !4272)
!4272 = !{!547, !1732, !451, !580, !517, !753, !562}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !581, file: !541, line: 182, baseType: !4270, size: 64, offset: 384)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !581, file: !541, line: 184, baseType: !4275, size: 64, offset: 448)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4276, size: 64)
!4276 = !DISubroutineType(types: !4277)
!4277 = !{!115, !1732, !451, !580, !2753}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !569, file: !541, line: 90, baseType: !4279, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !569, file: !541, line: 91, baseType: !4281, size: 64, offset: 256)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !531, file: !441, line: 120, baseType: !4283, size: 64, offset: 192)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!4286, !500}
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4288)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !88, line: 39, size: 384, elements: !4289)
!4289 = !{!4290, !4291, !4295, !4299, !4305, !4309}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4288, file: !88, line: 40, baseType: !87, size: 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4288, file: !88, line: 41, baseType: !4292, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!933}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4288, file: !88, line: 42, baseType: !4296, size: 64, offset: 128)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!280}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4288, file: !88, line: 43, baseType: !4300, size: 64, offset: 192)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!1837, !4303}
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !88, line: 19, flags: DIFlagFwdDecl)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4288, file: !88, line: 44, baseType: !4306, size: 64, offset: 256)
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!1837}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4288, file: !88, line: 45, baseType: !896, size: 64, offset: 320)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !531, file: !441, line: 121, baseType: !4311, size: 64, offset: 256)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!1837, !500}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !531, file: !441, line: 122, baseType: !4315, size: 64, offset: 320)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{null, !500, !4318, !4319}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !440, file: !441, line: 70, baseType: !4321, size: 64, offset: 384)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !768, line: 190, size: 1152, elements: !4323)
!4323 = !{!4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4403, !4404, !4405, !4406, !4407, !4410}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4322, file: !768, line: 191, baseType: !431, size: 32)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4322, file: !768, line: 192, baseType: !431, size: 32, offset: 32)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4322, file: !768, line: 202, baseType: !4321, size: 64, offset: 64)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4322, file: !768, line: 203, baseType: !281, size: 64, offset: 128)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4322, file: !768, line: 205, baseType: !965, size: 192, align: 64, offset: 192)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4322, file: !768, line: 207, baseType: !1837, size: 64, offset: 384)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4322, file: !768, line: 208, baseType: !13, size: 32, offset: 448)
!4331 = !DIDerivedType(tag: DW_TAG_member, scope: !4322, file: !768, line: 209, baseType: !4332, size: 256, offset: 512)
!4332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4322, file: !768, line: 209, size: 256, elements: !4333)
!4333 = !{!4334, !4343, !4347}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4332, file: !768, line: 210, baseType: !4335, size: 256)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !768, line: 153, size: 256, elements: !4336)
!4336 = !{!4337, !4338, !4339, !4342}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4335, file: !768, line: 154, baseType: !304, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4335, file: !768, line: 156, baseType: !1591, size: 64, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4335, file: !768, line: 162, baseType: !4340, size: 64, offset: 128)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !768, line: 162, flags: DIFlagFwdDecl)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4335, file: !768, line: 167, baseType: !304, size: 64, offset: 192)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4332, file: !768, line: 211, baseType: !4344, size: 64)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !768, line: 170, size: 64, elements: !4345)
!4345 = !{!4346}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4344, file: !768, line: 171, baseType: !4321, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4332, file: !768, line: 212, baseType: !4348, size: 256)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !768, line: 174, size: 256, elements: !4349)
!4349 = !{!4350, !4398, !4401, !4402}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4348, file: !768, line: 175, baseType: !4351, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4353)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !768, line: 271, size: 768, elements: !4354)
!4354 = !{!4355, !4375, !4379, !4380, !4381, !4382, !4383, !4387, !4388, !4389, !4390, !4394}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4353, file: !768, line: 276, baseType: !4356, size: 64)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!115, !4359}
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !768, line: 251, size: 1216, elements: !4361)
!4361 = !{!4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4360, file: !768, line: 253, baseType: !4321, size: 64)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4360, file: !768, line: 254, baseType: !1732, size: 64, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4360, file: !768, line: 255, baseType: !1293, size: 64, offset: 128)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4360, file: !768, line: 256, baseType: !280, size: 64, offset: 192)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4360, file: !768, line: 259, baseType: !853, size: 256, offset: 256)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4360, file: !768, line: 260, baseType: !853, size: 256, offset: 512)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4360, file: !768, line: 261, baseType: !115, size: 32, offset: 768)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4360, file: !768, line: 262, baseType: !445, size: 128, offset: 832)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4360, file: !768, line: 263, baseType: !517, size: 64, offset: 960)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4360, file: !768, line: 265, baseType: !562, size: 64, offset: 1024)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4360, file: !768, line: 266, baseType: !933, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4360, file: !768, line: 267, baseType: !933, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4360, file: !768, line: 268, baseType: !2796, size: 64, offset: 1152)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4353, file: !768, line: 277, baseType: !4376, size: 64, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{null, !4359}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4353, file: !768, line: 290, baseType: !1324, size: 64, offset: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4353, file: !768, line: 292, baseType: !1311, size: 64, offset: 192)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4353, file: !768, line: 293, baseType: !1320, size: 64, offset: 256)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4353, file: !768, line: 294, baseType: !1316, size: 64, offset: 320)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4353, file: !768, line: 296, baseType: !4384, size: 64, offset: 384)
!4384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4385 = !DISubroutineType(types: !4386)
!4386 = !{!547, !4359, !517, !562, !753}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4353, file: !768, line: 306, baseType: !562, size: 64, offset: 448)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4353, file: !768, line: 313, baseType: !933, size: 8, offset: 512)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4353, file: !768, line: 314, baseType: !4384, size: 64, offset: 576)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4353, file: !768, line: 317, baseType: !4391, size: 64, offset: 640)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!3374, !4359, !3375}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4353, file: !768, line: 320, baseType: !4395, size: 64, offset: 704)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!115, !4359, !2753}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4348, file: !768, line: 176, baseType: !4399, size: 64, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !768, line: 35, flags: DIFlagFwdDecl)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4348, file: !768, line: 177, baseType: !753, size: 64, offset: 128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4348, file: !768, line: 178, baseType: !4321, size: 64, offset: 192)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4322, file: !768, line: 215, baseType: !280, size: 64, offset: 768)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4322, file: !768, line: 221, baseType: !665, size: 64, offset: 832)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4322, file: !768, line: 223, baseType: !298, size: 16, offset: 896)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4322, file: !768, line: 224, baseType: !557, size: 16, offset: 912)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4322, file: !768, line: 225, baseType: !4408, size: 64, offset: 960)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !768, line: 36, flags: DIFlagFwdDecl)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4322, file: !768, line: 227, baseType: !1071, size: 128, align: 64, offset: 1024)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !440, file: !441, line: 71, baseType: !422, size: 32, offset: 448)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !440, file: !441, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !440, file: !441, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !440, file: !441, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !440, file: !441, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !440, file: !441, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !437, file: !100, line: 707, baseType: !436, size: 64, offset: 512)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !437, file: !100, line: 709, baseType: !4419, size: 64, offset: 576)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !100, line: 37, flags: DIFlagFwdDecl)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !437, file: !100, line: 711, baseType: !281, size: 64, offset: 640)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !437, file: !100, line: 712, baseType: !4423, size: 64, offset: 704)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4425)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !100, line: 89, size: 384, elements: !4426)
!4426 = !{!4427, !4428, !4429, !4435, !4440, !4444}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4425, file: !100, line: 90, baseType: !281, size: 64)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4425, file: !100, line: 91, baseType: !566, size: 64, offset: 64)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4425, file: !100, line: 92, baseType: !4430, size: 64, offset: 128)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{!115, !4433, !512}
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4425, file: !100, line: 93, baseType: !4436, size: 64, offset: 192)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!517, !4433, !4439, !4318, !4319}
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4425, file: !100, line: 95, baseType: !4441, size: 64, offset: 256)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{null, !436}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4425, file: !100, line: 97, baseType: !4445, size: 64, offset: 320)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4447)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !107, line: 286, size: 1472, elements: !4448)
!4448 = !{!4449, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4447, file: !107, line: 287, baseType: !4450, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!115, !436}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4447, file: !107, line: 288, baseType: !4441, size: 64, offset: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4447, file: !107, line: 289, baseType: !4450, size: 64, offset: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4447, file: !107, line: 290, baseType: !4450, size: 64, offset: 192)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4447, file: !107, line: 291, baseType: !4450, size: 64, offset: 256)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4447, file: !107, line: 292, baseType: !4450, size: 64, offset: 320)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4447, file: !107, line: 293, baseType: !4450, size: 64, offset: 384)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4447, file: !107, line: 294, baseType: !4450, size: 64, offset: 448)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4447, file: !107, line: 295, baseType: !4450, size: 64, offset: 512)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4447, file: !107, line: 296, baseType: !4450, size: 64, offset: 576)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4447, file: !107, line: 297, baseType: !4450, size: 64, offset: 640)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4447, file: !107, line: 298, baseType: !4450, size: 64, offset: 704)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4447, file: !107, line: 299, baseType: !4450, size: 64, offset: 768)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4447, file: !107, line: 300, baseType: !4450, size: 64, offset: 832)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4447, file: !107, line: 301, baseType: !4450, size: 64, offset: 896)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4447, file: !107, line: 302, baseType: !4450, size: 64, offset: 960)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4447, file: !107, line: 303, baseType: !4450, size: 64, offset: 1024)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4447, file: !107, line: 304, baseType: !4450, size: 64, offset: 1088)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4447, file: !107, line: 305, baseType: !4450, size: 64, offset: 1152)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4447, file: !107, line: 306, baseType: !4450, size: 64, offset: 1216)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4447, file: !107, line: 307, baseType: !4450, size: 64, offset: 1280)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4447, file: !107, line: 308, baseType: !4450, size: 64, offset: 1344)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4447, file: !107, line: 309, baseType: !4450, size: 64, offset: 1408)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !437, file: !100, line: 714, baseType: !4476, size: 64, offset: 768)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4478)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4479, line: 80, size: 1344, elements: !4480)
!4479 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4480 = !{!4481, !4482, !4483, !4484, !4485, !4486, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4544}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4478, file: !4479, line: 81, baseType: !281, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4478, file: !4479, line: 82, baseType: !281, size: 64, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4478, file: !4479, line: 83, baseType: !566, size: 64, offset: 128)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4478, file: !4479, line: 84, baseType: !566, size: 64, offset: 192)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4478, file: !4479, line: 85, baseType: !566, size: 64, offset: 256)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4478, file: !4479, line: 87, baseType: !4487, size: 64, offset: 320)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!115, !436, !4490}
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !94, line: 96, size: 1152, elements: !4492)
!4492 = !{!4493, !4494, !4495, !4496, !4497, !4498, !4499, !4503, !4507, !4508, !4509, !4510, !4511, !4519, !4520, !4521, !4522, !4523, !4524}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4491, file: !94, line: 97, baseType: !281, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4491, file: !94, line: 98, baseType: !4476, size: 64, offset: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4491, file: !94, line: 100, baseType: !782, size: 64, offset: 128)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4491, file: !94, line: 101, baseType: !281, size: 64, offset: 192)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4491, file: !94, line: 103, baseType: !933, size: 8, offset: 256)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4491, file: !94, line: 104, baseType: !93, size: 32, offset: 288)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4491, file: !94, line: 106, baseType: !4500, size: 64, offset: 320)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4502)
!4502 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !94, line: 106, flags: DIFlagFwdDecl)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4491, file: !94, line: 107, baseType: !4504, size: 64, offset: 384)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4506)
!4506 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !94, line: 107, flags: DIFlagFwdDecl)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4491, file: !94, line: 109, baseType: !4450, size: 64, offset: 448)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4491, file: !94, line: 110, baseType: !4441, size: 64, offset: 512)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4491, file: !94, line: 111, baseType: !4450, size: 64, offset: 576)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4491, file: !94, line: 112, baseType: !4441, size: 64, offset: 640)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4491, file: !94, line: 113, baseType: !4512, size: 64, offset: 704)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!115, !436, !4515}
!4515 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !107, line: 60, baseType: !4516)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !107, line: 58, size: 32, elements: !4517)
!4517 = !{!4518}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4516, file: !107, line: 59, baseType: !115, size: 32)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4491, file: !94, line: 114, baseType: !4450, size: 64, offset: 768)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4491, file: !94, line: 115, baseType: !566, size: 64, offset: 832)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4491, file: !94, line: 116, baseType: !566, size: 64, offset: 896)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4491, file: !94, line: 118, baseType: !4445, size: 64, offset: 960)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4491, file: !94, line: 119, baseType: !4441, size: 64, offset: 1024)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4491, file: !94, line: 121, baseType: !4525, size: 64, offset: 1088)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !94, line: 121, flags: DIFlagFwdDecl)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4478, file: !4479, line: 88, baseType: !4430, size: 64, offset: 384)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4478, file: !4479, line: 89, baseType: !4450, size: 64, offset: 448)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4478, file: !4479, line: 90, baseType: !4441, size: 64, offset: 512)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4478, file: !4479, line: 91, baseType: !4441, size: 64, offset: 576)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4478, file: !4479, line: 92, baseType: !4441, size: 64, offset: 640)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4478, file: !4479, line: 94, baseType: !4450, size: 64, offset: 704)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4478, file: !4479, line: 95, baseType: !4450, size: 64, offset: 768)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4478, file: !4479, line: 97, baseType: !4512, size: 64, offset: 832)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4478, file: !4479, line: 98, baseType: !4450, size: 64, offset: 896)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4478, file: !4479, line: 100, baseType: !4450, size: 64, offset: 960)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4478, file: !4479, line: 102, baseType: !4450, size: 64, offset: 1024)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4478, file: !4479, line: 103, baseType: !4441, size: 64, offset: 1088)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4478, file: !4479, line: 105, baseType: !4445, size: 64, offset: 1152)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4478, file: !4479, line: 107, baseType: !4541, size: 64, offset: 1216)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4543)
!4543 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4479, line: 107, flags: DIFlagFwdDecl)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4478, file: !4479, line: 109, baseType: !933, size: 8, offset: 1280)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !437, file: !100, line: 715, baseType: !4490, size: 64, offset: 832)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !437, file: !100, line: 717, baseType: !280, size: 64, offset: 896)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !437, file: !100, line: 719, baseType: !280, size: 64, offset: 960)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !437, file: !100, line: 721, baseType: !853, size: 256, offset: 1024)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !437, file: !100, line: 725, baseType: !4550, size: 448, offset: 1280)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !100, line: 517, size: 448, elements: !4551)
!4551 = !{!4552, !4553, !4554, !4555}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4550, file: !100, line: 518, baseType: !445, size: 128)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4550, file: !100, line: 519, baseType: !445, size: 128, offset: 128)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4550, file: !100, line: 520, baseType: !445, size: 128, offset: 256)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4550, file: !100, line: 521, baseType: !99, size: 32, offset: 384)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !437, file: !100, line: 726, baseType: !4557, size: 2496, offset: 1728)
!4557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !107, line: 663, size: 2496, elements: !4558)
!4558 = !{!4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4641, !4645}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4557, file: !107, line: 664, baseType: !4515, size: 32)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4557, file: !107, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4557, file: !107, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4557, file: !107, line: 667, baseType: !933, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4557, file: !107, line: 668, baseType: !933, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4557, file: !107, line: 669, baseType: !933, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4557, file: !107, line: 670, baseType: !933, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4557, file: !107, line: 671, baseType: !933, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4557, file: !107, line: 672, baseType: !933, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4557, file: !107, line: 673, baseType: !933, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4557, file: !107, line: 674, baseType: !933, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4557, file: !107, line: 675, baseType: !302, size: 32, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4557, file: !107, line: 676, baseType: !458, size: 32, offset: 96)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4557, file: !107, line: 678, baseType: !445, size: 128, offset: 128)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4557, file: !107, line: 679, baseType: !802, size: 256, offset: 256)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4557, file: !107, line: 680, baseType: !4575, size: 64, offset: 512)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4577, line: 43, size: 1536, elements: !4578)
!4577 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4578 = !{!4579, !4580, !4581, !4582, !4583, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600}
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4576, file: !4577, line: 44, baseType: !281, size: 64)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4576, file: !4577, line: 45, baseType: !115, size: 32, offset: 64)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4576, file: !4577, line: 46, baseType: !445, size: 128, offset: 128)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4576, file: !4577, line: 47, baseType: !458, size: 32, offset: 256)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4576, file: !4577, line: 48, baseType: !4584, size: 64, offset: 320)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !107, line: 629, flags: DIFlagFwdDecl)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4576, file: !4577, line: 49, baseType: !1093, size: 320, offset: 384)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4576, file: !4577, line: 50, baseType: !304, size: 64, offset: 704)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4576, file: !4577, line: 51, baseType: !1539, size: 64, offset: 768)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4576, file: !4577, line: 52, baseType: !1539, size: 64, offset: 832)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4576, file: !4577, line: 53, baseType: !1539, size: 64, offset: 896)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4576, file: !4577, line: 54, baseType: !1539, size: 64, offset: 960)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4576, file: !4577, line: 55, baseType: !1539, size: 64, offset: 1024)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4576, file: !4577, line: 56, baseType: !304, size: 64, offset: 1088)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4576, file: !4577, line: 57, baseType: !304, size: 64, offset: 1152)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4576, file: !4577, line: 58, baseType: !304, size: 64, offset: 1216)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4576, file: !4577, line: 59, baseType: !304, size: 64, offset: 1280)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4576, file: !4577, line: 60, baseType: !304, size: 64, offset: 1344)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4576, file: !4577, line: 61, baseType: !436, size: 64, offset: 1408)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4576, file: !4577, line: 62, baseType: !933, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4576, file: !4577, line: 63, baseType: !933, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4557, file: !107, line: 681, baseType: !933, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4557, file: !107, line: 682, baseType: !933, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4557, file: !107, line: 683, baseType: !933, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4557, file: !107, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4557, file: !107, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4557, file: !107, line: 690, baseType: !1531, size: 512, offset: 640)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4557, file: !107, line: 691, baseType: !665, size: 64, offset: 1152)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4557, file: !107, line: 692, baseType: !1111, size: 256, offset: 1216)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4557, file: !107, line: 693, baseType: !1386, size: 192, offset: 1472)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4557, file: !107, line: 694, baseType: !4584, size: 64, offset: 1664)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4557, file: !107, line: 695, baseType: !431, size: 32, offset: 1728)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4557, file: !107, line: 696, baseType: !431, size: 32, offset: 1760)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4557, file: !107, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4557, file: !107, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4557, file: !107, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4557, file: !107, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4557, file: !107, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4557, file: !107, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4557, file: !107, line: 703, baseType: !933, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4557, file: !107, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4557, file: !107, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4557, file: !107, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4557, file: !107, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4557, file: !107, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4557, file: !107, line: 709, baseType: !13, size: 32, offset: 1824)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4557, file: !107, line: 710, baseType: !106, size: 32, offset: 1856)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4557, file: !107, line: 711, baseType: !114, size: 32, offset: 1888)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4557, file: !107, line: 712, baseType: !114, size: 32, offset: 1920)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4557, file: !107, line: 713, baseType: !115, size: 32, offset: 1952)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4557, file: !107, line: 714, baseType: !115, size: 32, offset: 1984)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4557, file: !107, line: 715, baseType: !665, size: 64, offset: 2048)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4557, file: !107, line: 716, baseType: !665, size: 64, offset: 2112)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4557, file: !107, line: 717, baseType: !665, size: 64, offset: 2176)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4557, file: !107, line: 718, baseType: !665, size: 64, offset: 2240)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4557, file: !107, line: 720, baseType: !4636, size: 64, offset: 2304)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !107, line: 632, size: 64, elements: !4638)
!4638 = !{!4639, !4640}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4637, file: !107, line: 633, baseType: !458, size: 32)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4637, file: !107, line: 634, baseType: !13, size: 32, offset: 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4557, file: !107, line: 721, baseType: !4642, size: 64, offset: 2368)
!4642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4643, size: 64)
!4643 = !DISubroutineType(types: !4644)
!4644 = !{null, !436, !849}
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4557, file: !107, line: 722, baseType: !4646, size: 64, offset: 2432)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !107, line: 722, flags: DIFlagFwdDecl)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !437, file: !100, line: 727, baseType: !4649, size: 64, offset: 4224)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !107, line: 742, size: 1792, elements: !4651)
!4651 = !{!4652, !4653, !4654, !4658, !4659, !4660}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4650, file: !107, line: 743, baseType: !4447, size: 1472)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4650, file: !107, line: 744, baseType: !4450, size: 64, offset: 1472)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4650, file: !107, line: 745, baseType: !4655, size: 64, offset: 1536)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{null, !436, !933}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4650, file: !107, line: 746, baseType: !4450, size: 64, offset: 1600)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4650, file: !107, line: 747, baseType: !4441, size: 64, offset: 1664)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4650, file: !107, line: 748, baseType: !4441, size: 64, offset: 1728)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !437, file: !100, line: 736, baseType: !4662, size: 128, offset: 4288)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !100, line: 529, size: 128, elements: !4663)
!4663 = !{!4664, !4668}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4662, file: !100, line: 531, baseType: !4665, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4666, size: 64)
!4666 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4667, line: 13, flags: DIFlagFwdDecl)
!4667 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4662, file: !100, line: 532, baseType: !4669, size: 64, offset: 64)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !100, line: 49, flags: DIFlagFwdDecl)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !437, file: !100, line: 738, baseType: !4672, size: 64, offset: 4416)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4674)
!4674 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !100, line: 738, flags: DIFlagFwdDecl)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !437, file: !100, line: 740, baseType: !4676, size: 64, offset: 4480)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !437, file: !100, line: 741, baseType: !665, size: 64, offset: 4544)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !437, file: !100, line: 746, baseType: !665, size: 64, offset: 4608)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !437, file: !100, line: 747, baseType: !4680, size: 64, offset: 4672)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4682)
!4682 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !100, line: 747, flags: DIFlagFwdDecl)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !437, file: !100, line: 749, baseType: !4684, size: 64, offset: 4736)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !100, line: 428, size: 128, elements: !4686)
!4686 = !{!4687, !4688, !4689}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4685, file: !100, line: 433, baseType: !13, size: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4685, file: !100, line: 434, baseType: !13, size: 32, offset: 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4685, file: !100, line: 435, baseType: !304, size: 64, offset: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !437, file: !100, line: 751, baseType: !445, size: 128, offset: 4800)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !437, file: !100, line: 762, baseType: !4692, size: 64, offset: 4928)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !100, line: 762, flags: DIFlagFwdDecl)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !437, file: !100, line: 770, baseType: !4695, offset: 4992)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4696, line: 5, elements: !1140)
!4696 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !437, file: !100, line: 772, baseType: !4698, size: 64, offset: 4992)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4700, line: 18, flags: DIFlagFwdDecl)
!4700 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !437, file: !100, line: 773, baseType: !4702, size: 64, offset: 5056)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4479, line: 22, flags: DIFlagFwdDecl)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !437, file: !100, line: 776, baseType: !115, size: 32, offset: 5120)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !437, file: !100, line: 778, baseType: !748, size: 32, offset: 5152)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !437, file: !100, line: 779, baseType: !302, size: 32, offset: 5184)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !437, file: !100, line: 781, baseType: !458, size: 32, offset: 5216)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !437, file: !100, line: 782, baseType: !445, size: 128, offset: 5248)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !437, file: !100, line: 784, baseType: !4710, size: 64, offset: 5376)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4712)
!4712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4713, line: 52, size: 768, elements: !4714)
!4713 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4714 = !{!4715, !4716, !4717, !4718, !4719, !4723, !4727, !4728, !4729, !4730, !4734, !4738}
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4712, file: !4713, line: 53, baseType: !281, size: 64)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4712, file: !4713, line: 55, baseType: !566, size: 64, offset: 64)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4712, file: !4713, line: 56, baseType: !566, size: 64, offset: 128)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4712, file: !4713, line: 58, baseType: !4430, size: 64, offset: 192)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4712, file: !4713, line: 59, baseType: !4720, size: 64, offset: 256)
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4721, size: 64)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!517, !4433, !4439}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4712, file: !4713, line: 61, baseType: !4724, size: 64, offset: 320)
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{null, !4710}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4712, file: !4713, line: 62, baseType: !4441, size: 64, offset: 384)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4712, file: !4713, line: 64, baseType: !4450, size: 64, offset: 448)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4712, file: !4713, line: 66, baseType: !4286, size: 64, offset: 512)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4712, file: !4713, line: 67, baseType: !4731, size: 64, offset: 576)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{!1837, !4433}
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4712, file: !4713, line: 69, baseType: !4735, size: 64, offset: 640)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{null, !4433, !4318, !4319}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4712, file: !4713, line: 71, baseType: !4445, size: 64, offset: 704)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !437, file: !100, line: 785, baseType: !566, size: 64, offset: 5440)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !437, file: !100, line: 787, baseType: !4441, size: 64, offset: 5504)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !437, file: !100, line: 788, baseType: !4742, size: 64, offset: 5568)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !100, line: 46, flags: DIFlagFwdDecl)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !437, file: !100, line: 789, baseType: !4745, size: 64, offset: 5632)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !100, line: 48, flags: DIFlagFwdDecl)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !437, file: !100, line: 791, baseType: !4748, size: 64, offset: 5696)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !100, line: 597, size: 128, elements: !4750)
!4750 = !{!4751, !4752, !4753, !4754, !4755}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4749, file: !100, line: 598, baseType: !122, size: 32)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4749, file: !100, line: 599, baseType: !131, size: 32, offset: 32)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4749, file: !100, line: 600, baseType: !136, size: 32, offset: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4749, file: !100, line: 601, baseType: !933, size: 8, offset: 96)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4749, file: !100, line: 602, baseType: !933, size: 8, offset: 104)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !437, file: !100, line: 793, baseType: !141, size: 32, offset: 5760)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !437, file: !100, line: 795, baseType: !933, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !437, file: !100, line: 796, baseType: !933, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !437, file: !100, line: 797, baseType: !933, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !437, file: !100, line: 798, baseType: !933, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !437, file: !100, line: 799, baseType: !933, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !418, file: !148, line: 73, baseType: !4763, size: 256, offset: 128)
!4763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !148, line: 66, size: 256, elements: !4764)
!4764 = !{!4765, !4766, !4767}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4763, file: !148, line: 68, baseType: !445, size: 128)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4763, file: !148, line: 70, baseType: !280, size: 64, offset: 128)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4763, file: !148, line: 72, baseType: !458, size: 32, offset: 192)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !418, file: !148, line: 76, baseType: !4769, size: 64, offset: 384)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4771)
!4771 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4772, line: 42, flags: DIFlagFwdDecl)
!4772 = !DIFile(filename: "./include/drm/drm_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a48cbf735602b48f7f8b8e0cbee53a7")
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !418, file: !148, line: 88, baseType: !280, size: 64, offset: 448)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !418, file: !148, line: 98, baseType: !4775, size: 64, offset: 512)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !148, line: 13, flags: DIFlagFwdDecl)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !418, file: !148, line: 107, baseType: !4775, size: 64, offset: 576)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !418, file: !148, line: 110, baseType: !4775, size: 64, offset: 640)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !418, file: !148, line: 117, baseType: !933, size: 8, offset: 704)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !418, file: !148, line: 125, baseType: !4781, size: 64, offset: 768)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4783, line: 65, size: 1280, elements: !4784)
!4783 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4784 = !{!4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4782, file: !4783, line: 66, baseType: !422, size: 32)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4782, file: !4783, line: 67, baseType: !417, size: 64, offset: 64)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4782, file: !4783, line: 72, baseType: !517, size: 64, offset: 128)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4782, file: !4783, line: 77, baseType: !115, size: 32, offset: 192)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4782, file: !4783, line: 82, baseType: !1404, size: 192, offset: 256)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4782, file: !4783, line: 83, baseType: !280, size: 64, offset: 448)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4782, file: !4783, line: 99, baseType: !4781, size: 64, offset: 512)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4782, file: !4783, line: 107, baseType: !115, size: 32, offset: 576)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4782, file: !4783, line: 116, baseType: !445, size: 128, offset: 640)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4782, file: !4783, line: 128, baseType: !445, size: 128, offset: 768)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4782, file: !4783, line: 139, baseType: !1404, size: 192, offset: 896)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4782, file: !4783, line: 147, baseType: !1404, size: 192, offset: 1088)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !418, file: !148, line: 135, baseType: !302, size: 32, offset: 832)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !418, file: !148, line: 143, baseType: !933, size: 8, offset: 864)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !418, file: !148, line: 146, baseType: !594, size: 64, offset: 896)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !418, file: !148, line: 149, baseType: !517, size: 64, offset: 960)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !418, file: !148, line: 159, baseType: !853, size: 256, offset: 1024)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !418, file: !148, line: 166, baseType: !853, size: 256, offset: 1280)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !418, file: !148, line: 174, baseType: !431, size: 32, offset: 1536)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !418, file: !148, line: 177, baseType: !853, size: 256, offset: 1600)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !418, file: !148, line: 183, baseType: !445, size: 128, offset: 1856)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !418, file: !148, line: 191, baseType: !445, size: 128, offset: 1984)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !418, file: !148, line: 198, baseType: !853, size: 256, offset: 2112)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !418, file: !148, line: 205, baseType: !445, size: 128, offset: 2368)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !418, file: !148, line: 220, baseType: !933, size: 8, offset: 2496)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !418, file: !148, line: 230, baseType: !4811, size: 64, offset: 2560)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !148, line: 15, flags: DIFlagFwdDecl)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !418, file: !148, line: 237, baseType: !458, size: 32, offset: 2624)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !418, file: !148, line: 242, baseType: !458, size: 32, offset: 2656)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !418, file: !148, line: 265, baseType: !302, size: 32, offset: 2688)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !418, file: !148, line: 268, baseType: !445, size: 128, offset: 2752)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !418, file: !148, line: 276, baseType: !458, size: 32, offset: 2880)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !418, file: !148, line: 279, baseType: !13, size: 32, offset: 2912)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !418, file: !148, line: 282, baseType: !4820, size: 8704, offset: 2944)
!4820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4821, line: 375, size: 8704, elements: !4822)
!4821 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!4822 = !{!4823, !4824, !4843, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4989, !4990, !4991, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4820, file: !4821, line: 386, baseType: !853, size: 256)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4820, file: !4821, line: 396, baseType: !4825, size: 448, offset: 256)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4826, line: 85, size: 448, elements: !4827)
!4826 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!4827 = !{!4828, !4842}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4825, file: !4826, line: 89, baseType: !4829, size: 320)
!4829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4830, line: 47, size: 320, elements: !4831)
!4830 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4831 = !{!4832, !4833}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4829, file: !4830, line: 48, baseType: !853, size: 256)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4829, file: !4830, line: 49, baseType: !4834, size: 64, offset: 256)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4830, line: 55, size: 192, elements: !4836)
!4836 = !{!4837, !4838, !4839, !4840, !4841}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4835, file: !4830, line: 56, baseType: !1419, size: 64)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4835, file: !4830, line: 57, baseType: !304, size: 64, offset: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4835, file: !4830, line: 58, baseType: !13, size: 32, offset: 128)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4835, file: !4830, line: 59, baseType: !298, size: 16, offset: 160)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4835, file: !4830, line: 60, baseType: !298, size: 16, offset: 176)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4825, file: !4826, line: 95, baseType: !445, size: 128, offset: 320)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4820, file: !4821, line: 406, baseType: !4844, size: 64, offset: 704)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4826, line: 46, size: 512, elements: !4846)
!4846 = !{!4847, !4848, !4850, !4853, !4854, !4855}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4845, file: !4826, line: 48, baseType: !4835, size: 192)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4845, file: !4826, line: 55, baseType: !4849, size: 64, offset: 192)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !4845, file: !4826, line: 61, baseType: !4851, size: 32, offset: 256)
!4851 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !4852, line: 27, baseType: !302)
!4852 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4845, file: !4826, line: 66, baseType: !445, size: 128, offset: 320)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4845, file: !4826, line: 71, baseType: !933, size: 8, offset: 448)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4845, file: !4826, line: 74, baseType: !933, size: 8, offset: 456)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4820, file: !4821, line: 414, baseType: !853, size: 256, offset: 768)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4820, file: !4821, line: 422, baseType: !1404, size: 192, offset: 1024)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4820, file: !4821, line: 430, baseType: !1404, size: 192, offset: 1216)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4820, file: !4821, line: 433, baseType: !853, size: 256, offset: 1408)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4820, file: !4821, line: 435, baseType: !115, size: 32, offset: 1664)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4820, file: !4821, line: 437, baseType: !445, size: 128, offset: 1728)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4820, file: !4821, line: 443, baseType: !458, size: 32, offset: 1856)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4820, file: !4821, line: 448, baseType: !115, size: 32, offset: 1888)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4820, file: !4821, line: 452, baseType: !4865, size: 128, offset: 1920)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1405, line: 246, size: 128, elements: !4866)
!4866 = !{!4867}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4865, file: !1405, line: 247, baseType: !1408, size: 128)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4820, file: !4821, line: 460, baseType: !445, size: 128, offset: 2048)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4820, file: !4821, line: 470, baseType: !3033, size: 64, offset: 2176)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4820, file: !4821, line: 474, baseType: !1111, size: 256, offset: 2240)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4820, file: !4821, line: 482, baseType: !115, size: 32, offset: 2496)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4820, file: !4821, line: 490, baseType: !445, size: 128, offset: 2560)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4820, file: !4821, line: 499, baseType: !115, size: 32, offset: 2688)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4820, file: !4821, line: 506, baseType: !445, size: 128, offset: 2752)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4820, file: !4821, line: 514, baseType: !115, size: 32, offset: 2880)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4820, file: !4821, line: 521, baseType: !445, size: 128, offset: 2944)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4820, file: !4821, line: 530, baseType: !445, size: 128, offset: 3072)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4820, file: !4821, line: 539, baseType: !445, size: 128, offset: 3200)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4820, file: !4821, line: 541, baseType: !115, size: 32, offset: 3328)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4820, file: !4821, line: 541, baseType: !115, size: 32, offset: 3360)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4820, file: !4821, line: 542, baseType: !115, size: 32, offset: 3392)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4820, file: !4821, line: 542, baseType: !115, size: 32, offset: 3424)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4820, file: !4821, line: 543, baseType: !4884, size: 64, offset: 3456)
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4886)
!4886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4821, line: 47, size: 576, elements: !4887)
!4887 = !{!4888, !4911, !4918, !4922, !4930, !4936, !4940, !4944, !4948}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4886, file: !4821, line: 83, baseType: !4889, size: 64)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!4892, !417, !4894, !4896}
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4821, line: 83, flags: DIFlagFwdDecl)
!4894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4895, size: 64)
!4895 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4783, line: 35, flags: DIFlagFwdDecl)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4898)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !191, line: 703, size: 832, elements: !4899)
!4899 = !{!4900, !4901, !4902, !4903, !4904, !4905, !4907, !4908, !4909}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4898, file: !191, line: 705, baseType: !303, size: 32)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4898, file: !191, line: 707, baseType: !303, size: 32, offset: 32)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4898, file: !191, line: 709, baseType: !303, size: 32, offset: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4898, file: !191, line: 714, baseType: !303, size: 32, offset: 96)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4898, file: !191, line: 719, baseType: !303, size: 32, offset: 128)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4898, file: !191, line: 725, baseType: !4906, size: 128, offset: 160)
!4906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !303, size: 128, elements: !1081)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4898, file: !191, line: 727, baseType: !4906, size: 128, offset: 288)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4898, file: !191, line: 729, baseType: !4906, size: 128, offset: 416)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4898, file: !191, line: 735, baseType: !4910, size: 256, offset: 576)
!4910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 256, elements: !1081)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4886, file: !4821, line: 98, baseType: !4912, size: 64, offset: 64)
!4912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4913, size: 64)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!4915, !4896}
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4917)
!4917 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4821, line: 38, flags: DIFlagFwdDecl)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4886, file: !4821, line: 114, baseType: !4919, size: 64, offset: 128)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{null, !417}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4886, file: !4821, line: 124, baseType: !4923, size: 64, offset: 192)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!4926, !417, !4927}
!4926 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !4821, line: 124, flags: DIFlagFwdDecl)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4929)
!4929 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !4821, line: 39, flags: DIFlagFwdDecl)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4886, file: !4821, line: 201, baseType: !4931, size: 64, offset: 256)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!115, !417, !4934}
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !4821, line: 36, flags: DIFlagFwdDecl)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4886, file: !4821, line: 283, baseType: !4937, size: 64, offset: 320)
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!115, !417, !4934, !933}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4886, file: !4821, line: 302, baseType: !4941, size: 64, offset: 384)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{!4934, !417}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4886, file: !4821, line: 323, baseType: !4945, size: 64, offset: 448)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{null, !4934}
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4886, file: !4821, line: 338, baseType: !4945, size: 64, offset: 512)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4820, file: !4821, line: 546, baseType: !933, size: 8, offset: 3520)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4820, file: !4821, line: 547, baseType: !933, size: 8, offset: 3528)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4820, file: !4821, line: 548, baseType: !933, size: 8, offset: 3536)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4820, file: !4821, line: 549, baseType: !1168, size: 704, offset: 3584)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4820, file: !4821, line: 557, baseType: !853, size: 256, offset: 4288)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4820, file: !4821, line: 565, baseType: !445, size: 128, offset: 4544)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4820, file: !4821, line: 573, baseType: !4956, size: 64, offset: 4672)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !387, line: 80, size: 960, elements: !4958)
!4958 = !{!4959, !4960, !4982, !4983, !4984, !4985, !4987, !4988}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4957, file: !387, line: 84, baseType: !445, size: 128)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4957, file: !387, line: 89, baseType: !4961, size: 256, offset: 128)
!4961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !4962, line: 55, size: 256, elements: !4963)
!4962 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!4963 = !{!4964, !4965, !4966, !4976, !4977}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4961, file: !4962, line: 56, baseType: !2071, size: 32)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4961, file: !4962, line: 57, baseType: !2071, size: 32, offset: 32)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4961, file: !4962, line: 58, baseType: !4967, size: 64, offset: 64)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !4962, line: 67, size: 3136, elements: !4969)
!4969 = !{!4970, !4971, !4973}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4968, file: !4962, line: 73, baseType: !115, size: 32)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4968, file: !4962, line: 82, baseType: !4972, size: 1536, offset: 64)
!4972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4956, size: 1536, elements: !353)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4968, file: !4962, line: 106, baseType: !4974, size: 1536, offset: 1600)
!4974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4975, size: 1536, elements: !353)
!4975 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !301, line: 113, baseType: !665)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4961, file: !4962, line: 59, baseType: !422, size: 32, offset: 128)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !4961, file: !4962, line: 60, baseType: !4978, size: 64, offset: 192)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{null, !4981}
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4957, file: !387, line: 166, baseType: !2071, size: 32, offset: 384)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4957, file: !387, line: 171, baseType: !3785, size: 256, offset: 416)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !4957, file: !387, line: 176, baseType: !2071, size: 32, offset: 672)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4957, file: !387, line: 184, baseType: !4986, size: 64, offset: 704)
!4986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4975, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4957, file: !387, line: 189, baseType: !417, size: 64, offset: 768)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !4957, file: !387, line: 197, baseType: !445, size: 128, offset: 832)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4820, file: !4821, line: 578, baseType: !4956, size: 64, offset: 4736)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4820, file: !4821, line: 583, baseType: !4956, size: 64, offset: 4800)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4820, file: !4821, line: 589, baseType: !4956, size: 64, offset: 4864)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4820, file: !4821, line: 594, baseType: !4956, size: 64, offset: 4928)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4820, file: !4821, line: 599, baseType: !4956, size: 64, offset: 4992)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4820, file: !4821, line: 604, baseType: !4956, size: 64, offset: 5056)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4820, file: !4821, line: 609, baseType: !4956, size: 64, offset: 5120)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4820, file: !4821, line: 614, baseType: !4956, size: 64, offset: 5184)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4820, file: !4821, line: 619, baseType: !4956, size: 64, offset: 5248)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4820, file: !4821, line: 624, baseType: !4956, size: 64, offset: 5312)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4820, file: !4821, line: 629, baseType: !4956, size: 64, offset: 5376)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4820, file: !4821, line: 634, baseType: !4956, size: 64, offset: 5440)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4820, file: !4821, line: 639, baseType: !4956, size: 64, offset: 5504)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4820, file: !4821, line: 644, baseType: !4956, size: 64, offset: 5568)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4820, file: !4821, line: 649, baseType: !4956, size: 64, offset: 5632)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4820, file: !4821, line: 655, baseType: !4956, size: 64, offset: 5696)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4820, file: !4821, line: 660, baseType: !4956, size: 64, offset: 5760)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4820, file: !4821, line: 669, baseType: !4956, size: 64, offset: 5824)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4820, file: !4821, line: 675, baseType: !4956, size: 64, offset: 5888)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4820, file: !4821, line: 681, baseType: !4956, size: 64, offset: 5952)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4820, file: !4821, line: 686, baseType: !4956, size: 64, offset: 6016)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4820, file: !4821, line: 692, baseType: !4956, size: 64, offset: 6080)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4820, file: !4821, line: 697, baseType: !4956, size: 64, offset: 6144)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4820, file: !4821, line: 703, baseType: !4956, size: 64, offset: 6208)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4820, file: !4821, line: 709, baseType: !4956, size: 64, offset: 6272)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4820, file: !4821, line: 714, baseType: !4956, size: 64, offset: 6336)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !4820, file: !4821, line: 722, baseType: !4956, size: 64, offset: 6400)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4820, file: !4821, line: 728, baseType: !4956, size: 64, offset: 6464)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4820, file: !4821, line: 734, baseType: !4956, size: 64, offset: 6528)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4820, file: !4821, line: 739, baseType: !4956, size: 64, offset: 6592)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4820, file: !4821, line: 744, baseType: !4956, size: 64, offset: 6656)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4820, file: !4821, line: 749, baseType: !4956, size: 64, offset: 6720)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4820, file: !4821, line: 754, baseType: !4956, size: 64, offset: 6784)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4820, file: !4821, line: 759, baseType: !4956, size: 64, offset: 6848)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4820, file: !4821, line: 764, baseType: !4956, size: 64, offset: 6912)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4820, file: !4821, line: 769, baseType: !4956, size: 64, offset: 6976)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4820, file: !4821, line: 774, baseType: !4956, size: 64, offset: 7040)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4820, file: !4821, line: 778, baseType: !4956, size: 64, offset: 7104)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4820, file: !4821, line: 784, baseType: !4956, size: 64, offset: 7168)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4820, file: !4821, line: 789, baseType: !4956, size: 64, offset: 7232)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4820, file: !4821, line: 794, baseType: !4956, size: 64, offset: 7296)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4820, file: !4821, line: 799, baseType: !4956, size: 64, offset: 7360)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4820, file: !4821, line: 804, baseType: !4956, size: 64, offset: 7424)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4820, file: !4821, line: 810, baseType: !4956, size: 64, offset: 7488)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4820, file: !4821, line: 816, baseType: !4956, size: 64, offset: 7552)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4820, file: !4821, line: 821, baseType: !4956, size: 64, offset: 7616)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4820, file: !4821, line: 827, baseType: !4956, size: 64, offset: 7680)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4820, file: !4821, line: 832, baseType: !4956, size: 64, offset: 7744)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4820, file: !4821, line: 839, baseType: !4956, size: 64, offset: 7808)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4820, file: !4821, line: 846, baseType: !4956, size: 64, offset: 7872)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4820, file: !4821, line: 853, baseType: !4956, size: 64, offset: 7936)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4820, file: !4821, line: 861, baseType: !4956, size: 64, offset: 8000)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4820, file: !4821, line: 869, baseType: !4956, size: 64, offset: 8064)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4820, file: !4821, line: 876, baseType: !4956, size: 64, offset: 8128)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4820, file: !4821, line: 882, baseType: !4956, size: 64, offset: 8192)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4820, file: !4821, line: 888, baseType: !4956, size: 64, offset: 8256)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4820, file: !4821, line: 891, baseType: !2071, size: 32, offset: 8320)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4820, file: !4821, line: 891, baseType: !2071, size: 32, offset: 8352)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4820, file: !4821, line: 899, baseType: !933, size: 8, offset: 8384)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4820, file: !4821, line: 913, baseType: !933, size: 8, offset: 8392)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4820, file: !4821, line: 919, baseType: !933, size: 8, offset: 8400)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !4820, file: !4821, line: 929, baseType: !933, size: 8, offset: 8408)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4820, file: !4821, line: 937, baseType: !933, size: 8, offset: 8416)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4820, file: !4821, line: 943, baseType: !4956, size: 64, offset: 8448)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4820, file: !4821, line: 946, baseType: !2071, size: 32, offset: 8512)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4820, file: !4821, line: 946, baseType: !2071, size: 32, offset: 8544)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4820, file: !4821, line: 955, baseType: !4934, size: 64, offset: 8576)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4820, file: !4821, line: 957, baseType: !5057, size: 64, offset: 8640)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5059)
!5059 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !4821, line: 957, flags: DIFlagFwdDecl)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !418, file: !148, line: 285, baseType: !853, size: 256, offset: 11648)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !418, file: !148, line: 288, baseType: !1404, size: 192, offset: 11904)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !418, file: !148, line: 291, baseType: !5063, size: 64, offset: 12096)
!5063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5064, size: 64)
!5064 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !148, line: 16, flags: DIFlagFwdDecl)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !418, file: !148, line: 294, baseType: !5066, size: 64, offset: 12160)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !148, line: 17, flags: DIFlagFwdDecl)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !418, file: !148, line: 304, baseType: !147, size: 32, offset: 12224)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !418, file: !148, line: 312, baseType: !5070, size: 64, offset: 12288)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !148, line: 18, flags: DIFlagFwdDecl)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !418, file: !148, line: 319, baseType: !853, size: 256, offset: 12352)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !418, file: !148, line: 327, baseType: !445, size: 128, offset: 12608)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!5075 = !{!5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083}
!5076 = !DILocalVariable(name: "drm_dev", arg: 1, scope: !414, file: !2, line: 283, type: !417)
!5077 = !DILocalVariable(name: "ksvs", arg: 2, scope: !414, file: !2, line: 283, type: !5074)
!5078 = !DILocalVariable(name: "ksv_count", arg: 3, scope: !414, file: !2, line: 284, type: !302)
!5079 = !DILocalVariable(name: "revoked_ksv_cnt", scope: !414, file: !2, line: 286, type: !302)
!5080 = !DILocalVariable(name: "i", scope: !414, file: !2, line: 286, type: !302)
!5081 = !DILocalVariable(name: "j", scope: !414, file: !2, line: 286, type: !302)
!5082 = !DILocalVariable(name: "revoked_ksv_list", scope: !414, file: !2, line: 287, type: !5074)
!5083 = !DILocalVariable(name: "ret", scope: !414, file: !2, line: 288, type: !115)
!5084 = !DILocation(line: 283, column: 52, scope: !414)
!5085 = !DILocation(line: 283, column: 65, scope: !414)
!5086 = !DILocation(line: 284, column: 9, scope: !414)
!5087 = !DILocation(line: 286, column: 2, scope: !414)
!5088 = !DILocation(line: 286, column: 6, scope: !414)
!5089 = !DILocation(line: 286, column: 27, scope: !414)
!5090 = !DILocation(line: 286, column: 30, scope: !414)
!5091 = !DILocation(line: 287, column: 2, scope: !414)
!5092 = !DILocation(line: 287, column: 6, scope: !414)
!5093 = !DILocation(line: 288, column: 2, scope: !414)
!5094 = !DILocation(line: 288, column: 6, scope: !414)
!5095 = !DILocation(line: 290, column: 29, scope: !414)
!5096 = !DILocation(line: 290, column: 8, scope: !414)
!5097 = !DILocation(line: 290, column: 6, scope: !414)
!5098 = !DILocation(line: 292, column: 6, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !414, file: !2, line: 292, column: 6)
!5100 = !DILocation(line: 292, column: 6, scope: !414)
!5101 = !DILocation(line: 293, column: 10, scope: !5099)
!5102 = !DILocation(line: 293, column: 3, scope: !5099)
!5103 = !DILocation(line: 296, column: 9, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !414, file: !2, line: 296, column: 2)
!5105 = !DILocation(line: 296, column: 7, scope: !5104)
!5106 = !DILocation(line: 296, column: 14, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5104, file: !2, line: 296, column: 2)
!5108 = !DILocation(line: 296, column: 18, scope: !5107)
!5109 = !DILocation(line: 296, column: 16, scope: !5107)
!5110 = !DILocation(line: 296, column: 2, scope: !5104)
!5111 = !DILocation(line: 297, column: 11, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5107, file: !2, line: 297, column: 3)
!5113 = !DILocation(line: 297, column: 9, scope: !5112)
!5114 = !DILocation(line: 297, column: 16, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5112, file: !2, line: 297, column: 3)
!5116 = !DILocation(line: 297, column: 20, scope: !5115)
!5117 = !DILocation(line: 297, column: 18, scope: !5115)
!5118 = !DILocation(line: 297, column: 3, scope: !5112)
!5119 = !DILocation(line: 298, column: 17, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5115, file: !2, line: 298, column: 8)
!5121 = !DILocation(line: 298, column: 22, scope: !5120)
!5122 = !DILocation(line: 298, column: 24, scope: !5120)
!5123 = !DILocation(line: 299, column: 10, scope: !5120)
!5124 = !DILocation(line: 299, column: 27, scope: !5120)
!5125 = !DILocation(line: 299, column: 29, scope: !5120)
!5126 = !DILocation(line: 298, column: 9, scope: !5120)
!5127 = !DILocation(line: 298, column: 8, scope: !5115)
!5128 = !DILocation(line: 301, column: 5, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5120, file: !2, line: 300, column: 28)
!5130 = !DILocation(line: 302, column: 25, scope: !5129)
!5131 = !DILocation(line: 302, column: 30, scope: !5129)
!5132 = !DILocation(line: 302, column: 32, scope: !5129)
!5133 = !DILocation(line: 302, column: 5, scope: !5129)
!5134 = !DILocation(line: 303, column: 8, scope: !5129)
!5135 = !DILocation(line: 304, column: 4, scope: !5129)
!5136 = !DILocation(line: 300, column: 25, scope: !5120)
!5137 = !DILocation(line: 297, column: 32, scope: !5115)
!5138 = !DILocation(line: 297, column: 3, scope: !5115)
!5139 = distinct !{!5139, !5118, !5140, !5141, !5142}
!5140 = !DILocation(line: 304, column: 4, scope: !5112)
!5141 = !{!"llvm.loop.mustprogress"}
!5142 = !{!"llvm.loop.unroll.disable"}
!5143 = !DILocation(line: 296, column: 36, scope: !5107)
!5144 = !DILocation(line: 296, column: 2, scope: !5107)
!5145 = distinct !{!5145, !5110, !5146, !5141, !5142}
!5146 = !DILocation(line: 304, column: 4, scope: !5104)
!5147 = !DILocation(line: 306, column: 8, scope: !414)
!5148 = !DILocation(line: 306, column: 2, scope: !414)
!5149 = !DILocation(line: 307, column: 9, scope: !414)
!5150 = !DILocation(line: 307, column: 2, scope: !414)
!5151 = !DILocation(line: 308, column: 1, scope: !414)
!5152 = distinct !DISubprogram(name: "drm_hdcp_request_srm", scope: !2, file: !2, line: 233, type: !5153, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5156)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!115, !417, !5155, !1918}
!5155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5156 = !{!5157, !5158, !5159, !5160, !5161, !5172, !5173}
!5157 = !DILocalVariable(name: "drm_dev", arg: 1, scope: !5152, file: !2, line: 233, type: !417)
!5158 = !DILocalVariable(name: "revoked_ksv_list", arg: 2, scope: !5152, file: !2, line: 234, type: !5155)
!5159 = !DILocalVariable(name: "revoked_ksv_cnt", arg: 3, scope: !5152, file: !2, line: 234, type: !1918)
!5160 = !DILocalVariable(name: "fw_name", scope: !5152, file: !2, line: 236, type: !371)
!5161 = !DILocalVariable(name: "fw", scope: !5152, file: !2, line: 237, type: !5162)
!5162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5163, size: 64)
!5163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5164)
!5164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !5165, line: 12, size: 192, elements: !5166)
!5165 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a94668a811664b50b12e1246efadf209")
!5166 = !{!5167, !5168, !5171}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5164, file: !5165, line: 13, baseType: !562, size: 64)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5164, file: !5165, line: 14, baseType: !5169, size: 64, offset: 64)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5164, file: !5165, line: 17, baseType: !280, size: 64, offset: 128)
!5172 = !DILocalVariable(name: "ret", scope: !5152, file: !2, line: 238, type: !115)
!5173 = !DILabel(scope: !5152, name: "exit", file: !2, line: 253)
!5174 = !DILocation(line: 233, column: 52, scope: !5152)
!5175 = !DILocation(line: 234, column: 10, scope: !5152)
!5176 = !DILocation(line: 234, column: 33, scope: !5152)
!5177 = !DILocation(line: 236, column: 2, scope: !5152)
!5178 = !DILocation(line: 236, column: 7, scope: !5152)
!5179 = !DILocation(line: 237, column: 2, scope: !5152)
!5180 = !DILocation(line: 237, column: 25, scope: !5152)
!5181 = !DILocation(line: 238, column: 2, scope: !5152)
!5182 = !DILocation(line: 238, column: 6, scope: !5152)
!5183 = !DILocation(line: 240, column: 51, scope: !5152)
!5184 = !DILocation(line: 241, column: 11, scope: !5152)
!5185 = !DILocation(line: 241, column: 20, scope: !5152)
!5186 = !DILocation(line: 240, column: 8, scope: !5152)
!5187 = !DILocation(line: 240, column: 6, scope: !5152)
!5188 = !DILocation(line: 242, column: 6, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5152, file: !2, line: 242, column: 6)
!5190 = !DILocation(line: 242, column: 10, scope: !5189)
!5191 = !DILocation(line: 242, column: 6, scope: !5152)
!5192 = !DILocation(line: 243, column: 4, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5189, file: !2, line: 242, column: 15)
!5194 = !DILocation(line: 243, column: 20, scope: !5193)
!5195 = !DILocation(line: 244, column: 4, scope: !5193)
!5196 = !DILocation(line: 244, column: 21, scope: !5193)
!5197 = !DILocation(line: 245, column: 7, scope: !5193)
!5198 = !DILocation(line: 246, column: 3, scope: !5193)
!5199 = !DILocation(line: 249, column: 6, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5152, file: !2, line: 249, column: 6)
!5201 = !DILocation(line: 249, column: 10, scope: !5200)
!5202 = !DILocation(line: 249, column: 15, scope: !5200)
!5203 = !DILocation(line: 249, column: 18, scope: !5200)
!5204 = !DILocation(line: 249, column: 22, scope: !5200)
!5205 = !DILocation(line: 249, column: 6, scope: !5152)
!5206 = !DILocation(line: 250, column: 29, scope: !5200)
!5207 = !DILocation(line: 250, column: 33, scope: !5200)
!5208 = !DILocation(line: 250, column: 39, scope: !5200)
!5209 = !DILocation(line: 250, column: 43, scope: !5200)
!5210 = !DILocation(line: 250, column: 49, scope: !5200)
!5211 = !DILocation(line: 251, column: 8, scope: !5200)
!5212 = !DILocation(line: 250, column: 9, scope: !5200)
!5213 = !DILocation(line: 250, column: 7, scope: !5200)
!5214 = !DILocation(line: 250, column: 3, scope: !5200)
!5215 = !DILocation(line: 253, column: 1, scope: !5152)
!5216 = !DILocation(line: 254, column: 19, scope: !5152)
!5217 = !DILocation(line: 254, column: 2, scope: !5152)
!5218 = !DILocation(line: 255, column: 9, scope: !5152)
!5219 = !DILocation(line: 256, column: 1, scope: !5152)
!5220 = !DILocation(line: 255, column: 2, scope: !5152)
!5221 = !DISubprogram(name: "memcmp", scope: !5222, file: !5222, line: 196, type: !5223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5222 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5223 = !DISubroutineType(types: !5224)
!5224 = !{!115, !1837, !1837, !563}
!5225 = !DISubprogram(name: "___drm_dbg", scope: !155, file: !155, line: 571, type: !5226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{null, !5228, !154, !281, null}
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !5230, line: 16, size: 448, align: 64, elements: !5231)
!5230 = !DIFile(filename: "./include/linux/dynamic_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5870bc31a25115f490bd43a8eae18abb")
!5231 = !{!5232, !5233, !5234, !5235, !5236, !5237, !5238, !5239}
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !5229, file: !5230, line: 21, baseType: !281, size: 64)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !5229, file: !5230, line: 22, baseType: !281, size: 64, offset: 64)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !5229, file: !5230, line: 23, baseType: !281, size: 64, offset: 128)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5229, file: !5230, line: 24, baseType: !281, size: 64, offset: 192)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !5229, file: !5230, line: 25, baseType: !13, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !5229, file: !5230, line: 27, baseType: !13, size: 6, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5229, file: !5230, line: 52, baseType: !13, size: 8, offset: 280, flags: DIFlagBitField, extraData: i64 256)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5229, file: !5230, line: 57, baseType: !5240, size: 128, offset: 320)
!5240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5229, file: !5230, line: 54, size: 128, elements: !5241)
!5241 = !{!5242, !5257}
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_true", scope: !5240, file: !5230, line: 55, baseType: !5243, size: 128)
!5243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !1180, line: 359, size: 128, elements: !5244)
!5244 = !{!5245}
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5243, file: !1180, line: 360, baseType: !5246, size: 128)
!5246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1180, line: 85, size: 128, elements: !5247)
!5247 = !{!5248, !5249}
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5246, file: !1180, line: 86, baseType: !431, size: 32)
!5249 = !DIDerivedType(tag: DW_TAG_member, scope: !5246, file: !1180, line: 101, baseType: !5250, size: 64, offset: 64)
!5250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5246, file: !1180, line: 101, size: 64, elements: !5251)
!5251 = !{!5252, !5253, !5254}
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5250, file: !1180, line: 102, baseType: !304, size: 64)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5250, file: !1180, line: 103, baseType: !1178, size: 64)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5250, file: !1180, line: 104, baseType: !5255, size: 64)
!5255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5256, size: 64)
!5256 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1180, line: 104, flags: DIFlagFwdDecl)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_false", scope: !5240, file: !5230, line: 56, baseType: !5258, size: 128)
!5258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !1180, line: 363, size: 128, elements: !5259)
!5259 = !{!5260}
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5258, file: !1180, line: 364, baseType: !5246, size: 128)
!5261 = distinct !DISubprogram(name: "drm_hdcp_print_ksv", scope: !2, file: !2, line: 24, type: !5262, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5264)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{null, !5169}
!5264 = !{!5265}
!5265 = !DILocalVariable(name: "ksv", arg: 1, scope: !5261, file: !2, line: 24, type: !5169)
!5266 = !DILocation(line: 24, column: 49, scope: !5261)
!5267 = !DILocation(line: 26, column: 2, scope: !5261)
!5268 = !DILocation(line: 28, column: 1, scope: !5261)
!5269 = !DISubprogram(name: "kfree", scope: !270, file: !270, line: 227, type: !5270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{null, !1837}
!5272 = distinct !DISubprogram(name: "drm_get_content_protection_name", scope: !2, file: !2, line: 316, type: !5273, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5275)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!281, !115}
!5275 = !{!5276, !5277}
!5276 = !DILocalVariable(name: "val", arg: 1, scope: !5272, file: !2, line: 316, type: !115)
!5277 = !DILocalVariable(name: "i", scope: !5272, file: !2, line: 316, type: !115)
!5278 = !DILocation(line: 316, column: 1, scope: !5272)
!5279 = !DILocation(line: 316, column: 1, scope: !5280)
!5280 = distinct !DILexicalBlock(scope: !5272, file: !2, line: 316, column: 1)
!5281 = !DILocation(line: 316, column: 1, scope: !5282)
!5282 = distinct !DILexicalBlock(scope: !5280, file: !2, line: 316, column: 1)
!5283 = !DILocation(line: 316, column: 1, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5285, file: !2, line: 316, column: 1)
!5285 = distinct !DILexicalBlock(scope: !5282, file: !2, line: 316, column: 1)
!5286 = !DILocation(line: 316, column: 1, scope: !5285)
!5287 = distinct !{!5287, !5279, !5279, !5141, !5142}
!5288 = distinct !DISubprogram(name: "drm_get_hdcp_content_type_name", scope: !2, file: !2, line: 322, type: !5273, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5289)
!5289 = !{!5290, !5291}
!5290 = !DILocalVariable(name: "val", arg: 1, scope: !5288, file: !2, line: 322, type: !115)
!5291 = !DILocalVariable(name: "i", scope: !5288, file: !2, line: 322, type: !115)
!5292 = !DILocation(line: 322, column: 1, scope: !5288)
!5293 = !DILocation(line: 322, column: 1, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5288, file: !2, line: 322, column: 1)
!5295 = !DILocation(line: 322, column: 1, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5294, file: !2, line: 322, column: 1)
!5297 = !DILocation(line: 322, column: 1, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5299, file: !2, line: 322, column: 1)
!5299 = distinct !DILexicalBlock(scope: !5296, file: !2, line: 322, column: 1)
!5300 = !DILocation(line: 322, column: 1, scope: !5299)
!5301 = distinct !{!5301, !5293, !5293, !5141, !5142}
!5302 = distinct !DISubprogram(name: "drm_connector_attach_content_protection_property", scope: !2, file: !2, line: 355, type: !5303, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5673)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!115, !5305, !933}
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !168, line: 1494, size: 10880, elements: !5307)
!5307 = !{!5308, !5309, !5310, !5323, !5324, !5325, !5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5334, !5335, !5336, !5337, !5338, !5339, !5340, !5410, !5557, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5567, !5579, !5580, !5581, !5583, !5584, !5588, !5610, !5611, !5615, !5616, !5617, !5618, !5619, !5623, !5624, !5626, !5628, !5629, !5632, !5633, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5649, !5650, !5651, !5652, !5653, !5654, !5656, !5657, !5658}
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5306, file: !168, line: 1496, baseType: !417, size: 64)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !5306, file: !168, line: 1498, baseType: !436, size: 64, offset: 64)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5306, file: !168, line: 1500, baseType: !5311, size: 64, offset: 128)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !100, line: 106, size: 256, elements: !5313)
!5313 = !{!5314, !5315, !5319}
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5312, file: !100, line: 107, baseType: !553, size: 128)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5312, file: !100, line: 108, baseType: !5316, size: 64, offset: 128)
!5316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5317, size: 64)
!5317 = !DISubroutineType(types: !5318)
!5318 = !{!547, !436, !5311, !517}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5312, file: !100, line: 110, baseType: !5320, size: 64, offset: 192)
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5321, size: 64)
!5321 = !DISubroutineType(types: !5322)
!5322 = !{!547, !436, !5311, !281, !562}
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5306, file: !168, line: 1508, baseType: !4702, size: 64, offset: 192)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5306, file: !168, line: 1518, baseType: !445, size: 128, offset: 256)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "global_connector_list_entry", scope: !5306, file: !168, line: 1526, baseType: !445, size: 128, offset: 384)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5306, file: !168, line: 1529, baseType: !4961, size: 256, offset: 512)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5306, file: !168, line: 1532, baseType: !517, size: 64, offset: 768)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5306, file: !168, line: 1539, baseType: !853, size: 256, offset: 832)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5306, file: !168, line: 1547, baseType: !13, size: 32, offset: 1088)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !5306, file: !168, line: 1553, baseType: !115, size: 32, offset: 1120)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !5306, file: !168, line: 1555, baseType: !115, size: 32, offset: 1152)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !5306, file: !168, line: 1561, baseType: !933, size: 8, offset: 1184)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !5306, file: !168, line: 1567, baseType: !933, size: 8, offset: 1192)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !5306, file: !168, line: 1573, baseType: !933, size: 8, offset: 1200)
!5335 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !5306, file: !168, line: 1581, baseType: !933, size: 8, offset: 1208)
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !5306, file: !168, line: 1589, baseType: !167, size: 32, offset: 1216)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !5306, file: !168, line: 1596, baseType: !445, size: 128, offset: 1280)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5306, file: !168, line: 1603, baseType: !173, size: 32, offset: 1408)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !5306, file: !168, line: 1611, baseType: !445, size: 128, offset: 1472)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !5306, file: !168, line: 1622, baseType: !5341, size: 1536, offset: 1600)
!5341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !168, line: 651, size: 1536, elements: !5342)
!5342 = !{!5343, !5344, !5345, !5346, !5347, !5348, !5349, !5352, !5353, !5354, !5355, !5356, !5357, !5358, !5359, !5360, !5361, !5362, !5363, !5393, !5394, !5399, !5404, !5405, !5406, !5407, !5408, !5409}
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5341, file: !168, line: 655, baseType: !13, size: 32)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5341, file: !168, line: 660, baseType: !13, size: 32, offset: 32)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !5341, file: !168, line: 665, baseType: !13, size: 32, offset: 64)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !5341, file: !168, line: 670, baseType: !178, size: 32, offset: 96)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5341, file: !168, line: 684, baseType: !115, size: 32, offset: 128)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !5341, file: !168, line: 692, baseType: !302, size: 32, offset: 160)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !5341, file: !168, line: 699, baseType: !5350, size: 64, offset: 192)
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5351, size: 64)
!5351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !5341, file: !168, line: 703, baseType: !13, size: 32, offset: 256)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5341, file: !168, line: 710, baseType: !302, size: 32, offset: 288)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !5341, file: !168, line: 716, baseType: !115, size: 32, offset: 320)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !5341, file: !168, line: 721, baseType: !933, size: 8, offset: 352)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !5341, file: !168, line: 729, baseType: !933, size: 8, offset: 360)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "has_audio", scope: !5341, file: !168, line: 737, baseType: !933, size: 8, offset: 368)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !5341, file: !168, line: 742, baseType: !933, size: 8, offset: 376)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !5341, file: !168, line: 748, baseType: !933, size: 8, offset: 384)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_rgb444_dc_modes", scope: !5341, file: !168, line: 754, baseType: !283, size: 8, offset: 392)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_ycbcr444_dc_modes", scope: !5341, file: !168, line: 760, baseType: !283, size: 8, offset: 400)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !5341, file: !168, line: 765, baseType: !283, size: 8, offset: 408)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !5341, file: !168, line: 770, baseType: !5364, size: 768, offset: 448)
!5364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !168, line: 293, size: 768, elements: !5365)
!5365 = !{!5366, !5376, !5377, !5378, !5379, !5380, !5381}
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !5364, file: !168, line: 295, baseType: !5367, size: 32)
!5367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !168, line: 231, size: 32, elements: !5368)
!5368 = !{!5369, !5370, !5371}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5367, file: !168, line: 235, baseType: !933, size: 8)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !5367, file: !168, line: 239, baseType: !933, size: 8, offset: 8)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !5367, file: !168, line: 243, baseType: !5372, size: 16, offset: 16)
!5372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !168, line: 214, size: 16, elements: !5373)
!5373 = !{!5374, !5375}
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5372, file: !168, line: 218, baseType: !933, size: 8)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !5372, file: !168, line: 222, baseType: !933, size: 8, offset: 8)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !5364, file: !168, line: 303, baseType: !1084, size: 256, offset: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !5364, file: !168, line: 311, baseType: !1084, size: 256, offset: 320)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !5364, file: !168, line: 314, baseType: !283, size: 8, offset: 576)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5364, file: !168, line: 317, baseType: !283, size: 8, offset: 584)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5364, file: !168, line: 320, baseType: !283, size: 8, offset: 592)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_cap", scope: !5364, file: !168, line: 323, baseType: !5382, size: 128, offset: 608)
!5382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_dsc_cap", file: !168, line: 253, size: 128, elements: !5383)
!5383 = !{!5384, !5385, !5386, !5387, !5388, !5389, !5390, !5391, !5392}
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "v_1p2", scope: !5382, file: !168, line: 255, baseType: !933, size: 8)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "native_420", scope: !5382, file: !168, line: 258, baseType: !933, size: 8, offset: 8)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "all_bpp", scope: !5382, file: !168, line: 264, baseType: !933, size: 8, offset: 16)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "bpc_supported", scope: !5382, file: !168, line: 269, baseType: !283, size: 8, offset: 24)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "max_slices", scope: !5382, file: !168, line: 272, baseType: !283, size: 8, offset: 32)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "clk_per_slice", scope: !5382, file: !168, line: 275, baseType: !115, size: 32, offset: 64)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5382, file: !168, line: 278, baseType: !283, size: 8, offset: 96)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5382, file: !168, line: 281, baseType: !283, size: 8, offset: 104)
!5392 = !DIDerivedType(tag: DW_TAG_member, name: "total_chunk_kbytes", scope: !5382, file: !168, line: 284, baseType: !283, size: 8, offset: 112)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !5341, file: !168, line: 775, baseType: !933, size: 8, offset: 1216)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !5341, file: !168, line: 780, baseType: !5395, size: 32, offset: 1232)
!5395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !168, line: 383, size: 32, elements: !5396)
!5396 = !{!5397, !5398}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !5395, file: !168, line: 384, baseType: !487, size: 16)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !5395, file: !168, line: 385, baseType: !487, size: 16, offset: 16)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "luminance_range", scope: !5341, file: !168, line: 785, baseType: !5400, size: 64, offset: 1280)
!5400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_luminance_range_info", file: !168, line: 399, size: 64, elements: !5401)
!5401 = !{!5402, !5403}
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "min_luminance", scope: !5400, file: !168, line: 400, baseType: !302, size: 32)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "max_luminance", scope: !5400, file: !168, line: 401, baseType: !302, size: 32, offset: 32)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "mso_stream_count", scope: !5341, file: !168, line: 792, baseType: !283, size: 8, offset: 1344)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "mso_pixel_overlap", scope: !5341, file: !168, line: 797, baseType: !283, size: 8, offset: 1352)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "max_dsc_bpp", scope: !5341, file: !168, line: 803, baseType: !302, size: 32, offset: 1376)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "vics", scope: !5341, file: !168, line: 808, baseType: !5074, size: 64, offset: 1408)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "vics_len", scope: !5341, file: !168, line: 813, baseType: !115, size: 32, offset: 1472)
!5409 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5341, file: !168, line: 818, baseType: !302, size: 32, offset: 1504)
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5306, file: !168, line: 1625, baseType: !5411, size: 64, offset: 3136)
!5411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5412, size: 64)
!5412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5413)
!5413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !168, line: 1034, size: 1024, elements: !5414)
!5414 = !{!5415, !5419, !5423, !5427, !5428, !5432, !5436, !5440, !5441, !5442, !5504, !5508, !5512, !5518, !5552, !5553}
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5413, file: !168, line: 1051, baseType: !5416, size: 64)
!5416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5417, size: 64)
!5417 = !DISubroutineType(types: !5418)
!5418 = !{!115, !5305, !115}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5413, file: !168, line: 1063, baseType: !5420, size: 64, offset: 64)
!5420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5421, size: 64)
!5421 = !DISubroutineType(types: !5422)
!5422 = !{null, !5305}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5413, file: !168, line: 1096, baseType: !5424, size: 64, offset: 128)
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{!173, !5305, !933}
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5413, file: !168, line: 1113, baseType: !5420, size: 64, offset: 192)
!5428 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !5413, file: !168, line: 1138, baseType: !5429, size: 64, offset: 256)
!5429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5430, size: 64)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!115, !5305, !2071, !2071}
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5413, file: !168, line: 1154, baseType: !5433, size: 64, offset: 320)
!5433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5434, size: 64)
!5434 = !DISubroutineType(types: !5435)
!5435 = !{!115, !5305, !4956, !4975}
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5413, file: !168, line: 1173, baseType: !5437, size: 64, offset: 384)
!5437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5438, size: 64)
!5438 = !DISubroutineType(types: !5439)
!5439 = !{!115, !5305}
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5413, file: !168, line: 1186, baseType: !5420, size: 64, offset: 448)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5413, file: !168, line: 1196, baseType: !5420, size: 64, offset: 512)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5413, file: !168, line: 1229, baseType: !5443, size: 64, offset: 576)
!5443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5444, size: 64)
!5444 = !DISubroutineType(types: !5445)
!5445 = !{!5446, !5305}
!5446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5447, size: 64)
!5447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !168, line: 884, size: 1280, elements: !5448)
!5448 = !{!5449, !5450, !5453, !5456, !5457, !5458, !5461, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5491, !5492, !5493, !5494}
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !5447, file: !168, line: 886, baseType: !5305, size: 64)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5447, file: !168, line: 894, baseType: !5451, size: 64, offset: 64)
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5452, size: 64)
!5452 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !4826, line: 141, flags: DIFlagFwdDecl)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5447, file: !168, line: 912, baseType: !5454, size: 64, offset: 128)
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5455, size: 64)
!5455 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !168, line: 41, flags: DIFlagFwdDecl)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !5447, file: !168, line: 918, baseType: !186, size: 32, offset: 192)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5447, file: !168, line: 921, baseType: !4934, size: 64, offset: 256)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5447, file: !168, line: 928, baseType: !5459, size: 64, offset: 320)
!5459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5460, size: 64)
!5460 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !168, line: 928, flags: DIFlagFwdDecl)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !5447, file: !168, line: 931, baseType: !5462, size: 448, offset: 384)
!5462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !168, line: 867, size: 448, elements: !5463)
!5463 = !{!5464, !5465, !5466, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480}
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "select_subconnector", scope: !5462, file: !168, line: 868, baseType: !190, size: 32)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !5462, file: !168, line: 869, baseType: !190, size: 32, offset: 32)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5462, file: !168, line: 870, baseType: !5467, size: 128, offset: 64)
!5467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !168, line: 831, size: 128, elements: !5468)
!5468 = !{!5469, !5470, !5471, !5472}
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !5467, file: !168, line: 835, baseType: !13, size: 32)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5467, file: !168, line: 840, baseType: !13, size: 32, offset: 32)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5467, file: !168, line: 845, baseType: !13, size: 32, offset: 64)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !5467, file: !168, line: 850, baseType: !13, size: 32, offset: 96)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mode", scope: !5462, file: !168, line: 871, baseType: !13, size: 32, offset: 192)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5462, file: !168, line: 872, baseType: !13, size: 32, offset: 224)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !5462, file: !168, line: 873, baseType: !13, size: 32, offset: 256)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !5462, file: !168, line: 874, baseType: !13, size: 32, offset: 288)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !5462, file: !168, line: 875, baseType: !13, size: 32, offset: 320)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !5462, file: !168, line: 876, baseType: !13, size: 32, offset: 352)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !5462, file: !168, line: 877, baseType: !13, size: 32, offset: 384)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !5462, file: !168, line: 878, baseType: !13, size: 32, offset: 416)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !5447, file: !168, line: 945, baseType: !933, size: 8, offset: 832)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5447, file: !168, line: 954, baseType: !206, size: 32, offset: 864)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !5447, file: !168, line: 962, baseType: !13, size: 32, offset: 896)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !5447, file: !168, line: 968, baseType: !13, size: 32, offset: 928)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !5447, file: !168, line: 974, baseType: !13, size: 32, offset: 960)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !5447, file: !168, line: 980, baseType: !13, size: 32, offset: 992)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !5447, file: !168, line: 987, baseType: !215, size: 32, offset: 1024)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !5447, file: !168, line: 1000, baseType: !5489, size: 64, offset: 1088)
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5490, size: 64)
!5490 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !168, line: 1000, flags: DIFlagFwdDecl)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !5447, file: !168, line: 1006, baseType: !283, size: 8, offset: 1152)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !5447, file: !168, line: 1012, baseType: !283, size: 8, offset: 1160)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state", scope: !5447, file: !168, line: 1018, baseType: !235, size: 32, offset: 1184)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !5447, file: !168, line: 1024, baseType: !5495, size: 64, offset: 1216)
!5495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5496, size: 64)
!5496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !387, line: 216, size: 704, elements: !5497)
!5497 = !{!5498, !5499, !5500, !5501, !5502, !5503}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5496, file: !387, line: 217, baseType: !4961, size: 256)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5496, file: !387, line: 218, baseType: !417, size: 64, offset: 256)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !5496, file: !387, line: 219, baseType: !445, size: 128, offset: 320)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !5496, file: !387, line: 220, baseType: !445, size: 128, offset: 448)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5496, file: !387, line: 221, baseType: !562, size: 64, offset: 576)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5496, file: !387, line: 222, baseType: !280, size: 64, offset: 640)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5413, file: !168, line: 1239, baseType: !5505, size: 64, offset: 640)
!5505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5506, size: 64)
!5506 = !DISubroutineType(types: !5507)
!5507 = !{null, !5305, !5446}
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5413, file: !168, line: 1284, baseType: !5509, size: 64, offset: 704)
!5509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5510, size: 64)
!5510 = !DISubroutineType(types: !5511)
!5511 = !{!115, !5305, !5446, !4956, !4975}
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5413, file: !168, line: 1307, baseType: !5513, size: 64, offset: 768)
!5513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5514, size: 64)
!5514 = !DISubroutineType(types: !5515)
!5515 = !{!115, !5305, !5516, !4956, !4986}
!5516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5517, size: 64)
!5517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5447)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5413, file: !168, line: 1321, baseType: !5519, size: 64, offset: 832)
!5519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5520, size: 64)
!5520 = !DISubroutineType(types: !5521)
!5521 = !{null, !5522, !5516}
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !155, line: 76, size: 256, elements: !5524)
!5524 = !{!5525, !5546, !5550, !5551}
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !5523, file: !155, line: 78, baseType: !5526, size: 64)
!5526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5527, size: 64)
!5527 = !DISubroutineType(types: !5528)
!5528 = !{null, !5522, !5529}
!5529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5530, size: 64)
!5530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !5531, line: 79, size: 128, elements: !5532)
!5531 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5532 = !{!5533, !5534}
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5530, file: !5531, line: 80, baseType: !281, size: 64)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !5530, file: !5531, line: 81, baseType: !5535, size: 64, offset: 64)
!5535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5536, size: 64)
!5536 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5537, line: 5, baseType: !5538)
!5537 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !5539)
!5539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5540, size: 192, elements: !1657)
!5540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5541)
!5541 = !{!5542, !5543, !5544, !5545}
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5540, file: !2, line: 322, baseType: !13, size: 32)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5540, file: !2, line: 322, baseType: !13, size: 32, offset: 32)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5540, file: !2, line: 322, baseType: !280, size: 64, offset: 64)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5540, file: !2, line: 322, baseType: !280, size: 64, offset: 128)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !5523, file: !155, line: 79, baseType: !5547, size: 64, offset: 64)
!5547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64)
!5548 = !DISubroutineType(types: !5549)
!5549 = !{null, !5522, !281}
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5523, file: !155, line: 80, baseType: !280, size: 64, offset: 128)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5523, file: !155, line: 81, baseType: !281, size: 64, offset: 192)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "oob_hotplug_event", scope: !5413, file: !168, line: 1330, baseType: !5420, size: 64, offset: 896)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !5413, file: !168, line: 1337, baseType: !5554, size: 64, offset: 960)
!5554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5555, size: 64)
!5555 = !DISubroutineType(types: !5556)
!5556 = !{null, !5305, !629}
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !5306, file: !168, line: 1632, baseType: !5495, size: 64, offset: 3200)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5306, file: !168, line: 1635, baseType: !4968, size: 3136, offset: 3264)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5306, file: !168, line: 1641, baseType: !4956, size: 64, offset: 6400)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !5306, file: !168, line: 1652, baseType: !4956, size: 64, offset: 6464)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !5306, file: !168, line: 1658, baseType: !4956, size: 64, offset: 6528)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !5306, file: !168, line: 1666, baseType: !5495, size: 64, offset: 6592)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !5306, file: !168, line: 1672, baseType: !4956, size: 64, offset: 6656)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen", scope: !5306, file: !168, line: 1675, baseType: !5565, size: 64, offset: 6720)
!5565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5566, size: 64)
!5566 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_privacy_screen", file: !168, line: 46, flags: DIFlagFwdDecl)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_notifier", scope: !5306, file: !168, line: 1678, baseType: !5568, size: 192, offset: 6784)
!5568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5569, line: 54, size: 192, elements: !5570)
!5569 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!5570 = !{!5571, !5577, !5578}
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5568, file: !5569, line: 55, baseType: !5572, size: 64)
!5572 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5569, line: 51, baseType: !5573)
!5573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5574, size: 64)
!5574 = !DISubroutineType(types: !5575)
!5575 = !{!115, !5576, !304, !280}
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5568, size: 64)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5568, file: !5569, line: 56, baseType: !5576, size: 64, offset: 64)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5568, file: !5569, line: 57, baseType: !115, size: 32, offset: 128)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state_property", scope: !5306, file: !168, line: 1684, baseType: !4956, size: 64, offset: 6976)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_hw_state_property", scope: !5306, file: !168, line: 1690, baseType: !4956, size: 64, offset: 7040)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !5306, file: !168, line: 1717, baseType: !5582, size: 8, offset: 7104)
!5582 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !301, line: 108, baseType: !283)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5306, file: !168, line: 1725, baseType: !115, size: 32, offset: 7136)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5306, file: !168, line: 1728, baseType: !5585, size: 64, offset: 7168)
!5585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5586, size: 64)
!5586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5587)
!5587 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !168, line: 37, flags: DIFlagFwdDecl)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !5306, file: !168, line: 1731, baseType: !5589, size: 768, offset: 7232)
!5589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !168, line: 1348, size: 768, elements: !5590)
!5590 = !{!5591, !5592, !5593, !5594, !5595, !5596, !5597, !5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5608, !5609}
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5589, file: !168, line: 1354, baseType: !3785, size: 256)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !5589, file: !168, line: 1361, baseType: !933, size: 8, offset: 256)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !5589, file: !168, line: 1368, baseType: !933, size: 8, offset: 264)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !5589, file: !168, line: 1375, baseType: !933, size: 8, offset: 272)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_clock", scope: !5589, file: !168, line: 1382, baseType: !13, size: 32, offset: 288)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !5589, file: !168, line: 1389, baseType: !115, size: 32, offset: 320)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !5589, file: !168, line: 1396, baseType: !115, size: 32, offset: 352)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5589, file: !168, line: 1403, baseType: !115, size: 32, offset: 384)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !5589, file: !168, line: 1410, baseType: !115, size: 32, offset: 416)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5589, file: !168, line: 1417, baseType: !933, size: 8, offset: 448)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !5589, file: !168, line: 1424, baseType: !933, size: 8, offset: 456)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !5589, file: !168, line: 1432, baseType: !933, size: 8, offset: 464)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5589, file: !168, line: 1440, baseType: !933, size: 8, offset: 472)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5589, file: !168, line: 1448, baseType: !241, size: 32, offset: 480)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !5589, file: !168, line: 1458, baseType: !13, size: 32, offset: 512)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5589, file: !168, line: 1466, baseType: !247, size: 32, offset: 544)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !5589, file: !168, line: 1471, baseType: !5467, size: 128, offset: 576)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode", scope: !5589, file: !168, line: 1476, baseType: !254, size: 32, offset: 704)
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_specified", scope: !5589, file: !168, line: 1483, baseType: !933, size: 8, offset: 736)
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5306, file: !168, line: 1733, baseType: !241, size: 32, offset: 8000)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override", scope: !5306, file: !168, line: 1741, baseType: !5612, size: 64, offset: 8064)
!5612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5613, size: 64)
!5613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5614)
!5614 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_edid", file: !168, line: 1741, flags: DIFlagFwdDecl)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override_mutex", scope: !5306, file: !168, line: 1746, baseType: !853, size: 256, offset: 8128)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !5306, file: !168, line: 1749, baseType: !665, size: 64, offset: 8384)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !5306, file: !168, line: 1756, baseType: !302, size: 32, offset: 8448)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !5306, file: !168, line: 1764, baseType: !5454, size: 64, offset: 8512)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !5306, file: !168, line: 1768, baseType: !5620, size: 1024, offset: 8576)
!5620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5582, size: 1024, elements: !5621)
!5621 = !{!5622}
!5622 = !DISubrange(count: 128)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "eld_mutex", scope: !5306, file: !168, line: 1770, baseType: !853, size: 256, offset: 9600)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !5306, file: !168, line: 1773, baseType: !5625, size: 16, offset: 9856)
!5625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !933, size: 16, elements: !403)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !5306, file: !168, line: 1778, baseType: !5627, size: 64, offset: 9888)
!5627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !403)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !5306, file: !168, line: 1783, baseType: !5627, size: 64, offset: 9952)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !5306, file: !168, line: 1794, baseType: !5630, size: 64, offset: 10048)
!5630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5631, size: 64)
!5631 = !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !168, line: 48, flags: DIFlagFwdDecl)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !5306, file: !168, line: 1800, baseType: !115, size: 32, offset: 10112)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !5306, file: !168, line: 1803, baseType: !13, size: 32, offset: 10144)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !5306, file: !168, line: 1810, baseType: !933, size: 8, offset: 10176)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !5306, file: !168, line: 1816, baseType: !283, size: 8, offset: 10184)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5306, file: !168, line: 1819, baseType: !629, size: 64, offset: 10240)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5306, file: !168, line: 1835, baseType: !5446, size: 64, offset: 10304)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !5306, file: !168, line: 1852, baseType: !5495, size: 64, offset: 10368)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !5306, file: !168, line: 1855, baseType: !933, size: 8, offset: 10432)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !5306, file: !168, line: 1857, baseType: !5641, size: 64, offset: 10496)
!5641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5642, size: 64)
!5642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !168, line: 2058, size: 256, elements: !5643)
!5643 = !{!5644, !5645, !5646, !5647}
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5642, file: !168, line: 2059, baseType: !422, size: 32)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5642, file: !168, line: 2060, baseType: !417, size: 64, offset: 64)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5642, file: !168, line: 2061, baseType: !115, size: 32, offset: 128)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !5642, file: !168, line: 2062, baseType: !5648, size: 64, offset: 160)
!5648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 64, elements: !379)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !5306, file: !168, line: 1859, baseType: !933, size: 8, offset: 10560)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !5306, file: !168, line: 1863, baseType: !5582, size: 8, offset: 10568)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !5306, file: !168, line: 1863, baseType: !5582, size: 8, offset: 10576)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !5306, file: !168, line: 1866, baseType: !5582, size: 8, offset: 10584)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !5306, file: !168, line: 1866, baseType: !5582, size: 8, offset: 10592)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !5306, file: !168, line: 1869, baseType: !5655, size: 16, offset: 10608)
!5655 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !301, line: 109, baseType: !487)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !5306, file: !168, line: 1869, baseType: !5655, size: 16, offset: 10624)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !5306, file: !168, line: 1878, baseType: !1337, size: 64, offset: 10688)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !5306, file: !168, line: 1881, baseType: !5659, size: 96, offset: 10752)
!5659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !207, line: 383, size: 96, elements: !5660)
!5660 = !{!5661, !5662}
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5659, file: !207, line: 387, baseType: !303, size: 32)
!5662 = !DIDerivedType(tag: DW_TAG_member, scope: !5659, file: !207, line: 391, baseType: !5663, size: 64, offset: 32)
!5663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5659, file: !207, line: 391, size: 64, elements: !5664)
!5664 = !{!5665}
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !5663, file: !207, line: 392, baseType: !5666, size: 64)
!5666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !207, line: 370, size: 64, elements: !5667)
!5667 = !{!5668, !5669, !5670, !5671, !5672}
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !5666, file: !207, line: 371, baseType: !285, size: 8)
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5666, file: !207, line: 372, baseType: !285, size: 8, offset: 8)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !5666, file: !207, line: 373, baseType: !297, size: 16, offset: 16)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !5666, file: !207, line: 374, baseType: !297, size: 16, offset: 32)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !5666, file: !207, line: 375, baseType: !297, size: 16, offset: 48)
!5673 = !{!5674, !5675, !5676, !5677}
!5674 = !DILocalVariable(name: "connector", arg: 1, scope: !5302, file: !2, line: 356, type: !5305)
!5675 = !DILocalVariable(name: "hdcp_content_type", arg: 2, scope: !5302, file: !2, line: 356, type: !933)
!5676 = !DILocalVariable(name: "dev", scope: !5302, file: !2, line: 358, type: !417)
!5677 = !DILocalVariable(name: "prop", scope: !5302, file: !2, line: 359, type: !4956)
!5678 = !DILocation(line: 356, column: 25, scope: !5302)
!5679 = !DILocation(line: 356, column: 41, scope: !5302)
!5680 = !DILocation(line: 358, column: 2, scope: !5302)
!5681 = !DILocation(line: 358, column: 21, scope: !5302)
!5682 = !DILocation(line: 358, column: 27, scope: !5302)
!5683 = !DILocation(line: 358, column: 38, scope: !5302)
!5684 = !DILocation(line: 359, column: 2, scope: !5302)
!5685 = !DILocation(line: 359, column: 23, scope: !5302)
!5686 = !DILocation(line: 360, column: 4, scope: !5302)
!5687 = !DILocation(line: 360, column: 9, scope: !5302)
!5688 = !DILocation(line: 360, column: 21, scope: !5302)
!5689 = !DILocation(line: 362, column: 7, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5302, file: !2, line: 362, column: 6)
!5691 = !DILocation(line: 362, column: 6, scope: !5302)
!5692 = !DILocation(line: 363, column: 35, scope: !5690)
!5693 = !DILocation(line: 363, column: 10, scope: !5690)
!5694 = !DILocation(line: 363, column: 8, scope: !5690)
!5695 = !DILocation(line: 363, column: 3, scope: !5690)
!5696 = !DILocation(line: 366, column: 7, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5302, file: !2, line: 366, column: 6)
!5698 = !DILocation(line: 366, column: 6, scope: !5302)
!5699 = !DILocation(line: 367, column: 3, scope: !5697)
!5700 = !DILocation(line: 369, column: 30, scope: !5302)
!5701 = !DILocation(line: 369, column: 41, scope: !5302)
!5702 = !DILocation(line: 369, column: 47, scope: !5302)
!5703 = !DILocation(line: 369, column: 2, scope: !5302)
!5704 = !DILocation(line: 371, column: 49, scope: !5302)
!5705 = !DILocation(line: 371, column: 2, scope: !5302)
!5706 = !DILocation(line: 371, column: 7, scope: !5302)
!5707 = !DILocation(line: 371, column: 19, scope: !5302)
!5708 = !DILocation(line: 371, column: 47, scope: !5302)
!5709 = !DILocation(line: 373, column: 7, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5302, file: !2, line: 373, column: 6)
!5711 = !{i8 0, i8 2}
!5712 = !DILocation(line: 373, column: 6, scope: !5302)
!5713 = !DILocation(line: 374, column: 3, scope: !5710)
!5714 = !DILocation(line: 376, column: 9, scope: !5302)
!5715 = !DILocation(line: 376, column: 14, scope: !5302)
!5716 = !DILocation(line: 376, column: 26, scope: !5302)
!5717 = !DILocation(line: 376, column: 7, scope: !5302)
!5718 = !DILocation(line: 377, column: 7, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5302, file: !2, line: 377, column: 6)
!5720 = !DILocation(line: 377, column: 6, scope: !5302)
!5721 = !DILocation(line: 378, column: 35, scope: !5719)
!5722 = !DILocation(line: 378, column: 10, scope: !5719)
!5723 = !DILocation(line: 378, column: 8, scope: !5719)
!5724 = !DILocation(line: 378, column: 3, scope: !5719)
!5725 = !DILocation(line: 382, column: 7, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5302, file: !2, line: 382, column: 6)
!5727 = !DILocation(line: 382, column: 6, scope: !5302)
!5728 = !DILocation(line: 383, column: 3, scope: !5726)
!5729 = !DILocation(line: 385, column: 30, scope: !5302)
!5730 = !DILocation(line: 385, column: 41, scope: !5302)
!5731 = !DILocation(line: 385, column: 47, scope: !5302)
!5732 = !DILocation(line: 385, column: 2, scope: !5302)
!5733 = !DILocation(line: 387, column: 48, scope: !5302)
!5734 = !DILocation(line: 387, column: 2, scope: !5302)
!5735 = !DILocation(line: 387, column: 7, scope: !5302)
!5736 = !DILocation(line: 387, column: 19, scope: !5302)
!5737 = !DILocation(line: 387, column: 46, scope: !5302)
!5738 = !DILocation(line: 389, column: 2, scope: !5302)
!5739 = !DILocation(line: 390, column: 1, scope: !5302)
!5740 = !DISubprogram(name: "drm_property_create_enum", scope: !387, file: !387, line: 253, type: !5741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5741 = !DISubroutineType(types: !5742)
!5742 = !{!4956, !417, !302, !281, !5743, !115}
!5743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5744, size: 64)
!5744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!5745 = !DISubprogram(name: "drm_object_attach_property", scope: !4962, file: !4962, line: 137, type: !5746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5746 = !DISubroutineType(types: !5747)
!5747 = !{null, !5748, !4956, !4975}
!5748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!5749 = distinct !DISubprogram(name: "drm_hdcp_update_content_protection", scope: !2, file: !2, line: 407, type: !5750, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5752)
!5750 = !DISubroutineType(types: !5751)
!5751 = !{null, !5305, !665}
!5752 = !{!5753, !5754, !5755, !5756, !5757, !5759}
!5753 = !DILocalVariable(name: "connector", arg: 1, scope: !5749, file: !2, line: 407, type: !5305)
!5754 = !DILocalVariable(name: "val", arg: 2, scope: !5749, file: !2, line: 408, type: !665)
!5755 = !DILocalVariable(name: "dev", scope: !5749, file: !2, line: 410, type: !417)
!5756 = !DILocalVariable(name: "state", scope: !5749, file: !2, line: 411, type: !5446)
!5757 = !DILocalVariable(name: "__ret_warn_on", scope: !5758, file: !2, line: 413, type: !115)
!5758 = distinct !DILexicalBlock(scope: !5749, file: !2, line: 413, column: 2)
!5759 = !DILocalVariable(name: "__flags", scope: !5760, file: !2, line: 413, type: !115)
!5760 = distinct !DILexicalBlock(scope: !5761, file: !2, line: 413, column: 2)
!5761 = distinct !DILexicalBlock(scope: !5758, file: !2, line: 413, column: 2)
!5762 = !DILocation(line: 407, column: 63, scope: !5749)
!5763 = !DILocation(line: 408, column: 10, scope: !5749)
!5764 = !DILocation(line: 410, column: 2, scope: !5749)
!5765 = !DILocation(line: 410, column: 21, scope: !5749)
!5766 = !DILocation(line: 410, column: 27, scope: !5749)
!5767 = !DILocation(line: 410, column: 38, scope: !5749)
!5768 = !DILocation(line: 411, column: 2, scope: !5749)
!5769 = !DILocation(line: 411, column: 30, scope: !5749)
!5770 = !DILocation(line: 411, column: 38, scope: !5749)
!5771 = !DILocation(line: 411, column: 49, scope: !5749)
!5772 = !DILocation(line: 413, column: 2, scope: !5758)
!5773 = !DILocation(line: 413, column: 2, scope: !5761)
!5774 = !DILocation(line: 413, column: 2, scope: !5760)
!5775 = !DILocation(line: 413, column: 2, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5760, file: !2, line: 413, column: 2)
!5777 = !DILocation(line: 413, column: 2, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5760, file: !2, line: 413, column: 2)
!5779 = !{i64 2155203501, i64 2155203530, i64 2155203576, i64 2155203634, i64 2155203688, i64 2155203742, i64 2155203797, i64 2155203828, i64 2155204136, i64 2155204142, i64 2155204189, i64 2155204212, i64 2155204238}
!5780 = !DILocation(line: 413, column: 2, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5760, file: !2, line: 413, column: 2)
!5782 = !DILocation(line: 413, column: 2, scope: !5749)
!5783 = !DILocation(line: 414, column: 6, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5749, file: !2, line: 414, column: 6)
!5785 = !DILocation(line: 414, column: 13, scope: !5784)
!5786 = !DILocation(line: 414, column: 35, scope: !5784)
!5787 = !DILocation(line: 414, column: 32, scope: !5784)
!5788 = !DILocation(line: 414, column: 6, scope: !5749)
!5789 = !DILocation(line: 415, column: 3, scope: !5784)
!5790 = !DILocation(line: 417, column: 30, scope: !5749)
!5791 = !DILocation(line: 417, column: 2, scope: !5749)
!5792 = !DILocation(line: 417, column: 9, scope: !5749)
!5793 = !DILocation(line: 417, column: 28, scope: !5749)
!5794 = !DILocation(line: 418, column: 37, scope: !5749)
!5795 = !DILocation(line: 419, column: 9, scope: !5749)
!5796 = !DILocation(line: 419, column: 14, scope: !5749)
!5797 = !DILocation(line: 419, column: 26, scope: !5749)
!5798 = !DILocation(line: 418, column: 2, scope: !5749)
!5799 = !DILocation(line: 420, column: 1, scope: !5749)
!5800 = distinct !DISubprogram(name: "drm_modeset_is_locked", scope: !4826, file: !4826, line: 121, type: !5801, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5803)
!5801 = !DISubroutineType(types: !5802)
!5802 = !{!933, !4849}
!5803 = !{!5804}
!5804 = !DILocalVariable(name: "lock", arg: 1, scope: !5800, file: !4826, line: 121, type: !4849)
!5805 = !DILocation(line: 121, column: 67, scope: !5800)
!5806 = !DILocation(line: 123, column: 29, scope: !5800)
!5807 = !DILocation(line: 123, column: 35, scope: !5800)
!5808 = !DILocation(line: 123, column: 9, scope: !5800)
!5809 = !DILocation(line: 123, column: 2, scope: !5800)
!5810 = !DISubprogram(name: "drm_sysfs_connector_property_event", scope: !5811, file: !5811, line: 15, type: !5812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5811 = !DIFile(filename: "./include/drm/drm_sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0445f73c3affd41ebeda0527595aa1d7")
!5812 = !DISubroutineType(types: !5813)
!5813 = !{null, !5305, !4956}
!5814 = !DISubprogram(name: "request_firmware_direct", scope: !5165, file: !5165, line: 106, type: !5815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5815 = !DISubroutineType(types: !5816)
!5816 = !{!115, !5817, !281, !436}
!5817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5818 = distinct !DISubprogram(name: "drm_hdcp_srm_update", scope: !2, file: !2, line: 217, type: !5819, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5821)
!5819 = !DISubroutineType(types: !5820)
!5820 = !{!115, !5169, !562, !5155, !1918}
!5821 = !{!5822, !5823, !5824, !5825}
!5822 = !DILocalVariable(name: "buf", arg: 1, scope: !5818, file: !2, line: 217, type: !5169)
!5823 = !DILocalVariable(name: "count", arg: 2, scope: !5818, file: !2, line: 217, type: !562)
!5824 = !DILocalVariable(name: "revoked_ksv_list", arg: 3, scope: !5818, file: !2, line: 218, type: !5155)
!5825 = !DILocalVariable(name: "revoked_ksv_cnt", arg: 4, scope: !5818, file: !2, line: 218, type: !1918)
!5826 = !DILocation(line: 217, column: 42, scope: !5818)
!5827 = !DILocation(line: 217, column: 54, scope: !5818)
!5828 = !DILocation(line: 218, column: 16, scope: !5818)
!5829 = !DILocation(line: 218, column: 39, scope: !5818)
!5830 = !DILocation(line: 220, column: 6, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5818, file: !2, line: 220, column: 6)
!5832 = !DILocation(line: 220, column: 12, scope: !5831)
!5833 = !DILocation(line: 220, column: 6, scope: !5818)
!5834 = !DILocation(line: 221, column: 3, scope: !5831)
!5835 = !DILocation(line: 223, column: 27, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5818, file: !2, line: 223, column: 6)
!5837 = !DILocation(line: 223, column: 6, scope: !5836)
!5838 = !DILocation(line: 223, column: 6, scope: !5818)
!5839 = !DILocation(line: 224, column: 35, scope: !5836)
!5840 = !DILocation(line: 224, column: 40, scope: !5836)
!5841 = !DILocation(line: 224, column: 47, scope: !5836)
!5842 = !DILocation(line: 225, column: 7, scope: !5836)
!5843 = !DILocation(line: 224, column: 10, scope: !5836)
!5844 = !DILocation(line: 224, column: 3, scope: !5836)
!5845 = !DILocation(line: 226, column: 32, scope: !5846)
!5846 = distinct !DILexicalBlock(scope: !5836, file: !2, line: 226, column: 11)
!5847 = !DILocation(line: 226, column: 11, scope: !5846)
!5848 = !DILocation(line: 226, column: 11, scope: !5836)
!5849 = !DILocation(line: 227, column: 35, scope: !5846)
!5850 = !DILocation(line: 227, column: 40, scope: !5846)
!5851 = !DILocation(line: 227, column: 47, scope: !5846)
!5852 = !DILocation(line: 228, column: 7, scope: !5846)
!5853 = !DILocation(line: 227, column: 10, scope: !5846)
!5854 = !DILocation(line: 227, column: 3, scope: !5846)
!5855 = !DILocation(line: 230, column: 3, scope: !5846)
!5856 = !DILocation(line: 231, column: 1, scope: !5818)
!5857 = !DISubprogram(name: "release_firmware", scope: !5165, file: !5165, line: 114, type: !5858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5858 = !DISubroutineType(types: !5859)
!5859 = !{null, !5162}
!5860 = distinct !DISubprogram(name: "is_srm_version_hdcp1", scope: !2, file: !2, line: 207, type: !5861, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5863)
!5861 = !DISubroutineType(types: !5862)
!5862 = !{!933, !5169}
!5863 = !{!5864}
!5864 = !DILocalVariable(name: "buf", arg: 1, scope: !5860, file: !2, line: 207, type: !5169)
!5865 = !DILocation(line: 207, column: 51, scope: !5860)
!5866 = !DILocation(line: 209, column: 10, scope: !5860)
!5867 = !DILocation(line: 209, column: 9, scope: !5860)
!5868 = !DILocation(line: 209, column: 14, scope: !5860)
!5869 = !DILocation(line: 209, column: 2, scope: !5860)
!5870 = distinct !DISubprogram(name: "drm_hdcp_parse_hdcp1_srm", scope: !2, file: !2, line: 84, type: !5819, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5871)
!5871 = !{!5872, !5873, !5874, !5875, !5876, !5877, !5878, !5879, !5881}
!5872 = !DILocalVariable(name: "buf", arg: 1, scope: !5870, file: !2, line: 84, type: !5169)
!5873 = !DILocalVariable(name: "count", arg: 2, scope: !5870, file: !2, line: 84, type: !562)
!5874 = !DILocalVariable(name: "revoked_ksv_list", arg: 3, scope: !5870, file: !2, line: 85, type: !5155)
!5875 = !DILocalVariable(name: "revoked_ksv_cnt", arg: 4, scope: !5870, file: !2, line: 85, type: !1918)
!5876 = !DILocalVariable(name: "header", scope: !5870, file: !2, line: 87, type: !288)
!5877 = !DILocalVariable(name: "vrl_length", scope: !5870, file: !2, line: 88, type: !302)
!5878 = !DILocalVariable(name: "ksv_count", scope: !5870, file: !2, line: 88, type: !302)
!5879 = !DILocalVariable(name: "__ret_warn_on", scope: !5880, file: !2, line: 101, type: !115)
!5880 = distinct !DILexicalBlock(scope: !5870, file: !2, line: 101, column: 2)
!5881 = !DILocalVariable(name: "__flags", scope: !5882, file: !2, line: 101, type: !115)
!5882 = distinct !DILexicalBlock(scope: !5883, file: !2, line: 101, column: 2)
!5883 = distinct !DILexicalBlock(scope: !5880, file: !2, line: 101, column: 2)
!5884 = !DILocation(line: 84, column: 47, scope: !5870)
!5885 = !DILocation(line: 84, column: 59, scope: !5870)
!5886 = !DILocation(line: 85, column: 14, scope: !5870)
!5887 = !DILocation(line: 85, column: 37, scope: !5870)
!5888 = !DILocation(line: 87, column: 2, scope: !5870)
!5889 = !DILocation(line: 87, column: 26, scope: !5870)
!5890 = !DILocation(line: 88, column: 2, scope: !5870)
!5891 = !DILocation(line: 88, column: 6, scope: !5870)
!5892 = !DILocation(line: 88, column: 18, scope: !5870)
!5893 = !DILocation(line: 90, column: 6, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5870, file: !2, line: 90, column: 6)
!5895 = !DILocation(line: 90, column: 12, scope: !5894)
!5896 = !DILocation(line: 90, column: 6, scope: !5870)
!5897 = !DILocation(line: 92, column: 3, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5894, file: !2, line: 91, column: 65)
!5899 = !DILocation(line: 93, column: 3, scope: !5898)
!5900 = !DILocation(line: 96, column: 37, scope: !5870)
!5901 = !DILocation(line: 96, column: 9, scope: !5870)
!5902 = !DILocation(line: 97, column: 2, scope: !5870)
!5903 = !DILocation(line: 101, column: 2, scope: !5880)
!5904 = !DILocation(line: 101, column: 2, scope: !5883)
!5905 = !DILocation(line: 101, column: 2, scope: !5882)
!5906 = !DILocation(line: 101, column: 2, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5882, file: !2, line: 101, column: 2)
!5908 = !DILocation(line: 101, column: 2, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5882, file: !2, line: 101, column: 2)
!5910 = !{i64 2155188170, i64 2155188199, i64 2155188245, i64 2155188303, i64 2155188357, i64 2155188411, i64 2155188466, i64 2155188497, i64 2155188805, i64 2155188811, i64 2155188858, i64 2155188881, i64 2155188907}
!5911 = !DILocation(line: 101, column: 2, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5882, file: !2, line: 101, column: 2)
!5913 = !DILocation(line: 101, column: 2, scope: !5870)
!5914 = !DILocation(line: 103, column: 8, scope: !5870)
!5915 = !DILocation(line: 103, column: 12, scope: !5870)
!5916 = !DILocation(line: 103, column: 6, scope: !5870)
!5917 = !DILocation(line: 104, column: 30, scope: !5870)
!5918 = !DILocation(line: 104, column: 15, scope: !5870)
!5919 = !DILocation(line: 104, column: 13, scope: !5870)
!5920 = !DILocation(line: 105, column: 6, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5870, file: !2, line: 105, column: 6)
!5922 = !DILocation(line: 105, column: 48, scope: !5921)
!5923 = !DILocation(line: 105, column: 46, scope: !5921)
!5924 = !DILocation(line: 105, column: 12, scope: !5921)
!5925 = !DILocation(line: 105, column: 60, scope: !5921)
!5926 = !DILocation(line: 106, column: 6, scope: !5921)
!5927 = !DILocation(line: 106, column: 17, scope: !5921)
!5928 = !DILocation(line: 105, column: 6, scope: !5870)
!5929 = !DILocation(line: 108, column: 3, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5921, file: !2, line: 107, column: 34)
!5931 = !DILocation(line: 109, column: 3, scope: !5930)
!5932 = !DILocation(line: 113, column: 13, scope: !5870)
!5933 = !DILocation(line: 116, column: 7, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5870, file: !2, line: 116, column: 6)
!5935 = !DILocation(line: 116, column: 6, scope: !5870)
!5936 = !DILocation(line: 117, column: 3, scope: !5937)
!5937 = distinct !DILexicalBlock(scope: !5934, file: !2, line: 116, column: 19)
!5938 = !DILocation(line: 118, column: 3, scope: !5937)
!5939 = !DILocation(line: 121, column: 6, scope: !5870)
!5940 = !DILocation(line: 122, column: 45, scope: !5870)
!5941 = !DILocation(line: 122, column: 50, scope: !5870)
!5942 = !DILocation(line: 122, column: 14, scope: !5870)
!5943 = !DILocation(line: 122, column: 12, scope: !5870)
!5944 = !DILocation(line: 123, column: 7, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5870, file: !2, line: 123, column: 6)
!5946 = !DILocation(line: 123, column: 6, scope: !5870)
!5947 = !DILocation(line: 124, column: 3, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5945, file: !2, line: 123, column: 18)
!5949 = !DILocation(line: 125, column: 3, scope: !5948)
!5950 = !DILocation(line: 128, column: 30, scope: !5870)
!5951 = !DILocation(line: 128, column: 22, scope: !5870)
!5952 = !DILocation(line: 128, column: 3, scope: !5870)
!5953 = !DILocation(line: 128, column: 20, scope: !5870)
!5954 = !DILocation(line: 129, column: 8, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5870, file: !2, line: 129, column: 6)
!5956 = !DILocation(line: 129, column: 7, scope: !5955)
!5957 = !DILocation(line: 129, column: 6, scope: !5870)
!5958 = !DILocation(line: 130, column: 3, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5955, file: !2, line: 129, column: 26)
!5960 = !DILocation(line: 131, column: 3, scope: !5959)
!5961 = !DILocation(line: 134, column: 32, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5870, file: !2, line: 134, column: 6)
!5963 = !DILocation(line: 134, column: 37, scope: !5962)
!5964 = !DILocation(line: 135, column: 11, scope: !5962)
!5965 = !DILocation(line: 134, column: 6, scope: !5962)
!5966 = !DILocation(line: 135, column: 26, scope: !5962)
!5967 = !DILocation(line: 135, column: 23, scope: !5962)
!5968 = !DILocation(line: 134, column: 6, scope: !5870)
!5969 = !DILocation(line: 136, column: 4, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5962, file: !2, line: 135, column: 37)
!5971 = !DILocation(line: 136, column: 20, scope: !5970)
!5972 = !DILocation(line: 137, column: 10, scope: !5970)
!5973 = !DILocation(line: 137, column: 9, scope: !5970)
!5974 = !DILocation(line: 137, column: 3, scope: !5970)
!5975 = !DILocation(line: 138, column: 3, scope: !5970)
!5976 = !DILocation(line: 141, column: 21, scope: !5870)
!5977 = !DILocation(line: 141, column: 3, scope: !5870)
!5978 = !DILocation(line: 141, column: 19, scope: !5870)
!5979 = !DILocation(line: 142, column: 2, scope: !5870)
!5980 = !DILocation(line: 143, column: 1, scope: !5870)
!5981 = distinct !DISubprogram(name: "is_srm_version_hdcp2", scope: !2, file: !2, line: 212, type: !5861, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5982)
!5982 = !{!5983}
!5983 = !DILocalVariable(name: "buf", arg: 1, scope: !5981, file: !2, line: 212, type: !5169)
!5984 = !DILocation(line: 212, column: 51, scope: !5981)
!5985 = !DILocation(line: 214, column: 10, scope: !5981)
!5986 = !DILocation(line: 214, column: 9, scope: !5981)
!5987 = !DILocation(line: 214, column: 14, scope: !5981)
!5988 = !DILocation(line: 214, column: 2, scope: !5981)
!5989 = distinct !DISubprogram(name: "drm_hdcp_parse_hdcp2_srm", scope: !2, file: !2, line: 145, type: !5819, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5990)
!5990 = !{!5991, !5992, !5993, !5994, !5995, !5996, !5997, !5998}
!5991 = !DILocalVariable(name: "buf", arg: 1, scope: !5989, file: !2, line: 145, type: !5169)
!5992 = !DILocalVariable(name: "count", arg: 2, scope: !5989, file: !2, line: 145, type: !562)
!5993 = !DILocalVariable(name: "revoked_ksv_list", arg: 3, scope: !5989, file: !2, line: 146, type: !5155)
!5994 = !DILocalVariable(name: "revoked_ksv_cnt", arg: 4, scope: !5989, file: !2, line: 146, type: !1918)
!5995 = !DILocalVariable(name: "header", scope: !5989, file: !2, line: 148, type: !288)
!5996 = !DILocalVariable(name: "vrl_length", scope: !5989, file: !2, line: 149, type: !302)
!5997 = !DILocalVariable(name: "ksv_count", scope: !5989, file: !2, line: 149, type: !302)
!5998 = !DILocalVariable(name: "ksv_sz", scope: !5989, file: !2, line: 149, type: !302)
!5999 = !DILocation(line: 145, column: 47, scope: !5989)
!6000 = !DILocation(line: 145, column: 59, scope: !5989)
!6001 = !DILocation(line: 146, column: 14, scope: !5989)
!6002 = !DILocation(line: 146, column: 37, scope: !5989)
!6003 = !DILocation(line: 148, column: 2, scope: !5989)
!6004 = !DILocation(line: 148, column: 26, scope: !5989)
!6005 = !DILocation(line: 149, column: 2, scope: !5989)
!6006 = !DILocation(line: 149, column: 6, scope: !5989)
!6007 = !DILocation(line: 149, column: 18, scope: !5989)
!6008 = !DILocation(line: 149, column: 29, scope: !5989)
!6009 = !DILocation(line: 151, column: 6, scope: !6010)
!6010 = distinct !DILexicalBlock(scope: !5989, file: !2, line: 151, column: 6)
!6011 = !DILocation(line: 151, column: 12, scope: !6010)
!6012 = !DILocation(line: 151, column: 6, scope: !5989)
!6013 = !DILocation(line: 153, column: 3, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !6010, file: !2, line: 152, column: 61)
!6015 = !DILocation(line: 154, column: 3, scope: !6014)
!6016 = !DILocation(line: 157, column: 37, scope: !5989)
!6017 = !DILocation(line: 157, column: 9, scope: !5989)
!6018 = !DILocation(line: 158, column: 2, scope: !5989)
!6019 = !DILocation(line: 162, column: 6, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !5989, file: !2, line: 162, column: 6)
!6021 = !DILocation(line: 162, column: 14, scope: !6020)
!6022 = !DILocation(line: 162, column: 6, scope: !5989)
!6023 = !DILocation(line: 163, column: 3, scope: !6020)
!6024 = !DILocation(line: 165, column: 8, scope: !5989)
!6025 = !DILocation(line: 165, column: 12, scope: !5989)
!6026 = !DILocation(line: 165, column: 6, scope: !5989)
!6027 = !DILocation(line: 166, column: 30, scope: !5989)
!6028 = !DILocation(line: 166, column: 15, scope: !5989)
!6029 = !DILocation(line: 166, column: 13, scope: !5989)
!6030 = !DILocation(line: 168, column: 6, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !5989, file: !2, line: 168, column: 6)
!6032 = !DILocation(line: 168, column: 48, scope: !6031)
!6033 = !DILocation(line: 168, column: 46, scope: !6031)
!6034 = !DILocation(line: 168, column: 12, scope: !6031)
!6035 = !DILocation(line: 168, column: 60, scope: !6031)
!6036 = !DILocation(line: 169, column: 6, scope: !6031)
!6037 = !DILocation(line: 169, column: 17, scope: !6031)
!6038 = !DILocation(line: 168, column: 6, scope: !5989)
!6039 = !DILocation(line: 171, column: 3, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !6031, file: !2, line: 170, column: 32)
!6041 = !DILocation(line: 172, column: 3, scope: !6040)
!6042 = !DILocation(line: 176, column: 13, scope: !5989)
!6043 = !DILocation(line: 179, column: 7, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !5989, file: !2, line: 179, column: 6)
!6045 = !DILocation(line: 179, column: 6, scope: !5989)
!6046 = !DILocation(line: 180, column: 3, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6044, file: !2, line: 179, column: 19)
!6048 = !DILocation(line: 181, column: 3, scope: !6047)
!6049 = !DILocation(line: 184, column: 6, scope: !5989)
!6050 = !DILocation(line: 185, column: 16, scope: !5989)
!6051 = !DILocation(line: 185, column: 15, scope: !5989)
!6052 = !DILocation(line: 185, column: 20, scope: !5989)
!6053 = !DILocation(line: 185, column: 28, scope: !5989)
!6054 = !DILocation(line: 185, column: 26, scope: !5989)
!6055 = !DILocation(line: 185, column: 12, scope: !5989)
!6056 = !DILocation(line: 186, column: 7, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !5989, file: !2, line: 186, column: 6)
!6058 = !DILocation(line: 186, column: 6, scope: !5989)
!6059 = !DILocation(line: 187, column: 3, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6057, file: !2, line: 186, column: 18)
!6061 = !DILocation(line: 188, column: 3, scope: !6060)
!6062 = !DILocation(line: 191, column: 30, scope: !5989)
!6063 = !DILocation(line: 191, column: 22, scope: !5989)
!6064 = !DILocation(line: 191, column: 3, scope: !5989)
!6065 = !DILocation(line: 191, column: 20, scope: !5989)
!6066 = !DILocation(line: 192, column: 8, scope: !6067)
!6067 = distinct !DILexicalBlock(scope: !5989, file: !2, line: 192, column: 6)
!6068 = !DILocation(line: 192, column: 7, scope: !6067)
!6069 = !DILocation(line: 192, column: 6, scope: !5989)
!6070 = !DILocation(line: 193, column: 3, scope: !6071)
!6071 = distinct !DILexicalBlock(scope: !6067, file: !2, line: 192, column: 26)
!6072 = !DILocation(line: 194, column: 3, scope: !6071)
!6073 = !DILocation(line: 197, column: 11, scope: !5989)
!6074 = !DILocation(line: 197, column: 21, scope: !5989)
!6075 = !DILocation(line: 197, column: 9, scope: !5989)
!6076 = !DILocation(line: 198, column: 6, scope: !5989)
!6077 = !DILocation(line: 200, column: 2, scope: !5989)
!6078 = !DILocation(line: 201, column: 10, scope: !5989)
!6079 = !DILocation(line: 201, column: 9, scope: !5989)
!6080 = !DILocation(line: 201, column: 28, scope: !5989)
!6081 = !DILocation(line: 201, column: 33, scope: !5989)
!6082 = !DILocation(line: 201, column: 2, scope: !5989)
!6083 = !DILocation(line: 203, column: 21, scope: !5989)
!6084 = !DILocation(line: 203, column: 3, scope: !5989)
!6085 = !DILocation(line: 203, column: 19, scope: !5989)
!6086 = !DILocation(line: 204, column: 2, scope: !5989)
!6087 = !DILocation(line: 205, column: 1, scope: !5989)
!6088 = !DISubprogram(name: "__drm_err", scope: !155, file: !155, line: 573, type: !6089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6089 = !DISubroutineType(types: !6090)
!6090 = !{null, !281, null}
!6091 = distinct !DISubprogram(name: "get_vrl_length", scope: !2, file: !2, line: 79, type: !6092, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6094)
!6092 = !DISubroutineType(types: !6093)
!6093 = !{!302, !5169}
!6094 = !{!6095}
!6095 = !DILocalVariable(name: "buf", arg: 1, scope: !6091, file: !2, line: 79, type: !5169)
!6096 = !DILocation(line: 79, column: 44, scope: !6091)
!6097 = !DILocation(line: 81, column: 30, scope: !6091)
!6098 = !DILocation(line: 81, column: 9, scope: !6091)
!6099 = !DILocation(line: 81, column: 2, scope: !6091)
!6100 = distinct !DISubprogram(name: "drm_hdcp_get_revoked_ksv_count", scope: !2, file: !2, line: 30, type: !6101, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6103)
!6101 = !DISubroutineType(types: !6102)
!6102 = !{!302, !5169, !302}
!6103 = !{!6104, !6105, !6106, !6107, !6108, !6109}
!6104 = !DILocalVariable(name: "buf", arg: 1, scope: !6100, file: !2, line: 30, type: !5169)
!6105 = !DILocalVariable(name: "vrls_length", arg: 2, scope: !6100, file: !2, line: 30, type: !302)
!6106 = !DILocalVariable(name: "parsed_bytes", scope: !6100, file: !2, line: 32, type: !302)
!6107 = !DILocalVariable(name: "ksv_count", scope: !6100, file: !2, line: 32, type: !302)
!6108 = !DILocalVariable(name: "vrl_ksv_cnt", scope: !6100, file: !2, line: 32, type: !302)
!6109 = !DILocalVariable(name: "vrl_sz", scope: !6100, file: !2, line: 32, type: !302)
!6110 = !DILocation(line: 30, column: 53, scope: !6100)
!6111 = !DILocation(line: 30, column: 62, scope: !6100)
!6112 = !DILocation(line: 32, column: 2, scope: !6100)
!6113 = !DILocation(line: 32, column: 6, scope: !6100)
!6114 = !DILocation(line: 32, column: 24, scope: !6100)
!6115 = !DILocation(line: 32, column: 39, scope: !6100)
!6116 = !DILocation(line: 32, column: 52, scope: !6100)
!6117 = !DILocation(line: 34, column: 2, scope: !6100)
!6118 = !DILocation(line: 34, column: 9, scope: !6100)
!6119 = !DILocation(line: 34, column: 24, scope: !6100)
!6120 = !DILocation(line: 34, column: 22, scope: !6100)
!6121 = !DILocation(line: 35, column: 18, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6100, file: !2, line: 34, column: 37)
!6123 = !DILocation(line: 35, column: 17, scope: !6122)
!6124 = !DILocation(line: 35, column: 15, scope: !6122)
!6125 = !DILocation(line: 36, column: 16, scope: !6122)
!6126 = !DILocation(line: 36, column: 13, scope: !6122)
!6127 = !DILocation(line: 38, column: 13, scope: !6122)
!6128 = !DILocation(line: 38, column: 25, scope: !6122)
!6129 = !DILocation(line: 38, column: 45, scope: !6122)
!6130 = !DILocation(line: 38, column: 10, scope: !6122)
!6131 = !DILocation(line: 39, column: 10, scope: !6122)
!6132 = !DILocation(line: 39, column: 7, scope: !6122)
!6133 = !DILocation(line: 40, column: 19, scope: !6122)
!6134 = !DILocation(line: 40, column: 16, scope: !6122)
!6135 = distinct !{!6135, !6117, !6136, !5141, !5142}
!6136 = !DILocation(line: 41, column: 2, scope: !6100)
!6137 = !DILocation(line: 47, column: 6, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6100, file: !2, line: 47, column: 6)
!6139 = !DILocation(line: 47, column: 22, scope: !6138)
!6140 = !DILocation(line: 47, column: 19, scope: !6138)
!6141 = !DILocation(line: 47, column: 6, scope: !6100)
!6142 = !DILocation(line: 48, column: 13, scope: !6138)
!6143 = !DILocation(line: 48, column: 3, scope: !6138)
!6144 = !DILocation(line: 50, column: 9, scope: !6100)
!6145 = !DILocation(line: 51, column: 1, scope: !6100)
!6146 = !DILocation(line: 50, column: 2, scope: !6100)
!6147 = distinct !DISubprogram(name: "kcalloc", scope: !270, file: !270, line: 666, type: !6148, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6150)
!6148 = !DISubroutineType(types: !6149)
!6149 = !{!280, !562, !562, !300}
!6150 = !{!6151, !6152, !6153}
!6151 = !DILocalVariable(name: "n", arg: 1, scope: !6147, file: !270, line: 666, type: !562)
!6152 = !DILocalVariable(name: "size", arg: 2, scope: !6147, file: !270, line: 666, type: !562)
!6153 = !DILocalVariable(name: "flags", arg: 3, scope: !6147, file: !270, line: 666, type: !300)
!6154 = !DILocation(line: 666, column: 55, scope: !6147)
!6155 = !DILocation(line: 666, column: 65, scope: !6147)
!6156 = !DILocation(line: 666, column: 77, scope: !6147)
!6157 = !DILocation(line: 668, column: 23, scope: !6147)
!6158 = !DILocation(line: 668, column: 26, scope: !6147)
!6159 = !DILocation(line: 668, column: 32, scope: !6147)
!6160 = !DILocation(line: 668, column: 38, scope: !6147)
!6161 = !DILocation(line: 668, column: 9, scope: !6147)
!6162 = !DILocation(line: 668, column: 2, scope: !6147)
!6163 = distinct !DISubprogram(name: "drm_hdcp_get_revoked_ksvs", scope: !2, file: !2, line: 53, type: !6164, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6166)
!6164 = !DISubroutineType(types: !6165)
!6165 = !{!302, !5169, !5155, !302}
!6166 = !{!6167, !6168, !6169, !6170, !6171, !6172, !6173, !6174}
!6167 = !DILocalVariable(name: "buf", arg: 1, scope: !6163, file: !2, line: 53, type: !5169)
!6168 = !DILocalVariable(name: "revoked_ksv_list", arg: 2, scope: !6163, file: !2, line: 53, type: !5155)
!6169 = !DILocalVariable(name: "vrls_length", arg: 3, scope: !6163, file: !2, line: 54, type: !302)
!6170 = !DILocalVariable(name: "vrl_ksv_cnt", scope: !6163, file: !2, line: 56, type: !302)
!6171 = !DILocalVariable(name: "vrl_ksv_sz", scope: !6163, file: !2, line: 56, type: !302)
!6172 = !DILocalVariable(name: "vrl_idx", scope: !6163, file: !2, line: 56, type: !302)
!6173 = !DILocalVariable(name: "parsed_bytes", scope: !6163, file: !2, line: 57, type: !302)
!6174 = !DILocalVariable(name: "ksv_count", scope: !6163, file: !2, line: 57, type: !302)
!6175 = !DILocation(line: 53, column: 48, scope: !6163)
!6176 = !DILocation(line: 53, column: 58, scope: !6163)
!6177 = !DILocation(line: 54, column: 14, scope: !6163)
!6178 = !DILocation(line: 56, column: 2, scope: !6163)
!6179 = !DILocation(line: 56, column: 6, scope: !6163)
!6180 = !DILocation(line: 56, column: 19, scope: !6163)
!6181 = !DILocation(line: 56, column: 31, scope: !6163)
!6182 = !DILocation(line: 57, column: 2, scope: !6163)
!6183 = !DILocation(line: 57, column: 6, scope: !6163)
!6184 = !DILocation(line: 57, column: 24, scope: !6163)
!6185 = !DILocation(line: 59, column: 2, scope: !6163)
!6186 = !DILocation(line: 60, column: 18, scope: !6187)
!6187 = distinct !DILexicalBlock(scope: !6163, file: !2, line: 59, column: 5)
!6188 = !DILocation(line: 60, column: 17, scope: !6187)
!6189 = !DILocation(line: 60, column: 15, scope: !6187)
!6190 = !DILocation(line: 61, column: 16, scope: !6187)
!6191 = !DILocation(line: 61, column: 28, scope: !6187)
!6192 = !DILocation(line: 61, column: 14, scope: !6187)
!6193 = !DILocation(line: 63, column: 6, scope: !6187)
!6194 = !DILocation(line: 65, column: 3, scope: !6187)
!6195 = !DILocation(line: 67, column: 12, scope: !6187)
!6196 = !DILocation(line: 67, column: 11, scope: !6187)
!6197 = !DILocation(line: 67, column: 33, scope: !6187)
!6198 = !DILocation(line: 67, column: 43, scope: !6187)
!6199 = !DILocation(line: 67, column: 30, scope: !6187)
!6200 = !DILocation(line: 68, column: 10, scope: !6187)
!6201 = !DILocation(line: 68, column: 15, scope: !6187)
!6202 = !DILocation(line: 67, column: 3, scope: !6187)
!6203 = !DILocation(line: 70, column: 16, scope: !6187)
!6204 = !DILocation(line: 70, column: 13, scope: !6187)
!6205 = !DILocation(line: 71, column: 10, scope: !6187)
!6206 = !DILocation(line: 71, column: 7, scope: !6187)
!6207 = !DILocation(line: 73, column: 20, scope: !6187)
!6208 = !DILocation(line: 73, column: 31, scope: !6187)
!6209 = !DILocation(line: 73, column: 16, scope: !6187)
!6210 = !DILocation(line: 74, column: 2, scope: !6187)
!6211 = !DILocation(line: 74, column: 11, scope: !6163)
!6212 = !DILocation(line: 74, column: 26, scope: !6163)
!6213 = !DILocation(line: 74, column: 24, scope: !6163)
!6214 = distinct !{!6214, !6185, !6215, !5141, !5142}
!6215 = !DILocation(line: 74, column: 37, scope: !6163)
!6216 = !DILocation(line: 76, column: 9, scope: !6163)
!6217 = !DILocation(line: 77, column: 1, scope: !6163)
!6218 = !DILocation(line: 76, column: 2, scope: !6163)
!6219 = distinct !DISubprogram(name: "drm_hdcp_be24_to_cpu", scope: !290, file: !290, line: 261, type: !6092, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6220)
!6220 = !{!6221}
!6221 = !DILocalVariable(name: "seq_num", arg: 1, scope: !6219, file: !290, line: 261, type: !5169)
!6222 = !DILocation(line: 261, column: 35, scope: !6219)
!6223 = !DILocation(line: 263, column: 15, scope: !6219)
!6224 = !DILocation(line: 263, column: 28, scope: !6219)
!6225 = !DILocation(line: 263, column: 39, scope: !6219)
!6226 = !DILocation(line: 263, column: 26, scope: !6219)
!6227 = !DILocation(line: 263, column: 46, scope: !6219)
!6228 = !DILocation(line: 263, column: 57, scope: !6219)
!6229 = !DILocation(line: 263, column: 44, scope: !6219)
!6230 = !DILocation(line: 263, column: 2, scope: !6219)
!6231 = distinct !DISubprogram(name: "kmalloc_array", scope: !270, file: !270, line: 629, type: !6148, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6232)
!6232 = !{!6233, !6234, !6235, !6236}
!6233 = !DILocalVariable(name: "n", arg: 1, scope: !6231, file: !270, line: 629, type: !562)
!6234 = !DILocalVariable(name: "size", arg: 2, scope: !6231, file: !270, line: 629, type: !562)
!6235 = !DILocalVariable(name: "flags", arg: 3, scope: !6231, file: !270, line: 629, type: !300)
!6236 = !DILocalVariable(name: "bytes", scope: !6231, file: !270, line: 631, type: !562)
!6237 = !DILocation(line: 629, column: 61, scope: !6231)
!6238 = !DILocation(line: 629, column: 71, scope: !6231)
!6239 = !DILocation(line: 629, column: 83, scope: !6231)
!6240 = !DILocation(line: 631, column: 2, scope: !6231)
!6241 = !DILocation(line: 631, column: 9, scope: !6231)
!6242 = !DILocation(line: 633, column: 6, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6231, file: !270, line: 633, column: 6)
!6244 = !DILocation(line: 633, column: 6, scope: !6231)
!6245 = !DILocation(line: 634, column: 3, scope: !6243)
!6246 = !DILocation(line: 635, column: 27, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6231, file: !270, line: 635, column: 6)
!6248 = !DILocation(line: 635, column: 6, scope: !6247)
!6249 = !DILocation(line: 635, column: 30, scope: !6247)
!6250 = !DILocation(line: 635, column: 54, scope: !6247)
!6251 = !DILocation(line: 635, column: 33, scope: !6247)
!6252 = !DILocation(line: 635, column: 6, scope: !6231)
!6253 = !DILocation(line: 636, column: 18, scope: !6247)
!6254 = !DILocation(line: 636, column: 25, scope: !6247)
!6255 = !DILocation(line: 636, column: 10, scope: !6247)
!6256 = !DILocation(line: 636, column: 3, scope: !6247)
!6257 = !DILocation(line: 637, column: 19, scope: !6231)
!6258 = !DILocation(line: 637, column: 26, scope: !6231)
!6259 = !DILocation(line: 637, column: 9, scope: !6231)
!6260 = !DILocation(line: 637, column: 2, scope: !6231)
!6261 = !DILocation(line: 638, column: 1, scope: !6231)
!6262 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6263, file: !6263, line: 51, type: !6264, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6266)
!6263 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6264 = !DISubroutineType(types: !6265)
!6265 = !{!933, !933}
!6266 = !{!6267}
!6267 = !DILocalVariable(name: "overflow", arg: 1, scope: !6262, file: !6263, line: 51, type: !933)
!6268 = !DILocation(line: 51, column: 60, scope: !6262)
!6269 = !DILocation(line: 53, column: 9, scope: !6262)
!6270 = !DILocation(line: 53, column: 2, scope: !6262)
!6271 = distinct !DISubprogram(name: "kmalloc", scope: !270, file: !270, line: 591, type: !6272, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6274)
!6272 = !DISubroutineType(types: !6273)
!6273 = !{!280, !562, !300}
!6274 = !{!6275, !6276, !6277}
!6275 = !DILocalVariable(name: "size", arg: 1, scope: !6271, file: !270, line: 591, type: !562)
!6276 = !DILocalVariable(name: "flags", arg: 2, scope: !6271, file: !270, line: 591, type: !300)
!6277 = !DILocalVariable(name: "index", scope: !6278, file: !270, line: 594, type: !13)
!6278 = distinct !DILexicalBlock(scope: !6279, file: !270, line: 593, column: 42)
!6279 = distinct !DILexicalBlock(scope: !6271, file: !270, line: 593, column: 6)
!6280 = !DILocation(line: 591, column: 61, scope: !6271)
!6281 = !DILocation(line: 591, column: 73, scope: !6271)
!6282 = !DILocation(line: 593, column: 27, scope: !6279)
!6283 = !DILocation(line: 593, column: 6, scope: !6279)
!6284 = !DILocation(line: 593, column: 33, scope: !6279)
!6285 = !DILocation(line: 593, column: 36, scope: !6279)
!6286 = !DILocation(line: 593, column: 6, scope: !6271)
!6287 = !DILocation(line: 594, column: 3, scope: !6278)
!6288 = !DILocation(line: 594, column: 16, scope: !6278)
!6289 = !DILocation(line: 596, column: 7, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6278, file: !270, line: 596, column: 7)
!6291 = !DILocation(line: 596, column: 12, scope: !6290)
!6292 = !DILocation(line: 596, column: 7, scope: !6278)
!6293 = !DILocation(line: 597, column: 25, scope: !6290)
!6294 = !DILocation(line: 597, column: 31, scope: !6290)
!6295 = !DILocation(line: 597, column: 11, scope: !6290)
!6296 = !DILocation(line: 597, column: 4, scope: !6290)
!6297 = !DILocation(line: 599, column: 11, scope: !6278)
!6298 = !DILocation(line: 599, column: 9, scope: !6278)
!6299 = !DILocation(line: 601, column: 33, scope: !6278)
!6300 = !DILocation(line: 601, column: 40, scope: !6278)
!6301 = !DILocation(line: 601, column: 20, scope: !6278)
!6302 = !DILocation(line: 601, column: 5, scope: !6278)
!6303 = !DILocation(line: 601, column: 51, scope: !6278)
!6304 = !DILocation(line: 602, column: 5, scope: !6278)
!6305 = !DILocation(line: 602, column: 12, scope: !6278)
!6306 = !DILocation(line: 600, column: 10, scope: !6278)
!6307 = !DILocation(line: 600, column: 3, scope: !6278)
!6308 = !DILocation(line: 603, column: 2, scope: !6279)
!6309 = !DILocation(line: 604, column: 19, scope: !6271)
!6310 = !DILocation(line: 604, column: 25, scope: !6271)
!6311 = !DILocation(line: 604, column: 9, scope: !6271)
!6312 = !DILocation(line: 604, column: 2, scope: !6271)
!6313 = !DILocation(line: 605, column: 1, scope: !6271)
!6314 = !DISubprogram(name: "__kmalloc", scope: !270, file: !270, line: 488, type: !6272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6315 = !DISubprogram(name: "kmalloc_large", scope: !270, file: !270, line: 531, type: !6272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6316 = distinct !DISubprogram(name: "__kmalloc_index", scope: !270, file: !270, line: 444, type: !6317, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6319)
!6317 = !DISubroutineType(types: !6318)
!6318 = !{!13, !562, !933}
!6319 = !{!6320, !6321}
!6320 = !DILocalVariable(name: "size", arg: 1, scope: !6316, file: !270, line: 444, type: !562)
!6321 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6316, file: !270, line: 445, type: !933)
!6322 = !DILocation(line: 444, column: 60, scope: !6316)
!6323 = !DILocation(line: 445, column: 16, scope: !6316)
!6324 = !DILocation(line: 447, column: 7, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 447, column: 6)
!6326 = !DILocation(line: 447, column: 6, scope: !6316)
!6327 = !DILocation(line: 448, column: 3, scope: !6325)
!6328 = !DILocation(line: 450, column: 6, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 450, column: 6)
!6330 = !DILocation(line: 450, column: 11, scope: !6329)
!6331 = !DILocation(line: 450, column: 6, scope: !6316)
!6332 = !DILocation(line: 451, column: 3, scope: !6329)
!6333 = !DILocation(line: 453, column: 32, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 453, column: 6)
!6335 = !DILocation(line: 453, column: 37, scope: !6334)
!6336 = !DILocation(line: 453, column: 42, scope: !6334)
!6337 = !DILocation(line: 453, column: 45, scope: !6334)
!6338 = !DILocation(line: 453, column: 50, scope: !6334)
!6339 = !DILocation(line: 453, column: 6, scope: !6316)
!6340 = !DILocation(line: 454, column: 3, scope: !6334)
!6341 = !DILocation(line: 455, column: 32, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 455, column: 6)
!6343 = !DILocation(line: 455, column: 37, scope: !6342)
!6344 = !DILocation(line: 455, column: 43, scope: !6342)
!6345 = !DILocation(line: 455, column: 46, scope: !6342)
!6346 = !DILocation(line: 455, column: 51, scope: !6342)
!6347 = !DILocation(line: 455, column: 6, scope: !6316)
!6348 = !DILocation(line: 456, column: 3, scope: !6342)
!6349 = !DILocation(line: 457, column: 6, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 457, column: 6)
!6351 = !DILocation(line: 457, column: 11, scope: !6350)
!6352 = !DILocation(line: 457, column: 6, scope: !6316)
!6353 = !DILocation(line: 457, column: 26, scope: !6350)
!6354 = !DILocation(line: 458, column: 6, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 458, column: 6)
!6356 = !DILocation(line: 458, column: 11, scope: !6355)
!6357 = !DILocation(line: 458, column: 6, scope: !6316)
!6358 = !DILocation(line: 458, column: 26, scope: !6355)
!6359 = !DILocation(line: 459, column: 6, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 459, column: 6)
!6361 = !DILocation(line: 459, column: 11, scope: !6360)
!6362 = !DILocation(line: 459, column: 6, scope: !6316)
!6363 = !DILocation(line: 459, column: 26, scope: !6360)
!6364 = !DILocation(line: 460, column: 6, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 460, column: 6)
!6366 = !DILocation(line: 460, column: 11, scope: !6365)
!6367 = !DILocation(line: 460, column: 6, scope: !6316)
!6368 = !DILocation(line: 460, column: 26, scope: !6365)
!6369 = !DILocation(line: 461, column: 6, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 461, column: 6)
!6371 = !DILocation(line: 461, column: 11, scope: !6370)
!6372 = !DILocation(line: 461, column: 6, scope: !6316)
!6373 = !DILocation(line: 461, column: 26, scope: !6370)
!6374 = !DILocation(line: 462, column: 6, scope: !6375)
!6375 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 462, column: 6)
!6376 = !DILocation(line: 462, column: 11, scope: !6375)
!6377 = !DILocation(line: 462, column: 6, scope: !6316)
!6378 = !DILocation(line: 462, column: 26, scope: !6375)
!6379 = !DILocation(line: 463, column: 6, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 463, column: 6)
!6381 = !DILocation(line: 463, column: 11, scope: !6380)
!6382 = !DILocation(line: 463, column: 6, scope: !6316)
!6383 = !DILocation(line: 463, column: 26, scope: !6380)
!6384 = !DILocation(line: 464, column: 6, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 464, column: 6)
!6386 = !DILocation(line: 464, column: 11, scope: !6385)
!6387 = !DILocation(line: 464, column: 6, scope: !6316)
!6388 = !DILocation(line: 464, column: 26, scope: !6385)
!6389 = !DILocation(line: 465, column: 6, scope: !6390)
!6390 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 465, column: 6)
!6391 = !DILocation(line: 465, column: 11, scope: !6390)
!6392 = !DILocation(line: 465, column: 6, scope: !6316)
!6393 = !DILocation(line: 465, column: 26, scope: !6390)
!6394 = !DILocation(line: 466, column: 6, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 466, column: 6)
!6396 = !DILocation(line: 466, column: 11, scope: !6395)
!6397 = !DILocation(line: 466, column: 6, scope: !6316)
!6398 = !DILocation(line: 466, column: 26, scope: !6395)
!6399 = !DILocation(line: 467, column: 6, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 467, column: 6)
!6401 = !DILocation(line: 467, column: 11, scope: !6400)
!6402 = !DILocation(line: 467, column: 6, scope: !6316)
!6403 = !DILocation(line: 467, column: 26, scope: !6400)
!6404 = !DILocation(line: 468, column: 6, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 468, column: 6)
!6406 = !DILocation(line: 468, column: 11, scope: !6405)
!6407 = !DILocation(line: 468, column: 6, scope: !6316)
!6408 = !DILocation(line: 468, column: 26, scope: !6405)
!6409 = !DILocation(line: 469, column: 6, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 469, column: 6)
!6411 = !DILocation(line: 469, column: 11, scope: !6410)
!6412 = !DILocation(line: 469, column: 6, scope: !6316)
!6413 = !DILocation(line: 469, column: 26, scope: !6410)
!6414 = !DILocation(line: 470, column: 6, scope: !6415)
!6415 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 470, column: 6)
!6416 = !DILocation(line: 470, column: 11, scope: !6415)
!6417 = !DILocation(line: 470, column: 6, scope: !6316)
!6418 = !DILocation(line: 470, column: 26, scope: !6415)
!6419 = !DILocation(line: 471, column: 6, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 471, column: 6)
!6421 = !DILocation(line: 471, column: 11, scope: !6420)
!6422 = !DILocation(line: 471, column: 6, scope: !6316)
!6423 = !DILocation(line: 471, column: 26, scope: !6420)
!6424 = !DILocation(line: 472, column: 6, scope: !6425)
!6425 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 472, column: 6)
!6426 = !DILocation(line: 472, column: 11, scope: !6425)
!6427 = !DILocation(line: 472, column: 6, scope: !6316)
!6428 = !DILocation(line: 472, column: 26, scope: !6425)
!6429 = !DILocation(line: 473, column: 6, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 473, column: 6)
!6431 = !DILocation(line: 473, column: 11, scope: !6430)
!6432 = !DILocation(line: 473, column: 6, scope: !6316)
!6433 = !DILocation(line: 473, column: 26, scope: !6430)
!6434 = !DILocation(line: 474, column: 6, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 474, column: 6)
!6436 = !DILocation(line: 474, column: 11, scope: !6435)
!6437 = !DILocation(line: 474, column: 6, scope: !6316)
!6438 = !DILocation(line: 474, column: 27, scope: !6435)
!6439 = !DILocation(line: 475, column: 6, scope: !6440)
!6440 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 475, column: 6)
!6441 = !DILocation(line: 475, column: 11, scope: !6440)
!6442 = !DILocation(line: 475, column: 6, scope: !6316)
!6443 = !DILocation(line: 475, column: 32, scope: !6440)
!6444 = !DILocation(line: 477, column: 50, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6316, file: !270, line: 477, column: 6)
!6446 = !DILocation(line: 477, column: 6, scope: !6316)
!6447 = !DILocation(line: 478, column: 3, scope: !6445)
!6448 = !DILocation(line: 478, column: 3, scope: !6449)
!6449 = distinct !DILexicalBlock(scope: !6450, file: !270, line: 478, column: 3)
!6450 = distinct !DILexicalBlock(scope: !6445, file: !270, line: 478, column: 3)
!6451 = !{i32 -2142314501}
!6452 = !DILocation(line: 478, column: 3, scope: !6450)
!6453 = !DILocation(line: 480, column: 3, scope: !6445)
!6454 = !DILocation(line: 480, column: 3, scope: !6455)
!6455 = distinct !DILexicalBlock(scope: !6445, file: !270, line: 480, column: 3)
!6456 = !DILocation(line: 480, column: 3, scope: !6457)
!6457 = distinct !DILexicalBlock(scope: !6455, file: !270, line: 480, column: 3)
!6458 = !DILocation(line: 480, column: 3, scope: !6459)
!6459 = distinct !DILexicalBlock(scope: !6455, file: !270, line: 480, column: 3)
!6460 = !{i64 2152652998, i64 2152653027, i64 2152653073, i64 2152653131, i64 2152653185, i64 2152653239, i64 2152653294, i64 2152653325}
!6461 = !DILocation(line: 483, column: 2, scope: !6316)
!6462 = !DILocation(line: 484, column: 1, scope: !6316)
!6463 = !DISubprogram(name: "kmalloc_trace", scope: !270, file: !270, line: 525, type: !6464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6464 = !DISubroutineType(types: !6465)
!6465 = !{!280, !3260, !300, !562}
!6466 = distinct !DISubprogram(name: "kmalloc_type", scope: !270, file: !270, line: 401, type: !6467, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6469)
!6467 = !DISubroutineType(types: !6468)
!6468 = !{!269, !300, !304}
!6469 = !{!6470, !6471}
!6470 = !DILocalVariable(name: "flags", arg: 1, scope: !6466, file: !270, line: 401, type: !300)
!6471 = !DILocalVariable(name: "caller", arg: 2, scope: !6466, file: !270, line: 401, type: !304)
!6472 = !DILocation(line: 401, column: 67, scope: !6466)
!6473 = !DILocation(line: 401, column: 88, scope: !6466)
!6474 = !DILocation(line: 407, column: 6, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6466, file: !270, line: 407, column: 6)
!6476 = !DILocation(line: 407, column: 6, scope: !6466)
!6477 = !DILocation(line: 413, column: 3, scope: !6475)
!6478 = !DILocation(line: 423, column: 38, scope: !6479)
!6479 = distinct !DILexicalBlock(scope: !6466, file: !270, line: 423, column: 6)
!6480 = !DILocation(line: 423, column: 44, scope: !6479)
!6481 = !DILocation(line: 423, column: 6, scope: !6466)
!6482 = !DILocation(line: 424, column: 3, scope: !6479)
!6483 = !DILocation(line: 426, column: 3, scope: !6484)
!6484 = distinct !DILexicalBlock(scope: !6466, file: !270, line: 425, column: 6)
!6485 = !DILocation(line: 429, column: 1, scope: !6466)
!6486 = !DISubprogram(name: "__compiletime_assert_204", scope: !270, file: !270, line: 478, type: !1216, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6487 = distinct !DISubprogram(name: "ww_mutex_is_locked", scope: !4830, file: !4830, line: 364, type: !6488, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6491)
!6488 = !DISubroutineType(types: !6489)
!6489 = !{!933, !6490}
!6490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!6491 = !{!6492}
!6492 = !DILocalVariable(name: "lock", arg: 1, scope: !6487, file: !4830, line: 364, type: !6490)
!6493 = !DILocation(line: 364, column: 56, scope: !6487)
!6494 = !DILocation(line: 366, column: 9, scope: !6487)
!6495 = !DILocation(line: 366, column: 2, scope: !6487)
!6496 = !DISubprogram(name: "mutex_is_locked", scope: !854, file: !854, line: 130, type: !6497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6497 = !DISubroutineType(types: !6498)
!6498 = !{!933, !6499}
!6499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
