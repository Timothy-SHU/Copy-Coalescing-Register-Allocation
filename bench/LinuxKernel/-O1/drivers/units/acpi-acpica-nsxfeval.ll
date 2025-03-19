; ModuleID = 'drivers/acpi/acpica/nsxfeval.c'
source_filename = "drivers/acpi/acpica/nsxfeval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_evaluate_object_typed: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_evaluate_object_typed ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_evaluate_object: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_evaluate_object ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_walk_namespace: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_walk_namespace ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_devices: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_devices ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_attach_data: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_attach_data ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_detach_data: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_detach_data ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_data_full: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_data_full ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_data: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_data ; .previous"

%struct.acpi_rw_lock = type { ptr, ptr, i32 }
%struct.acpi_buffer = type { i64, ptr }
%struct.acpi_evaluate_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i8, i8, i8 }
%struct.acpi_object_list = type { i32, ptr }
%union.acpi_object = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32, i64, i32 }
%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_get_devices_info = type { ptr, ptr, ptr }
%struct.acpi_pnp_device_id = type { i32, ptr }
%struct.acpi_pnp_device_id_list = type { i32, i32, [0 x %struct.acpi_pnp_device_id] }

@_acpi_module_name = internal constant [9 x i8] c"nsxfeval\00", align 1, !dbg !0
@.str = private unnamed_addr constant [29 x i8] c"%s did not return any object\00", align 1, !dbg !872
@.str.1 = private unnamed_addr constant [62 x i8] c"Incorrect return type from %s - received [%s], requested [%s]\00", align 1, !dbg !877
@__UNIQUE_ID___addressable_acpi_evaluate_object_typed174 = internal global ptr @acpi_evaluate_object_typed, section ".discard.addressable", align 8, !dbg !882
@.str.2 = private unnamed_addr constant [38 x i8] c"Excess arguments (%u) - using only %u\00", align 1, !dbg !884
@__UNIQUE_ID___addressable_acpi_evaluate_object175 = internal global ptr @acpi_evaluate_object, section ".discard.addressable", align 8, !dbg !889
@acpi_gbl_namespace_rw_lock = external dso_local global %struct.acpi_rw_lock, align 8
@__UNIQUE_ID___addressable_acpi_walk_namespace176 = internal global ptr @acpi_walk_namespace, section ".discard.addressable", align 8, !dbg !891
@__UNIQUE_ID___addressable_acpi_get_devices177 = internal global ptr @acpi_get_devices, section ".discard.addressable", align 8, !dbg !893
@__UNIQUE_ID___addressable_acpi_attach_data178 = internal global ptr @acpi_attach_data, section ".discard.addressable", align 8, !dbg !895
@__UNIQUE_ID___addressable_acpi_detach_data179 = internal global ptr @acpi_detach_data, section ".discard.addressable", align 8, !dbg !897
@__UNIQUE_ID___addressable_acpi_get_data_full180 = internal global ptr @acpi_get_data_full, section ".discard.addressable", align 8, !dbg !899
@__UNIQUE_ID___addressable_acpi_get_data181 = internal global ptr @acpi_get_data, section ".discard.addressable", align 8, !dbg !901
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !903
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_evaluate_object_typed174, ptr @__UNIQUE_ID___addressable_acpi_evaluate_object175, ptr @__UNIQUE_ID___addressable_acpi_walk_namespace176, ptr @__UNIQUE_ID___addressable_acpi_get_devices177, ptr @__UNIQUE_ID___addressable_acpi_attach_data178, ptr @__UNIQUE_ID___addressable_acpi_detach_data179, ptr @__UNIQUE_ID___addressable_acpi_get_data_full180, ptr @__UNIQUE_ID___addressable_acpi_get_data181], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_evaluate_object_typed(ptr noundef %handle, ptr noundef %pathname, ptr noundef %external_params, ptr noundef %return_buffer, i32 noundef %return_type) #0 align 16 !dbg !919 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  %external_params.addr = alloca ptr, align 8
  %return_buffer.addr = alloca ptr, align 8
  %return_type.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %free_buffer_on_error = alloca i8, align 1
  %target_handle = alloca ptr, align 8
  %full_pathname = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !934, metadata !DIExpression()), !dbg !944
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !935, metadata !DIExpression()), !dbg !945
  store ptr %external_params, ptr %external_params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %external_params.addr, metadata !936, metadata !DIExpression()), !dbg !946
  store ptr %return_buffer, ptr %return_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_buffer.addr, metadata !937, metadata !DIExpression()), !dbg !947
  store i32 %return_type, ptr %return_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %return_type.addr, metadata !938, metadata !DIExpression()), !dbg !948
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !949
  call void @llvm.dbg.declare(metadata ptr %status, metadata !939, metadata !DIExpression()), !dbg !950
  call void @llvm.lifetime.start.p0(i64 1, ptr %free_buffer_on_error) #13, !dbg !951
  call void @llvm.dbg.declare(metadata ptr %free_buffer_on_error, metadata !940, metadata !DIExpression()), !dbg !952
  store i8 0, ptr %free_buffer_on_error, align 1, !dbg !952
  call void @llvm.lifetime.start.p0(i64 8, ptr %target_handle) #13, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %target_handle, metadata !941, metadata !DIExpression()), !dbg !954
  call void @llvm.lifetime.start.p0(i64 8, ptr %full_pathname) #13, !dbg !955
  call void @llvm.dbg.declare(metadata ptr %full_pathname, metadata !942, metadata !DIExpression()), !dbg !956
  %0 = load ptr, ptr %return_buffer.addr, align 8, !dbg !957
  %tobool = icmp ne ptr %0, null, !dbg !957
  br i1 %tobool, label %if.end, label %if.then, !dbg !959

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !960
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !960

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %return_buffer.addr, align 8, !dbg !962
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %1, i32 0, i32 0, !dbg !964
  %2 = load i64, ptr %length, align 8, !dbg !964
  %cmp = icmp eq i64 %2, -1, !dbg !965
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !966

if.then1:                                         ; preds = %if.end
  store i8 1, ptr %free_buffer_on_error, align 1, !dbg !967
  br label %if.end2, !dbg !969

if.end2:                                          ; preds = %if.then1, %if.end
  %3 = load ptr, ptr %handle.addr, align 8, !dbg !970
  store ptr %3, ptr %target_handle, align 8, !dbg !971
  %4 = load ptr, ptr %pathname.addr, align 8, !dbg !972
  %tobool3 = icmp ne ptr %4, null, !dbg !972
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !974

if.then4:                                         ; preds = %if.end2
  %5 = load ptr, ptr %handle.addr, align 8, !dbg !975
  %6 = load ptr, ptr %pathname.addr, align 8, !dbg !977
  %call = call i32 @acpi_get_handle(ptr noundef %5, ptr noundef %6, ptr noundef %target_handle) #14, !dbg !978
  store i32 %call, ptr %status, align 4, !dbg !979
  %7 = load i32, ptr %status, align 4, !dbg !980
  %tobool5 = icmp ne i32 %7, 0, !dbg !980
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !982

if.then6:                                         ; preds = %if.then4
  %8 = load i32, ptr %status, align 4, !dbg !983
  store i32 %8, ptr %retval, align 4, !dbg !983
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !983

if.end7:                                          ; preds = %if.then4
  br label %if.end8, !dbg !985

if.end8:                                          ; preds = %if.end7, %if.end2
  %9 = load ptr, ptr %target_handle, align 8, !dbg !986
  %call9 = call ptr @acpi_ns_get_external_pathname(ptr noundef %9) #14, !dbg !987
  store ptr %call9, ptr %full_pathname, align 8, !dbg !988
  %10 = load ptr, ptr %full_pathname, align 8, !dbg !989
  %tobool10 = icmp ne ptr %10, null, !dbg !989
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !991

if.then11:                                        ; preds = %if.end8
  store i32 4, ptr %retval, align 4, !dbg !992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !992

if.end12:                                         ; preds = %if.end8
  %11 = load ptr, ptr %target_handle, align 8, !dbg !994
  %12 = load ptr, ptr %external_params.addr, align 8, !dbg !995
  %13 = load ptr, ptr %return_buffer.addr, align 8, !dbg !996
  %call13 = call i32 @acpi_evaluate_object(ptr noundef %11, ptr noundef null, ptr noundef %12, ptr noundef %13) #14, !dbg !997
  store i32 %call13, ptr %status, align 4, !dbg !998
  %14 = load i32, ptr %status, align 4, !dbg !999
  %tobool14 = icmp ne i32 %14, 0, !dbg !999
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1001

if.then15:                                        ; preds = %if.end12
  br label %exit, !dbg !1002

if.end16:                                         ; preds = %if.end12
  %15 = load i32, ptr %return_type.addr, align 4, !dbg !1004
  %cmp17 = icmp eq i32 %15, 0, !dbg !1006
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !1007

if.then18:                                        ; preds = %if.end16
  br label %exit, !dbg !1008

if.end19:                                         ; preds = %if.end16
  %16 = load ptr, ptr %return_buffer.addr, align 8, !dbg !1010
  %length20 = getelementptr inbounds %struct.acpi_buffer, ptr %16, i32 0, i32 0, !dbg !1012
  %17 = load i64, ptr %length20, align 8, !dbg !1012
  %cmp21 = icmp eq i64 %17, 0, !dbg !1013
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1014

if.then22:                                        ; preds = %if.end19
  %18 = load ptr, ptr %full_pathname, align 8, !dbg !1015
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 100, ptr noundef @.str, ptr noundef %18) #14, !dbg !1015
  store i32 9, ptr %status, align 4, !dbg !1017
  br label %exit, !dbg !1018

if.end23:                                         ; preds = %if.end19
  %19 = load ptr, ptr %return_buffer.addr, align 8, !dbg !1019
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %19, i32 0, i32 1, !dbg !1021
  %20 = load ptr, ptr %pointer, align 8, !dbg !1021
  %21 = load i32, ptr %20, align 8, !dbg !1022
  %22 = load i32, ptr %return_type.addr, align 4, !dbg !1023
  %cmp24 = icmp eq i32 %21, %22, !dbg !1024
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1025

if.then25:                                        ; preds = %if.end23
  br label %exit, !dbg !1026

if.end26:                                         ; preds = %if.end23
  %23 = load ptr, ptr %full_pathname, align 8, !dbg !1028
  %24 = load ptr, ptr %return_buffer.addr, align 8, !dbg !1028
  %pointer27 = getelementptr inbounds %struct.acpi_buffer, ptr %24, i32 0, i32 1, !dbg !1028
  %25 = load ptr, ptr %pointer27, align 8, !dbg !1028
  %26 = load i32, ptr %25, align 8, !dbg !1028
  %call28 = call ptr @acpi_ut_get_type_name(i32 noundef %26) #14, !dbg !1028
  %27 = load i32, ptr %return_type.addr, align 4, !dbg !1028
  %call29 = call ptr @acpi_ut_get_type_name(i32 noundef %27) #14, !dbg !1028
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 114, ptr noundef @.str.1, ptr noundef %23, ptr noundef %call28, ptr noundef %call29) #14, !dbg !1028
  %28 = load i8, ptr %free_buffer_on_error, align 1, !dbg !1029
  %tobool30 = icmp ne i8 %28, 0, !dbg !1029
  br i1 %tobool30, label %if.then31, label %if.end34, !dbg !1031

if.then31:                                        ; preds = %if.end26
  %29 = load ptr, ptr %return_buffer.addr, align 8, !dbg !1032
  %pointer32 = getelementptr inbounds %struct.acpi_buffer, ptr %29, i32 0, i32 1, !dbg !1034
  %30 = load ptr, ptr %pointer32, align 8, !dbg !1034
  call void @acpi_os_free(ptr noundef %30) #14, !dbg !1035
  %31 = load ptr, ptr %return_buffer.addr, align 8, !dbg !1036
  %pointer33 = getelementptr inbounds %struct.acpi_buffer, ptr %31, i32 0, i32 1, !dbg !1037
  store ptr null, ptr %pointer33, align 8, !dbg !1038
  br label %if.end34, !dbg !1039

if.end34:                                         ; preds = %if.then31, %if.end26
  %32 = load ptr, ptr %return_buffer.addr, align 8, !dbg !1040
  %length35 = getelementptr inbounds %struct.acpi_buffer, ptr %32, i32 0, i32 0, !dbg !1041
  store i64 0, ptr %length35, align 8, !dbg !1042
  store i32 8, ptr %status, align 4, !dbg !1043
  br label %exit, !dbg !1044

exit:                                             ; preds = %if.end34, %if.then25, %if.then22, %if.then18, %if.then15
  call void @llvm.dbg.label(metadata !943), !dbg !1045
  %33 = load ptr, ptr %full_pathname, align 8, !dbg !1046
  call void @acpi_os_free(ptr noundef %33) #14, !dbg !1046
  %34 = load i32, ptr %status, align 4, !dbg !1047
  store i32 %34, ptr %retval, align 4, !dbg !1047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1047

cleanup:                                          ; preds = %exit, %if.then11, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %full_pathname) #13, !dbg !1048
  call void @llvm.lifetime.end.p0(i64 8, ptr %target_handle) #13, !dbg !1048
  call void @llvm.lifetime.end.p0(i64 1, ptr %free_buffer_on_error) #13, !dbg !1048
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1048
  %35 = load i32, ptr %retval, align 4, !dbg !1048
  ret i32 %35, !dbg !1048
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1049 dso_local i32 @acpi_get_handle(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1055 dso_local ptr @acpi_ns_get_external_pathname(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_evaluate_object(ptr noundef %handle, ptr noundef %pathname, ptr noundef %external_params, ptr noundef %return_buffer) #0 align 16 !dbg !1059 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  %external_params.addr = alloca ptr, align 8
  %return_buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %info = alloca ptr, align 8
  %buffer_space_needed = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1063, metadata !DIExpression()), !dbg !1137
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !1064, metadata !DIExpression()), !dbg !1138
  store ptr %external_params, ptr %external_params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %external_params.addr, metadata !1065, metadata !DIExpression()), !dbg !1139
  store ptr %return_buffer, ptr %return_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_buffer.addr, metadata !1066, metadata !DIExpression()), !dbg !1140
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1141
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1067, metadata !DIExpression()), !dbg !1142
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #13, !dbg !1143
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1068, metadata !DIExpression()), !dbg !1144
  call void @llvm.lifetime.start.p0(i64 8, ptr %buffer_space_needed) #13, !dbg !1145
  call void @llvm.dbg.declare(metadata ptr %buffer_space_needed, metadata !1133, metadata !DIExpression()), !dbg !1146
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1147
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1134, metadata !DIExpression()), !dbg !1148
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef 88) #14, !dbg !1149
  store ptr %call, ptr %info, align 8, !dbg !1150
  %0 = load ptr, ptr %info, align 8, !dbg !1151
  %tobool = icmp ne ptr %0, null, !dbg !1151
  br i1 %tobool, label %if.end, label %if.then, !dbg !1153

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !1154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup97, !dbg !1154

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %handle.addr, align 8, !dbg !1156
  %call1 = call ptr @acpi_ns_validate_handle(ptr noundef %1) #14, !dbg !1157
  %2 = load ptr, ptr %info, align 8, !dbg !1158
  %prefix_node = getelementptr inbounds %struct.acpi_evaluate_info, ptr %2, i32 0, i32 0, !dbg !1159
  store ptr %call1, ptr %prefix_node, align 8, !dbg !1160
  %3 = load ptr, ptr %info, align 8, !dbg !1161
  %prefix_node2 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %3, i32 0, i32 0, !dbg !1163
  %4 = load ptr, ptr %prefix_node2, align 8, !dbg !1163
  %tobool3 = icmp ne ptr %4, null, !dbg !1161
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1164

if.then4:                                         ; preds = %if.end
  store i32 4097, ptr %status, align 4, !dbg !1165
  br label %cleanup, !dbg !1167

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %pathname.addr, align 8, !dbg !1168
  %tobool6 = icmp ne ptr %5, null, !dbg !1170
  br i1 %tobool6, label %land.lhs.true, label %if.else, !dbg !1171

land.lhs.true:                                    ; preds = %if.end5
  %6 = load ptr, ptr %pathname.addr, align 8, !dbg !1172
  %arrayidx = getelementptr i8, ptr %6, i64 0, !dbg !1172
  %7 = load i8, ptr %arrayidx, align 1, !dbg !1172
  %conv = zext i8 %7 to i32, !dbg !1172
  %cmp = icmp eq i32 %conv, 92, !dbg !1172
  br i1 %cmp, label %if.then8, label %if.else, !dbg !1173

if.then8:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %info, align 8, !dbg !1174
  %prefix_node9 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %8, i32 0, i32 0, !dbg !1176
  store ptr null, ptr %prefix_node9, align 8, !dbg !1177
  br label %if.end17, !dbg !1178

if.else:                                          ; preds = %land.lhs.true, %if.end5
  %9 = load ptr, ptr %handle.addr, align 8, !dbg !1179
  %tobool10 = icmp ne ptr %9, null, !dbg !1179
  br i1 %tobool10, label %if.end16, label %if.then11, !dbg !1181

if.then11:                                        ; preds = %if.else
  %10 = load ptr, ptr %pathname.addr, align 8, !dbg !1182
  %tobool12 = icmp ne ptr %10, null, !dbg !1182
  br i1 %tobool12, label %if.else14, label %if.then13, !dbg !1185

if.then13:                                        ; preds = %if.then11
  br label %if.end15, !dbg !1186

if.else14:                                        ; preds = %if.then11
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.then13
  store i32 4097, ptr %status, align 4, !dbg !1188
  br label %cleanup, !dbg !1189

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then8
  %11 = load ptr, ptr %pathname.addr, align 8, !dbg !1190
  %12 = load ptr, ptr %info, align 8, !dbg !1191
  %relative_pathname = getelementptr inbounds %struct.acpi_evaluate_info, ptr %12, i32 0, i32 1, !dbg !1192
  store ptr %11, ptr %relative_pathname, align 8, !dbg !1193
  %13 = load ptr, ptr %external_params.addr, align 8, !dbg !1194
  %tobool18 = icmp ne ptr %13, null, !dbg !1194
  br i1 %tobool18, label %land.lhs.true19, label %if.end56, !dbg !1196

land.lhs.true19:                                  ; preds = %if.end17
  %14 = load ptr, ptr %external_params.addr, align 8, !dbg !1197
  %count = getelementptr inbounds %struct.acpi_object_list, ptr %14, i32 0, i32 0, !dbg !1198
  %15 = load i32, ptr %count, align 8, !dbg !1198
  %tobool20 = icmp ne i32 %15, 0, !dbg !1197
  br i1 %tobool20, label %if.then21, label %if.end56, !dbg !1199

if.then21:                                        ; preds = %land.lhs.true19
  %16 = load ptr, ptr %external_params.addr, align 8, !dbg !1200
  %count22 = getelementptr inbounds %struct.acpi_object_list, ptr %16, i32 0, i32 0, !dbg !1202
  %17 = load i32, ptr %count22, align 8, !dbg !1202
  %conv23 = trunc i32 %17 to i16, !dbg !1203
  %18 = load ptr, ptr %info, align 8, !dbg !1204
  %param_count = getelementptr inbounds %struct.acpi_evaluate_info, ptr %18, i32 0, i32 11, !dbg !1205
  store i16 %conv23, ptr %param_count, align 8, !dbg !1206
  %19 = load ptr, ptr %info, align 8, !dbg !1207
  %param_count24 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %19, i32 0, i32 11, !dbg !1209
  %20 = load i16, ptr %param_count24, align 8, !dbg !1209
  %conv25 = zext i16 %20 to i32, !dbg !1207
  %cmp26 = icmp sgt i32 %conv25, 7, !dbg !1210
  br i1 %cmp26, label %if.then28, label %if.end32, !dbg !1211

if.then28:                                        ; preds = %if.then21
  %21 = load ptr, ptr %pathname.addr, align 8, !dbg !1212
  %22 = load ptr, ptr %info, align 8, !dbg !1212
  %param_count29 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %22, i32 0, i32 11, !dbg !1212
  %23 = load i16, ptr %param_count29, align 8, !dbg !1212
  %conv30 = zext i16 %23 to i32, !dbg !1212
  call void (ptr, i32, ptr, i16, ptr, ...) @acpi_ut_predefined_warning(ptr noundef @_acpi_module_name, i32 noundef 234, ptr noundef %21, i16 noundef zeroext 0, ptr noundef @.str.2, i32 noundef %conv30, i32 noundef 7) #14, !dbg !1212
  %24 = load ptr, ptr %info, align 8, !dbg !1214
  %param_count31 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %24, i32 0, i32 11, !dbg !1215
  store i16 7, ptr %param_count31, align 8, !dbg !1216
  br label %if.end32, !dbg !1217

if.end32:                                         ; preds = %if.then28, %if.then21
  %25 = load ptr, ptr %info, align 8, !dbg !1218
  %param_count33 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %25, i32 0, i32 11, !dbg !1218
  %26 = load i16, ptr %param_count33, align 8, !dbg !1218
  %conv34 = zext i16 %26 to i64, !dbg !1218
  %add = add i64 %conv34, 1, !dbg !1218
  %mul = mul i64 %add, 8, !dbg !1218
  %call35 = call ptr @acpi_os_allocate_zeroed(i64 noundef %mul) #14, !dbg !1218
  %27 = load ptr, ptr %info, align 8, !dbg !1219
  %parameters = getelementptr inbounds %struct.acpi_evaluate_info, ptr %27, i32 0, i32 2, !dbg !1220
  store ptr %call35, ptr %parameters, align 8, !dbg !1221
  %28 = load ptr, ptr %info, align 8, !dbg !1222
  %parameters36 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %28, i32 0, i32 2, !dbg !1224
  %29 = load ptr, ptr %parameters36, align 8, !dbg !1224
  %tobool37 = icmp ne ptr %29, null, !dbg !1222
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !1225

if.then38:                                        ; preds = %if.end32
  store i32 4, ptr %status, align 4, !dbg !1226
  br label %cleanup, !dbg !1228

if.end39:                                         ; preds = %if.end32
  store i32 0, ptr %i, align 4, !dbg !1229
  br label %for.cond, !dbg !1231

for.cond:                                         ; preds = %for.inc, %if.end39
  %30 = load i32, ptr %i, align 4, !dbg !1232
  %31 = load ptr, ptr %info, align 8, !dbg !1234
  %param_count40 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %31, i32 0, i32 11, !dbg !1235
  %32 = load i16, ptr %param_count40, align 8, !dbg !1235
  %conv41 = zext i16 %32 to i32, !dbg !1234
  %cmp42 = icmp ult i32 %30, %conv41, !dbg !1236
  br i1 %cmp42, label %for.body, label %for.end, !dbg !1237

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %external_params.addr, align 8, !dbg !1238
  %pointer = getelementptr inbounds %struct.acpi_object_list, ptr %33, i32 0, i32 1, !dbg !1240
  %34 = load ptr, ptr %pointer, align 8, !dbg !1240
  %35 = load i32, ptr %i, align 4, !dbg !1241
  %idxprom = zext i32 %35 to i64, !dbg !1238
  %arrayidx44 = getelementptr %union.acpi_object, ptr %34, i64 %idxprom, !dbg !1238
  %36 = load ptr, ptr %info, align 8, !dbg !1242
  %parameters45 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %36, i32 0, i32 2, !dbg !1243
  %37 = load ptr, ptr %parameters45, align 8, !dbg !1243
  %38 = load i32, ptr %i, align 4, !dbg !1244
  %idxprom46 = zext i32 %38 to i64, !dbg !1242
  %arrayidx47 = getelementptr ptr, ptr %37, i64 %idxprom46, !dbg !1242
  %call48 = call i32 @acpi_ut_copy_eobject_to_iobject(ptr noundef %arrayidx44, ptr noundef %arrayidx47) #14, !dbg !1245
  store i32 %call48, ptr %status, align 4, !dbg !1246
  %39 = load i32, ptr %status, align 4, !dbg !1247
  %tobool49 = icmp ne i32 %39, 0, !dbg !1247
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !1249

if.then50:                                        ; preds = %for.body
  br label %cleanup, !dbg !1250

if.end51:                                         ; preds = %for.body
  br label %for.inc, !dbg !1252

for.inc:                                          ; preds = %if.end51
  %40 = load i32, ptr %i, align 4, !dbg !1253
  %inc = add i32 %40, 1, !dbg !1253
  store i32 %inc, ptr %i, align 4, !dbg !1253
  br label %for.cond, !dbg !1254, !llvm.loop !1255

for.end:                                          ; preds = %for.cond
  %41 = load ptr, ptr %info, align 8, !dbg !1259
  %parameters52 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %41, i32 0, i32 2, !dbg !1260
  %42 = load ptr, ptr %parameters52, align 8, !dbg !1260
  %43 = load ptr, ptr %info, align 8, !dbg !1261
  %param_count53 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %43, i32 0, i32 11, !dbg !1262
  %44 = load i16, ptr %param_count53, align 8, !dbg !1262
  %idxprom54 = zext i16 %44 to i64, !dbg !1259
  %arrayidx55 = getelementptr ptr, ptr %42, i64 %idxprom54, !dbg !1259
  store ptr null, ptr %arrayidx55, align 8, !dbg !1263
  br label %if.end56, !dbg !1264

if.end56:                                         ; preds = %for.end, %land.lhs.true19, %if.end17
  %45 = load ptr, ptr %info, align 8, !dbg !1265
  %call57 = call i32 @acpi_ns_evaluate(ptr noundef %45) #14, !dbg !1266
  store i32 %call57, ptr %status, align 4, !dbg !1267
  %46 = load ptr, ptr %return_buffer.addr, align 8, !dbg !1268
  %tobool58 = icmp ne ptr %46, null, !dbg !1268
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !1270

if.then59:                                        ; preds = %if.end56
  br label %cleanup_return_object, !dbg !1271

if.end60:                                         ; preds = %if.end56
  %47 = load ptr, ptr %info, align 8, !dbg !1273
  %return_object = getelementptr inbounds %struct.acpi_evaluate_info, ptr %47, i32 0, i32 7, !dbg !1275
  %48 = load ptr, ptr %return_object, align 8, !dbg !1275
  %tobool61 = icmp ne ptr %48, null, !dbg !1273
  br i1 %tobool61, label %if.end63, label %if.then62, !dbg !1276

if.then62:                                        ; preds = %if.end60
  %49 = load ptr, ptr %return_buffer.addr, align 8, !dbg !1277
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %49, i32 0, i32 0, !dbg !1279
  store i64 0, ptr %length, align 8, !dbg !1280
  br label %cleanup, !dbg !1281

if.end63:                                         ; preds = %if.end60
  %50 = load ptr, ptr %info, align 8, !dbg !1282
  %return_object64 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %50, i32 0, i32 7, !dbg !1282
  %51 = load ptr, ptr %return_object64, align 8, !dbg !1282
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %51, i32 0, i32 1, !dbg !1282
  %52 = load i8, ptr %descriptor_type, align 8, !dbg !1282
  %conv65 = zext i8 %52 to i32, !dbg !1282
  %cmp66 = icmp eq i32 %conv65, 15, !dbg !1284
  br i1 %cmp66, label %if.then68, label %if.end71, !dbg !1285

if.then68:                                        ; preds = %if.end63
  store i32 8, ptr %status, align 4, !dbg !1286
  %53 = load ptr, ptr %info, align 8, !dbg !1288
  %return_object69 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %53, i32 0, i32 7, !dbg !1289
  store ptr null, ptr %return_object69, align 8, !dbg !1290
  %54 = load ptr, ptr %return_buffer.addr, align 8, !dbg !1291
  %length70 = getelementptr inbounds %struct.acpi_buffer, ptr %54, i32 0, i32 0, !dbg !1292
  store i64 0, ptr %length70, align 8, !dbg !1293
  br label %if.end71, !dbg !1294

if.end71:                                         ; preds = %if.then68, %if.end63
  %55 = load i32, ptr %status, align 4, !dbg !1295
  %tobool72 = icmp ne i32 %55, 0, !dbg !1295
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !1297

if.then73:                                        ; preds = %if.end71
  br label %cleanup_return_object, !dbg !1298

if.end74:                                         ; preds = %if.end71
  %56 = load ptr, ptr %info, align 8, !dbg !1300
  call void @acpi_ns_resolve_references(ptr noundef %56) #14, !dbg !1301
  %57 = load ptr, ptr %info, align 8, !dbg !1302
  %return_object75 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %57, i32 0, i32 7, !dbg !1303
  %58 = load ptr, ptr %return_object75, align 8, !dbg !1303
  %call76 = call i32 @acpi_ut_get_object_size(ptr noundef %58, ptr noundef %buffer_space_needed) #14, !dbg !1304
  store i32 %call76, ptr %status, align 4, !dbg !1305
  %59 = load i32, ptr %status, align 4, !dbg !1306
  %tobool77 = icmp ne i32 %59, 0, !dbg !1306
  br i1 %tobool77, label %if.end86, label %if.then78, !dbg !1308

if.then78:                                        ; preds = %if.end74
  %60 = load ptr, ptr %return_buffer.addr, align 8, !dbg !1309
  %61 = load i64, ptr %buffer_space_needed, align 8, !dbg !1311
  %call79 = call i32 @acpi_ut_initialize_buffer(ptr noundef %60, i64 noundef %61) #14, !dbg !1312
  store i32 %call79, ptr %status, align 4, !dbg !1313
  %62 = load i32, ptr %status, align 4, !dbg !1314
  %tobool80 = icmp ne i32 %62, 0, !dbg !1314
  br i1 %tobool80, label %if.then81, label %if.else82, !dbg !1316

if.then81:                                        ; preds = %if.then78
  br label %if.end85, !dbg !1317

if.else82:                                        ; preds = %if.then78
  %63 = load ptr, ptr %info, align 8, !dbg !1319
  %return_object83 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %63, i32 0, i32 7, !dbg !1321
  %64 = load ptr, ptr %return_object83, align 8, !dbg !1321
  %65 = load ptr, ptr %return_buffer.addr, align 8, !dbg !1322
  %call84 = call i32 @acpi_ut_copy_iobject_to_eobject(ptr noundef %64, ptr noundef %65) #14, !dbg !1323
  store i32 %call84, ptr %status, align 4, !dbg !1324
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then81
  br label %if.end86, !dbg !1325

if.end86:                                         ; preds = %if.end85, %if.end74
  br label %cleanup_return_object, !dbg !1306

cleanup_return_object:                            ; preds = %if.end86, %if.then73, %if.then59
  call void @llvm.dbg.label(metadata !1135), !dbg !1326
  %66 = load ptr, ptr %info, align 8, !dbg !1327
  %return_object87 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %66, i32 0, i32 7, !dbg !1329
  %67 = load ptr, ptr %return_object87, align 8, !dbg !1329
  %tobool88 = icmp ne ptr %67, null, !dbg !1327
  br i1 %tobool88, label %if.then89, label %if.end91, !dbg !1330

if.then89:                                        ; preds = %cleanup_return_object
  call void @acpi_ex_enter_interpreter() #14, !dbg !1331
  %68 = load ptr, ptr %info, align 8, !dbg !1333
  %return_object90 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %68, i32 0, i32 7, !dbg !1334
  %69 = load ptr, ptr %return_object90, align 8, !dbg !1334
  call void @acpi_ut_remove_reference(ptr noundef %69) #14, !dbg !1335
  call void @acpi_ex_exit_interpreter() #14, !dbg !1336
  br label %if.end91, !dbg !1337

if.end91:                                         ; preds = %if.then89, %cleanup_return_object
  br label %cleanup, !dbg !1329

cleanup:                                          ; preds = %if.end91, %if.then62, %if.then50, %if.then38, %if.end15, %if.then4
  call void @llvm.dbg.label(metadata !1136), !dbg !1338
  %70 = load ptr, ptr %info, align 8, !dbg !1339
  %parameters92 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %70, i32 0, i32 2, !dbg !1341
  %71 = load ptr, ptr %parameters92, align 8, !dbg !1341
  %tobool93 = icmp ne ptr %71, null, !dbg !1339
  br i1 %tobool93, label %if.then94, label %if.end96, !dbg !1342

if.then94:                                        ; preds = %cleanup
  %72 = load ptr, ptr %info, align 8, !dbg !1343
  %parameters95 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %72, i32 0, i32 2, !dbg !1345
  %73 = load ptr, ptr %parameters95, align 8, !dbg !1345
  call void @acpi_ut_delete_internal_object_list(ptr noundef %73) #14, !dbg !1346
  br label %if.end96, !dbg !1347

if.end96:                                         ; preds = %if.then94, %cleanup
  %74 = load ptr, ptr %info, align 8, !dbg !1348
  call void @acpi_os_free(ptr noundef %74) #14, !dbg !1348
  %75 = load i32, ptr %status, align 4, !dbg !1349
  store i32 %75, ptr %retval, align 4, !dbg !1349
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup97, !dbg !1349

cleanup97:                                        ; preds = %if.end96, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1350
  call void @llvm.lifetime.end.p0(i64 8, ptr %buffer_space_needed) #13, !dbg !1350
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #13, !dbg !1350
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1350
  %76 = load i32, ptr %retval, align 4, !dbg !1350
  ret i32 %76, !dbg !1350
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1351 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1354 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1358 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1363, metadata !DIExpression()), !dbg !1364
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1365
  call void @kfree(ptr noundef %0) #14, !dbg !1366
  ret void, !dbg !1367
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !1368 {
entry:
  %size.addr = alloca i64, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1372, metadata !DIExpression()), !dbg !1383
  %0 = load i64, ptr %size.addr, align 8, !dbg !1384
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1385
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1373, metadata !DIExpression()), !dbg !1385
  br label %do.body, !dbg !1385

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1386
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1375, metadata !DIExpression()), !dbg !1386
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1386
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1378, metadata !DIExpression()), !dbg !1386
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1386
  %conv = zext i1 %cmp to i32, !dbg !1386
  store i32 1, ptr %tmp, align 4, !dbg !1386
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1387
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1387
  %1 = load i32, ptr %tmp, align 4, !dbg !1386
  %call = call i64 @arch_local_save_flags() #14, !dbg !1387
  store i64 %call, ptr %_flags, align 8, !dbg !1387
  br label %do.cond, !dbg !1387

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1387

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1388
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1379, metadata !DIExpression()), !dbg !1388
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1388
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1382, metadata !DIExpression()), !dbg !1388
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1388
  %conv6 = zext i1 %cmp5 to i32, !dbg !1388
  store i32 1, ptr %tmp7, align 4, !dbg !1388
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1389
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1389
  %2 = load i32, ptr %tmp7, align 4, !dbg !1388
  %3 = load i64, ptr %_flags, align 8, !dbg !1389
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1389
  store i32 %call9, ptr %tmp8, align 4, !dbg !1389
  %4 = load i32, ptr %tmp8, align 4, !dbg !1389
  store i32 %4, ptr %tmp1, align 4, !dbg !1387
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1390
  %5 = load i32, ptr %tmp1, align 4, !dbg !1385
  %tobool = icmp ne i32 %5, 0, !dbg !1390
  %6 = zext i1 %tobool to i64, !dbg !1390
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1390
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1391
  ret ptr %call10, !dbg !1392
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1393 dso_local ptr @acpi_ns_validate_handle(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1396 dso_local void @acpi_ut_predefined_warning(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1399 dso_local i32 @acpi_ut_copy_eobject_to_iobject(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1402 dso_local i32 @acpi_ns_evaluate(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_ns_resolve_references(ptr noundef %info) #0 align 16 !dbg !1405 {
entry:
  %info.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1409, metadata !DIExpression()), !dbg !1412
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #13, !dbg !1413
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1410, metadata !DIExpression()), !dbg !1414
  store ptr null, ptr %obj_desc, align 8, !dbg !1414
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1415
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1411, metadata !DIExpression()), !dbg !1416
  %0 = load ptr, ptr %info.addr, align 8, !dbg !1417
  %return_object = getelementptr inbounds %struct.acpi_evaluate_info, ptr %0, i32 0, i32 7, !dbg !1419
  %1 = load ptr, ptr %return_object, align 8, !dbg !1419
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %1, i32 0, i32 2, !dbg !1420
  %2 = load i8, ptr %type, align 1, !dbg !1420
  %conv = zext i8 %2 to i32, !dbg !1421
  %cmp = icmp ne i32 %conv, 20, !dbg !1422
  br i1 %cmp, label %if.then, label %if.end, !dbg !1423

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1424

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %info.addr, align 8, !dbg !1426
  %return_object2 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %3, i32 0, i32 7, !dbg !1427
  %4 = load ptr, ptr %return_object2, align 8, !dbg !1427
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %4, i32 0, i32 5, !dbg !1428
  %5 = load i8, ptr %class, align 1, !dbg !1428
  %conv3 = zext i8 %5 to i32, !dbg !1426
  switch i32 %conv3, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb5
  ], !dbg !1429

sw.bb:                                            ; preds = %if.end
  %6 = load ptr, ptr %info.addr, align 8, !dbg !1430
  %return_object4 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %6, i32 0, i32 7, !dbg !1432
  %7 = load ptr, ptr %return_object4, align 8, !dbg !1432
  %where = getelementptr inbounds %struct.acpi_object_reference, ptr %7, i32 0, i32 10, !dbg !1433
  %8 = load ptr, ptr %where, align 8, !dbg !1433
  %9 = load ptr, ptr %8, align 8, !dbg !1434
  store ptr %9, ptr %obj_desc, align 8, !dbg !1435
  br label %sw.epilog, !dbg !1436

sw.bb5:                                           ; preds = %if.end
  %10 = load ptr, ptr %info.addr, align 8, !dbg !1437
  %return_object6 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %10, i32 0, i32 7, !dbg !1438
  %11 = load ptr, ptr %return_object6, align 8, !dbg !1438
  %object = getelementptr inbounds %struct.acpi_object_reference, ptr %11, i32 0, i32 8, !dbg !1439
  %12 = load ptr, ptr %object, align 8, !dbg !1439
  store ptr %12, ptr %node, align 8, !dbg !1440
  %13 = load ptr, ptr %node, align 8, !dbg !1441
  %tobool = icmp ne ptr %13, null, !dbg !1441
  br i1 %tobool, label %if.then7, label %if.end9, !dbg !1443

if.then7:                                         ; preds = %sw.bb5
  %14 = load ptr, ptr %node, align 8, !dbg !1444
  %object8 = getelementptr inbounds %struct.acpi_namespace_node, ptr %14, i32 0, i32 0, !dbg !1446
  %15 = load ptr, ptr %object8, align 8, !dbg !1446
  store ptr %15, ptr %obj_desc, align 8, !dbg !1447
  br label %if.end9, !dbg !1448

if.end9:                                          ; preds = %if.then7, %sw.bb5
  br label %sw.epilog, !dbg !1449

sw.default:                                       ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1450

sw.epilog:                                        ; preds = %if.end9, %sw.bb
  %16 = load ptr, ptr %obj_desc, align 8, !dbg !1451
  %tobool10 = icmp ne ptr %16, null, !dbg !1451
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !1453

if.then11:                                        ; preds = %sw.epilog
  %17 = load ptr, ptr %obj_desc, align 8, !dbg !1454
  call void @acpi_ut_add_reference(ptr noundef %17) #14, !dbg !1456
  %18 = load ptr, ptr %info.addr, align 8, !dbg !1457
  %return_object12 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %18, i32 0, i32 7, !dbg !1458
  %19 = load ptr, ptr %return_object12, align 8, !dbg !1458
  call void @acpi_ut_remove_reference(ptr noundef %19) #14, !dbg !1459
  %20 = load ptr, ptr %obj_desc, align 8, !dbg !1460
  %21 = load ptr, ptr %info.addr, align 8, !dbg !1461
  %return_object13 = getelementptr inbounds %struct.acpi_evaluate_info, ptr %21, i32 0, i32 7, !dbg !1462
  store ptr %20, ptr %return_object13, align 8, !dbg !1463
  br label %if.end14, !dbg !1464

if.end14:                                         ; preds = %if.then11, %sw.epilog
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1465

cleanup:                                          ; preds = %if.end14, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1466
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #13, !dbg !1466
  ret void, !dbg !1466
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1467 dso_local i32 @acpi_ut_get_object_size(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1471 dso_local i32 @acpi_ut_initialize_buffer(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1474 dso_local i32 @acpi_ut_copy_iobject_to_eobject(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1477 dso_local void @acpi_ex_enter_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1481 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1484 dso_local void @acpi_ex_exit_interpreter() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1485 dso_local void @acpi_ut_delete_internal_object_list(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_walk_namespace(i32 noundef %type, ptr noundef %start_object, i32 noundef %max_depth, ptr noundef %descending_callback, ptr noundef %ascending_callback, ptr noundef %context, ptr noundef %return_value) #0 align 16 !dbg !1488 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %start_object.addr = alloca ptr, align 8
  %max_depth.addr = alloca i32, align 4
  %descending_callback.addr = alloca ptr, align 8
  %ascending_callback.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %return_value.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1493, metadata !DIExpression()), !dbg !1503
  store ptr %start_object, ptr %start_object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start_object.addr, metadata !1494, metadata !DIExpression()), !dbg !1504
  store i32 %max_depth, ptr %max_depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_depth.addr, metadata !1495, metadata !DIExpression()), !dbg !1505
  store ptr %descending_callback, ptr %descending_callback.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %descending_callback.addr, metadata !1496, metadata !DIExpression()), !dbg !1506
  store ptr %ascending_callback, ptr %ascending_callback.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ascending_callback.addr, metadata !1497, metadata !DIExpression()), !dbg !1507
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1498, metadata !DIExpression()), !dbg !1508
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !1499, metadata !DIExpression()), !dbg !1509
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1510
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1500, metadata !DIExpression()), !dbg !1511
  %0 = load i32, ptr %type.addr, align 4, !dbg !1512
  %cmp = icmp ugt i32 %0, 29, !dbg !1514
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1515

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %max_depth.addr, align 4, !dbg !1516
  %tobool = icmp ne i32 %1, 0, !dbg !1516
  br i1 %tobool, label %lor.lhs.false1, label %if.then, !dbg !1517

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %descending_callback.addr, align 8, !dbg !1518
  %tobool2 = icmp ne ptr %2, null, !dbg !1518
  br i1 %tobool2, label %if.end, label %land.lhs.true, !dbg !1519

land.lhs.true:                                    ; preds = %lor.lhs.false1
  %3 = load ptr, ptr %ascending_callback.addr, align 8, !dbg !1520
  %tobool3 = icmp ne ptr %3, null, !dbg !1520
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1521

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !1522
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1522

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false1
  %call = call i32 @acpi_ut_acquire_read_lock(ptr noundef @acpi_gbl_namespace_rw_lock) #14, !dbg !1524
  store i32 %call, ptr %status, align 4, !dbg !1525
  %4 = load i32, ptr %status, align 4, !dbg !1526
  %tobool4 = icmp ne i32 %4, 0, !dbg !1526
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1528

if.then5:                                         ; preds = %if.end
  %5 = load i32, ptr %status, align 4, !dbg !1529
  store i32 %5, ptr %retval, align 4, !dbg !1529
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1529

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !1531
  store i32 %call7, ptr %status, align 4, !dbg !1532
  %6 = load i32, ptr %status, align 4, !dbg !1533
  %tobool8 = icmp ne i32 %6, 0, !dbg !1533
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1535

if.then9:                                         ; preds = %if.end6
  br label %unlock_and_exit, !dbg !1536

if.end10:                                         ; preds = %if.end6
  %7 = load ptr, ptr %start_object.addr, align 8, !dbg !1538
  %call11 = call ptr @acpi_ns_validate_handle(ptr noundef %7) #14, !dbg !1540
  %tobool12 = icmp ne ptr %call11, null, !dbg !1540
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !1541

if.then13:                                        ; preds = %if.end10
  store i32 4097, ptr %status, align 4, !dbg !1542
  br label %unlock_and_exit2, !dbg !1544

if.end14:                                         ; preds = %if.end10
  %8 = load i32, ptr %type.addr, align 4, !dbg !1545
  %9 = load ptr, ptr %start_object.addr, align 8, !dbg !1546
  %10 = load i32, ptr %max_depth.addr, align 4, !dbg !1547
  %11 = load ptr, ptr %descending_callback.addr, align 8, !dbg !1548
  %12 = load ptr, ptr %ascending_callback.addr, align 8, !dbg !1549
  %13 = load ptr, ptr %context.addr, align 8, !dbg !1550
  %14 = load ptr, ptr %return_value.addr, align 8, !dbg !1551
  %call15 = call i32 @acpi_ns_walk_namespace(i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef 1, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14) #14, !dbg !1552
  store i32 %call15, ptr %status, align 4, !dbg !1553
  br label %unlock_and_exit2, !dbg !1554

unlock_and_exit2:                                 ; preds = %if.end14, %if.then13
  call void @llvm.dbg.label(metadata !1501), !dbg !1555
  %call16 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !1556
  br label %unlock_and_exit, !dbg !1557

unlock_and_exit:                                  ; preds = %unlock_and_exit2, %if.then9
  call void @llvm.dbg.label(metadata !1502), !dbg !1558
  %call17 = call i32 @acpi_ut_release_read_lock(ptr noundef @acpi_gbl_namespace_rw_lock) #14, !dbg !1559
  %15 = load i32, ptr %status, align 4, !dbg !1560
  store i32 %15, ptr %retval, align 4, !dbg !1560
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1560

cleanup:                                          ; preds = %unlock_and_exit, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1561
  %16 = load i32, ptr %retval, align 4, !dbg !1561
  ret i32 %16, !dbg !1561
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1562 dso_local i32 @acpi_ut_acquire_read_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1571 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1575 dso_local i32 @acpi_ns_walk_namespace(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1578 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1579 dso_local i32 @acpi_ut_release_read_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_devices(ptr noundef %HID, ptr noundef %user_function, ptr noundef %context, ptr noundef %return_value) #0 align 16 !dbg !1580 {
entry:
  %retval = alloca i32, align 4
  %HID.addr = alloca ptr, align 8
  %user_function.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %return_value.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %info = alloca %struct.acpi_get_devices_info, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %HID, ptr %HID.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %HID.addr, metadata !1584, metadata !DIExpression()), !dbg !1595
  store ptr %user_function, ptr %user_function.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_function.addr, metadata !1585, metadata !DIExpression()), !dbg !1596
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1586, metadata !DIExpression()), !dbg !1597
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !1587, metadata !DIExpression()), !dbg !1598
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1599
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1588, metadata !DIExpression()), !dbg !1600
  call void @llvm.lifetime.start.p0(i64 24, ptr %info) #13, !dbg !1601
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1589, metadata !DIExpression()), !dbg !1602
  %0 = load ptr, ptr %user_function.addr, align 8, !dbg !1603
  %tobool = icmp ne ptr %0, null, !dbg !1603
  br i1 %tobool, label %if.end, label %if.then, !dbg !1605

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1606

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %HID.addr, align 8, !dbg !1608
  %hid = getelementptr inbounds %struct.acpi_get_devices_info, ptr %info, i32 0, i32 2, !dbg !1609
  store ptr %1, ptr %hid, align 8, !dbg !1610
  %2 = load ptr, ptr %context.addr, align 8, !dbg !1611
  %context1 = getelementptr inbounds %struct.acpi_get_devices_info, ptr %info, i32 0, i32 1, !dbg !1612
  store ptr %2, ptr %context1, align 8, !dbg !1613
  %3 = load ptr, ptr %user_function.addr, align 8, !dbg !1614
  %user_function2 = getelementptr inbounds %struct.acpi_get_devices_info, ptr %info, i32 0, i32 0, !dbg !1615
  store ptr %3, ptr %user_function2, align 8, !dbg !1616
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !1617
  store i32 %call, ptr %status, align 4, !dbg !1618
  %4 = load i32, ptr %status, align 4, !dbg !1619
  %tobool3 = icmp ne i32 %4, 0, !dbg !1619
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1621

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr %status, align 4, !dbg !1622
  store i32 %5, ptr %retval, align 4, !dbg !1622
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1622

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %return_value.addr, align 8, !dbg !1624
  %call6 = call i32 @acpi_ns_walk_namespace(i32 noundef 6, ptr noundef inttoptr (i64 -1 to ptr), i32 noundef -1, i32 noundef 1, ptr noundef @acpi_ns_get_device_callback, ptr noundef null, ptr noundef %info, ptr noundef %6) #14, !dbg !1625
  store i32 %call6, ptr %status, align 4, !dbg !1626
  %call7 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !1627
  %7 = load i32, ptr %status, align 4, !dbg !1628
  store i32 %7, ptr %retval, align 4, !dbg !1628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1628

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %info) #13, !dbg !1629
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1629
  %8 = load i32, ptr %retval, align 4, !dbg !1629
  ret i32 %8, !dbg !1629
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ns_get_device_callback(ptr noundef %obj_handle, i32 noundef %nesting_level, ptr noundef %context, ptr noundef %return_value) #0 align 16 !dbg !1630 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca ptr, align 8
  %nesting_level.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %return_value.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %flags = alloca i32, align 4
  %hid = alloca ptr, align 8
  %cid = alloca ptr, align 8
  %i = alloca i32, align 4
  %found = alloca i8, align 1
  %no_match = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_handle, ptr %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_handle.addr, metadata !1632, metadata !DIExpression()), !dbg !1661
  store i32 %nesting_level, ptr %nesting_level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nesting_level.addr, metadata !1633, metadata !DIExpression()), !dbg !1662
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1634, metadata !DIExpression()), !dbg !1663
  store ptr %return_value, ptr %return_value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_value.addr, metadata !1635, metadata !DIExpression()), !dbg !1664
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #13, !dbg !1665
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1636, metadata !DIExpression()), !dbg !1666
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1667
  store ptr %0, ptr %info, align 8, !dbg !1666
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1668
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1638, metadata !DIExpression()), !dbg !1669
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1670
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1639, metadata !DIExpression()), !dbg !1671
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #13, !dbg !1672
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1640, metadata !DIExpression()), !dbg !1673
  call void @llvm.lifetime.start.p0(i64 8, ptr %hid) #13, !dbg !1674
  call void @llvm.dbg.declare(metadata ptr %hid, metadata !1641, metadata !DIExpression()), !dbg !1675
  call void @llvm.lifetime.start.p0(i64 8, ptr %cid) #13, !dbg !1676
  call void @llvm.dbg.declare(metadata ptr %cid, metadata !1647, metadata !DIExpression()), !dbg !1677
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1678
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1657, metadata !DIExpression()), !dbg !1679
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #13, !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %found, metadata !1658, metadata !DIExpression()), !dbg !1681
  call void @llvm.lifetime.start.p0(i64 4, ptr %no_match) #13, !dbg !1682
  call void @llvm.dbg.declare(metadata ptr %no_match, metadata !1659, metadata !DIExpression()), !dbg !1683
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !1684
  store i32 %call, ptr %status, align 4, !dbg !1685
  %1 = load i32, ptr %status, align 4, !dbg !1686
  %tobool = icmp ne i32 %1, 0, !dbg !1686
  br i1 %tobool, label %if.then, label %if.end, !dbg !1688

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !1689
  store i32 %2, ptr %retval, align 4, !dbg !1691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1691

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1692
  %call1 = call ptr @acpi_ns_validate_handle(ptr noundef %3) #14, !dbg !1693
  store ptr %call1, ptr %node, align 8, !dbg !1694
  %call2 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !1695
  store i32 %call2, ptr %status, align 4, !dbg !1696
  %4 = load i32, ptr %status, align 4, !dbg !1697
  %tobool3 = icmp ne i32 %4, 0, !dbg !1697
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1699

if.then4:                                         ; preds = %if.end
  %5 = load i32, ptr %status, align 4, !dbg !1700
  store i32 %5, ptr %retval, align 4, !dbg !1702
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1702

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %node, align 8, !dbg !1703
  %tobool6 = icmp ne ptr %6, null, !dbg !1703
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1705

if.then7:                                         ; preds = %if.end5
  store i32 4097, ptr %retval, align 4, !dbg !1706
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1706

if.end8:                                          ; preds = %if.end5
  %7 = load ptr, ptr %info, align 8, !dbg !1708
  %hid9 = getelementptr inbounds %struct.acpi_get_devices_info, ptr %7, i32 0, i32 2, !dbg !1710
  %8 = load ptr, ptr %hid9, align 8, !dbg !1710
  %cmp = icmp ne ptr %8, null, !dbg !1711
  br i1 %cmp, label %if.then10, label %if.end41, !dbg !1712

if.then10:                                        ; preds = %if.end8
  %9 = load ptr, ptr %node, align 8, !dbg !1713
  %call11 = call i32 @acpi_ut_execute_HID(ptr noundef %9, ptr noundef %hid) #14, !dbg !1715
  store i32 %call11, ptr %status, align 4, !dbg !1716
  %10 = load i32, ptr %status, align 4, !dbg !1717
  %cmp12 = icmp eq i32 %10, 5, !dbg !1719
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !1720

if.then13:                                        ; preds = %if.then10
  store i32 0, ptr %retval, align 4, !dbg !1721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1721

if.else:                                          ; preds = %if.then10
  %11 = load i32, ptr %status, align 4, !dbg !1723
  %tobool14 = icmp ne i32 %11, 0, !dbg !1723
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1725

if.then15:                                        ; preds = %if.else
  store i32 16390, ptr %retval, align 4, !dbg !1726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1726

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  %12 = load ptr, ptr %hid, align 8, !dbg !1728
  %string = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %12, i32 0, i32 1, !dbg !1729
  %13 = load ptr, ptr %string, align 8, !dbg !1729
  %14 = load ptr, ptr %info, align 8, !dbg !1730
  %hid18 = getelementptr inbounds %struct.acpi_get_devices_info, ptr %14, i32 0, i32 2, !dbg !1731
  %15 = load ptr, ptr %hid18, align 8, !dbg !1731
  %call19 = call i32 @strcmp(ptr noundef %13, ptr noundef %15) #14, !dbg !1732
  store i32 %call19, ptr %no_match, align 4, !dbg !1733
  %16 = load ptr, ptr %hid, align 8, !dbg !1734
  call void @acpi_os_free(ptr noundef %16) #14, !dbg !1734
  %17 = load i32, ptr %no_match, align 4, !dbg !1735
  %tobool20 = icmp ne i32 %17, 0, !dbg !1735
  br i1 %tobool20, label %if.then21, label %if.end40, !dbg !1737

if.then21:                                        ; preds = %if.end17
  %18 = load ptr, ptr %node, align 8, !dbg !1738
  %call22 = call i32 @acpi_ut_execute_CID(ptr noundef %18, ptr noundef %cid) #14, !dbg !1740
  store i32 %call22, ptr %status, align 4, !dbg !1741
  %19 = load i32, ptr %status, align 4, !dbg !1742
  %cmp23 = icmp eq i32 %19, 5, !dbg !1744
  br i1 %cmp23, label %if.then24, label %if.else25, !dbg !1745

if.then24:                                        ; preds = %if.then21
  store i32 0, ptr %retval, align 4, !dbg !1746
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1746

if.else25:                                        ; preds = %if.then21
  %20 = load i32, ptr %status, align 4, !dbg !1748
  %tobool26 = icmp ne i32 %20, 0, !dbg !1748
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !1750

if.then27:                                        ; preds = %if.else25
  store i32 16390, ptr %retval, align 4, !dbg !1751
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1751

if.end28:                                         ; preds = %if.else25
  br label %if.end29

if.end29:                                         ; preds = %if.end28
  store i8 0, ptr %found, align 1, !dbg !1753
  store i32 0, ptr %i, align 4, !dbg !1754
  br label %for.cond, !dbg !1756

for.cond:                                         ; preds = %for.inc, %if.end29
  %21 = load i32, ptr %i, align 4, !dbg !1757
  %22 = load ptr, ptr %cid, align 8, !dbg !1759
  %count = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %22, i32 0, i32 0, !dbg !1760
  %23 = load i32, ptr %count, align 8, !dbg !1760
  %cmp30 = icmp ult i32 %21, %23, !dbg !1761
  br i1 %cmp30, label %for.body, label %for.end, !dbg !1762

for.body:                                         ; preds = %for.cond
  %24 = load ptr, ptr %cid, align 8, !dbg !1763
  %ids = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %24, i32 0, i32 2, !dbg !1766
  %25 = load i32, ptr %i, align 4, !dbg !1767
  %idxprom = zext i32 %25 to i64, !dbg !1763
  %arrayidx = getelementptr [0 x %struct.acpi_pnp_device_id], ptr %ids, i64 0, i64 %idxprom, !dbg !1763
  %string31 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %arrayidx, i32 0, i32 1, !dbg !1768
  %26 = load ptr, ptr %string31, align 8, !dbg !1768
  %27 = load ptr, ptr %info, align 8, !dbg !1769
  %hid32 = getelementptr inbounds %struct.acpi_get_devices_info, ptr %27, i32 0, i32 2, !dbg !1770
  %28 = load ptr, ptr %hid32, align 8, !dbg !1770
  %call33 = call i32 @strcmp(ptr noundef %26, ptr noundef %28) #14, !dbg !1771
  %cmp34 = icmp eq i32 %call33, 0, !dbg !1772
  br i1 %cmp34, label %if.then35, label %if.end36, !dbg !1773

if.then35:                                        ; preds = %for.body
  store i8 1, ptr %found, align 1, !dbg !1774
  br label %for.end, !dbg !1776

if.end36:                                         ; preds = %for.body
  br label %for.inc, !dbg !1777

for.inc:                                          ; preds = %if.end36
  %29 = load i32, ptr %i, align 4, !dbg !1778
  %inc = add i32 %29, 1, !dbg !1778
  store i32 %inc, ptr %i, align 4, !dbg !1778
  br label %for.cond, !dbg !1779, !llvm.loop !1780

for.end:                                          ; preds = %if.then35, %for.cond
  %30 = load ptr, ptr %cid, align 8, !dbg !1782
  call void @acpi_os_free(ptr noundef %30) #14, !dbg !1782
  %31 = load i8, ptr %found, align 1, !dbg !1783
  %tobool37 = icmp ne i8 %31, 0, !dbg !1783
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !1785

if.then38:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !1786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1786

if.end39:                                         ; preds = %for.end
  br label %if.end40, !dbg !1788

if.end40:                                         ; preds = %if.end39, %if.end17
  br label %if.end41, !dbg !1789

if.end41:                                         ; preds = %if.end40, %if.end8
  %32 = load ptr, ptr %node, align 8, !dbg !1790
  %call42 = call i32 @acpi_ut_execute_STA(ptr noundef %32, ptr noundef %flags) #14, !dbg !1791
  store i32 %call42, ptr %status, align 4, !dbg !1792
  %33 = load i32, ptr %status, align 4, !dbg !1793
  %tobool43 = icmp ne i32 %33, 0, !dbg !1793
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !1795

if.then44:                                        ; preds = %if.end41
  store i32 16390, ptr %retval, align 4, !dbg !1796
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1796

if.end45:                                         ; preds = %if.end41
  %34 = load i32, ptr %flags, align 4, !dbg !1798
  %and = and i32 %34, 1, !dbg !1800
  %tobool46 = icmp ne i32 %and, 0, !dbg !1800
  br i1 %tobool46, label %if.end50, label %land.lhs.true, !dbg !1801

land.lhs.true:                                    ; preds = %if.end45
  %35 = load i32, ptr %flags, align 4, !dbg !1802
  %and47 = and i32 %35, 8, !dbg !1803
  %tobool48 = icmp ne i32 %and47, 0, !dbg !1803
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !1804

if.then49:                                        ; preds = %land.lhs.true
  store i32 16390, ptr %retval, align 4, !dbg !1805
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1805

if.end50:                                         ; preds = %land.lhs.true, %if.end45
  %36 = load ptr, ptr %info, align 8, !dbg !1807
  %user_function = getelementptr inbounds %struct.acpi_get_devices_info, ptr %36, i32 0, i32 0, !dbg !1808
  %37 = load ptr, ptr %user_function, align 8, !dbg !1808
  %38 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1809
  %39 = load i32, ptr %nesting_level.addr, align 4, !dbg !1810
  %40 = load ptr, ptr %info, align 8, !dbg !1811
  %context51 = getelementptr inbounds %struct.acpi_get_devices_info, ptr %40, i32 0, i32 1, !dbg !1812
  %41 = load ptr, ptr %context51, align 8, !dbg !1812
  %42 = load ptr, ptr %return_value.addr, align 8, !dbg !1813
  %call52 = call i32 %37(ptr noundef %38, i32 noundef %39, ptr noundef %41, ptr noundef %42) #14, !dbg !1807
  store i32 %call52, ptr %status, align 4, !dbg !1814
  %43 = load i32, ptr %status, align 4, !dbg !1815
  store i32 %43, ptr %retval, align 4, !dbg !1816
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1816

cleanup:                                          ; preds = %if.end50, %if.then49, %if.then44, %if.then38, %if.then27, %if.then24, %if.then15, %if.then13, %if.then7, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %no_match) #13, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #13, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 8, ptr %cid) #13, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 8, ptr %hid) #13, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #13, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1817
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #13, !dbg !1817
  %44 = load i32, ptr %retval, align 4, !dbg !1817
  ret i32 %44, !dbg !1817
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_attach_data(ptr noundef %obj_handle, ptr noundef %handler, ptr noundef %data) #0 align 16 !dbg !1818 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca ptr, align 8
  %handler.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_handle, ptr %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_handle.addr, metadata !1822, metadata !DIExpression()), !dbg !1828
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !1823, metadata !DIExpression()), !dbg !1829
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1824, metadata !DIExpression()), !dbg !1830
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1831
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1825, metadata !DIExpression()), !dbg !1832
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1833
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1826, metadata !DIExpression()), !dbg !1834
  %0 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1835
  %tobool = icmp ne ptr %0, null, !dbg !1835
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1837

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %handler.addr, align 8, !dbg !1838
  %tobool1 = icmp ne ptr %1, null, !dbg !1838
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1839

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %data.addr, align 8, !dbg !1840
  %tobool3 = icmp ne ptr %2, null, !dbg !1840
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1841

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !1842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1842

if.end:                                           ; preds = %lor.lhs.false2
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !1844
  store i32 %call, ptr %status, align 4, !dbg !1845
  %3 = load i32, ptr %status, align 4, !dbg !1846
  %tobool4 = icmp ne i32 %3, 0, !dbg !1846
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1848

if.then5:                                         ; preds = %if.end
  %4 = load i32, ptr %status, align 4, !dbg !1849
  store i32 %4, ptr %retval, align 4, !dbg !1851
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1851

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1852
  %call7 = call ptr @acpi_ns_validate_handle(ptr noundef %5) #14, !dbg !1853
  store ptr %call7, ptr %node, align 8, !dbg !1854
  %6 = load ptr, ptr %node, align 8, !dbg !1855
  %tobool8 = icmp ne ptr %6, null, !dbg !1855
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1857

if.then9:                                         ; preds = %if.end6
  store i32 4097, ptr %status, align 4, !dbg !1858
  br label %unlock_and_exit, !dbg !1860

if.end10:                                         ; preds = %if.end6
  %7 = load ptr, ptr %node, align 8, !dbg !1861
  %8 = load ptr, ptr %handler.addr, align 8, !dbg !1862
  %9 = load ptr, ptr %data.addr, align 8, !dbg !1863
  %call11 = call i32 @acpi_ns_attach_data(ptr noundef %7, ptr noundef %8, ptr noundef %9) #14, !dbg !1864
  store i32 %call11, ptr %status, align 4, !dbg !1865
  br label %unlock_and_exit, !dbg !1866

unlock_and_exit:                                  ; preds = %if.end10, %if.then9
  call void @llvm.dbg.label(metadata !1827), !dbg !1867
  %call12 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !1868
  %10 = load i32, ptr %status, align 4, !dbg !1869
  store i32 %10, ptr %retval, align 4, !dbg !1870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1870

cleanup:                                          ; preds = %unlock_and_exit, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1871
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1871
  %11 = load i32, ptr %retval, align 4, !dbg !1871
  ret i32 %11, !dbg !1871
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1872 dso_local i32 @acpi_ns_attach_data(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_detach_data(ptr noundef %obj_handle, ptr noundef %handler) #0 align 16 !dbg !1875 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca ptr, align 8
  %handler.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_handle, ptr %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_handle.addr, metadata !1879, metadata !DIExpression()), !dbg !1884
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !1880, metadata !DIExpression()), !dbg !1885
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1886
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1881, metadata !DIExpression()), !dbg !1887
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1888
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1882, metadata !DIExpression()), !dbg !1889
  %0 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1890
  %tobool = icmp ne ptr %0, null, !dbg !1890
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1892

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %handler.addr, align 8, !dbg !1893
  %tobool1 = icmp ne ptr %1, null, !dbg !1893
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1894

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !1895
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1895

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !1897
  store i32 %call, ptr %status, align 4, !dbg !1898
  %2 = load i32, ptr %status, align 4, !dbg !1899
  %tobool2 = icmp ne i32 %2, 0, !dbg !1899
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1901

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %status, align 4, !dbg !1902
  store i32 %3, ptr %retval, align 4, !dbg !1904
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1904

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1905
  %call5 = call ptr @acpi_ns_validate_handle(ptr noundef %4) #14, !dbg !1906
  store ptr %call5, ptr %node, align 8, !dbg !1907
  %5 = load ptr, ptr %node, align 8, !dbg !1908
  %tobool6 = icmp ne ptr %5, null, !dbg !1908
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !1910

if.then7:                                         ; preds = %if.end4
  store i32 4097, ptr %status, align 4, !dbg !1911
  br label %unlock_and_exit, !dbg !1913

if.end8:                                          ; preds = %if.end4
  %6 = load ptr, ptr %node, align 8, !dbg !1914
  %7 = load ptr, ptr %handler.addr, align 8, !dbg !1915
  %call9 = call i32 @acpi_ns_detach_data(ptr noundef %6, ptr noundef %7) #14, !dbg !1916
  store i32 %call9, ptr %status, align 4, !dbg !1917
  br label %unlock_and_exit, !dbg !1918

unlock_and_exit:                                  ; preds = %if.end8, %if.then7
  call void @llvm.dbg.label(metadata !1883), !dbg !1919
  %call10 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !1920
  %8 = load i32, ptr %status, align 4, !dbg !1921
  store i32 %8, ptr %retval, align 4, !dbg !1922
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1922

cleanup:                                          ; preds = %unlock_and_exit, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1923
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1923
  %9 = load i32, ptr %retval, align 4, !dbg !1923
  ret i32 %9, !dbg !1923
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1924 dso_local i32 @acpi_ns_detach_data(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_data_full(ptr noundef %obj_handle, ptr noundef %handler, ptr noundef %data, ptr noundef %callback) #0 align 16 !dbg !1927 {
entry:
  %retval = alloca i32, align 4
  %obj_handle.addr = alloca ptr, align 8
  %handler.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %callback.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %obj_handle, ptr %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_handle.addr, metadata !1932, metadata !DIExpression()), !dbg !1939
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !1933, metadata !DIExpression()), !dbg !1940
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1934, metadata !DIExpression()), !dbg !1941
  store ptr %callback, ptr %callback.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %callback.addr, metadata !1935, metadata !DIExpression()), !dbg !1942
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1943
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1936, metadata !DIExpression()), !dbg !1944
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1945
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1937, metadata !DIExpression()), !dbg !1946
  %0 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1947
  %tobool = icmp ne ptr %0, null, !dbg !1947
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1949

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %handler.addr, align 8, !dbg !1950
  %tobool1 = icmp ne ptr %1, null, !dbg !1950
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1951

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %data.addr, align 8, !dbg !1952
  %tobool3 = icmp ne ptr %2, null, !dbg !1952
  br i1 %tobool3, label %if.end, label %if.then, !dbg !1953

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !1954
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1954

if.end:                                           ; preds = %lor.lhs.false2
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #14, !dbg !1956
  store i32 %call, ptr %status, align 4, !dbg !1957
  %3 = load i32, ptr %status, align 4, !dbg !1958
  %tobool4 = icmp ne i32 %3, 0, !dbg !1958
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1960

if.then5:                                         ; preds = %if.end
  %4 = load i32, ptr %status, align 4, !dbg !1961
  store i32 %4, ptr %retval, align 4, !dbg !1963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1963

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %obj_handle.addr, align 8, !dbg !1964
  %call7 = call ptr @acpi_ns_validate_handle(ptr noundef %5) #14, !dbg !1965
  store ptr %call7, ptr %node, align 8, !dbg !1966
  %6 = load ptr, ptr %node, align 8, !dbg !1967
  %tobool8 = icmp ne ptr %6, null, !dbg !1967
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !1969

if.then9:                                         ; preds = %if.end6
  store i32 4097, ptr %status, align 4, !dbg !1970
  br label %unlock_and_exit, !dbg !1972

if.end10:                                         ; preds = %if.end6
  %7 = load ptr, ptr %node, align 8, !dbg !1973
  %8 = load ptr, ptr %handler.addr, align 8, !dbg !1974
  %9 = load ptr, ptr %data.addr, align 8, !dbg !1975
  %call11 = call i32 @acpi_ns_get_attached_data(ptr noundef %7, ptr noundef %8, ptr noundef %9) #14, !dbg !1976
  store i32 %call11, ptr %status, align 4, !dbg !1977
  %10 = load i32, ptr %status, align 4, !dbg !1978
  %tobool12 = icmp ne i32 %10, 0, !dbg !1978
  br i1 %tobool12, label %if.end15, label %land.lhs.true, !dbg !1980

land.lhs.true:                                    ; preds = %if.end10
  %11 = load ptr, ptr %callback.addr, align 8, !dbg !1981
  %tobool13 = icmp ne ptr %11, null, !dbg !1981
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1982

if.then14:                                        ; preds = %land.lhs.true
  %12 = load ptr, ptr %callback.addr, align 8, !dbg !1983
  %13 = load ptr, ptr %data.addr, align 8, !dbg !1985
  %14 = load ptr, ptr %13, align 8, !dbg !1986
  call void %12(ptr noundef %14) #14, !dbg !1983
  br label %if.end15, !dbg !1987

if.end15:                                         ; preds = %if.then14, %land.lhs.true, %if.end10
  br label %unlock_and_exit, !dbg !1981

unlock_and_exit:                                  ; preds = %if.end15, %if.then9
  call void @llvm.dbg.label(metadata !1938), !dbg !1988
  %call16 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #14, !dbg !1989
  %15 = load i32, ptr %status, align 4, !dbg !1990
  store i32 %15, ptr %retval, align 4, !dbg !1991
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1991

cleanup:                                          ; preds = %unlock_and_exit, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1992
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1992
  %16 = load i32, ptr %retval, align 4, !dbg !1992
  ret i32 %16, !dbg !1992
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1993 dso_local i32 @acpi_ns_get_attached_data(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_data(ptr noundef %obj_handle, ptr noundef %handler, ptr noundef %data) #0 align 16 !dbg !1996 {
entry:
  %obj_handle.addr = alloca ptr, align 8
  %handler.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %obj_handle, ptr %obj_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_handle.addr, metadata !2000, metadata !DIExpression()), !dbg !2003
  store ptr %handler, ptr %handler.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handler.addr, metadata !2001, metadata !DIExpression()), !dbg !2004
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2002, metadata !DIExpression()), !dbg !2005
  %0 = load ptr, ptr %obj_handle.addr, align 8, !dbg !2006
  %1 = load ptr, ptr %handler.addr, align 8, !dbg !2007
  %2 = load ptr, ptr %data.addr, align 8, !dbg !2008
  %call = call i32 @acpi_get_data_full(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null) #14, !dbg !2009
  ret i32 %call, !dbg !2010
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2011 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !2016 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2024, metadata !DIExpression()), !dbg !2026
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2025, metadata !DIExpression()), !dbg !2027
  %0 = load i64, ptr %size.addr, align 8, !dbg !2028
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2029
  %or = or i32 %1, 256, !dbg !2030
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !2031
  ret ptr %call, !dbg !2032
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !2033 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !2037
  ret i64 %call, !dbg !2038
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !2039 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2043, metadata !DIExpression()), !dbg !2044
  %0 = load i64, ptr %flags.addr, align 8, !dbg !2045
  %and = and i64 %0, 512, !dbg !2046
  %tobool = icmp ne i64 %and, 0, !dbg !2047
  %lnot = xor i1 %tobool, true, !dbg !2047
  %lnot.ext = zext i1 %lnot to i32, !dbg !2047
  ret i32 %lnot.ext, !dbg !2048
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !2049 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2051, metadata !DIExpression()), !dbg !2056
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2052, metadata !DIExpression()), !dbg !2057
  %0 = load i64, ptr %size.addr, align 8, !dbg !2058
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2059
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2060

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2061
  %tobool = icmp ne i64 %2, 0, !dbg !2061
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2062

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !2063
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2053, metadata !DIExpression()), !dbg !2064
  %3 = load i64, ptr %size.addr, align 8, !dbg !2065
  %cmp = icmp ugt i64 %3, 8192, !dbg !2067
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2068

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2069
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2070
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !2071
  store ptr %call, ptr %retval, align 8, !dbg !2072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2072

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2073
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !2073
  store i32 %call2, ptr %index, align 4, !dbg !2074
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2075
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2076
  %9 = ptrtoint ptr %8 to i64, !dbg !2076
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !2077
  %idxprom = zext i32 %call3 to i64, !dbg !2078
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2078
  %10 = load i32, ptr %index, align 4, !dbg !2079
  %idxprom4 = zext i32 %10 to i64, !dbg !2078
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2078
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2078
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2080
  %13 = load i64, ptr %size.addr, align 8, !dbg !2081
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !2082
  store ptr %call6, ptr %retval, align 8, !dbg !2083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2083

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !2084
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2085
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2086
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !2087
  store ptr %call8, ptr %retval, align 8, !dbg !2088
  br label %return, !dbg !2088

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2089
  ret ptr %16, !dbg !2089
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2090 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !2091 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2097, metadata !DIExpression()), !dbg !2099
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2098, metadata !DIExpression()), !dbg !2100
  %0 = load i64, ptr %size.addr, align 8, !dbg !2101
  %tobool = icmp ne i64 %0, 0, !dbg !2101
  br i1 %tobool, label %if.end, label %if.then, !dbg !2103

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2104
  br label %return, !dbg !2104

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2105
  %cmp = icmp ule i64 %1, 8, !dbg !2107
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2108

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2109
  br label %return, !dbg !2109

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2110
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2112
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2113

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2114
  %cmp4 = icmp ule i64 %3, 96, !dbg !2115
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2116

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2117
  br label %return, !dbg !2117

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2118
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2120
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2121

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2122
  %cmp9 = icmp ule i64 %5, 192, !dbg !2123
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2124

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2125
  br label %return, !dbg !2125

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2126
  %cmp12 = icmp ule i64 %6, 8, !dbg !2128
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2129

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2130
  br label %return, !dbg !2130

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2131
  %cmp15 = icmp ule i64 %7, 16, !dbg !2133
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2134

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2135
  br label %return, !dbg !2135

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2136
  %cmp18 = icmp ule i64 %8, 32, !dbg !2138
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2139

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2140
  br label %return, !dbg !2140

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2141
  %cmp21 = icmp ule i64 %9, 64, !dbg !2143
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2144

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2145
  br label %return, !dbg !2145

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2146
  %cmp24 = icmp ule i64 %10, 128, !dbg !2148
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2149

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2150
  br label %return, !dbg !2150

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2151
  %cmp27 = icmp ule i64 %11, 256, !dbg !2153
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2154

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2155
  br label %return, !dbg !2155

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2156
  %cmp30 = icmp ule i64 %12, 512, !dbg !2158
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2159

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2160
  br label %return, !dbg !2160

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2161
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2163
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2164

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2165
  br label %return, !dbg !2165

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2166
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2168
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2169

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2170
  br label %return, !dbg !2170

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2171
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2173
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2174

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2175
  br label %return, !dbg !2175

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2176
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2178
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2179

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2180
  br label %return, !dbg !2180

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2181
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2183
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2184

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2185
  br label %return, !dbg !2185

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2186
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2188
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2189

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2190
  br label %return, !dbg !2190

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2191
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2193
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2194

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2195
  br label %return, !dbg !2195

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2196
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2198
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2199

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2200
  br label %return, !dbg !2200

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2201
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2203
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2204

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2205
  br label %return, !dbg !2205

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2206
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2208
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2209

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2210
  br label %return, !dbg !2210

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2211
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2213
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2214

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2215
  br label %return, !dbg !2215

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2216
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2218
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2219

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2220
  br label %return, !dbg !2220

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2221, !range !2223, !noundef !2224
  %tobool69 = trunc i8 %25 to i1, !dbg !2221
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2225

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2226

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !2227, !srcloc !2230
  unreachable, !dbg !2227

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2231

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2232

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2233

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2235

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2233

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #13, !dbg !2237, !srcloc !2239
  br label %do.end75, !dbg !2237

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2233

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2240
  br label %return, !dbg !2240

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2241
  ret i32 %26, !dbg !2241
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2242 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !2248 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2252, metadata !DIExpression()), !dbg !2254
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2253, metadata !DIExpression()), !dbg !2255
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2256
  %and = and i32 %0, 17, !dbg !2256
  %cmp = icmp eq i32 %and, 0, !dbg !2256
  %lnot = xor i1 %cmp, true, !dbg !2256
  %lnot1 = xor i1 %lnot, true, !dbg !2256
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2256
  %conv = sext i32 %lnot.ext to i64, !dbg !2256
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2256
  %tobool = icmp ne i64 %expval, 0, !dbg !2256
  br i1 %tobool, label %if.then, label %if.end, !dbg !2258

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2259
  br label %return, !dbg !2259

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2260
  %and2 = and i32 %1, 1, !dbg !2262
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2262
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2263

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2264
  br label %return, !dbg !2264

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2265
  br label %return, !dbg !2265

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2267
  ret i32 %2, !dbg !2267
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2268 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2269 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !2270 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2272, metadata !DIExpression()), !dbg !2274
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !2275, !srcloc !2276
  %0 = load i64, ptr %flags, align 8, !dbg !2277
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !2278
  ret i64 %0, !dbg !2279
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2280 dso_local void @acpi_ut_add_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2281 dso_local i32 @acpi_ut_execute_HID(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2285 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2289 dso_local i32 @acpi_ut_execute_CID(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2293 dso_local i32 @acpi_ut_execute_STA(ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!910, !911, !912, !913, !914, !915, !916, !917}
!llvm.ident = !{!918}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 17, type: !908, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nsxfeval.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nsxfeval\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nsxfeval.ll drivers/acpi/acpica/nsxfeval.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !32, globals: !871, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsxfeval.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9b46ac76dab854d9f3592d33746cf7a")
!4 = !{!5, !11, !21}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 323, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31}
!24 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0)
!25 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1)
!26 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2)
!27 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3)
!28 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4)
!29 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5)
!30 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6)
!31 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6)
!32 = !{!33, !39, !43, !84, !68, !99, !102, !83, !867, !40, !35, !870, !869}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !34, line: 421, baseType: !35)
!34 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !36, line: 21, baseType: !37)
!36 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !38, line: 27, baseType: !7)
!38 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !34, line: 127, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !36, line: 23, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !38, line: 31, baseType: !42)
!42 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !34, line: 908, size: 192, elements: !45)
!45 = !{!46, !48, !53, !61, !71, !77, !85, !93}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !44, file: !34, line: 909, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !34, line: 644, baseType: !35)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !44, file: !34, line: 913, baseType: !49, size: 128)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !34, line: 910, size: 128, elements: !50)
!50 = !{!51, !52}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !49, file: !34, line: 911, baseType: !47, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !49, file: !34, line: 912, baseType: !40, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !44, file: !34, line: 919, baseType: !54, size: 128)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !34, line: 915, size: 128, elements: !55)
!55 = !{!56, !57, !58}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !34, line: 916, baseType: !47, size: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !54, file: !34, line: 917, baseType: !35, size: 32, offset: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !54, file: !34, line: 918, baseType: !59, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !44, file: !34, line: 925, baseType: !62, size: 128)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !34, line: 921, size: 128, elements: !63)
!63 = !{!64, !65, !66}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !34, line: 922, baseType: !47, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !62, file: !34, line: 923, baseType: !35, size: 32, offset: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !62, file: !34, line: 924, baseType: !67, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !36, line: 17, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !38, line: 21, baseType: !70)
!70 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !44, file: !34, line: 931, baseType: !72, size: 128)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !34, line: 927, size: 128, elements: !73)
!73 = !{!74, !75, !76}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !34, line: 928, baseType: !47, size: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !72, file: !34, line: 929, baseType: !35, size: 32, offset: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !72, file: !34, line: 930, baseType: !43, size: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !44, file: !34, line: 937, baseType: !78, size: 128)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !34, line: 933, size: 128, elements: !79)
!79 = !{!80, !81, !82}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !34, line: 934, baseType: !47, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !78, file: !34, line: 935, baseType: !47, size: 32, offset: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !78, file: !34, line: 936, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !34, line: 424, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !44, file: !34, line: 944, baseType: !86, size: 192)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !34, line: 939, size: 192, elements: !87)
!87 = !{!88, !89, !90, !92}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !86, file: !34, line: 940, baseType: !47, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !86, file: !34, line: 941, baseType: !35, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !86, file: !34, line: 942, baseType: !91, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !34, line: 128, baseType: !40)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !86, file: !34, line: 943, baseType: !35, size: 32, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !44, file: !34, line: 950, baseType: !94, size: 96)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !44, file: !34, line: 946, size: 96, elements: !95)
!95 = !{!96, !97, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !34, line: 947, baseType: !47, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !94, file: !34, line: 948, baseType: !35, size: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !94, file: !34, line: 949, baseType: !35, size: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !36, line: 19, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !38, line: 24, baseType: !101)
!101 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !22, line: 434, size: 1600, elements: !104)
!104 = !{!105, !110, !865, !866}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !103, file: !22, line: 435, baseType: !106, size: 128)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !22, line: 429, size: 128, elements: !107)
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !106, file: !22, line: 430, baseType: !84, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !106, file: !22, line: 431, baseType: !68, size: 8, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !103, file: !22, line: 436, baseType: !111, size: 576)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !22, line: 369, size: 576, elements: !112)
!112 = !{!113, !122, !135, !145, !180, !194, !203, !515, !532, !548, !561, !639, !651, !664, !674, !692, !714, !733, !752, !771, !784, !811, !828, !841, !855, !864}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !111, file: !22, line: 370, baseType: !114, size: 128)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !22, line: 73, size: 128, elements: !115)
!115 = !{!116, !118, !119, !120, !121}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !114, file: !22, line: 74, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !114, file: !22, line: 74, baseType: !68, size: 8, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !22, line: 74, baseType: !68, size: 8, offset: 72)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !114, file: !22, line: 74, baseType: !99, size: 16, offset: 80)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !22, line: 74, baseType: !68, size: 8, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !111, file: !22, line: 371, baseType: !123, size: 192)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !22, line: 76, size: 192, elements: !124)
!124 = !{!125, !126, !127, !128, !129, !130, !134}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !123, file: !22, line: 77, baseType: !117, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !123, file: !22, line: 77, baseType: !68, size: 8, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !123, file: !22, line: 77, baseType: !68, size: 8, offset: 72)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !123, file: !22, line: 77, baseType: !99, size: 16, offset: 80)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !123, file: !22, line: 77, baseType: !68, size: 8, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !123, file: !22, line: 77, baseType: !131, size: 24, offset: 104)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 24, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 3)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !123, file: !22, line: 78, baseType: !40, size: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !111, file: !22, line: 372, baseType: !136, size: 256)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !22, line: 93, size: 256, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !136, file: !22, line: 94, baseType: !117, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !136, file: !22, line: 94, baseType: !68, size: 8, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !136, file: !22, line: 94, baseType: !68, size: 8, offset: 72)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !136, file: !22, line: 94, baseType: !99, size: 16, offset: 80)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !22, line: 94, baseType: !68, size: 8, offset: 96)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !136, file: !22, line: 94, baseType: !59, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !136, file: !22, line: 94, baseType: !35, size: 32, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !111, file: !22, line: 373, baseType: !146, size: 384)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !22, line: 97, size: 384, elements: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !146, file: !22, line: 98, baseType: !117, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !146, file: !22, line: 98, baseType: !68, size: 8, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !146, file: !22, line: 98, baseType: !68, size: 8, offset: 72)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !146, file: !22, line: 98, baseType: !99, size: 16, offset: 80)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !146, file: !22, line: 98, baseType: !68, size: 8, offset: 96)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !146, file: !22, line: 98, baseType: !67, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !146, file: !22, line: 98, baseType: !35, size: 32, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !146, file: !22, line: 99, baseType: !35, size: 32, offset: 224)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !146, file: !22, line: 100, baseType: !67, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !146, file: !22, line: 101, baseType: !158, size: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !160, line: 133, size: 384, elements: !161)
!160 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!161 = !{!162, !163, !164, !165, !166, !175, !176, !177, !178}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !159, file: !160, line: 134, baseType: !117, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !159, file: !160, line: 135, baseType: !68, size: 8, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !159, file: !160, line: 136, baseType: !68, size: 8, offset: 72)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !159, file: !160, line: 137, baseType: !99, size: 16, offset: 80)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !159, file: !160, line: 138, baseType: !167, size: 32, offset: 96)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !168, line: 328, size: 32, elements: !169)
!168 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !167, file: !168, line: 329, baseType: !35, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !167, file: !168, line: 330, baseType: !172, size: 32)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 4)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !159, file: !160, line: 139, baseType: !158, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !159, file: !160, line: 140, baseType: !158, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !159, file: !160, line: 141, baseType: !158, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !159, file: !160, line: 142, baseType: !179, size: 16, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !34, line: 445, baseType: !99)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !111, file: !22, line: 374, baseType: !181, size: 384)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !22, line: 104, size: 384, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !191, !192, !193}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !181, file: !22, line: 105, baseType: !117, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !181, file: !22, line: 105, baseType: !68, size: 8, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !181, file: !22, line: 105, baseType: !68, size: 8, offset: 72)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !181, file: !22, line: 105, baseType: !99, size: 16, offset: 80)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !22, line: 105, baseType: !68, size: 8, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !181, file: !22, line: 105, baseType: !158, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !181, file: !22, line: 106, baseType: !190, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !181, file: !22, line: 107, baseType: !67, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !181, file: !22, line: 108, baseType: !35, size: 32, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !181, file: !22, line: 109, baseType: !35, size: 32, offset: 352)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !111, file: !22, line: 375, baseType: !195, size: 192)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !22, line: 118, size: 192, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !195, file: !22, line: 119, baseType: !117, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !195, file: !22, line: 119, baseType: !68, size: 8, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !195, file: !22, line: 119, baseType: !68, size: 8, offset: 72)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !195, file: !22, line: 119, baseType: !99, size: 16, offset: 80)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !195, file: !22, line: 119, baseType: !68, size: 8, offset: 96)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !195, file: !22, line: 119, baseType: !84, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !111, file: !22, line: 376, baseType: !204, size: 448)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !22, line: 144, size: 448, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !512, !513, !514}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !204, file: !22, line: 145, baseType: !117, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !204, file: !22, line: 145, baseType: !68, size: 8, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !204, file: !22, line: 145, baseType: !68, size: 8, offset: 72)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !204, file: !22, line: 145, baseType: !99, size: 16, offset: 80)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !22, line: 145, baseType: !68, size: 8, offset: 96)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !204, file: !22, line: 145, baseType: !68, size: 8, offset: 104)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !204, file: !22, line: 146, baseType: !68, size: 8, offset: 112)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !204, file: !22, line: 147, baseType: !68, size: 8, offset: 120)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !204, file: !22, line: 148, baseType: !117, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !204, file: !22, line: 149, baseType: !117, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !204, file: !22, line: 150, baseType: !67, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !204, file: !22, line: 154, baseType: !218, size: 64, offset: 320)
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !204, file: !22, line: 151, size: 64, elements: !219)
!219 = !{!220, !511}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !218, file: !22, line: 152, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !160, line: 248, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!33, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !227, line: 37, size: 9024, elements: !228)
!227 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !457, !458, !459, !460, !461, !465, !467, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !494, !495, !496, !497, !498, !499, !500, !501, !503, !509}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !227, line: 38, baseType: !225, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !226, file: !227, line: 39, baseType: !68, size: 8, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !226, file: !227, line: 40, baseType: !68, size: 8, offset: 72)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !226, file: !227, line: 41, baseType: !99, size: 16, offset: 80)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !226, file: !227, line: 42, baseType: !68, size: 8, offset: 96)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !226, file: !227, line: 43, baseType: !68, size: 8, offset: 104)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !226, file: !227, line: 44, baseType: !68, size: 8, offset: 112)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !226, file: !227, line: 45, baseType: !179, size: 16, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !226, file: !227, line: 46, baseType: !68, size: 8, offset: 144)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !226, file: !227, line: 47, baseType: !68, size: 8, offset: 152)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !226, file: !227, line: 48, baseType: !68, size: 8, offset: 160)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !226, file: !227, line: 49, baseType: !68, size: 8, offset: 168)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !226, file: !227, line: 50, baseType: !68, size: 8, offset: 176)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !226, file: !227, line: 51, baseType: !68, size: 8, offset: 184)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !226, file: !227, line: 52, baseType: !68, size: 8, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !226, file: !227, line: 53, baseType: !68, size: 8, offset: 200)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !226, file: !227, line: 54, baseType: !67, size: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !226, file: !227, line: 55, baseType: !35, size: 32, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !226, file: !227, line: 56, baseType: !35, size: 32, offset: 352)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !226, file: !227, line: 57, baseType: !35, size: 32, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !226, file: !227, line: 58, baseType: !35, size: 32, offset: 416)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !226, file: !227, line: 60, baseType: !251, size: 640, offset: 448)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !160, line: 909, size: 640, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !339, !340, !455, !456}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !251, file: !160, line: 910, baseType: !67, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !251, file: !160, line: 911, baseType: !67, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !251, file: !160, line: 912, baseType: !67, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !251, file: !160, line: 913, baseType: !67, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !251, file: !160, line: 914, baseType: !67, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !251, file: !160, line: 915, baseType: !259, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !160, line: 891, size: 1600, elements: !261)
!261 = !{!262, !282, !298}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !260, file: !160, line: 892, baseType: !263, size: 448)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !160, line: 844, size: 448, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !281}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !263, file: !160, line: 845, baseType: !259, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !263, file: !160, line: 845, baseType: !68, size: 8, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !263, file: !160, line: 845, baseType: !68, size: 8, offset: 72)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !263, file: !160, line: 845, baseType: !99, size: 16, offset: 80)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !263, file: !160, line: 845, baseType: !67, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !160, line: 845, baseType: !259, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !263, file: !160, line: 845, baseType: !158, size: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !263, file: !160, line: 845, baseType: !273, size: 64, offset: 320)
!273 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !160, line: 732, size: 64, elements: !274)
!274 = !{!275, !276, !277, !278, !279, !280}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !273, file: !160, line: 733, baseType: !40, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !273, file: !160, line: 734, baseType: !35, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !273, file: !160, line: 735, baseType: !59, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !273, file: !160, line: 736, baseType: !67, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !273, file: !160, line: 737, baseType: !59, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !273, file: !160, line: 738, baseType: !259, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !263, file: !160, line: 845, baseType: !68, size: 8, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !260, file: !160, line: 893, baseType: !283, size: 640)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !160, line: 851, size: 640, elements: !284)
!284 = !{!285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !283, file: !160, line: 852, baseType: !259, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !283, file: !160, line: 852, baseType: !68, size: 8, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !283, file: !160, line: 852, baseType: !68, size: 8, offset: 72)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !283, file: !160, line: 852, baseType: !99, size: 16, offset: 80)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !283, file: !160, line: 852, baseType: !67, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !160, line: 852, baseType: !259, size: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !283, file: !160, line: 852, baseType: !158, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !283, file: !160, line: 852, baseType: !273, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !283, file: !160, line: 852, baseType: !68, size: 8, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !283, file: !160, line: 852, baseType: !59, size: 64, offset: 448)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !283, file: !160, line: 853, baseType: !67, size: 64, offset: 512)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !283, file: !160, line: 854, baseType: !35, size: 32, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !283, file: !160, line: 855, baseType: !35, size: 32, offset: 608)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !260, file: !160, line: 894, baseType: !299, size: 1600)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !160, line: 862, size: 1600, elements: !300)
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !299, file: !160, line: 863, baseType: !259, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !299, file: !160, line: 863, baseType: !68, size: 8, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !299, file: !160, line: 863, baseType: !68, size: 8, offset: 72)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !299, file: !160, line: 863, baseType: !99, size: 16, offset: 80)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !299, file: !160, line: 863, baseType: !67, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !160, line: 863, baseType: !259, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !299, file: !160, line: 863, baseType: !158, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !299, file: !160, line: 863, baseType: !273, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !299, file: !160, line: 863, baseType: !68, size: 8, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !299, file: !160, line: 863, baseType: !259, size: 64, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !299, file: !160, line: 864, baseType: !259, size: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !299, file: !160, line: 865, baseType: !59, size: 64, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !299, file: !160, line: 866, baseType: !68, size: 8, offset: 640)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !299, file: !160, line: 867, baseType: !59, size: 64, offset: 704)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !299, file: !160, line: 868, baseType: !59, size: 64, offset: 768)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !299, file: !160, line: 869, baseType: !59, size: 64, offset: 832)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !299, file: !160, line: 870, baseType: !172, size: 32, offset: 896)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !299, file: !160, line: 871, baseType: !35, size: 32, offset: 928)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !299, file: !160, line: 872, baseType: !35, size: 32, offset: 960)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !299, file: !160, line: 873, baseType: !35, size: 32, offset: 992)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !299, file: !160, line: 874, baseType: !35, size: 32, offset: 1024)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !299, file: !160, line: 875, baseType: !35, size: 32, offset: 1056)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !299, file: !160, line: 876, baseType: !35, size: 32, offset: 1088)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !299, file: !160, line: 877, baseType: !35, size: 32, offset: 1120)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !299, file: !160, line: 878, baseType: !35, size: 32, offset: 1152)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !299, file: !160, line: 879, baseType: !35, size: 32, offset: 1184)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !299, file: !160, line: 880, baseType: !35, size: 32, offset: 1216)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !299, file: !160, line: 881, baseType: !35, size: 32, offset: 1248)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !299, file: !160, line: 882, baseType: !35, size: 32, offset: 1280)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !299, file: !160, line: 883, baseType: !35, size: 32, offset: 1312)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !299, file: !160, line: 884, baseType: !99, size: 16, offset: 1344)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !299, file: !160, line: 885, baseType: !68, size: 8, offset: 1360)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !299, file: !160, line: 886, baseType: !68, size: 8, offset: 1368)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !299, file: !160, line: 887, baseType: !68, size: 8, offset: 1376)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !299, file: !160, line: 888, baseType: !336, size: 160, offset: 1384)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 160, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 20)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !251, file: !160, line: 916, baseType: !158, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !251, file: !160, line: 917, baseType: !341, size: 64, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !160, line: 679, size: 640, elements: !343)
!343 = !{!344, !352, !365, !374, !383, !396, !410, !422, !434}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !342, file: !160, line: 680, baseType: !345, size: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !160, line: 575, size: 128, elements: !346)
!346 = !{!347, !348, !349, !350, !351}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !160, line: 576, baseType: !84, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !345, file: !160, line: 576, baseType: !68, size: 8, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !345, file: !160, line: 576, baseType: !68, size: 8, offset: 72)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !345, file: !160, line: 576, baseType: !99, size: 16, offset: 80)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !345, file: !160, line: 576, baseType: !99, size: 16, offset: 96)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !342, file: !160, line: 681, baseType: !353, size: 384)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !160, line: 604, size: 384, elements: !354)
!354 = !{!355, !356, !357, !358, !359, !360, !361, !362, !363, !364}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !160, line: 605, baseType: !84, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !353, file: !160, line: 605, baseType: !68, size: 8, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !353, file: !160, line: 605, baseType: !68, size: 8, offset: 72)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !353, file: !160, line: 605, baseType: !99, size: 16, offset: 80)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !353, file: !160, line: 605, baseType: !99, size: 16, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !353, file: !160, line: 606, baseType: !99, size: 16, offset: 112)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !353, file: !160, line: 607, baseType: !259, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !353, file: !160, line: 608, baseType: !67, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !353, file: !160, line: 609, baseType: !67, size: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !353, file: !160, line: 610, baseType: !40, size: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !342, file: !160, line: 682, baseType: !366, size: 192)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !160, line: 582, size: 192, elements: !367)
!367 = !{!368, !369, !370, !371, !372, !373}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !160, line: 583, baseType: !84, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !366, file: !160, line: 583, baseType: !68, size: 8, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !160, line: 583, baseType: !68, size: 8, offset: 72)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !366, file: !160, line: 583, baseType: !99, size: 16, offset: 80)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !366, file: !160, line: 583, baseType: !99, size: 16, offset: 96)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !366, file: !160, line: 584, baseType: !117, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !342, file: !160, line: 683, baseType: !375, size: 192)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !160, line: 616, size: 192, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !160, line: 617, baseType: !84, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !375, file: !160, line: 617, baseType: !68, size: 8, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !375, file: !160, line: 617, baseType: !68, size: 8, offset: 72)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !375, file: !160, line: 617, baseType: !99, size: 16, offset: 80)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !375, file: !160, line: 617, baseType: !99, size: 16, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !375, file: !160, line: 618, baseType: !158, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !342, file: !160, line: 684, baseType: !384, size: 448)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !160, line: 621, size: 448, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !394, !395}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !384, file: !160, line: 622, baseType: !84, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !384, file: !160, line: 622, baseType: !68, size: 8, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !160, line: 622, baseType: !68, size: 8, offset: 72)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !384, file: !160, line: 622, baseType: !99, size: 16, offset: 80)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !384, file: !160, line: 622, baseType: !99, size: 16, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !384, file: !160, line: 623, baseType: !35, size: 32, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !384, file: !160, line: 624, baseType: !259, size: 64, offset: 192)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !384, file: !160, line: 625, baseType: !67, size: 64, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !384, file: !160, line: 626, baseType: !67, size: 64, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !384, file: !160, line: 627, baseType: !35, size: 32, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !342, file: !160, line: 685, baseType: !397, size: 512)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !160, line: 590, size: 512, elements: !398)
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !160, line: 591, baseType: !84, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !397, file: !160, line: 591, baseType: !68, size: 8, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !397, file: !160, line: 591, baseType: !68, size: 8, offset: 72)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !397, file: !160, line: 591, baseType: !99, size: 16, offset: 80)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !397, file: !160, line: 591, baseType: !99, size: 16, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !397, file: !160, line: 592, baseType: !35, size: 32, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !397, file: !160, line: 593, baseType: !117, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !397, file: !160, line: 594, baseType: !117, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !397, file: !160, line: 595, baseType: !225, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !397, file: !160, line: 596, baseType: !84, size: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !397, file: !160, line: 597, baseType: !35, size: 32, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !342, file: !160, line: 686, baseType: !411, size: 320)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !160, line: 634, size: 320, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !419, !420, !421}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !411, file: !160, line: 635, baseType: !84, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !411, file: !160, line: 635, baseType: !68, size: 8, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !411, file: !160, line: 635, baseType: !68, size: 8, offset: 72)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !411, file: !160, line: 635, baseType: !99, size: 16, offset: 80)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !411, file: !160, line: 635, baseType: !99, size: 16, offset: 96)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !411, file: !160, line: 636, baseType: !68, size: 8, offset: 112)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !411, file: !160, line: 637, baseType: !225, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !411, file: !160, line: 638, baseType: !117, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !411, file: !160, line: 639, baseType: !40, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !342, file: !160, line: 687, baseType: !423, size: 640)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !160, line: 646, size: 640, elements: !424)
!424 = !{!425, !426, !427, !428, !429, !430}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !423, file: !160, line: 647, baseType: !84, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !423, file: !160, line: 647, baseType: !68, size: 8, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !160, line: 647, baseType: !68, size: 8, offset: 72)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !423, file: !160, line: 647, baseType: !99, size: 16, offset: 80)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !423, file: !160, line: 647, baseType: !99, size: 16, offset: 96)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !423, file: !160, line: 648, baseType: !431, size: 512, offset: 128)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 512, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 8)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !342, file: !160, line: 688, baseType: !435, size: 320)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !160, line: 669, size: 320, elements: !436)
!436 = !{!437, !438, !439, !440, !441, !442, !443, !444, !445}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !435, file: !160, line: 670, baseType: !84, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !435, file: !160, line: 670, baseType: !68, size: 8, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !435, file: !160, line: 670, baseType: !68, size: 8, offset: 72)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !435, file: !160, line: 670, baseType: !99, size: 16, offset: 80)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !435, file: !160, line: 670, baseType: !99, size: 16, offset: 96)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !435, file: !160, line: 671, baseType: !68, size: 8, offset: 112)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !435, file: !160, line: 672, baseType: !158, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !435, file: !160, line: 673, baseType: !117, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !435, file: !160, line: 674, baseType: !446, size: 64, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !160, line: 660, size: 128, elements: !448)
!448 = !{!449, !454}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !447, file: !160, line: 661, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !34, line: 1061, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !83, !35, !84}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !447, file: !160, line: 662, baseType: !84, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !251, file: !160, line: 918, baseType: !259, size: 64, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !251, file: !160, line: 919, baseType: !35, size: 32, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !226, file: !227, line: 61, baseType: !35, size: 32, offset: 1088)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !226, file: !227, line: 62, baseType: !35, size: 32, offset: 1120)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !226, file: !227, line: 63, baseType: !99, size: 16, offset: 1152)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !226, file: !227, line: 64, baseType: !68, size: 8, offset: 1168)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !226, file: !227, line: 66, baseType: !462, size: 2688, offset: 1216)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 2688, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 7)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !226, file: !227, line: 67, baseType: !466, size: 3072, offset: 3904)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 3072, elements: !432)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !226, file: !227, line: 68, baseType: !468, size: 576, offset: 6976)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 576, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 9)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !226, file: !227, line: 69, baseType: !190, size: 64, offset: 7552)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !226, file: !227, line: 71, baseType: !67, size: 64, offset: 7616)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !226, file: !227, line: 72, baseType: !190, size: 64, offset: 7680)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !226, file: !227, line: 73, baseType: !341, size: 64, offset: 7744)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !226, file: !227, line: 74, baseType: !158, size: 64, offset: 7808)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !226, file: !227, line: 75, baseType: !117, size: 64, offset: 7872)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !226, file: !227, line: 76, baseType: !158, size: 64, offset: 7936)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !226, file: !227, line: 77, baseType: !259, size: 64, offset: 8000)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !226, file: !227, line: 78, baseType: !117, size: 64, offset: 8064)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !226, file: !227, line: 79, baseType: !158, size: 64, offset: 8128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !226, file: !227, line: 80, baseType: !59, size: 64, offset: 8192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !226, file: !227, line: 81, baseType: !259, size: 64, offset: 8256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !226, file: !227, line: 82, baseType: !484, size: 64, offset: 8320)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !160, line: 718, size: 128, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !486, file: !160, line: 722, baseType: !35, size: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !486, file: !160, line: 723, baseType: !35, size: 32, offset: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !160, line: 724, baseType: !99, size: 16, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !486, file: !160, line: 725, baseType: !68, size: 8, offset: 80)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !486, file: !160, line: 726, baseType: !68, size: 8, offset: 88)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !486, file: !160, line: 727, baseType: !68, size: 8, offset: 96)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !226, file: !227, line: 83, baseType: !259, size: 64, offset: 8384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !226, file: !227, line: 84, baseType: !117, size: 64, offset: 8448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !226, file: !227, line: 85, baseType: !341, size: 64, offset: 8512)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !226, file: !227, line: 86, baseType: !117, size: 64, offset: 8576)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !226, file: !227, line: 87, baseType: !341, size: 64, offset: 8640)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !226, file: !227, line: 88, baseType: !259, size: 64, offset: 8704)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !226, file: !227, line: 89, baseType: !259, size: 64, offset: 8768)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !226, file: !227, line: 90, baseType: !502, size: 64, offset: 8832)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !226, file: !227, line: 91, baseType: !504, size: 64, offset: 8896)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !160, line: 652, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!33, !225, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !226, file: !227, line: 92, baseType: !510, size: 64, offset: 8960)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !160, line: 656, baseType: !222)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !218, file: !22, line: 153, baseType: !117, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !204, file: !22, line: 156, baseType: !35, size: 32, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !204, file: !22, line: 157, baseType: !179, size: 16, offset: 416)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !204, file: !22, line: 158, baseType: !68, size: 8, offset: 432)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !111, file: !22, line: 377, baseType: !516, size: 576)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !22, line: 122, size: 576, elements: !517)
!517 = !{!518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !516, file: !22, line: 123, baseType: !117, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !516, file: !22, line: 123, baseType: !68, size: 8, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !516, file: !22, line: 123, baseType: !68, size: 8, offset: 72)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !516, file: !22, line: 123, baseType: !99, size: 16, offset: 80)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !516, file: !22, line: 123, baseType: !68, size: 8, offset: 96)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !516, file: !22, line: 123, baseType: !68, size: 8, offset: 104)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !516, file: !22, line: 124, baseType: !99, size: 16, offset: 112)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !516, file: !22, line: 125, baseType: !84, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !516, file: !22, line: 126, baseType: !40, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !516, file: !22, line: 127, baseType: !502, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !516, file: !22, line: 128, baseType: !117, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !516, file: !22, line: 129, baseType: !117, size: 64, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !516, file: !22, line: 130, baseType: !158, size: 64, offset: 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !516, file: !22, line: 131, baseType: !68, size: 8, offset: 512)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !111, file: !22, line: 378, baseType: !533, size: 512)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !22, line: 134, size: 512, elements: !534)
!534 = !{!535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !546, !547}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !533, file: !22, line: 135, baseType: !117, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !533, file: !22, line: 135, baseType: !68, size: 8, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !533, file: !22, line: 135, baseType: !68, size: 8, offset: 72)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !533, file: !22, line: 135, baseType: !99, size: 16, offset: 80)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !533, file: !22, line: 135, baseType: !68, size: 8, offset: 96)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !533, file: !22, line: 135, baseType: !68, size: 8, offset: 104)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !533, file: !22, line: 136, baseType: !158, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !533, file: !22, line: 137, baseType: !117, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !533, file: !22, line: 138, baseType: !117, size: 64, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !533, file: !22, line: 139, baseType: !545, size: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !34, line: 129, baseType: !40)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !533, file: !22, line: 140, baseType: !35, size: 32, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !533, file: !22, line: 141, baseType: !84, size: 64, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !111, file: !22, line: 379, baseType: !549, size: 320)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !22, line: 185, size: 320, elements: !550)
!550 = !{!551, !552, !553, !554, !555, !556, !560}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !549, file: !22, line: 186, baseType: !117, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !549, file: !22, line: 186, baseType: !68, size: 8, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !549, file: !22, line: 186, baseType: !68, size: 8, offset: 72)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !549, file: !22, line: 186, baseType: !99, size: 16, offset: 80)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !549, file: !22, line: 186, baseType: !68, size: 8, offset: 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !549, file: !22, line: 186, baseType: !557, size: 128, offset: 128)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 128, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 2)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !549, file: !22, line: 186, baseType: !117, size: 64, offset: 256)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !111, file: !22, line: 380, baseType: !562, size: 384)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !22, line: 188, size: 384, elements: !563)
!563 = !{!564, !565, !566, !567, !568, !569, !570, !571}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !562, file: !22, line: 189, baseType: !117, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !562, file: !22, line: 189, baseType: !68, size: 8, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !562, file: !22, line: 189, baseType: !68, size: 8, offset: 72)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !562, file: !22, line: 189, baseType: !99, size: 16, offset: 80)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !562, file: !22, line: 189, baseType: !68, size: 8, offset: 96)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !562, file: !22, line: 190, baseType: !557, size: 128, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !562, file: !22, line: 190, baseType: !117, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !562, file: !22, line: 190, baseType: !572, size: 64, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !160, line: 480, size: 576, elements: !574)
!574 = !{!575, !576, !577, !578, !586, !601, !633, !634, !635, !636, !637, !638}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !573, file: !160, line: 481, baseType: !158, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !573, file: !160, line: 482, baseType: !572, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !573, file: !160, line: 483, baseType: !572, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !573, file: !160, line: 484, baseType: !579, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !160, line: 497, size: 256, elements: !581)
!581 = !{!582, !583, !584, !585}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !580, file: !160, line: 498, baseType: !579, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !580, file: !160, line: 499, baseType: !579, size: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !580, file: !160, line: 500, baseType: !572, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !580, file: !160, line: 501, baseType: !35, size: 32, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !573, file: !160, line: 485, baseType: !587, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !160, line: 466, size: 320, elements: !589)
!589 = !{!590, !595, !596, !597, !598, !599, !600}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !588, file: !160, line: 467, baseType: !591, size: 128)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !160, line: 459, size: 128, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !591, file: !160, line: 460, baseType: !68, size: 8)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !591, file: !160, line: 461, baseType: !40, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !588, file: !160, line: 468, baseType: !591, size: 128, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !588, file: !160, line: 469, baseType: !99, size: 16, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !588, file: !160, line: 470, baseType: !68, size: 8, offset: 272)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !588, file: !160, line: 471, baseType: !68, size: 8, offset: 280)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !588, file: !160, line: 472, baseType: !68, size: 8, offset: 288)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !588, file: !160, line: 473, baseType: !68, size: 8, offset: 296)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !573, file: !160, line: 486, baseType: !602, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !160, line: 448, size: 192, elements: !604)
!604 = !{!605, !628, !629, !630, !631, !632}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !603, file: !160, line: 449, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !160, line: 438, size: 64, elements: !607)
!607 = !{!608, !609, !622}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !606, file: !160, line: 439, baseType: !158, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !606, file: !160, line: 440, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !160, line: 419, size: 256, elements: !612)
!612 = !{!613, !618, !619, !620, !621}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !611, file: !160, line: 420, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !34, line: 1058, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!35, !83, !35, !84}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !611, file: !160, line: 421, baseType: !84, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !611, file: !160, line: 422, baseType: !158, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !611, file: !160, line: 423, baseType: !68, size: 8, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !611, file: !160, line: 424, baseType: !68, size: 8, offset: 200)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !606, file: !160, line: 441, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !160, line: 429, size: 128, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !624, file: !160, line: 430, baseType: !158, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !624, file: !160, line: 431, baseType: !623, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !603, file: !160, line: 450, baseType: !587, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !603, file: !160, line: 451, baseType: !68, size: 8, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !603, file: !160, line: 452, baseType: !68, size: 8, offset: 136)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !603, file: !160, line: 453, baseType: !68, size: 8, offset: 144)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !603, file: !160, line: 454, baseType: !68, size: 8, offset: 152)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !573, file: !160, line: 487, baseType: !40, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !573, file: !160, line: 488, baseType: !35, size: 32, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !573, file: !160, line: 489, baseType: !99, size: 16, offset: 480)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !573, file: !160, line: 490, baseType: !99, size: 16, offset: 496)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !573, file: !160, line: 491, baseType: !68, size: 8, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !573, file: !160, line: 492, baseType: !68, size: 8, offset: 520)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !111, file: !22, line: 381, baseType: !640, size: 384)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !22, line: 193, size: 384, elements: !641)
!641 = !{!642, !643, !644, !645, !646, !647, !648, !649, !650}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !640, file: !22, line: 194, baseType: !117, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !640, file: !22, line: 194, baseType: !68, size: 8, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !640, file: !22, line: 194, baseType: !68, size: 8, offset: 72)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !640, file: !22, line: 194, baseType: !99, size: 16, offset: 80)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !640, file: !22, line: 194, baseType: !68, size: 8, offset: 96)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !640, file: !22, line: 194, baseType: !557, size: 128, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !640, file: !22, line: 194, baseType: !117, size: 64, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !640, file: !22, line: 194, baseType: !35, size: 32, offset: 320)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !640, file: !22, line: 195, baseType: !35, size: 32, offset: 352)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !111, file: !22, line: 382, baseType: !652, size: 384)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !22, line: 198, size: 384, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !22, line: 199, baseType: !117, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !22, line: 199, baseType: !68, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !22, line: 199, baseType: !68, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !22, line: 199, baseType: !99, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !22, line: 199, baseType: !68, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !652, file: !22, line: 201, baseType: !68, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !652, file: !22, line: 202, baseType: !68, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !652, file: !22, line: 203, baseType: !557, size: 128, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !652, file: !22, line: 203, baseType: !117, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !652, file: !22, line: 203, baseType: !91, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !111, file: !22, line: 383, baseType: !665, size: 320)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !22, line: 206, size: 320, elements: !666)
!666 = !{!667, !668, !669, !670, !671, !672, !673}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !665, file: !22, line: 207, baseType: !117, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !665, file: !22, line: 207, baseType: !68, size: 8, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !665, file: !22, line: 207, baseType: !68, size: 8, offset: 72)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !665, file: !22, line: 207, baseType: !99, size: 16, offset: 80)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !665, file: !22, line: 207, baseType: !68, size: 8, offset: 96)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !665, file: !22, line: 207, baseType: !557, size: 128, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !665, file: !22, line: 207, baseType: !117, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !111, file: !22, line: 384, baseType: !675, size: 384)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !22, line: 234, size: 384, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !675, file: !22, line: 235, baseType: !117, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !675, file: !22, line: 235, baseType: !68, size: 8, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !22, line: 235, baseType: !68, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !675, file: !22, line: 235, baseType: !99, size: 16, offset: 80)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !22, line: 235, baseType: !68, size: 8, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !675, file: !22, line: 235, baseType: !68, size: 8, offset: 104)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !675, file: !22, line: 235, baseType: !68, size: 8, offset: 112)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !675, file: !22, line: 235, baseType: !68, size: 8, offset: 120)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !675, file: !22, line: 235, baseType: !158, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !675, file: !22, line: 235, baseType: !35, size: 32, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !675, file: !22, line: 235, baseType: !35, size: 32, offset: 224)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !675, file: !22, line: 235, baseType: !35, size: 32, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !675, file: !22, line: 235, baseType: !68, size: 8, offset: 288)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !675, file: !22, line: 235, baseType: !68, size: 8, offset: 296)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !675, file: !22, line: 235, baseType: !117, size: 64, offset: 320)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !111, file: !22, line: 385, baseType: !693, size: 576)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !22, line: 238, size: 576, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !693, file: !22, line: 239, baseType: !117, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !693, file: !22, line: 239, baseType: !68, size: 8, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !693, file: !22, line: 239, baseType: !68, size: 8, offset: 72)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !693, file: !22, line: 239, baseType: !99, size: 16, offset: 80)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !22, line: 239, baseType: !68, size: 8, offset: 96)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !693, file: !22, line: 239, baseType: !68, size: 8, offset: 104)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !693, file: !22, line: 239, baseType: !68, size: 8, offset: 112)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !693, file: !22, line: 239, baseType: !68, size: 8, offset: 120)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !693, file: !22, line: 239, baseType: !158, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !693, file: !22, line: 239, baseType: !35, size: 32, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !693, file: !22, line: 239, baseType: !35, size: 32, offset: 224)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !693, file: !22, line: 239, baseType: !35, size: 32, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !693, file: !22, line: 239, baseType: !68, size: 8, offset: 288)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !693, file: !22, line: 239, baseType: !68, size: 8, offset: 296)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !693, file: !22, line: 239, baseType: !99, size: 16, offset: 304)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !693, file: !22, line: 240, baseType: !117, size: 64, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !693, file: !22, line: 241, baseType: !67, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !693, file: !22, line: 242, baseType: !99, size: 16, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !693, file: !22, line: 243, baseType: !67, size: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !111, file: !22, line: 386, baseType: !715, size: 384)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !22, line: 263, size: 384, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !715, file: !22, line: 264, baseType: !117, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !715, file: !22, line: 264, baseType: !68, size: 8, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !715, file: !22, line: 264, baseType: !68, size: 8, offset: 72)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !715, file: !22, line: 264, baseType: !99, size: 16, offset: 80)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !715, file: !22, line: 264, baseType: !68, size: 8, offset: 96)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !715, file: !22, line: 264, baseType: !68, size: 8, offset: 104)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !715, file: !22, line: 264, baseType: !68, size: 8, offset: 112)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !715, file: !22, line: 264, baseType: !68, size: 8, offset: 120)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !22, line: 264, baseType: !158, size: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !715, file: !22, line: 264, baseType: !35, size: 32, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !715, file: !22, line: 264, baseType: !35, size: 32, offset: 224)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !715, file: !22, line: 264, baseType: !35, size: 32, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !715, file: !22, line: 264, baseType: !68, size: 8, offset: 288)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !715, file: !22, line: 264, baseType: !68, size: 8, offset: 296)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !715, file: !22, line: 264, baseType: !68, size: 8, offset: 304)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !715, file: !22, line: 265, baseType: !117, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !111, file: !22, line: 387, baseType: !734, size: 448)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !22, line: 246, size: 448, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !734, file: !22, line: 247, baseType: !117, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !734, file: !22, line: 247, baseType: !68, size: 8, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !22, line: 247, baseType: !68, size: 8, offset: 72)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !734, file: !22, line: 247, baseType: !99, size: 16, offset: 80)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !734, file: !22, line: 247, baseType: !68, size: 8, offset: 96)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !734, file: !22, line: 247, baseType: !68, size: 8, offset: 104)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !734, file: !22, line: 247, baseType: !68, size: 8, offset: 112)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !734, file: !22, line: 247, baseType: !68, size: 8, offset: 120)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !734, file: !22, line: 247, baseType: !158, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !734, file: !22, line: 247, baseType: !35, size: 32, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !734, file: !22, line: 247, baseType: !35, size: 32, offset: 224)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !734, file: !22, line: 247, baseType: !35, size: 32, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !734, file: !22, line: 247, baseType: !68, size: 8, offset: 288)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !734, file: !22, line: 247, baseType: !68, size: 8, offset: 296)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !734, file: !22, line: 247, baseType: !117, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !734, file: !22, line: 248, baseType: !117, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !111, file: !22, line: 388, baseType: !753, size: 448)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !22, line: 251, size: 448, elements: !754)
!754 = !{!755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !753, file: !22, line: 252, baseType: !117, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !753, file: !22, line: 252, baseType: !68, size: 8, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !753, file: !22, line: 252, baseType: !68, size: 8, offset: 72)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !753, file: !22, line: 252, baseType: !99, size: 16, offset: 80)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !753, file: !22, line: 252, baseType: !68, size: 8, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !753, file: !22, line: 252, baseType: !68, size: 8, offset: 104)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !753, file: !22, line: 252, baseType: !68, size: 8, offset: 112)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !753, file: !22, line: 252, baseType: !68, size: 8, offset: 120)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !753, file: !22, line: 252, baseType: !158, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !753, file: !22, line: 252, baseType: !35, size: 32, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !753, file: !22, line: 252, baseType: !35, size: 32, offset: 224)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !753, file: !22, line: 252, baseType: !35, size: 32, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !753, file: !22, line: 252, baseType: !68, size: 8, offset: 288)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !753, file: !22, line: 252, baseType: !68, size: 8, offset: 296)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !753, file: !22, line: 257, baseType: !117, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !753, file: !22, line: 258, baseType: !117, size: 64, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !111, file: !22, line: 389, baseType: !772, size: 512)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !22, line: 274, size: 512, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !782, !783}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !772, file: !22, line: 275, baseType: !117, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !772, file: !22, line: 275, baseType: !68, size: 8, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !772, file: !22, line: 275, baseType: !68, size: 8, offset: 72)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !772, file: !22, line: 275, baseType: !99, size: 16, offset: 80)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !772, file: !22, line: 275, baseType: !68, size: 8, offset: 96)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !772, file: !22, line: 275, baseType: !158, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !772, file: !22, line: 276, baseType: !35, size: 32, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !772, file: !22, line: 277, baseType: !450, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !772, file: !22, line: 278, baseType: !84, size: 64, offset: 320)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !772, file: !22, line: 279, baseType: !557, size: 128, offset: 384)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !111, file: !22, line: 390, baseType: !785, size: 576)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !22, line: 282, size: 576, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !800, !801, !802, !803, !809, !810}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !785, file: !22, line: 283, baseType: !117, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !785, file: !22, line: 283, baseType: !68, size: 8, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !785, file: !22, line: 283, baseType: !68, size: 8, offset: 72)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !785, file: !22, line: 283, baseType: !99, size: 16, offset: 80)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !785, file: !22, line: 283, baseType: !68, size: 8, offset: 96)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !785, file: !22, line: 283, baseType: !68, size: 8, offset: 104)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !785, file: !22, line: 284, baseType: !68, size: 8, offset: 112)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !785, file: !22, line: 285, baseType: !795, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !34, line: 1093, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!33, !35, !545, !35, !799, !84, !84}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !785, file: !22, line: 286, baseType: !158, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !785, file: !22, line: 287, baseType: !84, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !785, file: !22, line: 288, baseType: !84, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !785, file: !22, line: 289, baseType: !804, size: 64, offset: 384)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !34, line: 1126, baseType: !805)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!33, !83, !35, !84, !808}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !785, file: !22, line: 290, baseType: !117, size: 64, offset: 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !785, file: !22, line: 291, baseType: !117, size: 64, offset: 512)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !111, file: !22, line: 391, baseType: !812, size: 512)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !22, line: 309, size: 512, elements: !813)
!813 = !{!814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !812, file: !22, line: 310, baseType: !117, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !812, file: !22, line: 310, baseType: !68, size: 8, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !812, file: !22, line: 310, baseType: !68, size: 8, offset: 72)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !812, file: !22, line: 310, baseType: !99, size: 16, offset: 80)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !812, file: !22, line: 310, baseType: !68, size: 8, offset: 96)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !812, file: !22, line: 310, baseType: !68, size: 8, offset: 104)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !812, file: !22, line: 311, baseType: !68, size: 8, offset: 112)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !812, file: !22, line: 312, baseType: !68, size: 8, offset: 120)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !812, file: !22, line: 313, baseType: !84, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !812, file: !22, line: 314, baseType: !158, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !812, file: !22, line: 315, baseType: !190, size: 64, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !812, file: !22, line: 316, baseType: !67, size: 64, offset: 320)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !812, file: !22, line: 317, baseType: !67, size: 64, offset: 384)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !812, file: !22, line: 318, baseType: !35, size: 32, offset: 448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !111, file: !22, line: 392, baseType: !829, size: 448)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !22, line: 342, size: 448, elements: !830)
!830 = !{!831, !832, !833, !834, !835, !836, !837, !838, !839, !840}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !829, file: !22, line: 343, baseType: !117, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !829, file: !22, line: 343, baseType: !68, size: 8, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !829, file: !22, line: 343, baseType: !68, size: 8, offset: 72)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !829, file: !22, line: 343, baseType: !99, size: 16, offset: 80)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !829, file: !22, line: 343, baseType: !68, size: 8, offset: 96)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !829, file: !22, line: 343, baseType: !158, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !829, file: !22, line: 344, baseType: !158, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !829, file: !22, line: 345, baseType: !84, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !829, file: !22, line: 346, baseType: !67, size: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !829, file: !22, line: 347, baseType: !35, size: 32, offset: 384)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !111, file: !22, line: 393, baseType: !842, size: 256)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !22, line: 352, size: 256, elements: !843)
!843 = !{!844, !845, !846, !847, !848, !849, !854}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !842, file: !22, line: 353, baseType: !117, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !842, file: !22, line: 353, baseType: !68, size: 8, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !842, file: !22, line: 353, baseType: !68, size: 8, offset: 72)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !842, file: !22, line: 353, baseType: !99, size: 16, offset: 80)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !842, file: !22, line: 353, baseType: !68, size: 8, offset: 96)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !842, file: !22, line: 353, baseType: !850, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !34, line: 1064, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !83, !84}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !842, file: !22, line: 354, baseType: !84, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !111, file: !22, line: 394, baseType: !856, size: 192)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !22, line: 359, size: 192, elements: !857)
!857 = !{!858, !859, !860, !861, !862, !863}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !856, file: !22, line: 360, baseType: !117, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !856, file: !22, line: 360, baseType: !68, size: 8, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !856, file: !22, line: 360, baseType: !68, size: 8, offset: 72)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !856, file: !22, line: 360, baseType: !99, size: 16, offset: 80)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !856, file: !22, line: 360, baseType: !68, size: 8, offset: 96)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !856, file: !22, line: 360, baseType: !117, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !111, file: !22, line: 401, baseType: !159, size: 384)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !103, file: !22, line: 437, baseType: !159, size: 384)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !103, file: !22, line: 438, baseType: !260, size: 1600)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !868, line: 42, baseType: !869)
!868 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!869 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !868, line: 154, baseType: !7)
!871 = !{!872, !877, !882, !884, !889, !891, !893, !895, !897, !899, !901, !0, !903}
!872 = !DIGlobalVariableExpression(var: !873, expr: !DIExpression())
!873 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !874, isLocal: true, isDefinition: true)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 232, elements: !875)
!875 = !{!876}
!876 = !DISubrange(count: 29)
!877 = !DIGlobalVariableExpression(var: !878, expr: !DIExpression())
!878 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !879, isLocal: true, isDefinition: true)
!879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 496, elements: !880)
!880 = !{!881}
!881 = !DISubrange(count: 62)
!882 = !DIGlobalVariableExpression(var: !883, expr: !DIExpression())
!883 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_evaluate_object_typed174", scope: !2, file: !3, line: 141, type: !84, isLocal: true, isDefinition: true)
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(scope: null, file: !3, line: 234, type: !886, isLocal: true, isDefinition: true)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 304, elements: !887)
!887 = !{!888}
!888 = !DISubrange(count: 38)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_evaluate_object175", scope: !2, file: !3, line: 450, type: !84, isLocal: true, isDefinition: true)
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression())
!892 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_walk_namespace176", scope: !2, file: !3, line: 619, type: !84, isLocal: true, isDefinition: true)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_devices177", scope: !2, file: !3, line: 814, type: !84, isLocal: true, isDefinition: true)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_attach_data178", scope: !2, file: !3, line: 862, type: !84, isLocal: true, isDefinition: true)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_detach_data179", scope: !2, file: !3, line: 908, type: !84, isLocal: true, isDefinition: true)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_data_full180", scope: !2, file: !3, line: 961, type: !84, isLocal: true, isDefinition: true)
!901 = !DIGlobalVariableExpression(var: !902, expr: !DIExpression())
!902 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_data181", scope: !2, file: !3, line: 982, type: !84, isLocal: true, isDefinition: true)
!903 = !DIGlobalVariableExpression(var: !904, expr: !DIExpression())
!904 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !905, isLocal: true, isDefinition: true)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 168, elements: !906)
!906 = !{!907}
!907 = !DISubrange(count: 21)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, size: 72, elements: !469)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!910 = !{i32 7, !"Dwarf Version", i32 5}
!911 = !{i32 2, !"Debug Info Version", i32 3}
!912 = !{i32 1, !"wchar_size", i32 2}
!913 = !{i32 8, !"cf-protection-branch", i32 1}
!914 = !{i32 4, !"function_return_thunk_extern", i32 1}
!915 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!916 = !{i32 1, !"Code Model", i32 2}
!917 = !{i32 1, !"override-stack-alignment", i32 8}
!918 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!919 = distinct !DISubprogram(name: "acpi_evaluate_object_typed", scope: !3, file: !3, line: 44, type: !920, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !933)
!920 = !DISubroutineType(types: !921)
!921 = !{!33, !83, !922, !923, !928, !47}
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !34, line: 423, baseType: !59)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !34, line: 956, size: 128, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !924, file: !34, line: 957, baseType: !35, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !924, file: !34, line: 958, baseType: !43, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !34, line: 978, size: 128, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !929, file: !34, line: 979, baseType: !39, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !929, file: !34, line: 980, baseType: !84, size: 64, offset: 64)
!933 = !{!934, !935, !936, !937, !938, !939, !940, !941, !942, !943}
!934 = !DILocalVariable(name: "handle", arg: 1, scope: !919, file: !3, line: 44, type: !83)
!935 = !DILocalVariable(name: "pathname", arg: 2, scope: !919, file: !3, line: 45, type: !922)
!936 = !DILocalVariable(name: "external_params", arg: 3, scope: !919, file: !3, line: 46, type: !923)
!937 = !DILocalVariable(name: "return_buffer", arg: 4, scope: !919, file: !3, line: 47, type: !928)
!938 = !DILocalVariable(name: "return_type", arg: 5, scope: !919, file: !3, line: 48, type: !47)
!939 = !DILocalVariable(name: "status", scope: !919, file: !3, line: 50, type: !33)
!940 = !DILocalVariable(name: "free_buffer_on_error", scope: !919, file: !3, line: 51, type: !68)
!941 = !DILocalVariable(name: "target_handle", scope: !919, file: !3, line: 52, type: !83)
!942 = !DILocalVariable(name: "full_pathname", scope: !919, file: !3, line: 53, type: !59)
!943 = !DILabel(scope: !919, name: "exit", file: !3, line: 136)
!944 = !DILocation(line: 44, column: 40, scope: !919)
!945 = !DILocation(line: 45, column: 19, scope: !919)
!946 = !DILocation(line: 46, column: 32, scope: !919)
!947 = !DILocation(line: 47, column: 27, scope: !919)
!948 = !DILocation(line: 48, column: 24, scope: !919)
!949 = !DILocation(line: 50, column: 2, scope: !919)
!950 = !DILocation(line: 50, column: 14, scope: !919)
!951 = !DILocation(line: 51, column: 2, scope: !919)
!952 = !DILocation(line: 51, column: 5, scope: !919)
!953 = !DILocation(line: 52, column: 2, scope: !919)
!954 = !DILocation(line: 52, column: 14, scope: !919)
!955 = !DILocation(line: 53, column: 2, scope: !919)
!956 = !DILocation(line: 53, column: 8, scope: !919)
!957 = !DILocation(line: 59, column: 7, scope: !958)
!958 = distinct !DILexicalBlock(scope: !919, file: !3, line: 59, column: 6)
!959 = !DILocation(line: 59, column: 6, scope: !919)
!960 = !DILocation(line: 60, column: 3, scope: !961)
!961 = distinct !DILexicalBlock(scope: !958, file: !3, line: 59, column: 22)
!962 = !DILocation(line: 63, column: 6, scope: !963)
!963 = distinct !DILexicalBlock(scope: !919, file: !3, line: 63, column: 6)
!964 = !DILocation(line: 63, column: 21, scope: !963)
!965 = !DILocation(line: 63, column: 28, scope: !963)
!966 = !DILocation(line: 63, column: 6, scope: !919)
!967 = !DILocation(line: 64, column: 24, scope: !968)
!968 = distinct !DILexicalBlock(scope: !963, file: !3, line: 63, column: 53)
!969 = !DILocation(line: 65, column: 2, scope: !968)
!970 = !DILocation(line: 69, column: 18, scope: !919)
!971 = !DILocation(line: 69, column: 16, scope: !919)
!972 = !DILocation(line: 70, column: 6, scope: !973)
!973 = distinct !DILexicalBlock(scope: !919, file: !3, line: 70, column: 6)
!974 = !DILocation(line: 70, column: 6, scope: !919)
!975 = !DILocation(line: 71, column: 28, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !3, line: 70, column: 16)
!977 = !DILocation(line: 71, column: 36, scope: !976)
!978 = !DILocation(line: 71, column: 12, scope: !976)
!979 = !DILocation(line: 71, column: 10, scope: !976)
!980 = !DILocation(line: 72, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !976, file: !3, line: 72, column: 7)
!982 = !DILocation(line: 72, column: 7, scope: !976)
!983 = !DILocation(line: 73, column: 4, scope: !984)
!984 = distinct !DILexicalBlock(scope: !981, file: !3, line: 72, column: 29)
!985 = !DILocation(line: 75, column: 2, scope: !976)
!986 = !DILocation(line: 77, column: 48, scope: !919)
!987 = !DILocation(line: 77, column: 18, scope: !919)
!988 = !DILocation(line: 77, column: 16, scope: !919)
!989 = !DILocation(line: 78, column: 7, scope: !990)
!990 = distinct !DILexicalBlock(scope: !919, file: !3, line: 78, column: 6)
!991 = !DILocation(line: 78, column: 6, scope: !919)
!992 = !DILocation(line: 79, column: 3, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !3, line: 78, column: 22)
!994 = !DILocation(line: 84, column: 32, scope: !919)
!995 = !DILocation(line: 84, column: 53, scope: !919)
!996 = !DILocation(line: 85, column: 11, scope: !919)
!997 = !DILocation(line: 84, column: 11, scope: !919)
!998 = !DILocation(line: 84, column: 9, scope: !919)
!999 = !DILocation(line: 86, column: 6, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !919, file: !3, line: 86, column: 6)
!1001 = !DILocation(line: 86, column: 6, scope: !919)
!1002 = !DILocation(line: 87, column: 3, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 86, column: 28)
!1004 = !DILocation(line: 92, column: 6, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !919, file: !3, line: 92, column: 6)
!1006 = !DILocation(line: 92, column: 18, scope: !1005)
!1007 = !DILocation(line: 92, column: 6, scope: !919)
!1008 = !DILocation(line: 93, column: 3, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 92, column: 36)
!1010 = !DILocation(line: 96, column: 6, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !919, file: !3, line: 96, column: 6)
!1012 = !DILocation(line: 96, column: 21, scope: !1011)
!1013 = !DILocation(line: 96, column: 28, scope: !1011)
!1014 = !DILocation(line: 96, column: 6, scope: !919)
!1015 = !DILocation(line: 100, column: 3, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 96, column: 34)
!1017 = !DILocation(line: 102, column: 10, scope: !1016)
!1018 = !DILocation(line: 103, column: 3, scope: !1016)
!1019 = !DILocation(line: 108, column: 28, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !919, file: !3, line: 108, column: 6)
!1021 = !DILocation(line: 108, column: 43, scope: !1020)
!1022 = !DILocation(line: 108, column: 53, scope: !1020)
!1023 = !DILocation(line: 108, column: 61, scope: !1020)
!1024 = !DILocation(line: 108, column: 58, scope: !1020)
!1025 = !DILocation(line: 108, column: 6, scope: !919)
!1026 = !DILocation(line: 109, column: 3, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 108, column: 74)
!1028 = !DILocation(line: 114, column: 2, scope: !919)
!1029 = !DILocation(line: 121, column: 6, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !919, file: !3, line: 121, column: 6)
!1031 = !DILocation(line: 121, column: 6, scope: !919)
!1032 = !DILocation(line: 129, column: 16, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 121, column: 28)
!1034 = !DILocation(line: 129, column: 31, scope: !1033)
!1035 = !DILocation(line: 129, column: 3, scope: !1033)
!1036 = !DILocation(line: 130, column: 3, scope: !1033)
!1037 = !DILocation(line: 130, column: 18, scope: !1033)
!1038 = !DILocation(line: 130, column: 26, scope: !1033)
!1039 = !DILocation(line: 131, column: 2, scope: !1033)
!1040 = !DILocation(line: 133, column: 2, scope: !919)
!1041 = !DILocation(line: 133, column: 17, scope: !919)
!1042 = !DILocation(line: 133, column: 24, scope: !919)
!1043 = !DILocation(line: 134, column: 9, scope: !919)
!1044 = !DILocation(line: 134, column: 2, scope: !919)
!1045 = !DILocation(line: 136, column: 1, scope: !919)
!1046 = !DILocation(line: 137, column: 2, scope: !919)
!1047 = !DILocation(line: 138, column: 2, scope: !919)
!1048 = !DILocation(line: 139, column: 1, scope: !919)
!1049 = !DISubprogram(name: "acpi_get_handle", scope: !1050, file: !1050, line: 527, type: !1051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1050 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!33, !83, !1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!1055 = !DISubprogram(name: "acpi_ns_get_external_pathname", scope: !1056, file: !1056, line: 253, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!59, !158}
!1059 = distinct !DISubprogram(name: "acpi_evaluate_object", scope: !3, file: !3, line: 163, type: !1060, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1062)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!33, !83, !922, !923, !928}
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068, !1133, !1134, !1135, !1136}
!1063 = !DILocalVariable(name: "handle", arg: 1, scope: !1059, file: !3, line: 163, type: !83)
!1064 = !DILocalVariable(name: "pathname", arg: 2, scope: !1059, file: !3, line: 164, type: !922)
!1065 = !DILocalVariable(name: "external_params", arg: 3, scope: !1059, file: !3, line: 165, type: !923)
!1066 = !DILocalVariable(name: "return_buffer", arg: 4, scope: !1059, file: !3, line: 166, type: !928)
!1067 = !DILocalVariable(name: "status", scope: !1059, file: !3, line: 168, type: !33)
!1068 = !DILocalVariable(name: "info", scope: !1059, file: !3, line: 169, type: !1069)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_evaluate_info", file: !227, line: 152, size: 704, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_node", scope: !1070, file: !227, line: 155, baseType: !158, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "relative_pathname", scope: !1070, file: !227, line: 156, baseType: !1053, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1070, file: !227, line: 157, baseType: !190, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1070, file: !227, line: 159, baseType: !158, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1070, file: !227, line: 160, baseType: !117, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "full_pathname", scope: !1070, file: !227, line: 161, baseType: !59, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "predefined", scope: !1070, file: !227, line: 163, baseType: !1079, size: 64, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_predefined_info", file: !160, line: 351, size: 56, elements: !1082)
!1082 = !{!1083, !1089, !1098, !1106, !1115}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1081, file: !160, line: 352, baseType: !1084, size: 56)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_name_info", file: !160, line: 295, size: 56, elements: !1085)
!1085 = !{!1086, !1087, !1088}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1084, file: !160, line: 296, baseType: !172, size: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "argument_list", scope: !1084, file: !160, line: 297, baseType: !99, size: 16, offset: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "expected_btypes", scope: !1084, file: !160, line: 298, baseType: !68, size: 8, offset: 48)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info", scope: !1081, file: !160, line: 353, baseType: !1090, size: 56)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info", file: !160, line: 314, size: 56, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1090, file: !160, line: 315, baseType: !68, size: 8)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1090, file: !160, line: 316, baseType: !68, size: 8, offset: 8)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1090, file: !160, line: 317, baseType: !68, size: 8, offset: 16)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "object_type2", scope: !1090, file: !160, line: 318, baseType: !68, size: 8, offset: 24)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "count2", scope: !1090, file: !160, line: 319, baseType: !68, size: 8, offset: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1090, file: !160, line: 320, baseType: !99, size: 16, offset: 40)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info2", scope: !1081, file: !160, line: 354, baseType: !1099, size: 56)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info2", file: !160, line: 325, size: 56, elements: !1100)
!1100 = !{!1101, !1102, !1103, !1105}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1099, file: !160, line: 326, baseType: !68, size: 8)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1099, file: !160, line: 327, baseType: !68, size: 8, offset: 8)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1099, file: !160, line: 328, baseType: !1104, size: 32, offset: 16)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 32, elements: !173)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1099, file: !160, line: 329, baseType: !68, size: 8, offset: 48)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info3", scope: !1081, file: !160, line: 355, baseType: !1107, size: 56)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info3", file: !160, line: 334, size: 56, elements: !1108)
!1108 = !{!1109, !1110, !1111, !1113, !1114}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1107, file: !160, line: 335, baseType: !68, size: 8)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1107, file: !160, line: 336, baseType: !68, size: 8, offset: 8)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1107, file: !160, line: 337, baseType: !1112, size: 16, offset: 16)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 16, elements: !558)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "tail_object_type", scope: !1107, file: !160, line: 338, baseType: !68, size: 8, offset: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1107, file: !160, line: 339, baseType: !99, size: 16, offset: 40)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ret_info4", scope: !1081, file: !160, line: 356, baseType: !1116, size: 56)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_package_info4", file: !160, line: 342, size: 56, elements: !1117)
!1117 = !{!1118, !1119, !1120, !1121, !1122, !1123}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1116, file: !160, line: 343, baseType: !68, size: 8)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "object_type1", scope: !1116, file: !160, line: 344, baseType: !68, size: 8, offset: 8)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "count1", scope: !1116, file: !160, line: 345, baseType: !68, size: 8, offset: 16)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sub_object_types", scope: !1116, file: !160, line: 346, baseType: !68, size: 8, offset: 24)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_count", scope: !1116, file: !160, line: 347, baseType: !68, size: 8, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1116, file: !160, line: 348, baseType: !99, size: 16, offset: 40)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "return_object", scope: !1070, file: !227, line: 164, baseType: !117, size: 64, offset: 448)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "parent_package", scope: !1070, file: !227, line: 165, baseType: !117, size: 64, offset: 512)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "return_flags", scope: !1070, file: !227, line: 167, baseType: !35, size: 32, offset: 576)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "return_btype", scope: !1070, file: !227, line: 168, baseType: !35, size: 32, offset: 608)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1070, file: !227, line: 169, baseType: !99, size: 16, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "node_flags", scope: !1070, file: !227, line: 170, baseType: !99, size: 16, offset: 656)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !1070, file: !227, line: 171, baseType: !68, size: 8, offset: 672)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "return_object_type", scope: !1070, file: !227, line: 172, baseType: !68, size: 8, offset: 680)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1070, file: !227, line: 173, baseType: !68, size: 8, offset: 688)
!1133 = !DILocalVariable(name: "buffer_space_needed", scope: !1059, file: !3, line: 170, type: !39)
!1134 = !DILocalVariable(name: "i", scope: !1059, file: !3, line: 171, type: !35)
!1135 = !DILabel(scope: !1059, name: "cleanup_return_object", file: !3, line: 420)
!1136 = !DILabel(scope: !1059, name: "cleanup", file: !3, line: 435)
!1137 = !DILocation(line: 163, column: 34, scope: !1059)
!1138 = !DILocation(line: 164, column: 20, scope: !1059)
!1139 = !DILocation(line: 165, column: 33, scope: !1059)
!1140 = !DILocation(line: 166, column: 28, scope: !1059)
!1141 = !DILocation(line: 168, column: 2, scope: !1059)
!1142 = !DILocation(line: 168, column: 14, scope: !1059)
!1143 = !DILocation(line: 169, column: 2, scope: !1059)
!1144 = !DILocation(line: 169, column: 29, scope: !1059)
!1145 = !DILocation(line: 170, column: 2, scope: !1059)
!1146 = !DILocation(line: 170, column: 12, scope: !1059)
!1147 = !DILocation(line: 171, column: 2, scope: !1059)
!1148 = !DILocation(line: 171, column: 6, scope: !1059)
!1149 = !DILocation(line: 177, column: 9, scope: !1059)
!1150 = !DILocation(line: 177, column: 7, scope: !1059)
!1151 = !DILocation(line: 178, column: 7, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 178, column: 6)
!1153 = !DILocation(line: 178, column: 6, scope: !1059)
!1154 = !DILocation(line: 179, column: 3, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 178, column: 13)
!1156 = !DILocation(line: 184, column: 46, scope: !1059)
!1157 = !DILocation(line: 184, column: 22, scope: !1059)
!1158 = !DILocation(line: 184, column: 2, scope: !1059)
!1159 = !DILocation(line: 184, column: 8, scope: !1059)
!1160 = !DILocation(line: 184, column: 20, scope: !1059)
!1161 = !DILocation(line: 185, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 185, column: 6)
!1163 = !DILocation(line: 185, column: 13, scope: !1162)
!1164 = !DILocation(line: 185, column: 6, scope: !1059)
!1165 = !DILocation(line: 186, column: 10, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 185, column: 26)
!1167 = !DILocation(line: 187, column: 3, scope: !1166)
!1168 = !DILocation(line: 198, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 198, column: 6)
!1170 = !DILocation(line: 198, column: 6, scope: !1169)
!1171 = !DILocation(line: 198, column: 17, scope: !1169)
!1172 = !DILocation(line: 198, column: 21, scope: !1169)
!1173 = !DILocation(line: 198, column: 6, scope: !1059)
!1174 = !DILocation(line: 202, column: 3, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 198, column: 56)
!1176 = !DILocation(line: 202, column: 9, scope: !1175)
!1177 = !DILocation(line: 202, column: 21, scope: !1175)
!1178 = !DILocation(line: 203, column: 2, scope: !1175)
!1179 = !DILocation(line: 203, column: 14, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 203, column: 13)
!1181 = !DILocation(line: 203, column: 13, scope: !1169)
!1182 = !DILocation(line: 209, column: 8, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 209, column: 7)
!1184 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 203, column: 22)
!1185 = !DILocation(line: 209, column: 7, scope: !1184)
!1186 = !DILocation(line: 212, column: 3, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 209, column: 18)
!1188 = !DILocation(line: 218, column: 10, scope: !1184)
!1189 = !DILocation(line: 219, column: 3, scope: !1184)
!1190 = !DILocation(line: 222, column: 28, scope: !1059)
!1191 = !DILocation(line: 222, column: 2, scope: !1059)
!1192 = !DILocation(line: 222, column: 8, scope: !1059)
!1193 = !DILocation(line: 222, column: 26, scope: !1059)
!1194 = !DILocation(line: 228, column: 6, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 228, column: 6)
!1196 = !DILocation(line: 228, column: 22, scope: !1195)
!1197 = !DILocation(line: 228, column: 25, scope: !1195)
!1198 = !DILocation(line: 228, column: 42, scope: !1195)
!1199 = !DILocation(line: 228, column: 6, scope: !1059)
!1200 = !DILocation(line: 229, column: 28, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 228, column: 49)
!1202 = !DILocation(line: 229, column: 45, scope: !1201)
!1203 = !DILocation(line: 229, column: 23, scope: !1201)
!1204 = !DILocation(line: 229, column: 3, scope: !1201)
!1205 = !DILocation(line: 229, column: 9, scope: !1201)
!1206 = !DILocation(line: 229, column: 21, scope: !1201)
!1207 = !DILocation(line: 233, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 233, column: 7)
!1209 = !DILocation(line: 233, column: 13, scope: !1208)
!1210 = !DILocation(line: 233, column: 25, scope: !1208)
!1211 = !DILocation(line: 233, column: 7, scope: !1201)
!1212 = !DILocation(line: 234, column: 4, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 233, column: 49)
!1214 = !DILocation(line: 240, column: 4, scope: !1213)
!1215 = !DILocation(line: 240, column: 10, scope: !1213)
!1216 = !DILocation(line: 240, column: 22, scope: !1213)
!1217 = !DILocation(line: 241, column: 3, scope: !1213)
!1218 = !DILocation(line: 247, column: 22, scope: !1201)
!1219 = !DILocation(line: 247, column: 3, scope: !1201)
!1220 = !DILocation(line: 247, column: 9, scope: !1201)
!1221 = !DILocation(line: 247, column: 20, scope: !1201)
!1222 = !DILocation(line: 250, column: 8, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 250, column: 7)
!1224 = !DILocation(line: 250, column: 14, scope: !1223)
!1225 = !DILocation(line: 250, column: 7, scope: !1201)
!1226 = !DILocation(line: 251, column: 11, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 250, column: 26)
!1228 = !DILocation(line: 252, column: 4, scope: !1227)
!1229 = !DILocation(line: 257, column: 10, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 257, column: 3)
!1231 = !DILocation(line: 257, column: 8, scope: !1230)
!1232 = !DILocation(line: 257, column: 15, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 257, column: 3)
!1234 = !DILocation(line: 257, column: 19, scope: !1233)
!1235 = !DILocation(line: 257, column: 25, scope: !1233)
!1236 = !DILocation(line: 257, column: 17, scope: !1233)
!1237 = !DILocation(line: 257, column: 3, scope: !1230)
!1238 = !DILocation(line: 259, column: 41, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 257, column: 43)
!1240 = !DILocation(line: 260, column: 12, scope: !1239)
!1241 = !DILocation(line: 260, column: 20, scope: !1239)
!1242 = !DILocation(line: 261, column: 13, scope: !1239)
!1243 = !DILocation(line: 262, column: 12, scope: !1239)
!1244 = !DILocation(line: 262, column: 23, scope: !1239)
!1245 = !DILocation(line: 259, column: 8, scope: !1239)
!1246 = !DILocation(line: 258, column: 11, scope: !1239)
!1247 = !DILocation(line: 263, column: 8, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 263, column: 8)
!1249 = !DILocation(line: 263, column: 8, scope: !1239)
!1250 = !DILocation(line: 264, column: 5, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 263, column: 30)
!1252 = !DILocation(line: 266, column: 3, scope: !1239)
!1253 = !DILocation(line: 257, column: 39, scope: !1233)
!1254 = !DILocation(line: 257, column: 3, scope: !1233)
!1255 = distinct !{!1255, !1237, !1256, !1257, !1258}
!1256 = !DILocation(line: 266, column: 3, scope: !1230)
!1257 = !{!"llvm.loop.mustprogress"}
!1258 = !{!"llvm.loop.unroll.disable"}
!1259 = !DILocation(line: 268, column: 3, scope: !1201)
!1260 = !DILocation(line: 268, column: 9, scope: !1201)
!1261 = !DILocation(line: 268, column: 20, scope: !1201)
!1262 = !DILocation(line: 268, column: 26, scope: !1201)
!1263 = !DILocation(line: 268, column: 39, scope: !1201)
!1264 = !DILocation(line: 269, column: 2, scope: !1201)
!1265 = !DILocation(line: 354, column: 28, scope: !1059)
!1266 = !DILocation(line: 354, column: 11, scope: !1059)
!1267 = !DILocation(line: 354, column: 9, scope: !1059)
!1268 = !DILocation(line: 360, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 360, column: 6)
!1270 = !DILocation(line: 360, column: 6, scope: !1059)
!1271 = !DILocation(line: 361, column: 3, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 360, column: 22)
!1273 = !DILocation(line: 364, column: 7, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 364, column: 6)
!1275 = !DILocation(line: 364, column: 13, scope: !1274)
!1276 = !DILocation(line: 364, column: 6, scope: !1059)
!1277 = !DILocation(line: 365, column: 3, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 364, column: 28)
!1279 = !DILocation(line: 365, column: 18, scope: !1278)
!1280 = !DILocation(line: 365, column: 25, scope: !1278)
!1281 = !DILocation(line: 366, column: 3, scope: !1278)
!1282 = !DILocation(line: 369, column: 6, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 369, column: 6)
!1284 = !DILocation(line: 369, column: 52, scope: !1283)
!1285 = !DILocation(line: 369, column: 6, scope: !1059)
!1286 = !DILocation(line: 379, column: 10, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 370, column: 28)
!1288 = !DILocation(line: 380, column: 3, scope: !1287)
!1289 = !DILocation(line: 380, column: 9, scope: !1287)
!1290 = !DILocation(line: 380, column: 23, scope: !1287)
!1291 = !DILocation(line: 381, column: 3, scope: !1287)
!1292 = !DILocation(line: 381, column: 18, scope: !1287)
!1293 = !DILocation(line: 381, column: 25, scope: !1287)
!1294 = !DILocation(line: 382, column: 2, scope: !1287)
!1295 = !DILocation(line: 384, column: 6, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 384, column: 6)
!1297 = !DILocation(line: 384, column: 6, scope: !1059)
!1298 = !DILocation(line: 385, column: 3, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 384, column: 28)
!1300 = !DILocation(line: 390, column: 29, scope: !1059)
!1301 = !DILocation(line: 390, column: 2, scope: !1059)
!1302 = !DILocation(line: 394, column: 35, scope: !1059)
!1303 = !DILocation(line: 394, column: 41, scope: !1059)
!1304 = !DILocation(line: 394, column: 11, scope: !1059)
!1305 = !DILocation(line: 394, column: 9, scope: !1059)
!1306 = !DILocation(line: 396, column: 6, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 396, column: 6)
!1308 = !DILocation(line: 396, column: 6, scope: !1059)
!1309 = !DILocation(line: 400, column: 38, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 396, column: 28)
!1311 = !DILocation(line: 401, column: 10, scope: !1310)
!1312 = !DILocation(line: 400, column: 12, scope: !1310)
!1313 = !DILocation(line: 400, column: 10, scope: !1310)
!1314 = !DILocation(line: 402, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 402, column: 7)
!1316 = !DILocation(line: 402, column: 7, scope: !1310)
!1317 = !DILocation(line: 411, column: 3, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 402, column: 29)
!1319 = !DILocation(line: 415, column: 40, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 411, column: 10)
!1321 = !DILocation(line: 415, column: 46, scope: !1320)
!1322 = !DILocation(line: 416, column: 12, scope: !1320)
!1323 = !DILocation(line: 415, column: 8, scope: !1320)
!1324 = !DILocation(line: 414, column: 11, scope: !1320)
!1325 = !DILocation(line: 418, column: 2, scope: !1310)
!1326 = !DILocation(line: 420, column: 1, scope: !1059)
!1327 = !DILocation(line: 422, column: 6, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 422, column: 6)
!1329 = !DILocation(line: 422, column: 12, scope: !1328)
!1330 = !DILocation(line: 422, column: 6, scope: !1059)
!1331 = !DILocation(line: 427, column: 3, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 422, column: 27)
!1333 = !DILocation(line: 431, column: 28, scope: !1332)
!1334 = !DILocation(line: 431, column: 34, scope: !1332)
!1335 = !DILocation(line: 431, column: 3, scope: !1332)
!1336 = !DILocation(line: 432, column: 3, scope: !1332)
!1337 = !DILocation(line: 433, column: 2, scope: !1332)
!1338 = !DILocation(line: 435, column: 1, scope: !1059)
!1339 = !DILocation(line: 439, column: 6, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 439, column: 6)
!1341 = !DILocation(line: 439, column: 12, scope: !1340)
!1342 = !DILocation(line: 439, column: 6, scope: !1059)
!1343 = !DILocation(line: 443, column: 39, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 439, column: 24)
!1345 = !DILocation(line: 443, column: 45, scope: !1344)
!1346 = !DILocation(line: 443, column: 3, scope: !1344)
!1347 = !DILocation(line: 444, column: 2, scope: !1344)
!1348 = !DILocation(line: 446, column: 2, scope: !1059)
!1349 = !DILocation(line: 447, column: 2, scope: !1059)
!1350 = !DILocation(line: 448, column: 1, scope: !1059)
!1351 = !DISubprogram(name: "acpi_error", scope: !1050, file: !1050, line: 901, type: !1352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !1053, !35, !1053, null}
!1354 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !1355, file: !1355, line: 225, type: !1356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1355 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1053, !47}
!1358 = distinct !DISubprogram(name: "acpi_os_free", scope: !1359, file: !1359, line: 60, type: !1360, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1362)
!1359 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !84}
!1362 = !{!1363}
!1363 = !DILocalVariable(name: "memory", arg: 1, scope: !1358, file: !1359, line: 60, type: !84)
!1364 = !DILocation(line: 60, column: 39, scope: !1358)
!1365 = !DILocation(line: 62, column: 8, scope: !1358)
!1366 = !DILocation(line: 62, column: 2, scope: !1358)
!1367 = !DILocation(line: 63, column: 1, scope: !1358)
!1368 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1359, file: !1359, line: 55, type: !1369, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1371)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!84, !39}
!1371 = !{!1372, !1373, !1375, !1378, !1379, !1382}
!1372 = !DILocalVariable(name: "size", arg: 1, scope: !1368, file: !1359, line: 55, type: !39)
!1373 = !DILocalVariable(name: "_flags", scope: !1374, file: !1359, line: 57, type: !869)
!1374 = distinct !DILexicalBlock(scope: !1368, file: !1359, line: 57, column: 23)
!1375 = !DILocalVariable(name: "__dummy", scope: !1376, file: !1359, line: 57, type: !869)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !1359, line: 57, column: 23)
!1377 = distinct !DILexicalBlock(scope: !1374, file: !1359, line: 57, column: 23)
!1378 = !DILocalVariable(name: "__dummy2", scope: !1376, file: !1359, line: 57, type: !869)
!1379 = !DILocalVariable(name: "__dummy", scope: !1380, file: !1359, line: 57, type: !869)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !1359, line: 57, column: 23)
!1381 = distinct !DILexicalBlock(scope: !1374, file: !1359, line: 57, column: 23)
!1382 = !DILocalVariable(name: "__dummy2", scope: !1380, file: !1359, line: 57, type: !869)
!1383 = !DILocation(line: 55, column: 55, scope: !1368)
!1384 = !DILocation(line: 57, column: 17, scope: !1368)
!1385 = !DILocation(line: 57, column: 23, scope: !1374)
!1386 = !DILocation(line: 57, column: 23, scope: !1376)
!1387 = !DILocation(line: 57, column: 23, scope: !1377)
!1388 = !DILocation(line: 57, column: 23, scope: !1380)
!1389 = !DILocation(line: 57, column: 23, scope: !1381)
!1390 = !DILocation(line: 57, column: 23, scope: !1368)
!1391 = !DILocation(line: 57, column: 9, scope: !1368)
!1392 = !DILocation(line: 57, column: 2, scope: !1368)
!1393 = !DISubprogram(name: "acpi_ns_validate_handle", scope: !1056, file: !1056, line: 398, type: !1394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!158, !83}
!1396 = !DISubprogram(name: "acpi_ut_predefined_warning", scope: !1355, file: !1355, line: 708, type: !1397, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{null, !1053, !35, !59, !99, !1053, null}
!1399 = !DISubprogram(name: "acpi_ut_copy_eobject_to_iobject", scope: !1355, file: !1355, line: 273, type: !1400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!33, !43, !190}
!1402 = !DISubprogram(name: "acpi_ns_evaluate", scope: !1056, file: !1056, line: 208, type: !1403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!33, !1069}
!1405 = distinct !DISubprogram(name: "acpi_ns_resolve_references", scope: !3, file: !3, line: 472, type: !1406, scopeLine: 473, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1408)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{null, !1069}
!1408 = !{!1409, !1410, !1411}
!1409 = !DILocalVariable(name: "info", arg: 1, scope: !1405, file: !3, line: 472, type: !1069)
!1410 = !DILocalVariable(name: "obj_desc", scope: !1405, file: !3, line: 474, type: !117)
!1411 = !DILocalVariable(name: "node", scope: !1405, file: !3, line: 475, type: !158)
!1412 = !DILocation(line: 472, column: 67, scope: !1405)
!1413 = !DILocation(line: 474, column: 2, scope: !1405)
!1414 = !DILocation(line: 474, column: 29, scope: !1405)
!1415 = !DILocation(line: 475, column: 2, scope: !1405)
!1416 = !DILocation(line: 475, column: 30, scope: !1405)
!1417 = !DILocation(line: 479, column: 7, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 479, column: 6)
!1419 = !DILocation(line: 479, column: 13, scope: !1418)
!1420 = !DILocation(line: 479, column: 36, scope: !1418)
!1421 = !DILocation(line: 479, column: 6, scope: !1418)
!1422 = !DILocation(line: 479, column: 41, scope: !1418)
!1423 = !DILocation(line: 479, column: 6, scope: !1405)
!1424 = !DILocation(line: 480, column: 3, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 479, column: 71)
!1426 = !DILocation(line: 490, column: 10, scope: !1405)
!1427 = !DILocation(line: 490, column: 16, scope: !1405)
!1428 = !DILocation(line: 490, column: 41, scope: !1405)
!1429 = !DILocation(line: 490, column: 2, scope: !1405)
!1430 = !DILocation(line: 493, column: 16, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 490, column: 48)
!1432 = !DILocation(line: 493, column: 22, scope: !1431)
!1433 = !DILocation(line: 493, column: 47, scope: !1431)
!1434 = !DILocation(line: 493, column: 14, scope: !1431)
!1435 = !DILocation(line: 493, column: 12, scope: !1431)
!1436 = !DILocation(line: 494, column: 3, scope: !1431)
!1437 = !DILocation(line: 498, column: 10, scope: !1431)
!1438 = !DILocation(line: 498, column: 16, scope: !1431)
!1439 = !DILocation(line: 498, column: 41, scope: !1431)
!1440 = !DILocation(line: 498, column: 8, scope: !1431)
!1441 = !DILocation(line: 499, column: 7, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 499, column: 7)
!1443 = !DILocation(line: 499, column: 7, scope: !1431)
!1444 = !DILocation(line: 500, column: 15, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 499, column: 13)
!1446 = !DILocation(line: 500, column: 21, scope: !1445)
!1447 = !DILocation(line: 500, column: 13, scope: !1445)
!1448 = !DILocation(line: 501, column: 3, scope: !1445)
!1449 = !DILocation(line: 502, column: 3, scope: !1431)
!1450 = !DILocation(line: 506, column: 3, scope: !1431)
!1451 = !DILocation(line: 511, column: 6, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1405, file: !3, line: 511, column: 6)
!1453 = !DILocation(line: 511, column: 6, scope: !1405)
!1454 = !DILocation(line: 512, column: 25, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1452, file: !3, line: 511, column: 16)
!1456 = !DILocation(line: 512, column: 3, scope: !1455)
!1457 = !DILocation(line: 513, column: 28, scope: !1455)
!1458 = !DILocation(line: 513, column: 34, scope: !1455)
!1459 = !DILocation(line: 513, column: 3, scope: !1455)
!1460 = !DILocation(line: 514, column: 25, scope: !1455)
!1461 = !DILocation(line: 514, column: 3, scope: !1455)
!1462 = !DILocation(line: 514, column: 9, scope: !1455)
!1463 = !DILocation(line: 514, column: 23, scope: !1455)
!1464 = !DILocation(line: 515, column: 2, scope: !1455)
!1465 = !DILocation(line: 517, column: 2, scope: !1405)
!1466 = !DILocation(line: 518, column: 1, scope: !1405)
!1467 = !DISubprogram(name: "acpi_ut_get_object_size", scope: !1355, file: !1355, line: 462, type: !1468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!33, !117, !1470}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!1471 = !DISubprogram(name: "acpi_ut_initialize_buffer", scope: !1355, file: !1355, line: 660, type: !1472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!33, !928, !39}
!1474 = !DISubprogram(name: "acpi_ut_copy_iobject_to_eobject", scope: !1355, file: !1355, line: 269, type: !1475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!33, !117, !928}
!1477 = !DISubprogram(name: "acpi_ex_enter_interpreter", scope: !1478, file: !1478, line: 464, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1478 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null}
!1481 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1355, file: !1355, line: 369, type: !1482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{null, !117}
!1484 = !DISubprogram(name: "acpi_ex_exit_interpreter", scope: !1478, file: !1478, line: 466, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1485 = !DISubprogram(name: "acpi_ut_delete_internal_object_list", scope: !1355, file: !1355, line: 375, type: !1486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null, !190}
!1488 = distinct !DISubprogram(name: "acpi_walk_namespace", scope: !3, file: !3, line: 554, type: !1489, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1492)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!33, !47, !83, !35, !1491, !1491, !84, !808}
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_callback", file: !34, line: 1135, baseType: !805)
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502}
!1493 = !DILocalVariable(name: "type", arg: 1, scope: !1488, file: !3, line: 554, type: !47)
!1494 = !DILocalVariable(name: "start_object", arg: 2, scope: !1488, file: !3, line: 555, type: !83)
!1495 = !DILocalVariable(name: "max_depth", arg: 3, scope: !1488, file: !3, line: 556, type: !35)
!1496 = !DILocalVariable(name: "descending_callback", arg: 4, scope: !1488, file: !3, line: 557, type: !1491)
!1497 = !DILocalVariable(name: "ascending_callback", arg: 5, scope: !1488, file: !3, line: 558, type: !1491)
!1498 = !DILocalVariable(name: "context", arg: 6, scope: !1488, file: !3, line: 559, type: !84)
!1499 = !DILocalVariable(name: "return_value", arg: 7, scope: !1488, file: !3, line: 559, type: !808)
!1500 = !DILocalVariable(name: "status", scope: !1488, file: !3, line: 561, type: !33)
!1501 = !DILabel(scope: !1488, name: "unlock_and_exit2", file: !3, line: 611)
!1502 = !DILabel(scope: !1488, name: "unlock_and_exit", file: !3, line: 614)
!1503 = !DILocation(line: 554, column: 38, scope: !1488)
!1504 = !DILocation(line: 555, column: 19, scope: !1488)
!1505 = !DILocation(line: 556, column: 11, scope: !1488)
!1506 = !DILocation(line: 557, column: 26, scope: !1488)
!1507 = !DILocation(line: 558, column: 26, scope: !1488)
!1508 = !DILocation(line: 559, column: 13, scope: !1488)
!1509 = !DILocation(line: 559, column: 29, scope: !1488)
!1510 = !DILocation(line: 561, column: 2, scope: !1488)
!1511 = !DILocation(line: 561, column: 14, scope: !1488)
!1512 = !DILocation(line: 567, column: 7, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 567, column: 6)
!1514 = !DILocation(line: 567, column: 12, scope: !1513)
!1515 = !DILocation(line: 567, column: 35, scope: !1513)
!1516 = !DILocation(line: 568, column: 8, scope: !1513)
!1517 = !DILocation(line: 568, column: 19, scope: !1513)
!1518 = !DILocation(line: 568, column: 24, scope: !1513)
!1519 = !DILocation(line: 568, column: 44, scope: !1513)
!1520 = !DILocation(line: 568, column: 48, scope: !1513)
!1521 = !DILocation(line: 567, column: 6, scope: !1488)
!1522 = !DILocation(line: 569, column: 3, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1513, file: !3, line: 568, column: 69)
!1524 = !DILocation(line: 583, column: 11, scope: !1488)
!1525 = !DILocation(line: 583, column: 9, scope: !1488)
!1526 = !DILocation(line: 584, column: 6, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 584, column: 6)
!1528 = !DILocation(line: 584, column: 6, scope: !1488)
!1529 = !DILocation(line: 585, column: 3, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 584, column: 28)
!1531 = !DILocation(line: 594, column: 11, scope: !1488)
!1532 = !DILocation(line: 594, column: 9, scope: !1488)
!1533 = !DILocation(line: 595, column: 6, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 595, column: 6)
!1535 = !DILocation(line: 595, column: 6, scope: !1488)
!1536 = !DILocation(line: 596, column: 3, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 595, column: 28)
!1538 = !DILocation(line: 601, column: 31, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1488, file: !3, line: 601, column: 6)
!1540 = !DILocation(line: 601, column: 7, scope: !1539)
!1541 = !DILocation(line: 601, column: 6, scope: !1488)
!1542 = !DILocation(line: 602, column: 10, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 601, column: 46)
!1544 = !DILocation(line: 603, column: 3, scope: !1543)
!1545 = !DILocation(line: 606, column: 34, scope: !1488)
!1546 = !DILocation(line: 606, column: 40, scope: !1488)
!1547 = !DILocation(line: 606, column: 54, scope: !1488)
!1548 = !DILocation(line: 608, column: 6, scope: !1488)
!1549 = !DILocation(line: 608, column: 27, scope: !1488)
!1550 = !DILocation(line: 609, column: 6, scope: !1488)
!1551 = !DILocation(line: 609, column: 15, scope: !1488)
!1552 = !DILocation(line: 606, column: 11, scope: !1488)
!1553 = !DILocation(line: 606, column: 9, scope: !1488)
!1554 = !DILocation(line: 606, column: 2, scope: !1488)
!1555 = !DILocation(line: 611, column: 1, scope: !1488)
!1556 = !DILocation(line: 612, column: 8, scope: !1488)
!1557 = !DILocation(line: 612, column: 2, scope: !1488)
!1558 = !DILocation(line: 614, column: 1, scope: !1488)
!1559 = !DILocation(line: 615, column: 8, scope: !1488)
!1560 = !DILocation(line: 616, column: 2, scope: !1488)
!1561 = !DILocation(line: 617, column: 1, scope: !1488)
!1562 = !DISubprogram(name: "acpi_ut_acquire_read_lock", scope: !1355, file: !1355, line: 425, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!33, !1565}
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_rw_lock", file: !160, line: 58, size: 192, elements: !1567)
!1567 = !{!1568, !1569, !1570}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "writer_mutex", scope: !1566, file: !160, line: 59, baseType: !84, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "reader_mutex", scope: !1566, file: !160, line: 60, baseType: !84, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "num_readers", scope: !1566, file: !160, line: 61, baseType: !35, size: 32, offset: 128)
!1571 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !1355, file: !1355, line: 646, type: !1572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!33, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !160, line: 17, baseType: !35)
!1575 = !DISubprogram(name: "acpi_ns_walk_namespace", scope: !1056, file: !1056, line: 77, type: !1576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!33, !47, !83, !35, !35, !1491, !1491, !84, !808}
!1578 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !1355, file: !1355, line: 648, type: !1572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1579 = !DISubprogram(name: "acpi_ut_release_read_lock", scope: !1355, file: !1355, line: 427, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1580 = distinct !DISubprogram(name: "acpi_get_devices", scope: !3, file: !3, line: 771, type: !1581, scopeLine: 774, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1583)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!33, !1053, !1491, !84, !808}
!1583 = !{!1584, !1585, !1586, !1587, !1588, !1589}
!1584 = !DILocalVariable(name: "HID", arg: 1, scope: !1580, file: !3, line: 771, type: !1053)
!1585 = !DILocalVariable(name: "user_function", arg: 2, scope: !1580, file: !3, line: 772, type: !1491)
!1586 = !DILocalVariable(name: "context", arg: 3, scope: !1580, file: !3, line: 773, type: !84)
!1587 = !DILocalVariable(name: "return_value", arg: 4, scope: !1580, file: !3, line: 773, type: !808)
!1588 = !DILocalVariable(name: "status", scope: !1580, file: !3, line: 775, type: !33)
!1589 = !DILocalVariable(name: "info", scope: !1580, file: !3, line: 776, type: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_get_devices_info", file: !227, line: 116, size: 192, elements: !1591)
!1591 = !{!1592, !1593, !1594}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "user_function", scope: !1590, file: !227, line: 117, baseType: !1491, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1590, file: !227, line: 118, baseType: !84, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "hid", scope: !1590, file: !227, line: 119, baseType: !1053, size: 64, offset: 128)
!1595 = !DILocation(line: 771, column: 30, scope: !1580)
!1596 = !DILocation(line: 772, column: 23, scope: !1580)
!1597 = !DILocation(line: 773, column: 10, scope: !1580)
!1598 = !DILocation(line: 773, column: 26, scope: !1580)
!1599 = !DILocation(line: 775, column: 2, scope: !1580)
!1600 = !DILocation(line: 775, column: 14, scope: !1580)
!1601 = !DILocation(line: 776, column: 2, scope: !1580)
!1602 = !DILocation(line: 776, column: 31, scope: !1580)
!1603 = !DILocation(line: 782, column: 7, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 782, column: 6)
!1605 = !DILocation(line: 782, column: 6, scope: !1580)
!1606 = !DILocation(line: 783, column: 3, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 782, column: 22)
!1608 = !DILocation(line: 790, column: 13, scope: !1580)
!1609 = !DILocation(line: 790, column: 7, scope: !1580)
!1610 = !DILocation(line: 790, column: 11, scope: !1580)
!1611 = !DILocation(line: 791, column: 17, scope: !1580)
!1612 = !DILocation(line: 791, column: 7, scope: !1580)
!1613 = !DILocation(line: 791, column: 15, scope: !1580)
!1614 = !DILocation(line: 792, column: 23, scope: !1580)
!1615 = !DILocation(line: 792, column: 7, scope: !1580)
!1616 = !DILocation(line: 792, column: 21, scope: !1580)
!1617 = !DILocation(line: 800, column: 11, scope: !1580)
!1618 = !DILocation(line: 800, column: 9, scope: !1580)
!1619 = !DILocation(line: 801, column: 6, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 801, column: 6)
!1621 = !DILocation(line: 801, column: 6, scope: !1580)
!1622 = !DILocation(line: 802, column: 3, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 801, column: 28)
!1624 = !DILocation(line: 808, column: 13, scope: !1580)
!1625 = !DILocation(line: 805, column: 11, scope: !1580)
!1626 = !DILocation(line: 805, column: 9, scope: !1580)
!1627 = !DILocation(line: 810, column: 8, scope: !1580)
!1628 = !DILocation(line: 811, column: 2, scope: !1580)
!1629 = !DILocation(line: 812, column: 1, scope: !1580)
!1630 = distinct !DISubprogram(name: "acpi_ns_get_device_callback", scope: !3, file: !3, line: 635, type: !806, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1638, !1639, !1640, !1641, !1647, !1657, !1658, !1659}
!1632 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1630, file: !3, line: 635, type: !83)
!1633 = !DILocalVariable(name: "nesting_level", arg: 2, scope: !1630, file: !3, line: 636, type: !35)
!1634 = !DILocalVariable(name: "context", arg: 3, scope: !1630, file: !3, line: 637, type: !84)
!1635 = !DILocalVariable(name: "return_value", arg: 4, scope: !1630, file: !3, line: 637, type: !808)
!1636 = !DILocalVariable(name: "info", scope: !1630, file: !3, line: 639, type: !1637)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1638 = !DILocalVariable(name: "status", scope: !1630, file: !3, line: 640, type: !33)
!1639 = !DILocalVariable(name: "node", scope: !1630, file: !3, line: 641, type: !158)
!1640 = !DILocalVariable(name: "flags", scope: !1630, file: !3, line: 642, type: !35)
!1641 = !DILocalVariable(name: "hid", scope: !1630, file: !3, line: 643, type: !1642)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id", file: !34, line: 1165, size: 128, elements: !1644)
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1643, file: !34, line: 1166, baseType: !35, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1643, file: !34, line: 1167, baseType: !59, size: 64, offset: 64)
!1647 = !DILocalVariable(name: "cid", scope: !1630, file: !3, line: 644, type: !1648)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id_list", file: !34, line: 1170, size: 64, elements: !1650)
!1650 = !{!1651, !1652, !1653}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1649, file: !34, line: 1171, baseType: !35, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "list_size", scope: !1649, file: !34, line: 1172, baseType: !35, size: 32, offset: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1649, file: !34, line: 1173, baseType: !1654, offset: 64)
!1654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1643, elements: !1655)
!1655 = !{!1656}
!1656 = !DISubrange(count: -1)
!1657 = !DILocalVariable(name: "i", scope: !1630, file: !3, line: 645, type: !35)
!1658 = !DILocalVariable(name: "found", scope: !1630, file: !3, line: 646, type: !68)
!1659 = !DILocalVariable(name: "no_match", scope: !1630, file: !3, line: 647, type: !1660)
!1660 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1661 = !DILocation(line: 635, column: 41, scope: !1630)
!1662 = !DILocation(line: 636, column: 12, scope: !1630)
!1663 = !DILocation(line: 637, column: 14, scope: !1630)
!1664 = !DILocation(line: 637, column: 30, scope: !1630)
!1665 = !DILocation(line: 639, column: 2, scope: !1630)
!1666 = !DILocation(line: 639, column: 32, scope: !1630)
!1667 = !DILocation(line: 639, column: 39, scope: !1630)
!1668 = !DILocation(line: 640, column: 2, scope: !1630)
!1669 = !DILocation(line: 640, column: 14, scope: !1630)
!1670 = !DILocation(line: 641, column: 2, scope: !1630)
!1671 = !DILocation(line: 641, column: 30, scope: !1630)
!1672 = !DILocation(line: 642, column: 2, scope: !1630)
!1673 = !DILocation(line: 642, column: 6, scope: !1630)
!1674 = !DILocation(line: 643, column: 2, scope: !1630)
!1675 = !DILocation(line: 643, column: 29, scope: !1630)
!1676 = !DILocation(line: 644, column: 2, scope: !1630)
!1677 = !DILocation(line: 644, column: 34, scope: !1630)
!1678 = !DILocation(line: 645, column: 2, scope: !1630)
!1679 = !DILocation(line: 645, column: 6, scope: !1630)
!1680 = !DILocation(line: 646, column: 2, scope: !1630)
!1681 = !DILocation(line: 646, column: 5, scope: !1630)
!1682 = !DILocation(line: 647, column: 2, scope: !1630)
!1683 = !DILocation(line: 647, column: 6, scope: !1630)
!1684 = !DILocation(line: 649, column: 11, scope: !1630)
!1685 = !DILocation(line: 649, column: 9, scope: !1630)
!1686 = !DILocation(line: 650, column: 6, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 650, column: 6)
!1688 = !DILocation(line: 650, column: 6, scope: !1630)
!1689 = !DILocation(line: 651, column: 11, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 650, column: 28)
!1691 = !DILocation(line: 651, column: 3, scope: !1690)
!1692 = !DILocation(line: 654, column: 33, scope: !1630)
!1693 = !DILocation(line: 654, column: 9, scope: !1630)
!1694 = !DILocation(line: 654, column: 7, scope: !1630)
!1695 = !DILocation(line: 655, column: 11, scope: !1630)
!1696 = !DILocation(line: 655, column: 9, scope: !1630)
!1697 = !DILocation(line: 656, column: 6, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 656, column: 6)
!1699 = !DILocation(line: 656, column: 6, scope: !1630)
!1700 = !DILocation(line: 657, column: 11, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1698, file: !3, line: 656, column: 28)
!1702 = !DILocation(line: 657, column: 3, scope: !1701)
!1703 = !DILocation(line: 660, column: 7, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 660, column: 6)
!1705 = !DILocation(line: 660, column: 6, scope: !1630)
!1706 = !DILocation(line: 661, column: 3, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1704, file: !3, line: 660, column: 13)
!1708 = !DILocation(line: 678, column: 6, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 678, column: 6)
!1710 = !DILocation(line: 678, column: 12, scope: !1709)
!1711 = !DILocation(line: 678, column: 16, scope: !1709)
!1712 = !DILocation(line: 678, column: 6, scope: !1630)
!1713 = !DILocation(line: 679, column: 32, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1709, file: !3, line: 678, column: 25)
!1715 = !DILocation(line: 679, column: 12, scope: !1714)
!1716 = !DILocation(line: 679, column: 10, scope: !1714)
!1717 = !DILocation(line: 680, column: 7, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 680, column: 7)
!1719 = !DILocation(line: 680, column: 14, scope: !1718)
!1720 = !DILocation(line: 680, column: 7, scope: !1714)
!1721 = !DILocation(line: 681, column: 4, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 680, column: 31)
!1723 = !DILocation(line: 682, column: 14, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1718, file: !3, line: 682, column: 14)
!1725 = !DILocation(line: 682, column: 14, scope: !1718)
!1726 = !DILocation(line: 683, column: 4, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 682, column: 36)
!1728 = !DILocation(line: 686, column: 21, scope: !1714)
!1729 = !DILocation(line: 686, column: 26, scope: !1714)
!1730 = !DILocation(line: 686, column: 34, scope: !1714)
!1731 = !DILocation(line: 686, column: 40, scope: !1714)
!1732 = !DILocation(line: 686, column: 14, scope: !1714)
!1733 = !DILocation(line: 686, column: 12, scope: !1714)
!1734 = !DILocation(line: 687, column: 3, scope: !1714)
!1735 = !DILocation(line: 689, column: 7, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1714, file: !3, line: 689, column: 7)
!1737 = !DILocation(line: 689, column: 7, scope: !1714)
!1738 = !DILocation(line: 694, column: 33, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 689, column: 17)
!1740 = !DILocation(line: 694, column: 13, scope: !1739)
!1741 = !DILocation(line: 694, column: 11, scope: !1739)
!1742 = !DILocation(line: 695, column: 8, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 695, column: 8)
!1744 = !DILocation(line: 695, column: 15, scope: !1743)
!1745 = !DILocation(line: 695, column: 8, scope: !1739)
!1746 = !DILocation(line: 696, column: 5, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1743, file: !3, line: 695, column: 32)
!1748 = !DILocation(line: 697, column: 15, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1743, file: !3, line: 697, column: 15)
!1750 = !DILocation(line: 697, column: 15, scope: !1743)
!1751 = !DILocation(line: 698, column: 5, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1749, file: !3, line: 697, column: 37)
!1753 = !DILocation(line: 703, column: 10, scope: !1739)
!1754 = !DILocation(line: 704, column: 11, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 704, column: 4)
!1756 = !DILocation(line: 704, column: 9, scope: !1755)
!1757 = !DILocation(line: 704, column: 16, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1755, file: !3, line: 704, column: 4)
!1759 = !DILocation(line: 704, column: 20, scope: !1758)
!1760 = !DILocation(line: 704, column: 25, scope: !1758)
!1761 = !DILocation(line: 704, column: 18, scope: !1758)
!1762 = !DILocation(line: 704, column: 4, scope: !1755)
!1763 = !DILocation(line: 705, column: 16, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !3, line: 705, column: 9)
!1765 = distinct !DILexicalBlock(scope: !1758, file: !3, line: 704, column: 37)
!1766 = !DILocation(line: 705, column: 21, scope: !1764)
!1767 = !DILocation(line: 705, column: 25, scope: !1764)
!1768 = !DILocation(line: 705, column: 28, scope: !1764)
!1769 = !DILocation(line: 705, column: 36, scope: !1764)
!1770 = !DILocation(line: 705, column: 42, scope: !1764)
!1771 = !DILocation(line: 705, column: 9, scope: !1764)
!1772 = !DILocation(line: 705, column: 47, scope: !1764)
!1773 = !DILocation(line: 705, column: 9, scope: !1765)
!1774 = !DILocation(line: 709, column: 12, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 705, column: 53)
!1776 = !DILocation(line: 710, column: 6, scope: !1775)
!1777 = !DILocation(line: 712, column: 4, scope: !1765)
!1778 = !DILocation(line: 704, column: 33, scope: !1758)
!1779 = !DILocation(line: 704, column: 4, scope: !1758)
!1780 = distinct !{!1780, !1762, !1781, !1257, !1258}
!1781 = !DILocation(line: 712, column: 4, scope: !1755)
!1782 = !DILocation(line: 714, column: 4, scope: !1739)
!1783 = !DILocation(line: 715, column: 9, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 715, column: 8)
!1785 = !DILocation(line: 715, column: 8, scope: !1739)
!1786 = !DILocation(line: 716, column: 5, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 715, column: 16)
!1788 = !DILocation(line: 718, column: 3, scope: !1739)
!1789 = !DILocation(line: 719, column: 2, scope: !1714)
!1790 = !DILocation(line: 723, column: 31, scope: !1630)
!1791 = !DILocation(line: 723, column: 11, scope: !1630)
!1792 = !DILocation(line: 723, column: 9, scope: !1630)
!1793 = !DILocation(line: 724, column: 6, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 724, column: 6)
!1795 = !DILocation(line: 724, column: 6, scope: !1630)
!1796 = !DILocation(line: 725, column: 3, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 724, column: 28)
!1798 = !DILocation(line: 728, column: 8, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 728, column: 6)
!1800 = !DILocation(line: 728, column: 14, scope: !1799)
!1801 = !DILocation(line: 728, column: 41, scope: !1799)
!1802 = !DILocation(line: 729, column: 8, scope: !1799)
!1803 = !DILocation(line: 729, column: 14, scope: !1799)
!1804 = !DILocation(line: 728, column: 6, scope: !1630)
!1805 = !DILocation(line: 735, column: 3, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 729, column: 46)
!1807 = !DILocation(line: 740, column: 11, scope: !1630)
!1808 = !DILocation(line: 740, column: 17, scope: !1630)
!1809 = !DILocation(line: 740, column: 31, scope: !1630)
!1810 = !DILocation(line: 740, column: 43, scope: !1630)
!1811 = !DILocation(line: 741, column: 10, scope: !1630)
!1812 = !DILocation(line: 741, column: 16, scope: !1630)
!1813 = !DILocation(line: 741, column: 25, scope: !1630)
!1814 = !DILocation(line: 740, column: 9, scope: !1630)
!1815 = !DILocation(line: 742, column: 10, scope: !1630)
!1816 = !DILocation(line: 742, column: 2, scope: !1630)
!1817 = !DILocation(line: 743, column: 1, scope: !1630)
!1818 = distinct !DISubprogram(name: "acpi_attach_data", scope: !3, file: !3, line: 830, type: !1819, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1821)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!33, !83, !850, !84}
!1821 = !{!1822, !1823, !1824, !1825, !1826, !1827}
!1822 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1818, file: !3, line: 830, type: !83)
!1823 = !DILocalVariable(name: "handler", arg: 2, scope: !1818, file: !3, line: 831, type: !850)
!1824 = !DILocalVariable(name: "data", arg: 3, scope: !1818, file: !3, line: 831, type: !84)
!1825 = !DILocalVariable(name: "node", scope: !1818, file: !3, line: 833, type: !158)
!1826 = !DILocalVariable(name: "status", scope: !1818, file: !3, line: 834, type: !33)
!1827 = !DILabel(scope: !1818, name: "unlock_and_exit", file: !3, line: 857)
!1828 = !DILocation(line: 830, column: 30, scope: !1818)
!1829 = !DILocation(line: 831, column: 24, scope: !1818)
!1830 = !DILocation(line: 831, column: 39, scope: !1818)
!1831 = !DILocation(line: 833, column: 2, scope: !1818)
!1832 = !DILocation(line: 833, column: 30, scope: !1818)
!1833 = !DILocation(line: 834, column: 2, scope: !1818)
!1834 = !DILocation(line: 834, column: 14, scope: !1818)
!1835 = !DILocation(line: 838, column: 7, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 838, column: 6)
!1837 = !DILocation(line: 838, column: 18, scope: !1836)
!1838 = !DILocation(line: 838, column: 22, scope: !1836)
!1839 = !DILocation(line: 838, column: 30, scope: !1836)
!1840 = !DILocation(line: 838, column: 34, scope: !1836)
!1841 = !DILocation(line: 838, column: 6, scope: !1818)
!1842 = !DILocation(line: 839, column: 3, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 838, column: 40)
!1844 = !DILocation(line: 842, column: 11, scope: !1818)
!1845 = !DILocation(line: 842, column: 9, scope: !1818)
!1846 = !DILocation(line: 843, column: 6, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 843, column: 6)
!1848 = !DILocation(line: 843, column: 6, scope: !1818)
!1849 = !DILocation(line: 844, column: 11, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 843, column: 28)
!1851 = !DILocation(line: 844, column: 3, scope: !1850)
!1852 = !DILocation(line: 849, column: 33, scope: !1818)
!1853 = !DILocation(line: 849, column: 9, scope: !1818)
!1854 = !DILocation(line: 849, column: 7, scope: !1818)
!1855 = !DILocation(line: 850, column: 7, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 850, column: 6)
!1857 = !DILocation(line: 850, column: 6, scope: !1818)
!1858 = !DILocation(line: 851, column: 10, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1856, file: !3, line: 850, column: 13)
!1860 = !DILocation(line: 852, column: 3, scope: !1859)
!1861 = !DILocation(line: 855, column: 31, scope: !1818)
!1862 = !DILocation(line: 855, column: 37, scope: !1818)
!1863 = !DILocation(line: 855, column: 46, scope: !1818)
!1864 = !DILocation(line: 855, column: 11, scope: !1818)
!1865 = !DILocation(line: 855, column: 9, scope: !1818)
!1866 = !DILocation(line: 855, column: 2, scope: !1818)
!1867 = !DILocation(line: 857, column: 1, scope: !1818)
!1868 = !DILocation(line: 858, column: 8, scope: !1818)
!1869 = !DILocation(line: 859, column: 10, scope: !1818)
!1870 = !DILocation(line: 859, column: 2, scope: !1818)
!1871 = !DILocation(line: 860, column: 1, scope: !1818)
!1872 = !DISubprogram(name: "acpi_ns_attach_data", scope: !1056, file: !1056, line: 307, type: !1873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!33, !158, !850, !84}
!1875 = distinct !DISubprogram(name: "acpi_detach_data", scope: !3, file: !3, line: 877, type: !1876, scopeLine: 878, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1878)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!33, !83, !850}
!1878 = !{!1879, !1880, !1881, !1882, !1883}
!1879 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1875, file: !3, line: 877, type: !83)
!1880 = !DILocalVariable(name: "handler", arg: 2, scope: !1875, file: !3, line: 877, type: !850)
!1881 = !DILocalVariable(name: "node", scope: !1875, file: !3, line: 879, type: !158)
!1882 = !DILocalVariable(name: "status", scope: !1875, file: !3, line: 880, type: !33)
!1883 = !DILabel(scope: !1875, name: "unlock_and_exit", file: !3, line: 903)
!1884 = !DILocation(line: 877, column: 30, scope: !1875)
!1885 = !DILocation(line: 877, column: 62, scope: !1875)
!1886 = !DILocation(line: 879, column: 2, scope: !1875)
!1887 = !DILocation(line: 879, column: 30, scope: !1875)
!1888 = !DILocation(line: 880, column: 2, scope: !1875)
!1889 = !DILocation(line: 880, column: 14, scope: !1875)
!1890 = !DILocation(line: 884, column: 7, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 884, column: 6)
!1892 = !DILocation(line: 884, column: 18, scope: !1891)
!1893 = !DILocation(line: 884, column: 22, scope: !1891)
!1894 = !DILocation(line: 884, column: 6, scope: !1875)
!1895 = !DILocation(line: 885, column: 3, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 884, column: 31)
!1897 = !DILocation(line: 888, column: 11, scope: !1875)
!1898 = !DILocation(line: 888, column: 9, scope: !1875)
!1899 = !DILocation(line: 889, column: 6, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 889, column: 6)
!1901 = !DILocation(line: 889, column: 6, scope: !1875)
!1902 = !DILocation(line: 890, column: 11, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 889, column: 28)
!1904 = !DILocation(line: 890, column: 3, scope: !1903)
!1905 = !DILocation(line: 895, column: 33, scope: !1875)
!1906 = !DILocation(line: 895, column: 9, scope: !1875)
!1907 = !DILocation(line: 895, column: 7, scope: !1875)
!1908 = !DILocation(line: 896, column: 7, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 896, column: 6)
!1910 = !DILocation(line: 896, column: 6, scope: !1875)
!1911 = !DILocation(line: 897, column: 10, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 896, column: 13)
!1913 = !DILocation(line: 898, column: 3, scope: !1912)
!1914 = !DILocation(line: 901, column: 31, scope: !1875)
!1915 = !DILocation(line: 901, column: 37, scope: !1875)
!1916 = !DILocation(line: 901, column: 11, scope: !1875)
!1917 = !DILocation(line: 901, column: 9, scope: !1875)
!1918 = !DILocation(line: 901, column: 2, scope: !1875)
!1919 = !DILocation(line: 903, column: 1, scope: !1875)
!1920 = !DILocation(line: 904, column: 8, scope: !1875)
!1921 = !DILocation(line: 905, column: 10, scope: !1875)
!1922 = !DILocation(line: 905, column: 2, scope: !1875)
!1923 = !DILocation(line: 906, column: 1, scope: !1875)
!1924 = !DISubprogram(name: "acpi_ns_detach_data", scope: !1056, file: !1056, line: 311, type: !1925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!33, !158, !850}
!1927 = distinct !DISubprogram(name: "acpi_get_data_full", scope: !3, file: !3, line: 926, type: !1928, scopeLine: 928, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1931)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!33, !83, !850, !808, !1930}
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1931 = !{!1932, !1933, !1934, !1935, !1936, !1937, !1938}
!1932 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1927, file: !3, line: 926, type: !83)
!1933 = !DILocalVariable(name: "handler", arg: 2, scope: !1927, file: !3, line: 926, type: !850)
!1934 = !DILocalVariable(name: "data", arg: 3, scope: !1927, file: !3, line: 927, type: !808)
!1935 = !DILocalVariable(name: "callback", arg: 4, scope: !1927, file: !3, line: 927, type: !1930)
!1936 = !DILocalVariable(name: "node", scope: !1927, file: !3, line: 929, type: !158)
!1937 = !DILocalVariable(name: "status", scope: !1927, file: !3, line: 930, type: !33)
!1938 = !DILabel(scope: !1927, name: "unlock_and_exit", file: !3, line: 956)
!1939 = !DILocation(line: 926, column: 32, scope: !1927)
!1940 = !DILocation(line: 926, column: 64, scope: !1927)
!1941 = !DILocation(line: 927, column: 13, scope: !1927)
!1942 = !DILocation(line: 927, column: 26, scope: !1927)
!1943 = !DILocation(line: 929, column: 2, scope: !1927)
!1944 = !DILocation(line: 929, column: 30, scope: !1927)
!1945 = !DILocation(line: 930, column: 2, scope: !1927)
!1946 = !DILocation(line: 930, column: 14, scope: !1927)
!1947 = !DILocation(line: 934, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 934, column: 6)
!1949 = !DILocation(line: 934, column: 18, scope: !1948)
!1950 = !DILocation(line: 934, column: 22, scope: !1948)
!1951 = !DILocation(line: 934, column: 30, scope: !1948)
!1952 = !DILocation(line: 934, column: 34, scope: !1948)
!1953 = !DILocation(line: 934, column: 6, scope: !1927)
!1954 = !DILocation(line: 935, column: 3, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 934, column: 40)
!1956 = !DILocation(line: 938, column: 11, scope: !1927)
!1957 = !DILocation(line: 938, column: 9, scope: !1927)
!1958 = !DILocation(line: 939, column: 6, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 939, column: 6)
!1960 = !DILocation(line: 939, column: 6, scope: !1927)
!1961 = !DILocation(line: 940, column: 11, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 939, column: 28)
!1963 = !DILocation(line: 940, column: 3, scope: !1962)
!1964 = !DILocation(line: 945, column: 33, scope: !1927)
!1965 = !DILocation(line: 945, column: 9, scope: !1927)
!1966 = !DILocation(line: 945, column: 7, scope: !1927)
!1967 = !DILocation(line: 946, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 946, column: 6)
!1969 = !DILocation(line: 946, column: 6, scope: !1927)
!1970 = !DILocation(line: 947, column: 10, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 946, column: 13)
!1972 = !DILocation(line: 948, column: 3, scope: !1971)
!1973 = !DILocation(line: 951, column: 37, scope: !1927)
!1974 = !DILocation(line: 951, column: 43, scope: !1927)
!1975 = !DILocation(line: 951, column: 52, scope: !1927)
!1976 = !DILocation(line: 951, column: 11, scope: !1927)
!1977 = !DILocation(line: 951, column: 9, scope: !1927)
!1978 = !DILocation(line: 952, column: 6, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1927, file: !3, line: 952, column: 6)
!1980 = !DILocation(line: 952, column: 27, scope: !1979)
!1981 = !DILocation(line: 952, column: 30, scope: !1979)
!1982 = !DILocation(line: 952, column: 6, scope: !1927)
!1983 = !DILocation(line: 953, column: 3, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1979, file: !3, line: 952, column: 40)
!1985 = !DILocation(line: 953, column: 13, scope: !1984)
!1986 = !DILocation(line: 953, column: 12, scope: !1984)
!1987 = !DILocation(line: 954, column: 2, scope: !1984)
!1988 = !DILocation(line: 956, column: 1, scope: !1927)
!1989 = !DILocation(line: 957, column: 8, scope: !1927)
!1990 = !DILocation(line: 958, column: 10, scope: !1927)
!1991 = !DILocation(line: 958, column: 2, scope: !1927)
!1992 = !DILocation(line: 959, column: 1, scope: !1927)
!1993 = !DISubprogram(name: "acpi_ns_get_attached_data", scope: !1056, file: !1056, line: 315, type: !1994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!33, !158, !850, !808}
!1996 = distinct !DISubprogram(name: "acpi_get_data", scope: !3, file: !3, line: 977, type: !1997, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1999)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!33, !83, !850, !808}
!1999 = !{!2000, !2001, !2002}
!2000 = !DILocalVariable(name: "obj_handle", arg: 1, scope: !1996, file: !3, line: 977, type: !83)
!2001 = !DILocalVariable(name: "handler", arg: 2, scope: !1996, file: !3, line: 977, type: !850)
!2002 = !DILocalVariable(name: "data", arg: 3, scope: !1996, file: !3, line: 977, type: !808)
!2003 = !DILocation(line: 977, column: 27, scope: !1996)
!2004 = !DILocation(line: 977, column: 59, scope: !1996)
!2005 = !DILocation(line: 977, column: 75, scope: !1996)
!2006 = !DILocation(line: 979, column: 28, scope: !1996)
!2007 = !DILocation(line: 979, column: 40, scope: !1996)
!2008 = !DILocation(line: 979, column: 49, scope: !1996)
!2009 = !DILocation(line: 979, column: 9, scope: !1996)
!2010 = !DILocation(line: 979, column: 2, scope: !1996)
!2011 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !2012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{null, !2014}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2016 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !2017, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2023)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!84, !2019, !870}
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !868, line: 61, baseType: !2020)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !2021, line: 72, baseType: !2022)
!2021 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !2021, line: 16, baseType: !869)
!2023 = !{!2024, !2025}
!2024 = !DILocalVariable(name: "size", arg: 1, scope: !2016, file: !12, line: 719, type: !2019)
!2025 = !DILocalVariable(name: "flags", arg: 2, scope: !2016, file: !12, line: 719, type: !870)
!2026 = !DILocation(line: 719, column: 52, scope: !2016)
!2027 = !DILocation(line: 719, column: 64, scope: !2016)
!2028 = !DILocation(line: 721, column: 17, scope: !2016)
!2029 = !DILocation(line: 721, column: 23, scope: !2016)
!2030 = !DILocation(line: 721, column: 29, scope: !2016)
!2031 = !DILocation(line: 721, column: 9, scope: !2016)
!2032 = !DILocation(line: 721, column: 2, scope: !2016)
!2033 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !2034, file: !2034, line: 65, type: !2035, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2034 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!869}
!2037 = !DILocation(line: 67, column: 9, scope: !2033)
!2038 = !DILocation(line: 67, column: 2, scope: !2033)
!2039 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !2034, file: !2034, line: 120, type: !2040, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2042)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!1660, !869}
!2042 = !{!2043}
!2043 = !DILocalVariable(name: "flags", arg: 1, scope: !2039, file: !2034, line: 120, type: !869)
!2044 = !DILocation(line: 120, column: 67, scope: !2039)
!2045 = !DILocation(line: 122, column: 11, scope: !2039)
!2046 = !DILocation(line: 122, column: 17, scope: !2039)
!2047 = !DILocation(line: 122, column: 9, scope: !2039)
!2048 = !DILocation(line: 122, column: 2, scope: !2039)
!2049 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !2017, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2050)
!2050 = !{!2051, !2052, !2053}
!2051 = !DILocalVariable(name: "size", arg: 1, scope: !2049, file: !12, line: 591, type: !2019)
!2052 = !DILocalVariable(name: "flags", arg: 2, scope: !2049, file: !12, line: 591, type: !870)
!2053 = !DILocalVariable(name: "index", scope: !2054, file: !12, line: 594, type: !7)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !12, line: 593, column: 42)
!2055 = distinct !DILexicalBlock(scope: !2049, file: !12, line: 593, column: 6)
!2056 = !DILocation(line: 591, column: 61, scope: !2049)
!2057 = !DILocation(line: 591, column: 73, scope: !2049)
!2058 = !DILocation(line: 593, column: 27, scope: !2055)
!2059 = !DILocation(line: 593, column: 6, scope: !2055)
!2060 = !DILocation(line: 593, column: 33, scope: !2055)
!2061 = !DILocation(line: 593, column: 36, scope: !2055)
!2062 = !DILocation(line: 593, column: 6, scope: !2049)
!2063 = !DILocation(line: 594, column: 3, scope: !2054)
!2064 = !DILocation(line: 594, column: 16, scope: !2054)
!2065 = !DILocation(line: 596, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2054, file: !12, line: 596, column: 7)
!2067 = !DILocation(line: 596, column: 12, scope: !2066)
!2068 = !DILocation(line: 596, column: 7, scope: !2054)
!2069 = !DILocation(line: 597, column: 25, scope: !2066)
!2070 = !DILocation(line: 597, column: 31, scope: !2066)
!2071 = !DILocation(line: 597, column: 11, scope: !2066)
!2072 = !DILocation(line: 597, column: 4, scope: !2066)
!2073 = !DILocation(line: 599, column: 11, scope: !2054)
!2074 = !DILocation(line: 599, column: 9, scope: !2054)
!2075 = !DILocation(line: 601, column: 33, scope: !2054)
!2076 = !DILocation(line: 601, column: 40, scope: !2054)
!2077 = !DILocation(line: 601, column: 20, scope: !2054)
!2078 = !DILocation(line: 601, column: 5, scope: !2054)
!2079 = !DILocation(line: 601, column: 51, scope: !2054)
!2080 = !DILocation(line: 602, column: 5, scope: !2054)
!2081 = !DILocation(line: 602, column: 12, scope: !2054)
!2082 = !DILocation(line: 600, column: 10, scope: !2054)
!2083 = !DILocation(line: 600, column: 3, scope: !2054)
!2084 = !DILocation(line: 603, column: 2, scope: !2055)
!2085 = !DILocation(line: 604, column: 19, scope: !2049)
!2086 = !DILocation(line: 604, column: 25, scope: !2049)
!2087 = !DILocation(line: 604, column: 9, scope: !2049)
!2088 = !DILocation(line: 604, column: 2, scope: !2049)
!2089 = !DILocation(line: 605, column: 1, scope: !2049)
!2090 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !2017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2091 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !2092, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2096)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!7, !2019, !2094}
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !868, line: 35, baseType: !2095)
!2095 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!2096 = !{!2097, !2098}
!2097 = !DILocalVariable(name: "size", arg: 1, scope: !2091, file: !12, line: 444, type: !2019)
!2098 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2091, file: !12, line: 445, type: !2094)
!2099 = !DILocation(line: 444, column: 60, scope: !2091)
!2100 = !DILocation(line: 445, column: 16, scope: !2091)
!2101 = !DILocation(line: 447, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 447, column: 6)
!2103 = !DILocation(line: 447, column: 6, scope: !2091)
!2104 = !DILocation(line: 448, column: 3, scope: !2102)
!2105 = !DILocation(line: 450, column: 6, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 450, column: 6)
!2107 = !DILocation(line: 450, column: 11, scope: !2106)
!2108 = !DILocation(line: 450, column: 6, scope: !2091)
!2109 = !DILocation(line: 451, column: 3, scope: !2106)
!2110 = !DILocation(line: 453, column: 32, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 453, column: 6)
!2112 = !DILocation(line: 453, column: 37, scope: !2111)
!2113 = !DILocation(line: 453, column: 42, scope: !2111)
!2114 = !DILocation(line: 453, column: 45, scope: !2111)
!2115 = !DILocation(line: 453, column: 50, scope: !2111)
!2116 = !DILocation(line: 453, column: 6, scope: !2091)
!2117 = !DILocation(line: 454, column: 3, scope: !2111)
!2118 = !DILocation(line: 455, column: 32, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 455, column: 6)
!2120 = !DILocation(line: 455, column: 37, scope: !2119)
!2121 = !DILocation(line: 455, column: 43, scope: !2119)
!2122 = !DILocation(line: 455, column: 46, scope: !2119)
!2123 = !DILocation(line: 455, column: 51, scope: !2119)
!2124 = !DILocation(line: 455, column: 6, scope: !2091)
!2125 = !DILocation(line: 456, column: 3, scope: !2119)
!2126 = !DILocation(line: 457, column: 6, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 457, column: 6)
!2128 = !DILocation(line: 457, column: 11, scope: !2127)
!2129 = !DILocation(line: 457, column: 6, scope: !2091)
!2130 = !DILocation(line: 457, column: 26, scope: !2127)
!2131 = !DILocation(line: 458, column: 6, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 458, column: 6)
!2133 = !DILocation(line: 458, column: 11, scope: !2132)
!2134 = !DILocation(line: 458, column: 6, scope: !2091)
!2135 = !DILocation(line: 458, column: 26, scope: !2132)
!2136 = !DILocation(line: 459, column: 6, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 459, column: 6)
!2138 = !DILocation(line: 459, column: 11, scope: !2137)
!2139 = !DILocation(line: 459, column: 6, scope: !2091)
!2140 = !DILocation(line: 459, column: 26, scope: !2137)
!2141 = !DILocation(line: 460, column: 6, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 460, column: 6)
!2143 = !DILocation(line: 460, column: 11, scope: !2142)
!2144 = !DILocation(line: 460, column: 6, scope: !2091)
!2145 = !DILocation(line: 460, column: 26, scope: !2142)
!2146 = !DILocation(line: 461, column: 6, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 461, column: 6)
!2148 = !DILocation(line: 461, column: 11, scope: !2147)
!2149 = !DILocation(line: 461, column: 6, scope: !2091)
!2150 = !DILocation(line: 461, column: 26, scope: !2147)
!2151 = !DILocation(line: 462, column: 6, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 462, column: 6)
!2153 = !DILocation(line: 462, column: 11, scope: !2152)
!2154 = !DILocation(line: 462, column: 6, scope: !2091)
!2155 = !DILocation(line: 462, column: 26, scope: !2152)
!2156 = !DILocation(line: 463, column: 6, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 463, column: 6)
!2158 = !DILocation(line: 463, column: 11, scope: !2157)
!2159 = !DILocation(line: 463, column: 6, scope: !2091)
!2160 = !DILocation(line: 463, column: 26, scope: !2157)
!2161 = !DILocation(line: 464, column: 6, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 464, column: 6)
!2163 = !DILocation(line: 464, column: 11, scope: !2162)
!2164 = !DILocation(line: 464, column: 6, scope: !2091)
!2165 = !DILocation(line: 464, column: 26, scope: !2162)
!2166 = !DILocation(line: 465, column: 6, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 465, column: 6)
!2168 = !DILocation(line: 465, column: 11, scope: !2167)
!2169 = !DILocation(line: 465, column: 6, scope: !2091)
!2170 = !DILocation(line: 465, column: 26, scope: !2167)
!2171 = !DILocation(line: 466, column: 6, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 466, column: 6)
!2173 = !DILocation(line: 466, column: 11, scope: !2172)
!2174 = !DILocation(line: 466, column: 6, scope: !2091)
!2175 = !DILocation(line: 466, column: 26, scope: !2172)
!2176 = !DILocation(line: 467, column: 6, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 467, column: 6)
!2178 = !DILocation(line: 467, column: 11, scope: !2177)
!2179 = !DILocation(line: 467, column: 6, scope: !2091)
!2180 = !DILocation(line: 467, column: 26, scope: !2177)
!2181 = !DILocation(line: 468, column: 6, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 468, column: 6)
!2183 = !DILocation(line: 468, column: 11, scope: !2182)
!2184 = !DILocation(line: 468, column: 6, scope: !2091)
!2185 = !DILocation(line: 468, column: 26, scope: !2182)
!2186 = !DILocation(line: 469, column: 6, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 469, column: 6)
!2188 = !DILocation(line: 469, column: 11, scope: !2187)
!2189 = !DILocation(line: 469, column: 6, scope: !2091)
!2190 = !DILocation(line: 469, column: 26, scope: !2187)
!2191 = !DILocation(line: 470, column: 6, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 470, column: 6)
!2193 = !DILocation(line: 470, column: 11, scope: !2192)
!2194 = !DILocation(line: 470, column: 6, scope: !2091)
!2195 = !DILocation(line: 470, column: 26, scope: !2192)
!2196 = !DILocation(line: 471, column: 6, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 471, column: 6)
!2198 = !DILocation(line: 471, column: 11, scope: !2197)
!2199 = !DILocation(line: 471, column: 6, scope: !2091)
!2200 = !DILocation(line: 471, column: 26, scope: !2197)
!2201 = !DILocation(line: 472, column: 6, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 472, column: 6)
!2203 = !DILocation(line: 472, column: 11, scope: !2202)
!2204 = !DILocation(line: 472, column: 6, scope: !2091)
!2205 = !DILocation(line: 472, column: 26, scope: !2202)
!2206 = !DILocation(line: 473, column: 6, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 473, column: 6)
!2208 = !DILocation(line: 473, column: 11, scope: !2207)
!2209 = !DILocation(line: 473, column: 6, scope: !2091)
!2210 = !DILocation(line: 473, column: 26, scope: !2207)
!2211 = !DILocation(line: 474, column: 6, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 474, column: 6)
!2213 = !DILocation(line: 474, column: 11, scope: !2212)
!2214 = !DILocation(line: 474, column: 6, scope: !2091)
!2215 = !DILocation(line: 474, column: 27, scope: !2212)
!2216 = !DILocation(line: 475, column: 6, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 475, column: 6)
!2218 = !DILocation(line: 475, column: 11, scope: !2217)
!2219 = !DILocation(line: 475, column: 6, scope: !2091)
!2220 = !DILocation(line: 475, column: 32, scope: !2217)
!2221 = !DILocation(line: 477, column: 50, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2091, file: !12, line: 477, column: 6)
!2223 = !{i8 0, i8 2}
!2224 = !{}
!2225 = !DILocation(line: 477, column: 6, scope: !2091)
!2226 = !DILocation(line: 478, column: 3, scope: !2222)
!2227 = !DILocation(line: 478, column: 3, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !12, line: 478, column: 3)
!2229 = distinct !DILexicalBlock(scope: !2222, file: !12, line: 478, column: 3)
!2230 = !{i32 -2143021316}
!2231 = !DILocation(line: 478, column: 3, scope: !2229)
!2232 = !DILocation(line: 480, column: 3, scope: !2222)
!2233 = !DILocation(line: 480, column: 3, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2222, file: !12, line: 480, column: 3)
!2235 = !DILocation(line: 480, column: 3, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2234, file: !12, line: 480, column: 3)
!2237 = !DILocation(line: 480, column: 3, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2234, file: !12, line: 480, column: 3)
!2239 = !{i64 2151946183, i64 2151946212, i64 2151946258, i64 2151946316, i64 2151946370, i64 2151946424, i64 2151946479, i64 2151946510}
!2240 = !DILocation(line: 483, column: 2, scope: !2091)
!2241 = !DILocation(line: 484, column: 1, scope: !2091)
!2242 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !2243, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!84, !2245, !870, !2019}
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2247, line: 11, flags: DIFlagFwdDecl)
!2247 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2248 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !2249, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2251)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!11, !870, !869}
!2251 = !{!2252, !2253}
!2252 = !DILocalVariable(name: "flags", arg: 1, scope: !2248, file: !12, line: 401, type: !870)
!2253 = !DILocalVariable(name: "caller", arg: 2, scope: !2248, file: !12, line: 401, type: !869)
!2254 = !DILocation(line: 401, column: 67, scope: !2248)
!2255 = !DILocation(line: 401, column: 88, scope: !2248)
!2256 = !DILocation(line: 407, column: 6, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2248, file: !12, line: 407, column: 6)
!2258 = !DILocation(line: 407, column: 6, scope: !2248)
!2259 = !DILocation(line: 413, column: 3, scope: !2257)
!2260 = !DILocation(line: 423, column: 38, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2248, file: !12, line: 423, column: 6)
!2262 = !DILocation(line: 423, column: 44, scope: !2261)
!2263 = !DILocation(line: 423, column: 6, scope: !2248)
!2264 = !DILocation(line: 424, column: 3, scope: !2261)
!2265 = !DILocation(line: 426, column: 3, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2248, file: !12, line: 425, column: 6)
!2267 = !DILocation(line: 429, column: 1, scope: !2248)
!2268 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !2017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2269 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !1479, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2270 = distinct !DISubprogram(name: "native_save_fl", scope: !2034, file: !2034, line: 17, type: !2035, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2271)
!2271 = !{!2272}
!2272 = !DILocalVariable(name: "flags", scope: !2270, file: !2034, line: 19, type: !869)
!2273 = !DILocation(line: 19, column: 2, scope: !2270)
!2274 = !DILocation(line: 19, column: 16, scope: !2270)
!2275 = !DILocation(line: 26, column: 2, scope: !2270)
!2276 = !{i64 1536102, i64 1536123}
!2277 = !DILocation(line: 32, column: 9, scope: !2270)
!2278 = !DILocation(line: 33, column: 1, scope: !2270)
!2279 = !DILocation(line: 32, column: 2, scope: !2270)
!2280 = !DISubprogram(name: "acpi_ut_add_reference", scope: !1355, file: !1355, line: 367, type: !1482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2281 = !DISubprogram(name: "acpi_ut_execute_HID", scope: !1355, file: !1355, line: 403, type: !2282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!33, !158, !2284}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!2285 = !DISubprogram(name: "strcmp", scope: !2286, file: !2286, line: 88, type: !2287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2286 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!1660, !1053, !1053}
!2289 = !DISubprogram(name: "acpi_ut_execute_CID", scope: !1355, file: !1355, line: 411, type: !2290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!33, !158, !2292}
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!2293 = !DISubprogram(name: "acpi_ut_execute_STA", scope: !1355, file: !1355, line: 392, type: !2294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!33, !158, !2296}
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
