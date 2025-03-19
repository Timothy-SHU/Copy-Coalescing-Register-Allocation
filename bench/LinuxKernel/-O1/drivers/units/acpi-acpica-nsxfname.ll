; ModuleID = 'drivers/acpi/acpica/nsxfname.c'
source_filename = "drivers/acpi/acpica/nsxfname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_handle: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_handle ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_name: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_name ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_get_object_info: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_get_object_info ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_acpi_install_method: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad acpi_install_method ; .previous"

%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_method = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, %union.anon, i32, i16, i8 }
%union.anon = type { ptr }
%struct.acpi_pnp_device_id = type { i32, ptr }
%struct.acpi_pnp_device_id_list = type { i32, i32, [0 x %struct.acpi_pnp_device_id] }
%struct.acpi_device_info = type { i32, i32, i32, i8, i16, i8, [4 x i8], [5 x i8], i64, %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id_list }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_table_header = type { [4 x i8], i32, i8, i8, [6 x i8], [8 x i8], i32, [4 x i8], i32 }

@.str = private unnamed_addr constant [2 x i8] c"\\\00", align 1, !dbg !0
@acpi_gbl_root_node = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_acpi_get_handle174 = internal global ptr @acpi_get_handle, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_acpi_get_name175 = internal global ptr @acpi_get_name, section ".discard.addressable", align 8, !dbg !83
@.str.1 = private unnamed_addr constant [5 x i8] c"_ADR\00", align 1, !dbg !85
@acpi_gbl_lowest_dstate_names = external dso_local global [5 x ptr], align 16
@acpi_gbl_highest_dstate_names = external dso_local global [4 x ptr], align 16
@__UNIQUE_ID___addressable_acpi_get_object_info176 = internal global ptr @acpi_get_object_info, section ".discard.addressable", align 8, !dbg !90
@.str.2 = private unnamed_addr constant [5 x i8] c"DSDT\00", align 1, !dbg !92
@.str.3 = private unnamed_addr constant [5 x i8] c"SSDT\00", align 1, !dbg !94
@_acpi_module_name = internal constant [9 x i8] c"nsxfname\00", align 1, !dbg !103
@__UNIQUE_ID___addressable_acpi_install_method177 = internal global ptr @acpi_install_method, section ".discard.addressable", align 8, !dbg !96
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !98
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_acpi_get_handle174, ptr @__UNIQUE_ID___addressable_acpi_get_name175, ptr @__UNIQUE_ID___addressable_acpi_get_object_info176, ptr @__UNIQUE_ID___addressable_acpi_install_method177], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_handle(ptr noundef %parent, ptr noundef %pathname, ptr noundef %ret_handle) #0 align 16 !dbg !118 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %pathname.addr = alloca ptr, align 8
  %ret_handle.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %prefix_node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !123, metadata !DIExpression()), !dbg !874
  store ptr %pathname, ptr %pathname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pathname.addr, metadata !124, metadata !DIExpression()), !dbg !875
  store ptr %ret_handle, ptr %ret_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ret_handle.addr, metadata !125, metadata !DIExpression()), !dbg !876
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !877
  call void @llvm.dbg.declare(metadata ptr %status, metadata !126, metadata !DIExpression()), !dbg !878
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !879
  call void @llvm.dbg.declare(metadata ptr %node, metadata !127, metadata !DIExpression()), !dbg !880
  store ptr null, ptr %node, align 8, !dbg !880
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefix_node) #14, !dbg !881
  call void @llvm.dbg.declare(metadata ptr %prefix_node, metadata !873, metadata !DIExpression()), !dbg !882
  store ptr null, ptr %prefix_node, align 8, !dbg !882
  %0 = load ptr, ptr %ret_handle.addr, align 8, !dbg !883
  %tobool = icmp ne ptr %0, null, !dbg !883
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !885

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pathname.addr, align 8, !dbg !886
  %tobool1 = icmp ne ptr %1, null, !dbg !886
  br i1 %tobool1, label %if.end, label %if.then, !dbg !887

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !888

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !890
  %tobool2 = icmp ne ptr %2, null, !dbg !890
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !892

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %parent.addr, align 8, !dbg !893
  %call = call ptr @acpi_ns_validate_handle(ptr noundef %3) #15, !dbg !895
  store ptr %call, ptr %prefix_node, align 8, !dbg !896
  %4 = load ptr, ptr %prefix_node, align 8, !dbg !897
  %tobool4 = icmp ne ptr %4, null, !dbg !897
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !899

if.then5:                                         ; preds = %if.then3
  store i32 4097, ptr %retval, align 4, !dbg !900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !900

if.end6:                                          ; preds = %if.then3
  br label %if.end7, !dbg !902

if.end7:                                          ; preds = %if.end6, %if.end
  %5 = load ptr, ptr %pathname.addr, align 8, !dbg !903
  %arrayidx = getelementptr i8, ptr %5, i64 0, !dbg !903
  %6 = load i8, ptr %arrayidx, align 1, !dbg !903
  %conv = zext i8 %6 to i32, !dbg !903
  %cmp = icmp eq i32 %conv, 92, !dbg !903
  br i1 %cmp, label %if.then9, label %if.else, !dbg !905

if.then9:                                         ; preds = %if.end7
  %7 = load ptr, ptr %pathname.addr, align 8, !dbg !906
  %call10 = call i32 @strcmp(ptr noundef %7, ptr noundef @.str) #15, !dbg !909
  %tobool11 = icmp ne i32 %call10, 0, !dbg !909
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !910

if.then12:                                        ; preds = %if.then9
  %8 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !911
  %9 = ptrtoint ptr %8 to i64, !dbg !911
  %10 = inttoptr i64 %9 to ptr, !dbg !911
  %11 = load ptr, ptr %ret_handle.addr, align 8, !dbg !913
  store ptr %10, ptr %11, align 8, !dbg !914
  store i32 0, ptr %retval, align 4, !dbg !915
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !915

if.end13:                                         ; preds = %if.then9
  br label %if.end17, !dbg !916

if.else:                                          ; preds = %if.end7
  %12 = load ptr, ptr %prefix_node, align 8, !dbg !917
  %tobool14 = icmp ne ptr %12, null, !dbg !917
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !919

if.then15:                                        ; preds = %if.else
  store i32 4097, ptr %retval, align 4, !dbg !920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !920

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end13
  %13 = load ptr, ptr %prefix_node, align 8, !dbg !922
  %14 = load ptr, ptr %pathname.addr, align 8, !dbg !923
  %call18 = call i32 @acpi_ns_get_node(ptr noundef %13, ptr noundef %14, i32 noundef 0, ptr noundef %node) #15, !dbg !924
  store i32 %call18, ptr %status, align 4, !dbg !925
  %15 = load i32, ptr %status, align 4, !dbg !926
  %tobool19 = icmp ne i32 %15, 0, !dbg !926
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !928

if.then20:                                        ; preds = %if.end17
  %16 = load ptr, ptr %node, align 8, !dbg !929
  %17 = ptrtoint ptr %16 to i64, !dbg !929
  %18 = inttoptr i64 %17 to ptr, !dbg !929
  %19 = load ptr, ptr %ret_handle.addr, align 8, !dbg !931
  store ptr %18, ptr %19, align 8, !dbg !932
  br label %if.end21, !dbg !933

if.end21:                                         ; preds = %if.then20, %if.end17
  %20 = load i32, ptr %status, align 4, !dbg !934
  store i32 %20, ptr %retval, align 4, !dbg !935
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !935

cleanup:                                          ; preds = %if.end21, %if.then15, %if.then12, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefix_node) #14, !dbg !936
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !936
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !936
  %21 = load i32, ptr %retval, align 4, !dbg !936
  ret i32 %21, !dbg !936
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !937 dso_local ptr @acpi_ns_validate_handle(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !941 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !946 dso_local i32 @acpi_ns_get_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_name(ptr noundef %handle, i32 noundef %name_type, ptr noundef %buffer) #0 align 16 !dbg !950 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %name_type.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !959, metadata !DIExpression()), !dbg !963
  store i32 %name_type, ptr %name_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %name_type.addr, metadata !960, metadata !DIExpression()), !dbg !964
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !961, metadata !DIExpression()), !dbg !965
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !966
  call void @llvm.dbg.declare(metadata ptr %status, metadata !962, metadata !DIExpression()), !dbg !967
  %0 = load i32, ptr %name_type.addr, align 4, !dbg !968
  %cmp = icmp ugt i32 %0, 2, !dbg !970
  br i1 %cmp, label %if.then, label %if.end, !dbg !971

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !972

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buffer.addr, align 8, !dbg !974
  %call = call i32 @acpi_ut_validate_buffer(ptr noundef %1) #15, !dbg !975
  store i32 %call, ptr %status, align 4, !dbg !976
  %2 = load i32, ptr %status, align 4, !dbg !977
  %tobool = icmp ne i32 %2, 0, !dbg !977
  br i1 %tobool, label %if.then1, label %if.end2, !dbg !979

if.then1:                                         ; preds = %if.end
  %3 = load i32, ptr %status, align 4, !dbg !980
  store i32 %3, ptr %retval, align 4, !dbg !982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !982

if.end2:                                          ; preds = %if.end
  %call3 = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #15, !dbg !983
  store i32 %call3, ptr %status, align 4, !dbg !984
  %4 = load i32, ptr %status, align 4, !dbg !985
  %tobool4 = icmp ne i32 %4, 0, !dbg !985
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !987

if.then5:                                         ; preds = %if.end2
  %5 = load i32, ptr %status, align 4, !dbg !988
  store i32 %5, ptr %retval, align 4, !dbg !990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !990

if.end6:                                          ; preds = %if.end2
  %6 = load i32, ptr %name_type.addr, align 4, !dbg !991
  %cmp7 = icmp eq i32 %6, 0, !dbg !993
  br i1 %cmp7, label %if.then9, label %lor.lhs.false, !dbg !994

lor.lhs.false:                                    ; preds = %if.end6
  %7 = load i32, ptr %name_type.addr, align 4, !dbg !995
  %cmp8 = icmp eq i32 %7, 2, !dbg !996
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !997

if.then9:                                         ; preds = %lor.lhs.false, %if.end6
  %8 = load ptr, ptr %handle.addr, align 8, !dbg !998
  %9 = load ptr, ptr %buffer.addr, align 8, !dbg !1000
  %10 = load i32, ptr %name_type.addr, align 4, !dbg !1001
  %cmp10 = icmp eq i32 %10, 0, !dbg !1002
  %11 = zext i1 %cmp10 to i64, !dbg !1001
  %cond = select i1 %cmp10, i32 0, i32 1, !dbg !1001
  %conv = trunc i32 %cond to i8, !dbg !1001
  %call11 = call i32 @acpi_ns_handle_to_pathname(ptr noundef %8, ptr noundef %9, i8 noundef zeroext %conv) #15, !dbg !1003
  store i32 %call11, ptr %status, align 4, !dbg !1004
  br label %if.end13, !dbg !1005

if.else:                                          ; preds = %lor.lhs.false
  %12 = load ptr, ptr %handle.addr, align 8, !dbg !1006
  %13 = load ptr, ptr %buffer.addr, align 8, !dbg !1008
  %call12 = call i32 @acpi_ns_handle_to_name(ptr noundef %12, ptr noundef %13) #15, !dbg !1009
  store i32 %call12, ptr %status, align 4, !dbg !1010
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then9
  %call14 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #15, !dbg !1011
  %14 = load i32, ptr %status, align 4, !dbg !1012
  store i32 %14, ptr %retval, align 4, !dbg !1013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1013

cleanup:                                          ; preds = %if.end13, %if.then5, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1014
  %15 = load i32, ptr %retval, align 4, !dbg !1014
  ret i32 %15, !dbg !1014
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1015 dso_local i32 @acpi_ut_validate_buffer(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1019 dso_local i32 @acpi_ut_acquire_mutex(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1023 dso_local i32 @acpi_ns_handle_to_pathname(ptr noundef, ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1026 dso_local i32 @acpi_ns_handle_to_name(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1029 dso_local i32 @acpi_ut_release_mutex(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_get_object_info(ptr noundef %handle, ptr noundef %return_buffer) #0 align 16 !dbg !1030 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %return_buffer.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %info = alloca ptr, align 8
  %cid_list = alloca ptr, align 8
  %hid = alloca ptr, align 8
  %uid = alloca ptr, align 8
  %cls = alloca ptr, align 8
  %next_id_string = alloca ptr, align 8
  %type = alloca i32, align 4
  %name = alloca i32, align 4
  %param_count = alloca i8, align 1
  %valid = alloca i16, align 2
  %info_size = alloca i32, align 4
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !1066, metadata !DIExpression()), !dbg !1086
  store ptr %return_buffer, ptr %return_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_buffer.addr, metadata !1067, metadata !DIExpression()), !dbg !1087
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !1088
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1068, metadata !DIExpression()), !dbg !1089
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #14, !dbg !1090
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1069, metadata !DIExpression()), !dbg !1091
  call void @llvm.lifetime.start.p0(i64 8, ptr %cid_list) #14, !dbg !1092
  call void @llvm.dbg.declare(metadata ptr %cid_list, metadata !1070, metadata !DIExpression()), !dbg !1093
  store ptr null, ptr %cid_list, align 8, !dbg !1093
  call void @llvm.lifetime.start.p0(i64 8, ptr %hid) #14, !dbg !1094
  call void @llvm.dbg.declare(metadata ptr %hid, metadata !1072, metadata !DIExpression()), !dbg !1095
  store ptr null, ptr %hid, align 8, !dbg !1095
  call void @llvm.lifetime.start.p0(i64 8, ptr %uid) #14, !dbg !1096
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !1074, metadata !DIExpression()), !dbg !1097
  store ptr null, ptr %uid, align 8, !dbg !1097
  call void @llvm.lifetime.start.p0(i64 8, ptr %cls) #14, !dbg !1098
  call void @llvm.dbg.declare(metadata ptr %cls, metadata !1075, metadata !DIExpression()), !dbg !1099
  store ptr null, ptr %cls, align 8, !dbg !1099
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_id_string) #14, !dbg !1100
  call void @llvm.dbg.declare(metadata ptr %next_id_string, metadata !1076, metadata !DIExpression()), !dbg !1101
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #14, !dbg !1102
  call void @llvm.dbg.declare(metadata ptr %type, metadata !1077, metadata !DIExpression()), !dbg !1103
  call void @llvm.lifetime.start.p0(i64 4, ptr %name) #14, !dbg !1104
  call void @llvm.dbg.declare(metadata ptr %name, metadata !1078, metadata !DIExpression()), !dbg !1105
  call void @llvm.lifetime.start.p0(i64 1, ptr %param_count) #14, !dbg !1106
  call void @llvm.dbg.declare(metadata ptr %param_count, metadata !1080, metadata !DIExpression()), !dbg !1107
  store i8 0, ptr %param_count, align 1, !dbg !1107
  call void @llvm.lifetime.start.p0(i64 2, ptr %valid) #14, !dbg !1108
  call void @llvm.dbg.declare(metadata ptr %valid, metadata !1081, metadata !DIExpression()), !dbg !1109
  store i16 0, ptr %valid, align 2, !dbg !1109
  call void @llvm.lifetime.start.p0(i64 4, ptr %info_size) #14, !dbg !1110
  call void @llvm.dbg.declare(metadata ptr %info_size, metadata !1082, metadata !DIExpression()), !dbg !1111
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !1112
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1083, metadata !DIExpression()), !dbg !1113
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !1114
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1084, metadata !DIExpression()), !dbg !1115
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !1116
  %tobool = icmp ne ptr %0, null, !dbg !1116
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1118

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %return_buffer.addr, align 8, !dbg !1119
  %tobool1 = icmp ne ptr %1, null, !dbg !1119
  br i1 %tobool1, label %if.end, label %if.then, !dbg !1120

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 4097, ptr %retval, align 4, !dbg !1121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup169, !dbg !1121

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #15, !dbg !1123
  store i32 %call, ptr %status, align 4, !dbg !1124
  %2 = load i32, ptr %status, align 4, !dbg !1125
  %tobool2 = icmp ne i32 %2, 0, !dbg !1125
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1127

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %status, align 4, !dbg !1128
  store i32 %3, ptr %retval, align 4, !dbg !1130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup169, !dbg !1130

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %handle.addr, align 8, !dbg !1131
  %call5 = call ptr @acpi_ns_validate_handle(ptr noundef %4) #15, !dbg !1132
  store ptr %call5, ptr %node, align 8, !dbg !1133
  %5 = load ptr, ptr %node, align 8, !dbg !1134
  %tobool6 = icmp ne ptr %5, null, !dbg !1134
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !1136

if.then7:                                         ; preds = %if.end4
  %call8 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #15, !dbg !1137
  store i32 4097, ptr %retval, align 4, !dbg !1139
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup169, !dbg !1139

if.end9:                                          ; preds = %if.end4
  store i32 96, ptr %info_size, align 4, !dbg !1140
  %6 = load ptr, ptr %node, align 8, !dbg !1141
  %type10 = getelementptr inbounds %struct.acpi_namespace_node, ptr %6, i32 0, i32 2, !dbg !1142
  %7 = load i8, ptr %type10, align 1, !dbg !1142
  %conv = zext i8 %7 to i32, !dbg !1141
  store i32 %conv, ptr %type, align 4, !dbg !1143
  %8 = load ptr, ptr %node, align 8, !dbg !1144
  %name11 = getelementptr inbounds %struct.acpi_namespace_node, ptr %8, i32 0, i32 4, !dbg !1145
  %9 = load i32, ptr %name11, align 4, !dbg !1146
  store i32 %9, ptr %name, align 4, !dbg !1147
  %10 = load ptr, ptr %node, align 8, !dbg !1148
  %type12 = getelementptr inbounds %struct.acpi_namespace_node, ptr %10, i32 0, i32 2, !dbg !1150
  %11 = load i8, ptr %type12, align 1, !dbg !1150
  %conv13 = zext i8 %11 to i32, !dbg !1148
  %cmp = icmp eq i32 %conv13, 8, !dbg !1151
  br i1 %cmp, label %if.then15, label %if.end17, !dbg !1152

if.then15:                                        ; preds = %if.end9
  %12 = load ptr, ptr %node, align 8, !dbg !1153
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %12, i32 0, i32 0, !dbg !1155
  %13 = load ptr, ptr %object, align 8, !dbg !1155
  %param_count16 = getelementptr inbounds %struct.acpi_object_method, ptr %13, i32 0, i32 6, !dbg !1156
  %14 = load i8, ptr %param_count16, align 2, !dbg !1156
  store i8 %14, ptr %param_count, align 1, !dbg !1157
  br label %if.end17, !dbg !1158

if.end17:                                         ; preds = %if.then15, %if.end9
  %call18 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #15, !dbg !1159
  store i32 %call18, ptr %status, align 4, !dbg !1160
  %15 = load i32, ptr %status, align 4, !dbg !1161
  %tobool19 = icmp ne i32 %15, 0, !dbg !1161
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1163

if.then20:                                        ; preds = %if.end17
  %16 = load i32, ptr %status, align 4, !dbg !1164
  store i32 %16, ptr %retval, align 4, !dbg !1166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup169, !dbg !1166

if.end21:                                         ; preds = %if.end17
  %17 = load i32, ptr %type, align 4, !dbg !1167
  %cmp22 = icmp eq i32 %17, 6, !dbg !1169
  br i1 %cmp22, label %if.then27, label %lor.lhs.false24, !dbg !1170

lor.lhs.false24:                                  ; preds = %if.end21
  %18 = load i32, ptr %type, align 4, !dbg !1171
  %cmp25 = icmp eq i32 %18, 12, !dbg !1172
  br i1 %cmp25, label %if.then27, label %if.end63, !dbg !1173

if.then27:                                        ; preds = %lor.lhs.false24, %if.end21
  %19 = load ptr, ptr %node, align 8, !dbg !1174
  %call28 = call i32 @acpi_ut_execute_HID(ptr noundef %19, ptr noundef %hid) #15, !dbg !1176
  store i32 %call28, ptr %status, align 4, !dbg !1177
  %20 = load i32, ptr %status, align 4, !dbg !1178
  %tobool29 = icmp ne i32 %20, 0, !dbg !1178
  br i1 %tobool29, label %if.end33, label %if.then30, !dbg !1180

if.then30:                                        ; preds = %if.then27
  %21 = load ptr, ptr %hid, align 8, !dbg !1181
  %length = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %21, i32 0, i32 0, !dbg !1183
  %22 = load i32, ptr %length, align 8, !dbg !1183
  %23 = load i32, ptr %info_size, align 4, !dbg !1184
  %add = add i32 %23, %22, !dbg !1184
  store i32 %add, ptr %info_size, align 4, !dbg !1184
  %24 = load i16, ptr %valid, align 2, !dbg !1185
  %conv31 = zext i16 %24 to i32, !dbg !1185
  %or = or i32 %conv31, 4, !dbg !1185
  %conv32 = trunc i32 %or to i16, !dbg !1185
  store i16 %conv32, ptr %valid, align 2, !dbg !1185
  br label %if.end33, !dbg !1186

if.end33:                                         ; preds = %if.then30, %if.then27
  %25 = load ptr, ptr %node, align 8, !dbg !1187
  %call34 = call i32 @acpi_ut_execute_UID(ptr noundef %25, ptr noundef %uid) #15, !dbg !1188
  store i32 %call34, ptr %status, align 4, !dbg !1189
  %26 = load i32, ptr %status, align 4, !dbg !1190
  %tobool35 = icmp ne i32 %26, 0, !dbg !1190
  br i1 %tobool35, label %if.end42, label %if.then36, !dbg !1192

if.then36:                                        ; preds = %if.end33
  %27 = load ptr, ptr %uid, align 8, !dbg !1193
  %length37 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %27, i32 0, i32 0, !dbg !1195
  %28 = load i32, ptr %length37, align 8, !dbg !1195
  %29 = load i32, ptr %info_size, align 4, !dbg !1196
  %add38 = add i32 %29, %28, !dbg !1196
  store i32 %add38, ptr %info_size, align 4, !dbg !1196
  %30 = load i16, ptr %valid, align 2, !dbg !1197
  %conv39 = zext i16 %30 to i32, !dbg !1197
  %or40 = or i32 %conv39, 8, !dbg !1197
  %conv41 = trunc i32 %or40 to i16, !dbg !1197
  store i16 %conv41, ptr %valid, align 2, !dbg !1197
  br label %if.end42, !dbg !1198

if.end42:                                         ; preds = %if.then36, %if.end33
  %31 = load ptr, ptr %node, align 8, !dbg !1199
  %call43 = call i32 @acpi_ut_execute_CID(ptr noundef %31, ptr noundef %cid_list) #15, !dbg !1200
  store i32 %call43, ptr %status, align 4, !dbg !1201
  %32 = load i32, ptr %status, align 4, !dbg !1202
  %tobool44 = icmp ne i32 %32, 0, !dbg !1202
  br i1 %tobool44, label %if.end53, label %if.then45, !dbg !1204

if.then45:                                        ; preds = %if.end42
  %33 = load ptr, ptr %cid_list, align 8, !dbg !1205
  %list_size = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %33, i32 0, i32 1, !dbg !1207
  %34 = load i32, ptr %list_size, align 4, !dbg !1207
  %conv46 = zext i32 %34 to i64, !dbg !1205
  %sub = sub i64 %conv46, 8, !dbg !1208
  %35 = load i32, ptr %info_size, align 4, !dbg !1209
  %conv47 = zext i32 %35 to i64, !dbg !1209
  %add48 = add i64 %conv47, %sub, !dbg !1209
  %conv49 = trunc i64 %add48 to i32, !dbg !1209
  store i32 %conv49, ptr %info_size, align 4, !dbg !1209
  %36 = load i16, ptr %valid, align 2, !dbg !1210
  %conv50 = zext i16 %36 to i32, !dbg !1210
  %or51 = or i32 %conv50, 32, !dbg !1210
  %conv52 = trunc i32 %or51 to i16, !dbg !1210
  store i16 %conv52, ptr %valid, align 2, !dbg !1210
  br label %if.end53, !dbg !1211

if.end53:                                         ; preds = %if.then45, %if.end42
  %37 = load ptr, ptr %node, align 8, !dbg !1212
  %call54 = call i32 @acpi_ut_execute_CLS(ptr noundef %37, ptr noundef %cls) #15, !dbg !1213
  store i32 %call54, ptr %status, align 4, !dbg !1214
  %38 = load i32, ptr %status, align 4, !dbg !1215
  %tobool55 = icmp ne i32 %38, 0, !dbg !1215
  br i1 %tobool55, label %if.end62, label %if.then56, !dbg !1217

if.then56:                                        ; preds = %if.end53
  %39 = load ptr, ptr %cls, align 8, !dbg !1218
  %length57 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %39, i32 0, i32 0, !dbg !1220
  %40 = load i32, ptr %length57, align 8, !dbg !1220
  %41 = load i32, ptr %info_size, align 4, !dbg !1221
  %add58 = add i32 %41, %40, !dbg !1221
  store i32 %add58, ptr %info_size, align 4, !dbg !1221
  %42 = load i16, ptr %valid, align 2, !dbg !1222
  %conv59 = zext i16 %42 to i32, !dbg !1222
  %or60 = or i32 %conv59, 64, !dbg !1222
  %conv61 = trunc i32 %or60 to i16, !dbg !1222
  store i16 %conv61, ptr %valid, align 2, !dbg !1222
  br label %if.end62, !dbg !1223

if.end62:                                         ; preds = %if.then56, %if.end53
  br label %if.end63, !dbg !1224

if.end63:                                         ; preds = %if.end62, %lor.lhs.false24
  %43 = load i32, ptr %info_size, align 4, !dbg !1225
  %conv64 = zext i32 %43 to i64, !dbg !1225
  %call65 = call ptr @acpi_os_allocate_zeroed(i64 noundef %conv64) #15, !dbg !1225
  store ptr %call65, ptr %info, align 8, !dbg !1226
  %44 = load ptr, ptr %info, align 8, !dbg !1227
  %tobool66 = icmp ne ptr %44, null, !dbg !1227
  br i1 %tobool66, label %if.end68, label %if.then67, !dbg !1229

if.then67:                                        ; preds = %if.end63
  store i32 4, ptr %status, align 4, !dbg !1230
  br label %cleanup, !dbg !1232

if.end68:                                         ; preds = %if.end63
  %45 = load i32, ptr %type, align 4, !dbg !1233
  %cmp69 = icmp eq i32 %45, 6, !dbg !1235
  br i1 %cmp69, label %if.then74, label %lor.lhs.false71, !dbg !1236

lor.lhs.false71:                                  ; preds = %if.end68
  %46 = load i32, ptr %type, align 4, !dbg !1237
  %cmp72 = icmp eq i32 %46, 12, !dbg !1238
  br i1 %cmp72, label %if.then74, label %if.end97, !dbg !1239

if.then74:                                        ; preds = %lor.lhs.false71, %if.end68
  %47 = load ptr, ptr %node, align 8, !dbg !1240
  %48 = load ptr, ptr %info, align 8, !dbg !1242
  %address = getelementptr inbounds %struct.acpi_device_info, ptr %48, i32 0, i32 8, !dbg !1243
  %call75 = call i32 @acpi_ut_evaluate_numeric_object(ptr noundef @.str.1, ptr noundef %47, ptr noundef %address) #15, !dbg !1244
  store i32 %call75, ptr %status, align 4, !dbg !1245
  %49 = load i32, ptr %status, align 4, !dbg !1246
  %tobool76 = icmp ne i32 %49, 0, !dbg !1246
  br i1 %tobool76, label %if.end81, label %if.then77, !dbg !1248

if.then77:                                        ; preds = %if.then74
  %50 = load i16, ptr %valid, align 2, !dbg !1249
  %conv78 = zext i16 %50 to i32, !dbg !1249
  %or79 = or i32 %conv78, 2, !dbg !1249
  %conv80 = trunc i32 %or79 to i16, !dbg !1249
  store i16 %conv80, ptr %valid, align 2, !dbg !1249
  br label %if.end81, !dbg !1251

if.end81:                                         ; preds = %if.then77, %if.then74
  %51 = load ptr, ptr %node, align 8, !dbg !1252
  %52 = load ptr, ptr %info, align 8, !dbg !1253
  %lowest_dstates = getelementptr inbounds %struct.acpi_device_info, ptr %52, i32 0, i32 7, !dbg !1254
  %arraydecay = getelementptr inbounds [5 x i8], ptr %lowest_dstates, i64 0, i64 0, !dbg !1253
  %call82 = call i32 @acpi_ut_execute_power_methods(ptr noundef %51, ptr noundef @acpi_gbl_lowest_dstate_names, i8 noundef zeroext 5, ptr noundef %arraydecay) #15, !dbg !1255
  store i32 %call82, ptr %status, align 4, !dbg !1256
  %53 = load i32, ptr %status, align 4, !dbg !1257
  %tobool83 = icmp ne i32 %53, 0, !dbg !1257
  br i1 %tobool83, label %if.end88, label %if.then84, !dbg !1259

if.then84:                                        ; preds = %if.end81
  %54 = load i16, ptr %valid, align 2, !dbg !1260
  %conv85 = zext i16 %54 to i32, !dbg !1260
  %or86 = or i32 %conv85, 512, !dbg !1260
  %conv87 = trunc i32 %or86 to i16, !dbg !1260
  store i16 %conv87, ptr %valid, align 2, !dbg !1260
  br label %if.end88, !dbg !1262

if.end88:                                         ; preds = %if.then84, %if.end81
  %55 = load ptr, ptr %node, align 8, !dbg !1263
  %56 = load ptr, ptr %info, align 8, !dbg !1264
  %highest_dstates = getelementptr inbounds %struct.acpi_device_info, ptr %56, i32 0, i32 6, !dbg !1265
  %arraydecay89 = getelementptr inbounds [4 x i8], ptr %highest_dstates, i64 0, i64 0, !dbg !1264
  %call90 = call i32 @acpi_ut_execute_power_methods(ptr noundef %55, ptr noundef @acpi_gbl_highest_dstate_names, i8 noundef zeroext 4, ptr noundef %arraydecay89) #15, !dbg !1266
  store i32 %call90, ptr %status, align 4, !dbg !1267
  %57 = load i32, ptr %status, align 4, !dbg !1268
  %tobool91 = icmp ne i32 %57, 0, !dbg !1268
  br i1 %tobool91, label %if.end96, label %if.then92, !dbg !1270

if.then92:                                        ; preds = %if.end88
  %58 = load i16, ptr %valid, align 2, !dbg !1271
  %conv93 = zext i16 %58 to i32, !dbg !1271
  %or94 = or i32 %conv93, 256, !dbg !1271
  %conv95 = trunc i32 %or94 to i16, !dbg !1271
  store i16 %conv95, ptr %valid, align 2, !dbg !1271
  br label %if.end96, !dbg !1273

if.end96:                                         ; preds = %if.then92, %if.end88
  br label %if.end97, !dbg !1274

if.end97:                                         ; preds = %if.end96, %lor.lhs.false71
  %59 = load ptr, ptr %info, align 8, !dbg !1275
  %compatible_id_list = getelementptr inbounds %struct.acpi_device_info, ptr %59, i32 0, i32 12, !dbg !1275
  %ids = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %compatible_id_list, i32 0, i32 2, !dbg !1275
  %arraydecay98 = getelementptr inbounds [0 x %struct.acpi_pnp_device_id], ptr %ids, i64 0, i64 0, !dbg !1275
  %60 = ptrtoint ptr %arraydecay98 to i64, !dbg !1275
  %61 = inttoptr i64 %60 to ptr, !dbg !1275
  store ptr %61, ptr %next_id_string, align 8, !dbg !1276
  %62 = load ptr, ptr %cid_list, align 8, !dbg !1277
  %tobool99 = icmp ne ptr %62, null, !dbg !1277
  br i1 %tobool99, label %if.then100, label %if.end102, !dbg !1279

if.then100:                                       ; preds = %if.end97
  %63 = load ptr, ptr %cid_list, align 8, !dbg !1280
  %count = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %63, i32 0, i32 0, !dbg !1282
  %64 = load i32, ptr %count, align 8, !dbg !1282
  %conv101 = zext i32 %64 to i64, !dbg !1283
  %mul = mul i64 %conv101, 16, !dbg !1284
  %65 = load ptr, ptr %next_id_string, align 8, !dbg !1285
  %add.ptr = getelementptr i8, ptr %65, i64 %mul, !dbg !1285
  store ptr %add.ptr, ptr %next_id_string, align 8, !dbg !1285
  br label %if.end102, !dbg !1286

if.end102:                                        ; preds = %if.then100, %if.end97
  %66 = load ptr, ptr %hid, align 8, !dbg !1287
  %tobool103 = icmp ne ptr %66, null, !dbg !1287
  br i1 %tobool103, label %if.then104, label %if.end113, !dbg !1289

if.then104:                                       ; preds = %if.end102
  %67 = load ptr, ptr %info, align 8, !dbg !1290
  %hardware_id = getelementptr inbounds %struct.acpi_device_info, ptr %67, i32 0, i32 9, !dbg !1292
  %68 = load ptr, ptr %hid, align 8, !dbg !1293
  %69 = load ptr, ptr %next_id_string, align 8, !dbg !1294
  %call105 = call ptr @acpi_ns_copy_device_id(ptr noundef %hardware_id, ptr noundef %68, ptr noundef %69) #15, !dbg !1295
  store ptr %call105, ptr %next_id_string, align 8, !dbg !1296
  %70 = load ptr, ptr %hid, align 8, !dbg !1297
  %string = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %70, i32 0, i32 1, !dbg !1299
  %71 = load ptr, ptr %string, align 8, !dbg !1299
  %call106 = call zeroext i8 @acpi_ut_is_pci_root_bridge(ptr noundef %71) #15, !dbg !1300
  %tobool107 = icmp ne i8 %call106, 0, !dbg !1300
  br i1 %tobool107, label %if.then108, label %if.end112, !dbg !1301

if.then108:                                       ; preds = %if.then104
  %72 = load ptr, ptr %info, align 8, !dbg !1302
  %flags = getelementptr inbounds %struct.acpi_device_info, ptr %72, i32 0, i32 5, !dbg !1304
  %73 = load i8, ptr %flags, align 8, !dbg !1305
  %conv109 = zext i8 %73 to i32, !dbg !1305
  %or110 = or i32 %conv109, 1, !dbg !1305
  %conv111 = trunc i32 %or110 to i8, !dbg !1305
  store i8 %conv111, ptr %flags, align 8, !dbg !1305
  br label %if.end112, !dbg !1306

if.end112:                                        ; preds = %if.then108, %if.then104
  br label %if.end113, !dbg !1307

if.end113:                                        ; preds = %if.end112, %if.end102
  %74 = load ptr, ptr %uid, align 8, !dbg !1308
  %tobool114 = icmp ne ptr %74, null, !dbg !1308
  br i1 %tobool114, label %if.then115, label %if.end117, !dbg !1310

if.then115:                                       ; preds = %if.end113
  %75 = load ptr, ptr %info, align 8, !dbg !1311
  %unique_id = getelementptr inbounds %struct.acpi_device_info, ptr %75, i32 0, i32 10, !dbg !1313
  %76 = load ptr, ptr %uid, align 8, !dbg !1314
  %77 = load ptr, ptr %next_id_string, align 8, !dbg !1315
  %call116 = call ptr @acpi_ns_copy_device_id(ptr noundef %unique_id, ptr noundef %76, ptr noundef %77) #15, !dbg !1316
  store ptr %call116, ptr %next_id_string, align 8, !dbg !1317
  br label %if.end117, !dbg !1318

if.end117:                                        ; preds = %if.then115, %if.end113
  %78 = load ptr, ptr %cid_list, align 8, !dbg !1319
  %tobool118 = icmp ne ptr %78, null, !dbg !1319
  br i1 %tobool118, label %if.then119, label %if.end147, !dbg !1321

if.then119:                                       ; preds = %if.end117
  %79 = load ptr, ptr %cid_list, align 8, !dbg !1322
  %count120 = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %79, i32 0, i32 0, !dbg !1324
  %80 = load i32, ptr %count120, align 8, !dbg !1324
  %81 = load ptr, ptr %info, align 8, !dbg !1325
  %compatible_id_list121 = getelementptr inbounds %struct.acpi_device_info, ptr %81, i32 0, i32 12, !dbg !1326
  %count122 = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %compatible_id_list121, i32 0, i32 0, !dbg !1327
  store i32 %80, ptr %count122, align 8, !dbg !1328
  %82 = load ptr, ptr %cid_list, align 8, !dbg !1329
  %list_size123 = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %82, i32 0, i32 1, !dbg !1330
  %83 = load i32, ptr %list_size123, align 4, !dbg !1330
  %84 = load ptr, ptr %info, align 8, !dbg !1331
  %compatible_id_list124 = getelementptr inbounds %struct.acpi_device_info, ptr %84, i32 0, i32 12, !dbg !1332
  %list_size125 = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %compatible_id_list124, i32 0, i32 1, !dbg !1333
  store i32 %83, ptr %list_size125, align 4, !dbg !1334
  store i32 0, ptr %i, align 4, !dbg !1335
  br label %for.cond, !dbg !1337

for.cond:                                         ; preds = %for.inc, %if.then119
  %85 = load i32, ptr %i, align 4, !dbg !1338
  %86 = load ptr, ptr %cid_list, align 8, !dbg !1340
  %count126 = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %86, i32 0, i32 0, !dbg !1341
  %87 = load i32, ptr %count126, align 8, !dbg !1341
  %cmp127 = icmp ult i32 %85, %87, !dbg !1342
  br i1 %cmp127, label %for.body, label %for.end, !dbg !1343

for.body:                                         ; preds = %for.cond
  %88 = load ptr, ptr %info, align 8, !dbg !1344
  %compatible_id_list129 = getelementptr inbounds %struct.acpi_device_info, ptr %88, i32 0, i32 12, !dbg !1346
  %ids130 = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %compatible_id_list129, i32 0, i32 2, !dbg !1347
  %89 = load i32, ptr %i, align 4, !dbg !1348
  %idxprom = zext i32 %89 to i64, !dbg !1344
  %arrayidx = getelementptr [0 x %struct.acpi_pnp_device_id], ptr %ids130, i64 0, i64 %idxprom, !dbg !1344
  %90 = load ptr, ptr %cid_list, align 8, !dbg !1349
  %ids131 = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %90, i32 0, i32 2, !dbg !1350
  %91 = load i32, ptr %i, align 4, !dbg !1351
  %idxprom132 = zext i32 %91 to i64, !dbg !1349
  %arrayidx133 = getelementptr [0 x %struct.acpi_pnp_device_id], ptr %ids131, i64 0, i64 %idxprom132, !dbg !1349
  %92 = load ptr, ptr %next_id_string, align 8, !dbg !1352
  %call134 = call ptr @acpi_ns_copy_device_id(ptr noundef %arrayidx, ptr noundef %arrayidx133, ptr noundef %92) #15, !dbg !1353
  store ptr %call134, ptr %next_id_string, align 8, !dbg !1354
  %93 = load ptr, ptr %cid_list, align 8, !dbg !1355
  %ids135 = getelementptr inbounds %struct.acpi_pnp_device_id_list, ptr %93, i32 0, i32 2, !dbg !1357
  %94 = load i32, ptr %i, align 4, !dbg !1358
  %idxprom136 = zext i32 %94 to i64, !dbg !1355
  %arrayidx137 = getelementptr [0 x %struct.acpi_pnp_device_id], ptr %ids135, i64 0, i64 %idxprom136, !dbg !1355
  %string138 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %arrayidx137, i32 0, i32 1, !dbg !1359
  %95 = load ptr, ptr %string138, align 8, !dbg !1359
  %call139 = call zeroext i8 @acpi_ut_is_pci_root_bridge(ptr noundef %95) #15, !dbg !1360
  %tobool140 = icmp ne i8 %call139, 0, !dbg !1360
  br i1 %tobool140, label %if.then141, label %if.end146, !dbg !1361

if.then141:                                       ; preds = %for.body
  %96 = load ptr, ptr %info, align 8, !dbg !1362
  %flags142 = getelementptr inbounds %struct.acpi_device_info, ptr %96, i32 0, i32 5, !dbg !1364
  %97 = load i8, ptr %flags142, align 8, !dbg !1365
  %conv143 = zext i8 %97 to i32, !dbg !1365
  %or144 = or i32 %conv143, 1, !dbg !1365
  %conv145 = trunc i32 %or144 to i8, !dbg !1365
  store i8 %conv145, ptr %flags142, align 8, !dbg !1365
  br label %if.end146, !dbg !1366

if.end146:                                        ; preds = %if.then141, %for.body
  br label %for.inc, !dbg !1367

for.inc:                                          ; preds = %if.end146
  %98 = load i32, ptr %i, align 4, !dbg !1368
  %inc = add i32 %98, 1, !dbg !1368
  store i32 %inc, ptr %i, align 4, !dbg !1368
  br label %for.cond, !dbg !1369, !llvm.loop !1370

for.end:                                          ; preds = %for.cond
  br label %if.end147, !dbg !1374

if.end147:                                        ; preds = %for.end, %if.end117
  %99 = load ptr, ptr %cls, align 8, !dbg !1375
  %tobool148 = icmp ne ptr %99, null, !dbg !1375
  br i1 %tobool148, label %if.then149, label %if.end151, !dbg !1377

if.then149:                                       ; preds = %if.end147
  %100 = load ptr, ptr %info, align 8, !dbg !1378
  %class_code = getelementptr inbounds %struct.acpi_device_info, ptr %100, i32 0, i32 11, !dbg !1380
  %101 = load ptr, ptr %cls, align 8, !dbg !1381
  %102 = load ptr, ptr %next_id_string, align 8, !dbg !1382
  %call150 = call ptr @acpi_ns_copy_device_id(ptr noundef %class_code, ptr noundef %101, ptr noundef %102) #15, !dbg !1383
  br label %if.end151, !dbg !1384

if.end151:                                        ; preds = %if.then149, %if.end147
  %103 = load i32, ptr %info_size, align 4, !dbg !1385
  %104 = load ptr, ptr %info, align 8, !dbg !1386
  %info_size152 = getelementptr inbounds %struct.acpi_device_info, ptr %104, i32 0, i32 0, !dbg !1387
  store i32 %103, ptr %info_size152, align 8, !dbg !1388
  %105 = load i32, ptr %type, align 4, !dbg !1389
  %106 = load ptr, ptr %info, align 8, !dbg !1390
  %type153 = getelementptr inbounds %struct.acpi_device_info, ptr %106, i32 0, i32 2, !dbg !1391
  store i32 %105, ptr %type153, align 8, !dbg !1392
  %107 = load i32, ptr %name, align 4, !dbg !1393
  %108 = load ptr, ptr %info, align 8, !dbg !1394
  %name154 = getelementptr inbounds %struct.acpi_device_info, ptr %108, i32 0, i32 1, !dbg !1395
  store i32 %107, ptr %name154, align 4, !dbg !1396
  %109 = load i8, ptr %param_count, align 1, !dbg !1397
  %110 = load ptr, ptr %info, align 8, !dbg !1398
  %param_count155 = getelementptr inbounds %struct.acpi_device_info, ptr %110, i32 0, i32 3, !dbg !1399
  store i8 %109, ptr %param_count155, align 4, !dbg !1400
  %111 = load i16, ptr %valid, align 2, !dbg !1401
  %112 = load ptr, ptr %info, align 8, !dbg !1402
  %valid156 = getelementptr inbounds %struct.acpi_device_info, ptr %112, i32 0, i32 4, !dbg !1403
  store i16 %111, ptr %valid156, align 2, !dbg !1404
  %113 = load ptr, ptr %info, align 8, !dbg !1405
  %114 = load ptr, ptr %return_buffer.addr, align 8, !dbg !1406
  store ptr %113, ptr %114, align 8, !dbg !1407
  store i32 0, ptr %status, align 4, !dbg !1408
  br label %cleanup, !dbg !1409

cleanup:                                          ; preds = %if.end151, %if.then67
  call void @llvm.dbg.label(metadata !1085), !dbg !1410
  %115 = load ptr, ptr %hid, align 8, !dbg !1411
  %tobool157 = icmp ne ptr %115, null, !dbg !1411
  br i1 %tobool157, label %if.then158, label %if.end159, !dbg !1413

if.then158:                                       ; preds = %cleanup
  %116 = load ptr, ptr %hid, align 8, !dbg !1414
  call void @acpi_os_free(ptr noundef %116) #15, !dbg !1414
  br label %if.end159, !dbg !1416

if.end159:                                        ; preds = %if.then158, %cleanup
  %117 = load ptr, ptr %uid, align 8, !dbg !1417
  %tobool160 = icmp ne ptr %117, null, !dbg !1417
  br i1 %tobool160, label %if.then161, label %if.end162, !dbg !1419

if.then161:                                       ; preds = %if.end159
  %118 = load ptr, ptr %uid, align 8, !dbg !1420
  call void @acpi_os_free(ptr noundef %118) #15, !dbg !1420
  br label %if.end162, !dbg !1422

if.end162:                                        ; preds = %if.then161, %if.end159
  %119 = load ptr, ptr %cid_list, align 8, !dbg !1423
  %tobool163 = icmp ne ptr %119, null, !dbg !1423
  br i1 %tobool163, label %if.then164, label %if.end165, !dbg !1425

if.then164:                                       ; preds = %if.end162
  %120 = load ptr, ptr %cid_list, align 8, !dbg !1426
  call void @acpi_os_free(ptr noundef %120) #15, !dbg !1426
  br label %if.end165, !dbg !1428

if.end165:                                        ; preds = %if.then164, %if.end162
  %121 = load ptr, ptr %cls, align 8, !dbg !1429
  %tobool166 = icmp ne ptr %121, null, !dbg !1429
  br i1 %tobool166, label %if.then167, label %if.end168, !dbg !1431

if.then167:                                       ; preds = %if.end165
  %122 = load ptr, ptr %cls, align 8, !dbg !1432
  call void @acpi_os_free(ptr noundef %122) #15, !dbg !1432
  br label %if.end168, !dbg !1434

if.end168:                                        ; preds = %if.then167, %if.end165
  %123 = load i32, ptr %status, align 4, !dbg !1435
  store i32 %123, ptr %retval, align 4, !dbg !1436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup169, !dbg !1436

cleanup169:                                       ; preds = %if.end168, %if.then20, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 4, ptr %info_size) #14, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 2, ptr %valid) #14, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 1, ptr %param_count) #14, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 4, ptr %name) #14, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #14, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_id_string) #14, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 8, ptr %cls) #14, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 8, ptr %uid) #14, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 8, ptr %hid) #14, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 8, ptr %cid_list) #14, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #14, !dbg !1437
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !1437
  %124 = load i32, ptr %retval, align 4, !dbg !1437
  ret i32 %124, !dbg !1437
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1438 dso_local i32 @acpi_ut_execute_HID(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1442 dso_local i32 @acpi_ut_execute_UID(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1443 dso_local i32 @acpi_ut_execute_CID(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1447 dso_local i32 @acpi_ut_execute_CLS(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !1448 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1453, metadata !DIExpression()), !dbg !1464
  %0 = load i64, ptr %size.addr, align 8, !dbg !1465
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #14, !dbg !1466
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1454, metadata !DIExpression()), !dbg !1466
  br label %do.body, !dbg !1466

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !1467
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1456, metadata !DIExpression()), !dbg !1467
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !1467
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1459, metadata !DIExpression()), !dbg !1467
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1467
  %conv = zext i1 %cmp to i32, !dbg !1467
  store i32 1, ptr %tmp, align 4, !dbg !1467
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !1468
  %1 = load i32, ptr %tmp, align 4, !dbg !1467
  %call = call i64 @arch_local_save_flags() #15, !dbg !1468
  store i64 %call, ptr %_flags, align 8, !dbg !1468
  br label %do.cond, !dbg !1468

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1468

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #14, !dbg !1469
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1460, metadata !DIExpression()), !dbg !1469
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #14, !dbg !1469
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1463, metadata !DIExpression()), !dbg !1469
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1469
  %conv6 = zext i1 %cmp5 to i32, !dbg !1469
  store i32 1, ptr %tmp7, align 4, !dbg !1469
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #14, !dbg !1470
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #14, !dbg !1470
  %2 = load i32, ptr %tmp7, align 4, !dbg !1469
  %3 = load i64, ptr %_flags, align 8, !dbg !1470
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #15, !dbg !1470
  store i32 %call9, ptr %tmp8, align 4, !dbg !1470
  %4 = load i32, ptr %tmp8, align 4, !dbg !1470
  store i32 %4, ptr %tmp1, align 4, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #14, !dbg !1471
  %5 = load i32, ptr %tmp1, align 4, !dbg !1466
  %tobool = icmp ne i32 %5, 0, !dbg !1471
  %6 = zext i1 %tobool to i64, !dbg !1471
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1471
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #16, !dbg !1472
  ret ptr %call10, !dbg !1473
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1474 dso_local i32 @acpi_ut_evaluate_numeric_object(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1477 dso_local i32 @acpi_ut_execute_power_methods(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_ns_copy_device_id(ptr noundef %dest, ptr noundef %source, ptr noundef %string_area) #0 align 16 !dbg !1481 {
entry:
  %dest.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  %string_area.addr = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !1485, metadata !DIExpression()), !dbg !1488
  store ptr %source, ptr %source.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source.addr, metadata !1486, metadata !DIExpression()), !dbg !1489
  store ptr %string_area, ptr %string_area.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string_area.addr, metadata !1487, metadata !DIExpression()), !dbg !1490
  %0 = load ptr, ptr %string_area.addr, align 8, !dbg !1491
  %1 = load ptr, ptr %dest.addr, align 8, !dbg !1492
  %string = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %1, i32 0, i32 1, !dbg !1493
  store ptr %0, ptr %string, align 8, !dbg !1494
  %2 = load ptr, ptr %source.addr, align 8, !dbg !1495
  %length = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %2, i32 0, i32 0, !dbg !1496
  %3 = load i32, ptr %length, align 8, !dbg !1496
  %4 = load ptr, ptr %dest.addr, align 8, !dbg !1497
  %length1 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %4, i32 0, i32 0, !dbg !1498
  store i32 %3, ptr %length1, align 8, !dbg !1499
  %5 = load ptr, ptr %string_area.addr, align 8, !dbg !1500
  %6 = load ptr, ptr %source.addr, align 8, !dbg !1501
  %string2 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %6, i32 0, i32 1, !dbg !1502
  %7 = load ptr, ptr %string2, align 8, !dbg !1502
  %8 = load ptr, ptr %source.addr, align 8, !dbg !1503
  %length3 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %8, i32 0, i32 0, !dbg !1504
  %9 = load i32, ptr %length3, align 8, !dbg !1504
  %conv = zext i32 %9 to i64, !dbg !1503
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %7, i64 %conv, i1 false), !dbg !1505
  %10 = load ptr, ptr %string_area.addr, align 8, !dbg !1506
  %11 = load ptr, ptr %source.addr, align 8, !dbg !1507
  %length4 = getelementptr inbounds %struct.acpi_pnp_device_id, ptr %11, i32 0, i32 0, !dbg !1508
  %12 = load i32, ptr %length4, align 8, !dbg !1508
  %idx.ext = zext i32 %12 to i64, !dbg !1509
  %add.ptr = getelementptr i8, ptr %10, i64 %idx.ext, !dbg !1509
  ret ptr %add.ptr, !dbg !1510
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1511 dso_local zeroext i8 @acpi_ut_is_pci_root_bridge(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1514 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1518, metadata !DIExpression()), !dbg !1519
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1520
  call void @kfree(ptr noundef %0) #15, !dbg !1521
  ret void, !dbg !1522
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_install_method(ptr noundef %buffer) #0 align 16 !dbg !1523 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %table = alloca ptr, align 8
  %aml_buffer = alloca ptr, align 8
  %aml_start = alloca ptr, align 8
  %path = alloca ptr, align 8
  %node = alloca ptr, align 8
  %method_obj = alloca ptr, align 8
  %parser_state = alloca %struct.acpi_parse_state, align 8
  %aml_length = alloca i32, align 4
  %opcode = alloca i16, align 2
  %method_flags = alloca i8, align 1
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !1527, metadata !DIExpression()), !dbg !1540
  call void @llvm.lifetime.start.p0(i64 8, ptr %table) #14, !dbg !1541
  call void @llvm.dbg.declare(metadata ptr %table, metadata !1528, metadata !DIExpression()), !dbg !1542
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !1543
  %1 = ptrtoint ptr %0 to i64, !dbg !1543
  %2 = inttoptr i64 %1 to ptr, !dbg !1543
  store ptr %2, ptr %table, align 8, !dbg !1542
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml_buffer) #14, !dbg !1544
  call void @llvm.dbg.declare(metadata ptr %aml_buffer, metadata !1529, metadata !DIExpression()), !dbg !1545
  call void @llvm.lifetime.start.p0(i64 8, ptr %aml_start) #14, !dbg !1546
  call void @llvm.dbg.declare(metadata ptr %aml_start, metadata !1530, metadata !DIExpression()), !dbg !1547
  call void @llvm.lifetime.start.p0(i64 8, ptr %path) #14, !dbg !1548
  call void @llvm.dbg.declare(metadata ptr %path, metadata !1531, metadata !DIExpression()), !dbg !1549
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #14, !dbg !1550
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1532, metadata !DIExpression()), !dbg !1551
  call void @llvm.lifetime.start.p0(i64 8, ptr %method_obj) #14, !dbg !1552
  call void @llvm.dbg.declare(metadata ptr %method_obj, metadata !1533, metadata !DIExpression()), !dbg !1553
  call void @llvm.lifetime.start.p0(i64 80, ptr %parser_state) #14, !dbg !1554
  call void @llvm.dbg.declare(metadata ptr %parser_state, metadata !1534, metadata !DIExpression()), !dbg !1555
  call void @llvm.lifetime.start.p0(i64 4, ptr %aml_length) #14, !dbg !1556
  call void @llvm.dbg.declare(metadata ptr %aml_length, metadata !1535, metadata !DIExpression()), !dbg !1557
  call void @llvm.lifetime.start.p0(i64 2, ptr %opcode) #14, !dbg !1558
  call void @llvm.dbg.declare(metadata ptr %opcode, metadata !1536, metadata !DIExpression()), !dbg !1559
  call void @llvm.lifetime.start.p0(i64 1, ptr %method_flags) #14, !dbg !1560
  call void @llvm.dbg.declare(metadata ptr %method_flags, metadata !1537, metadata !DIExpression()), !dbg !1561
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !1562
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1538, metadata !DIExpression()), !dbg !1563
  %3 = load ptr, ptr %buffer.addr, align 8, !dbg !1564
  %tobool = icmp ne ptr %3, null, !dbg !1564
  br i1 %tobool, label %if.end, label %if.then, !dbg !1566

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1567
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1567

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %table, align 8, !dbg !1569
  %signature = getelementptr inbounds %struct.acpi_table_header, ptr %4, i32 0, i32 0, !dbg !1569
  %arraydecay = getelementptr inbounds [4 x i8], ptr %signature, i64 0, i64 0, !dbg !1569
  %5 = ptrtoint ptr %arraydecay to i64, !dbg !1569
  %6 = inttoptr i64 %5 to ptr, !dbg !1569
  %7 = load i32, ptr %6, align 4, !dbg !1569
  %8 = load i32, ptr @.str.2, align 4, !dbg !1569
  %cmp = icmp eq i32 %7, %8, !dbg !1569
  br i1 %cmp, label %if.end5, label %land.lhs.true, !dbg !1571

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %table, align 8, !dbg !1572
  %signature1 = getelementptr inbounds %struct.acpi_table_header, ptr %9, i32 0, i32 0, !dbg !1572
  %arraydecay2 = getelementptr inbounds [4 x i8], ptr %signature1, i64 0, i64 0, !dbg !1572
  %10 = ptrtoint ptr %arraydecay2 to i64, !dbg !1572
  %11 = inttoptr i64 %10 to ptr, !dbg !1572
  %12 = load i32, ptr %11, align 4, !dbg !1572
  %13 = load i32, ptr @.str.3, align 4, !dbg !1572
  %cmp3 = icmp eq i32 %12, %13, !dbg !1572
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !1573

if.then4:                                         ; preds = %land.lhs.true
  store i32 8194, ptr %retval, align 4, !dbg !1574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1574

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %14 = load ptr, ptr %buffer.addr, align 8, !dbg !1576
  %add.ptr = getelementptr i8, ptr %14, i64 36, !dbg !1577
  %aml = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state, i32 0, i32 1, !dbg !1578
  store ptr %add.ptr, ptr %aml, align 8, !dbg !1579
  %call = call zeroext i16 @acpi_ps_peek_opcode(ptr noundef %parser_state) #15, !dbg !1580
  store i16 %call, ptr %opcode, align 2, !dbg !1581
  %15 = load i16, ptr %opcode, align 2, !dbg !1582
  %conv = zext i16 %15 to i32, !dbg !1582
  %cmp6 = icmp ne i32 %conv, 20, !dbg !1584
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !1585

if.then8:                                         ; preds = %if.end5
  store i32 4097, ptr %retval, align 4, !dbg !1586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1586

if.end9:                                          ; preds = %if.end5
  %16 = load i16, ptr %opcode, align 2, !dbg !1588
  %conv10 = zext i16 %16 to i32, !dbg !1588
  %call11 = call i32 @acpi_ps_get_opcode_size(i32 noundef %conv10) #15, !dbg !1589
  %aml12 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state, i32 0, i32 1, !dbg !1590
  %17 = load ptr, ptr %aml12, align 8, !dbg !1591
  %idx.ext = zext i32 %call11 to i64, !dbg !1591
  %add.ptr13 = getelementptr i8, ptr %17, i64 %idx.ext, !dbg !1591
  store ptr %add.ptr13, ptr %aml12, align 8, !dbg !1591
  %call14 = call ptr @acpi_ps_get_next_package_end(ptr noundef %parser_state) #15, !dbg !1592
  %pkg_end = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state, i32 0, i32 4, !dbg !1593
  store ptr %call14, ptr %pkg_end, align 8, !dbg !1594
  %call15 = call ptr @acpi_ps_get_next_namestring(ptr noundef %parser_state) #15, !dbg !1595
  store ptr %call15, ptr %path, align 8, !dbg !1596
  %aml16 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state, i32 0, i32 1, !dbg !1597
  %18 = load ptr, ptr %aml16, align 8, !dbg !1598
  %incdec.ptr = getelementptr i8, ptr %18, i32 1, !dbg !1598
  store ptr %incdec.ptr, ptr %aml16, align 8, !dbg !1598
  %19 = load i8, ptr %18, align 1, !dbg !1599
  store i8 %19, ptr %method_flags, align 1, !dbg !1600
  %aml17 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state, i32 0, i32 1, !dbg !1601
  %20 = load ptr, ptr %aml17, align 8, !dbg !1601
  store ptr %20, ptr %aml_start, align 8, !dbg !1602
  %pkg_end18 = getelementptr inbounds %struct.acpi_parse_state, ptr %parser_state, i32 0, i32 4, !dbg !1603
  %21 = load ptr, ptr %pkg_end18, align 8, !dbg !1603
  %22 = ptrtoint ptr %21 to i64, !dbg !1603
  %23 = inttoptr i64 %22 to ptr, !dbg !1603
  %24 = load ptr, ptr %aml_start, align 8, !dbg !1603
  %25 = ptrtoint ptr %24 to i64, !dbg !1603
  %26 = inttoptr i64 %25 to ptr, !dbg !1603
  %sub.ptr.lhs.cast = ptrtoint ptr %23 to i64, !dbg !1603
  %sub.ptr.rhs.cast = ptrtoint ptr %26 to i64, !dbg !1603
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1603
  %conv19 = trunc i64 %sub.ptr.sub to i32, !dbg !1604
  store i32 %conv19, ptr %aml_length, align 4, !dbg !1605
  %27 = load i32, ptr %aml_length, align 4, !dbg !1606
  %conv20 = zext i32 %27 to i64, !dbg !1606
  %call21 = call ptr @acpi_os_allocate(i64 noundef %conv20) #15, !dbg !1606
  store ptr %call21, ptr %aml_buffer, align 8, !dbg !1607
  %28 = load ptr, ptr %aml_buffer, align 8, !dbg !1608
  %tobool22 = icmp ne ptr %28, null, !dbg !1608
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !1610

if.then23:                                        ; preds = %if.end9
  store i32 4, ptr %retval, align 4, !dbg !1611
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1611

if.end24:                                         ; preds = %if.end9
  %call25 = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 530, i32 noundef 16, i32 noundef 8) #15, !dbg !1613
  store ptr %call25, ptr %method_obj, align 8, !dbg !1614
  %29 = load ptr, ptr %method_obj, align 8, !dbg !1615
  %tobool26 = icmp ne ptr %29, null, !dbg !1615
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !1617

if.then27:                                        ; preds = %if.end24
  %30 = load ptr, ptr %aml_buffer, align 8, !dbg !1618
  call void @acpi_os_free(ptr noundef %30) #15, !dbg !1618
  store i32 4, ptr %retval, align 4, !dbg !1620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1620

if.end28:                                         ; preds = %if.end24
  %call29 = call i32 @acpi_ut_acquire_mutex(i32 noundef 1) #15, !dbg !1621
  store i32 %call29, ptr %status, align 4, !dbg !1622
  %31 = load i32, ptr %status, align 4, !dbg !1623
  %tobool30 = icmp ne i32 %31, 0, !dbg !1623
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !1625

if.then31:                                        ; preds = %if.end28
  br label %error_exit, !dbg !1626

if.end32:                                         ; preds = %if.end28
  %32 = load ptr, ptr %path, align 8, !dbg !1628
  %call33 = call i32 @acpi_ns_lookup(ptr noundef null, ptr noundef %32, i32 noundef 8, i32 noundef 1, i32 noundef 10, ptr noundef null, ptr noundef %node) #15, !dbg !1629
  store i32 %call33, ptr %status, align 4, !dbg !1630
  %call34 = call i32 @acpi_ut_release_mutex(i32 noundef 1) #15, !dbg !1631
  %33 = load i32, ptr %status, align 4, !dbg !1632
  %tobool35 = icmp ne i32 %33, 0, !dbg !1632
  br i1 %tobool35, label %if.then36, label %if.end46, !dbg !1634

if.then36:                                        ; preds = %if.end32
  %34 = load i32, ptr %status, align 4, !dbg !1635
  %cmp37 = icmp ne i32 %34, 7, !dbg !1638
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !1639

if.then39:                                        ; preds = %if.then36
  br label %error_exit, !dbg !1640

if.end40:                                         ; preds = %if.then36
  %35 = load ptr, ptr %node, align 8, !dbg !1642
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %35, i32 0, i32 2, !dbg !1644
  %36 = load i8, ptr %type, align 1, !dbg !1644
  %conv41 = zext i8 %36 to i32, !dbg !1642
  %cmp42 = icmp ne i32 %conv41, 8, !dbg !1645
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !1646

if.then44:                                        ; preds = %if.end40
  store i32 8, ptr %status, align 4, !dbg !1647
  br label %error_exit, !dbg !1649

if.end45:                                         ; preds = %if.end40
  br label %if.end46, !dbg !1650

if.end46:                                         ; preds = %if.end45, %if.end32
  %37 = load ptr, ptr %aml_buffer, align 8, !dbg !1651
  %38 = load ptr, ptr %aml_start, align 8, !dbg !1652
  %39 = load i32, ptr %aml_length, align 4, !dbg !1653
  %conv47 = zext i32 %39 to i64, !dbg !1653
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 1 %38, i64 %conv47, i1 false), !dbg !1654
  %40 = load ptr, ptr %aml_buffer, align 8, !dbg !1655
  %41 = load ptr, ptr %method_obj, align 8, !dbg !1656
  %aml_start48 = getelementptr inbounds %struct.acpi_object_method, ptr %41, i32 0, i32 10, !dbg !1657
  store ptr %40, ptr %aml_start48, align 8, !dbg !1658
  %42 = load i32, ptr %aml_length, align 4, !dbg !1659
  %43 = load ptr, ptr %method_obj, align 8, !dbg !1660
  %aml_length49 = getelementptr inbounds %struct.acpi_object_method, ptr %43, i32 0, i32 12, !dbg !1661
  store i32 %42, ptr %aml_length49, align 8, !dbg !1662
  %44 = load i8, ptr %method_flags, align 1, !dbg !1663
  %conv50 = zext i8 %44 to i32, !dbg !1663
  %and = and i32 %conv50, 7, !dbg !1664
  %conv51 = trunc i32 %and to i8, !dbg !1665
  %45 = load ptr, ptr %method_obj, align 8, !dbg !1666
  %param_count = getelementptr inbounds %struct.acpi_object_method, ptr %45, i32 0, i32 6, !dbg !1667
  store i8 %conv51, ptr %param_count, align 2, !dbg !1668
  %46 = load i8, ptr %method_flags, align 1, !dbg !1669
  %conv52 = zext i8 %46 to i32, !dbg !1669
  %and53 = and i32 %conv52, 8, !dbg !1671
  %tobool54 = icmp ne i32 %and53, 0, !dbg !1671
  br i1 %tobool54, label %if.then55, label %if.end59, !dbg !1672

if.then55:                                        ; preds = %if.end46
  %47 = load ptr, ptr %method_obj, align 8, !dbg !1673
  %info_flags = getelementptr inbounds %struct.acpi_object_method, ptr %47, i32 0, i32 5, !dbg !1675
  store i8 4, ptr %info_flags, align 1, !dbg !1676
  %48 = load i8, ptr %method_flags, align 1, !dbg !1677
  %conv56 = zext i8 %48 to i32, !dbg !1677
  %and57 = and i32 %conv56, 240, !dbg !1678
  %shr = ashr i32 %and57, 4, !dbg !1679
  %conv58 = trunc i32 %shr to i8, !dbg !1680
  %49 = load ptr, ptr %method_obj, align 8, !dbg !1681
  %sync_level = getelementptr inbounds %struct.acpi_object_method, ptr %49, i32 0, i32 7, !dbg !1682
  store i8 %conv58, ptr %sync_level, align 1, !dbg !1683
  br label %if.end59, !dbg !1684

if.end59:                                         ; preds = %if.then55, %if.end46
  %50 = load ptr, ptr %node, align 8, !dbg !1685
  %51 = load ptr, ptr %method_obj, align 8, !dbg !1686
  %call60 = call i32 @acpi_ns_attach_object(ptr noundef %50, ptr noundef %51, i32 noundef 8) #15, !dbg !1687
  store i32 %call60, ptr %status, align 4, !dbg !1688
  %52 = load ptr, ptr %node, align 8, !dbg !1689
  %flags = getelementptr inbounds %struct.acpi_namespace_node, ptr %52, i32 0, i32 3, !dbg !1690
  %53 = load i16, ptr %flags, align 2, !dbg !1691
  %conv61 = zext i16 %53 to i32, !dbg !1691
  %or = or i32 %conv61, 64, !dbg !1691
  %conv62 = trunc i32 %or to i16, !dbg !1691
  store i16 %conv62, ptr %flags, align 2, !dbg !1691
  %54 = load ptr, ptr %method_obj, align 8, !dbg !1692
  call void @acpi_ut_remove_reference(ptr noundef %54) #15, !dbg !1693
  %55 = load i32, ptr %status, align 4, !dbg !1694
  store i32 %55, ptr %retval, align 4, !dbg !1695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1695

error_exit:                                       ; preds = %if.then44, %if.then39, %if.then31
  call void @llvm.dbg.label(metadata !1539), !dbg !1696
  %56 = load ptr, ptr %aml_buffer, align 8, !dbg !1697
  call void @acpi_os_free(ptr noundef %56) #15, !dbg !1697
  %57 = load ptr, ptr %method_obj, align 8, !dbg !1698
  call void @acpi_os_free(ptr noundef %57) #15, !dbg !1698
  %58 = load i32, ptr %status, align 4, !dbg !1699
  store i32 %58, ptr %retval, align 4, !dbg !1700
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1700

cleanup:                                          ; preds = %error_exit, %if.end59, %if.then27, %if.then23, %if.then8, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !1701
  call void @llvm.lifetime.end.p0(i64 1, ptr %method_flags) #14, !dbg !1701
  call void @llvm.lifetime.end.p0(i64 2, ptr %opcode) #14, !dbg !1701
  call void @llvm.lifetime.end.p0(i64 4, ptr %aml_length) #14, !dbg !1701
  call void @llvm.lifetime.end.p0(i64 80, ptr %parser_state) #14, !dbg !1701
  call void @llvm.lifetime.end.p0(i64 8, ptr %method_obj) #14, !dbg !1701
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #14, !dbg !1701
  call void @llvm.lifetime.end.p0(i64 8, ptr %path) #14, !dbg !1701
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml_start) #14, !dbg !1701
  call void @llvm.lifetime.end.p0(i64 8, ptr %aml_buffer) #14, !dbg !1701
  call void @llvm.lifetime.end.p0(i64 8, ptr %table) #14, !dbg !1701
  %59 = load i32, ptr %retval, align 4, !dbg !1701
  ret i32 %59, !dbg !1701
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1702 dso_local zeroext i16 @acpi_ps_peek_opcode(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1707 dso_local i32 @acpi_ps_get_opcode_size(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1710 dso_local ptr @acpi_ps_get_next_package_end(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1713 dso_local ptr @acpi_ps_get_next_namestring(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate(i64 noundef %size) #4 align 16 !dbg !1716 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1718, metadata !DIExpression()), !dbg !1729
  %0 = load i64, ptr %size.addr, align 8, !dbg !1730
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #14, !dbg !1731
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1719, metadata !DIExpression()), !dbg !1731
  br label %do.body, !dbg !1731

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !1732
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1721, metadata !DIExpression()), !dbg !1732
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !1732
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1724, metadata !DIExpression()), !dbg !1732
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1732
  %conv = zext i1 %cmp to i32, !dbg !1732
  store i32 1, ptr %tmp, align 4, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !1733
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !1733
  %1 = load i32, ptr %tmp, align 4, !dbg !1732
  %call = call i64 @arch_local_save_flags() #15, !dbg !1733
  store i64 %call, ptr %_flags, align 8, !dbg !1733
  br label %do.cond, !dbg !1733

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1733

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #14, !dbg !1734
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1725, metadata !DIExpression()), !dbg !1734
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #14, !dbg !1734
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1728, metadata !DIExpression()), !dbg !1734
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1734
  %conv6 = zext i1 %cmp5 to i32, !dbg !1734
  store i32 1, ptr %tmp7, align 4, !dbg !1734
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #14, !dbg !1735
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #14, !dbg !1735
  %2 = load i32, ptr %tmp7, align 4, !dbg !1734
  %3 = load i64, ptr %_flags, align 8, !dbg !1735
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #15, !dbg !1735
  store i32 %call9, ptr %tmp8, align 4, !dbg !1735
  %4 = load i32, ptr %tmp8, align 4, !dbg !1735
  store i32 %4, ptr %tmp1, align 4, !dbg !1733
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #14, !dbg !1736
  %5 = load i32, ptr %tmp1, align 4, !dbg !1731
  %tobool = icmp ne i32 %5, 0, !dbg !1736
  %6 = zext i1 %tobool to i64, !dbg !1736
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1736
  %call10 = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %cond) #16, !dbg !1737
  ret ptr %call10, !dbg !1738
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1739 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1742 dso_local i32 @acpi_ns_lookup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1746 dso_local i32 @acpi_ns_attach_object(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1749 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1752 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1760, metadata !DIExpression()), !dbg !1762
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1761, metadata !DIExpression()), !dbg !1763
  %0 = load i64, ptr %size.addr, align 8, !dbg !1764
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1765
  %or = or i32 %1, 256, !dbg !1766
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !1767
  ret ptr %call, !dbg !1768
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #7 align 16 !dbg !1769 {
entry:
  %call = call i64 @native_save_fl() #15, !dbg !1773
  ret i64 %call, !dbg !1774
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #7 align 16 !dbg !1775 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1779, metadata !DIExpression()), !dbg !1780
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1781
  %and = and i64 %0, 512, !dbg !1782
  %tobool = icmp ne i64 %and, 0, !dbg !1783
  %lnot = xor i1 %tobool, true, !dbg !1783
  %lnot.ext = zext i1 %lnot to i32, !dbg !1783
  ret i32 %lnot.ext, !dbg !1784
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !1785 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1787, metadata !DIExpression()), !dbg !1792
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1788, metadata !DIExpression()), !dbg !1793
  %0 = load i64, ptr %size.addr, align 8, !dbg !1794
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1795
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1796

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1797
  %tobool = icmp ne i64 %2, 0, !dbg !1797
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1798

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !1799
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1789, metadata !DIExpression()), !dbg !1800
  %3 = load i64, ptr %size.addr, align 8, !dbg !1801
  %cmp = icmp ugt i64 %3, 8192, !dbg !1803
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1804

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1805
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1806
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !1807
  store ptr %call, ptr %retval, align 8, !dbg !1808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1808

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1809
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !1809
  store i32 %call2, ptr %index, align 4, !dbg !1810
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1811
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1812
  %9 = ptrtoint ptr %8 to i64, !dbg !1812
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !1813
  %idxprom = zext i32 %call3 to i64, !dbg !1814
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1814
  %10 = load i32, ptr %index, align 4, !dbg !1815
  %idxprom4 = zext i32 %10 to i64, !dbg !1814
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1814
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1814
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1816
  %13 = load i64, ptr %size.addr, align 8, !dbg !1817
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !1818
  store ptr %call6, ptr %retval, align 8, !dbg !1819
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1819

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !1820
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1821
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1822
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !1823
  store ptr %call8, ptr %retval, align 8, !dbg !1824
  br label %return, !dbg !1824

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1825
  ret ptr %16, !dbg !1825
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1826 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !1827 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1833, metadata !DIExpression()), !dbg !1835
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1834, metadata !DIExpression()), !dbg !1836
  %0 = load i64, ptr %size.addr, align 8, !dbg !1837
  %tobool = icmp ne i64 %0, 0, !dbg !1837
  br i1 %tobool, label %if.end, label %if.then, !dbg !1839

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1840
  br label %return, !dbg !1840

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1841
  %cmp = icmp ule i64 %1, 8, !dbg !1843
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1844

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1845
  br label %return, !dbg !1845

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1846
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1848
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1849

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1850
  %cmp4 = icmp ule i64 %3, 96, !dbg !1851
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1852

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1853
  br label %return, !dbg !1853

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1854
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1856
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1857

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1858
  %cmp9 = icmp ule i64 %5, 192, !dbg !1859
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1860

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1861
  br label %return, !dbg !1861

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1862
  %cmp12 = icmp ule i64 %6, 8, !dbg !1864
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1865

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1866
  br label %return, !dbg !1866

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1867
  %cmp15 = icmp ule i64 %7, 16, !dbg !1869
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1870

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1871
  br label %return, !dbg !1871

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1872
  %cmp18 = icmp ule i64 %8, 32, !dbg !1874
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1875

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1876
  br label %return, !dbg !1876

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1877
  %cmp21 = icmp ule i64 %9, 64, !dbg !1879
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1880

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1881
  br label %return, !dbg !1881

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1882
  %cmp24 = icmp ule i64 %10, 128, !dbg !1884
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1885

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1886
  br label %return, !dbg !1886

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1887
  %cmp27 = icmp ule i64 %11, 256, !dbg !1889
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1890

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1891
  br label %return, !dbg !1891

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1892
  %cmp30 = icmp ule i64 %12, 512, !dbg !1894
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1895

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1896
  br label %return, !dbg !1896

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1897
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1899
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1900

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1901
  br label %return, !dbg !1901

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1902
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1904
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1905

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1906
  br label %return, !dbg !1906

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1907
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1909
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1910

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1911
  br label %return, !dbg !1911

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1912
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1914
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1915

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1916
  br label %return, !dbg !1916

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1917
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1919
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1920

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1921
  br label %return, !dbg !1921

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1922
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1924
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1925

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1926
  br label %return, !dbg !1926

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1927
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1929
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1930

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1931
  br label %return, !dbg !1931

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1932
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1934
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1935

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1936
  br label %return, !dbg !1936

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1937
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1939
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1940

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1941
  br label %return, !dbg !1941

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1942
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1944
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1945

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1946
  br label %return, !dbg !1946

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1947
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1949
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1950

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1951
  br label %return, !dbg !1951

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1952
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1954
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1955

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1956
  br label %return, !dbg !1956

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1957, !range !1959, !noundef !1960
  %tobool69 = trunc i8 %25 to i1, !dbg !1957
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1961

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1962

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #18, !dbg !1963, !srcloc !1966
  unreachable, !dbg !1963

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1967

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1968

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1969

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1971

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1969

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #14, !dbg !1973, !srcloc !1975
  br label %do.end75, !dbg !1973

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1969

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1976
  br label %return, !dbg !1976

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1977
  ret i32 %26, !dbg !1977
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1978 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !1984 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1988, metadata !DIExpression()), !dbg !1990
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1989, metadata !DIExpression()), !dbg !1991
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1992
  %and = and i32 %0, 17, !dbg !1992
  %cmp = icmp eq i32 %and, 0, !dbg !1992
  %lnot = xor i1 %cmp, true, !dbg !1992
  %lnot1 = xor i1 %lnot, true, !dbg !1992
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1992
  %conv = sext i32 %lnot.ext to i64, !dbg !1992
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1992
  %tobool = icmp ne i64 %expval, 0, !dbg !1992
  br i1 %tobool, label %if.then, label %if.end, !dbg !1994

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1995
  br label %return, !dbg !1995

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1996
  %and2 = and i32 %1, 1, !dbg !1998
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1998
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1999

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2000
  br label %return, !dbg !2000

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2001
  br label %return, !dbg !2001

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2003
  ret i32 %2, !dbg !2003
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2004 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2005 dso_local void @__compiletime_assert_173() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #7 align 16 !dbg !2008 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !2011
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2010, metadata !DIExpression()), !dbg !2012
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #14, !dbg !2013, !srcloc !2014
  %0 = load i64, ptr %flags, align 8, !dbg !2015
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !2016
  ret i64 %0, !dbg !2017
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2018 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/nsxfname.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "019b62a7682654f965d64758ab578a2d")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 2)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_handle174", scope: !9, file: !2, line: 106, type: !45, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nsxfname.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nsxfname\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nsxfname.ll drivers/acpi/acpica/nsxfname.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !33, globals: !82, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !18, !23}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 116, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS1", value: 1)
!16 = !DIEnumerator(name: "ACPI_IMODE_LOAD_PASS2", value: 2)
!17 = !DIEnumerator(name: "ACPI_IMODE_EXECUTE", value: 3)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 10, baseType: !13, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "false", value: 0)
!22 = !DIEnumerator(name: "true", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !24, line: 364, baseType: !13, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!25 = !{!26, !27, !28, !29, !30, !31, !32}
!26 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!27 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!28 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!29 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!30 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!31 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!32 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!33 = !{!34, !40, !43, !46, !45, !49, !53, !54, !76, !77, !36, !80, !81, !48}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !35, line: 421, baseType: !36)
!35 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !37, line: 21, baseType: !38)
!37 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !39, line: 27, baseType: !13)
!39 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !37, line: 17, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !39, line: 21, baseType: !42)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !35, line: 424, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !47, line: 42, baseType: !48)
!47 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !35, line: 127, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !37, line: 23, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !39, line: 31, baseType: !52)
!52 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_table_header", file: !56, line: 68, size: 288, elements: !57)
!56 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!57 = !{!58, !62, !63, !64, !65, !69, !73, !74, !75}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !55, file: !56, line: 69, baseType: !59, size: 32)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 4)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !55, file: !56, line: 70, baseType: !36, size: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !55, file: !56, line: 71, baseType: !40, size: 8, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !55, file: !56, line: 72, baseType: !40, size: 8, offset: 72)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "oem_id", scope: !55, file: !56, line: 73, baseType: !66, size: 48, offset: 80)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 6)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "oem_table_id", scope: !55, file: !56, line: 74, baseType: !70, size: 64, offset: 128)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 8)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "oem_revision", scope: !55, file: !56, line: 75, baseType: !36, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_id", scope: !55, file: !56, line: 76, baseType: !59, size: 32, offset: 224)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "asl_compiler_revision", scope: !55, file: !56, line: 77, baseType: !36, size: 32, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !37, line: 19, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !39, line: 24, baseType: !79)
!79 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !47, line: 154, baseType: !13)
!82 = !{!0, !7, !83, !85, !90, !92, !94, !96, !98, !103}
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_name175", scope: !9, file: !2, line: 167, type: !45, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 348, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 5)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_get_object_info176", scope: !9, file: !2, line: 459, type: !45, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !87, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 499, type: !87, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_acpi_install_method177", scope: !9, file: !2, line: 607, type: !45, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !24, line: 480, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 21)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !9, file: !2, line: 20, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 72, elements: !107)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!107 = !{!108}
!108 = !DISubrange(count: 9)
!109 = !{i32 7, !"Dwarf Version", i32 5}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 8, !"cf-protection-branch", i32 1}
!113 = !{i32 4, !"function_return_thunk_extern", i32 1}
!114 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!115 = !{i32 1, !"Code Model", i32 2}
!116 = !{i32 1, !"override-stack-alignment", i32 8}
!117 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!118 = distinct !DISubprogram(name: "acpi_get_handle", scope: !2, file: !2, line: 46, type: !119, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !122)
!119 = !DISubroutineType(types: !120)
!120 = !{!34, !44, !121, !43}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!122 = !{!123, !124, !125, !126, !127, !873}
!123 = !DILocalVariable(name: "parent", arg: 1, scope: !118, file: !2, line: 46, type: !44)
!124 = !DILocalVariable(name: "pathname", arg: 2, scope: !118, file: !2, line: 47, type: !121)
!125 = !DILocalVariable(name: "ret_handle", arg: 3, scope: !118, file: !2, line: 47, type: !43)
!126 = !DILocalVariable(name: "status", scope: !118, file: !2, line: 49, type: !34)
!127 = !DILocalVariable(name: "node", scope: !118, file: !2, line: 50, type: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !12, line: 133, size: 384, elements: !130)
!130 = !{!131, !861, !862, !863, !864, !869, !870, !871, !872}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !129, file: !12, line: 134, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !134, line: 369, size: 576, elements: !135)
!134 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!135 = !{!136, !144, !157, !167, !180, !194, !203, !512, !529, !545, !556, !634, !646, !660, !670, !688, !710, !729, !748, !767, !780, !807, !824, !837, !851, !860}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !133, file: !134, line: 370, baseType: !137, size: 128)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !134, line: 73, size: 128, elements: !138)
!138 = !{!139, !140, !141, !142, !143}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !137, file: !134, line: 74, baseType: !132, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !137, file: !134, line: 74, baseType: !40, size: 8, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !137, file: !134, line: 74, baseType: !40, size: 8, offset: 72)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !137, file: !134, line: 74, baseType: !77, size: 16, offset: 80)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !134, line: 74, baseType: !40, size: 8, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !133, file: !134, line: 371, baseType: !145, size: 192)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !134, line: 76, size: 192, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !156}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !145, file: !134, line: 77, baseType: !132, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !145, file: !134, line: 77, baseType: !40, size: 8, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !145, file: !134, line: 77, baseType: !40, size: 8, offset: 72)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !145, file: !134, line: 77, baseType: !77, size: 16, offset: 80)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !145, file: !134, line: 77, baseType: !40, size: 8, offset: 96)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !145, file: !134, line: 77, baseType: !153, size: 24, offset: 104)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 24, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 3)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !145, file: !134, line: 78, baseType: !50, size: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !133, file: !134, line: 372, baseType: !158, size: 256)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !134, line: 93, size: 256, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !158, file: !134, line: 94, baseType: !132, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !158, file: !134, line: 94, baseType: !40, size: 8, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !158, file: !134, line: 94, baseType: !40, size: 8, offset: 72)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !158, file: !134, line: 94, baseType: !77, size: 16, offset: 80)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !158, file: !134, line: 94, baseType: !40, size: 8, offset: 96)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !158, file: !134, line: 94, baseType: !53, size: 64, offset: 128)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !158, file: !134, line: 94, baseType: !36, size: 32, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !133, file: !134, line: 373, baseType: !168, size: 384)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !134, line: 97, size: 384, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !168, file: !134, line: 98, baseType: !132, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !168, file: !134, line: 98, baseType: !40, size: 8, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !168, file: !134, line: 98, baseType: !40, size: 8, offset: 72)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !168, file: !134, line: 98, baseType: !77, size: 16, offset: 80)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !134, line: 98, baseType: !40, size: 8, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !168, file: !134, line: 98, baseType: !80, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !168, file: !134, line: 98, baseType: !36, size: 32, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !168, file: !134, line: 99, baseType: !36, size: 32, offset: 224)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !168, file: !134, line: 100, baseType: !80, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !168, file: !134, line: 101, baseType: !128, size: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !133, file: !134, line: 374, baseType: !181, size: 384)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !134, line: 104, size: 384, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !191, !192, !193}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !181, file: !134, line: 105, baseType: !132, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !181, file: !134, line: 105, baseType: !40, size: 8, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !181, file: !134, line: 105, baseType: !40, size: 8, offset: 72)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !181, file: !134, line: 105, baseType: !77, size: 16, offset: 80)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !134, line: 105, baseType: !40, size: 8, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !181, file: !134, line: 105, baseType: !128, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !181, file: !134, line: 106, baseType: !190, size: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !181, file: !134, line: 107, baseType: !80, size: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !181, file: !134, line: 108, baseType: !36, size: 32, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !181, file: !134, line: 109, baseType: !36, size: 32, offset: 352)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !133, file: !134, line: 375, baseType: !195, size: 192)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !134, line: 118, size: 192, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !195, file: !134, line: 119, baseType: !132, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !195, file: !134, line: 119, baseType: !40, size: 8, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !195, file: !134, line: 119, baseType: !40, size: 8, offset: 72)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !195, file: !134, line: 119, baseType: !77, size: 16, offset: 80)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !195, file: !134, line: 119, baseType: !40, size: 8, offset: 96)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !195, file: !134, line: 119, baseType: !45, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !133, file: !134, line: 376, baseType: !204, size: 448)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !134, line: 144, size: 448, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !509, !510, !511}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !204, file: !134, line: 145, baseType: !132, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !204, file: !134, line: 145, baseType: !40, size: 8, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !204, file: !134, line: 145, baseType: !40, size: 8, offset: 72)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !204, file: !134, line: 145, baseType: !77, size: 16, offset: 80)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !204, file: !134, line: 145, baseType: !40, size: 8, offset: 96)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !204, file: !134, line: 145, baseType: !40, size: 8, offset: 104)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !204, file: !134, line: 146, baseType: !40, size: 8, offset: 112)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !204, file: !134, line: 147, baseType: !40, size: 8, offset: 120)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !204, file: !134, line: 148, baseType: !132, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !204, file: !134, line: 149, baseType: !132, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !204, file: !134, line: 150, baseType: !80, size: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !204, file: !134, line: 154, baseType: !218, size: 64, offset: 320)
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !204, file: !134, line: 151, size: 64, elements: !219)
!219 = !{!220, !508}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !218, file: !134, line: 152, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !12, line: 248, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!34, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !227, line: 37, size: 9024, elements: !228)
!227 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!228 = !{!229, !230, !231, !232, !233, !234, !235, !236, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !456, !457, !458, !459, !460, !464, !466, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !491, !492, !493, !494, !495, !496, !497, !498, !500, !506}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !226, file: !227, line: 38, baseType: !225, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !226, file: !227, line: 39, baseType: !40, size: 8, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !226, file: !227, line: 40, baseType: !40, size: 8, offset: 72)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !226, file: !227, line: 41, baseType: !77, size: 16, offset: 80)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !226, file: !227, line: 42, baseType: !40, size: 8, offset: 96)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !226, file: !227, line: 43, baseType: !40, size: 8, offset: 104)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !226, file: !227, line: 44, baseType: !40, size: 8, offset: 112)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !226, file: !227, line: 45, baseType: !237, size: 16, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !35, line: 445, baseType: !77)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !226, file: !227, line: 46, baseType: !40, size: 8, offset: 144)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !226, file: !227, line: 47, baseType: !40, size: 8, offset: 152)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !226, file: !227, line: 48, baseType: !40, size: 8, offset: 160)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !226, file: !227, line: 49, baseType: !40, size: 8, offset: 168)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !226, file: !227, line: 50, baseType: !40, size: 8, offset: 176)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !226, file: !227, line: 51, baseType: !40, size: 8, offset: 184)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !226, file: !227, line: 52, baseType: !40, size: 8, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !226, file: !227, line: 53, baseType: !40, size: 8, offset: 200)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !226, file: !227, line: 54, baseType: !80, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !226, file: !227, line: 55, baseType: !36, size: 32, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !226, file: !227, line: 56, baseType: !36, size: 32, offset: 352)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !226, file: !227, line: 57, baseType: !36, size: 32, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !226, file: !227, line: 58, baseType: !36, size: 32, offset: 416)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !226, file: !227, line: 60, baseType: !252, size: 640, offset: 448)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !12, line: 909, size: 640, elements: !253)
!253 = !{!254, !255, !256, !257, !258, !259, !340, !341, !454, !455}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !252, file: !12, line: 910, baseType: !80, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !252, file: !12, line: 911, baseType: !80, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !252, file: !12, line: 912, baseType: !80, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !252, file: !12, line: 913, baseType: !80, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !252, file: !12, line: 914, baseType: !80, size: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !252, file: !12, line: 915, baseType: !260, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !12, line: 891, size: 1600, elements: !262)
!262 = !{!263, !283, !299}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !261, file: !12, line: 892, baseType: !264, size: 448)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !12, line: 844, size: 448, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !282}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !264, file: !12, line: 845, baseType: !260, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !264, file: !12, line: 845, baseType: !40, size: 8, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !264, file: !12, line: 845, baseType: !40, size: 8, offset: 72)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !264, file: !12, line: 845, baseType: !77, size: 16, offset: 80)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !264, file: !12, line: 845, baseType: !80, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !12, line: 845, baseType: !260, size: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !264, file: !12, line: 845, baseType: !128, size: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !264, file: !12, line: 845, baseType: !274, size: 64, offset: 320)
!274 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !12, line: 732, size: 64, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !274, file: !12, line: 733, baseType: !50, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !274, file: !12, line: 734, baseType: !36, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !274, file: !12, line: 735, baseType: !53, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !274, file: !12, line: 736, baseType: !80, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !274, file: !12, line: 737, baseType: !53, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !274, file: !12, line: 738, baseType: !260, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !264, file: !12, line: 845, baseType: !40, size: 8, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !261, file: !12, line: 893, baseType: !284, size: 640)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !12, line: 851, size: 640, elements: !285)
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !284, file: !12, line: 852, baseType: !260, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !284, file: !12, line: 852, baseType: !40, size: 8, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !284, file: !12, line: 852, baseType: !40, size: 8, offset: 72)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !284, file: !12, line: 852, baseType: !77, size: 16, offset: 80)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !284, file: !12, line: 852, baseType: !80, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !284, file: !12, line: 852, baseType: !260, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !284, file: !12, line: 852, baseType: !128, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !284, file: !12, line: 852, baseType: !274, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !284, file: !12, line: 852, baseType: !40, size: 8, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !284, file: !12, line: 852, baseType: !53, size: 64, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !284, file: !12, line: 853, baseType: !80, size: 64, offset: 512)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !284, file: !12, line: 854, baseType: !36, size: 32, offset: 576)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !284, file: !12, line: 855, baseType: !36, size: 32, offset: 608)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !261, file: !12, line: 894, baseType: !300, size: 1600)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !12, line: 862, size: 1600, elements: !301)
!301 = !{!302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !300, file: !12, line: 863, baseType: !260, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !300, file: !12, line: 863, baseType: !40, size: 8, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !12, line: 863, baseType: !40, size: 8, offset: 72)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !300, file: !12, line: 863, baseType: !77, size: 16, offset: 80)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !300, file: !12, line: 863, baseType: !80, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !12, line: 863, baseType: !260, size: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !300, file: !12, line: 863, baseType: !128, size: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !12, line: 863, baseType: !274, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !300, file: !12, line: 863, baseType: !40, size: 8, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !300, file: !12, line: 863, baseType: !260, size: 64, offset: 448)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !300, file: !12, line: 864, baseType: !260, size: 64, offset: 512)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !300, file: !12, line: 865, baseType: !53, size: 64, offset: 576)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !300, file: !12, line: 866, baseType: !40, size: 8, offset: 640)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !300, file: !12, line: 867, baseType: !53, size: 64, offset: 704)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !300, file: !12, line: 868, baseType: !53, size: 64, offset: 768)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !300, file: !12, line: 869, baseType: !53, size: 64, offset: 832)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !300, file: !12, line: 870, baseType: !59, size: 32, offset: 896)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !300, file: !12, line: 871, baseType: !36, size: 32, offset: 928)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !300, file: !12, line: 872, baseType: !36, size: 32, offset: 960)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !300, file: !12, line: 873, baseType: !36, size: 32, offset: 992)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !300, file: !12, line: 874, baseType: !36, size: 32, offset: 1024)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !300, file: !12, line: 875, baseType: !36, size: 32, offset: 1056)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !300, file: !12, line: 876, baseType: !36, size: 32, offset: 1088)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !300, file: !12, line: 877, baseType: !36, size: 32, offset: 1120)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !300, file: !12, line: 878, baseType: !36, size: 32, offset: 1152)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !300, file: !12, line: 879, baseType: !36, size: 32, offset: 1184)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !300, file: !12, line: 880, baseType: !36, size: 32, offset: 1216)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !300, file: !12, line: 881, baseType: !36, size: 32, offset: 1248)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !300, file: !12, line: 882, baseType: !36, size: 32, offset: 1280)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !300, file: !12, line: 883, baseType: !36, size: 32, offset: 1312)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !300, file: !12, line: 884, baseType: !77, size: 16, offset: 1344)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !300, file: !12, line: 885, baseType: !40, size: 8, offset: 1360)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !300, file: !12, line: 886, baseType: !40, size: 8, offset: 1368)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !300, file: !12, line: 887, baseType: !40, size: 8, offset: 1376)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !300, file: !12, line: 888, baseType: !337, size: 160, offset: 1384)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 20)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !252, file: !12, line: 916, baseType: !128, size: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !252, file: !12, line: 917, baseType: !342, size: 64, offset: 448)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !12, line: 679, size: 640, elements: !344)
!344 = !{!345, !353, !366, !375, !384, !397, !411, !423, !433}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !343, file: !12, line: 680, baseType: !346, size: 128)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !12, line: 575, size: 128, elements: !347)
!347 = !{!348, !349, !350, !351, !352}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !12, line: 576, baseType: !45, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !12, line: 576, baseType: !40, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !12, line: 576, baseType: !40, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !12, line: 576, baseType: !77, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !12, line: 576, baseType: !77, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !343, file: !12, line: 681, baseType: !354, size: 384)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !12, line: 604, size: 384, elements: !355)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364, !365}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !12, line: 605, baseType: !45, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !354, file: !12, line: 605, baseType: !40, size: 8, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !12, line: 605, baseType: !40, size: 8, offset: 72)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !354, file: !12, line: 605, baseType: !77, size: 16, offset: 80)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !354, file: !12, line: 605, baseType: !77, size: 16, offset: 96)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !354, file: !12, line: 606, baseType: !77, size: 16, offset: 112)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !354, file: !12, line: 607, baseType: !260, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !354, file: !12, line: 608, baseType: !80, size: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !354, file: !12, line: 609, baseType: !80, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !354, file: !12, line: 610, baseType: !50, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !343, file: !12, line: 682, baseType: !367, size: 192)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !12, line: 582, size: 192, elements: !368)
!368 = !{!369, !370, !371, !372, !373, !374}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !367, file: !12, line: 583, baseType: !45, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !367, file: !12, line: 583, baseType: !40, size: 8, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !12, line: 583, baseType: !40, size: 8, offset: 72)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !367, file: !12, line: 583, baseType: !77, size: 16, offset: 80)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !367, file: !12, line: 583, baseType: !77, size: 16, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !367, file: !12, line: 584, baseType: !132, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !343, file: !12, line: 683, baseType: !376, size: 192)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !12, line: 616, size: 192, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !383}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !376, file: !12, line: 617, baseType: !45, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !376, file: !12, line: 617, baseType: !40, size: 8, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !376, file: !12, line: 617, baseType: !40, size: 8, offset: 72)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !376, file: !12, line: 617, baseType: !77, size: 16, offset: 80)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !376, file: !12, line: 617, baseType: !77, size: 16, offset: 96)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !376, file: !12, line: 618, baseType: !128, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !343, file: !12, line: 684, baseType: !385, size: 448)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !12, line: 621, size: 448, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392, !393, !394, !395, !396}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !385, file: !12, line: 622, baseType: !45, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !385, file: !12, line: 622, baseType: !40, size: 8, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !385, file: !12, line: 622, baseType: !40, size: 8, offset: 72)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !385, file: !12, line: 622, baseType: !77, size: 16, offset: 80)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !385, file: !12, line: 622, baseType: !77, size: 16, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !385, file: !12, line: 623, baseType: !36, size: 32, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !385, file: !12, line: 624, baseType: !260, size: 64, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !385, file: !12, line: 625, baseType: !80, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !385, file: !12, line: 626, baseType: !80, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !385, file: !12, line: 627, baseType: !36, size: 32, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !343, file: !12, line: 685, baseType: !398, size: 512)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !12, line: 590, size: 512, elements: !399)
!399 = !{!400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !398, file: !12, line: 591, baseType: !45, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !398, file: !12, line: 591, baseType: !40, size: 8, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !398, file: !12, line: 591, baseType: !40, size: 8, offset: 72)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !398, file: !12, line: 591, baseType: !77, size: 16, offset: 80)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !398, file: !12, line: 591, baseType: !77, size: 16, offset: 96)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !398, file: !12, line: 592, baseType: !36, size: 32, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !398, file: !12, line: 593, baseType: !132, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !398, file: !12, line: 594, baseType: !132, size: 64, offset: 256)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !398, file: !12, line: 595, baseType: !225, size: 64, offset: 320)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !398, file: !12, line: 596, baseType: !45, size: 64, offset: 384)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !398, file: !12, line: 597, baseType: !36, size: 32, offset: 448)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !343, file: !12, line: 686, baseType: !412, size: 320)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !12, line: 634, size: 320, elements: !413)
!413 = !{!414, !415, !416, !417, !418, !419, !420, !421, !422}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !12, line: 635, baseType: !45, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !412, file: !12, line: 635, baseType: !40, size: 8, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !412, file: !12, line: 635, baseType: !40, size: 8, offset: 72)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !412, file: !12, line: 635, baseType: !77, size: 16, offset: 80)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !412, file: !12, line: 635, baseType: !77, size: 16, offset: 96)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !412, file: !12, line: 636, baseType: !40, size: 8, offset: 112)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !412, file: !12, line: 637, baseType: !225, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !412, file: !12, line: 638, baseType: !132, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !412, file: !12, line: 639, baseType: !50, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !343, file: !12, line: 687, baseType: !424, size: 640)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !12, line: 646, size: 640, elements: !425)
!425 = !{!426, !427, !428, !429, !430, !431}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !12, line: 647, baseType: !45, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !424, file: !12, line: 647, baseType: !40, size: 8, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !424, file: !12, line: 647, baseType: !40, size: 8, offset: 72)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !424, file: !12, line: 647, baseType: !77, size: 16, offset: 80)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !424, file: !12, line: 647, baseType: !77, size: 16, offset: 96)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !424, file: !12, line: 648, baseType: !432, size: 512, offset: 128)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 512, elements: !71)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !343, file: !12, line: 688, baseType: !434, size: 320)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !12, line: 669, size: 320, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441, !442, !443, !444}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !434, file: !12, line: 670, baseType: !45, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !434, file: !12, line: 670, baseType: !40, size: 8, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !434, file: !12, line: 670, baseType: !40, size: 8, offset: 72)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !434, file: !12, line: 670, baseType: !77, size: 16, offset: 80)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !434, file: !12, line: 670, baseType: !77, size: 16, offset: 96)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !434, file: !12, line: 671, baseType: !40, size: 8, offset: 112)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !434, file: !12, line: 672, baseType: !128, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !434, file: !12, line: 673, baseType: !132, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !434, file: !12, line: 674, baseType: !445, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !12, line: 660, size: 128, elements: !447)
!447 = !{!448, !453}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !446, file: !12, line: 661, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !35, line: 1061, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !44, !36, !45}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !446, file: !12, line: 662, baseType: !45, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !252, file: !12, line: 918, baseType: !260, size: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !252, file: !12, line: 919, baseType: !36, size: 32, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !226, file: !227, line: 61, baseType: !36, size: 32, offset: 1088)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !226, file: !227, line: 62, baseType: !36, size: 32, offset: 1120)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !226, file: !227, line: 63, baseType: !77, size: 16, offset: 1152)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !226, file: !227, line: 64, baseType: !40, size: 8, offset: 1168)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !226, file: !227, line: 66, baseType: !461, size: 2688, offset: 1216)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 2688, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 7)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !226, file: !227, line: 67, baseType: !465, size: 3072, offset: 3904)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 3072, elements: !71)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !226, file: !227, line: 68, baseType: !467, size: 576, offset: 6976)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 576, elements: !107)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !226, file: !227, line: 69, baseType: !190, size: 64, offset: 7552)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !226, file: !227, line: 71, baseType: !80, size: 64, offset: 7616)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !226, file: !227, line: 72, baseType: !190, size: 64, offset: 7680)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !226, file: !227, line: 73, baseType: !342, size: 64, offset: 7744)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !226, file: !227, line: 74, baseType: !128, size: 64, offset: 7808)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !226, file: !227, line: 75, baseType: !132, size: 64, offset: 7872)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !226, file: !227, line: 76, baseType: !128, size: 64, offset: 7936)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !226, file: !227, line: 77, baseType: !260, size: 64, offset: 8000)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !226, file: !227, line: 78, baseType: !132, size: 64, offset: 8064)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !226, file: !227, line: 79, baseType: !128, size: 64, offset: 8128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !226, file: !227, line: 80, baseType: !53, size: 64, offset: 8192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !226, file: !227, line: 81, baseType: !260, size: 64, offset: 8256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !226, file: !227, line: 82, baseType: !481, size: 64, offset: 8320)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !12, line: 718, size: 128, elements: !484)
!484 = !{!485, !486, !487, !488, !489, !490}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !483, file: !12, line: 722, baseType: !36, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !483, file: !12, line: 723, baseType: !36, size: 32, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !483, file: !12, line: 724, baseType: !77, size: 16, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !483, file: !12, line: 725, baseType: !40, size: 8, offset: 80)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !483, file: !12, line: 726, baseType: !40, size: 8, offset: 88)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !483, file: !12, line: 727, baseType: !40, size: 8, offset: 96)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !226, file: !227, line: 83, baseType: !260, size: 64, offset: 8384)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !226, file: !227, line: 84, baseType: !132, size: 64, offset: 8448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !226, file: !227, line: 85, baseType: !342, size: 64, offset: 8512)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !226, file: !227, line: 86, baseType: !132, size: 64, offset: 8576)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !226, file: !227, line: 87, baseType: !342, size: 64, offset: 8640)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !226, file: !227, line: 88, baseType: !260, size: 64, offset: 8704)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !226, file: !227, line: 89, baseType: !260, size: 64, offset: 8768)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !226, file: !227, line: 90, baseType: !499, size: 64, offset: 8832)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !226, file: !227, line: 91, baseType: !501, size: 64, offset: 8896)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !12, line: 652, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!34, !225, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !226, file: !227, line: 92, baseType: !507, size: 64, offset: 8960)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !12, line: 656, baseType: !222)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !218, file: !134, line: 153, baseType: !132, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !204, file: !134, line: 156, baseType: !36, size: 32, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !204, file: !134, line: 157, baseType: !237, size: 16, offset: 416)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !204, file: !134, line: 158, baseType: !40, size: 8, offset: 432)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !133, file: !134, line: 377, baseType: !513, size: 576)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !134, line: 122, size: 576, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !513, file: !134, line: 123, baseType: !132, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !513, file: !134, line: 123, baseType: !40, size: 8, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !513, file: !134, line: 123, baseType: !40, size: 8, offset: 72)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !513, file: !134, line: 123, baseType: !77, size: 16, offset: 80)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !513, file: !134, line: 123, baseType: !40, size: 8, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !513, file: !134, line: 123, baseType: !40, size: 8, offset: 104)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !513, file: !134, line: 124, baseType: !77, size: 16, offset: 112)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !513, file: !134, line: 125, baseType: !45, size: 64, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !513, file: !134, line: 126, baseType: !50, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !513, file: !134, line: 127, baseType: !499, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !513, file: !134, line: 128, baseType: !132, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !513, file: !134, line: 129, baseType: !132, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !513, file: !134, line: 130, baseType: !128, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !513, file: !134, line: 131, baseType: !40, size: 8, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !133, file: !134, line: 378, baseType: !530, size: 512)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !134, line: 134, size: 512, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !543, !544}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !530, file: !134, line: 135, baseType: !132, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !530, file: !134, line: 135, baseType: !40, size: 8, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !530, file: !134, line: 135, baseType: !40, size: 8, offset: 72)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !530, file: !134, line: 135, baseType: !77, size: 16, offset: 80)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !530, file: !134, line: 135, baseType: !40, size: 8, offset: 96)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !530, file: !134, line: 135, baseType: !40, size: 8, offset: 104)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !530, file: !134, line: 136, baseType: !128, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !530, file: !134, line: 137, baseType: !132, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !530, file: !134, line: 138, baseType: !132, size: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !530, file: !134, line: 139, baseType: !542, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !35, line: 129, baseType: !50)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !530, file: !134, line: 140, baseType: !36, size: 32, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !530, file: !134, line: 141, baseType: !45, size: 64, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !133, file: !134, line: 379, baseType: !546, size: 320)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !134, line: 185, size: 320, elements: !547)
!547 = !{!548, !549, !550, !551, !552, !553, !555}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !546, file: !134, line: 186, baseType: !132, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !546, file: !134, line: 186, baseType: !40, size: 8, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !546, file: !134, line: 186, baseType: !40, size: 8, offset: 72)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !546, file: !134, line: 186, baseType: !77, size: 16, offset: 80)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !546, file: !134, line: 186, baseType: !40, size: 8, offset: 96)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !546, file: !134, line: 186, baseType: !554, size: 128, offset: 128)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 128, elements: !5)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !546, file: !134, line: 186, baseType: !132, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !133, file: !134, line: 380, baseType: !557, size: 384)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !134, line: 188, size: 384, elements: !558)
!558 = !{!559, !560, !561, !562, !563, !564, !565, !566}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !557, file: !134, line: 189, baseType: !132, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !557, file: !134, line: 189, baseType: !40, size: 8, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !557, file: !134, line: 189, baseType: !40, size: 8, offset: 72)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !557, file: !134, line: 189, baseType: !77, size: 16, offset: 80)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !557, file: !134, line: 189, baseType: !40, size: 8, offset: 96)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !557, file: !134, line: 190, baseType: !554, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !557, file: !134, line: 190, baseType: !132, size: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !557, file: !134, line: 190, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !12, line: 480, size: 576, elements: !569)
!569 = !{!570, !571, !572, !573, !581, !596, !628, !629, !630, !631, !632, !633}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !568, file: !12, line: 481, baseType: !128, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !568, file: !12, line: 482, baseType: !567, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !568, file: !12, line: 483, baseType: !567, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !568, file: !12, line: 484, baseType: !574, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !12, line: 497, size: 256, elements: !576)
!576 = !{!577, !578, !579, !580}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !575, file: !12, line: 498, baseType: !574, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !575, file: !12, line: 499, baseType: !574, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !575, file: !12, line: 500, baseType: !567, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !575, file: !12, line: 501, baseType: !36, size: 32, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !568, file: !12, line: 485, baseType: !582, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !12, line: 466, size: 320, elements: !584)
!584 = !{!585, !590, !591, !592, !593, !594, !595}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !583, file: !12, line: 467, baseType: !586, size: 128)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !12, line: 459, size: 128, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !586, file: !12, line: 460, baseType: !40, size: 8)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !586, file: !12, line: 461, baseType: !50, size: 64, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !583, file: !12, line: 468, baseType: !586, size: 128, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !583, file: !12, line: 469, baseType: !77, size: 16, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !583, file: !12, line: 470, baseType: !40, size: 8, offset: 272)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !583, file: !12, line: 471, baseType: !40, size: 8, offset: 280)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !583, file: !12, line: 472, baseType: !40, size: 8, offset: 288)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !583, file: !12, line: 473, baseType: !40, size: 8, offset: 296)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !568, file: !12, line: 486, baseType: !597, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !12, line: 448, size: 192, elements: !599)
!599 = !{!600, !623, !624, !625, !626, !627}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !598, file: !12, line: 449, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !12, line: 438, size: 64, elements: !602)
!602 = !{!603, !604, !617}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !601, file: !12, line: 439, baseType: !128, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !601, file: !12, line: 440, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !12, line: 419, size: 256, elements: !607)
!607 = !{!608, !613, !614, !615, !616}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !606, file: !12, line: 420, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !35, line: 1058, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!36, !44, !36, !45}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !606, file: !12, line: 421, baseType: !45, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !606, file: !12, line: 422, baseType: !128, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !606, file: !12, line: 423, baseType: !40, size: 8, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !606, file: !12, line: 424, baseType: !40, size: 8, offset: 200)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !601, file: !12, line: 441, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !12, line: 429, size: 128, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !619, file: !12, line: 430, baseType: !128, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !619, file: !12, line: 431, baseType: !618, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !598, file: !12, line: 450, baseType: !582, size: 64, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !598, file: !12, line: 451, baseType: !40, size: 8, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !598, file: !12, line: 452, baseType: !40, size: 8, offset: 136)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !598, file: !12, line: 453, baseType: !40, size: 8, offset: 144)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !598, file: !12, line: 454, baseType: !40, size: 8, offset: 152)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !568, file: !12, line: 487, baseType: !50, size: 64, offset: 384)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !568, file: !12, line: 488, baseType: !36, size: 32, offset: 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !568, file: !12, line: 489, baseType: !77, size: 16, offset: 480)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !568, file: !12, line: 490, baseType: !77, size: 16, offset: 496)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !568, file: !12, line: 491, baseType: !40, size: 8, offset: 512)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !568, file: !12, line: 492, baseType: !40, size: 8, offset: 520)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !133, file: !134, line: 381, baseType: !635, size: 384)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !134, line: 193, size: 384, elements: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !643, !644, !645}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !635, file: !134, line: 194, baseType: !132, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !635, file: !134, line: 194, baseType: !40, size: 8, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !635, file: !134, line: 194, baseType: !40, size: 8, offset: 72)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !635, file: !134, line: 194, baseType: !77, size: 16, offset: 80)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !134, line: 194, baseType: !40, size: 8, offset: 96)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !635, file: !134, line: 194, baseType: !554, size: 128, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !635, file: !134, line: 194, baseType: !132, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !635, file: !134, line: 194, baseType: !36, size: 32, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !635, file: !134, line: 195, baseType: !36, size: 32, offset: 352)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !133, file: !134, line: 382, baseType: !647, size: 384)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !134, line: 198, size: 384, elements: !648)
!648 = !{!649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !647, file: !134, line: 199, baseType: !132, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !647, file: !134, line: 199, baseType: !40, size: 8, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !647, file: !134, line: 199, baseType: !40, size: 8, offset: 72)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !647, file: !134, line: 199, baseType: !77, size: 16, offset: 80)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !134, line: 199, baseType: !40, size: 8, offset: 96)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !647, file: !134, line: 201, baseType: !40, size: 8, offset: 104)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !647, file: !134, line: 202, baseType: !40, size: 8, offset: 112)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !647, file: !134, line: 203, baseType: !554, size: 128, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !647, file: !134, line: 203, baseType: !132, size: 64, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !647, file: !134, line: 203, baseType: !659, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !35, line: 128, baseType: !50)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !133, file: !134, line: 383, baseType: !661, size: 320)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !134, line: 206, size: 320, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !661, file: !134, line: 207, baseType: !132, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !661, file: !134, line: 207, baseType: !40, size: 8, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !134, line: 207, baseType: !40, size: 8, offset: 72)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !661, file: !134, line: 207, baseType: !77, size: 16, offset: 80)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !134, line: 207, baseType: !40, size: 8, offset: 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !661, file: !134, line: 207, baseType: !554, size: 128, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !661, file: !134, line: 207, baseType: !132, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !133, file: !134, line: 384, baseType: !671, size: 384)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !134, line: 234, size: 384, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !134, line: 235, baseType: !132, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !134, line: 235, baseType: !40, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !134, line: 235, baseType: !40, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !134, line: 235, baseType: !77, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !134, line: 235, baseType: !40, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !134, line: 235, baseType: !40, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !134, line: 235, baseType: !40, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !134, line: 235, baseType: !40, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !134, line: 235, baseType: !128, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !134, line: 235, baseType: !36, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !134, line: 235, baseType: !36, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !134, line: 235, baseType: !36, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !134, line: 235, baseType: !40, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !134, line: 235, baseType: !40, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !671, file: !134, line: 235, baseType: !132, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !133, file: !134, line: 385, baseType: !689, size: 576)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !134, line: 238, size: 576, elements: !690)
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !689, file: !134, line: 239, baseType: !132, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !134, line: 239, baseType: !40, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !134, line: 239, baseType: !40, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !134, line: 239, baseType: !77, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !134, line: 239, baseType: !40, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !689, file: !134, line: 239, baseType: !40, size: 8, offset: 104)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !689, file: !134, line: 239, baseType: !40, size: 8, offset: 112)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !689, file: !134, line: 239, baseType: !40, size: 8, offset: 120)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !689, file: !134, line: 239, baseType: !128, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !689, file: !134, line: 239, baseType: !36, size: 32, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !689, file: !134, line: 239, baseType: !36, size: 32, offset: 224)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !689, file: !134, line: 239, baseType: !36, size: 32, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !689, file: !134, line: 239, baseType: !40, size: 8, offset: 288)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !689, file: !134, line: 239, baseType: !40, size: 8, offset: 296)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !689, file: !134, line: 239, baseType: !77, size: 16, offset: 304)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !689, file: !134, line: 240, baseType: !132, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !689, file: !134, line: 241, baseType: !80, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !689, file: !134, line: 242, baseType: !77, size: 16, offset: 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !689, file: !134, line: 243, baseType: !80, size: 64, offset: 512)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !133, file: !134, line: 386, baseType: !711, size: 384)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !134, line: 263, size: 384, elements: !712)
!712 = !{!713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !711, file: !134, line: 264, baseType: !132, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !711, file: !134, line: 264, baseType: !40, size: 8, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !711, file: !134, line: 264, baseType: !40, size: 8, offset: 72)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !711, file: !134, line: 264, baseType: !77, size: 16, offset: 80)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !134, line: 264, baseType: !40, size: 8, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !711, file: !134, line: 264, baseType: !40, size: 8, offset: 104)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !711, file: !134, line: 264, baseType: !40, size: 8, offset: 112)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !711, file: !134, line: 264, baseType: !40, size: 8, offset: 120)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !711, file: !134, line: 264, baseType: !128, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !711, file: !134, line: 264, baseType: !36, size: 32, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !711, file: !134, line: 264, baseType: !36, size: 32, offset: 224)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !711, file: !134, line: 264, baseType: !36, size: 32, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !711, file: !134, line: 264, baseType: !40, size: 8, offset: 288)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !711, file: !134, line: 264, baseType: !40, size: 8, offset: 296)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !711, file: !134, line: 264, baseType: !40, size: 8, offset: 304)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !711, file: !134, line: 265, baseType: !132, size: 64, offset: 320)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !133, file: !134, line: 387, baseType: !730, size: 448)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !134, line: 246, size: 448, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !730, file: !134, line: 247, baseType: !132, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !730, file: !134, line: 247, baseType: !40, size: 8, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !730, file: !134, line: 247, baseType: !40, size: 8, offset: 72)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !730, file: !134, line: 247, baseType: !77, size: 16, offset: 80)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !730, file: !134, line: 247, baseType: !40, size: 8, offset: 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !730, file: !134, line: 247, baseType: !40, size: 8, offset: 104)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !730, file: !134, line: 247, baseType: !40, size: 8, offset: 112)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !730, file: !134, line: 247, baseType: !40, size: 8, offset: 120)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !730, file: !134, line: 247, baseType: !128, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !730, file: !134, line: 247, baseType: !36, size: 32, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !730, file: !134, line: 247, baseType: !36, size: 32, offset: 224)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !730, file: !134, line: 247, baseType: !36, size: 32, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !730, file: !134, line: 247, baseType: !40, size: 8, offset: 288)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !730, file: !134, line: 247, baseType: !40, size: 8, offset: 296)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !730, file: !134, line: 247, baseType: !132, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !730, file: !134, line: 248, baseType: !132, size: 64, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !133, file: !134, line: 388, baseType: !749, size: 448)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !134, line: 251, size: 448, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !749, file: !134, line: 252, baseType: !132, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !749, file: !134, line: 252, baseType: !40, size: 8, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !134, line: 252, baseType: !40, size: 8, offset: 72)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !749, file: !134, line: 252, baseType: !77, size: 16, offset: 80)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !134, line: 252, baseType: !40, size: 8, offset: 96)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !749, file: !134, line: 252, baseType: !40, size: 8, offset: 104)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !749, file: !134, line: 252, baseType: !40, size: 8, offset: 112)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !749, file: !134, line: 252, baseType: !40, size: 8, offset: 120)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !749, file: !134, line: 252, baseType: !128, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !749, file: !134, line: 252, baseType: !36, size: 32, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !749, file: !134, line: 252, baseType: !36, size: 32, offset: 224)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !749, file: !134, line: 252, baseType: !36, size: 32, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !749, file: !134, line: 252, baseType: !40, size: 8, offset: 288)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !749, file: !134, line: 252, baseType: !40, size: 8, offset: 296)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !749, file: !134, line: 257, baseType: !132, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !749, file: !134, line: 258, baseType: !132, size: 64, offset: 384)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !133, file: !134, line: 389, baseType: !768, size: 512)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !134, line: 274, size: 512, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !775, !776, !777, !778, !779}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !768, file: !134, line: 275, baseType: !132, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !768, file: !134, line: 275, baseType: !40, size: 8, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !768, file: !134, line: 275, baseType: !40, size: 8, offset: 72)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !768, file: !134, line: 275, baseType: !77, size: 16, offset: 80)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !768, file: !134, line: 275, baseType: !40, size: 8, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !768, file: !134, line: 275, baseType: !128, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !768, file: !134, line: 276, baseType: !36, size: 32, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !768, file: !134, line: 277, baseType: !449, size: 64, offset: 256)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !768, file: !134, line: 278, baseType: !45, size: 64, offset: 320)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !768, file: !134, line: 279, baseType: !554, size: 128, offset: 384)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !133, file: !134, line: 390, baseType: !781, size: 576)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !134, line: 282, size: 576, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788, !789, !790, !796, !797, !798, !799, !805, !806}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !781, file: !134, line: 283, baseType: !132, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !781, file: !134, line: 283, baseType: !40, size: 8, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !781, file: !134, line: 283, baseType: !40, size: 8, offset: 72)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !781, file: !134, line: 283, baseType: !77, size: 16, offset: 80)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !134, line: 283, baseType: !40, size: 8, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !781, file: !134, line: 283, baseType: !40, size: 8, offset: 104)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !781, file: !134, line: 284, baseType: !40, size: 8, offset: 112)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !781, file: !134, line: 285, baseType: !791, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !35, line: 1093, baseType: !792)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!34, !36, !542, !36, !795, !45, !45}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !781, file: !134, line: 286, baseType: !128, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !781, file: !134, line: 287, baseType: !45, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !781, file: !134, line: 288, baseType: !45, size: 64, offset: 320)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !781, file: !134, line: 289, baseType: !800, size: 64, offset: 384)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !35, line: 1126, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!34, !44, !36, !45, !804}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !781, file: !134, line: 290, baseType: !132, size: 64, offset: 448)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !781, file: !134, line: 291, baseType: !132, size: 64, offset: 512)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !133, file: !134, line: 391, baseType: !808, size: 512)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !134, line: 309, size: 512, elements: !809)
!809 = !{!810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !808, file: !134, line: 310, baseType: !132, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !808, file: !134, line: 310, baseType: !40, size: 8, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !808, file: !134, line: 310, baseType: !40, size: 8, offset: 72)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !808, file: !134, line: 310, baseType: !77, size: 16, offset: 80)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !808, file: !134, line: 310, baseType: !40, size: 8, offset: 96)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !808, file: !134, line: 310, baseType: !40, size: 8, offset: 104)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !808, file: !134, line: 311, baseType: !40, size: 8, offset: 112)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !808, file: !134, line: 312, baseType: !40, size: 8, offset: 120)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !808, file: !134, line: 313, baseType: !45, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !808, file: !134, line: 314, baseType: !128, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !808, file: !134, line: 315, baseType: !190, size: 64, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !808, file: !134, line: 316, baseType: !80, size: 64, offset: 320)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !808, file: !134, line: 317, baseType: !80, size: 64, offset: 384)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !808, file: !134, line: 318, baseType: !36, size: 32, offset: 448)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !133, file: !134, line: 392, baseType: !825, size: 448)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !134, line: 342, size: 448, elements: !826)
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835, !836}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !825, file: !134, line: 343, baseType: !132, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !825, file: !134, line: 343, baseType: !40, size: 8, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !825, file: !134, line: 343, baseType: !40, size: 8, offset: 72)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !825, file: !134, line: 343, baseType: !77, size: 16, offset: 80)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !825, file: !134, line: 343, baseType: !40, size: 8, offset: 96)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !825, file: !134, line: 343, baseType: !128, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !825, file: !134, line: 344, baseType: !128, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !825, file: !134, line: 345, baseType: !45, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !825, file: !134, line: 346, baseType: !80, size: 64, offset: 320)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !825, file: !134, line: 347, baseType: !36, size: 32, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !133, file: !134, line: 393, baseType: !838, size: 256)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !134, line: 352, size: 256, elements: !839)
!839 = !{!840, !841, !842, !843, !844, !845, !850}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !838, file: !134, line: 353, baseType: !132, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !838, file: !134, line: 353, baseType: !40, size: 8, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !838, file: !134, line: 353, baseType: !40, size: 8, offset: 72)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !838, file: !134, line: 353, baseType: !77, size: 16, offset: 80)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !838, file: !134, line: 353, baseType: !40, size: 8, offset: 96)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !838, file: !134, line: 353, baseType: !846, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !35, line: 1064, baseType: !847)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !44, !45}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !838, file: !134, line: 354, baseType: !45, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !133, file: !134, line: 394, baseType: !852, size: 192)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !134, line: 359, size: 192, elements: !853)
!853 = !{!854, !855, !856, !857, !858, !859}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !852, file: !134, line: 360, baseType: !132, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !852, file: !134, line: 360, baseType: !40, size: 8, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !852, file: !134, line: 360, baseType: !40, size: 8, offset: 72)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !852, file: !134, line: 360, baseType: !77, size: 16, offset: 80)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !852, file: !134, line: 360, baseType: !40, size: 8, offset: 96)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !852, file: !134, line: 360, baseType: !132, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !133, file: !134, line: 401, baseType: !129, size: 384)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !129, file: !12, line: 135, baseType: !40, size: 8, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !129, file: !12, line: 136, baseType: !40, size: 8, offset: 72)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !12, line: 137, baseType: !77, size: 16, offset: 80)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !129, file: !12, line: 138, baseType: !865, size: 32, offset: 96)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !56, line: 328, size: 32, elements: !866)
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !865, file: !56, line: 329, baseType: !36, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !865, file: !56, line: 330, baseType: !59, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !129, file: !12, line: 139, baseType: !128, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !129, file: !12, line: 140, baseType: !128, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !129, file: !12, line: 141, baseType: !128, size: 64, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !129, file: !12, line: 142, baseType: !237, size: 16, offset: 320)
!873 = !DILocalVariable(name: "prefix_node", scope: !118, file: !2, line: 51, type: !128)
!874 = !DILocation(line: 46, column: 29, scope: !118)
!875 = !DILocation(line: 47, column: 15, scope: !118)
!876 = !DILocation(line: 47, column: 38, scope: !118)
!877 = !DILocation(line: 49, column: 2, scope: !118)
!878 = !DILocation(line: 49, column: 14, scope: !118)
!879 = !DILocation(line: 50, column: 2, scope: !118)
!880 = !DILocation(line: 50, column: 30, scope: !118)
!881 = !DILocation(line: 51, column: 2, scope: !118)
!882 = !DILocation(line: 51, column: 30, scope: !118)
!883 = !DILocation(line: 57, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !118, file: !2, line: 57, column: 6)
!885 = !DILocation(line: 57, column: 18, scope: !884)
!886 = !DILocation(line: 57, column: 22, scope: !884)
!887 = !DILocation(line: 57, column: 6, scope: !118)
!888 = !DILocation(line: 58, column: 3, scope: !889)
!889 = distinct !DILexicalBlock(scope: !884, file: !2, line: 57, column: 32)
!890 = !DILocation(line: 63, column: 6, scope: !891)
!891 = distinct !DILexicalBlock(scope: !118, file: !2, line: 63, column: 6)
!892 = !DILocation(line: 63, column: 6, scope: !118)
!893 = !DILocation(line: 64, column: 41, scope: !894)
!894 = distinct !DILexicalBlock(scope: !891, file: !2, line: 63, column: 14)
!895 = !DILocation(line: 64, column: 17, scope: !894)
!896 = !DILocation(line: 64, column: 15, scope: !894)
!897 = !DILocation(line: 65, column: 8, scope: !898)
!898 = distinct !DILexicalBlock(scope: !894, file: !2, line: 65, column: 7)
!899 = !DILocation(line: 65, column: 7, scope: !894)
!900 = !DILocation(line: 66, column: 4, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !2, line: 65, column: 21)
!902 = !DILocation(line: 68, column: 2, scope: !894)
!903 = !DILocation(line: 77, column: 6, scope: !904)
!904 = distinct !DILexicalBlock(scope: !118, file: !2, line: 77, column: 6)
!905 = !DILocation(line: 77, column: 6, scope: !118)
!906 = !DILocation(line: 83, column: 15, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !2, line: 83, column: 7)
!908 = distinct !DILexicalBlock(scope: !904, file: !2, line: 77, column: 40)
!909 = !DILocation(line: 83, column: 8, scope: !907)
!910 = !DILocation(line: 83, column: 7, scope: !908)
!911 = !DILocation(line: 85, column: 8, scope: !912)
!912 = distinct !DILexicalBlock(scope: !907, file: !2, line: 83, column: 45)
!913 = !DILocation(line: 84, column: 5, scope: !912)
!914 = !DILocation(line: 84, column: 16, scope: !912)
!915 = !DILocation(line: 86, column: 4, scope: !912)
!916 = !DILocation(line: 88, column: 2, scope: !908)
!917 = !DILocation(line: 88, column: 14, scope: !918)
!918 = distinct !DILexicalBlock(scope: !904, file: !2, line: 88, column: 13)
!919 = !DILocation(line: 88, column: 13, scope: !904)
!920 = !DILocation(line: 92, column: 3, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !2, line: 88, column: 27)
!922 = !DILocation(line: 98, column: 23, scope: !118)
!923 = !DILocation(line: 98, column: 36, scope: !118)
!924 = !DILocation(line: 98, column: 6, scope: !118)
!925 = !DILocation(line: 97, column: 9, scope: !118)
!926 = !DILocation(line: 99, column: 6, scope: !927)
!927 = distinct !DILexicalBlock(scope: !118, file: !2, line: 99, column: 6)
!928 = !DILocation(line: 99, column: 6, scope: !118)
!929 = !DILocation(line: 100, column: 17, scope: !930)
!930 = distinct !DILexicalBlock(scope: !927, file: !2, line: 99, column: 28)
!931 = !DILocation(line: 100, column: 4, scope: !930)
!932 = !DILocation(line: 100, column: 15, scope: !930)
!933 = !DILocation(line: 101, column: 2, scope: !930)
!934 = !DILocation(line: 103, column: 10, scope: !118)
!935 = !DILocation(line: 103, column: 2, scope: !118)
!936 = !DILocation(line: 104, column: 1, scope: !118)
!937 = !DISubprogram(name: "acpi_ns_validate_handle", scope: !938, file: !938, line: 398, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!938 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!939 = !DISubroutineType(types: !940)
!940 = !{!128, !44}
!941 = !DISubprogram(name: "strcmp", scope: !942, file: !942, line: 88, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!942 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!943 = !DISubroutineType(types: !944)
!944 = !{!945, !121, !121}
!945 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!946 = !DISubprogram(name: "acpi_ns_get_node", scope: !938, file: !938, line: 285, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!947 = !DISubroutineType(types: !948)
!948 = !{!34, !128, !121, !36, !949}
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!950 = distinct !DISubprogram(name: "acpi_get_name", scope: !2, file: !2, line: 124, type: !951, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !958)
!951 = !DISubroutineType(types: !952)
!952 = !{!34, !44, !36, !953}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !35, line: 978, size: 128, elements: !955)
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !954, file: !35, line: 979, baseType: !49, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !954, file: !35, line: 980, baseType: !45, size: 64, offset: 64)
!958 = !{!959, !960, !961, !962}
!959 = !DILocalVariable(name: "handle", arg: 1, scope: !950, file: !2, line: 124, type: !44)
!960 = !DILocalVariable(name: "name_type", arg: 2, scope: !950, file: !2, line: 124, type: !36)
!961 = !DILocalVariable(name: "buffer", arg: 3, scope: !950, file: !2, line: 124, type: !953)
!962 = !DILocalVariable(name: "status", scope: !950, file: !2, line: 126, type: !34)
!963 = !DILocation(line: 124, column: 27, scope: !950)
!964 = !DILocation(line: 124, column: 39, scope: !950)
!965 = !DILocation(line: 124, column: 70, scope: !950)
!966 = !DILocation(line: 126, column: 2, scope: !950)
!967 = !DILocation(line: 126, column: 14, scope: !950)
!968 = !DILocation(line: 130, column: 6, scope: !969)
!969 = distinct !DILexicalBlock(scope: !950, file: !2, line: 130, column: 6)
!970 = !DILocation(line: 130, column: 16, scope: !969)
!971 = !DILocation(line: 130, column: 6, scope: !950)
!972 = !DILocation(line: 131, column: 3, scope: !973)
!973 = distinct !DILexicalBlock(scope: !969, file: !2, line: 130, column: 38)
!974 = !DILocation(line: 134, column: 35, scope: !950)
!975 = !DILocation(line: 134, column: 11, scope: !950)
!976 = !DILocation(line: 134, column: 9, scope: !950)
!977 = !DILocation(line: 135, column: 6, scope: !978)
!978 = distinct !DILexicalBlock(scope: !950, file: !2, line: 135, column: 6)
!979 = !DILocation(line: 135, column: 6, scope: !950)
!980 = !DILocation(line: 136, column: 11, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !2, line: 135, column: 28)
!982 = !DILocation(line: 136, column: 3, scope: !981)
!983 = !DILocation(line: 143, column: 11, scope: !950)
!984 = !DILocation(line: 143, column: 9, scope: !950)
!985 = !DILocation(line: 144, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !950, file: !2, line: 144, column: 6)
!987 = !DILocation(line: 144, column: 6, scope: !950)
!988 = !DILocation(line: 145, column: 11, scope: !989)
!989 = distinct !DILexicalBlock(scope: !986, file: !2, line: 144, column: 28)
!990 = !DILocation(line: 145, column: 3, scope: !989)
!991 = !DILocation(line: 148, column: 6, scope: !992)
!992 = distinct !DILexicalBlock(scope: !950, file: !2, line: 148, column: 6)
!993 = !DILocation(line: 148, column: 16, scope: !992)
!994 = !DILocation(line: 148, column: 38, scope: !992)
!995 = !DILocation(line: 149, column: 6, scope: !992)
!996 = !DILocation(line: 149, column: 16, scope: !992)
!997 = !DILocation(line: 148, column: 6, scope: !950)
!998 = !DILocation(line: 153, column: 39, scope: !999)
!999 = distinct !DILexicalBlock(scope: !992, file: !2, line: 149, column: 51)
!1000 = !DILocation(line: 153, column: 47, scope: !999)
!1001 = !DILocation(line: 154, column: 11, scope: !999)
!1002 = !DILocation(line: 154, column: 21, scope: !999)
!1003 = !DILocation(line: 153, column: 12, scope: !999)
!1004 = !DILocation(line: 153, column: 10, scope: !999)
!1005 = !DILocation(line: 157, column: 2, scope: !999)
!1006 = !DILocation(line: 160, column: 35, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !992, file: !2, line: 157, column: 9)
!1008 = !DILocation(line: 160, column: 43, scope: !1007)
!1009 = !DILocation(line: 160, column: 12, scope: !1007)
!1010 = !DILocation(line: 160, column: 10, scope: !1007)
!1011 = !DILocation(line: 163, column: 8, scope: !950)
!1012 = !DILocation(line: 164, column: 10, scope: !950)
!1013 = !DILocation(line: 164, column: 2, scope: !950)
!1014 = !DILocation(line: 165, column: 1, scope: !950)
!1015 = !DISubprogram(name: "acpi_ut_validate_buffer", scope: !1016, file: !1016, line: 657, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1016 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!34, !953}
!1019 = !DISubprogram(name: "acpi_ut_acquire_mutex", scope: !1016, file: !1016, line: 646, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!34, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_mutex_handle", file: !12, line: 17, baseType: !36)
!1023 = !DISubprogram(name: "acpi_ns_handle_to_pathname", scope: !938, file: !938, line: 273, type: !1024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!34, !44, !953, !40}
!1026 = !DISubprogram(name: "acpi_ns_handle_to_name", scope: !938, file: !938, line: 270, type: !1027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!34, !44, !953}
!1029 = !DISubprogram(name: "acpi_ut_release_mutex", scope: !1016, file: !1016, line: 648, type: !1020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1030 = distinct !DISubprogram(name: "acpi_get_object_info", scope: !2, file: !2, line: 226, type: !1031, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1065)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!34, !44, !1033}
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_info", file: !35, line: 1180, size: 768, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1041, !1042, !1043, !1044, !1046, !1048, !1049, !1054, !1055, !1056}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "info_size", scope: !1035, file: !35, line: 1181, baseType: !36, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1035, file: !35, line: 1182, baseType: !36, size: 32, offset: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1035, file: !35, line: 1183, baseType: !1040, size: 32, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !35, line: 644, baseType: !36)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !1035, file: !35, line: 1184, baseType: !40, size: 8, offset: 96)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1035, file: !35, line: 1185, baseType: !77, size: 16, offset: 112)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1035, file: !35, line: 1186, baseType: !40, size: 8, offset: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "highest_dstates", scope: !1035, file: !35, line: 1187, baseType: !1045, size: 32, offset: 136)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 32, elements: !60)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_dstates", scope: !1035, file: !35, line: 1188, baseType: !1047, size: 40, offset: 168)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 40, elements: !88)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1035, file: !35, line: 1189, baseType: !50, size: 64, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1035, file: !35, line: 1190, baseType: !1050, size: 128, offset: 320)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id", file: !35, line: 1165, size: 128, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1050, file: !35, line: 1166, baseType: !36, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1050, file: !35, line: 1167, baseType: !53, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1035, file: !35, line: 1191, baseType: !1050, size: 128, offset: 448)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "class_code", scope: !1035, file: !35, line: 1192, baseType: !1050, size: 128, offset: 576)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "compatible_id_list", scope: !1035, file: !35, line: 1193, baseType: !1057, size: 64, offset: 704)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_device_id_list", file: !35, line: 1170, size: 64, elements: !1058)
!1058 = !{!1059, !1060, !1061}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1057, file: !35, line: 1171, baseType: !36, size: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "list_size", scope: !1057, file: !35, line: 1172, baseType: !36, size: 32, offset: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1057, file: !35, line: 1173, baseType: !1062, offset: 64)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1050, elements: !1063)
!1063 = !{!1064}
!1064 = !DISubrange(count: -1)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1072, !1074, !1075, !1076, !1077, !1078, !1080, !1081, !1082, !1083, !1084, !1085}
!1066 = !DILocalVariable(name: "handle", arg: 1, scope: !1030, file: !2, line: 226, type: !44)
!1067 = !DILocalVariable(name: "return_buffer", arg: 2, scope: !1030, file: !2, line: 227, type: !1033)
!1068 = !DILocalVariable(name: "node", scope: !1030, file: !2, line: 229, type: !128)
!1069 = !DILocalVariable(name: "info", scope: !1030, file: !2, line: 230, type: !1034)
!1070 = !DILocalVariable(name: "cid_list", scope: !1030, file: !2, line: 231, type: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1072 = !DILocalVariable(name: "hid", scope: !1030, file: !2, line: 232, type: !1073)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1074 = !DILocalVariable(name: "uid", scope: !1030, file: !2, line: 233, type: !1073)
!1075 = !DILocalVariable(name: "cls", scope: !1030, file: !2, line: 234, type: !1073)
!1076 = !DILocalVariable(name: "next_id_string", scope: !1030, file: !2, line: 235, type: !53)
!1077 = !DILocalVariable(name: "type", scope: !1030, file: !2, line: 236, type: !1040)
!1078 = !DILocalVariable(name: "name", scope: !1030, file: !2, line: 237, type: !1079)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_name", file: !35, line: 422, baseType: !36)
!1080 = !DILocalVariable(name: "param_count", scope: !1030, file: !2, line: 238, type: !40)
!1081 = !DILocalVariable(name: "valid", scope: !1030, file: !2, line: 239, type: !77)
!1082 = !DILocalVariable(name: "info_size", scope: !1030, file: !2, line: 240, type: !36)
!1083 = !DILocalVariable(name: "i", scope: !1030, file: !2, line: 241, type: !36)
!1084 = !DILocalVariable(name: "status", scope: !1030, file: !2, line: 242, type: !34)
!1085 = !DILabel(scope: !1030, name: "cleanup", file: !2, line: 443)
!1086 = !DILocation(line: 226, column: 34, scope: !1030)
!1087 = !DILocation(line: 227, column: 34, scope: !1030)
!1088 = !DILocation(line: 229, column: 2, scope: !1030)
!1089 = !DILocation(line: 229, column: 30, scope: !1030)
!1090 = !DILocation(line: 230, column: 2, scope: !1030)
!1091 = !DILocation(line: 230, column: 27, scope: !1030)
!1092 = !DILocation(line: 231, column: 2, scope: !1030)
!1093 = !DILocation(line: 231, column: 34, scope: !1030)
!1094 = !DILocation(line: 232, column: 2, scope: !1030)
!1095 = !DILocation(line: 232, column: 29, scope: !1030)
!1096 = !DILocation(line: 233, column: 2, scope: !1030)
!1097 = !DILocation(line: 233, column: 29, scope: !1030)
!1098 = !DILocation(line: 234, column: 2, scope: !1030)
!1099 = !DILocation(line: 234, column: 29, scope: !1030)
!1100 = !DILocation(line: 235, column: 2, scope: !1030)
!1101 = !DILocation(line: 235, column: 8, scope: !1030)
!1102 = !DILocation(line: 236, column: 2, scope: !1030)
!1103 = !DILocation(line: 236, column: 19, scope: !1030)
!1104 = !DILocation(line: 237, column: 2, scope: !1030)
!1105 = !DILocation(line: 237, column: 12, scope: !1030)
!1106 = !DILocation(line: 238, column: 2, scope: !1030)
!1107 = !DILocation(line: 238, column: 5, scope: !1030)
!1108 = !DILocation(line: 239, column: 2, scope: !1030)
!1109 = !DILocation(line: 239, column: 6, scope: !1030)
!1110 = !DILocation(line: 240, column: 2, scope: !1030)
!1111 = !DILocation(line: 240, column: 6, scope: !1030)
!1112 = !DILocation(line: 241, column: 2, scope: !1030)
!1113 = !DILocation(line: 241, column: 6, scope: !1030)
!1114 = !DILocation(line: 242, column: 2, scope: !1030)
!1115 = !DILocation(line: 242, column: 14, scope: !1030)
!1116 = !DILocation(line: 246, column: 7, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 246, column: 6)
!1118 = !DILocation(line: 246, column: 14, scope: !1117)
!1119 = !DILocation(line: 246, column: 18, scope: !1117)
!1120 = !DILocation(line: 246, column: 6, scope: !1030)
!1121 = !DILocation(line: 247, column: 3, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1117, file: !2, line: 246, column: 33)
!1123 = !DILocation(line: 250, column: 11, scope: !1030)
!1124 = !DILocation(line: 250, column: 9, scope: !1030)
!1125 = !DILocation(line: 251, column: 6, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 251, column: 6)
!1127 = !DILocation(line: 251, column: 6, scope: !1030)
!1128 = !DILocation(line: 252, column: 11, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !2, line: 251, column: 28)
!1130 = !DILocation(line: 252, column: 3, scope: !1129)
!1131 = !DILocation(line: 255, column: 33, scope: !1030)
!1132 = !DILocation(line: 255, column: 9, scope: !1030)
!1133 = !DILocation(line: 255, column: 7, scope: !1030)
!1134 = !DILocation(line: 256, column: 7, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 256, column: 6)
!1136 = !DILocation(line: 256, column: 6, scope: !1030)
!1137 = !DILocation(line: 257, column: 9, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 256, column: 13)
!1139 = !DILocation(line: 258, column: 3, scope: !1138)
!1140 = !DILocation(line: 263, column: 12, scope: !1030)
!1141 = !DILocation(line: 264, column: 9, scope: !1030)
!1142 = !DILocation(line: 264, column: 15, scope: !1030)
!1143 = !DILocation(line: 264, column: 7, scope: !1030)
!1144 = !DILocation(line: 265, column: 9, scope: !1030)
!1145 = !DILocation(line: 265, column: 15, scope: !1030)
!1146 = !DILocation(line: 265, column: 20, scope: !1030)
!1147 = !DILocation(line: 265, column: 7, scope: !1030)
!1148 = !DILocation(line: 267, column: 6, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 267, column: 6)
!1150 = !DILocation(line: 267, column: 12, scope: !1149)
!1151 = !DILocation(line: 267, column: 17, scope: !1149)
!1152 = !DILocation(line: 267, column: 6, scope: !1030)
!1153 = !DILocation(line: 268, column: 17, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !2, line: 267, column: 38)
!1155 = !DILocation(line: 268, column: 23, scope: !1154)
!1156 = !DILocation(line: 268, column: 38, scope: !1154)
!1157 = !DILocation(line: 268, column: 15, scope: !1154)
!1158 = !DILocation(line: 269, column: 2, scope: !1154)
!1159 = !DILocation(line: 271, column: 11, scope: !1030)
!1160 = !DILocation(line: 271, column: 9, scope: !1030)
!1161 = !DILocation(line: 272, column: 6, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 272, column: 6)
!1163 = !DILocation(line: 272, column: 6, scope: !1030)
!1164 = !DILocation(line: 273, column: 11, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !2, line: 272, column: 28)
!1166 = !DILocation(line: 273, column: 3, scope: !1165)
!1167 = !DILocation(line: 276, column: 7, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 276, column: 6)
!1169 = !DILocation(line: 276, column: 12, scope: !1168)
!1170 = !DILocation(line: 276, column: 33, scope: !1168)
!1171 = !DILocation(line: 276, column: 37, scope: !1168)
!1172 = !DILocation(line: 276, column: 42, scope: !1168)
!1173 = !DILocation(line: 276, column: 6, scope: !1030)
!1174 = !DILocation(line: 288, column: 32, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 276, column: 67)
!1176 = !DILocation(line: 288, column: 12, scope: !1175)
!1177 = !DILocation(line: 288, column: 10, scope: !1175)
!1178 = !DILocation(line: 289, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 289, column: 7)
!1180 = !DILocation(line: 289, column: 7, scope: !1175)
!1181 = !DILocation(line: 290, column: 17, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 289, column: 29)
!1183 = !DILocation(line: 290, column: 22, scope: !1182)
!1184 = !DILocation(line: 290, column: 14, scope: !1182)
!1185 = !DILocation(line: 291, column: 10, scope: !1182)
!1186 = !DILocation(line: 292, column: 3, scope: !1182)
!1187 = !DILocation(line: 296, column: 32, scope: !1175)
!1188 = !DILocation(line: 296, column: 12, scope: !1175)
!1189 = !DILocation(line: 296, column: 10, scope: !1175)
!1190 = !DILocation(line: 297, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 297, column: 7)
!1192 = !DILocation(line: 297, column: 7, scope: !1175)
!1193 = !DILocation(line: 298, column: 17, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 297, column: 29)
!1195 = !DILocation(line: 298, column: 22, scope: !1194)
!1196 = !DILocation(line: 298, column: 14, scope: !1194)
!1197 = !DILocation(line: 299, column: 10, scope: !1194)
!1198 = !DILocation(line: 300, column: 3, scope: !1194)
!1199 = !DILocation(line: 304, column: 32, scope: !1175)
!1200 = !DILocation(line: 304, column: 12, scope: !1175)
!1201 = !DILocation(line: 304, column: 10, scope: !1175)
!1202 = !DILocation(line: 305, column: 7, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 305, column: 7)
!1204 = !DILocation(line: 305, column: 7, scope: !1175)
!1205 = !DILocation(line: 310, column: 9, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 305, column: 29)
!1207 = !DILocation(line: 310, column: 19, scope: !1206)
!1208 = !DILocation(line: 310, column: 29, scope: !1206)
!1209 = !DILocation(line: 309, column: 14, scope: !1206)
!1210 = !DILocation(line: 312, column: 10, scope: !1206)
!1211 = !DILocation(line: 313, column: 3, scope: !1206)
!1212 = !DILocation(line: 317, column: 32, scope: !1175)
!1213 = !DILocation(line: 317, column: 12, scope: !1175)
!1214 = !DILocation(line: 317, column: 10, scope: !1175)
!1215 = !DILocation(line: 318, column: 7, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 318, column: 7)
!1217 = !DILocation(line: 318, column: 7, scope: !1175)
!1218 = !DILocation(line: 319, column: 17, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !2, line: 318, column: 29)
!1220 = !DILocation(line: 319, column: 22, scope: !1219)
!1221 = !DILocation(line: 319, column: 14, scope: !1219)
!1222 = !DILocation(line: 320, column: 10, scope: !1219)
!1223 = !DILocation(line: 321, column: 3, scope: !1219)
!1224 = !DILocation(line: 322, column: 2, scope: !1175)
!1225 = !DILocation(line: 328, column: 9, scope: !1030)
!1226 = !DILocation(line: 328, column: 7, scope: !1030)
!1227 = !DILocation(line: 329, column: 7, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 329, column: 6)
!1229 = !DILocation(line: 329, column: 6, scope: !1030)
!1230 = !DILocation(line: 330, column: 10, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 329, column: 13)
!1232 = !DILocation(line: 331, column: 3, scope: !1231)
!1233 = !DILocation(line: 336, column: 7, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 336, column: 6)
!1235 = !DILocation(line: 336, column: 12, scope: !1234)
!1236 = !DILocation(line: 336, column: 33, scope: !1234)
!1237 = !DILocation(line: 336, column: 37, scope: !1234)
!1238 = !DILocation(line: 336, column: 42, scope: !1234)
!1239 = !DILocation(line: 336, column: 6, scope: !1030)
!1240 = !DILocation(line: 348, column: 62, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 336, column: 67)
!1242 = !DILocation(line: 349, column: 10, scope: !1241)
!1243 = !DILocation(line: 349, column: 16, scope: !1241)
!1244 = !DILocation(line: 348, column: 12, scope: !1241)
!1245 = !DILocation(line: 348, column: 10, scope: !1241)
!1246 = !DILocation(line: 350, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 350, column: 7)
!1248 = !DILocation(line: 350, column: 7, scope: !1241)
!1249 = !DILocation(line: 351, column: 10, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 350, column: 29)
!1251 = !DILocation(line: 352, column: 3, scope: !1250)
!1252 = !DILocation(line: 356, column: 42, scope: !1241)
!1253 = !DILocation(line: 359, column: 14, scope: !1241)
!1254 = !DILocation(line: 359, column: 20, scope: !1241)
!1255 = !DILocation(line: 356, column: 12, scope: !1241)
!1256 = !DILocation(line: 356, column: 10, scope: !1241)
!1257 = !DILocation(line: 360, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 360, column: 7)
!1259 = !DILocation(line: 360, column: 7, scope: !1241)
!1260 = !DILocation(line: 361, column: 10, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 360, column: 29)
!1262 = !DILocation(line: 362, column: 3, scope: !1261)
!1263 = !DILocation(line: 366, column: 42, scope: !1241)
!1264 = !DILocation(line: 369, column: 14, scope: !1241)
!1265 = !DILocation(line: 369, column: 20, scope: !1241)
!1266 = !DILocation(line: 366, column: 12, scope: !1241)
!1267 = !DILocation(line: 366, column: 10, scope: !1241)
!1268 = !DILocation(line: 370, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 370, column: 7)
!1270 = !DILocation(line: 370, column: 7, scope: !1241)
!1271 = !DILocation(line: 371, column: 10, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 370, column: 29)
!1273 = !DILocation(line: 372, column: 3, scope: !1272)
!1274 = !DILocation(line: 373, column: 2, scope: !1241)
!1275 = !DILocation(line: 379, column: 19, scope: !1030)
!1276 = !DILocation(line: 379, column: 17, scope: !1030)
!1277 = !DILocation(line: 380, column: 6, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 380, column: 6)
!1279 = !DILocation(line: 380, column: 6, scope: !1030)
!1280 = !DILocation(line: 385, column: 19, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1278, file: !2, line: 380, column: 16)
!1282 = !DILocation(line: 385, column: 29, scope: !1281)
!1283 = !DILocation(line: 385, column: 8, scope: !1281)
!1284 = !DILocation(line: 385, column: 35, scope: !1281)
!1285 = !DILocation(line: 384, column: 18, scope: !1281)
!1286 = !DILocation(line: 387, column: 2, scope: !1281)
!1287 = !DILocation(line: 395, column: 6, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 395, column: 6)
!1289 = !DILocation(line: 395, column: 6, scope: !1030)
!1290 = !DILocation(line: 396, column: 44, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 395, column: 11)
!1292 = !DILocation(line: 396, column: 50, scope: !1291)
!1293 = !DILocation(line: 397, column: 8, scope: !1291)
!1294 = !DILocation(line: 397, column: 13, scope: !1291)
!1295 = !DILocation(line: 396, column: 20, scope: !1291)
!1296 = !DILocation(line: 396, column: 18, scope: !1291)
!1297 = !DILocation(line: 399, column: 34, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1291, file: !2, line: 399, column: 7)
!1299 = !DILocation(line: 399, column: 39, scope: !1298)
!1300 = !DILocation(line: 399, column: 7, scope: !1298)
!1301 = !DILocation(line: 399, column: 7, scope: !1291)
!1302 = !DILocation(line: 400, column: 4, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 399, column: 48)
!1304 = !DILocation(line: 400, column: 10, scope: !1303)
!1305 = !DILocation(line: 400, column: 16, scope: !1303)
!1306 = !DILocation(line: 401, column: 3, scope: !1303)
!1307 = !DILocation(line: 402, column: 2, scope: !1291)
!1308 = !DILocation(line: 404, column: 6, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 404, column: 6)
!1310 = !DILocation(line: 404, column: 6, scope: !1030)
!1311 = !DILocation(line: 405, column: 44, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 404, column: 11)
!1313 = !DILocation(line: 405, column: 50, scope: !1312)
!1314 = !DILocation(line: 406, column: 8, scope: !1312)
!1315 = !DILocation(line: 406, column: 13, scope: !1312)
!1316 = !DILocation(line: 405, column: 20, scope: !1312)
!1317 = !DILocation(line: 405, column: 18, scope: !1312)
!1318 = !DILocation(line: 407, column: 2, scope: !1312)
!1319 = !DILocation(line: 409, column: 6, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 409, column: 6)
!1321 = !DILocation(line: 409, column: 6, scope: !1030)
!1322 = !DILocation(line: 410, column: 36, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1320, file: !2, line: 409, column: 16)
!1324 = !DILocation(line: 410, column: 46, scope: !1323)
!1325 = !DILocation(line: 410, column: 3, scope: !1323)
!1326 = !DILocation(line: 410, column: 9, scope: !1323)
!1327 = !DILocation(line: 410, column: 28, scope: !1323)
!1328 = !DILocation(line: 410, column: 34, scope: !1323)
!1329 = !DILocation(line: 411, column: 40, scope: !1323)
!1330 = !DILocation(line: 411, column: 50, scope: !1323)
!1331 = !DILocation(line: 411, column: 3, scope: !1323)
!1332 = !DILocation(line: 411, column: 9, scope: !1323)
!1333 = !DILocation(line: 411, column: 28, scope: !1323)
!1334 = !DILocation(line: 411, column: 38, scope: !1323)
!1335 = !DILocation(line: 415, column: 10, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 415, column: 3)
!1337 = !DILocation(line: 415, column: 8, scope: !1336)
!1338 = !DILocation(line: 415, column: 15, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 415, column: 3)
!1340 = !DILocation(line: 415, column: 19, scope: !1339)
!1341 = !DILocation(line: 415, column: 29, scope: !1339)
!1342 = !DILocation(line: 415, column: 17, scope: !1339)
!1343 = !DILocation(line: 415, column: 3, scope: !1336)
!1344 = !DILocation(line: 417, column: 32, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 415, column: 41)
!1346 = !DILocation(line: 417, column: 38, scope: !1345)
!1347 = !DILocation(line: 418, column: 10, scope: !1345)
!1348 = !DILocation(line: 418, column: 14, scope: !1345)
!1349 = !DILocation(line: 418, column: 19, scope: !1345)
!1350 = !DILocation(line: 418, column: 29, scope: !1345)
!1351 = !DILocation(line: 418, column: 33, scope: !1345)
!1352 = !DILocation(line: 419, column: 10, scope: !1345)
!1353 = !DILocation(line: 417, column: 8, scope: !1345)
!1354 = !DILocation(line: 416, column: 19, scope: !1345)
!1355 = !DILocation(line: 421, column: 35, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1345, file: !2, line: 421, column: 8)
!1357 = !DILocation(line: 421, column: 45, scope: !1356)
!1358 = !DILocation(line: 421, column: 49, scope: !1356)
!1359 = !DILocation(line: 421, column: 52, scope: !1356)
!1360 = !DILocation(line: 421, column: 8, scope: !1356)
!1361 = !DILocation(line: 421, column: 8, scope: !1345)
!1362 = !DILocation(line: 422, column: 5, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 421, column: 61)
!1364 = !DILocation(line: 422, column: 11, scope: !1363)
!1365 = !DILocation(line: 422, column: 17, scope: !1363)
!1366 = !DILocation(line: 423, column: 4, scope: !1363)
!1367 = !DILocation(line: 424, column: 3, scope: !1345)
!1368 = !DILocation(line: 415, column: 37, scope: !1339)
!1369 = !DILocation(line: 415, column: 3, scope: !1339)
!1370 = distinct !{!1370, !1343, !1371, !1372, !1373}
!1371 = !DILocation(line: 424, column: 3, scope: !1336)
!1372 = !{!"llvm.loop.mustprogress"}
!1373 = !{!"llvm.loop.unroll.disable"}
!1374 = !DILocation(line: 425, column: 2, scope: !1323)
!1375 = !DILocation(line: 427, column: 6, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 427, column: 6)
!1377 = !DILocation(line: 427, column: 6, scope: !1030)
!1378 = !DILocation(line: 428, column: 33, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1376, file: !2, line: 427, column: 11)
!1380 = !DILocation(line: 428, column: 39, scope: !1379)
!1381 = !DILocation(line: 429, column: 11, scope: !1379)
!1382 = !DILocation(line: 429, column: 16, scope: !1379)
!1383 = !DILocation(line: 428, column: 9, scope: !1379)
!1384 = !DILocation(line: 430, column: 2, scope: !1379)
!1385 = !DILocation(line: 434, column: 20, scope: !1030)
!1386 = !DILocation(line: 434, column: 2, scope: !1030)
!1387 = !DILocation(line: 434, column: 8, scope: !1030)
!1388 = !DILocation(line: 434, column: 18, scope: !1030)
!1389 = !DILocation(line: 435, column: 15, scope: !1030)
!1390 = !DILocation(line: 435, column: 2, scope: !1030)
!1391 = !DILocation(line: 435, column: 8, scope: !1030)
!1392 = !DILocation(line: 435, column: 13, scope: !1030)
!1393 = !DILocation(line: 436, column: 15, scope: !1030)
!1394 = !DILocation(line: 436, column: 2, scope: !1030)
!1395 = !DILocation(line: 436, column: 8, scope: !1030)
!1396 = !DILocation(line: 436, column: 13, scope: !1030)
!1397 = !DILocation(line: 437, column: 22, scope: !1030)
!1398 = !DILocation(line: 437, column: 2, scope: !1030)
!1399 = !DILocation(line: 437, column: 8, scope: !1030)
!1400 = !DILocation(line: 437, column: 20, scope: !1030)
!1401 = !DILocation(line: 438, column: 16, scope: !1030)
!1402 = !DILocation(line: 438, column: 2, scope: !1030)
!1403 = !DILocation(line: 438, column: 8, scope: !1030)
!1404 = !DILocation(line: 438, column: 14, scope: !1030)
!1405 = !DILocation(line: 440, column: 19, scope: !1030)
!1406 = !DILocation(line: 440, column: 3, scope: !1030)
!1407 = !DILocation(line: 440, column: 17, scope: !1030)
!1408 = !DILocation(line: 441, column: 9, scope: !1030)
!1409 = !DILocation(line: 441, column: 2, scope: !1030)
!1410 = !DILocation(line: 443, column: 1, scope: !1030)
!1411 = !DILocation(line: 444, column: 6, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 444, column: 6)
!1413 = !DILocation(line: 444, column: 6, scope: !1030)
!1414 = !DILocation(line: 445, column: 3, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 444, column: 11)
!1416 = !DILocation(line: 446, column: 2, scope: !1415)
!1417 = !DILocation(line: 447, column: 6, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 447, column: 6)
!1419 = !DILocation(line: 447, column: 6, scope: !1030)
!1420 = !DILocation(line: 448, column: 3, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1418, file: !2, line: 447, column: 11)
!1422 = !DILocation(line: 449, column: 2, scope: !1421)
!1423 = !DILocation(line: 450, column: 6, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 450, column: 6)
!1425 = !DILocation(line: 450, column: 6, scope: !1030)
!1426 = !DILocation(line: 451, column: 3, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 450, column: 16)
!1428 = !DILocation(line: 452, column: 2, scope: !1427)
!1429 = !DILocation(line: 453, column: 6, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 453, column: 6)
!1431 = !DILocation(line: 453, column: 6, scope: !1030)
!1432 = !DILocation(line: 454, column: 3, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1430, file: !2, line: 453, column: 11)
!1434 = !DILocation(line: 455, column: 2, scope: !1433)
!1435 = !DILocation(line: 456, column: 10, scope: !1030)
!1436 = !DILocation(line: 456, column: 2, scope: !1030)
!1437 = !DILocation(line: 457, column: 1, scope: !1030)
!1438 = !DISubprogram(name: "acpi_ut_execute_HID", scope: !1016, file: !1016, line: 403, type: !1439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!34, !128, !1441}
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1442 = !DISubprogram(name: "acpi_ut_execute_UID", scope: !1016, file: !1016, line: 407, type: !1439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1443 = !DISubprogram(name: "acpi_ut_execute_CID", scope: !1016, file: !1016, line: 411, type: !1444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!34, !128, !1446}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1447 = !DISubprogram(name: "acpi_ut_execute_CLS", scope: !1016, file: !1016, line: 415, type: !1439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1448 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1449, file: !1449, line: 55, type: !1450, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1452)
!1449 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!45, !49}
!1452 = !{!1453, !1454, !1456, !1459, !1460, !1463}
!1453 = !DILocalVariable(name: "size", arg: 1, scope: !1448, file: !1449, line: 55, type: !49)
!1454 = !DILocalVariable(name: "_flags", scope: !1455, file: !1449, line: 57, type: !48)
!1455 = distinct !DILexicalBlock(scope: !1448, file: !1449, line: 57, column: 23)
!1456 = !DILocalVariable(name: "__dummy", scope: !1457, file: !1449, line: 57, type: !48)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !1449, line: 57, column: 23)
!1458 = distinct !DILexicalBlock(scope: !1455, file: !1449, line: 57, column: 23)
!1459 = !DILocalVariable(name: "__dummy2", scope: !1457, file: !1449, line: 57, type: !48)
!1460 = !DILocalVariable(name: "__dummy", scope: !1461, file: !1449, line: 57, type: !48)
!1461 = distinct !DILexicalBlock(scope: !1462, file: !1449, line: 57, column: 23)
!1462 = distinct !DILexicalBlock(scope: !1455, file: !1449, line: 57, column: 23)
!1463 = !DILocalVariable(name: "__dummy2", scope: !1461, file: !1449, line: 57, type: !48)
!1464 = !DILocation(line: 55, column: 55, scope: !1448)
!1465 = !DILocation(line: 57, column: 17, scope: !1448)
!1466 = !DILocation(line: 57, column: 23, scope: !1455)
!1467 = !DILocation(line: 57, column: 23, scope: !1457)
!1468 = !DILocation(line: 57, column: 23, scope: !1458)
!1469 = !DILocation(line: 57, column: 23, scope: !1461)
!1470 = !DILocation(line: 57, column: 23, scope: !1462)
!1471 = !DILocation(line: 57, column: 23, scope: !1448)
!1472 = !DILocation(line: 57, column: 9, scope: !1448)
!1473 = !DILocation(line: 57, column: 2, scope: !1448)
!1474 = !DISubprogram(name: "acpi_ut_evaluate_numeric_object", scope: !1016, file: !1016, line: 387, type: !1475, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!34, !121, !128, !795}
!1477 = !DISubprogram(name: "acpi_ut_execute_power_methods", scope: !1016, file: !1016, line: 395, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!34, !128, !1480, !40, !80}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!1481 = distinct !DISubprogram(name: "acpi_ns_copy_device_id", scope: !2, file: !2, line: 182, type: !1482, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1484)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!53, !1073, !1073, !53}
!1484 = !{!1485, !1486, !1487}
!1485 = !DILocalVariable(name: "dest", arg: 1, scope: !1481, file: !2, line: 182, type: !1073)
!1486 = !DILocalVariable(name: "source", arg: 2, scope: !1481, file: !2, line: 183, type: !1073)
!1487 = !DILocalVariable(name: "string_area", arg: 3, scope: !1481, file: !2, line: 184, type: !53)
!1488 = !DILocation(line: 182, column: 64, scope: !1481)
!1489 = !DILocation(line: 183, column: 36, scope: !1481)
!1490 = !DILocation(line: 184, column: 15, scope: !1481)
!1491 = !DILocation(line: 188, column: 17, scope: !1481)
!1492 = !DILocation(line: 188, column: 2, scope: !1481)
!1493 = !DILocation(line: 188, column: 8, scope: !1481)
!1494 = !DILocation(line: 188, column: 15, scope: !1481)
!1495 = !DILocation(line: 189, column: 17, scope: !1481)
!1496 = !DILocation(line: 189, column: 25, scope: !1481)
!1497 = !DILocation(line: 189, column: 2, scope: !1481)
!1498 = !DILocation(line: 189, column: 8, scope: !1481)
!1499 = !DILocation(line: 189, column: 15, scope: !1481)
!1500 = !DILocation(line: 193, column: 9, scope: !1481)
!1501 = !DILocation(line: 193, column: 22, scope: !1481)
!1502 = !DILocation(line: 193, column: 30, scope: !1481)
!1503 = !DILocation(line: 193, column: 38, scope: !1481)
!1504 = !DILocation(line: 193, column: 46, scope: !1481)
!1505 = !DILocation(line: 193, column: 2, scope: !1481)
!1506 = !DILocation(line: 194, column: 10, scope: !1481)
!1507 = !DILocation(line: 194, column: 24, scope: !1481)
!1508 = !DILocation(line: 194, column: 32, scope: !1481)
!1509 = !DILocation(line: 194, column: 22, scope: !1481)
!1510 = !DILocation(line: 194, column: 2, scope: !1481)
!1511 = !DISubprogram(name: "acpi_ut_is_pci_root_bridge", scope: !1016, file: !1016, line: 557, type: !1512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!40, !53}
!1514 = distinct !DISubprogram(name: "acpi_os_free", scope: !1449, file: !1449, line: 60, type: !1515, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{null, !45}
!1517 = !{!1518}
!1518 = !DILocalVariable(name: "memory", arg: 1, scope: !1514, file: !1449, line: 60, type: !45)
!1519 = !DILocation(line: 60, column: 39, scope: !1514)
!1520 = !DILocation(line: 62, column: 8, scope: !1514)
!1521 = !DILocation(line: 62, column: 2, scope: !1514)
!1522 = !DILocation(line: 63, column: 1, scope: !1514)
!1523 = distinct !DISubprogram(name: "acpi_install_method", scope: !2, file: !2, line: 475, type: !1524, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1526)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!34, !80}
!1526 = !{!1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539}
!1527 = !DILocalVariable(name: "buffer", arg: 1, scope: !1523, file: !2, line: 475, type: !80)
!1528 = !DILocalVariable(name: "table", scope: !1523, file: !2, line: 477, type: !54)
!1529 = !DILocalVariable(name: "aml_buffer", scope: !1523, file: !2, line: 479, type: !80)
!1530 = !DILocalVariable(name: "aml_start", scope: !1523, file: !2, line: 480, type: !80)
!1531 = !DILocalVariable(name: "path", scope: !1523, file: !2, line: 481, type: !53)
!1532 = !DILocalVariable(name: "node", scope: !1523, file: !2, line: 482, type: !128)
!1533 = !DILocalVariable(name: "method_obj", scope: !1523, file: !2, line: 483, type: !132)
!1534 = !DILocalVariable(name: "parser_state", scope: !1523, file: !2, line: 484, type: !252)
!1535 = !DILocalVariable(name: "aml_length", scope: !1523, file: !2, line: 485, type: !36)
!1536 = !DILocalVariable(name: "opcode", scope: !1523, file: !2, line: 486, type: !77)
!1537 = !DILocalVariable(name: "method_flags", scope: !1523, file: !2, line: 487, type: !40)
!1538 = !DILocalVariable(name: "status", scope: !1523, file: !2, line: 488, type: !34)
!1539 = !DILabel(scope: !1523, name: "error_exit", file: !2, line: 601)
!1540 = !DILocation(line: 475, column: 37, scope: !1523)
!1541 = !DILocation(line: 477, column: 2, scope: !1523)
!1542 = !DILocation(line: 477, column: 28, scope: !1523)
!1543 = !DILocation(line: 478, column: 6, scope: !1523)
!1544 = !DILocation(line: 479, column: 2, scope: !1523)
!1545 = !DILocation(line: 479, column: 6, scope: !1523)
!1546 = !DILocation(line: 480, column: 2, scope: !1523)
!1547 = !DILocation(line: 480, column: 6, scope: !1523)
!1548 = !DILocation(line: 481, column: 2, scope: !1523)
!1549 = !DILocation(line: 481, column: 8, scope: !1523)
!1550 = !DILocation(line: 482, column: 2, scope: !1523)
!1551 = !DILocation(line: 482, column: 30, scope: !1523)
!1552 = !DILocation(line: 483, column: 2, scope: !1523)
!1553 = !DILocation(line: 483, column: 29, scope: !1523)
!1554 = !DILocation(line: 484, column: 2, scope: !1523)
!1555 = !DILocation(line: 484, column: 26, scope: !1523)
!1556 = !DILocation(line: 485, column: 2, scope: !1523)
!1557 = !DILocation(line: 485, column: 6, scope: !1523)
!1558 = !DILocation(line: 486, column: 2, scope: !1523)
!1559 = !DILocation(line: 486, column: 6, scope: !1523)
!1560 = !DILocation(line: 487, column: 2, scope: !1523)
!1561 = !DILocation(line: 487, column: 5, scope: !1523)
!1562 = !DILocation(line: 488, column: 2, scope: !1523)
!1563 = !DILocation(line: 488, column: 14, scope: !1523)
!1564 = !DILocation(line: 492, column: 7, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 492, column: 6)
!1566 = !DILocation(line: 492, column: 6, scope: !1523)
!1567 = !DILocation(line: 493, column: 3, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 492, column: 15)
!1569 = !DILocation(line: 498, column: 7, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 498, column: 6)
!1571 = !DILocation(line: 498, column: 61, scope: !1570)
!1572 = !DILocation(line: 499, column: 7, scope: !1570)
!1573 = !DILocation(line: 498, column: 6, scope: !1523)
!1574 = !DILocation(line: 500, column: 3, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 499, column: 62)
!1576 = !DILocation(line: 505, column: 21, scope: !1523)
!1577 = !DILocation(line: 505, column: 28, scope: !1523)
!1578 = !DILocation(line: 505, column: 15, scope: !1523)
!1579 = !DILocation(line: 505, column: 19, scope: !1523)
!1580 = !DILocation(line: 506, column: 11, scope: !1523)
!1581 = !DILocation(line: 506, column: 9, scope: !1523)
!1582 = !DILocation(line: 507, column: 6, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 507, column: 6)
!1584 = !DILocation(line: 507, column: 13, scope: !1583)
!1585 = !DILocation(line: 507, column: 6, scope: !1523)
!1586 = !DILocation(line: 508, column: 3, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 507, column: 31)
!1588 = !DILocation(line: 513, column: 46, scope: !1523)
!1589 = !DILocation(line: 513, column: 22, scope: !1523)
!1590 = !DILocation(line: 513, column: 15, scope: !1523)
!1591 = !DILocation(line: 513, column: 19, scope: !1523)
!1592 = !DILocation(line: 514, column: 25, scope: !1523)
!1593 = !DILocation(line: 514, column: 15, scope: !1523)
!1594 = !DILocation(line: 514, column: 23, scope: !1523)
!1595 = !DILocation(line: 515, column: 9, scope: !1523)
!1596 = !DILocation(line: 515, column: 7, scope: !1523)
!1597 = !DILocation(line: 517, column: 31, scope: !1523)
!1598 = !DILocation(line: 517, column: 34, scope: !1523)
!1599 = !DILocation(line: 517, column: 17, scope: !1523)
!1600 = !DILocation(line: 517, column: 15, scope: !1523)
!1601 = !DILocation(line: 518, column: 27, scope: !1523)
!1602 = !DILocation(line: 518, column: 12, scope: !1523)
!1603 = !DILocation(line: 519, column: 20, scope: !1523)
!1604 = !DILocation(line: 519, column: 15, scope: !1523)
!1605 = !DILocation(line: 519, column: 13, scope: !1523)
!1606 = !DILocation(line: 525, column: 15, scope: !1523)
!1607 = !DILocation(line: 525, column: 13, scope: !1523)
!1608 = !DILocation(line: 526, column: 7, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 526, column: 6)
!1610 = !DILocation(line: 526, column: 6, scope: !1523)
!1611 = !DILocation(line: 527, column: 3, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1609, file: !2, line: 526, column: 19)
!1613 = !DILocation(line: 530, column: 15, scope: !1523)
!1614 = !DILocation(line: 530, column: 13, scope: !1523)
!1615 = !DILocation(line: 531, column: 7, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 531, column: 6)
!1617 = !DILocation(line: 531, column: 6, scope: !1523)
!1618 = !DILocation(line: 532, column: 3, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 531, column: 19)
!1620 = !DILocation(line: 533, column: 3, scope: !1619)
!1621 = !DILocation(line: 538, column: 11, scope: !1523)
!1622 = !DILocation(line: 538, column: 9, scope: !1523)
!1623 = !DILocation(line: 539, column: 6, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 539, column: 6)
!1625 = !DILocation(line: 539, column: 6, scope: !1523)
!1626 = !DILocation(line: 540, column: 3, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1624, file: !2, line: 539, column: 28)
!1628 = !DILocation(line: 546, column: 27, scope: !1523)
!1629 = !DILocation(line: 546, column: 6, scope: !1523)
!1630 = !DILocation(line: 545, column: 9, scope: !1523)
!1631 = !DILocation(line: 550, column: 8, scope: !1523)
!1632 = !DILocation(line: 552, column: 6, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 552, column: 6)
!1634 = !DILocation(line: 552, column: 6, scope: !1523)
!1635 = !DILocation(line: 553, column: 7, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 553, column: 7)
!1637 = distinct !DILexicalBlock(scope: !1633, file: !2, line: 552, column: 28)
!1638 = !DILocation(line: 553, column: 14, scope: !1636)
!1639 = !DILocation(line: 553, column: 7, scope: !1637)
!1640 = !DILocation(line: 554, column: 4, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 553, column: 36)
!1642 = !DILocation(line: 559, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1637, file: !2, line: 559, column: 7)
!1644 = !DILocation(line: 559, column: 13, scope: !1643)
!1645 = !DILocation(line: 559, column: 18, scope: !1643)
!1646 = !DILocation(line: 559, column: 7, scope: !1637)
!1647 = !DILocation(line: 560, column: 11, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1643, file: !2, line: 559, column: 39)
!1649 = !DILocation(line: 561, column: 4, scope: !1648)
!1650 = !DILocation(line: 563, column: 2, scope: !1637)
!1651 = !DILocation(line: 567, column: 9, scope: !1523)
!1652 = !DILocation(line: 567, column: 21, scope: !1523)
!1653 = !DILocation(line: 567, column: 32, scope: !1523)
!1654 = !DILocation(line: 567, column: 2, scope: !1523)
!1655 = !DILocation(line: 571, column: 33, scope: !1523)
!1656 = !DILocation(line: 571, column: 2, scope: !1523)
!1657 = !DILocation(line: 571, column: 21, scope: !1523)
!1658 = !DILocation(line: 571, column: 31, scope: !1523)
!1659 = !DILocation(line: 572, column: 34, scope: !1523)
!1660 = !DILocation(line: 572, column: 2, scope: !1523)
!1661 = !DILocation(line: 572, column: 21, scope: !1523)
!1662 = !DILocation(line: 572, column: 32, scope: !1523)
!1663 = !DILocation(line: 575, column: 7, scope: !1523)
!1664 = !DILocation(line: 575, column: 20, scope: !1523)
!1665 = !DILocation(line: 574, column: 35, scope: !1523)
!1666 = !DILocation(line: 574, column: 2, scope: !1523)
!1667 = !DILocation(line: 574, column: 21, scope: !1523)
!1668 = !DILocation(line: 574, column: 33, scope: !1523)
!1669 = !DILocation(line: 577, column: 6, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 577, column: 6)
!1671 = !DILocation(line: 577, column: 19, scope: !1670)
!1672 = !DILocation(line: 577, column: 6, scope: !1523)
!1673 = !DILocation(line: 578, column: 3, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1670, file: !2, line: 577, column: 44)
!1675 = !DILocation(line: 578, column: 22, scope: !1674)
!1676 = !DILocation(line: 578, column: 33, scope: !1674)
!1677 = !DILocation(line: 581, column: 9, scope: !1674)
!1678 = !DILocation(line: 581, column: 22, scope: !1674)
!1679 = !DILocation(line: 581, column: 47, scope: !1674)
!1680 = !DILocation(line: 580, column: 35, scope: !1674)
!1681 = !DILocation(line: 580, column: 3, scope: !1674)
!1682 = !DILocation(line: 580, column: 22, scope: !1674)
!1683 = !DILocation(line: 580, column: 33, scope: !1674)
!1684 = !DILocation(line: 582, column: 2, scope: !1674)
!1685 = !DILocation(line: 588, column: 33, scope: !1523)
!1686 = !DILocation(line: 588, column: 39, scope: !1523)
!1687 = !DILocation(line: 588, column: 11, scope: !1523)
!1688 = !DILocation(line: 588, column: 9, scope: !1523)
!1689 = !DILocation(line: 594, column: 2, scope: !1523)
!1690 = !DILocation(line: 594, column: 8, scope: !1523)
!1691 = !DILocation(line: 594, column: 14, scope: !1523)
!1692 = !DILocation(line: 598, column: 27, scope: !1523)
!1693 = !DILocation(line: 598, column: 2, scope: !1523)
!1694 = !DILocation(line: 599, column: 10, scope: !1523)
!1695 = !DILocation(line: 599, column: 2, scope: !1523)
!1696 = !DILocation(line: 601, column: 1, scope: !1523)
!1697 = !DILocation(line: 603, column: 2, scope: !1523)
!1698 = !DILocation(line: 604, column: 2, scope: !1523)
!1699 = !DILocation(line: 605, column: 10, scope: !1523)
!1700 = !DILocation(line: 605, column: 2, scope: !1523)
!1701 = !DILocation(line: 606, column: 1, scope: !1523)
!1702 = !DISubprogram(name: "acpi_ps_peek_opcode", scope: !1703, file: !1703, line: 121, type: !1704, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1703 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!77, !1706}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1707 = !DISubprogram(name: "acpi_ps_get_opcode_size", scope: !1703, file: !1703, line: 119, type: !1708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!36, !36}
!1710 = !DISubprogram(name: "acpi_ps_get_next_package_end", scope: !1703, file: !1703, line: 52, type: !1711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!80, !1706}
!1713 = !DISubprogram(name: "acpi_ps_get_next_namestring", scope: !1703, file: !1703, line: 54, type: !1714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!53, !1706}
!1716 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !1449, file: !1449, line: 50, type: !1450, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1717)
!1717 = !{!1718, !1719, !1721, !1724, !1725, !1728}
!1718 = !DILocalVariable(name: "size", arg: 1, scope: !1716, file: !1449, line: 50, type: !49)
!1719 = !DILocalVariable(name: "_flags", scope: !1720, file: !1449, line: 52, type: !48)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !1449, line: 52, column: 23)
!1721 = !DILocalVariable(name: "__dummy", scope: !1722, file: !1449, line: 52, type: !48)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !1449, line: 52, column: 23)
!1723 = distinct !DILexicalBlock(scope: !1720, file: !1449, line: 52, column: 23)
!1724 = !DILocalVariable(name: "__dummy2", scope: !1722, file: !1449, line: 52, type: !48)
!1725 = !DILocalVariable(name: "__dummy", scope: !1726, file: !1449, line: 52, type: !48)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !1449, line: 52, column: 23)
!1727 = distinct !DILexicalBlock(scope: !1720, file: !1449, line: 52, column: 23)
!1728 = !DILocalVariable(name: "__dummy2", scope: !1726, file: !1449, line: 52, type: !48)
!1729 = !DILocation(line: 50, column: 48, scope: !1716)
!1730 = !DILocation(line: 52, column: 17, scope: !1716)
!1731 = !DILocation(line: 52, column: 23, scope: !1720)
!1732 = !DILocation(line: 52, column: 23, scope: !1722)
!1733 = !DILocation(line: 52, column: 23, scope: !1723)
!1734 = !DILocation(line: 52, column: 23, scope: !1726)
!1735 = !DILocation(line: 52, column: 23, scope: !1727)
!1736 = !DILocation(line: 52, column: 23, scope: !1716)
!1737 = !DILocation(line: 52, column: 9, scope: !1716)
!1738 = !DILocation(line: 52, column: 2, scope: !1716)
!1739 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !1016, file: !1016, line: 436, type: !1740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!132, !121, !36, !36, !1040}
!1742 = !DISubprogram(name: "acpi_ns_lookup", scope: !938, file: !938, line: 118, type: !1743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!34, !342, !53, !1040, !1745, !36, !225, !949}
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interpreter_mode", file: !12, line: 120, baseType: !11)
!1746 = !DISubprogram(name: "acpi_ns_attach_object", scope: !938, file: !938, line: 295, type: !1747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!34, !128, !132, !1040}
!1749 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1016, file: !1016, line: 369, type: !1750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null, !132}
!1752 = distinct !DISubprogram(name: "kzalloc", scope: !24, file: !24, line: 719, type: !1753, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1759)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!45, !1755, !81}
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !47, line: 61, baseType: !1756)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1757, line: 72, baseType: !1758)
!1757 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1757, line: 16, baseType: !48)
!1759 = !{!1760, !1761}
!1760 = !DILocalVariable(name: "size", arg: 1, scope: !1752, file: !24, line: 719, type: !1755)
!1761 = !DILocalVariable(name: "flags", arg: 2, scope: !1752, file: !24, line: 719, type: !81)
!1762 = !DILocation(line: 719, column: 52, scope: !1752)
!1763 = !DILocation(line: 719, column: 64, scope: !1752)
!1764 = !DILocation(line: 721, column: 17, scope: !1752)
!1765 = !DILocation(line: 721, column: 23, scope: !1752)
!1766 = !DILocation(line: 721, column: 29, scope: !1752)
!1767 = !DILocation(line: 721, column: 9, scope: !1752)
!1768 = !DILocation(line: 721, column: 2, scope: !1752)
!1769 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1770, file: !1770, line: 65, type: !1771, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!1770 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!48}
!1773 = !DILocation(line: 67, column: 9, scope: !1769)
!1774 = !DILocation(line: 67, column: 2, scope: !1769)
!1775 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1770, file: !1770, line: 120, type: !1776, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1778)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!945, !48}
!1778 = !{!1779}
!1779 = !DILocalVariable(name: "flags", arg: 1, scope: !1775, file: !1770, line: 120, type: !48)
!1780 = !DILocation(line: 120, column: 67, scope: !1775)
!1781 = !DILocation(line: 122, column: 11, scope: !1775)
!1782 = !DILocation(line: 122, column: 17, scope: !1775)
!1783 = !DILocation(line: 122, column: 9, scope: !1775)
!1784 = !DILocation(line: 122, column: 2, scope: !1775)
!1785 = distinct !DISubprogram(name: "kmalloc", scope: !24, file: !24, line: 591, type: !1753, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1786)
!1786 = !{!1787, !1788, !1789}
!1787 = !DILocalVariable(name: "size", arg: 1, scope: !1785, file: !24, line: 591, type: !1755)
!1788 = !DILocalVariable(name: "flags", arg: 2, scope: !1785, file: !24, line: 591, type: !81)
!1789 = !DILocalVariable(name: "index", scope: !1790, file: !24, line: 594, type: !13)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !24, line: 593, column: 42)
!1791 = distinct !DILexicalBlock(scope: !1785, file: !24, line: 593, column: 6)
!1792 = !DILocation(line: 591, column: 61, scope: !1785)
!1793 = !DILocation(line: 591, column: 73, scope: !1785)
!1794 = !DILocation(line: 593, column: 27, scope: !1791)
!1795 = !DILocation(line: 593, column: 6, scope: !1791)
!1796 = !DILocation(line: 593, column: 33, scope: !1791)
!1797 = !DILocation(line: 593, column: 36, scope: !1791)
!1798 = !DILocation(line: 593, column: 6, scope: !1785)
!1799 = !DILocation(line: 594, column: 3, scope: !1790)
!1800 = !DILocation(line: 594, column: 16, scope: !1790)
!1801 = !DILocation(line: 596, column: 7, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1790, file: !24, line: 596, column: 7)
!1803 = !DILocation(line: 596, column: 12, scope: !1802)
!1804 = !DILocation(line: 596, column: 7, scope: !1790)
!1805 = !DILocation(line: 597, column: 25, scope: !1802)
!1806 = !DILocation(line: 597, column: 31, scope: !1802)
!1807 = !DILocation(line: 597, column: 11, scope: !1802)
!1808 = !DILocation(line: 597, column: 4, scope: !1802)
!1809 = !DILocation(line: 599, column: 11, scope: !1790)
!1810 = !DILocation(line: 599, column: 9, scope: !1790)
!1811 = !DILocation(line: 601, column: 33, scope: !1790)
!1812 = !DILocation(line: 601, column: 40, scope: !1790)
!1813 = !DILocation(line: 601, column: 20, scope: !1790)
!1814 = !DILocation(line: 601, column: 5, scope: !1790)
!1815 = !DILocation(line: 601, column: 51, scope: !1790)
!1816 = !DILocation(line: 602, column: 5, scope: !1790)
!1817 = !DILocation(line: 602, column: 12, scope: !1790)
!1818 = !DILocation(line: 600, column: 10, scope: !1790)
!1819 = !DILocation(line: 600, column: 3, scope: !1790)
!1820 = !DILocation(line: 603, column: 2, scope: !1791)
!1821 = !DILocation(line: 604, column: 19, scope: !1785)
!1822 = !DILocation(line: 604, column: 25, scope: !1785)
!1823 = !DILocation(line: 604, column: 9, scope: !1785)
!1824 = !DILocation(line: 604, column: 2, scope: !1785)
!1825 = !DILocation(line: 605, column: 1, scope: !1785)
!1826 = !DISubprogram(name: "kmalloc_large", scope: !24, file: !24, line: 531, type: !1753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1827 = distinct !DISubprogram(name: "__kmalloc_index", scope: !24, file: !24, line: 444, type: !1828, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1832)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!13, !1755, !1830}
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !47, line: 35, baseType: !1831)
!1831 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1832 = !{!1833, !1834}
!1833 = !DILocalVariable(name: "size", arg: 1, scope: !1827, file: !24, line: 444, type: !1755)
!1834 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1827, file: !24, line: 445, type: !1830)
!1835 = !DILocation(line: 444, column: 60, scope: !1827)
!1836 = !DILocation(line: 445, column: 16, scope: !1827)
!1837 = !DILocation(line: 447, column: 7, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 447, column: 6)
!1839 = !DILocation(line: 447, column: 6, scope: !1827)
!1840 = !DILocation(line: 448, column: 3, scope: !1838)
!1841 = !DILocation(line: 450, column: 6, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 450, column: 6)
!1843 = !DILocation(line: 450, column: 11, scope: !1842)
!1844 = !DILocation(line: 450, column: 6, scope: !1827)
!1845 = !DILocation(line: 451, column: 3, scope: !1842)
!1846 = !DILocation(line: 453, column: 32, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 453, column: 6)
!1848 = !DILocation(line: 453, column: 37, scope: !1847)
!1849 = !DILocation(line: 453, column: 42, scope: !1847)
!1850 = !DILocation(line: 453, column: 45, scope: !1847)
!1851 = !DILocation(line: 453, column: 50, scope: !1847)
!1852 = !DILocation(line: 453, column: 6, scope: !1827)
!1853 = !DILocation(line: 454, column: 3, scope: !1847)
!1854 = !DILocation(line: 455, column: 32, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 455, column: 6)
!1856 = !DILocation(line: 455, column: 37, scope: !1855)
!1857 = !DILocation(line: 455, column: 43, scope: !1855)
!1858 = !DILocation(line: 455, column: 46, scope: !1855)
!1859 = !DILocation(line: 455, column: 51, scope: !1855)
!1860 = !DILocation(line: 455, column: 6, scope: !1827)
!1861 = !DILocation(line: 456, column: 3, scope: !1855)
!1862 = !DILocation(line: 457, column: 6, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 457, column: 6)
!1864 = !DILocation(line: 457, column: 11, scope: !1863)
!1865 = !DILocation(line: 457, column: 6, scope: !1827)
!1866 = !DILocation(line: 457, column: 26, scope: !1863)
!1867 = !DILocation(line: 458, column: 6, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 458, column: 6)
!1869 = !DILocation(line: 458, column: 11, scope: !1868)
!1870 = !DILocation(line: 458, column: 6, scope: !1827)
!1871 = !DILocation(line: 458, column: 26, scope: !1868)
!1872 = !DILocation(line: 459, column: 6, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 459, column: 6)
!1874 = !DILocation(line: 459, column: 11, scope: !1873)
!1875 = !DILocation(line: 459, column: 6, scope: !1827)
!1876 = !DILocation(line: 459, column: 26, scope: !1873)
!1877 = !DILocation(line: 460, column: 6, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 460, column: 6)
!1879 = !DILocation(line: 460, column: 11, scope: !1878)
!1880 = !DILocation(line: 460, column: 6, scope: !1827)
!1881 = !DILocation(line: 460, column: 26, scope: !1878)
!1882 = !DILocation(line: 461, column: 6, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 461, column: 6)
!1884 = !DILocation(line: 461, column: 11, scope: !1883)
!1885 = !DILocation(line: 461, column: 6, scope: !1827)
!1886 = !DILocation(line: 461, column: 26, scope: !1883)
!1887 = !DILocation(line: 462, column: 6, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 462, column: 6)
!1889 = !DILocation(line: 462, column: 11, scope: !1888)
!1890 = !DILocation(line: 462, column: 6, scope: !1827)
!1891 = !DILocation(line: 462, column: 26, scope: !1888)
!1892 = !DILocation(line: 463, column: 6, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 463, column: 6)
!1894 = !DILocation(line: 463, column: 11, scope: !1893)
!1895 = !DILocation(line: 463, column: 6, scope: !1827)
!1896 = !DILocation(line: 463, column: 26, scope: !1893)
!1897 = !DILocation(line: 464, column: 6, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 464, column: 6)
!1899 = !DILocation(line: 464, column: 11, scope: !1898)
!1900 = !DILocation(line: 464, column: 6, scope: !1827)
!1901 = !DILocation(line: 464, column: 26, scope: !1898)
!1902 = !DILocation(line: 465, column: 6, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 465, column: 6)
!1904 = !DILocation(line: 465, column: 11, scope: !1903)
!1905 = !DILocation(line: 465, column: 6, scope: !1827)
!1906 = !DILocation(line: 465, column: 26, scope: !1903)
!1907 = !DILocation(line: 466, column: 6, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 466, column: 6)
!1909 = !DILocation(line: 466, column: 11, scope: !1908)
!1910 = !DILocation(line: 466, column: 6, scope: !1827)
!1911 = !DILocation(line: 466, column: 26, scope: !1908)
!1912 = !DILocation(line: 467, column: 6, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 467, column: 6)
!1914 = !DILocation(line: 467, column: 11, scope: !1913)
!1915 = !DILocation(line: 467, column: 6, scope: !1827)
!1916 = !DILocation(line: 467, column: 26, scope: !1913)
!1917 = !DILocation(line: 468, column: 6, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 468, column: 6)
!1919 = !DILocation(line: 468, column: 11, scope: !1918)
!1920 = !DILocation(line: 468, column: 6, scope: !1827)
!1921 = !DILocation(line: 468, column: 26, scope: !1918)
!1922 = !DILocation(line: 469, column: 6, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 469, column: 6)
!1924 = !DILocation(line: 469, column: 11, scope: !1923)
!1925 = !DILocation(line: 469, column: 6, scope: !1827)
!1926 = !DILocation(line: 469, column: 26, scope: !1923)
!1927 = !DILocation(line: 470, column: 6, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 470, column: 6)
!1929 = !DILocation(line: 470, column: 11, scope: !1928)
!1930 = !DILocation(line: 470, column: 6, scope: !1827)
!1931 = !DILocation(line: 470, column: 26, scope: !1928)
!1932 = !DILocation(line: 471, column: 6, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 471, column: 6)
!1934 = !DILocation(line: 471, column: 11, scope: !1933)
!1935 = !DILocation(line: 471, column: 6, scope: !1827)
!1936 = !DILocation(line: 471, column: 26, scope: !1933)
!1937 = !DILocation(line: 472, column: 6, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 472, column: 6)
!1939 = !DILocation(line: 472, column: 11, scope: !1938)
!1940 = !DILocation(line: 472, column: 6, scope: !1827)
!1941 = !DILocation(line: 472, column: 26, scope: !1938)
!1942 = !DILocation(line: 473, column: 6, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 473, column: 6)
!1944 = !DILocation(line: 473, column: 11, scope: !1943)
!1945 = !DILocation(line: 473, column: 6, scope: !1827)
!1946 = !DILocation(line: 473, column: 26, scope: !1943)
!1947 = !DILocation(line: 474, column: 6, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 474, column: 6)
!1949 = !DILocation(line: 474, column: 11, scope: !1948)
!1950 = !DILocation(line: 474, column: 6, scope: !1827)
!1951 = !DILocation(line: 474, column: 27, scope: !1948)
!1952 = !DILocation(line: 475, column: 6, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 475, column: 6)
!1954 = !DILocation(line: 475, column: 11, scope: !1953)
!1955 = !DILocation(line: 475, column: 6, scope: !1827)
!1956 = !DILocation(line: 475, column: 32, scope: !1953)
!1957 = !DILocation(line: 477, column: 50, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1827, file: !24, line: 477, column: 6)
!1959 = !{i8 0, i8 2}
!1960 = !{}
!1961 = !DILocation(line: 477, column: 6, scope: !1827)
!1962 = !DILocation(line: 478, column: 3, scope: !1958)
!1963 = !DILocation(line: 478, column: 3, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !24, line: 478, column: 3)
!1965 = distinct !DILexicalBlock(scope: !1958, file: !24, line: 478, column: 3)
!1966 = !{i32 -2143033283}
!1967 = !DILocation(line: 478, column: 3, scope: !1965)
!1968 = !DILocation(line: 480, column: 3, scope: !1958)
!1969 = !DILocation(line: 480, column: 3, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1958, file: !24, line: 480, column: 3)
!1971 = !DILocation(line: 480, column: 3, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1970, file: !24, line: 480, column: 3)
!1973 = !DILocation(line: 480, column: 3, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !24, line: 480, column: 3)
!1975 = !{i64 2151934216, i64 2151934245, i64 2151934291, i64 2151934349, i64 2151934403, i64 2151934457, i64 2151934512, i64 2151934543}
!1976 = !DILocation(line: 483, column: 2, scope: !1827)
!1977 = !DILocation(line: 484, column: 1, scope: !1827)
!1978 = !DISubprogram(name: "kmalloc_trace", scope: !24, file: !24, line: 525, type: !1979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!45, !1981, !81, !1755}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1983, line: 11, flags: DIFlagFwdDecl)
!1983 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1984 = distinct !DISubprogram(name: "kmalloc_type", scope: !24, file: !24, line: 401, type: !1985, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1987)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!23, !81, !48}
!1987 = !{!1988, !1989}
!1988 = !DILocalVariable(name: "flags", arg: 1, scope: !1984, file: !24, line: 401, type: !81)
!1989 = !DILocalVariable(name: "caller", arg: 2, scope: !1984, file: !24, line: 401, type: !48)
!1990 = !DILocation(line: 401, column: 67, scope: !1984)
!1991 = !DILocation(line: 401, column: 88, scope: !1984)
!1992 = !DILocation(line: 407, column: 6, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1984, file: !24, line: 407, column: 6)
!1994 = !DILocation(line: 407, column: 6, scope: !1984)
!1995 = !DILocation(line: 413, column: 3, scope: !1993)
!1996 = !DILocation(line: 423, column: 38, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1984, file: !24, line: 423, column: 6)
!1998 = !DILocation(line: 423, column: 44, scope: !1997)
!1999 = !DILocation(line: 423, column: 6, scope: !1984)
!2000 = !DILocation(line: 424, column: 3, scope: !1997)
!2001 = !DILocation(line: 426, column: 3, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1984, file: !24, line: 425, column: 6)
!2003 = !DILocation(line: 429, column: 1, scope: !1984)
!2004 = !DISubprogram(name: "__kmalloc", scope: !24, file: !24, line: 488, type: !1753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2005 = !DISubprogram(name: "__compiletime_assert_173", scope: !24, file: !24, line: 478, type: !2006, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{null}
!2008 = distinct !DISubprogram(name: "native_save_fl", scope: !1770, file: !1770, line: 17, type: !1771, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2009)
!2009 = !{!2010}
!2010 = !DILocalVariable(name: "flags", scope: !2008, file: !1770, line: 19, type: !48)
!2011 = !DILocation(line: 19, column: 2, scope: !2008)
!2012 = !DILocation(line: 19, column: 16, scope: !2008)
!2013 = !DILocation(line: 26, column: 2, scope: !2008)
!2014 = !{i64 1524135, i64 1524156}
!2015 = !DILocation(line: 32, column: 9, scope: !2008)
!2016 = !DILocation(line: 33, column: 1, scope: !2008)
!2017 = !DILocation(line: 32, column: 2, scope: !2008)
!2018 = !DISubprogram(name: "kfree", scope: !24, file: !24, line: 227, type: !2019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{null, !2021}
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
