; ModuleID = 'drivers/acpi/acpica/psutils.c'
source_filename = "drivers/acpi/acpica/psutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_obj_named = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8, ptr, ptr, i32, i32 }
%union.acpi_parse_value = type { i64 }
%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%struct.acpi_parse_obj_common = type { ptr, i8, i8, i16, ptr, ptr, ptr, %union.acpi_parse_value, i8 }

@acpi_gbl_ps_node_cache = external dso_local global ptr, align 8
@acpi_gbl_ps_node_ext_cache = external dso_local global ptr, align 8
@acpi_gbl_current_scope = external dso_local global ptr, align 8
@acpi_gbl_capture_comments = external dso_local global i8, align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ps_create_scope_op(ptr noundef %aml) #0 align 16 !dbg !25 {
entry:
  %retval = alloca ptr, align 8
  %aml.addr = alloca ptr, align 8
  %scope_op = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %aml, ptr %aml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml.addr, metadata !795, metadata !DIExpression()), !dbg !797
  call void @llvm.lifetime.start.p0(i64 8, ptr %scope_op) #6, !dbg !798
  call void @llvm.dbg.declare(metadata ptr %scope_op, metadata !796, metadata !DIExpression()), !dbg !799
  %0 = load ptr, ptr %aml.addr, align 8, !dbg !800
  %call = call ptr @acpi_ps_alloc_op(i16 noundef zeroext 16, ptr noundef %0) #7, !dbg !801
  store ptr %call, ptr %scope_op, align 8, !dbg !802
  %1 = load ptr, ptr %scope_op, align 8, !dbg !803
  %tobool = icmp ne ptr %1, null, !dbg !803
  br i1 %tobool, label %if.end, label %if.then, !dbg !805

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !806
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !806

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %scope_op, align 8, !dbg !808
  %name = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %2, i32 0, i32 12, !dbg !809
  store i32 1600085852, ptr %name, align 4, !dbg !810
  %3 = load ptr, ptr %scope_op, align 8, !dbg !811
  store ptr %3, ptr %retval, align 8, !dbg !812
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !812

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %scope_op) #6, !dbg !813
  %4 = load ptr, ptr %retval, align 8, !dbg !813
  ret ptr %4, !dbg !813
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ps_alloc_op(i16 noundef zeroext %opcode, ptr noundef %aml) #0 align 16 !dbg !814 {
entry:
  %opcode.addr = alloca i16, align 2
  %aml.addr = alloca ptr, align 8
  %op = alloca ptr, align 8
  %op_info = alloca ptr, align 8
  %flags = alloca i8, align 1
  store i16 %opcode, ptr %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !818, metadata !DIExpression()), !dbg !823
  store ptr %aml, ptr %aml.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aml.addr, metadata !819, metadata !DIExpression()), !dbg !824
  call void @llvm.lifetime.start.p0(i64 8, ptr %op) #6, !dbg !825
  call void @llvm.dbg.declare(metadata ptr %op, metadata !820, metadata !DIExpression()), !dbg !826
  call void @llvm.lifetime.start.p0(i64 8, ptr %op_info) #6, !dbg !827
  call void @llvm.dbg.declare(metadata ptr %op_info, metadata !821, metadata !DIExpression()), !dbg !828
  call void @llvm.lifetime.start.p0(i64 1, ptr %flags) #6, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !822, metadata !DIExpression()), !dbg !830
  store i8 1, ptr %flags, align 1, !dbg !830
  %0 = load i16, ptr %opcode.addr, align 2, !dbg !831
  %call = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %0) #7, !dbg !832
  store ptr %call, ptr %op_info, align 8, !dbg !833
  %1 = load ptr, ptr %op_info, align 8, !dbg !834
  %flags1 = getelementptr inbounds %struct.acpi_opcode_info, ptr %1, i32 0, i32 2, !dbg !836
  %2 = load i16, ptr %flags1, align 4, !dbg !836
  %conv = zext i16 %2 to i32, !dbg !834
  %and = and i32 %conv, 32, !dbg !837
  %tobool = icmp ne i32 %and, 0, !dbg !837
  br i1 %tobool, label %if.then, label %if.else, !dbg !838

if.then:                                          ; preds = %entry
  store i8 4, ptr %flags, align 1, !dbg !839
  br label %if.end12, !dbg !841

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %op_info, align 8, !dbg !842
  %flags2 = getelementptr inbounds %struct.acpi_opcode_info, ptr %3, i32 0, i32 2, !dbg !844
  %4 = load i16, ptr %flags2, align 4, !dbg !844
  %conv3 = zext i16 %4 to i32, !dbg !842
  %and4 = and i32 %conv3, 64, !dbg !845
  %tobool5 = icmp ne i32 %and4, 0, !dbg !845
  br i1 %tobool5, label %if.then6, label %if.else7, !dbg !846

if.then6:                                         ; preds = %if.else
  store i8 2, ptr %flags, align 1, !dbg !847
  br label %if.end11, !dbg !849

if.else7:                                         ; preds = %if.else
  %5 = load i16, ptr %opcode.addr, align 2, !dbg !850
  %conv8 = zext i16 %5 to i32, !dbg !850
  %cmp = icmp eq i32 %conv8, 51, !dbg !852
  br i1 %cmp, label %if.then10, label %if.end, !dbg !853

if.then10:                                        ; preds = %if.else7
  store i8 8, ptr %flags, align 1, !dbg !854
  br label %if.end, !dbg !856

if.end:                                           ; preds = %if.then10, %if.else7
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  %6 = load i8, ptr %flags, align 1, !dbg !857
  %conv13 = zext i8 %6 to i32, !dbg !857
  %cmp14 = icmp eq i32 %conv13, 1, !dbg !859
  br i1 %cmp14, label %if.then16, label %if.else18, !dbg !860

if.then16:                                        ; preds = %if.end12
  %7 = load ptr, ptr @acpi_gbl_ps_node_cache, align 8, !dbg !861
  %call17 = call ptr @acpi_os_acquire_object(ptr noundef %7) #7, !dbg !863
  store ptr %call17, ptr %op, align 8, !dbg !864
  br label %if.end20, !dbg !865

if.else18:                                        ; preds = %if.end12
  %8 = load ptr, ptr @acpi_gbl_ps_node_ext_cache, align 8, !dbg !866
  %call19 = call ptr @acpi_os_acquire_object(ptr noundef %8) #7, !dbg !868
  store ptr %call19, ptr %op, align 8, !dbg !869
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then16
  %9 = load ptr, ptr %op, align 8, !dbg !870
  %tobool21 = icmp ne ptr %9, null, !dbg !870
  br i1 %tobool21, label %if.then22, label %if.end33, !dbg !872

if.then22:                                        ; preds = %if.end20
  %10 = load ptr, ptr %op, align 8, !dbg !873
  %11 = load i16, ptr %opcode.addr, align 2, !dbg !875
  call void @acpi_ps_init_op(ptr noundef %10, i16 noundef zeroext %11) #7, !dbg !876
  %12 = load ptr, ptr %aml.addr, align 8, !dbg !877
  %13 = load ptr, ptr %op, align 8, !dbg !878
  %aml23 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %13, i32 0, i32 4, !dbg !879
  store ptr %12, ptr %aml23, align 8, !dbg !880
  %14 = load i8, ptr %flags, align 1, !dbg !881
  %15 = load ptr, ptr %op, align 8, !dbg !882
  %flags24 = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %15, i32 0, i32 2, !dbg !883
  store i8 %14, ptr %flags24, align 1, !dbg !884
  %16 = load i16, ptr %opcode.addr, align 2, !dbg !885
  %conv25 = zext i16 %16 to i32, !dbg !885
  %cmp26 = icmp eq i32 %conv25, 16, !dbg !887
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !888

if.then28:                                        ; preds = %if.then22
  %17 = load ptr, ptr %op, align 8, !dbg !889
  store ptr %17, ptr @acpi_gbl_current_scope, align 8, !dbg !891
  br label %if.end29, !dbg !892

if.end29:                                         ; preds = %if.then28, %if.then22
  %18 = load i8, ptr @acpi_gbl_capture_comments, align 1, !dbg !893
  %tobool30 = icmp ne i8 %18, 0, !dbg !893
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !895

if.then31:                                        ; preds = %if.end29
  br label %if.end32, !dbg !896

if.end32:                                         ; preds = %if.then31, %if.end29
  br label %if.end33, !dbg !898

if.end33:                                         ; preds = %if.end32, %if.end20
  %19 = load ptr, ptr %op, align 8, !dbg !899
  call void @llvm.lifetime.end.p0(i64 1, ptr %flags) #6, !dbg !900
  call void @llvm.lifetime.end.p0(i64 8, ptr %op_info) #6, !dbg !900
  call void @llvm.lifetime.end.p0(i64 8, ptr %op) #6, !dbg !900
  ret ptr %19, !dbg !901
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ps_init_op(ptr noundef %op, i16 noundef zeroext %opcode) #0 align 16 !dbg !902 {
entry:
  %op.addr = alloca ptr, align 8
  %opcode.addr = alloca i16, align 2
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !906, metadata !DIExpression()), !dbg !908
  store i16 %opcode, ptr %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !907, metadata !DIExpression()), !dbg !909
  %0 = load ptr, ptr %op.addr, align 8, !dbg !910
  %descriptor_type = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 1, !dbg !911
  store i8 13, ptr %descriptor_type, align 8, !dbg !912
  %1 = load i16, ptr %opcode.addr, align 2, !dbg !913
  %2 = load ptr, ptr %op.addr, align 8, !dbg !914
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %2, i32 0, i32 3, !dbg !915
  store i16 %1, ptr %aml_opcode, align 2, !dbg !916
  ret void, !dbg !917
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !918 dso_local ptr @acpi_ps_get_opcode_info(i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_acquire_object(ptr noundef %cache) #4 align 16 !dbg !922 {
entry:
  %cache.addr = alloca ptr, align 8
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !930, metadata !DIExpression()), !dbg !942
  %0 = load ptr, ptr %cache.addr, align 8, !dbg !943
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #6, !dbg !944
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !931, metadata !DIExpression()), !dbg !944
  br label %do.body, !dbg !944

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #6, !dbg !945
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !934, metadata !DIExpression()), !dbg !945
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #6, !dbg !945
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !937, metadata !DIExpression()), !dbg !945
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !945
  %conv = zext i1 %cmp to i32, !dbg !945
  store i32 1, ptr %tmp, align 4, !dbg !945
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #6, !dbg !946
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #6, !dbg !946
  %1 = load i32, ptr %tmp, align 4, !dbg !945
  %call = call i64 @arch_local_save_flags() #7, !dbg !946
  store i64 %call, ptr %_flags, align 8, !dbg !946
  br label %do.cond, !dbg !946

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !946

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #6, !dbg !947
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !938, metadata !DIExpression()), !dbg !947
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #6, !dbg !947
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !941, metadata !DIExpression()), !dbg !947
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !947
  %conv6 = zext i1 %cmp5 to i32, !dbg !947
  store i32 1, ptr %tmp7, align 4, !dbg !947
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #6, !dbg !948
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #6, !dbg !948
  %2 = load i32, ptr %tmp7, align 4, !dbg !947
  %3 = load i64, ptr %_flags, align 8, !dbg !948
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #7, !dbg !948
  store i32 %call9, ptr %tmp8, align 4, !dbg !948
  %4 = load i32, ptr %tmp8, align 4, !dbg !948
  store i32 %4, ptr %tmp1, align 4, !dbg !946
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #6, !dbg !949
  %5 = load i32, ptr %tmp1, align 4, !dbg !944
  %tobool = icmp ne i32 %5, 0, !dbg !949
  %6 = zext i1 %tobool to i64, !dbg !949
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !949
  %call10 = call ptr @kmem_cache_zalloc(ptr noundef %0, i32 noundef %cond) #7, !dbg !950
  ret ptr %call10, !dbg !951
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ps_free_op(ptr noundef %op) #0 align 16 !dbg !952 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !956, metadata !DIExpression()), !dbg !957
  %0 = load ptr, ptr %op.addr, align 8, !dbg !958
  %aml_opcode = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 3, !dbg !960
  %1 = load i16, ptr %aml_opcode, align 2, !dbg !960
  %conv = zext i16 %1 to i32, !dbg !958
  %cmp = icmp eq i32 %conv, 54, !dbg !961
  br i1 %cmp, label %if.then, label %if.end, !dbg !962

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !963

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %op.addr, align 8, !dbg !965
  %flags = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %2, i32 0, i32 2, !dbg !967
  %3 = load i8, ptr %flags, align 1, !dbg !967
  %conv2 = zext i8 %3 to i32, !dbg !965
  %and = and i32 %conv2, 1, !dbg !968
  %tobool = icmp ne i32 %and, 0, !dbg !968
  br i1 %tobool, label %if.then3, label %if.else, !dbg !969

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr @acpi_gbl_ps_node_cache, align 8, !dbg !970
  %5 = load ptr, ptr %op.addr, align 8, !dbg !972
  %call = call i32 @acpi_os_release_object(ptr noundef %4, ptr noundef %5) #7, !dbg !973
  br label %if.end5, !dbg !974

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr @acpi_gbl_ps_node_ext_cache, align 8, !dbg !975
  %7 = load ptr, ptr %op.addr, align 8, !dbg !977
  %call4 = call i32 @acpi_os_release_object(ptr noundef %6, ptr noundef %7) #7, !dbg !978
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  ret void, !dbg !979
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !980 dso_local i32 @acpi_os_release_object(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ps_is_leading_char(i32 noundef %c) #0 align 16 !dbg !984 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !988, metadata !DIExpression()), !dbg !989
  %0 = load i32, ptr %c.addr, align 4, !dbg !990
  %cmp = icmp eq i32 %0, 95, !dbg !991
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !992

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %c.addr, align 4, !dbg !993
  %cmp1 = icmp uge i32 %1, 65, !dbg !994
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !995

land.rhs:                                         ; preds = %lor.rhs
  %2 = load i32, ptr %c.addr, align 4, !dbg !996
  %cmp2 = icmp ule i32 %2, 90, !dbg !997
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %3 = phi i1 [ false, %lor.rhs ], [ %cmp2, %land.rhs ], !dbg !998
  br label %lor.end, !dbg !992

lor.end:                                          ; preds = %land.end, %entry
  %4 = phi i1 [ true, %entry ], [ %3, %land.end ]
  %lor.ext = zext i1 %4 to i32, !dbg !992
  %conv = trunc i32 %lor.ext to i8, !dbg !999
  ret i8 %conv, !dbg !1000
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ps_get_name(ptr noundef %op) #0 align 16 !dbg !1001 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1005, metadata !DIExpression()), !dbg !1006
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1007
  %flags = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 2, !dbg !1009
  %1 = load i8, ptr %flags, align 1, !dbg !1009
  %conv = zext i8 %1 to i32, !dbg !1007
  %and = and i32 %conv, 1, !dbg !1010
  %tobool = icmp ne i32 %and, 0, !dbg !1010
  br i1 %tobool, label %if.then, label %if.end, !dbg !1011

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1012
  br label %return, !dbg !1012

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %op.addr, align 8, !dbg !1014
  %name = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %2, i32 0, i32 12, !dbg !1015
  %3 = load i32, ptr %name, align 4, !dbg !1015
  store i32 %3, ptr %retval, align 4, !dbg !1016
  br label %return, !dbg !1016

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !1017
  ret i32 %4, !dbg !1017
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ps_set_name(ptr noundef %op, i32 noundef %name) #0 align 16 !dbg !1018 {
entry:
  %op.addr = alloca ptr, align 8
  %name.addr = alloca i32, align 4
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1022, metadata !DIExpression()), !dbg !1024
  store i32 %name, ptr %name.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1023, metadata !DIExpression()), !dbg !1025
  %0 = load ptr, ptr %op.addr, align 8, !dbg !1026
  %flags = getelementptr inbounds %struct.acpi_parse_obj_common, ptr %0, i32 0, i32 2, !dbg !1028
  %1 = load i8, ptr %flags, align 1, !dbg !1028
  %conv = zext i8 %1 to i32, !dbg !1026
  %and = and i32 %conv, 1, !dbg !1029
  %tobool = icmp ne i32 %and, 0, !dbg !1029
  br i1 %tobool, label %if.then, label %if.end, !dbg !1030

if.then:                                          ; preds = %entry
  br label %return, !dbg !1031

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %name.addr, align 4, !dbg !1033
  %3 = load ptr, ptr %op.addr, align 8, !dbg !1034
  %name1 = getelementptr inbounds %struct.acpi_parse_obj_named, ptr %3, i32 0, i32 12, !dbg !1035
  store i32 %2, ptr %name1, align 4, !dbg !1036
  br label %return, !dbg !1037

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1037
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmem_cache_zalloc(ptr noundef %k, i32 noundef %flags) #4 align 16 !dbg !1038 {
entry:
  %k.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %k, ptr %k.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %k.addr, metadata !1043, metadata !DIExpression()), !dbg !1045
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1044, metadata !DIExpression()), !dbg !1046
  %0 = load ptr, ptr %k.addr, align 8, !dbg !1047
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1048
  %or = or i32 %1, 256, !dbg !1049
  %call = call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or) #7, !dbg !1050
  ret ptr %call, !dbg !1051
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #5 align 16 !dbg !1052 {
entry:
  %call = call i64 @native_save_fl() #7, !dbg !1056
  ret i64 %call, !dbg !1057
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #5 align 16 !dbg !1058 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1063, metadata !DIExpression()), !dbg !1064
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1065
  %and = and i64 %0, 512, !dbg !1066
  %tobool = icmp ne i64 %and, 0, !dbg !1067
  %lnot = xor i1 %tobool, true, !dbg !1067
  %lnot.ext = zext i1 %lnot to i32, !dbg !1067
  ret i32 %lnot.ext, !dbg !1068
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1069 dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #5 align 16 !dbg !1070 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #6, !dbg !1073
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1072, metadata !DIExpression()), !dbg !1074
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #6, !dbg !1075, !srcloc !1076
  %0 = load i64, ptr %flags, align 8, !dbg !1077
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #6, !dbg !1078
  ret i64 %0, !dbg !1079
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.psutils.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22psutils\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/psutils.ll drivers/acpi/acpica/psutils.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/psutils.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "baaf84c7fdf9d7351788b96057c1bc2a")
!2 = !{!3, !8, !11, !14}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !4, line: 19, baseType: !5)
!4 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !6, line: 24, baseType: !7)
!6 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!7 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !4, line: 21, baseType: !9)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !6, line: 27, baseType: !10)
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !4, line: 17, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !6, line: 21, baseType: !13)
!13 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !15, line: 154, baseType: !10)
!15 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 8, !"cf-protection-branch", i32 1}
!20 = !{i32 4, !"function_return_thunk_extern", i32 1}
!21 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!22 = !{i32 1, !"Code Model", i32 2}
!23 = !{i32 1, !"override-stack-alignment", i32 8}
!24 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!25 = distinct !DISubprogram(name: "acpi_ps_create_scope_op", scope: !1, file: !1, line: 30, type: !26, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !794)
!26 = !DISubroutineType(types: !27)
!27 = !{!28, !40}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !30, line: 891, size: 1600, elements: !31)
!30 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!31 = !{!32, !737, !753}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !29, file: !30, line: 892, baseType: !33, size: 448)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !30, line: 844, size: 448, elements: !34)
!34 = !{!35, !36, !37, !38, !39, !41, !42, !727, !736}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !33, file: !30, line: 845, baseType: !28, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !33, file: !30, line: 845, baseType: !11, size: 8, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !33, file: !30, line: 845, baseType: !11, size: 8, offset: 72)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !33, file: !30, line: 845, baseType: !3, size: 16, offset: 80)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !33, file: !30, line: 845, baseType: !40, size: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !33, file: !30, line: 845, baseType: !28, size: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !33, file: !30, line: 845, baseType: !43, size: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !30, line: 133, size: 384, elements: !45)
!45 = !{!46, !711, !712, !713, !714, !723, !724, !725, !726}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !44, file: !30, line: 134, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !49, line: 369, size: 576, elements: !50)
!49 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!50 = !{!51, !59, !75, !87, !100, !114, !124, !360, !377, !393, !406, !484, !496, !510, !520, !538, !560, !579, !598, !617, !630, !657, !674, !687, !701, !710}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !48, file: !49, line: 370, baseType: !52, size: 128)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !49, line: 73, size: 128, elements: !53)
!53 = !{!54, !55, !56, !57, !58}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !49, line: 74, baseType: !47, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !49, line: 74, baseType: !11, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !49, line: 74, baseType: !11, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !49, line: 74, baseType: !3, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !49, line: 74, baseType: !11, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !48, file: !49, line: 371, baseType: !60, size: 192)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !49, line: 76, size: 192, elements: !61)
!61 = !{!62, !63, !64, !65, !66, !67, !71}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !60, file: !49, line: 77, baseType: !47, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !60, file: !49, line: 77, baseType: !11, size: 8, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !60, file: !49, line: 77, baseType: !11, size: 8, offset: 72)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !60, file: !49, line: 77, baseType: !3, size: 16, offset: 80)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !60, file: !49, line: 77, baseType: !11, size: 8, offset: 96)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !60, file: !49, line: 77, baseType: !68, size: 24, offset: 104)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 24, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 3)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !60, file: !49, line: 78, baseType: !72, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !4, line: 23, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !6, line: 31, baseType: !74)
!74 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !48, file: !49, line: 372, baseType: !76, size: 256)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !49, line: 93, size: 256, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !86}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !76, file: !49, line: 94, baseType: !47, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !76, file: !49, line: 94, baseType: !11, size: 8, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !76, file: !49, line: 94, baseType: !11, size: 8, offset: 72)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !76, file: !49, line: 94, baseType: !3, size: 16, offset: 80)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !76, file: !49, line: 94, baseType: !11, size: 8, offset: 96)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !76, file: !49, line: 94, baseType: !84, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !76, file: !49, line: 94, baseType: !8, size: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !48, file: !49, line: 373, baseType: !88, size: 384)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !49, line: 97, size: 384, elements: !89)
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !88, file: !49, line: 98, baseType: !47, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !88, file: !49, line: 98, baseType: !11, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !49, line: 98, baseType: !11, size: 8, offset: 72)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !88, file: !49, line: 98, baseType: !3, size: 16, offset: 80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !88, file: !49, line: 98, baseType: !11, size: 8, offset: 96)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !88, file: !49, line: 98, baseType: !40, size: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !88, file: !49, line: 98, baseType: !8, size: 32, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !88, file: !49, line: 99, baseType: !8, size: 32, offset: 224)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !88, file: !49, line: 100, baseType: !40, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !88, file: !49, line: 101, baseType: !43, size: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !48, file: !49, line: 374, baseType: !101, size: 384)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !49, line: 104, size: 384, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109, !111, !112, !113}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !101, file: !49, line: 105, baseType: !47, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !101, file: !49, line: 105, baseType: !11, size: 8, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !49, line: 105, baseType: !11, size: 8, offset: 72)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !101, file: !49, line: 105, baseType: !3, size: 16, offset: 80)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !101, file: !49, line: 105, baseType: !11, size: 8, offset: 96)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !101, file: !49, line: 105, baseType: !43, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !101, file: !49, line: 106, baseType: !110, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !101, file: !49, line: 107, baseType: !40, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !101, file: !49, line: 108, baseType: !8, size: 32, offset: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !101, file: !49, line: 109, baseType: !8, size: 32, offset: 352)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !48, file: !49, line: 375, baseType: !115, size: 192)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !49, line: 118, size: 192, elements: !116)
!116 = !{!117, !118, !119, !120, !121, !122}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !115, file: !49, line: 119, baseType: !47, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !115, file: !49, line: 119, baseType: !11, size: 8, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !115, file: !49, line: 119, baseType: !11, size: 8, offset: 72)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !115, file: !49, line: 119, baseType: !3, size: 16, offset: 80)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !115, file: !49, line: 119, baseType: !11, size: 8, offset: 96)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !115, file: !49, line: 119, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !48, file: !49, line: 376, baseType: !125, size: 448)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !49, line: 144, size: 448, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !357, !358, !359}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !125, file: !49, line: 145, baseType: !47, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !125, file: !49, line: 145, baseType: !11, size: 8, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !49, line: 145, baseType: !11, size: 8, offset: 72)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !125, file: !49, line: 145, baseType: !3, size: 16, offset: 80)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !49, line: 145, baseType: !11, size: 8, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !125, file: !49, line: 145, baseType: !11, size: 8, offset: 104)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !125, file: !49, line: 146, baseType: !11, size: 8, offset: 112)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !125, file: !49, line: 147, baseType: !11, size: 8, offset: 120)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !125, file: !49, line: 148, baseType: !47, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !125, file: !49, line: 149, baseType: !47, size: 64, offset: 192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !125, file: !49, line: 150, baseType: !40, size: 64, offset: 256)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !125, file: !49, line: 154, baseType: !139, size: 64, offset: 320)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !125, file: !49, line: 151, size: 64, elements: !140)
!140 = !{!141, !356}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !139, file: !49, line: 152, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !30, line: 248, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!146, !148}
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !147, line: 421, baseType: !8)
!147 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !150, line: 37, size: 9024, elements: !151)
!150 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !302, !303, !304, !305, !306, !310, !312, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !339, !340, !341, !342, !343, !344, !345, !346, !348, !354}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !150, line: 38, baseType: !148, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !149, file: !150, line: 39, baseType: !11, size: 8, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !149, file: !150, line: 40, baseType: !11, size: 8, offset: 72)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !149, file: !150, line: 41, baseType: !3, size: 16, offset: 80)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !149, file: !150, line: 42, baseType: !11, size: 8, offset: 96)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !149, file: !150, line: 43, baseType: !11, size: 8, offset: 104)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !149, file: !150, line: 44, baseType: !11, size: 8, offset: 112)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !149, file: !150, line: 45, baseType: !160, size: 16, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !147, line: 445, baseType: !3)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !149, file: !150, line: 46, baseType: !11, size: 8, offset: 144)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !149, file: !150, line: 47, baseType: !11, size: 8, offset: 152)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !149, file: !150, line: 48, baseType: !11, size: 8, offset: 160)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !149, file: !150, line: 49, baseType: !11, size: 8, offset: 168)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !149, file: !150, line: 50, baseType: !11, size: 8, offset: 176)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !149, file: !150, line: 51, baseType: !11, size: 8, offset: 184)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !149, file: !150, line: 52, baseType: !11, size: 8, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !149, file: !150, line: 53, baseType: !11, size: 8, offset: 200)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !149, file: !150, line: 54, baseType: !40, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !149, file: !150, line: 55, baseType: !8, size: 32, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !149, file: !150, line: 56, baseType: !8, size: 32, offset: 352)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !149, file: !150, line: 57, baseType: !8, size: 32, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !149, file: !150, line: 58, baseType: !8, size: 32, offset: 416)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !149, file: !150, line: 60, baseType: !175, size: 640, offset: 448)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !30, line: 909, size: 640, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !300, !301}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !175, file: !30, line: 910, baseType: !40, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !175, file: !30, line: 911, baseType: !40, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !175, file: !30, line: 912, baseType: !40, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !175, file: !30, line: 913, baseType: !40, size: 64, offset: 192)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !175, file: !30, line: 914, baseType: !40, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !175, file: !30, line: 915, baseType: !28, size: 64, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !175, file: !30, line: 916, baseType: !43, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !175, file: !30, line: 917, baseType: !185, size: 64, offset: 448)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !30, line: 679, size: 640, elements: !187)
!187 = !{!188, !196, !209, !218, !227, !240, !254, !266, !278}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !186, file: !30, line: 680, baseType: !189, size: 128)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !30, line: 575, size: 128, elements: !190)
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !30, line: 576, baseType: !123, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !189, file: !30, line: 576, baseType: !11, size: 8, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !30, line: 576, baseType: !11, size: 8, offset: 72)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !189, file: !30, line: 576, baseType: !3, size: 16, offset: 80)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !189, file: !30, line: 576, baseType: !3, size: 16, offset: 96)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !186, file: !30, line: 681, baseType: !197, size: 384)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !30, line: 604, size: 384, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !197, file: !30, line: 605, baseType: !123, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !197, file: !30, line: 605, baseType: !11, size: 8, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !30, line: 605, baseType: !11, size: 8, offset: 72)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !197, file: !30, line: 605, baseType: !3, size: 16, offset: 80)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !197, file: !30, line: 605, baseType: !3, size: 16, offset: 96)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !197, file: !30, line: 606, baseType: !3, size: 16, offset: 112)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !197, file: !30, line: 607, baseType: !28, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !197, file: !30, line: 608, baseType: !40, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !197, file: !30, line: 609, baseType: !40, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !197, file: !30, line: 610, baseType: !72, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !186, file: !30, line: 682, baseType: !210, size: 192)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !30, line: 582, size: 192, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !30, line: 583, baseType: !123, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !210, file: !30, line: 583, baseType: !11, size: 8, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !210, file: !30, line: 583, baseType: !11, size: 8, offset: 72)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !210, file: !30, line: 583, baseType: !3, size: 16, offset: 80)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !210, file: !30, line: 583, baseType: !3, size: 16, offset: 96)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !210, file: !30, line: 584, baseType: !47, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !186, file: !30, line: 683, baseType: !219, size: 192)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !30, line: 616, size: 192, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !30, line: 617, baseType: !123, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !219, file: !30, line: 617, baseType: !11, size: 8, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !30, line: 617, baseType: !11, size: 8, offset: 72)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !219, file: !30, line: 617, baseType: !3, size: 16, offset: 80)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !219, file: !30, line: 617, baseType: !3, size: 16, offset: 96)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !219, file: !30, line: 618, baseType: !43, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !186, file: !30, line: 684, baseType: !228, size: 448)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !30, line: 621, size: 448, elements: !229)
!229 = !{!230, !231, !232, !233, !234, !235, !236, !237, !238, !239}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !30, line: 622, baseType: !123, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !228, file: !30, line: 622, baseType: !11, size: 8, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !228, file: !30, line: 622, baseType: !11, size: 8, offset: 72)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !228, file: !30, line: 622, baseType: !3, size: 16, offset: 80)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !228, file: !30, line: 622, baseType: !3, size: 16, offset: 96)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !228, file: !30, line: 623, baseType: !8, size: 32, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !228, file: !30, line: 624, baseType: !28, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !228, file: !30, line: 625, baseType: !40, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !228, file: !30, line: 626, baseType: !40, size: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !228, file: !30, line: 627, baseType: !8, size: 32, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !186, file: !30, line: 685, baseType: !241, size: 512)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !30, line: 590, size: 512, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !241, file: !30, line: 591, baseType: !123, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !241, file: !30, line: 591, baseType: !11, size: 8, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !30, line: 591, baseType: !11, size: 8, offset: 72)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !241, file: !30, line: 591, baseType: !3, size: 16, offset: 80)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !241, file: !30, line: 591, baseType: !3, size: 16, offset: 96)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !241, file: !30, line: 592, baseType: !8, size: 32, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !241, file: !30, line: 593, baseType: !47, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !241, file: !30, line: 594, baseType: !47, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !241, file: !30, line: 595, baseType: !148, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !241, file: !30, line: 596, baseType: !123, size: 64, offset: 384)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !241, file: !30, line: 597, baseType: !8, size: 32, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !186, file: !30, line: 686, baseType: !255, size: 320)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !30, line: 634, size: 320, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !30, line: 635, baseType: !123, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !255, file: !30, line: 635, baseType: !11, size: 8, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !30, line: 635, baseType: !11, size: 8, offset: 72)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !255, file: !30, line: 635, baseType: !3, size: 16, offset: 80)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !255, file: !30, line: 635, baseType: !3, size: 16, offset: 96)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !255, file: !30, line: 636, baseType: !11, size: 8, offset: 112)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !255, file: !30, line: 637, baseType: !148, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !255, file: !30, line: 638, baseType: !47, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !255, file: !30, line: 639, baseType: !72, size: 64, offset: 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !186, file: !30, line: 687, baseType: !267, size: 640)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !30, line: 646, size: 640, elements: !268)
!268 = !{!269, !270, !271, !272, !273, !274}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !267, file: !30, line: 647, baseType: !123, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !267, file: !30, line: 647, baseType: !11, size: 8, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !267, file: !30, line: 647, baseType: !11, size: 8, offset: 72)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !267, file: !30, line: 647, baseType: !3, size: 16, offset: 80)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !267, file: !30, line: 647, baseType: !3, size: 16, offset: 96)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !267, file: !30, line: 648, baseType: !275, size: 512, offset: 128)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 512, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 8)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !186, file: !30, line: 688, baseType: !279, size: 320)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !30, line: 669, size: 320, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288, !289}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !279, file: !30, line: 670, baseType: !123, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !279, file: !30, line: 670, baseType: !11, size: 8, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !279, file: !30, line: 670, baseType: !11, size: 8, offset: 72)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !279, file: !30, line: 670, baseType: !3, size: 16, offset: 80)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !279, file: !30, line: 670, baseType: !3, size: 16, offset: 96)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !279, file: !30, line: 671, baseType: !11, size: 8, offset: 112)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !279, file: !30, line: 672, baseType: !43, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !279, file: !30, line: 673, baseType: !47, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !279, file: !30, line: 674, baseType: !290, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !30, line: 660, size: 128, elements: !292)
!292 = !{!293, !299}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !291, file: !30, line: 661, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !147, line: 1061, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !298, !8, !123}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !147, line: 424, baseType: !123)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !291, file: !30, line: 662, baseType: !123, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !175, file: !30, line: 918, baseType: !28, size: 64, offset: 512)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !175, file: !30, line: 919, baseType: !8, size: 32, offset: 576)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !149, file: !150, line: 61, baseType: !8, size: 32, offset: 1088)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !149, file: !150, line: 62, baseType: !8, size: 32, offset: 1120)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !149, file: !150, line: 63, baseType: !3, size: 16, offset: 1152)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !149, file: !150, line: 64, baseType: !11, size: 8, offset: 1168)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !149, file: !150, line: 66, baseType: !307, size: 2688, offset: 1216)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2688, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 7)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !149, file: !150, line: 67, baseType: !311, size: 3072, offset: 3904)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 3072, elements: !276)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !149, file: !150, line: 68, baseType: !313, size: 576, offset: 6976)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 576, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 9)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !149, file: !150, line: 69, baseType: !110, size: 64, offset: 7552)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !149, file: !150, line: 71, baseType: !40, size: 64, offset: 7616)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !149, file: !150, line: 72, baseType: !110, size: 64, offset: 7680)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !149, file: !150, line: 73, baseType: !185, size: 64, offset: 7744)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !149, file: !150, line: 74, baseType: !43, size: 64, offset: 7808)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !149, file: !150, line: 75, baseType: !47, size: 64, offset: 7872)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !149, file: !150, line: 76, baseType: !43, size: 64, offset: 7936)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !149, file: !150, line: 77, baseType: !28, size: 64, offset: 8000)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !149, file: !150, line: 78, baseType: !47, size: 64, offset: 8064)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !149, file: !150, line: 79, baseType: !43, size: 64, offset: 8128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !149, file: !150, line: 80, baseType: !84, size: 64, offset: 8192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !149, file: !150, line: 81, baseType: !28, size: 64, offset: 8256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !149, file: !150, line: 82, baseType: !329, size: 64, offset: 8320)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !30, line: 718, size: 128, elements: !332)
!332 = !{!333, !334, !335, !336, !337, !338}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !331, file: !30, line: 722, baseType: !8, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !331, file: !30, line: 723, baseType: !8, size: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !331, file: !30, line: 724, baseType: !3, size: 16, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !331, file: !30, line: 725, baseType: !11, size: 8, offset: 80)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !331, file: !30, line: 726, baseType: !11, size: 8, offset: 88)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !331, file: !30, line: 727, baseType: !11, size: 8, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !149, file: !150, line: 83, baseType: !28, size: 64, offset: 8384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !149, file: !150, line: 84, baseType: !47, size: 64, offset: 8448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !149, file: !150, line: 85, baseType: !185, size: 64, offset: 8512)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !149, file: !150, line: 86, baseType: !47, size: 64, offset: 8576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !149, file: !150, line: 87, baseType: !185, size: 64, offset: 8640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !149, file: !150, line: 88, baseType: !28, size: 64, offset: 8704)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !149, file: !150, line: 89, baseType: !28, size: 64, offset: 8768)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !149, file: !150, line: 90, baseType: !347, size: 64, offset: 8832)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !149, file: !150, line: 91, baseType: !349, size: 64, offset: 8896)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !30, line: 652, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!146, !148, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !149, file: !150, line: 92, baseType: !355, size: 64, offset: 8960)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !30, line: 656, baseType: !143)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !139, file: !49, line: 153, baseType: !47, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !125, file: !49, line: 156, baseType: !8, size: 32, offset: 384)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !125, file: !49, line: 157, baseType: !160, size: 16, offset: 416)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !125, file: !49, line: 158, baseType: !11, size: 8, offset: 432)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !48, file: !49, line: 377, baseType: !361, size: 576)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !49, line: 122, size: 576, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !361, file: !49, line: 123, baseType: !47, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !361, file: !49, line: 123, baseType: !11, size: 8, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !361, file: !49, line: 123, baseType: !11, size: 8, offset: 72)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !361, file: !49, line: 123, baseType: !3, size: 16, offset: 80)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !49, line: 123, baseType: !11, size: 8, offset: 96)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !361, file: !49, line: 123, baseType: !11, size: 8, offset: 104)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !361, file: !49, line: 124, baseType: !3, size: 16, offset: 112)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !361, file: !49, line: 125, baseType: !123, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !361, file: !49, line: 126, baseType: !72, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !361, file: !49, line: 127, baseType: !347, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !361, file: !49, line: 128, baseType: !47, size: 64, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !49, line: 129, baseType: !47, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !361, file: !49, line: 130, baseType: !43, size: 64, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !361, file: !49, line: 131, baseType: !11, size: 8, offset: 512)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !48, file: !49, line: 378, baseType: !378, size: 512)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !49, line: 134, size: 512, elements: !379)
!379 = !{!380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !391, !392}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !378, file: !49, line: 135, baseType: !47, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !378, file: !49, line: 135, baseType: !11, size: 8, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !378, file: !49, line: 135, baseType: !11, size: 8, offset: 72)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !378, file: !49, line: 135, baseType: !3, size: 16, offset: 80)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !378, file: !49, line: 135, baseType: !11, size: 8, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !378, file: !49, line: 135, baseType: !11, size: 8, offset: 104)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !378, file: !49, line: 136, baseType: !43, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !378, file: !49, line: 137, baseType: !47, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !49, line: 138, baseType: !47, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !378, file: !49, line: 139, baseType: !390, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !147, line: 129, baseType: !72)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !378, file: !49, line: 140, baseType: !8, size: 32, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !378, file: !49, line: 141, baseType: !123, size: 64, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !48, file: !49, line: 379, baseType: !394, size: 320)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !49, line: 185, size: 320, elements: !395)
!395 = !{!396, !397, !398, !399, !400, !401, !405}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !394, file: !49, line: 186, baseType: !47, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !394, file: !49, line: 186, baseType: !11, size: 8, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !394, file: !49, line: 186, baseType: !11, size: 8, offset: 72)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !394, file: !49, line: 186, baseType: !3, size: 16, offset: 80)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !394, file: !49, line: 186, baseType: !11, size: 8, offset: 96)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !394, file: !49, line: 186, baseType: !402, size: 128, offset: 128)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 128, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 2)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !394, file: !49, line: 186, baseType: !47, size: 64, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !48, file: !49, line: 380, baseType: !407, size: 384)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !49, line: 188, size: 384, elements: !408)
!408 = !{!409, !410, !411, !412, !413, !414, !415, !416}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !407, file: !49, line: 189, baseType: !47, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !407, file: !49, line: 189, baseType: !11, size: 8, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !407, file: !49, line: 189, baseType: !11, size: 8, offset: 72)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !407, file: !49, line: 189, baseType: !3, size: 16, offset: 80)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !407, file: !49, line: 189, baseType: !11, size: 8, offset: 96)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !407, file: !49, line: 190, baseType: !402, size: 128, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !407, file: !49, line: 190, baseType: !47, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !407, file: !49, line: 190, baseType: !417, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !30, line: 480, size: 576, elements: !419)
!419 = !{!420, !421, !422, !423, !431, !446, !478, !479, !480, !481, !482, !483}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !418, file: !30, line: 481, baseType: !43, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !418, file: !30, line: 482, baseType: !417, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !418, file: !30, line: 483, baseType: !417, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !418, file: !30, line: 484, baseType: !424, size: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !30, line: 497, size: 256, elements: !426)
!426 = !{!427, !428, !429, !430}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !425, file: !30, line: 498, baseType: !424, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !30, line: 499, baseType: !424, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !425, file: !30, line: 500, baseType: !417, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !425, file: !30, line: 501, baseType: !8, size: 32, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !418, file: !30, line: 485, baseType: !432, size: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !30, line: 466, size: 320, elements: !434)
!434 = !{!435, !440, !441, !442, !443, !444, !445}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !433, file: !30, line: 467, baseType: !436, size: 128)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !30, line: 459, size: 128, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !436, file: !30, line: 460, baseType: !11, size: 8)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !436, file: !30, line: 461, baseType: !72, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !433, file: !30, line: 468, baseType: !436, size: 128, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !433, file: !30, line: 469, baseType: !3, size: 16, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !433, file: !30, line: 470, baseType: !11, size: 8, offset: 272)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !433, file: !30, line: 471, baseType: !11, size: 8, offset: 280)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !433, file: !30, line: 472, baseType: !11, size: 8, offset: 288)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !433, file: !30, line: 473, baseType: !11, size: 8, offset: 296)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !418, file: !30, line: 486, baseType: !447, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !30, line: 448, size: 192, elements: !449)
!449 = !{!450, !473, !474, !475, !476, !477}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !448, file: !30, line: 449, baseType: !451, size: 64)
!451 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !30, line: 438, size: 64, elements: !452)
!452 = !{!453, !454, !467}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !451, file: !30, line: 439, baseType: !43, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !451, file: !30, line: 440, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !30, line: 419, size: 256, elements: !457)
!457 = !{!458, !463, !464, !465, !466}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !456, file: !30, line: 420, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !147, line: 1058, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!8, !298, !8, !123}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !456, file: !30, line: 421, baseType: !123, size: 64, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !456, file: !30, line: 422, baseType: !43, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !456, file: !30, line: 423, baseType: !11, size: 8, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !456, file: !30, line: 424, baseType: !11, size: 8, offset: 200)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !451, file: !30, line: 441, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !30, line: 429, size: 128, elements: !470)
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !469, file: !30, line: 430, baseType: !43, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !30, line: 431, baseType: !468, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !448, file: !30, line: 450, baseType: !432, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !30, line: 451, baseType: !11, size: 8, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !448, file: !30, line: 452, baseType: !11, size: 8, offset: 136)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !448, file: !30, line: 453, baseType: !11, size: 8, offset: 144)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !448, file: !30, line: 454, baseType: !11, size: 8, offset: 152)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !418, file: !30, line: 487, baseType: !72, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !418, file: !30, line: 488, baseType: !8, size: 32, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !418, file: !30, line: 489, baseType: !3, size: 16, offset: 480)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !418, file: !30, line: 490, baseType: !3, size: 16, offset: 496)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !418, file: !30, line: 491, baseType: !11, size: 8, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !418, file: !30, line: 492, baseType: !11, size: 8, offset: 520)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !48, file: !49, line: 381, baseType: !485, size: 384)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !49, line: 193, size: 384, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !493, !494, !495}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !49, line: 194, baseType: !47, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !49, line: 194, baseType: !11, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !49, line: 194, baseType: !11, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !49, line: 194, baseType: !3, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !49, line: 194, baseType: !11, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !49, line: 194, baseType: !402, size: 128, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !49, line: 194, baseType: !47, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !485, file: !49, line: 194, baseType: !8, size: 32, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !485, file: !49, line: 195, baseType: !8, size: 32, offset: 352)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !48, file: !49, line: 382, baseType: !497, size: 384)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !49, line: 198, size: 384, elements: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507, !508}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !497, file: !49, line: 199, baseType: !47, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !497, file: !49, line: 199, baseType: !11, size: 8, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !497, file: !49, line: 199, baseType: !11, size: 8, offset: 72)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !497, file: !49, line: 199, baseType: !3, size: 16, offset: 80)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !49, line: 199, baseType: !11, size: 8, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !497, file: !49, line: 201, baseType: !11, size: 8, offset: 104)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !497, file: !49, line: 202, baseType: !11, size: 8, offset: 112)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !497, file: !49, line: 203, baseType: !402, size: 128, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !497, file: !49, line: 203, baseType: !47, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !497, file: !49, line: 203, baseType: !509, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !147, line: 128, baseType: !72)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !48, file: !49, line: 383, baseType: !511, size: 320)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !49, line: 206, size: 320, elements: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !519}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !511, file: !49, line: 207, baseType: !47, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !511, file: !49, line: 207, baseType: !11, size: 8, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !511, file: !49, line: 207, baseType: !11, size: 8, offset: 72)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !511, file: !49, line: 207, baseType: !3, size: 16, offset: 80)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !511, file: !49, line: 207, baseType: !11, size: 8, offset: 96)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !511, file: !49, line: 207, baseType: !402, size: 128, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !511, file: !49, line: 207, baseType: !47, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !48, file: !49, line: 384, baseType: !521, size: 384)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !49, line: 234, size: 384, elements: !522)
!522 = !{!523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !521, file: !49, line: 235, baseType: !47, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !521, file: !49, line: 235, baseType: !11, size: 8, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !521, file: !49, line: 235, baseType: !11, size: 8, offset: 72)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !521, file: !49, line: 235, baseType: !3, size: 16, offset: 80)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !521, file: !49, line: 235, baseType: !11, size: 8, offset: 96)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !521, file: !49, line: 235, baseType: !11, size: 8, offset: 104)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !521, file: !49, line: 235, baseType: !11, size: 8, offset: 112)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !521, file: !49, line: 235, baseType: !11, size: 8, offset: 120)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !521, file: !49, line: 235, baseType: !43, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !521, file: !49, line: 235, baseType: !8, size: 32, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !521, file: !49, line: 235, baseType: !8, size: 32, offset: 224)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !521, file: !49, line: 235, baseType: !8, size: 32, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !521, file: !49, line: 235, baseType: !11, size: 8, offset: 288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !521, file: !49, line: 235, baseType: !11, size: 8, offset: 296)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !521, file: !49, line: 235, baseType: !47, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !48, file: !49, line: 385, baseType: !539, size: 576)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !49, line: 238, size: 576, elements: !540)
!540 = !{!541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !539, file: !49, line: 239, baseType: !47, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !539, file: !49, line: 239, baseType: !11, size: 8, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !539, file: !49, line: 239, baseType: !11, size: 8, offset: 72)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !539, file: !49, line: 239, baseType: !3, size: 16, offset: 80)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !49, line: 239, baseType: !11, size: 8, offset: 96)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !539, file: !49, line: 239, baseType: !11, size: 8, offset: 104)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !539, file: !49, line: 239, baseType: !11, size: 8, offset: 112)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !539, file: !49, line: 239, baseType: !11, size: 8, offset: 120)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !539, file: !49, line: 239, baseType: !43, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !539, file: !49, line: 239, baseType: !8, size: 32, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !539, file: !49, line: 239, baseType: !8, size: 32, offset: 224)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !539, file: !49, line: 239, baseType: !8, size: 32, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !539, file: !49, line: 239, baseType: !11, size: 8, offset: 288)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !539, file: !49, line: 239, baseType: !11, size: 8, offset: 296)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !539, file: !49, line: 239, baseType: !3, size: 16, offset: 304)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !539, file: !49, line: 240, baseType: !47, size: 64, offset: 320)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !539, file: !49, line: 241, baseType: !40, size: 64, offset: 384)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !539, file: !49, line: 242, baseType: !3, size: 16, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !539, file: !49, line: 243, baseType: !40, size: 64, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !48, file: !49, line: 386, baseType: !561, size: 384)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !49, line: 263, size: 384, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !561, file: !49, line: 264, baseType: !47, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !561, file: !49, line: 264, baseType: !11, size: 8, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !561, file: !49, line: 264, baseType: !11, size: 8, offset: 72)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !561, file: !49, line: 264, baseType: !3, size: 16, offset: 80)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !561, file: !49, line: 264, baseType: !11, size: 8, offset: 96)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !561, file: !49, line: 264, baseType: !11, size: 8, offset: 104)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !561, file: !49, line: 264, baseType: !11, size: 8, offset: 112)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !561, file: !49, line: 264, baseType: !11, size: 8, offset: 120)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !561, file: !49, line: 264, baseType: !43, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !561, file: !49, line: 264, baseType: !8, size: 32, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !561, file: !49, line: 264, baseType: !8, size: 32, offset: 224)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !561, file: !49, line: 264, baseType: !8, size: 32, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !561, file: !49, line: 264, baseType: !11, size: 8, offset: 288)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !561, file: !49, line: 264, baseType: !11, size: 8, offset: 296)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !561, file: !49, line: 264, baseType: !11, size: 8, offset: 304)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !561, file: !49, line: 265, baseType: !47, size: 64, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !48, file: !49, line: 387, baseType: !580, size: 448)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !49, line: 246, size: 448, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !580, file: !49, line: 247, baseType: !47, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !580, file: !49, line: 247, baseType: !11, size: 8, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !580, file: !49, line: 247, baseType: !11, size: 8, offset: 72)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !580, file: !49, line: 247, baseType: !3, size: 16, offset: 80)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !580, file: !49, line: 247, baseType: !11, size: 8, offset: 96)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !580, file: !49, line: 247, baseType: !11, size: 8, offset: 104)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !580, file: !49, line: 247, baseType: !11, size: 8, offset: 112)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !580, file: !49, line: 247, baseType: !11, size: 8, offset: 120)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !580, file: !49, line: 247, baseType: !43, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !580, file: !49, line: 247, baseType: !8, size: 32, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !580, file: !49, line: 247, baseType: !8, size: 32, offset: 224)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !580, file: !49, line: 247, baseType: !8, size: 32, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !580, file: !49, line: 247, baseType: !11, size: 8, offset: 288)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !580, file: !49, line: 247, baseType: !11, size: 8, offset: 296)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !580, file: !49, line: 247, baseType: !47, size: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !580, file: !49, line: 248, baseType: !47, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !48, file: !49, line: 388, baseType: !599, size: 448)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !49, line: 251, size: 448, elements: !600)
!600 = !{!601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !599, file: !49, line: 252, baseType: !47, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !599, file: !49, line: 252, baseType: !11, size: 8, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !49, line: 252, baseType: !11, size: 8, offset: 72)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !599, file: !49, line: 252, baseType: !3, size: 16, offset: 80)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !599, file: !49, line: 252, baseType: !11, size: 8, offset: 96)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !599, file: !49, line: 252, baseType: !11, size: 8, offset: 104)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !599, file: !49, line: 252, baseType: !11, size: 8, offset: 112)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !599, file: !49, line: 252, baseType: !11, size: 8, offset: 120)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !599, file: !49, line: 252, baseType: !43, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !599, file: !49, line: 252, baseType: !8, size: 32, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !599, file: !49, line: 252, baseType: !8, size: 32, offset: 224)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !599, file: !49, line: 252, baseType: !8, size: 32, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !599, file: !49, line: 252, baseType: !11, size: 8, offset: 288)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !599, file: !49, line: 252, baseType: !11, size: 8, offset: 296)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !599, file: !49, line: 257, baseType: !47, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !599, file: !49, line: 258, baseType: !47, size: 64, offset: 384)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !48, file: !49, line: 389, baseType: !618, size: 512)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !49, line: 274, size: 512, elements: !619)
!619 = !{!620, !621, !622, !623, !624, !625, !626, !627, !628, !629}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !618, file: !49, line: 275, baseType: !47, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !618, file: !49, line: 275, baseType: !11, size: 8, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !618, file: !49, line: 275, baseType: !11, size: 8, offset: 72)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !618, file: !49, line: 275, baseType: !3, size: 16, offset: 80)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !49, line: 275, baseType: !11, size: 8, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !618, file: !49, line: 275, baseType: !43, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !618, file: !49, line: 276, baseType: !8, size: 32, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !618, file: !49, line: 277, baseType: !294, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !618, file: !49, line: 278, baseType: !123, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !618, file: !49, line: 279, baseType: !402, size: 128, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !48, file: !49, line: 390, baseType: !631, size: 576)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !49, line: 282, size: 576, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !646, !647, !648, !649, !655, !656}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !631, file: !49, line: 283, baseType: !47, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !631, file: !49, line: 283, baseType: !11, size: 8, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !631, file: !49, line: 283, baseType: !11, size: 8, offset: 72)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !631, file: !49, line: 283, baseType: !3, size: 16, offset: 80)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !49, line: 283, baseType: !11, size: 8, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !631, file: !49, line: 283, baseType: !11, size: 8, offset: 104)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !631, file: !49, line: 284, baseType: !11, size: 8, offset: 112)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !631, file: !49, line: 285, baseType: !641, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !147, line: 1093, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!146, !8, !390, !8, !645, !123, !123}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !631, file: !49, line: 286, baseType: !43, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !631, file: !49, line: 287, baseType: !123, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !631, file: !49, line: 288, baseType: !123, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !631, file: !49, line: 289, baseType: !650, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !147, line: 1126, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!146, !298, !8, !123, !654}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !631, file: !49, line: 290, baseType: !47, size: 64, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !631, file: !49, line: 291, baseType: !47, size: 64, offset: 512)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !48, file: !49, line: 391, baseType: !658, size: 512)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !49, line: 309, size: 512, elements: !659)
!659 = !{!660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !658, file: !49, line: 310, baseType: !47, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !658, file: !49, line: 310, baseType: !11, size: 8, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !658, file: !49, line: 310, baseType: !11, size: 8, offset: 72)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !658, file: !49, line: 310, baseType: !3, size: 16, offset: 80)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !49, line: 310, baseType: !11, size: 8, offset: 96)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !658, file: !49, line: 310, baseType: !11, size: 8, offset: 104)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !658, file: !49, line: 311, baseType: !11, size: 8, offset: 112)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !658, file: !49, line: 312, baseType: !11, size: 8, offset: 120)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !658, file: !49, line: 313, baseType: !123, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !658, file: !49, line: 314, baseType: !43, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !658, file: !49, line: 315, baseType: !110, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !658, file: !49, line: 316, baseType: !40, size: 64, offset: 320)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !658, file: !49, line: 317, baseType: !40, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !658, file: !49, line: 318, baseType: !8, size: 32, offset: 448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !48, file: !49, line: 392, baseType: !675, size: 448)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !49, line: 342, size: 448, elements: !676)
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !675, file: !49, line: 343, baseType: !47, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !675, file: !49, line: 343, baseType: !11, size: 8, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !675, file: !49, line: 343, baseType: !11, size: 8, offset: 72)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !675, file: !49, line: 343, baseType: !3, size: 16, offset: 80)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !675, file: !49, line: 343, baseType: !11, size: 8, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !675, file: !49, line: 343, baseType: !43, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !675, file: !49, line: 344, baseType: !43, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !675, file: !49, line: 345, baseType: !123, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !675, file: !49, line: 346, baseType: !40, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !675, file: !49, line: 347, baseType: !8, size: 32, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !48, file: !49, line: 393, baseType: !688, size: 256)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !49, line: 352, size: 256, elements: !689)
!689 = !{!690, !691, !692, !693, !694, !695, !700}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !688, file: !49, line: 353, baseType: !47, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !688, file: !49, line: 353, baseType: !11, size: 8, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !688, file: !49, line: 353, baseType: !11, size: 8, offset: 72)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !688, file: !49, line: 353, baseType: !3, size: 16, offset: 80)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !688, file: !49, line: 353, baseType: !11, size: 8, offset: 96)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !688, file: !49, line: 353, baseType: !696, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !147, line: 1064, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !298, !123}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !688, file: !49, line: 354, baseType: !123, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !48, file: !49, line: 394, baseType: !702, size: 192)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !49, line: 359, size: 192, elements: !703)
!703 = !{!704, !705, !706, !707, !708, !709}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !702, file: !49, line: 360, baseType: !47, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !702, file: !49, line: 360, baseType: !11, size: 8, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !702, file: !49, line: 360, baseType: !11, size: 8, offset: 72)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !702, file: !49, line: 360, baseType: !3, size: 16, offset: 80)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !702, file: !49, line: 360, baseType: !11, size: 8, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !702, file: !49, line: 360, baseType: !47, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !48, file: !49, line: 401, baseType: !44, size: 384)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !44, file: !30, line: 135, baseType: !11, size: 8, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !44, file: !30, line: 136, baseType: !11, size: 8, offset: 72)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !44, file: !30, line: 137, baseType: !3, size: 16, offset: 80)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !44, file: !30, line: 138, baseType: !715, size: 32, offset: 96)
!715 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !716, line: 328, size: 32, elements: !717)
!716 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !715, file: !716, line: 329, baseType: !8, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !715, file: !716, line: 330, baseType: !720, size: 32)
!720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 32, elements: !721)
!721 = !{!722}
!722 = !DISubrange(count: 4)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !44, file: !30, line: 139, baseType: !43, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !44, file: !30, line: 140, baseType: !43, size: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !44, file: !30, line: 141, baseType: !43, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !44, file: !30, line: 142, baseType: !160, size: 16, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !33, file: !30, line: 845, baseType: !728, size: 64, offset: 320)
!728 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !30, line: 732, size: 64, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !728, file: !30, line: 733, baseType: !72, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !728, file: !30, line: 734, baseType: !8, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !728, file: !30, line: 735, baseType: !84, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !728, file: !30, line: 736, baseType: !40, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !728, file: !30, line: 737, baseType: !84, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !728, file: !30, line: 738, baseType: !28, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !33, file: !30, line: 845, baseType: !11, size: 8, offset: 384)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !29, file: !30, line: 893, baseType: !738, size: 640)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !30, line: 851, size: 640, elements: !739)
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !738, file: !30, line: 852, baseType: !28, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !738, file: !30, line: 852, baseType: !11, size: 8, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !738, file: !30, line: 852, baseType: !11, size: 8, offset: 72)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !738, file: !30, line: 852, baseType: !3, size: 16, offset: 80)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !738, file: !30, line: 852, baseType: !40, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !738, file: !30, line: 852, baseType: !28, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !738, file: !30, line: 852, baseType: !43, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !738, file: !30, line: 852, baseType: !728, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !738, file: !30, line: 852, baseType: !11, size: 8, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !738, file: !30, line: 852, baseType: !84, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !738, file: !30, line: 853, baseType: !40, size: 64, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !738, file: !30, line: 854, baseType: !8, size: 32, offset: 576)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !738, file: !30, line: 855, baseType: !8, size: 32, offset: 608)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !29, file: !30, line: 894, baseType: !754, size: 1600)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !30, line: 862, size: 1600, elements: !755)
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !754, file: !30, line: 863, baseType: !28, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !754, file: !30, line: 863, baseType: !11, size: 8, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !30, line: 863, baseType: !11, size: 8, offset: 72)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !754, file: !30, line: 863, baseType: !3, size: 16, offset: 80)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !754, file: !30, line: 863, baseType: !40, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !754, file: !30, line: 863, baseType: !28, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !754, file: !30, line: 863, baseType: !43, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !754, file: !30, line: 863, baseType: !728, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !754, file: !30, line: 863, baseType: !11, size: 8, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !754, file: !30, line: 863, baseType: !28, size: 64, offset: 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !754, file: !30, line: 864, baseType: !28, size: 64, offset: 512)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !754, file: !30, line: 865, baseType: !84, size: 64, offset: 576)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !754, file: !30, line: 866, baseType: !11, size: 8, offset: 640)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !754, file: !30, line: 867, baseType: !84, size: 64, offset: 704)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !754, file: !30, line: 868, baseType: !84, size: 64, offset: 768)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !754, file: !30, line: 869, baseType: !84, size: 64, offset: 832)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !754, file: !30, line: 870, baseType: !720, size: 32, offset: 896)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !754, file: !30, line: 871, baseType: !8, size: 32, offset: 928)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !754, file: !30, line: 872, baseType: !8, size: 32, offset: 960)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !754, file: !30, line: 873, baseType: !8, size: 32, offset: 992)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !754, file: !30, line: 874, baseType: !8, size: 32, offset: 1024)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !754, file: !30, line: 875, baseType: !8, size: 32, offset: 1056)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !754, file: !30, line: 876, baseType: !8, size: 32, offset: 1088)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !754, file: !30, line: 877, baseType: !8, size: 32, offset: 1120)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !754, file: !30, line: 878, baseType: !8, size: 32, offset: 1152)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !754, file: !30, line: 879, baseType: !8, size: 32, offset: 1184)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !754, file: !30, line: 880, baseType: !8, size: 32, offset: 1216)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !754, file: !30, line: 881, baseType: !8, size: 32, offset: 1248)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !754, file: !30, line: 882, baseType: !8, size: 32, offset: 1280)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !754, file: !30, line: 883, baseType: !8, size: 32, offset: 1312)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !754, file: !30, line: 884, baseType: !3, size: 16, offset: 1344)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !754, file: !30, line: 885, baseType: !11, size: 8, offset: 1360)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !754, file: !30, line: 886, baseType: !11, size: 8, offset: 1368)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !754, file: !30, line: 887, baseType: !11, size: 8, offset: 1376)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !754, file: !30, line: 888, baseType: !791, size: 160, offset: 1384)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 160, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 20)
!794 = !{!795, !796}
!795 = !DILocalVariable(name: "aml", arg: 1, scope: !25, file: !1, line: 30, type: !40)
!796 = !DILocalVariable(name: "scope_op", scope: !25, file: !1, line: 32, type: !28)
!797 = !DILocation(line: 30, column: 54, scope: !25)
!798 = !DILocation(line: 32, column: 2, scope: !25)
!799 = !DILocation(line: 32, column: 27, scope: !25)
!800 = !DILocation(line: 34, column: 44, scope: !25)
!801 = !DILocation(line: 34, column: 13, scope: !25)
!802 = !DILocation(line: 34, column: 11, scope: !25)
!803 = !DILocation(line: 35, column: 7, scope: !804)
!804 = distinct !DILexicalBlock(scope: !25, file: !1, line: 35, column: 6)
!805 = !DILocation(line: 35, column: 6, scope: !25)
!806 = !DILocation(line: 36, column: 3, scope: !807)
!807 = distinct !DILexicalBlock(scope: !804, file: !1, line: 35, column: 17)
!808 = !DILocation(line: 39, column: 2, scope: !25)
!809 = !DILocation(line: 39, column: 18, scope: !25)
!810 = !DILocation(line: 39, column: 23, scope: !25)
!811 = !DILocation(line: 40, column: 10, scope: !25)
!812 = !DILocation(line: 40, column: 2, scope: !25)
!813 = !DILocation(line: 41, column: 1, scope: !25)
!814 = distinct !DISubprogram(name: "acpi_ps_alloc_op", scope: !1, file: !1, line: 85, type: !815, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !817)
!815 = !DISubroutineType(types: !816)
!816 = !{!28, !3, !40}
!817 = !{!818, !819, !820, !821, !822}
!818 = !DILocalVariable(name: "opcode", arg: 1, scope: !814, file: !1, line: 85, type: !3)
!819 = !DILocalVariable(name: "aml", arg: 2, scope: !814, file: !1, line: 85, type: !40)
!820 = !DILocalVariable(name: "op", scope: !814, file: !1, line: 87, type: !28)
!821 = !DILocalVariable(name: "op_info", scope: !814, file: !1, line: 88, type: !329)
!822 = !DILocalVariable(name: "flags", scope: !814, file: !1, line: 89, type: !11)
!823 = !DILocation(line: 85, column: 47, scope: !814)
!824 = !DILocation(line: 85, column: 59, scope: !814)
!825 = !DILocation(line: 87, column: 2, scope: !814)
!826 = !DILocation(line: 87, column: 27, scope: !814)
!827 = !DILocation(line: 88, column: 2, scope: !814)
!828 = !DILocation(line: 88, column: 33, scope: !814)
!829 = !DILocation(line: 89, column: 2, scope: !814)
!830 = !DILocation(line: 89, column: 5, scope: !814)
!831 = !DILocation(line: 93, column: 36, scope: !814)
!832 = !DILocation(line: 93, column: 12, scope: !814)
!833 = !DILocation(line: 93, column: 10, scope: !814)
!834 = !DILocation(line: 97, column: 6, scope: !835)
!835 = distinct !DILexicalBlock(scope: !814, file: !1, line: 97, column: 6)
!836 = !DILocation(line: 97, column: 15, scope: !835)
!837 = !DILocation(line: 97, column: 21, scope: !835)
!838 = !DILocation(line: 97, column: 6, scope: !814)
!839 = !DILocation(line: 98, column: 9, scope: !840)
!840 = distinct !DILexicalBlock(scope: !835, file: !1, line: 97, column: 34)
!841 = !DILocation(line: 99, column: 2, scope: !840)
!842 = !DILocation(line: 99, column: 13, scope: !843)
!843 = distinct !DILexicalBlock(scope: !835, file: !1, line: 99, column: 13)
!844 = !DILocation(line: 99, column: 22, scope: !843)
!845 = !DILocation(line: 99, column: 28, scope: !843)
!846 = !DILocation(line: 99, column: 13, scope: !835)
!847 = !DILocation(line: 100, column: 9, scope: !848)
!848 = distinct !DILexicalBlock(scope: !843, file: !1, line: 99, column: 41)
!849 = !DILocation(line: 101, column: 2, scope: !848)
!850 = !DILocation(line: 101, column: 13, scope: !851)
!851 = distinct !DILexicalBlock(scope: !843, file: !1, line: 101, column: 13)
!852 = !DILocation(line: 101, column: 20, scope: !851)
!853 = !DILocation(line: 101, column: 13, scope: !843)
!854 = !DILocation(line: 102, column: 9, scope: !855)
!855 = distinct !DILexicalBlock(scope: !851, file: !1, line: 101, column: 44)
!856 = !DILocation(line: 103, column: 2, scope: !855)
!857 = !DILocation(line: 107, column: 6, scope: !858)
!858 = distinct !DILexicalBlock(scope: !814, file: !1, line: 107, column: 6)
!859 = !DILocation(line: 107, column: 12, scope: !858)
!860 = !DILocation(line: 107, column: 6, scope: !814)
!861 = !DILocation(line: 111, column: 31, scope: !862)
!862 = distinct !DILexicalBlock(scope: !858, file: !1, line: 107, column: 37)
!863 = !DILocation(line: 111, column: 8, scope: !862)
!864 = !DILocation(line: 111, column: 6, scope: !862)
!865 = !DILocation(line: 112, column: 2, scope: !862)
!866 = !DILocation(line: 115, column: 31, scope: !867)
!867 = distinct !DILexicalBlock(scope: !858, file: !1, line: 112, column: 9)
!868 = !DILocation(line: 115, column: 8, scope: !867)
!869 = !DILocation(line: 115, column: 6, scope: !867)
!870 = !DILocation(line: 120, column: 6, scope: !871)
!871 = distinct !DILexicalBlock(scope: !814, file: !1, line: 120, column: 6)
!872 = !DILocation(line: 120, column: 6, scope: !814)
!873 = !DILocation(line: 121, column: 19, scope: !874)
!874 = distinct !DILexicalBlock(scope: !871, file: !1, line: 120, column: 10)
!875 = !DILocation(line: 121, column: 23, scope: !874)
!876 = !DILocation(line: 121, column: 3, scope: !874)
!877 = !DILocation(line: 122, column: 20, scope: !874)
!878 = !DILocation(line: 122, column: 3, scope: !874)
!879 = !DILocation(line: 122, column: 14, scope: !874)
!880 = !DILocation(line: 122, column: 18, scope: !874)
!881 = !DILocation(line: 123, column: 22, scope: !874)
!882 = !DILocation(line: 123, column: 3, scope: !874)
!883 = !DILocation(line: 123, column: 14, scope: !874)
!884 = !DILocation(line: 123, column: 20, scope: !874)
!885 = !DILocation(line: 126, column: 7, scope: !886)
!886 = distinct !DILexicalBlock(scope: !874, file: !1, line: 126, column: 7)
!887 = !DILocation(line: 126, column: 14, scope: !886)
!888 = !DILocation(line: 126, column: 7, scope: !874)
!889 = !DILocation(line: 127, column: 29, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !1, line: 126, column: 31)
!891 = !DILocation(line: 127, column: 27, scope: !890)
!892 = !DILocation(line: 128, column: 3, scope: !890)
!893 = !DILocation(line: 130, column: 7, scope: !894)
!894 = distinct !DILexicalBlock(scope: !874, file: !1, line: 130, column: 7)
!895 = !DILocation(line: 130, column: 7, scope: !874)
!896 = !DILocation(line: 132, column: 3, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !1, line: 130, column: 34)
!898 = !DILocation(line: 133, column: 2, scope: !874)
!899 = !DILocation(line: 135, column: 10, scope: !814)
!900 = !DILocation(line: 136, column: 1, scope: !814)
!901 = !DILocation(line: 135, column: 2, scope: !814)
!902 = distinct !DISubprogram(name: "acpi_ps_init_op", scope: !1, file: !1, line: 56, type: !903, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{null, !28, !3}
!905 = !{!906, !907}
!906 = !DILocalVariable(name: "op", arg: 1, scope: !902, file: !1, line: 56, type: !28)
!907 = !DILocalVariable(name: "opcode", arg: 2, scope: !902, file: !1, line: 56, type: !3)
!908 = !DILocation(line: 56, column: 47, scope: !902)
!909 = !DILocation(line: 56, column: 55, scope: !902)
!910 = !DILocation(line: 60, column: 2, scope: !902)
!911 = !DILocation(line: 60, column: 13, scope: !902)
!912 = !DILocation(line: 60, column: 29, scope: !902)
!913 = !DILocation(line: 61, column: 26, scope: !902)
!914 = !DILocation(line: 61, column: 2, scope: !902)
!915 = !DILocation(line: 61, column: 13, scope: !902)
!916 = !DILocation(line: 61, column: 24, scope: !902)
!917 = !DILocation(line: 68, column: 1, scope: !902)
!918 = !DISubprogram(name: "acpi_ps_get_opcode_info", scope: !919, file: !919, line: 108, type: !920, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!919 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!920 = !DISubroutineType(types: !921)
!921 = !{!329, !3}
!922 = distinct !DISubprogram(name: "acpi_os_acquire_object", scope: !923, file: !923, line: 65, type: !924, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !929)
!923 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!924 = !DISubroutineType(types: !925)
!925 = !{!123, !926}
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !928, line: 11, flags: DIFlagFwdDecl)
!928 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!929 = !{!930, !931, !934, !937, !938, !941}
!930 = !DILocalVariable(name: "cache", arg: 1, scope: !922, file: !923, line: 65, type: !926)
!931 = !DILocalVariable(name: "_flags", scope: !932, file: !923, line: 68, type: !933)
!932 = distinct !DILexicalBlock(scope: !922, file: !923, line: 68, column: 6)
!933 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!934 = !DILocalVariable(name: "__dummy", scope: !935, file: !923, line: 68, type: !933)
!935 = distinct !DILexicalBlock(scope: !936, file: !923, line: 68, column: 6)
!936 = distinct !DILexicalBlock(scope: !932, file: !923, line: 68, column: 6)
!937 = !DILocalVariable(name: "__dummy2", scope: !935, file: !923, line: 68, type: !933)
!938 = !DILocalVariable(name: "__dummy", scope: !939, file: !923, line: 68, type: !933)
!939 = distinct !DILexicalBlock(scope: !940, file: !923, line: 68, column: 6)
!940 = distinct !DILexicalBlock(scope: !932, file: !923, line: 68, column: 6)
!941 = !DILocalVariable(name: "__dummy2", scope: !939, file: !923, line: 68, type: !933)
!942 = !DILocation(line: 65, column: 59, scope: !922)
!943 = !DILocation(line: 67, column: 27, scope: !922)
!944 = !DILocation(line: 68, column: 6, scope: !932)
!945 = !DILocation(line: 68, column: 6, scope: !935)
!946 = !DILocation(line: 68, column: 6, scope: !936)
!947 = !DILocation(line: 68, column: 6, scope: !939)
!948 = !DILocation(line: 68, column: 6, scope: !940)
!949 = !DILocation(line: 68, column: 6, scope: !922)
!950 = !DILocation(line: 67, column: 9, scope: !922)
!951 = !DILocation(line: 67, column: 2, scope: !922)
!952 = distinct !DISubprogram(name: "acpi_ps_free_op", scope: !1, file: !1, line: 151, type: !953, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !955)
!953 = !DISubroutineType(types: !954)
!954 = !{null, !28}
!955 = !{!956}
!956 = !DILocalVariable(name: "op", arg: 1, scope: !952, file: !1, line: 151, type: !28)
!957 = !DILocation(line: 151, column: 47, scope: !952)
!958 = !DILocation(line: 156, column: 6, scope: !959)
!959 = distinct !DILexicalBlock(scope: !952, file: !1, line: 156, column: 6)
!960 = !DILocation(line: 156, column: 17, scope: !959)
!961 = !DILocation(line: 156, column: 28, scope: !959)
!962 = !DILocation(line: 156, column: 6, scope: !952)
!963 = !DILocation(line: 159, column: 2, scope: !964)
!964 = distinct !DILexicalBlock(scope: !959, file: !1, line: 156, column: 56)
!965 = !DILocation(line: 161, column: 6, scope: !966)
!966 = distinct !DILexicalBlock(scope: !952, file: !1, line: 161, column: 6)
!967 = !DILocation(line: 161, column: 17, scope: !966)
!968 = !DILocation(line: 161, column: 23, scope: !966)
!969 = !DILocation(line: 161, column: 6, scope: !952)
!970 = !DILocation(line: 162, column: 32, scope: !971)
!971 = distinct !DILexicalBlock(scope: !966, file: !1, line: 161, column: 47)
!972 = !DILocation(line: 162, column: 56, scope: !971)
!973 = !DILocation(line: 162, column: 9, scope: !971)
!974 = !DILocation(line: 163, column: 2, scope: !971)
!975 = !DILocation(line: 164, column: 32, scope: !976)
!976 = distinct !DILexicalBlock(scope: !966, file: !1, line: 163, column: 9)
!977 = !DILocation(line: 164, column: 60, scope: !976)
!978 = !DILocation(line: 164, column: 9, scope: !976)
!979 = !DILocation(line: 166, column: 1, scope: !952)
!980 = !DISubprogram(name: "acpi_os_release_object", scope: !981, file: !981, line: 219, type: !982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!981 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!982 = !DISubroutineType(types: !983)
!983 = !{!146, !926, !123}
!984 = distinct !DISubprogram(name: "acpi_ps_is_leading_char", scope: !1, file: !1, line: 179, type: !985, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!11, !8}
!987 = !{!988}
!988 = !DILocalVariable(name: "c", arg: 1, scope: !984, file: !1, line: 179, type: !8)
!989 = !DILocation(line: 179, column: 32, scope: !984)
!990 = !DILocation(line: 181, column: 16, scope: !984)
!991 = !DILocation(line: 181, column: 18, scope: !984)
!992 = !DILocation(line: 181, column: 25, scope: !984)
!993 = !DILocation(line: 181, column: 29, scope: !984)
!994 = !DILocation(line: 181, column: 31, scope: !984)
!995 = !DILocation(line: 181, column: 38, scope: !984)
!996 = !DILocation(line: 181, column: 41, scope: !984)
!997 = !DILocation(line: 181, column: 43, scope: !984)
!998 = !DILocation(line: 0, scope: !984)
!999 = !DILocation(line: 181, column: 10, scope: !984)
!1000 = !DILocation(line: 181, column: 2, scope: !984)
!1001 = distinct !DISubprogram(name: "acpi_ps_get_name", scope: !1, file: !1, line: 187, type: !1002, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1004)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!8, !28}
!1004 = !{!1005}
!1005 = !DILocalVariable(name: "op", arg: 1, scope: !1001, file: !1, line: 187, type: !28)
!1006 = !DILocation(line: 187, column: 48, scope: !1001)
!1007 = !DILocation(line: 192, column: 6, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 192, column: 6)
!1009 = !DILocation(line: 192, column: 17, scope: !1008)
!1010 = !DILocation(line: 192, column: 23, scope: !1008)
!1011 = !DILocation(line: 192, column: 6, scope: !1001)
!1012 = !DILocation(line: 193, column: 3, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 192, column: 47)
!1014 = !DILocation(line: 198, column: 10, scope: !1001)
!1015 = !DILocation(line: 198, column: 20, scope: !1001)
!1016 = !DILocation(line: 198, column: 2, scope: !1001)
!1017 = !DILocation(line: 199, column: 1, scope: !1001)
!1018 = distinct !DISubprogram(name: "acpi_ps_set_name", scope: !1, file: !1, line: 204, type: !1019, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1021)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !28, !8}
!1021 = !{!1022, !1023}
!1022 = !DILocalVariable(name: "op", arg: 1, scope: !1018, file: !1, line: 204, type: !28)
!1023 = !DILocalVariable(name: "name", arg: 2, scope: !1018, file: !1, line: 204, type: !8)
!1024 = !DILocation(line: 204, column: 48, scope: !1018)
!1025 = !DILocation(line: 204, column: 56, scope: !1018)
!1026 = !DILocation(line: 209, column: 6, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 209, column: 6)
!1028 = !DILocation(line: 209, column: 17, scope: !1027)
!1029 = !DILocation(line: 209, column: 23, scope: !1027)
!1030 = !DILocation(line: 209, column: 6, scope: !1018)
!1031 = !DILocation(line: 210, column: 3, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !1, line: 209, column: 47)
!1033 = !DILocation(line: 213, column: 19, scope: !1018)
!1034 = !DILocation(line: 213, column: 2, scope: !1018)
!1035 = !DILocation(line: 213, column: 12, scope: !1018)
!1036 = !DILocation(line: 213, column: 17, scope: !1018)
!1037 = !DILocation(line: 214, column: 1, scope: !1018)
!1038 = distinct !DISubprogram(name: "kmem_cache_zalloc", scope: !1039, file: !1039, line: 709, type: !1040, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1042)
!1039 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!123, !926, !14}
!1042 = !{!1043, !1044}
!1043 = !DILocalVariable(name: "k", arg: 1, scope: !1038, file: !1039, line: 709, type: !926)
!1044 = !DILocalVariable(name: "flags", arg: 2, scope: !1038, file: !1039, line: 709, type: !14)
!1045 = !DILocation(line: 709, column: 58, scope: !1038)
!1046 = !DILocation(line: 709, column: 67, scope: !1038)
!1047 = !DILocation(line: 711, column: 26, scope: !1038)
!1048 = !DILocation(line: 711, column: 29, scope: !1038)
!1049 = !DILocation(line: 711, column: 35, scope: !1038)
!1050 = !DILocation(line: 711, column: 9, scope: !1038)
!1051 = !DILocation(line: 711, column: 2, scope: !1038)
!1052 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1053, file: !1053, line: 65, type: !1054, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!1053 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!933}
!1056 = !DILocation(line: 67, column: 9, scope: !1052)
!1057 = !DILocation(line: 67, column: 2, scope: !1052)
!1058 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1053, file: !1053, line: 120, type: !1059, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1062)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!1061, !933}
!1061 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1062 = !{!1063}
!1063 = !DILocalVariable(name: "flags", arg: 1, scope: !1058, file: !1053, line: 120, type: !933)
!1064 = !DILocation(line: 120, column: 67, scope: !1058)
!1065 = !DILocation(line: 122, column: 11, scope: !1058)
!1066 = !DILocation(line: 122, column: 17, scope: !1058)
!1067 = !DILocation(line: 122, column: 9, scope: !1058)
!1068 = !DILocation(line: 122, column: 2, scope: !1058)
!1069 = !DISubprogram(name: "kmem_cache_alloc", scope: !1039, file: !1039, line: 500, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1070 = distinct !DISubprogram(name: "native_save_fl", scope: !1053, file: !1053, line: 17, type: !1054, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1071)
!1071 = !{!1072}
!1072 = !DILocalVariable(name: "flags", scope: !1070, file: !1053, line: 19, type: !933)
!1073 = !DILocation(line: 19, column: 2, scope: !1070)
!1074 = !DILocation(line: 19, column: 16, scope: !1070)
!1075 = !DILocation(line: 26, column: 2, scope: !1070)
!1076 = !{i64 1513200, i64 1513221}
!1077 = !DILocation(line: 32, column: 9, scope: !1070)
!1078 = !DILocation(line: 33, column: 1, scope: !1070)
!1079 = !DILocation(line: 32, column: 2, scope: !1070)
