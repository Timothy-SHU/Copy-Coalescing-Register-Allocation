; ModuleID = 'drivers/acpi/acpica/uterror.c'
source_filename = "drivers/acpi/acpica/uterror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [21 x i8] c"\014ACPI Warning: %s: \00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c" (%8.8X/%s-%u)\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [13 x i8] c"\016ACPI: %s: \00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [30 x i8] c"\013ACPI BIOS Error (bug): %s: \00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [26 x i8] c"\013ACPI BIOS Error (bug): \00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [30 x i8] c"Failure creating named object\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [25 x i8] c"Could not resolve symbol\00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [15 x i8] c"\013ACPI Error: \00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [25 x i8] c"Failure resolving symbol\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [12 x i8] c"%s [%s], %s\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [23 x i8] c"Could not get pathname\00", align 1, !dbg !46
@.str.11 = private unnamed_addr constant [33 x i8] c"[Could not get node by pathname]\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [28 x i8] c" due to previous error (%s)\00", align 1, !dbg !56

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_predefined_warning(ptr noundef %module_name, i32 noundef %line_number, ptr noundef %pathname, i16 noundef zeroext %node_flags, ptr noundef %format, ...) #0 align 16 !dbg !72 {
entry:
  %module_name.addr = alloca ptr, align 8
  %line_number.addr = alloca i32, align 4
  %pathname.addr = alloca ptr, align 8
  %node_flags.addr = alloca i16, align 2
  %format.addr = alloca ptr, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !87, metadata !DIExpression()), !dbg !106
  store i32 %line_number, ptr %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line_number.addr, metadata !88, metadata !DIExpression()), !dbg !107
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !89, metadata !DIExpression()), !dbg !108
  store i16 %node_flags, ptr %node_flags.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %node_flags.addr, metadata !90, metadata !DIExpression()), !dbg !109
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !91, metadata !DIExpression()), !dbg !110
  call void @llvm.lifetime.start.p0(i64 24, ptr %arg_list) #6, !dbg !111
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !92, metadata !DIExpression()), !dbg !112
  %0 = load i16, ptr %node_flags.addr, align 2, !dbg !113
  %conv = zext i16 %0 to i32, !dbg !113
  %and = and i32 %conv, 32, !dbg !115
  %tobool = icmp ne i32 %and, 0, !dbg !115
  br i1 %tobool, label %if.then, label %if.end, !dbg !116

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !117

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pathname.addr, align 8, !dbg !119
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str, ptr noundef %1) #7, !dbg !120
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !121
  call void @llvm.va_start(ptr %arraydecay), !dbg !121
  %2 = load ptr, ptr %format.addr, align 8, !dbg !122
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !123
  call void @acpi_os_vprintf(ptr noundef %2, ptr noundef %arraydecay1) #7, !dbg !124
  %3 = load ptr, ptr %module_name.addr, align 8, !dbg !125
  %4 = load i32, ptr %line_number.addr, align 4, !dbg !125
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1, i32 noundef 539166248, ptr noundef %3, i32 noundef %4) #7, !dbg !125
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !126
  call void @llvm.va_end(ptr %arraydecay2), !dbg !126
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !127
  br label %cleanup, !dbg !127

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %arg_list) #6, !dbg !127
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !127

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !128 dso_local void @acpi_os_printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !132 dso_local void @acpi_os_vprintf(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_predefined_info(ptr noundef %module_name, i32 noundef %line_number, ptr noundef %pathname, i16 noundef zeroext %node_flags, ptr noundef %format, ...) #0 align 16 !dbg !136 {
entry:
  %module_name.addr = alloca ptr, align 8
  %line_number.addr = alloca i32, align 4
  %pathname.addr = alloca ptr, align 8
  %node_flags.addr = alloca i16, align 2
  %format.addr = alloca ptr, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !138, metadata !DIExpression()), !dbg !144
  store i32 %line_number, ptr %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line_number.addr, metadata !139, metadata !DIExpression()), !dbg !145
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !140, metadata !DIExpression()), !dbg !146
  store i16 %node_flags, ptr %node_flags.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %node_flags.addr, metadata !141, metadata !DIExpression()), !dbg !147
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !142, metadata !DIExpression()), !dbg !148
  call void @llvm.lifetime.start.p0(i64 24, ptr %arg_list) #6, !dbg !149
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !143, metadata !DIExpression()), !dbg !150
  %0 = load i16, ptr %node_flags.addr, align 2, !dbg !151
  %conv = zext i16 %0 to i32, !dbg !151
  %and = and i32 %conv, 32, !dbg !153
  %tobool = icmp ne i32 %and, 0, !dbg !153
  br i1 %tobool, label %if.then, label %if.end, !dbg !154

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !155

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pathname.addr, align 8, !dbg !157
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.2, ptr noundef %1) #7, !dbg !158
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !159
  call void @llvm.va_start(ptr %arraydecay), !dbg !159
  %2 = load ptr, ptr %format.addr, align 8, !dbg !160
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !161
  call void @acpi_os_vprintf(ptr noundef %2, ptr noundef %arraydecay1) #7, !dbg !162
  %3 = load ptr, ptr %module_name.addr, align 8, !dbg !163
  %4 = load i32, ptr %line_number.addr, align 4, !dbg !163
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1, i32 noundef 539166248, ptr noundef %3, i32 noundef %4) #7, !dbg !163
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !164
  call void @llvm.va_end(ptr %arraydecay2), !dbg !164
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !165
  br label %cleanup, !dbg !165

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %arg_list) #6, !dbg !165
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !165

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_predefined_bios_error(ptr noundef %module_name, i32 noundef %line_number, ptr noundef %pathname, i16 noundef zeroext %node_flags, ptr noundef %format, ...) #0 align 16 !dbg !166 {
entry:
  %module_name.addr = alloca ptr, align 8
  %line_number.addr = alloca i32, align 4
  %pathname.addr = alloca ptr, align 8
  %node_flags.addr = alloca i16, align 2
  %format.addr = alloca ptr, align 8
  %arg_list = alloca [1 x %struct.__va_list_tag], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !168, metadata !DIExpression()), !dbg !174
  store i32 %line_number, ptr %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line_number.addr, metadata !169, metadata !DIExpression()), !dbg !175
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !170, metadata !DIExpression()), !dbg !176
  store i16 %node_flags, ptr %node_flags.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %node_flags.addr, metadata !171, metadata !DIExpression()), !dbg !177
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !172, metadata !DIExpression()), !dbg !178
  call void @llvm.lifetime.start.p0(i64 24, ptr %arg_list) #6, !dbg !179
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !173, metadata !DIExpression()), !dbg !180
  %0 = load i16, ptr %node_flags.addr, align 2, !dbg !181
  %conv = zext i16 %0 to i32, !dbg !181
  %and = and i32 %conv, 32, !dbg !183
  %tobool = icmp ne i32 %and, 0, !dbg !183
  br i1 %tobool, label %if.then, label %if.end, !dbg !184

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !185

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pathname.addr, align 8, !dbg !187
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.3, ptr noundef %1) #7, !dbg !188
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !189
  call void @llvm.va_start(ptr %arraydecay), !dbg !189
  %2 = load ptr, ptr %format.addr, align 8, !dbg !190
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !191
  call void @acpi_os_vprintf(ptr noundef %2, ptr noundef %arraydecay1) #7, !dbg !192
  %3 = load ptr, ptr %module_name.addr, align 8, !dbg !193
  %4 = load i32, ptr %line_number.addr, align 4, !dbg !193
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1, i32 noundef 539166248, ptr noundef %3, i32 noundef %4) #7, !dbg !193
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %arg_list, i64 0, i64 0, !dbg !194
  call void @llvm.va_end(ptr %arraydecay2), !dbg !194
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !195
  br label %cleanup, !dbg !195

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %arg_list) #6, !dbg !195
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !195

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_prefixed_namespace_error(ptr noundef %module_name, i32 noundef %line_number, ptr noundef %prefix_scope, ptr noundef %internal_path, i32 noundef %lookup_status) #0 align 16 !dbg !196 {
entry:
  %module_name.addr = alloca ptr, align 8
  %line_number.addr = alloca i32, align 4
  %prefix_scope.addr = alloca ptr, align 8
  %internal_path.addr = alloca ptr, align 8
  %lookup_status.addr = alloca i32, align 4
  %full_path = alloca ptr, align 8
  %message = alloca ptr, align 8
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !966, metadata !DIExpression()), !dbg !973
  store i32 %line_number, ptr %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line_number.addr, metadata !967, metadata !DIExpression()), !dbg !974
  store ptr %prefix_scope, ptr %prefix_scope.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix_scope.addr, metadata !968, metadata !DIExpression()), !dbg !975
  store ptr %internal_path, ptr %internal_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %internal_path.addr, metadata !969, metadata !DIExpression()), !dbg !976
  store i32 %lookup_status, ptr %lookup_status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %lookup_status.addr, metadata !970, metadata !DIExpression()), !dbg !977
  call void @llvm.lifetime.start.p0(i64 8, ptr %full_path) #6, !dbg !978
  call void @llvm.dbg.declare(metadata ptr %full_path, metadata !971, metadata !DIExpression()), !dbg !979
  call void @llvm.lifetime.start.p0(i64 8, ptr %message) #6, !dbg !980
  call void @llvm.dbg.declare(metadata ptr %message, metadata !972, metadata !DIExpression()), !dbg !981
  %0 = load i32, ptr %lookup_status.addr, align 4, !dbg !982
  switch i32 %0, label %sw.default [
    i32 7, label %sw.bb
    i32 5, label %sw.bb1
  ], !dbg !983

sw.bb:                                            ; preds = %entry
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.4) #7, !dbg !984
  store ptr @.str.5, ptr %message, align 8, !dbg !986
  br label %sw.epilog, !dbg !987

sw.bb1:                                           ; preds = %entry
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.4) #7, !dbg !988
  store ptr @.str.6, ptr %message, align 8, !dbg !989
  br label %sw.epilog, !dbg !990

sw.default:                                       ; preds = %entry
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.7) #7, !dbg !991
  store ptr @.str.8, ptr %message, align 8, !dbg !992
  br label %sw.epilog, !dbg !993

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  %1 = load ptr, ptr %prefix_scope.addr, align 8, !dbg !994
  %2 = load ptr, ptr %internal_path.addr, align 8, !dbg !995
  %call = call ptr @acpi_ns_build_prefixed_pathname(ptr noundef %1, ptr noundef %2) #7, !dbg !996
  store ptr %call, ptr %full_path, align 8, !dbg !997
  %3 = load ptr, ptr %message, align 8, !dbg !998
  %4 = load ptr, ptr %full_path, align 8, !dbg !999
  %tobool = icmp ne ptr %4, null, !dbg !999
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !999

cond.true:                                        ; preds = %sw.epilog
  %5 = load ptr, ptr %full_path, align 8, !dbg !1000
  br label %cond.end, !dbg !999

cond.false:                                       ; preds = %sw.epilog
  br label %cond.end, !dbg !999

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ @.str.10, %cond.false ], !dbg !999
  %6 = load i32, ptr %lookup_status.addr, align 4, !dbg !1001
  %call2 = call ptr @acpi_format_exception(i32 noundef %6) #7, !dbg !1002
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.9, ptr noundef %3, ptr noundef %cond, ptr noundef %call2) #7, !dbg !1003
  %7 = load ptr, ptr %full_path, align 8, !dbg !1004
  %tobool3 = icmp ne ptr %7, null, !dbg !1004
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1006

if.then:                                          ; preds = %cond.end
  %8 = load ptr, ptr %full_path, align 8, !dbg !1007
  call void @acpi_os_free(ptr noundef %8) #7, !dbg !1007
  br label %if.end, !dbg !1009

if.end:                                           ; preds = %if.then, %cond.end
  %9 = load ptr, ptr %module_name.addr, align 8, !dbg !1010
  %10 = load i32, ptr %line_number.addr, align 4, !dbg !1010
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1, i32 noundef 539166248, ptr noundef %9, i32 noundef %10) #7, !dbg !1010
  call void @llvm.lifetime.end.p0(i64 8, ptr %message) #6, !dbg !1011
  call void @llvm.lifetime.end.p0(i64 8, ptr %full_path) #6, !dbg !1011
  ret void, !dbg !1011
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1012 dso_local ptr @acpi_ns_build_prefixed_pathname(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1016 dso_local ptr @acpi_format_exception(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #5 align 16 !dbg !1020 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1025, metadata !DIExpression()), !dbg !1026
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1027
  call void @kfree(ptr noundef %0) #7, !dbg !1028
  ret void, !dbg !1029
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_method_error(ptr noundef %module_name, i32 noundef %line_number, ptr noundef %message, ptr noundef %prefix_node, ptr noundef %path, i32 noundef %method_status) #0 align 16 !dbg !1030 {
entry:
  %module_name.addr = alloca ptr, align 8
  %line_number.addr = alloca i32, align 4
  %message.addr = alloca ptr, align 8
  %prefix_node.addr = alloca ptr, align 8
  %path.addr = alloca ptr, align 8
  %method_status.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  store ptr %module_name, ptr %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %module_name.addr, metadata !1034, metadata !DIExpression()), !dbg !1042
  store i32 %line_number, ptr %line_number.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line_number.addr, metadata !1035, metadata !DIExpression()), !dbg !1043
  store ptr %message, ptr %message.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %message.addr, metadata !1036, metadata !DIExpression()), !dbg !1044
  store ptr %prefix_node, ptr %prefix_node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix_node.addr, metadata !1037, metadata !DIExpression()), !dbg !1045
  store ptr %path, ptr %path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %path.addr, metadata !1038, metadata !DIExpression()), !dbg !1046
  store i32 %method_status, ptr %method_status.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %method_status.addr, metadata !1039, metadata !DIExpression()), !dbg !1047
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #6, !dbg !1048
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1040, metadata !DIExpression()), !dbg !1049
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #6, !dbg !1050
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1041, metadata !DIExpression()), !dbg !1051
  %0 = load ptr, ptr %prefix_node.addr, align 8, !dbg !1052
  store ptr %0, ptr %node, align 8, !dbg !1051
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.7) #7, !dbg !1053
  %1 = load ptr, ptr %path.addr, align 8, !dbg !1054
  %tobool = icmp ne ptr %1, null, !dbg !1054
  br i1 %tobool, label %if.then, label %if.end3, !dbg !1056

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %prefix_node.addr, align 8, !dbg !1057
  %3 = load ptr, ptr %path.addr, align 8, !dbg !1059
  %call = call i32 @acpi_ns_get_node(ptr noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef %node) #7, !dbg !1060
  store i32 %call, ptr %status, align 4, !dbg !1061
  %4 = load i32, ptr %status, align 4, !dbg !1062
  %tobool1 = icmp ne i32 %4, 0, !dbg !1062
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1064

if.then2:                                         ; preds = %if.then
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.11) #7, !dbg !1065
  br label %if.end, !dbg !1067

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end3, !dbg !1068

if.end3:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %node, align 8, !dbg !1069
  %6 = load ptr, ptr %message.addr, align 8, !dbg !1070
  call void @acpi_ns_print_node_pathname(ptr noundef %5, ptr noundef %6) #7, !dbg !1071
  %7 = load i32, ptr %method_status.addr, align 4, !dbg !1072
  %call4 = call ptr @acpi_format_exception(i32 noundef %7) #7, !dbg !1073
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.12, ptr noundef %call4) #7, !dbg !1074
  %8 = load ptr, ptr %module_name.addr, align 8, !dbg !1075
  %9 = load i32, ptr %line_number.addr, align 4, !dbg !1075
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1, i32 noundef 539166248, ptr noundef %8, i32 noundef %9) #7, !dbg !1075
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #6, !dbg !1076
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #6, !dbg !1076
  ret void, !dbg !1076
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1077 dso_local i32 @acpi_ns_get_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1081 dso_local void @acpi_ns_print_node_pathname(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1084 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/uterror.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1130f833e19036241e29ae012f4e0a96")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 16)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 13)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 30)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 26)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !19, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 25)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 197, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 15)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 198, type: !31, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 12)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 208, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 23)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 315, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 33)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 320, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 28)
!61 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.uterror.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22uterror\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/uterror.ll drivers/acpi/acpica/uterror.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !62, splitDebugInlining: false, nameTableKind: None)
!62 = !{!0, !7, !12, !17, !22, !27, !29, !34, !39, !41, !46, !51, !56}
!63 = !{i32 7, !"Dwarf Version", i32 5}
!64 = !{i32 2, !"Debug Info Version", i32 3}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 8, !"cf-protection-branch", i32 1}
!67 = !{i32 4, !"function_return_thunk_extern", i32 1}
!68 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!69 = !{i32 1, !"Code Model", i32 2}
!70 = !{i32 1, !"override-stack-alignment", i32 8}
!71 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!72 = distinct !DISubprogram(name: "acpi_ut_predefined_warning", scope: !2, file: !2, line: 39, type: !73, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !86)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75, !77, !82, !83, !75, null}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !78, line: 21, baseType: !79)
!78 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !80, line: 27, baseType: !81)
!80 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!81 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !78, line: 19, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !80, line: 24, baseType: !85)
!85 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!86 = !{!87, !88, !89, !90, !91, !92}
!87 = !DILocalVariable(name: "module_name", arg: 1, scope: !72, file: !2, line: 39, type: !75)
!88 = !DILocalVariable(name: "line_number", arg: 2, scope: !72, file: !2, line: 40, type: !77)
!89 = !DILocalVariable(name: "pathname", arg: 3, scope: !72, file: !2, line: 41, type: !82)
!90 = !DILocalVariable(name: "node_flags", arg: 4, scope: !72, file: !2, line: 42, type: !83)
!91 = !DILocalVariable(name: "format", arg: 5, scope: !72, file: !2, line: 42, type: !75)
!92 = !DILocalVariable(name: "arg_list", scope: !72, file: !2, line: 44, type: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !94, line: 5, baseType: !95)
!94 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !96)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 192, elements: !104)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !98)
!98 = !{!99, !100, !101, !103}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !97, file: !2, line: 44, baseType: !81, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !97, file: !2, line: 44, baseType: !81, size: 32, offset: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !97, file: !2, line: 44, baseType: !102, size: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !97, file: !2, line: 44, baseType: !102, size: 64, offset: 128)
!104 = !{!105}
!105 = !DISubrange(count: 1)
!106 = !DILocation(line: 39, column: 40, scope: !72)
!107 = !DILocation(line: 40, column: 11, scope: !72)
!108 = !DILocation(line: 41, column: 13, scope: !72)
!109 = !DILocation(line: 42, column: 11, scope: !72)
!110 = !DILocation(line: 42, column: 35, scope: !72)
!111 = !DILocation(line: 44, column: 2, scope: !72)
!112 = !DILocation(line: 44, column: 10, scope: !72)
!113 = !DILocation(line: 50, column: 6, scope: !114)
!114 = distinct !DILexicalBlock(scope: !72, file: !2, line: 50, column: 6)
!115 = !DILocation(line: 50, column: 17, scope: !114)
!116 = !DILocation(line: 50, column: 6, scope: !72)
!117 = !DILocation(line: 51, column: 3, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !2, line: 50, column: 36)
!119 = !DILocation(line: 54, column: 42, scope: !72)
!120 = !DILocation(line: 54, column: 2, scope: !72)
!121 = !DILocation(line: 56, column: 2, scope: !72)
!122 = !DILocation(line: 57, column: 18, scope: !72)
!123 = !DILocation(line: 57, column: 26, scope: !72)
!124 = !DILocation(line: 57, column: 2, scope: !72)
!125 = !DILocation(line: 58, column: 2, scope: !72)
!126 = !DILocation(line: 59, column: 2, scope: !72)
!127 = !DILocation(line: 60, column: 1, scope: !72)
!128 = !DISubprogram(name: "acpi_os_printf", scope: !129, file: !129, line: 334, type: !130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!129 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!130 = !DISubroutineType(types: !131)
!131 = !{null, !75, null}
!132 = !DISubprogram(name: "acpi_os_vprintf", scope: !129, file: !129, line: 338, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !75, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!136 = distinct !DISubprogram(name: "acpi_ut_predefined_info", scope: !2, file: !2, line: 82, type: !73, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !137)
!137 = !{!138, !139, !140, !141, !142, !143}
!138 = !DILocalVariable(name: "module_name", arg: 1, scope: !136, file: !2, line: 82, type: !75)
!139 = !DILocalVariable(name: "line_number", arg: 2, scope: !136, file: !2, line: 83, type: !77)
!140 = !DILocalVariable(name: "pathname", arg: 3, scope: !136, file: !2, line: 84, type: !82)
!141 = !DILocalVariable(name: "node_flags", arg: 4, scope: !136, file: !2, line: 84, type: !83)
!142 = !DILocalVariable(name: "format", arg: 5, scope: !136, file: !2, line: 84, type: !75)
!143 = !DILocalVariable(name: "arg_list", scope: !136, file: !2, line: 86, type: !93)
!144 = !DILocation(line: 82, column: 37, scope: !136)
!145 = !DILocation(line: 83, column: 8, scope: !136)
!146 = !DILocation(line: 84, column: 10, scope: !136)
!147 = !DILocation(line: 84, column: 24, scope: !136)
!148 = !DILocation(line: 84, column: 48, scope: !136)
!149 = !DILocation(line: 86, column: 2, scope: !136)
!150 = !DILocation(line: 86, column: 10, scope: !136)
!151 = !DILocation(line: 92, column: 6, scope: !152)
!152 = distinct !DILexicalBlock(scope: !136, file: !2, line: 92, column: 6)
!153 = !DILocation(line: 92, column: 17, scope: !152)
!154 = !DILocation(line: 92, column: 6, scope: !136)
!155 = !DILocation(line: 93, column: 3, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !2, line: 92, column: 36)
!157 = !DILocation(line: 96, column: 39, scope: !136)
!158 = !DILocation(line: 96, column: 2, scope: !136)
!159 = !DILocation(line: 98, column: 2, scope: !136)
!160 = !DILocation(line: 99, column: 18, scope: !136)
!161 = !DILocation(line: 99, column: 26, scope: !136)
!162 = !DILocation(line: 99, column: 2, scope: !136)
!163 = !DILocation(line: 100, column: 2, scope: !136)
!164 = !DILocation(line: 101, column: 2, scope: !136)
!165 = !DILocation(line: 102, column: 1, scope: !136)
!166 = distinct !DISubprogram(name: "acpi_ut_predefined_bios_error", scope: !2, file: !2, line: 124, type: !73, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !167)
!167 = !{!168, !169, !170, !171, !172, !173}
!168 = !DILocalVariable(name: "module_name", arg: 1, scope: !166, file: !2, line: 124, type: !75)
!169 = !DILocalVariable(name: "line_number", arg: 2, scope: !166, file: !2, line: 125, type: !77)
!170 = !DILocalVariable(name: "pathname", arg: 3, scope: !166, file: !2, line: 126, type: !82)
!171 = !DILocalVariable(name: "node_flags", arg: 4, scope: !166, file: !2, line: 127, type: !83)
!172 = !DILocalVariable(name: "format", arg: 5, scope: !166, file: !2, line: 127, type: !75)
!173 = !DILocalVariable(name: "arg_list", scope: !166, file: !2, line: 129, type: !93)
!174 = !DILocation(line: 124, column: 43, scope: !166)
!175 = !DILocation(line: 125, column: 14, scope: !166)
!176 = !DILocation(line: 126, column: 16, scope: !166)
!177 = !DILocation(line: 127, column: 14, scope: !166)
!178 = !DILocation(line: 127, column: 38, scope: !166)
!179 = !DILocation(line: 129, column: 2, scope: !166)
!180 = !DILocation(line: 129, column: 10, scope: !166)
!181 = !DILocation(line: 135, column: 6, scope: !182)
!182 = distinct !DILexicalBlock(scope: !166, file: !2, line: 135, column: 6)
!183 = !DILocation(line: 135, column: 17, scope: !182)
!184 = !DILocation(line: 135, column: 6, scope: !166)
!185 = !DILocation(line: 136, column: 3, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !2, line: 135, column: 36)
!187 = !DILocation(line: 139, column: 45, scope: !166)
!188 = !DILocation(line: 139, column: 2, scope: !166)
!189 = !DILocation(line: 141, column: 2, scope: !166)
!190 = !DILocation(line: 142, column: 18, scope: !166)
!191 = !DILocation(line: 142, column: 26, scope: !166)
!192 = !DILocation(line: 142, column: 2, scope: !166)
!193 = !DILocation(line: 143, column: 2, scope: !166)
!194 = !DILocation(line: 144, column: 2, scope: !166)
!195 = !DILocation(line: 145, column: 1, scope: !166)
!196 = distinct !DISubprogram(name: "acpi_ut_prefixed_namespace_error", scope: !2, file: !2, line: 168, type: !197, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !965)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !75, !77, !199, !75, !338}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !201, line: 679, size: 640, elements: !202)
!201 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!202 = !{!203, !214, !892, !901, !910, !923, !937, !938, !948}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !200, file: !201, line: 680, baseType: !204, size: 128)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !201, line: 575, size: 128, elements: !205)
!205 = !{!206, !207, !211, !212, !213}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !204, file: !201, line: 576, baseType: !102, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !204, file: !201, line: 576, baseType: !208, size: 8, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !78, line: 17, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !80, line: 21, baseType: !210)
!210 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !201, line: 576, baseType: !208, size: 8, offset: 72)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !204, file: !201, line: 576, baseType: !83, size: 16, offset: 80)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !204, file: !201, line: 576, baseType: !83, size: 16, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !200, file: !201, line: 681, baseType: !215, size: 384)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !201, line: 604, size: 384, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !889, !890, !891}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !201, line: 605, baseType: !102, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !215, file: !201, line: 605, baseType: !208, size: 8, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !201, line: 605, baseType: !208, size: 8, offset: 72)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !215, file: !201, line: 605, baseType: !83, size: 16, offset: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !215, file: !201, line: 605, baseType: !83, size: 16, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !215, file: !201, line: 606, baseType: !83, size: 16, offset: 112)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !215, file: !201, line: 607, baseType: !224, size: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !201, line: 891, size: 1600, elements: !226)
!226 = !{!227, !832, !848}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !225, file: !201, line: 892, baseType: !228, size: 448)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !201, line: 844, size: 448, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !236, !237, !822, !831}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !228, file: !201, line: 845, baseType: !224, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !228, file: !201, line: 845, baseType: !208, size: 8, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !228, file: !201, line: 845, baseType: !208, size: 8, offset: 72)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !228, file: !201, line: 845, baseType: !83, size: 16, offset: 80)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !228, file: !201, line: 845, baseType: !235, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !201, line: 845, baseType: !224, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !228, file: !201, line: 845, baseType: !238, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !201, line: 133, size: 384, elements: !240)
!240 = !{!241, !806, !807, !808, !809, !818, !819, !820, !821}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !239, file: !201, line: 134, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !244, line: 369, size: 576, elements: !245)
!244 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!245 = !{!246, !254, !270, !280, !293, !307, !316, !450, !467, !483, !496, !575, !587, !601, !611, !629, !651, !670, !689, !708, !725, !752, !769, !782, !796, !805}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !243, file: !244, line: 370, baseType: !247, size: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !244, line: 73, size: 128, elements: !248)
!248 = !{!249, !250, !251, !252, !253}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !247, file: !244, line: 74, baseType: !242, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !247, file: !244, line: 74, baseType: !208, size: 8, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !247, file: !244, line: 74, baseType: !208, size: 8, offset: 72)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !247, file: !244, line: 74, baseType: !83, size: 16, offset: 80)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !247, file: !244, line: 74, baseType: !208, size: 8, offset: 96)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !243, file: !244, line: 371, baseType: !255, size: 192)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !244, line: 76, size: 192, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !266}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !255, file: !244, line: 77, baseType: !242, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !255, file: !244, line: 77, baseType: !208, size: 8, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !255, file: !244, line: 77, baseType: !208, size: 8, offset: 72)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !255, file: !244, line: 77, baseType: !83, size: 16, offset: 80)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !244, line: 77, baseType: !208, size: 8, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !255, file: !244, line: 77, baseType: !263, size: 24, offset: 104)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 24, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 3)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !255, file: !244, line: 78, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !78, line: 23, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !80, line: 31, baseType: !269)
!269 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !243, file: !244, line: 372, baseType: !271, size: 256)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !244, line: 93, size: 256, elements: !272)
!272 = !{!273, !274, !275, !276, !277, !278, !279}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !271, file: !244, line: 94, baseType: !242, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !271, file: !244, line: 94, baseType: !208, size: 8, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !271, file: !244, line: 94, baseType: !208, size: 8, offset: 72)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !271, file: !244, line: 94, baseType: !83, size: 16, offset: 80)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !271, file: !244, line: 94, baseType: !208, size: 8, offset: 96)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !271, file: !244, line: 94, baseType: !82, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !271, file: !244, line: 94, baseType: !77, size: 32, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !243, file: !244, line: 373, baseType: !281, size: 384)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !244, line: 97, size: 384, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !281, file: !244, line: 98, baseType: !242, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !281, file: !244, line: 98, baseType: !208, size: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !281, file: !244, line: 98, baseType: !208, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !281, file: !244, line: 98, baseType: !83, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !244, line: 98, baseType: !208, size: 8, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !281, file: !244, line: 98, baseType: !235, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !281, file: !244, line: 98, baseType: !77, size: 32, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !281, file: !244, line: 99, baseType: !77, size: 32, offset: 224)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !281, file: !244, line: 100, baseType: !235, size: 64, offset: 256)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !281, file: !244, line: 101, baseType: !238, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !243, file: !244, line: 374, baseType: !294, size: 384)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !244, line: 104, size: 384, elements: !295)
!295 = !{!296, !297, !298, !299, !300, !301, !302, !304, !305, !306}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !294, file: !244, line: 105, baseType: !242, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !294, file: !244, line: 105, baseType: !208, size: 8, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !294, file: !244, line: 105, baseType: !208, size: 8, offset: 72)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !294, file: !244, line: 105, baseType: !83, size: 16, offset: 80)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !294, file: !244, line: 105, baseType: !208, size: 8, offset: 96)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !294, file: !244, line: 105, baseType: !238, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !294, file: !244, line: 106, baseType: !303, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !294, file: !244, line: 107, baseType: !235, size: 64, offset: 256)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !294, file: !244, line: 108, baseType: !77, size: 32, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !294, file: !244, line: 109, baseType: !77, size: 32, offset: 352)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !243, file: !244, line: 375, baseType: !308, size: 192)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !244, line: 118, size: 192, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !308, file: !244, line: 119, baseType: !242, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !308, file: !244, line: 119, baseType: !208, size: 8, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !308, file: !244, line: 119, baseType: !208, size: 8, offset: 72)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !308, file: !244, line: 119, baseType: !83, size: 16, offset: 80)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !308, file: !244, line: 119, baseType: !208, size: 8, offset: 96)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !308, file: !244, line: 119, baseType: !102, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !243, file: !244, line: 376, baseType: !317, size: 448)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !244, line: 144, size: 448, elements: !318)
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !447, !448, !449}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !317, file: !244, line: 145, baseType: !242, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !317, file: !244, line: 145, baseType: !208, size: 8, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !317, file: !244, line: 145, baseType: !208, size: 8, offset: 72)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !317, file: !244, line: 145, baseType: !83, size: 16, offset: 80)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !244, line: 145, baseType: !208, size: 8, offset: 96)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !317, file: !244, line: 145, baseType: !208, size: 8, offset: 104)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !317, file: !244, line: 146, baseType: !208, size: 8, offset: 112)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !317, file: !244, line: 147, baseType: !208, size: 8, offset: 120)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !317, file: !244, line: 148, baseType: !242, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !317, file: !244, line: 149, baseType: !242, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !317, file: !244, line: 150, baseType: !235, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !317, file: !244, line: 154, baseType: !331, size: 64, offset: 320)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !244, line: 151, size: 64, elements: !332)
!332 = !{!333, !446}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !331, file: !244, line: 152, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !201, line: 248, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!338, !340}
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !339, line: 421, baseType: !77)
!339 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !342, line: 37, size: 9024, elements: !343)
!342 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !379, !380, !381, !382, !383, !387, !391, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !418, !419, !420, !421, !422, !423, !424, !425, !438, !444}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !341, file: !342, line: 38, baseType: !340, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !341, file: !342, line: 39, baseType: !208, size: 8, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !341, file: !342, line: 40, baseType: !208, size: 8, offset: 72)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !341, file: !342, line: 41, baseType: !83, size: 16, offset: 80)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !341, file: !342, line: 42, baseType: !208, size: 8, offset: 96)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !341, file: !342, line: 43, baseType: !208, size: 8, offset: 104)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !341, file: !342, line: 44, baseType: !208, size: 8, offset: 112)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !341, file: !342, line: 45, baseType: !352, size: 16, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !339, line: 445, baseType: !83)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !341, file: !342, line: 46, baseType: !208, size: 8, offset: 144)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !341, file: !342, line: 47, baseType: !208, size: 8, offset: 152)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !341, file: !342, line: 48, baseType: !208, size: 8, offset: 160)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !341, file: !342, line: 49, baseType: !208, size: 8, offset: 168)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !341, file: !342, line: 50, baseType: !208, size: 8, offset: 176)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !341, file: !342, line: 51, baseType: !208, size: 8, offset: 184)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !341, file: !342, line: 52, baseType: !208, size: 8, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !341, file: !342, line: 53, baseType: !208, size: 8, offset: 200)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !341, file: !342, line: 54, baseType: !235, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !341, file: !342, line: 55, baseType: !77, size: 32, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !341, file: !342, line: 56, baseType: !77, size: 32, offset: 352)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !341, file: !342, line: 57, baseType: !77, size: 32, offset: 384)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !341, file: !342, line: 58, baseType: !77, size: 32, offset: 416)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !341, file: !342, line: 60, baseType: !367, size: 640, offset: 448)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !201, line: 909, size: 640, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374, !375, !376, !377, !378}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !367, file: !201, line: 910, baseType: !235, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !367, file: !201, line: 911, baseType: !235, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !367, file: !201, line: 912, baseType: !235, size: 64, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !367, file: !201, line: 913, baseType: !235, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !367, file: !201, line: 914, baseType: !235, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !367, file: !201, line: 915, baseType: !224, size: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !367, file: !201, line: 916, baseType: !238, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !367, file: !201, line: 917, baseType: !199, size: 64, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !367, file: !201, line: 918, baseType: !224, size: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !367, file: !201, line: 919, baseType: !77, size: 32, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !341, file: !342, line: 61, baseType: !77, size: 32, offset: 1088)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !341, file: !342, line: 62, baseType: !77, size: 32, offset: 1120)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !341, file: !342, line: 63, baseType: !83, size: 16, offset: 1152)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !341, file: !342, line: 64, baseType: !208, size: 8, offset: 1168)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !341, file: !342, line: 66, baseType: !384, size: 2688, offset: 1216)
!384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 2688, elements: !385)
!385 = !{!386}
!386 = !DISubrange(count: 7)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !341, file: !342, line: 67, baseType: !388, size: 3072, offset: 3904)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 3072, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 8)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !341, file: !342, line: 68, baseType: !392, size: 576, offset: 6976)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 576, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 9)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !341, file: !342, line: 69, baseType: !303, size: 64, offset: 7552)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !341, file: !342, line: 71, baseType: !235, size: 64, offset: 7616)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !341, file: !342, line: 72, baseType: !303, size: 64, offset: 7680)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !341, file: !342, line: 73, baseType: !199, size: 64, offset: 7744)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !341, file: !342, line: 74, baseType: !238, size: 64, offset: 7808)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !341, file: !342, line: 75, baseType: !242, size: 64, offset: 7872)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !341, file: !342, line: 76, baseType: !238, size: 64, offset: 7936)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !341, file: !342, line: 77, baseType: !224, size: 64, offset: 8000)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !341, file: !342, line: 78, baseType: !242, size: 64, offset: 8064)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !341, file: !342, line: 79, baseType: !238, size: 64, offset: 8128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !341, file: !342, line: 80, baseType: !82, size: 64, offset: 8192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !341, file: !342, line: 81, baseType: !224, size: 64, offset: 8256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !341, file: !342, line: 82, baseType: !408, size: 64, offset: 8320)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !201, line: 718, size: 128, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !410, file: !201, line: 722, baseType: !77, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !410, file: !201, line: 723, baseType: !77, size: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !410, file: !201, line: 724, baseType: !83, size: 16, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !410, file: !201, line: 725, baseType: !208, size: 8, offset: 80)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !410, file: !201, line: 726, baseType: !208, size: 8, offset: 88)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !410, file: !201, line: 727, baseType: !208, size: 8, offset: 96)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !341, file: !342, line: 83, baseType: !224, size: 64, offset: 8384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !341, file: !342, line: 84, baseType: !242, size: 64, offset: 8448)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !341, file: !342, line: 85, baseType: !199, size: 64, offset: 8512)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !341, file: !342, line: 86, baseType: !242, size: 64, offset: 8576)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !341, file: !342, line: 87, baseType: !199, size: 64, offset: 8640)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !341, file: !342, line: 88, baseType: !224, size: 64, offset: 8704)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !341, file: !342, line: 89, baseType: !224, size: 64, offset: 8768)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !341, file: !342, line: 90, baseType: !426, size: 64, offset: 8832)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !201, line: 634, size: 320, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434, !435, !436, !437}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !201, line: 635, baseType: !102, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !427, file: !201, line: 635, baseType: !208, size: 8, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !427, file: !201, line: 635, baseType: !208, size: 8, offset: 72)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !427, file: !201, line: 635, baseType: !83, size: 16, offset: 80)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !427, file: !201, line: 635, baseType: !83, size: 16, offset: 96)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !427, file: !201, line: 636, baseType: !208, size: 8, offset: 112)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !427, file: !201, line: 637, baseType: !340, size: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !427, file: !201, line: 638, baseType: !242, size: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !427, file: !201, line: 639, baseType: !267, size: 64, offset: 256)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !341, file: !342, line: 91, baseType: !439, size: 64, offset: 8896)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !201, line: 652, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!338, !340, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !341, file: !342, line: 92, baseType: !445, size: 64, offset: 8960)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !201, line: 656, baseType: !335)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !331, file: !244, line: 153, baseType: !242, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !317, file: !244, line: 156, baseType: !77, size: 32, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !317, file: !244, line: 157, baseType: !352, size: 16, offset: 416)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !317, file: !244, line: 158, baseType: !208, size: 8, offset: 432)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !243, file: !244, line: 377, baseType: !451, size: 576)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !244, line: 122, size: 576, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !451, file: !244, line: 123, baseType: !242, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !451, file: !244, line: 123, baseType: !208, size: 8, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !451, file: !244, line: 123, baseType: !208, size: 8, offset: 72)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !451, file: !244, line: 123, baseType: !83, size: 16, offset: 80)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !451, file: !244, line: 123, baseType: !208, size: 8, offset: 96)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !451, file: !244, line: 123, baseType: !208, size: 8, offset: 104)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !451, file: !244, line: 124, baseType: !83, size: 16, offset: 112)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !451, file: !244, line: 125, baseType: !102, size: 64, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !451, file: !244, line: 126, baseType: !267, size: 64, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !451, file: !244, line: 127, baseType: !426, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !451, file: !244, line: 128, baseType: !242, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !451, file: !244, line: 129, baseType: !242, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !451, file: !244, line: 130, baseType: !238, size: 64, offset: 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !451, file: !244, line: 131, baseType: !208, size: 8, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !243, file: !244, line: 378, baseType: !468, size: 512)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !244, line: 134, size: 512, elements: !469)
!469 = !{!470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !481, !482}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !468, file: !244, line: 135, baseType: !242, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !468, file: !244, line: 135, baseType: !208, size: 8, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !468, file: !244, line: 135, baseType: !208, size: 8, offset: 72)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !468, file: !244, line: 135, baseType: !83, size: 16, offset: 80)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !244, line: 135, baseType: !208, size: 8, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !468, file: !244, line: 135, baseType: !208, size: 8, offset: 104)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !468, file: !244, line: 136, baseType: !238, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !468, file: !244, line: 137, baseType: !242, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !244, line: 138, baseType: !242, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !468, file: !244, line: 139, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !339, line: 129, baseType: !267)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !468, file: !244, line: 140, baseType: !77, size: 32, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !468, file: !244, line: 141, baseType: !102, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !243, file: !244, line: 379, baseType: !484, size: 320)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !244, line: 185, size: 320, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491, !495}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !484, file: !244, line: 186, baseType: !242, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !484, file: !244, line: 186, baseType: !208, size: 8, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !484, file: !244, line: 186, baseType: !208, size: 8, offset: 72)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !484, file: !244, line: 186, baseType: !83, size: 16, offset: 80)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !484, file: !244, line: 186, baseType: !208, size: 8, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !484, file: !244, line: 186, baseType: !492, size: 128, offset: 128)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 128, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 2)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !484, file: !244, line: 186, baseType: !242, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !243, file: !244, line: 380, baseType: !497, size: 384)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !244, line: 188, size: 384, elements: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !497, file: !244, line: 189, baseType: !242, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !497, file: !244, line: 189, baseType: !208, size: 8, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !497, file: !244, line: 189, baseType: !208, size: 8, offset: 72)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !497, file: !244, line: 189, baseType: !83, size: 16, offset: 80)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !244, line: 189, baseType: !208, size: 8, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !497, file: !244, line: 190, baseType: !492, size: 128, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !497, file: !244, line: 190, baseType: !242, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !497, file: !244, line: 190, baseType: !507, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !201, line: 480, size: 576, elements: !509)
!509 = !{!510, !511, !512, !513, !521, !536, !569, !570, !571, !572, !573, !574}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !201, line: 481, baseType: !238, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !508, file: !201, line: 482, baseType: !507, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !508, file: !201, line: 483, baseType: !507, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !508, file: !201, line: 484, baseType: !514, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !201, line: 497, size: 256, elements: !516)
!516 = !{!517, !518, !519, !520}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !515, file: !201, line: 498, baseType: !514, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !515, file: !201, line: 499, baseType: !514, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !515, file: !201, line: 500, baseType: !507, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !515, file: !201, line: 501, baseType: !77, size: 32, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !508, file: !201, line: 485, baseType: !522, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !201, line: 466, size: 320, elements: !524)
!524 = !{!525, !530, !531, !532, !533, !534, !535}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !523, file: !201, line: 467, baseType: !526, size: 128)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !201, line: 459, size: 128, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !526, file: !201, line: 460, baseType: !208, size: 8)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !526, file: !201, line: 461, baseType: !267, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !523, file: !201, line: 468, baseType: !526, size: 128, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !523, file: !201, line: 469, baseType: !83, size: 16, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !523, file: !201, line: 470, baseType: !208, size: 8, offset: 272)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !523, file: !201, line: 471, baseType: !208, size: 8, offset: 280)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !523, file: !201, line: 472, baseType: !208, size: 8, offset: 288)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !523, file: !201, line: 473, baseType: !208, size: 8, offset: 296)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !508, file: !201, line: 486, baseType: !537, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !201, line: 448, size: 192, elements: !539)
!539 = !{!540, !564, !565, !566, !567, !568}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !538, file: !201, line: 449, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !201, line: 438, size: 64, elements: !542)
!542 = !{!543, !544, !558}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !541, file: !201, line: 439, baseType: !238, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !541, file: !201, line: 440, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !201, line: 419, size: 256, elements: !547)
!547 = !{!548, !554, !555, !556, !557}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !546, file: !201, line: 420, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !339, line: 1058, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!77, !553, !77, !102}
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !339, line: 424, baseType: !102)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !546, file: !201, line: 421, baseType: !102, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !546, file: !201, line: 422, baseType: !238, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !546, file: !201, line: 423, baseType: !208, size: 8, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !546, file: !201, line: 424, baseType: !208, size: 8, offset: 200)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !541, file: !201, line: 441, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !201, line: 429, size: 128, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !560, file: !201, line: 430, baseType: !238, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !201, line: 431, baseType: !559, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !538, file: !201, line: 450, baseType: !522, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !538, file: !201, line: 451, baseType: !208, size: 8, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !538, file: !201, line: 452, baseType: !208, size: 8, offset: 136)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !538, file: !201, line: 453, baseType: !208, size: 8, offset: 144)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !538, file: !201, line: 454, baseType: !208, size: 8, offset: 152)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !508, file: !201, line: 487, baseType: !267, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !508, file: !201, line: 488, baseType: !77, size: 32, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !508, file: !201, line: 489, baseType: !83, size: 16, offset: 480)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !508, file: !201, line: 490, baseType: !83, size: 16, offset: 496)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !508, file: !201, line: 491, baseType: !208, size: 8, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !508, file: !201, line: 492, baseType: !208, size: 8, offset: 520)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !243, file: !244, line: 381, baseType: !576, size: 384)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !244, line: 193, size: 384, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !586}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !576, file: !244, line: 194, baseType: !242, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !576, file: !244, line: 194, baseType: !208, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !576, file: !244, line: 194, baseType: !208, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !576, file: !244, line: 194, baseType: !83, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !244, line: 194, baseType: !208, size: 8, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !576, file: !244, line: 194, baseType: !492, size: 128, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !576, file: !244, line: 194, baseType: !242, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !576, file: !244, line: 194, baseType: !77, size: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !576, file: !244, line: 195, baseType: !77, size: 32, offset: 352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !243, file: !244, line: 382, baseType: !588, size: 384)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !244, line: 198, size: 384, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !588, file: !244, line: 199, baseType: !242, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !588, file: !244, line: 199, baseType: !208, size: 8, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !244, line: 199, baseType: !208, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !588, file: !244, line: 199, baseType: !83, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !244, line: 199, baseType: !208, size: 8, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !588, file: !244, line: 201, baseType: !208, size: 8, offset: 104)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !588, file: !244, line: 202, baseType: !208, size: 8, offset: 112)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !588, file: !244, line: 203, baseType: !492, size: 128, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !588, file: !244, line: 203, baseType: !242, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !588, file: !244, line: 203, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !339, line: 128, baseType: !267)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !243, file: !244, line: 383, baseType: !602, size: 320)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !244, line: 206, size: 320, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !244, line: 207, baseType: !242, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !244, line: 207, baseType: !208, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !244, line: 207, baseType: !208, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !244, line: 207, baseType: !83, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !244, line: 207, baseType: !208, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !602, file: !244, line: 207, baseType: !492, size: 128, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !602, file: !244, line: 207, baseType: !242, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !243, file: !244, line: 384, baseType: !612, size: 384)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !244, line: 234, size: 384, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !612, file: !244, line: 235, baseType: !242, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !612, file: !244, line: 235, baseType: !208, size: 8, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !612, file: !244, line: 235, baseType: !208, size: 8, offset: 72)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !612, file: !244, line: 235, baseType: !83, size: 16, offset: 80)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !244, line: 235, baseType: !208, size: 8, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !612, file: !244, line: 235, baseType: !208, size: 8, offset: 104)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !612, file: !244, line: 235, baseType: !208, size: 8, offset: 112)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !612, file: !244, line: 235, baseType: !208, size: 8, offset: 120)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !612, file: !244, line: 235, baseType: !238, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !612, file: !244, line: 235, baseType: !77, size: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !612, file: !244, line: 235, baseType: !77, size: 32, offset: 224)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !612, file: !244, line: 235, baseType: !77, size: 32, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !612, file: !244, line: 235, baseType: !208, size: 8, offset: 288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !612, file: !244, line: 235, baseType: !208, size: 8, offset: 296)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !612, file: !244, line: 235, baseType: !242, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !243, file: !244, line: 385, baseType: !630, size: 576)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !244, line: 238, size: 576, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !630, file: !244, line: 239, baseType: !242, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !630, file: !244, line: 239, baseType: !208, size: 8, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !244, line: 239, baseType: !208, size: 8, offset: 72)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !630, file: !244, line: 239, baseType: !83, size: 16, offset: 80)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !244, line: 239, baseType: !208, size: 8, offset: 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !630, file: !244, line: 239, baseType: !208, size: 8, offset: 104)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !630, file: !244, line: 239, baseType: !208, size: 8, offset: 112)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !630, file: !244, line: 239, baseType: !208, size: 8, offset: 120)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !244, line: 239, baseType: !238, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !630, file: !244, line: 239, baseType: !77, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !630, file: !244, line: 239, baseType: !77, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !630, file: !244, line: 239, baseType: !77, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !630, file: !244, line: 239, baseType: !208, size: 8, offset: 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !630, file: !244, line: 239, baseType: !208, size: 8, offset: 296)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !630, file: !244, line: 239, baseType: !83, size: 16, offset: 304)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !630, file: !244, line: 240, baseType: !242, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !630, file: !244, line: 241, baseType: !235, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !630, file: !244, line: 242, baseType: !83, size: 16, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !630, file: !244, line: 243, baseType: !235, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !243, file: !244, line: 386, baseType: !652, size: 384)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !244, line: 263, size: 384, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !244, line: 264, baseType: !242, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !244, line: 264, baseType: !208, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !244, line: 264, baseType: !208, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !244, line: 264, baseType: !83, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !244, line: 264, baseType: !208, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !652, file: !244, line: 264, baseType: !208, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !652, file: !244, line: 264, baseType: !208, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !652, file: !244, line: 264, baseType: !208, size: 8, offset: 120)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !244, line: 264, baseType: !238, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !652, file: !244, line: 264, baseType: !77, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !652, file: !244, line: 264, baseType: !77, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !244, line: 264, baseType: !77, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !652, file: !244, line: 264, baseType: !208, size: 8, offset: 288)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !652, file: !244, line: 264, baseType: !208, size: 8, offset: 296)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !652, file: !244, line: 264, baseType: !208, size: 8, offset: 304)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !652, file: !244, line: 265, baseType: !242, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !243, file: !244, line: 387, baseType: !671, size: 448)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !244, line: 246, size: 448, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !244, line: 247, baseType: !242, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !244, line: 247, baseType: !208, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !244, line: 247, baseType: !208, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !244, line: 247, baseType: !83, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !244, line: 247, baseType: !208, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !244, line: 247, baseType: !208, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !244, line: 247, baseType: !208, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !244, line: 247, baseType: !208, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !244, line: 247, baseType: !238, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !244, line: 247, baseType: !77, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !244, line: 247, baseType: !77, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !244, line: 247, baseType: !77, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !244, line: 247, baseType: !208, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !244, line: 247, baseType: !208, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !671, file: !244, line: 247, baseType: !242, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !671, file: !244, line: 248, baseType: !242, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !243, file: !244, line: 388, baseType: !690, size: 448)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !244, line: 251, size: 448, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !244, line: 252, baseType: !242, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !244, line: 252, baseType: !208, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !244, line: 252, baseType: !208, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !244, line: 252, baseType: !83, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !244, line: 252, baseType: !208, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !690, file: !244, line: 252, baseType: !208, size: 8, offset: 104)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !690, file: !244, line: 252, baseType: !208, size: 8, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !690, file: !244, line: 252, baseType: !208, size: 8, offset: 120)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !244, line: 252, baseType: !238, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !690, file: !244, line: 252, baseType: !77, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !690, file: !244, line: 252, baseType: !77, size: 32, offset: 224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !690, file: !244, line: 252, baseType: !77, size: 32, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !690, file: !244, line: 252, baseType: !208, size: 8, offset: 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !690, file: !244, line: 252, baseType: !208, size: 8, offset: 296)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !690, file: !244, line: 257, baseType: !242, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !690, file: !244, line: 258, baseType: !242, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !243, file: !244, line: 389, baseType: !709, size: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !244, line: 274, size: 512, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !723, !724}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !244, line: 275, baseType: !242, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !244, line: 275, baseType: !208, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !244, line: 275, baseType: !208, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !244, line: 275, baseType: !83, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !244, line: 275, baseType: !208, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !244, line: 275, baseType: !238, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !709, file: !244, line: 276, baseType: !77, size: 32, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !244, line: 277, baseType: !719, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !339, line: 1061, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !553, !77, !102}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !709, file: !244, line: 278, baseType: !102, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !244, line: 279, baseType: !492, size: 128, offset: 384)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !243, file: !244, line: 390, baseType: !726, size: 576)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !244, line: 282, size: 576, elements: !727)
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !741, !742, !743, !744, !750, !751}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !726, file: !244, line: 283, baseType: !242, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !726, file: !244, line: 283, baseType: !208, size: 8, offset: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !726, file: !244, line: 283, baseType: !208, size: 8, offset: 72)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !726, file: !244, line: 283, baseType: !83, size: 16, offset: 80)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !726, file: !244, line: 283, baseType: !208, size: 8, offset: 96)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !726, file: !244, line: 283, baseType: !208, size: 8, offset: 104)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !726, file: !244, line: 284, baseType: !208, size: 8, offset: 112)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !726, file: !244, line: 285, baseType: !736, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !339, line: 1093, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!338, !77, !480, !77, !740, !102, !102}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !726, file: !244, line: 286, baseType: !238, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !726, file: !244, line: 287, baseType: !102, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !726, file: !244, line: 288, baseType: !102, size: 64, offset: 320)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !726, file: !244, line: 289, baseType: !745, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !339, line: 1126, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!338, !553, !77, !102, !749}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !726, file: !244, line: 290, baseType: !242, size: 64, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !726, file: !244, line: 291, baseType: !242, size: 64, offset: 512)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !243, file: !244, line: 391, baseType: !753, size: 512)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !244, line: 309, size: 512, elements: !754)
!754 = !{!755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !753, file: !244, line: 310, baseType: !242, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !753, file: !244, line: 310, baseType: !208, size: 8, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !753, file: !244, line: 310, baseType: !208, size: 8, offset: 72)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !753, file: !244, line: 310, baseType: !83, size: 16, offset: 80)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !753, file: !244, line: 310, baseType: !208, size: 8, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !753, file: !244, line: 310, baseType: !208, size: 8, offset: 104)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !753, file: !244, line: 311, baseType: !208, size: 8, offset: 112)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !753, file: !244, line: 312, baseType: !208, size: 8, offset: 120)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !753, file: !244, line: 313, baseType: !102, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !753, file: !244, line: 314, baseType: !238, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !753, file: !244, line: 315, baseType: !303, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !753, file: !244, line: 316, baseType: !235, size: 64, offset: 320)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !753, file: !244, line: 317, baseType: !235, size: 64, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !753, file: !244, line: 318, baseType: !77, size: 32, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !243, file: !244, line: 392, baseType: !770, size: 448)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !244, line: 342, size: 448, elements: !771)
!771 = !{!772, !773, !774, !775, !776, !777, !778, !779, !780, !781}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !770, file: !244, line: 343, baseType: !242, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !770, file: !244, line: 343, baseType: !208, size: 8, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !770, file: !244, line: 343, baseType: !208, size: 8, offset: 72)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !770, file: !244, line: 343, baseType: !83, size: 16, offset: 80)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !244, line: 343, baseType: !208, size: 8, offset: 96)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !770, file: !244, line: 343, baseType: !238, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !770, file: !244, line: 344, baseType: !238, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !770, file: !244, line: 345, baseType: !102, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !770, file: !244, line: 346, baseType: !235, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !770, file: !244, line: 347, baseType: !77, size: 32, offset: 384)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !243, file: !244, line: 393, baseType: !783, size: 256)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !244, line: 352, size: 256, elements: !784)
!784 = !{!785, !786, !787, !788, !789, !790, !795}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !783, file: !244, line: 353, baseType: !242, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !783, file: !244, line: 353, baseType: !208, size: 8, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !783, file: !244, line: 353, baseType: !208, size: 8, offset: 72)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !783, file: !244, line: 353, baseType: !83, size: 16, offset: 80)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !783, file: !244, line: 353, baseType: !208, size: 8, offset: 96)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !783, file: !244, line: 353, baseType: !791, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !339, line: 1064, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !553, !102}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !783, file: !244, line: 354, baseType: !102, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !243, file: !244, line: 394, baseType: !797, size: 192)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !244, line: 359, size: 192, elements: !798)
!798 = !{!799, !800, !801, !802, !803, !804}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !797, file: !244, line: 360, baseType: !242, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !797, file: !244, line: 360, baseType: !208, size: 8, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !797, file: !244, line: 360, baseType: !208, size: 8, offset: 72)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !797, file: !244, line: 360, baseType: !83, size: 16, offset: 80)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !797, file: !244, line: 360, baseType: !208, size: 8, offset: 96)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !797, file: !244, line: 360, baseType: !242, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !243, file: !244, line: 401, baseType: !239, size: 384)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !239, file: !201, line: 135, baseType: !208, size: 8, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !239, file: !201, line: 136, baseType: !208, size: 8, offset: 72)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !239, file: !201, line: 137, baseType: !83, size: 16, offset: 80)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !201, line: 138, baseType: !810, size: 32, offset: 96)
!810 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !811, line: 328, size: 32, elements: !812)
!811 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !810, file: !811, line: 329, baseType: !77, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !810, file: !811, line: 330, baseType: !815, size: 32)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 4)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !239, file: !201, line: 139, baseType: !238, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !239, file: !201, line: 140, baseType: !238, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !239, file: !201, line: 141, baseType: !238, size: 64, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !239, file: !201, line: 142, baseType: !352, size: 16, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !228, file: !201, line: 845, baseType: !823, size: 64, offset: 320)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !201, line: 732, size: 64, elements: !824)
!824 = !{!825, !826, !827, !828, !829, !830}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !823, file: !201, line: 733, baseType: !267, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !823, file: !201, line: 734, baseType: !77, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !823, file: !201, line: 735, baseType: !82, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !823, file: !201, line: 736, baseType: !235, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !823, file: !201, line: 737, baseType: !82, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !823, file: !201, line: 738, baseType: !224, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !228, file: !201, line: 845, baseType: !208, size: 8, offset: 384)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !225, file: !201, line: 893, baseType: !833, size: 640)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !201, line: 851, size: 640, elements: !834)
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !833, file: !201, line: 852, baseType: !224, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !833, file: !201, line: 852, baseType: !208, size: 8, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !833, file: !201, line: 852, baseType: !208, size: 8, offset: 72)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !833, file: !201, line: 852, baseType: !83, size: 16, offset: 80)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !833, file: !201, line: 852, baseType: !235, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !833, file: !201, line: 852, baseType: !224, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !833, file: !201, line: 852, baseType: !238, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !833, file: !201, line: 852, baseType: !823, size: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !833, file: !201, line: 852, baseType: !208, size: 8, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !833, file: !201, line: 852, baseType: !82, size: 64, offset: 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !833, file: !201, line: 853, baseType: !235, size: 64, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !833, file: !201, line: 854, baseType: !77, size: 32, offset: 576)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !833, file: !201, line: 855, baseType: !77, size: 32, offset: 608)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !225, file: !201, line: 894, baseType: !849, size: 1600)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !201, line: 862, size: 1600, elements: !850)
!850 = !{!851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !849, file: !201, line: 863, baseType: !224, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !849, file: !201, line: 863, baseType: !208, size: 8, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !849, file: !201, line: 863, baseType: !208, size: 8, offset: 72)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !849, file: !201, line: 863, baseType: !83, size: 16, offset: 80)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !849, file: !201, line: 863, baseType: !235, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !849, file: !201, line: 863, baseType: !224, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !849, file: !201, line: 863, baseType: !238, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !849, file: !201, line: 863, baseType: !823, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !849, file: !201, line: 863, baseType: !208, size: 8, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !849, file: !201, line: 863, baseType: !224, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !849, file: !201, line: 864, baseType: !224, size: 64, offset: 512)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !849, file: !201, line: 865, baseType: !82, size: 64, offset: 576)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !849, file: !201, line: 866, baseType: !208, size: 8, offset: 640)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !849, file: !201, line: 867, baseType: !82, size: 64, offset: 704)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !849, file: !201, line: 868, baseType: !82, size: 64, offset: 768)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !849, file: !201, line: 869, baseType: !82, size: 64, offset: 832)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !849, file: !201, line: 870, baseType: !815, size: 32, offset: 896)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !849, file: !201, line: 871, baseType: !77, size: 32, offset: 928)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !849, file: !201, line: 872, baseType: !77, size: 32, offset: 960)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !849, file: !201, line: 873, baseType: !77, size: 32, offset: 992)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !849, file: !201, line: 874, baseType: !77, size: 32, offset: 1024)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !849, file: !201, line: 875, baseType: !77, size: 32, offset: 1056)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !849, file: !201, line: 876, baseType: !77, size: 32, offset: 1088)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !849, file: !201, line: 877, baseType: !77, size: 32, offset: 1120)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !849, file: !201, line: 878, baseType: !77, size: 32, offset: 1152)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !849, file: !201, line: 879, baseType: !77, size: 32, offset: 1184)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !849, file: !201, line: 880, baseType: !77, size: 32, offset: 1216)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !849, file: !201, line: 881, baseType: !77, size: 32, offset: 1248)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !849, file: !201, line: 882, baseType: !77, size: 32, offset: 1280)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !849, file: !201, line: 883, baseType: !77, size: 32, offset: 1312)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !849, file: !201, line: 884, baseType: !83, size: 16, offset: 1344)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !849, file: !201, line: 885, baseType: !208, size: 8, offset: 1360)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !849, file: !201, line: 886, baseType: !208, size: 8, offset: 1368)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !849, file: !201, line: 887, baseType: !208, size: 8, offset: 1376)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !849, file: !201, line: 888, baseType: !886, size: 160, offset: 1384)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !887)
!887 = !{!888}
!888 = !DISubrange(count: 20)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !215, file: !201, line: 608, baseType: !235, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !215, file: !201, line: 609, baseType: !235, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !215, file: !201, line: 610, baseType: !267, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !200, file: !201, line: 682, baseType: !893, size: 192)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !201, line: 582, size: 192, elements: !894)
!894 = !{!895, !896, !897, !898, !899, !900}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !893, file: !201, line: 583, baseType: !102, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !893, file: !201, line: 583, baseType: !208, size: 8, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !893, file: !201, line: 583, baseType: !208, size: 8, offset: 72)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !893, file: !201, line: 583, baseType: !83, size: 16, offset: 80)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !893, file: !201, line: 583, baseType: !83, size: 16, offset: 96)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !893, file: !201, line: 584, baseType: !242, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !200, file: !201, line: 683, baseType: !902, size: 192)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !201, line: 616, size: 192, elements: !903)
!903 = !{!904, !905, !906, !907, !908, !909}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !902, file: !201, line: 617, baseType: !102, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !902, file: !201, line: 617, baseType: !208, size: 8, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !902, file: !201, line: 617, baseType: !208, size: 8, offset: 72)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !902, file: !201, line: 617, baseType: !83, size: 16, offset: 80)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !902, file: !201, line: 617, baseType: !83, size: 16, offset: 96)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !902, file: !201, line: 618, baseType: !238, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !200, file: !201, line: 684, baseType: !911, size: 448)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !201, line: 621, size: 448, elements: !912)
!912 = !{!913, !914, !915, !916, !917, !918, !919, !920, !921, !922}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !911, file: !201, line: 622, baseType: !102, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !911, file: !201, line: 622, baseType: !208, size: 8, offset: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !911, file: !201, line: 622, baseType: !208, size: 8, offset: 72)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !911, file: !201, line: 622, baseType: !83, size: 16, offset: 80)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !911, file: !201, line: 622, baseType: !83, size: 16, offset: 96)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !911, file: !201, line: 623, baseType: !77, size: 32, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !911, file: !201, line: 624, baseType: !224, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !911, file: !201, line: 625, baseType: !235, size: 64, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !911, file: !201, line: 626, baseType: !235, size: 64, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !911, file: !201, line: 627, baseType: !77, size: 32, offset: 384)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !200, file: !201, line: 685, baseType: !924, size: 512)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !201, line: 590, size: 512, elements: !925)
!925 = !{!926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !924, file: !201, line: 591, baseType: !102, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !924, file: !201, line: 591, baseType: !208, size: 8, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !924, file: !201, line: 591, baseType: !208, size: 8, offset: 72)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !924, file: !201, line: 591, baseType: !83, size: 16, offset: 80)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !924, file: !201, line: 591, baseType: !83, size: 16, offset: 96)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !924, file: !201, line: 592, baseType: !77, size: 32, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !924, file: !201, line: 593, baseType: !242, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !924, file: !201, line: 594, baseType: !242, size: 64, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !924, file: !201, line: 595, baseType: !340, size: 64, offset: 320)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !924, file: !201, line: 596, baseType: !102, size: 64, offset: 384)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !924, file: !201, line: 597, baseType: !77, size: 32, offset: 448)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !200, file: !201, line: 686, baseType: !427, size: 320)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !200, file: !201, line: 687, baseType: !939, size: 640)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !201, line: 646, size: 640, elements: !940)
!940 = !{!941, !942, !943, !944, !945, !946}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !939, file: !201, line: 647, baseType: !102, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !939, file: !201, line: 647, baseType: !208, size: 8, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !939, file: !201, line: 647, baseType: !208, size: 8, offset: 72)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !939, file: !201, line: 647, baseType: !83, size: 16, offset: 80)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !939, file: !201, line: 647, baseType: !83, size: 16, offset: 96)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !939, file: !201, line: 648, baseType: !947, size: 512, offset: 128)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, size: 512, elements: !389)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !200, file: !201, line: 688, baseType: !949, size: 320)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !201, line: 669, size: 320, elements: !950)
!950 = !{!951, !952, !953, !954, !955, !956, !957, !958, !959}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !949, file: !201, line: 670, baseType: !102, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !949, file: !201, line: 670, baseType: !208, size: 8, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !949, file: !201, line: 670, baseType: !208, size: 8, offset: 72)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !949, file: !201, line: 670, baseType: !83, size: 16, offset: 80)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !949, file: !201, line: 670, baseType: !83, size: 16, offset: 96)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !949, file: !201, line: 671, baseType: !208, size: 8, offset: 112)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !949, file: !201, line: 672, baseType: !238, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !949, file: !201, line: 673, baseType: !242, size: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !949, file: !201, line: 674, baseType: !960, size: 64, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !201, line: 660, size: 128, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !961, file: !201, line: 661, baseType: !719, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !961, file: !201, line: 662, baseType: !102, size: 64, offset: 64)
!965 = !{!966, !967, !968, !969, !970, !971, !972}
!966 = !DILocalVariable(name: "module_name", arg: 1, scope: !196, file: !2, line: 168, type: !75)
!967 = !DILocalVariable(name: "line_number", arg: 2, scope: !196, file: !2, line: 169, type: !77)
!968 = !DILocalVariable(name: "prefix_scope", arg: 3, scope: !196, file: !2, line: 170, type: !199)
!969 = !DILocalVariable(name: "internal_path", arg: 4, scope: !196, file: !2, line: 171, type: !75)
!970 = !DILocalVariable(name: "lookup_status", arg: 5, scope: !196, file: !2, line: 172, type: !338)
!971 = !DILocalVariable(name: "full_path", scope: !196, file: !2, line: 174, type: !82)
!972 = !DILocalVariable(name: "message", scope: !196, file: !2, line: 175, type: !75)
!973 = !DILocation(line: 168, column: 46, scope: !196)
!974 = !DILocation(line: 169, column: 10, scope: !196)
!975 = !DILocation(line: 170, column: 32, scope: !196)
!976 = !DILocation(line: 171, column: 18, scope: !196)
!977 = !DILocation(line: 172, column: 18, scope: !196)
!978 = !DILocation(line: 174, column: 2, scope: !196)
!979 = !DILocation(line: 174, column: 8, scope: !196)
!980 = !DILocation(line: 175, column: 2, scope: !196)
!981 = !DILocation(line: 175, column: 14, scope: !196)
!982 = !DILocation(line: 182, column: 10, scope: !196)
!983 = !DILocation(line: 182, column: 2, scope: !196)
!984 = !DILocation(line: 185, column: 3, scope: !985)
!985 = distinct !DILexicalBlock(scope: !196, file: !2, line: 182, column: 25)
!986 = !DILocation(line: 186, column: 11, scope: !985)
!987 = !DILocation(line: 187, column: 3, scope: !985)
!988 = !DILocation(line: 191, column: 3, scope: !985)
!989 = !DILocation(line: 192, column: 11, scope: !985)
!990 = !DILocation(line: 193, column: 3, scope: !985)
!991 = !DILocation(line: 197, column: 3, scope: !985)
!992 = !DILocation(line: 198, column: 11, scope: !985)
!993 = !DILocation(line: 199, column: 3, scope: !985)
!994 = !DILocation(line: 205, column: 38, scope: !196)
!995 = !DILocation(line: 205, column: 52, scope: !196)
!996 = !DILocation(line: 205, column: 6, scope: !196)
!997 = !DILocation(line: 204, column: 12, scope: !196)
!998 = !DILocation(line: 207, column: 32, scope: !196)
!999 = !DILocation(line: 208, column: 10, scope: !196)
!1000 = !DILocation(line: 208, column: 22, scope: !196)
!1001 = !DILocation(line: 209, column: 32, scope: !196)
!1002 = !DILocation(line: 209, column: 10, scope: !196)
!1003 = !DILocation(line: 207, column: 2, scope: !196)
!1004 = !DILocation(line: 211, column: 6, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !196, file: !2, line: 211, column: 6)
!1006 = !DILocation(line: 211, column: 6, scope: !196)
!1007 = !DILocation(line: 212, column: 3, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1005, file: !2, line: 211, column: 17)
!1009 = !DILocation(line: 213, column: 2, scope: !1008)
!1010 = !DILocation(line: 215, column: 2, scope: !196)
!1011 = !DILocation(line: 216, column: 1, scope: !196)
!1012 = !DISubprogram(name: "acpi_ns_build_prefixed_pathname", scope: !1013, file: !1013, line: 264, type: !1014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1013 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!82, !199, !75}
!1016 = !DISubprogram(name: "acpi_format_exception", scope: !1017, file: !1017, line: 430, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1017 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!75, !338}
!1020 = distinct !DISubprogram(name: "acpi_os_free", scope: !1021, file: !1021, line: 60, type: !1022, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1024)
!1021 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !102}
!1024 = !{!1025}
!1025 = !DILocalVariable(name: "memory", arg: 1, scope: !1020, file: !1021, line: 60, type: !102)
!1026 = !DILocation(line: 60, column: 39, scope: !1020)
!1027 = !DILocation(line: 62, column: 8, scope: !1020)
!1028 = !DILocation(line: 62, column: 2, scope: !1020)
!1029 = !DILocation(line: 63, column: 1, scope: !1020)
!1030 = distinct !DISubprogram(name: "acpi_ut_method_error", scope: !2, file: !2, line: 299, type: !1031, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !61, retainedNodes: !1033)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !75, !77, !75, !238, !75, !338}
!1033 = !{!1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041}
!1034 = !DILocalVariable(name: "module_name", arg: 1, scope: !1030, file: !2, line: 299, type: !75)
!1035 = !DILocalVariable(name: "line_number", arg: 2, scope: !1030, file: !2, line: 300, type: !77)
!1036 = !DILocalVariable(name: "message", arg: 3, scope: !1030, file: !2, line: 301, type: !75)
!1037 = !DILocalVariable(name: "prefix_node", arg: 4, scope: !1030, file: !2, line: 302, type: !238)
!1038 = !DILocalVariable(name: "path", arg: 5, scope: !1030, file: !2, line: 303, type: !75)
!1039 = !DILocalVariable(name: "method_status", arg: 6, scope: !1030, file: !2, line: 303, type: !338)
!1040 = !DILocalVariable(name: "status", scope: !1030, file: !2, line: 305, type: !338)
!1041 = !DILocalVariable(name: "node", scope: !1030, file: !2, line: 306, type: !238)
!1042 = !DILocation(line: 299, column: 34, scope: !1030)
!1043 = !DILocation(line: 300, column: 12, scope: !1030)
!1044 = !DILocation(line: 301, column: 20, scope: !1030)
!1045 = !DILocation(line: 302, column: 36, scope: !1030)
!1046 = !DILocation(line: 303, column: 20, scope: !1030)
!1047 = !DILocation(line: 303, column: 38, scope: !1030)
!1048 = !DILocation(line: 305, column: 2, scope: !1030)
!1049 = !DILocation(line: 305, column: 14, scope: !1030)
!1050 = !DILocation(line: 306, column: 2, scope: !1030)
!1051 = !DILocation(line: 306, column: 30, scope: !1030)
!1052 = !DILocation(line: 306, column: 37, scope: !1030)
!1053 = !DILocation(line: 309, column: 2, scope: !1030)
!1054 = !DILocation(line: 311, column: 6, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 311, column: 6)
!1056 = !DILocation(line: 311, column: 6, scope: !1030)
!1057 = !DILocation(line: 312, column: 29, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !2, line: 311, column: 12)
!1059 = !DILocation(line: 312, column: 42, scope: !1058)
!1060 = !DILocation(line: 312, column: 12, scope: !1058)
!1061 = !DILocation(line: 312, column: 10, scope: !1058)
!1062 = !DILocation(line: 314, column: 7, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 314, column: 7)
!1064 = !DILocation(line: 314, column: 7, scope: !1058)
!1065 = !DILocation(line: 315, column: 4, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1063, file: !2, line: 314, column: 29)
!1067 = !DILocation(line: 316, column: 3, scope: !1066)
!1068 = !DILocation(line: 317, column: 2, scope: !1058)
!1069 = !DILocation(line: 319, column: 30, scope: !1030)
!1070 = !DILocation(line: 319, column: 36, scope: !1030)
!1071 = !DILocation(line: 319, column: 2, scope: !1030)
!1072 = !DILocation(line: 321, column: 32, scope: !1030)
!1073 = !DILocation(line: 321, column: 10, scope: !1030)
!1074 = !DILocation(line: 320, column: 2, scope: !1030)
!1075 = !DILocation(line: 323, column: 2, scope: !1030)
!1076 = !DILocation(line: 325, column: 1, scope: !1030)
!1077 = !DISubprogram(name: "acpi_ns_get_node", scope: !1013, file: !1013, line: 285, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!338, !238, !75, !77, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!1081 = !DISubprogram(name: "acpi_ns_print_node_pathname", scope: !1013, file: !1013, line: 384, type: !1082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !238, !75}
!1084 = !DISubprogram(name: "kfree", scope: !1085, file: !1085, line: 227, type: !1086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1085 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !1088}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
