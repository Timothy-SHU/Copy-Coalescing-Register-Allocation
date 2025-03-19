; ModuleID = 'drivers/acpi/acpica/nsnames.c'
source_filename = "drivers/acpi/acpica/nsnames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_buffer = type { i64, ptr }
%struct.acpi_scope_state = type { ptr, i8, i8, i16, i16, ptr }

@_acpi_module_name = internal constant [8 x i8] c"nsnames\00", align 1, !dbg !0
@.str = private unnamed_addr constant [61 x i8] c"Invalid/cached reference target node: %p, descriptor type %d\00", align 1, !dbg !816
@acpi_gbl_root_node = external dso_local global ptr, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not allocate %u bytes\00", align 1, !dbg !821
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1, !dbg !826
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !829

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ns_get_external_pathname(ptr noundef %node) #0 align 16 !dbg !845 {
entry:
  %node.addr = alloca ptr, align 8
  %name_buffer = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !849, metadata !DIExpression()), !dbg !851
  call void @llvm.lifetime.start.p0(i64 8, ptr %name_buffer) #13, !dbg !852
  call void @llvm.dbg.declare(metadata ptr %name_buffer, metadata !850, metadata !DIExpression()), !dbg !853
  %0 = load ptr, ptr %node.addr, align 8, !dbg !854
  %call = call ptr @acpi_ns_get_normalized_pathname(ptr noundef %0, i8 noundef zeroext 0) #14, !dbg !855
  store ptr %call, ptr %name_buffer, align 8, !dbg !856
  %1 = load ptr, ptr %name_buffer, align 8, !dbg !857
  call void @llvm.lifetime.end.p0(i64 8, ptr %name_buffer) #13, !dbg !858
  ret ptr %1, !dbg !857
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ns_get_normalized_pathname(ptr noundef %node, i8 noundef zeroext %no_trailing) #0 align 16 !dbg !859 {
entry:
  %retval = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %no_trailing.addr = alloca i8, align 1
  %name_buffer = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !863, metadata !DIExpression()), !dbg !867
  store i8 %no_trailing, ptr %no_trailing.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %no_trailing.addr, metadata !864, metadata !DIExpression()), !dbg !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %name_buffer) #13, !dbg !869
  call void @llvm.dbg.declare(metadata ptr %name_buffer, metadata !865, metadata !DIExpression()), !dbg !870
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #13, !dbg !871
  call void @llvm.dbg.declare(metadata ptr %size, metadata !866, metadata !DIExpression()), !dbg !872
  %0 = load ptr, ptr %node.addr, align 8, !dbg !873
  %1 = load i8, ptr %no_trailing.addr, align 1, !dbg !874
  %call = call i32 @acpi_ns_build_normalized_path(ptr noundef %0, ptr noundef null, i32 noundef 0, i8 noundef zeroext %1) #14, !dbg !875
  %conv = zext i32 %call to i64, !dbg !875
  store i64 %conv, ptr %size, align 8, !dbg !876
  %2 = load i64, ptr %size, align 8, !dbg !877
  %tobool = icmp ne i64 %2, 0, !dbg !877
  br i1 %tobool, label %if.end, label %if.then, !dbg !879

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !880

if.end:                                           ; preds = %entry
  %3 = load i64, ptr %size, align 8, !dbg !882
  %call1 = call ptr @acpi_os_allocate_zeroed(i64 noundef %3) #14, !dbg !882
  store ptr %call1, ptr %name_buffer, align 8, !dbg !883
  %4 = load ptr, ptr %name_buffer, align 8, !dbg !884
  %tobool2 = icmp ne ptr %4, null, !dbg !884
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !886

if.then3:                                         ; preds = %if.end
  %5 = load i64, ptr %size, align 8, !dbg !887
  %conv4 = trunc i64 %5 to i32, !dbg !887
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 308, ptr noundef @.str.1, i32 noundef %conv4) #14, !dbg !887
  store ptr null, ptr %retval, align 8, !dbg !889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !889

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %node.addr, align 8, !dbg !890
  %7 = load ptr, ptr %name_buffer, align 8, !dbg !891
  %8 = load i64, ptr %size, align 8, !dbg !892
  %conv6 = trunc i64 %8 to i32, !dbg !893
  %9 = load i8, ptr %no_trailing.addr, align 1, !dbg !894
  %call7 = call i32 @acpi_ns_build_normalized_path(ptr noundef %6, ptr noundef %7, i32 noundef %conv6, i8 noundef zeroext %9) #14, !dbg !895
  %10 = load ptr, ptr %name_buffer, align 8, !dbg !896
  store ptr %10, ptr %retval, align 8, !dbg !896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !896

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #13, !dbg !897
  call void @llvm.lifetime.end.p0(i64 8, ptr %name_buffer) #13, !dbg !897
  %11 = load ptr, ptr %retval, align 8, !dbg !897
  ret ptr %11, !dbg !897
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @acpi_ns_get_pathname_length(ptr noundef %node) #0 align 16 !dbg !898 {
entry:
  %retval = alloca i64, align 8
  %node.addr = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !902, metadata !DIExpression()), !dbg !904
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #13, !dbg !905
  call void @llvm.dbg.declare(metadata ptr %size, metadata !903, metadata !DIExpression()), !dbg !906
  %0 = load ptr, ptr %node.addr, align 8, !dbg !907
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %0, i32 0, i32 1, !dbg !907
  %1 = load i8, ptr %descriptor_type, align 8, !dbg !907
  %conv = zext i8 %1 to i32, !dbg !907
  %cmp = icmp ne i32 %conv, 15, !dbg !909
  br i1 %cmp, label %if.then, label %if.end, !dbg !910

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %node.addr, align 8, !dbg !911
  %3 = load ptr, ptr %node.addr, align 8, !dbg !911
  %descriptor_type2 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %3, i32 0, i32 1, !dbg !911
  %4 = load i8, ptr %descriptor_type2, align 8, !dbg !911
  %conv3 = zext i8 %4 to i32, !dbg !911
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 59, ptr noundef @.str, ptr noundef %2, i32 noundef %conv3) #14, !dbg !911
  store i64 0, ptr %retval, align 8, !dbg !913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !913

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %node.addr, align 8, !dbg !914
  %call = call i32 @acpi_ns_build_normalized_path(ptr noundef %5, ptr noundef null, i32 noundef 0, i8 noundef zeroext 0) #14, !dbg !915
  %conv4 = zext i32 %call to i64, !dbg !915
  store i64 %conv4, ptr %size, align 8, !dbg !916
  %6 = load i64, ptr %size, align 8, !dbg !917
  store i64 %6, ptr %retval, align 8, !dbg !918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !918

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #13, !dbg !919
  %7 = load i64, ptr %retval, align 8, !dbg !919
  ret i64 %7, !dbg !919
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !920 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_build_normalized_path(ptr noundef %node, ptr noundef %full_path, i32 noundef %path_size, i8 noundef zeroext %no_trailing) #0 align 16 !dbg !925 {
entry:
  %node.addr = alloca ptr, align 8
  %full_path.addr = alloca ptr, align 8
  %path_size.addr = alloca i32, align 4
  %no_trailing.addr = alloca i8, align 1
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  %name = alloca [4 x i8], align 1
  %do_no_trailing = alloca i8, align 1
  %c = alloca i8, align 1
  %left = alloca ptr, align 8
  %right = alloca ptr, align 8
  %next_node = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !929, metadata !DIExpression()), !dbg !942
  store ptr %full_path, ptr %full_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %full_path.addr, metadata !930, metadata !DIExpression()), !dbg !943
  store i32 %path_size, ptr %path_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %path_size.addr, metadata !931, metadata !DIExpression()), !dbg !944
  store i8 %no_trailing, ptr %no_trailing.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %no_trailing.addr, metadata !932, metadata !DIExpression()), !dbg !945
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #13, !dbg !946
  call void @llvm.dbg.declare(metadata ptr %length, metadata !933, metadata !DIExpression()), !dbg !947
  store i32 0, ptr %length, align 4, !dbg !947
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !946
  call void @llvm.dbg.declare(metadata ptr %i, metadata !934, metadata !DIExpression()), !dbg !948
  call void @llvm.lifetime.start.p0(i64 4, ptr %name) #13, !dbg !949
  call void @llvm.dbg.declare(metadata ptr %name, metadata !935, metadata !DIExpression()), !dbg !950
  call void @llvm.lifetime.start.p0(i64 1, ptr %do_no_trailing) #13, !dbg !951
  call void @llvm.dbg.declare(metadata ptr %do_no_trailing, metadata !936, metadata !DIExpression()), !dbg !952
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #13, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %c, metadata !937, metadata !DIExpression()), !dbg !954
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #13, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %left, metadata !938, metadata !DIExpression()), !dbg !955
  call void @llvm.lifetime.start.p0(i64 8, ptr %right) #13, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %right, metadata !939, metadata !DIExpression()), !dbg !956
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_node) #13, !dbg !957
  call void @llvm.dbg.declare(metadata ptr %next_node, metadata !940, metadata !DIExpression()), !dbg !958
  %0 = load ptr, ptr %full_path.addr, align 8, !dbg !959
  %tobool = icmp ne ptr %0, null, !dbg !959
  br i1 %tobool, label %if.end, label %if.then, !dbg !961

if.then:                                          ; preds = %entry
  store i32 0, ptr %path_size.addr, align 4, !dbg !962
  br label %if.end, !dbg !964

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %node.addr, align 8, !dbg !965
  %tobool1 = icmp ne ptr %1, null, !dbg !965
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !967

if.then2:                                         ; preds = %if.end
  br label %build_trailing_null, !dbg !968

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %node.addr, align 8, !dbg !970
  store ptr %2, ptr %next_node, align 8, !dbg !971
  br label %while.cond, !dbg !972

while.cond:                                       ; preds = %for.end, %if.end3
  %3 = load ptr, ptr %next_node, align 8, !dbg !973
  %tobool4 = icmp ne ptr %3, null, !dbg !973
  br i1 %tobool4, label %land.rhs, label %land.end, !dbg !974

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %next_node, align 8, !dbg !975
  %5 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !976
  %cmp = icmp ne ptr %4, %5, !dbg !977
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !978
  br i1 %6, label %while.body, label %while.end, !dbg !972

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %next_node, align 8, !dbg !979
  %8 = load ptr, ptr %node.addr, align 8, !dbg !982
  %cmp5 = icmp ne ptr %7, %8, !dbg !983
  br i1 %cmp5, label %if.then6, label %if.end10, !dbg !984

if.then6:                                         ; preds = %while.body
  br label %do.body, !dbg !985

do.body:                                          ; preds = %if.then6
  %9 = load i32, ptr %length, align 4, !dbg !987
  %10 = load i32, ptr %path_size.addr, align 4, !dbg !987
  %cmp7 = icmp ult i32 %9, %10, !dbg !987
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !990

if.then8:                                         ; preds = %do.body
  %11 = load ptr, ptr %full_path.addr, align 8, !dbg !991
  %12 = load i32, ptr %length, align 4, !dbg !991
  %idxprom = zext i32 %12 to i64, !dbg !991
  %arrayidx = getelementptr i8, ptr %11, i64 %idxprom, !dbg !991
  store i8 46, ptr %arrayidx, align 1, !dbg !991
  br label %if.end9, !dbg !991

if.end9:                                          ; preds = %if.then8, %do.body
  %13 = load i32, ptr %length, align 4, !dbg !990
  %inc = add i32 %13, 1, !dbg !990
  store i32 %inc, ptr %length, align 4, !dbg !990
  br label %do.cond, !dbg !990

do.cond:                                          ; preds = %if.end9
  br label %do.end, !dbg !990

do.end:                                           ; preds = %do.cond
  br label %if.end10, !dbg !993

if.end10:                                         ; preds = %do.end, %while.body
  %14 = load ptr, ptr %next_node, align 8, !dbg !994
  %name11 = getelementptr inbounds %struct.acpi_namespace_node, ptr %14, i32 0, i32 4, !dbg !994
  %15 = load i32, ptr %name11, align 4, !dbg !994
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !994
  store i32 %15, ptr %arraydecay, align 4, !dbg !994
  %16 = load i8, ptr %no_trailing.addr, align 1, !dbg !995
  store i8 %16, ptr %do_no_trailing, align 1, !dbg !996
  store i32 0, ptr %i, align 4, !dbg !997
  br label %for.cond, !dbg !999

for.cond:                                         ; preds = %for.inc, %if.end10
  %17 = load i32, ptr %i, align 4, !dbg !1000
  %cmp12 = icmp ult i32 %17, 4, !dbg !1002
  br i1 %cmp12, label %for.body, label %for.end, !dbg !1003

for.body:                                         ; preds = %for.cond
  %18 = load i32, ptr %i, align 4, !dbg !1004
  %sub = sub i32 4, %18, !dbg !1006
  %sub13 = sub i32 %sub, 1, !dbg !1007
  %idxprom14 = zext i32 %sub13 to i64, !dbg !1008
  %arrayidx15 = getelementptr [4 x i8], ptr %name, i64 0, i64 %idxprom14, !dbg !1008
  %19 = load i8, ptr %arrayidx15, align 1, !dbg !1008
  store i8 %19, ptr %c, align 1, !dbg !1009
  %20 = load i8, ptr %do_no_trailing, align 1, !dbg !1010
  %conv = zext i8 %20 to i32, !dbg !1010
  %tobool16 = icmp ne i32 %conv, 0, !dbg !1010
  br i1 %tobool16, label %land.lhs.true, label %if.end21, !dbg !1012

land.lhs.true:                                    ; preds = %for.body
  %21 = load i8, ptr %c, align 1, !dbg !1013
  %conv17 = zext i8 %21 to i32, !dbg !1013
  %cmp18 = icmp ne i32 %conv17, 95, !dbg !1014
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !1015

if.then20:                                        ; preds = %land.lhs.true
  store i8 0, ptr %do_no_trailing, align 1, !dbg !1016
  br label %if.end21, !dbg !1018

if.end21:                                         ; preds = %if.then20, %land.lhs.true, %for.body
  %22 = load i8, ptr %do_no_trailing, align 1, !dbg !1019
  %tobool22 = icmp ne i8 %22, 0, !dbg !1019
  br i1 %tobool22, label %if.end34, label %if.then23, !dbg !1021

if.then23:                                        ; preds = %if.end21
  br label %do.body24, !dbg !1022

do.body24:                                        ; preds = %if.then23
  %23 = load i32, ptr %length, align 4, !dbg !1024
  %24 = load i32, ptr %path_size.addr, align 4, !dbg !1024
  %cmp25 = icmp ult i32 %23, %24, !dbg !1024
  br i1 %cmp25, label %if.then27, label %if.end30, !dbg !1027

if.then27:                                        ; preds = %do.body24
  %25 = load i8, ptr %c, align 1, !dbg !1028
  %26 = load ptr, ptr %full_path.addr, align 8, !dbg !1028
  %27 = load i32, ptr %length, align 4, !dbg !1028
  %idxprom28 = zext i32 %27 to i64, !dbg !1028
  %arrayidx29 = getelementptr i8, ptr %26, i64 %idxprom28, !dbg !1028
  store i8 %25, ptr %arrayidx29, align 1, !dbg !1028
  br label %if.end30, !dbg !1028

if.end30:                                         ; preds = %if.then27, %do.body24
  %28 = load i32, ptr %length, align 4, !dbg !1027
  %inc31 = add i32 %28, 1, !dbg !1027
  store i32 %inc31, ptr %length, align 4, !dbg !1027
  br label %do.cond32, !dbg !1027

do.cond32:                                        ; preds = %if.end30
  br label %do.end33, !dbg !1027

do.end33:                                         ; preds = %do.cond32
  br label %if.end34, !dbg !1030

if.end34:                                         ; preds = %do.end33, %if.end21
  br label %for.inc, !dbg !1031

for.inc:                                          ; preds = %if.end34
  %29 = load i32, ptr %i, align 4, !dbg !1032
  %inc35 = add i32 %29, 1, !dbg !1032
  store i32 %inc35, ptr %i, align 4, !dbg !1032
  br label %for.cond, !dbg !1033, !llvm.loop !1034

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %next_node, align 8, !dbg !1038
  %parent = getelementptr inbounds %struct.acpi_namespace_node, ptr %30, i32 0, i32 5, !dbg !1039
  %31 = load ptr, ptr %parent, align 8, !dbg !1039
  store ptr %31, ptr %next_node, align 8, !dbg !1040
  br label %while.cond, !dbg !972, !llvm.loop !1041

while.end:                                        ; preds = %land.end
  br label %do.body36, !dbg !1043

do.body36:                                        ; preds = %while.end
  %32 = load i32, ptr %length, align 4, !dbg !1044
  %33 = load i32, ptr %path_size.addr, align 4, !dbg !1044
  %cmp37 = icmp ult i32 %32, %33, !dbg !1044
  br i1 %cmp37, label %if.then39, label %if.end42, !dbg !1047

if.then39:                                        ; preds = %do.body36
  %34 = load ptr, ptr %full_path.addr, align 8, !dbg !1048
  %35 = load i32, ptr %length, align 4, !dbg !1048
  %idxprom40 = zext i32 %35 to i64, !dbg !1048
  %arrayidx41 = getelementptr i8, ptr %34, i64 %idxprom40, !dbg !1048
  store i8 92, ptr %arrayidx41, align 1, !dbg !1048
  br label %if.end42, !dbg !1048

if.end42:                                         ; preds = %if.then39, %do.body36
  %36 = load i32, ptr %length, align 4, !dbg !1047
  %inc43 = add i32 %36, 1, !dbg !1047
  store i32 %inc43, ptr %length, align 4, !dbg !1047
  br label %do.cond44, !dbg !1047

do.cond44:                                        ; preds = %if.end42
  br label %do.end45, !dbg !1047

do.end45:                                         ; preds = %do.cond44
  %37 = load i32, ptr %length, align 4, !dbg !1050
  %38 = load i32, ptr %path_size.addr, align 4, !dbg !1052
  %cmp46 = icmp ule i32 %37, %38, !dbg !1053
  br i1 %cmp46, label %if.then48, label %if.end56, !dbg !1054

if.then48:                                        ; preds = %do.end45
  %39 = load ptr, ptr %full_path.addr, align 8, !dbg !1055
  store ptr %39, ptr %left, align 8, !dbg !1057
  %40 = load ptr, ptr %full_path.addr, align 8, !dbg !1058
  %41 = load i32, ptr %length, align 4, !dbg !1059
  %idx.ext = zext i32 %41 to i64, !dbg !1060
  %add.ptr = getelementptr i8, ptr %40, i64 %idx.ext, !dbg !1060
  %add.ptr49 = getelementptr i8, ptr %add.ptr, i64 -1, !dbg !1061
  store ptr %add.ptr49, ptr %right, align 8, !dbg !1062
  br label %while.cond50, !dbg !1063

while.cond50:                                     ; preds = %while.body53, %if.then48
  %42 = load ptr, ptr %left, align 8, !dbg !1064
  %43 = load ptr, ptr %right, align 8, !dbg !1065
  %cmp51 = icmp ult ptr %42, %43, !dbg !1066
  br i1 %cmp51, label %while.body53, label %while.end55, !dbg !1063

while.body53:                                     ; preds = %while.cond50
  %44 = load ptr, ptr %left, align 8, !dbg !1067
  %45 = load i8, ptr %44, align 1, !dbg !1069
  store i8 %45, ptr %c, align 1, !dbg !1070
  %46 = load ptr, ptr %right, align 8, !dbg !1071
  %47 = load i8, ptr %46, align 1, !dbg !1072
  %48 = load ptr, ptr %left, align 8, !dbg !1073
  %incdec.ptr = getelementptr i8, ptr %48, i32 1, !dbg !1073
  store ptr %incdec.ptr, ptr %left, align 8, !dbg !1073
  store i8 %47, ptr %48, align 1, !dbg !1074
  %49 = load i8, ptr %c, align 1, !dbg !1075
  %50 = load ptr, ptr %right, align 8, !dbg !1076
  %incdec.ptr54 = getelementptr i8, ptr %50, i32 -1, !dbg !1076
  store ptr %incdec.ptr54, ptr %right, align 8, !dbg !1076
  store i8 %49, ptr %50, align 1, !dbg !1077
  br label %while.cond50, !dbg !1063, !llvm.loop !1078

while.end55:                                      ; preds = %while.cond50
  br label %if.end56, !dbg !1080

if.end56:                                         ; preds = %while.end55, %do.end45
  br label %build_trailing_null, !dbg !1052

build_trailing_null:                              ; preds = %if.end56, %if.then2
  call void @llvm.dbg.label(metadata !941), !dbg !1081
  br label %do.body57, !dbg !1082

do.body57:                                        ; preds = %build_trailing_null
  %51 = load i32, ptr %length, align 4, !dbg !1083
  %52 = load i32, ptr %path_size.addr, align 4, !dbg !1083
  %cmp58 = icmp ult i32 %51, %52, !dbg !1083
  br i1 %cmp58, label %if.then60, label %if.end63, !dbg !1086

if.then60:                                        ; preds = %do.body57
  %53 = load ptr, ptr %full_path.addr, align 8, !dbg !1087
  %54 = load i32, ptr %length, align 4, !dbg !1087
  %idxprom61 = zext i32 %54 to i64, !dbg !1087
  %arrayidx62 = getelementptr i8, ptr %53, i64 %idxprom61, !dbg !1087
  store i8 0, ptr %arrayidx62, align 1, !dbg !1087
  br label %if.end63, !dbg !1087

if.end63:                                         ; preds = %if.then60, %do.body57
  %55 = load i32, ptr %length, align 4, !dbg !1086
  %inc64 = add i32 %55, 1, !dbg !1086
  store i32 %inc64, ptr %length, align 4, !dbg !1086
  br label %do.cond65, !dbg !1086

do.cond65:                                        ; preds = %if.end63
  br label %do.end66, !dbg !1086

do.end66:                                         ; preds = %do.cond65
  %56 = load i32, ptr %length, align 4, !dbg !1089
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_node) #13, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 8, ptr %right) #13, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #13, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #13, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 1, ptr %do_no_trailing) #13, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 4, ptr %name) #13, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #13, !dbg !1090
  ret i32 %56, !dbg !1089
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_handle_to_name(ptr noundef %target_handle, ptr noundef %buffer) #0 align 16 !dbg !1091 {
entry:
  %retval = alloca i32, align 4
  %target_handle.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %node_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %target_handle, ptr %target_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target_handle.addr, metadata !1100, metadata !DIExpression()), !dbg !1105
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !1101, metadata !DIExpression()), !dbg !1106
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1107
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1102, metadata !DIExpression()), !dbg !1108
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1109
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1103, metadata !DIExpression()), !dbg !1110
  call void @llvm.lifetime.start.p0(i64 8, ptr %node_name) #13, !dbg !1111
  call void @llvm.dbg.declare(metadata ptr %node_name, metadata !1104, metadata !DIExpression()), !dbg !1112
  %0 = load ptr, ptr %target_handle.addr, align 8, !dbg !1113
  %call = call ptr @acpi_ns_validate_handle(ptr noundef %0) #14, !dbg !1114
  store ptr %call, ptr %node, align 8, !dbg !1115
  %1 = load ptr, ptr %node, align 8, !dbg !1116
  %tobool = icmp ne ptr %1, null, !dbg !1116
  br i1 %tobool, label %if.end, label %if.then, !dbg !1118

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1119

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !1121
  %call1 = call i32 @acpi_ut_initialize_buffer(ptr noundef %2, i64 noundef 5) #14, !dbg !1122
  store i32 %call1, ptr %status, align 4, !dbg !1123
  %3 = load i32, ptr %status, align 4, !dbg !1124
  %tobool2 = icmp ne i32 %3, 0, !dbg !1124
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1126

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %status, align 4, !dbg !1127
  store i32 %4, ptr %retval, align 4, !dbg !1127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1127

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %node, align 8, !dbg !1129
  %call5 = call ptr @acpi_ut_get_node_name(ptr noundef %5) #14, !dbg !1130
  store ptr %call5, ptr %node_name, align 8, !dbg !1131
  %6 = load ptr, ptr %node_name, align 8, !dbg !1132
  %7 = ptrtoint ptr %6 to i64, !dbg !1132
  %8 = inttoptr i64 %7 to ptr, !dbg !1132
  %9 = load i32, ptr %8, align 4, !dbg !1132
  %10 = load ptr, ptr %buffer.addr, align 8, !dbg !1132
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %10, i32 0, i32 1, !dbg !1132
  %11 = load ptr, ptr %pointer, align 8, !dbg !1132
  %12 = ptrtoint ptr %11 to i64, !dbg !1132
  %13 = inttoptr i64 %12 to ptr, !dbg !1132
  store i32 %9, ptr %13, align 4, !dbg !1132
  %14 = load ptr, ptr %buffer.addr, align 8, !dbg !1133
  %pointer6 = getelementptr inbounds %struct.acpi_buffer, ptr %14, i32 0, i32 1, !dbg !1134
  %15 = load ptr, ptr %pointer6, align 8, !dbg !1134
  %arrayidx = getelementptr i8, ptr %15, i64 4, !dbg !1135
  store i8 0, ptr %arrayidx, align 1, !dbg !1136
  store i32 0, ptr %retval, align 4, !dbg !1137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1137

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node_name) #13, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1138
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1138
  %16 = load i32, ptr %retval, align 4, !dbg !1138
  ret i32 %16, !dbg !1138
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1139 dso_local ptr @acpi_ns_validate_handle(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1143 dso_local i32 @acpi_ut_initialize_buffer(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1147 dso_local ptr @acpi_ut_get_node_name(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ns_handle_to_pathname(ptr noundef %target_handle, ptr noundef %buffer, i8 noundef zeroext %no_trailing) #0 align 16 !dbg !1150 {
entry:
  %retval = alloca i32, align 4
  %target_handle.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %no_trailing.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %node = alloca ptr, align 8
  %required_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %target_handle, ptr %target_handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target_handle.addr, metadata !1154, metadata !DIExpression()), !dbg !1160
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !1155, metadata !DIExpression()), !dbg !1161
  store i8 %no_trailing, ptr %no_trailing.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %no_trailing.addr, metadata !1156, metadata !DIExpression()), !dbg !1162
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1163
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1157, metadata !DIExpression()), !dbg !1164
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #13, !dbg !1165
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1158, metadata !DIExpression()), !dbg !1166
  call void @llvm.lifetime.start.p0(i64 8, ptr %required_size) #13, !dbg !1167
  call void @llvm.dbg.declare(metadata ptr %required_size, metadata !1159, metadata !DIExpression()), !dbg !1168
  %0 = load ptr, ptr %target_handle.addr, align 8, !dbg !1169
  %call = call ptr @acpi_ns_validate_handle(ptr noundef %0) #14, !dbg !1170
  store ptr %call, ptr %node, align 8, !dbg !1171
  %1 = load ptr, ptr %node, align 8, !dbg !1172
  %tobool = icmp ne ptr %1, null, !dbg !1172
  br i1 %tobool, label %if.end, label %if.then, !dbg !1174

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !1175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1175

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %node, align 8, !dbg !1177
  %3 = load i8, ptr %no_trailing.addr, align 1, !dbg !1178
  %call1 = call i32 @acpi_ns_build_normalized_path(ptr noundef %2, ptr noundef null, i32 noundef 0, i8 noundef zeroext %3) #14, !dbg !1179
  %conv = zext i32 %call1 to i64, !dbg !1179
  store i64 %conv, ptr %required_size, align 8, !dbg !1180
  %4 = load i64, ptr %required_size, align 8, !dbg !1181
  %tobool2 = icmp ne i64 %4, 0, !dbg !1181
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1183

if.then3:                                         ; preds = %if.end
  store i32 4097, ptr %retval, align 4, !dbg !1184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1184

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %buffer.addr, align 8, !dbg !1186
  %6 = load i64, ptr %required_size, align 8, !dbg !1187
  %call5 = call i32 @acpi_ut_initialize_buffer(ptr noundef %5, i64 noundef %6) #14, !dbg !1188
  store i32 %call5, ptr %status, align 4, !dbg !1189
  %7 = load i32, ptr %status, align 4, !dbg !1190
  %tobool6 = icmp ne i32 %7, 0, !dbg !1190
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1192

if.then7:                                         ; preds = %if.end4
  %8 = load i32, ptr %status, align 4, !dbg !1193
  store i32 %8, ptr %retval, align 4, !dbg !1193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1193

if.end8:                                          ; preds = %if.end4
  %9 = load ptr, ptr %node, align 8, !dbg !1195
  %10 = load ptr, ptr %buffer.addr, align 8, !dbg !1196
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %10, i32 0, i32 1, !dbg !1197
  %11 = load ptr, ptr %pointer, align 8, !dbg !1197
  %12 = load i64, ptr %required_size, align 8, !dbg !1198
  %conv9 = trunc i64 %12 to i32, !dbg !1199
  %13 = load i8, ptr %no_trailing.addr, align 1, !dbg !1200
  %call10 = call i32 @acpi_ns_build_normalized_path(ptr noundef %9, ptr noundef %11, i32 noundef %conv9, i8 noundef zeroext %13) #14, !dbg !1201
  store i32 0, ptr %retval, align 4, !dbg !1202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1202

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %required_size) #13, !dbg !1203
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #13, !dbg !1203
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1203
  %14 = load i32, ptr %retval, align 4, !dbg !1203
  ret i32 %14, !dbg !1203
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !1204 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1209, metadata !DIExpression()), !dbg !1220
  %0 = load i64, ptr %size.addr, align 8, !dbg !1221
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !1222
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !1210, metadata !DIExpression()), !dbg !1222
  br label %do.body, !dbg !1222

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !1223
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1212, metadata !DIExpression()), !dbg !1223
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !1223
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1215, metadata !DIExpression()), !dbg !1223
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1223
  %conv = zext i1 %cmp to i32, !dbg !1223
  store i32 1, ptr %tmp, align 4, !dbg !1223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !1224
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !1224
  %1 = load i32, ptr %tmp, align 4, !dbg !1223
  %call = call i64 @arch_local_save_flags() #14, !dbg !1224
  store i64 %call, ptr %_flags, align 8, !dbg !1224
  br label %do.cond, !dbg !1224

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1224

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !1225
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !1216, metadata !DIExpression()), !dbg !1225
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !1225
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !1219, metadata !DIExpression()), !dbg !1225
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !1225
  %conv6 = zext i1 %cmp5 to i32, !dbg !1225
  store i32 1, ptr %tmp7, align 4, !dbg !1225
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !1226
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !1226
  %2 = load i32, ptr %tmp7, align 4, !dbg !1225
  %3 = load i64, ptr %_flags, align 8, !dbg !1226
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !1226
  store i32 %call9, ptr %tmp8, align 4, !dbg !1226
  %4 = load i32, ptr %tmp8, align 4, !dbg !1226
  store i32 %4, ptr %tmp1, align 4, !dbg !1224
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !1227
  %5 = load i32, ptr %tmp1, align 4, !dbg !1222
  %tobool = icmp ne i32 %5, 0, !dbg !1227
  %6 = zext i1 %tobool to i64, !dbg !1227
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !1227
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !1228
  ret ptr %call10, !dbg !1229
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ns_build_prefixed_pathname(ptr noundef %prefix_scope, ptr noundef %internal_path) #0 align 16 !dbg !1230 {
entry:
  %prefix_scope.addr = alloca ptr, align 8
  %internal_path.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %full_path = alloca ptr, align 8
  %external_path = alloca ptr, align 8
  %prefix_path = alloca ptr, align 8
  %prefix_path_length = alloca i64, align 8
  store ptr %prefix_scope, ptr %prefix_scope.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix_scope.addr, metadata !1234, metadata !DIExpression()), !dbg !1242
  store ptr %internal_path, ptr %internal_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %internal_path.addr, metadata !1235, metadata !DIExpression()), !dbg !1243
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1244
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1236, metadata !DIExpression()), !dbg !1245
  call void @llvm.lifetime.start.p0(i64 8, ptr %full_path) #13, !dbg !1246
  call void @llvm.dbg.declare(metadata ptr %full_path, metadata !1237, metadata !DIExpression()), !dbg !1247
  store ptr null, ptr %full_path, align 8, !dbg !1247
  call void @llvm.lifetime.start.p0(i64 8, ptr %external_path) #13, !dbg !1248
  call void @llvm.dbg.declare(metadata ptr %external_path, metadata !1238, metadata !DIExpression()), !dbg !1249
  store ptr null, ptr %external_path, align 8, !dbg !1249
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefix_path) #13, !dbg !1250
  call void @llvm.dbg.declare(metadata ptr %prefix_path, metadata !1239, metadata !DIExpression()), !dbg !1251
  store ptr null, ptr %prefix_path, align 8, !dbg !1251
  call void @llvm.lifetime.start.p0(i64 8, ptr %prefix_path_length) #13, !dbg !1252
  call void @llvm.dbg.declare(metadata ptr %prefix_path_length, metadata !1240, metadata !DIExpression()), !dbg !1253
  store i64 0, ptr %prefix_path_length, align 8, !dbg !1253
  %0 = load ptr, ptr %prefix_scope.addr, align 8, !dbg !1254
  %tobool = icmp ne ptr %0, null, !dbg !1254
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !1256

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %prefix_scope.addr, align 8, !dbg !1257
  %node = getelementptr inbounds %struct.acpi_scope_state, ptr %1, i32 0, i32 5, !dbg !1258
  %2 = load ptr, ptr %node, align 8, !dbg !1258
  %tobool1 = icmp ne ptr %2, null, !dbg !1257
  br i1 %tobool1, label %if.then, label %if.end6, !dbg !1259

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %prefix_scope.addr, align 8, !dbg !1260
  %node2 = getelementptr inbounds %struct.acpi_scope_state, ptr %3, i32 0, i32 5, !dbg !1262
  %4 = load ptr, ptr %node2, align 8, !dbg !1262
  %call = call ptr @acpi_ns_get_normalized_pathname(ptr noundef %4, i8 noundef zeroext 1) #14, !dbg !1263
  store ptr %call, ptr %prefix_path, align 8, !dbg !1264
  %5 = load ptr, ptr %prefix_path, align 8, !dbg !1265
  %tobool3 = icmp ne ptr %5, null, !dbg !1265
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !1267

if.then4:                                         ; preds = %if.then
  %6 = load ptr, ptr %prefix_path, align 8, !dbg !1268
  %call5 = call i64 @strlen(ptr noundef %6) #14, !dbg !1270
  store i64 %call5, ptr %prefix_path_length, align 8, !dbg !1271
  br label %if.end, !dbg !1272

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end6, !dbg !1273

if.end6:                                          ; preds = %if.end, %land.lhs.true, %entry
  %7 = load ptr, ptr %internal_path.addr, align 8, !dbg !1274
  %call7 = call i32 @acpi_ns_externalize_name(i32 noundef -1, ptr noundef %7, ptr noundef null, ptr noundef %external_path) #14, !dbg !1275
  store i32 %call7, ptr %status, align 4, !dbg !1276
  %8 = load i32, ptr %status, align 4, !dbg !1277
  %tobool8 = icmp ne i32 %8, 0, !dbg !1277
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1279

if.then9:                                         ; preds = %if.end6
  br label %cleanup, !dbg !1280

if.end10:                                         ; preds = %if.end6
  %9 = load i64, ptr %prefix_path_length, align 8, !dbg !1282
  %10 = load ptr, ptr %external_path, align 8, !dbg !1282
  %call11 = call i64 @strlen(ptr noundef %10) #14, !dbg !1282
  %add = add i64 %9, %call11, !dbg !1282
  %add12 = add i64 %add, 2, !dbg !1282
  %call13 = call ptr @acpi_os_allocate_zeroed(i64 noundef %add12) #14, !dbg !1282
  store ptr %call13, ptr %full_path, align 8, !dbg !1283
  %11 = load ptr, ptr %full_path, align 8, !dbg !1284
  %tobool14 = icmp ne ptr %11, null, !dbg !1284
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !1286

if.then15:                                        ; preds = %if.end10
  br label %cleanup, !dbg !1287

if.end16:                                         ; preds = %if.end10
  %12 = load ptr, ptr %prefix_path, align 8, !dbg !1289
  %tobool17 = icmp ne ptr %12, null, !dbg !1289
  br i1 %tobool17, label %land.lhs.true18, label %if.end30, !dbg !1291

land.lhs.true18:                                  ; preds = %if.end16
  %13 = load ptr, ptr %external_path, align 8, !dbg !1292
  %14 = load i8, ptr %13, align 1, !dbg !1293
  %conv = zext i8 %14 to i32, !dbg !1293
  %cmp = icmp ne i32 %conv, 92, !dbg !1294
  br i1 %cmp, label %land.lhs.true20, label %if.end30, !dbg !1295

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %15 = load ptr, ptr %external_path, align 8, !dbg !1296
  %16 = load i8, ptr %15, align 1, !dbg !1297
  %conv21 = zext i8 %16 to i32, !dbg !1297
  %cmp22 = icmp ne i32 %conv21, 94, !dbg !1298
  br i1 %cmp22, label %if.then24, label %if.end30, !dbg !1299

if.then24:                                        ; preds = %land.lhs.true20
  %17 = load ptr, ptr %full_path, align 8, !dbg !1300
  %18 = load ptr, ptr %prefix_path, align 8, !dbg !1302
  %call25 = call ptr @strcat(ptr noundef %17, ptr noundef %18) #14, !dbg !1303
  %19 = load ptr, ptr %prefix_path, align 8, !dbg !1304
  %arrayidx = getelementptr i8, ptr %19, i64 1, !dbg !1304
  %20 = load i8, ptr %arrayidx, align 1, !dbg !1304
  %tobool26 = icmp ne i8 %20, 0, !dbg !1304
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !1306

if.then27:                                        ; preds = %if.then24
  %21 = load ptr, ptr %full_path, align 8, !dbg !1307
  %call28 = call ptr @strcat(ptr noundef %21, ptr noundef @.str.2) #14, !dbg !1309
  br label %if.end29, !dbg !1310

if.end29:                                         ; preds = %if.then27, %if.then24
  br label %if.end30, !dbg !1311

if.end30:                                         ; preds = %if.end29, %land.lhs.true20, %land.lhs.true18, %if.end16
  %22 = load ptr, ptr %external_path, align 8, !dbg !1312
  call void @acpi_ns_normalize_pathname(ptr noundef %22) #14, !dbg !1313
  %23 = load ptr, ptr %full_path, align 8, !dbg !1314
  %24 = load ptr, ptr %external_path, align 8, !dbg !1315
  %call31 = call ptr @strcat(ptr noundef %23, ptr noundef %24) #14, !dbg !1316
  br label %cleanup, !dbg !1316

cleanup:                                          ; preds = %if.end30, %if.then15, %if.then9
  call void @llvm.dbg.label(metadata !1241), !dbg !1317
  %25 = load ptr, ptr %prefix_path, align 8, !dbg !1318
  %tobool32 = icmp ne ptr %25, null, !dbg !1318
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !1320

if.then33:                                        ; preds = %cleanup
  %26 = load ptr, ptr %prefix_path, align 8, !dbg !1321
  call void @acpi_os_free(ptr noundef %26) #14, !dbg !1321
  br label %if.end34, !dbg !1323

if.end34:                                         ; preds = %if.then33, %cleanup
  %27 = load ptr, ptr %external_path, align 8, !dbg !1324
  %tobool35 = icmp ne ptr %27, null, !dbg !1324
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !1326

if.then36:                                        ; preds = %if.end34
  %28 = load ptr, ptr %external_path, align 8, !dbg !1327
  call void @acpi_os_free(ptr noundef %28) #14, !dbg !1327
  br label %if.end37, !dbg !1329

if.end37:                                         ; preds = %if.then36, %if.end34
  %29 = load ptr, ptr %full_path, align 8, !dbg !1330
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefix_path_length) #13, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 8, ptr %prefix_path) #13, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 8, ptr %external_path) #13, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 8, ptr %full_path) #13, !dbg !1331
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1331
  ret ptr %29, !dbg !1332
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1333 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1337 dso_local i32 @acpi_ns_externalize_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1341 dso_local ptr @strcat(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ns_normalize_pathname(ptr noundef %original_path) #0 align 16 !dbg !1344 {
entry:
  %original_path.addr = alloca ptr, align 8
  %input_path = alloca ptr, align 8
  %new_path_buffer = alloca ptr, align 8
  %new_path = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %original_path, ptr %original_path.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %original_path.addr, metadata !1348, metadata !DIExpression()), !dbg !1353
  call void @llvm.lifetime.start.p0(i64 8, ptr %input_path) #13, !dbg !1354
  call void @llvm.dbg.declare(metadata ptr %input_path, metadata !1349, metadata !DIExpression()), !dbg !1355
  %0 = load ptr, ptr %original_path.addr, align 8, !dbg !1356
  store ptr %0, ptr %input_path, align 8, !dbg !1355
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_path_buffer) #13, !dbg !1357
  call void @llvm.dbg.declare(metadata ptr %new_path_buffer, metadata !1350, metadata !DIExpression()), !dbg !1358
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_path) #13, !dbg !1359
  call void @llvm.dbg.declare(metadata ptr %new_path, metadata !1351, metadata !DIExpression()), !dbg !1360
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1361
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1352, metadata !DIExpression()), !dbg !1362
  %1 = load ptr, ptr %input_path, align 8, !dbg !1363
  %call = call i64 @strlen(ptr noundef %1) #14, !dbg !1363
  %add = add i64 %call, 1, !dbg !1363
  %call1 = call ptr @acpi_os_allocate_zeroed(i64 noundef %add) #14, !dbg !1363
  store ptr %call1, ptr %new_path_buffer, align 8, !dbg !1364
  %2 = load ptr, ptr %new_path_buffer, align 8, !dbg !1365
  store ptr %2, ptr %new_path, align 8, !dbg !1366
  %3 = load ptr, ptr %new_path_buffer, align 8, !dbg !1367
  %tobool = icmp ne ptr %3, null, !dbg !1367
  br i1 %tobool, label %if.end, label %if.then, !dbg !1369

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1370

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %input_path, align 8, !dbg !1372
  %5 = load i8, ptr %4, align 1, !dbg !1374
  %conv = zext i8 %5 to i32, !dbg !1374
  %cmp = icmp eq i32 %conv, 92, !dbg !1375
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !1376

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %input_path, align 8, !dbg !1377
  %7 = load i8, ptr %6, align 1, !dbg !1379
  %8 = load ptr, ptr %new_path, align 8, !dbg !1380
  store i8 %7, ptr %8, align 1, !dbg !1381
  %9 = load ptr, ptr %new_path, align 8, !dbg !1382
  %incdec.ptr = getelementptr i8, ptr %9, i32 1, !dbg !1382
  store ptr %incdec.ptr, ptr %new_path, align 8, !dbg !1382
  %10 = load ptr, ptr %input_path, align 8, !dbg !1383
  %incdec.ptr4 = getelementptr i8, ptr %10, i32 1, !dbg !1383
  store ptr %incdec.ptr4, ptr %input_path, align 8, !dbg !1383
  br label %if.end5, !dbg !1384

if.end5:                                          ; preds = %if.then3, %if.end
  br label %while.cond, !dbg !1385

while.cond:                                       ; preds = %while.body, %if.end5
  %11 = load ptr, ptr %input_path, align 8, !dbg !1386
  %12 = load i8, ptr %11, align 1, !dbg !1387
  %conv6 = zext i8 %12 to i32, !dbg !1387
  %cmp7 = icmp eq i32 %conv6, 94, !dbg !1388
  br i1 %cmp7, label %while.body, label %while.end, !dbg !1385

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %input_path, align 8, !dbg !1389
  %14 = load i8, ptr %13, align 1, !dbg !1391
  %15 = load ptr, ptr %new_path, align 8, !dbg !1392
  store i8 %14, ptr %15, align 1, !dbg !1393
  %16 = load ptr, ptr %new_path, align 8, !dbg !1394
  %incdec.ptr9 = getelementptr i8, ptr %16, i32 1, !dbg !1394
  store ptr %incdec.ptr9, ptr %new_path, align 8, !dbg !1394
  %17 = load ptr, ptr %input_path, align 8, !dbg !1395
  %incdec.ptr10 = getelementptr i8, ptr %17, i32 1, !dbg !1395
  store ptr %incdec.ptr10, ptr %input_path, align 8, !dbg !1395
  br label %while.cond, !dbg !1385, !llvm.loop !1396

while.end:                                        ; preds = %while.cond
  br label %while.cond11, !dbg !1398

while.cond11:                                     ; preds = %if.end33, %while.end
  %18 = load ptr, ptr %input_path, align 8, !dbg !1399
  %19 = load i8, ptr %18, align 1, !dbg !1400
  %tobool12 = icmp ne i8 %19, 0, !dbg !1398
  br i1 %tobool12, label %while.body13, label %while.end34, !dbg !1398

while.body13:                                     ; preds = %while.cond11
  store i32 0, ptr %i, align 4, !dbg !1401
  br label %for.cond, !dbg !1404

for.cond:                                         ; preds = %for.inc, %while.body13
  %20 = load i32, ptr %i, align 4, !dbg !1405
  %cmp14 = icmp ult i32 %20, 4, !dbg !1407
  br i1 %cmp14, label %land.rhs, label %land.end, !dbg !1408

land.rhs:                                         ; preds = %for.cond
  %21 = load ptr, ptr %input_path, align 8, !dbg !1409
  %22 = load i8, ptr %21, align 1, !dbg !1410
  %conv16 = zext i8 %22 to i32, !dbg !1410
  %tobool17 = icmp ne i32 %conv16, 0, !dbg !1408
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ %tobool17, %land.rhs ], !dbg !1411
  br i1 %23, label %for.body, label %for.end, !dbg !1412

for.body:                                         ; preds = %land.end
  %24 = load i32, ptr %i, align 4, !dbg !1413
  %cmp18 = icmp eq i32 %24, 0, !dbg !1416
  br i1 %cmp18, label %if.then23, label %lor.lhs.false, !dbg !1417

lor.lhs.false:                                    ; preds = %for.body
  %25 = load ptr, ptr %input_path, align 8, !dbg !1418
  %26 = load i8, ptr %25, align 1, !dbg !1419
  %conv20 = zext i8 %26 to i32, !dbg !1419
  %cmp21 = icmp ne i32 %conv20, 95, !dbg !1420
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !1421

if.then23:                                        ; preds = %lor.lhs.false, %for.body
  %27 = load ptr, ptr %input_path, align 8, !dbg !1422
  %28 = load i8, ptr %27, align 1, !dbg !1424
  %29 = load ptr, ptr %new_path, align 8, !dbg !1425
  store i8 %28, ptr %29, align 1, !dbg !1426
  %30 = load ptr, ptr %new_path, align 8, !dbg !1427
  %incdec.ptr24 = getelementptr i8, ptr %30, i32 1, !dbg !1427
  store ptr %incdec.ptr24, ptr %new_path, align 8, !dbg !1427
  br label %if.end25, !dbg !1428

if.end25:                                         ; preds = %if.then23, %lor.lhs.false
  %31 = load ptr, ptr %input_path, align 8, !dbg !1429
  %incdec.ptr26 = getelementptr i8, ptr %31, i32 1, !dbg !1429
  store ptr %incdec.ptr26, ptr %input_path, align 8, !dbg !1429
  br label %for.inc, !dbg !1430

for.inc:                                          ; preds = %if.end25
  %32 = load i32, ptr %i, align 4, !dbg !1431
  %inc = add i32 %32, 1, !dbg !1431
  store i32 %inc, ptr %i, align 4, !dbg !1431
  br label %for.cond, !dbg !1432, !llvm.loop !1433

for.end:                                          ; preds = %land.end
  %33 = load ptr, ptr %input_path, align 8, !dbg !1435
  %34 = load i8, ptr %33, align 1, !dbg !1437
  %conv27 = zext i8 %34 to i32, !dbg !1437
  %cmp28 = icmp eq i32 %conv27, 46, !dbg !1438
  br i1 %cmp28, label %if.then30, label %if.end33, !dbg !1439

if.then30:                                        ; preds = %for.end
  %35 = load ptr, ptr %input_path, align 8, !dbg !1440
  %36 = load i8, ptr %35, align 1, !dbg !1442
  %37 = load ptr, ptr %new_path, align 8, !dbg !1443
  store i8 %36, ptr %37, align 1, !dbg !1444
  %38 = load ptr, ptr %new_path, align 8, !dbg !1445
  %incdec.ptr31 = getelementptr i8, ptr %38, i32 1, !dbg !1445
  store ptr %incdec.ptr31, ptr %new_path, align 8, !dbg !1445
  %39 = load ptr, ptr %input_path, align 8, !dbg !1446
  %incdec.ptr32 = getelementptr i8, ptr %39, i32 1, !dbg !1446
  store ptr %incdec.ptr32, ptr %input_path, align 8, !dbg !1446
  br label %if.end33, !dbg !1447

if.end33:                                         ; preds = %if.then30, %for.end
  br label %while.cond11, !dbg !1398, !llvm.loop !1448

while.end34:                                      ; preds = %while.cond11
  %40 = load ptr, ptr %new_path, align 8, !dbg !1450
  store i8 0, ptr %40, align 1, !dbg !1451
  %41 = load ptr, ptr %original_path.addr, align 8, !dbg !1452
  %42 = load ptr, ptr %new_path_buffer, align 8, !dbg !1453
  %call35 = call ptr @strcpy(ptr noundef %41, ptr noundef %42) #14, !dbg !1454
  %43 = load ptr, ptr %new_path_buffer, align 8, !dbg !1455
  call void @acpi_os_free(ptr noundef %43) #14, !dbg !1455
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1456
  br label %cleanup, !dbg !1456

cleanup:                                          ; preds = %while.end34, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !1456
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_path) #13, !dbg !1456
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_path_buffer) #13, !dbg !1456
  call void @llvm.lifetime.end.p0(i64 8, ptr %input_path) #13, !dbg !1456
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1456

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1457 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1461, metadata !DIExpression()), !dbg !1462
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1463
  call void @kfree(ptr noundef %0) #14, !dbg !1464
  ret void, !dbg !1465
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1466 dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1467 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1475, metadata !DIExpression()), !dbg !1477
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1476, metadata !DIExpression()), !dbg !1478
  %0 = load i64, ptr %size.addr, align 8, !dbg !1479
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1480
  %or = or i32 %1, 256, !dbg !1481
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1482
  ret ptr %call, !dbg !1483
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !1484 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1488
  ret i64 %call, !dbg !1489
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !1490 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1495, metadata !DIExpression()), !dbg !1496
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1497
  %and = and i64 %0, 512, !dbg !1498
  %tobool = icmp ne i64 %and, 0, !dbg !1499
  %lnot = xor i1 %tobool, true, !dbg !1499
  %lnot.ext = zext i1 %lnot to i32, !dbg !1499
  ret i32 %lnot.ext, !dbg !1500
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1501 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1503, metadata !DIExpression()), !dbg !1508
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1504, metadata !DIExpression()), !dbg !1509
  %0 = load i64, ptr %size.addr, align 8, !dbg !1510
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1511
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1512

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1513
  %tobool = icmp ne i64 %2, 0, !dbg !1513
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1514

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1515
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1505, metadata !DIExpression()), !dbg !1516
  %3 = load i64, ptr %size.addr, align 8, !dbg !1517
  %cmp = icmp ugt i64 %3, 8192, !dbg !1519
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1520

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1521
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1522
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1523
  store ptr %call, ptr %retval, align 8, !dbg !1524
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1524

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1525
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1525
  store i32 %call2, ptr %index, align 4, !dbg !1526
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1527
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1528
  %9 = ptrtoint ptr %8 to i64, !dbg !1528
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1529
  %idxprom = zext i32 %call3 to i64, !dbg !1530
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1530
  %10 = load i32, ptr %index, align 4, !dbg !1531
  %idxprom4 = zext i32 %10 to i64, !dbg !1530
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1530
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1530
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1532
  %13 = load i64, ptr %size.addr, align 8, !dbg !1533
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1534
  store ptr %call6, ptr %retval, align 8, !dbg !1535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1535

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1536
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1537
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1538
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1539
  store ptr %call8, ptr %retval, align 8, !dbg !1540
  br label %return, !dbg !1540

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1541
  ret ptr %16, !dbg !1541
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1542 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1543 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1549, metadata !DIExpression()), !dbg !1551
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1550, metadata !DIExpression()), !dbg !1552
  %0 = load i64, ptr %size.addr, align 8, !dbg !1553
  %tobool = icmp ne i64 %0, 0, !dbg !1553
  br i1 %tobool, label %if.end, label %if.then, !dbg !1555

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1556
  br label %return, !dbg !1556

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1557
  %cmp = icmp ule i64 %1, 8, !dbg !1559
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1560

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1561
  br label %return, !dbg !1561

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1562
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1564
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1565

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1566
  %cmp4 = icmp ule i64 %3, 96, !dbg !1567
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1568

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1569
  br label %return, !dbg !1569

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1570
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1572
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1573

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1574
  %cmp9 = icmp ule i64 %5, 192, !dbg !1575
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1576

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1577
  br label %return, !dbg !1577

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1578
  %cmp12 = icmp ule i64 %6, 8, !dbg !1580
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1581

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1582
  br label %return, !dbg !1582

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1583
  %cmp15 = icmp ule i64 %7, 16, !dbg !1585
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1586

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1587
  br label %return, !dbg !1587

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1588
  %cmp18 = icmp ule i64 %8, 32, !dbg !1590
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1591

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1592
  br label %return, !dbg !1592

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1593
  %cmp21 = icmp ule i64 %9, 64, !dbg !1595
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1596

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1597
  br label %return, !dbg !1597

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1598
  %cmp24 = icmp ule i64 %10, 128, !dbg !1600
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1601

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1602
  br label %return, !dbg !1602

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1603
  %cmp27 = icmp ule i64 %11, 256, !dbg !1605
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1606

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1607
  br label %return, !dbg !1607

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1608
  %cmp30 = icmp ule i64 %12, 512, !dbg !1610
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1611

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1612
  br label %return, !dbg !1612

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1613
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1615
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1616

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1617
  br label %return, !dbg !1617

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1618
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1620
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1621

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1622
  br label %return, !dbg !1622

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1623
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1625
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1626

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1627
  br label %return, !dbg !1627

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1628
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1630
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1631

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1632
  br label %return, !dbg !1632

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1633
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1635
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1636

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1637
  br label %return, !dbg !1637

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1638
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1640
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1641

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1642
  br label %return, !dbg !1642

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1643
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1645
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1646

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1647
  br label %return, !dbg !1647

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1648
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1650
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1651

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1652
  br label %return, !dbg !1652

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1653
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1655
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1656

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1657
  br label %return, !dbg !1657

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1658
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1660
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1661

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1662
  br label %return, !dbg !1662

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1663
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1665
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1666

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1667
  br label %return, !dbg !1667

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1668
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1670
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1671

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1672
  br label %return, !dbg !1672

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1673, !range !1675, !noundef !1676
  %tobool69 = trunc i8 %25 to i1, !dbg !1673
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1677

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1678

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !1679, !srcloc !1682
  unreachable, !dbg !1679

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1683

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1684

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1685

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1687

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1685

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #13, !dbg !1689, !srcloc !1691
  br label %do.end75, !dbg !1689

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1685

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1692
  br label %return, !dbg !1692

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1693
  ret i32 %26, !dbg !1693
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1694 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !1700 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1704, metadata !DIExpression()), !dbg !1706
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1705, metadata !DIExpression()), !dbg !1707
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1708
  %and = and i32 %0, 17, !dbg !1708
  %cmp = icmp eq i32 %and, 0, !dbg !1708
  %lnot = xor i1 %cmp, true, !dbg !1708
  %lnot1 = xor i1 %lnot, true, !dbg !1708
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1708
  %conv = sext i32 %lnot.ext to i64, !dbg !1708
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1708
  %tobool = icmp ne i64 %expval, 0, !dbg !1708
  br i1 %tobool, label %if.then, label %if.end, !dbg !1710

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1711
  br label %return, !dbg !1711

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1712
  %and2 = and i32 %1, 1, !dbg !1714
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1714
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1715

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1716
  br label %return, !dbg !1716

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1717
  br label %return, !dbg !1717

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1719
  ret i32 %2, !dbg !1719
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1720 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1721 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !1724 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1727
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1726, metadata !DIExpression()), !dbg !1728
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !1729, !srcloc !1730
  %0 = load i64, ptr %flags, align 8, !dbg !1731
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1732
  ret i64 %0, !dbg !1733
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1734 dso_local void @kfree(ptr noundef) #3

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
!llvm.module.flags = !{!836, !837, !838, !839, !840, !841, !842, !843}
!llvm.ident = !{!844}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 14, type: !834, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.nsnames.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22nsnames\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/nsnames.ll drivers/acpi/acpica/nsnames.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !815, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/nsnames.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e4b4c62819de8e7da7980405e747d5b")
!4 = !{!5, !11}
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
!21 = !{!22, !30, !164, !809, !810, !77, !80, !48, !813, !814, !812}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !24, line: 434, size: 1600, elements: !25)
!24 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!25 = !{!26, !37, !807, !808}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !23, file: !24, line: 435, baseType: !27, size: 128)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !24, line: 429, size: 128, elements: !28)
!28 = !{!29, !31}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !27, file: !24, line: 430, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !27, file: !24, line: 431, baseType: !32, size: 8, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !33, line: 17, baseType: !34)
!33 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !35, line: 21, baseType: !36)
!35 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !23, file: !24, line: 436, baseType: !38, size: 576)
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !24, line: 369, size: 576, elements: !39)
!39 = !{!40, !52, !68, !82, !119, !133, !142, !456, !473, !489, !502, !580, !592, !606, !616, !634, !656, !675, !694, !713, !726, !753, !770, !783, !797, !806}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !38, file: !24, line: 370, baseType: !41, size: 128)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !24, line: 73, size: 128, elements: !42)
!42 = !{!43, !45, !46, !47, !51}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !41, file: !24, line: 74, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !41, file: !24, line: 74, baseType: !32, size: 8, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !24, line: 74, baseType: !32, size: 8, offset: 72)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !41, file: !24, line: 74, baseType: !48, size: 16, offset: 80)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !33, line: 19, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !35, line: 24, baseType: !50)
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !41, file: !24, line: 74, baseType: !32, size: 8, offset: 96)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !38, file: !24, line: 371, baseType: !53, size: 192)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !24, line: 76, size: 192, elements: !54)
!54 = !{!55, !56, !57, !58, !59, !60, !64}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !53, file: !24, line: 77, baseType: !44, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !53, file: !24, line: 77, baseType: !32, size: 8, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !24, line: 77, baseType: !32, size: 8, offset: 72)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !53, file: !24, line: 77, baseType: !48, size: 16, offset: 80)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !24, line: 77, baseType: !32, size: 8, offset: 96)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !53, file: !24, line: 77, baseType: !61, size: 24, offset: 104)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 24, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 3)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !53, file: !24, line: 78, baseType: !65, size: 64, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !33, line: 23, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !35, line: 31, baseType: !67)
!67 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !38, file: !24, line: 372, baseType: !69, size: 256)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !24, line: 93, size: 256, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !79}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !69, file: !24, line: 94, baseType: !44, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !69, file: !24, line: 94, baseType: !32, size: 8, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !24, line: 94, baseType: !32, size: 8, offset: 72)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !69, file: !24, line: 94, baseType: !48, size: 16, offset: 80)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !69, file: !24, line: 94, baseType: !32, size: 8, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !69, file: !24, line: 94, baseType: !77, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !69, file: !24, line: 94, baseType: !80, size: 32, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !33, line: 21, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !35, line: 27, baseType: !7)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !38, file: !24, line: 373, baseType: !83, size: 384)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !24, line: 97, size: 384, elements: !84)
!84 = !{!85, !86, !87, !88, !89, !90, !92, !93, !94, !95}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !83, file: !24, line: 98, baseType: !44, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !83, file: !24, line: 98, baseType: !32, size: 8, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !24, line: 98, baseType: !32, size: 8, offset: 72)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !83, file: !24, line: 98, baseType: !48, size: 16, offset: 80)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !83, file: !24, line: 98, baseType: !32, size: 8, offset: 96)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !83, file: !24, line: 98, baseType: !91, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !83, file: !24, line: 98, baseType: !80, size: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !83, file: !24, line: 99, baseType: !80, size: 32, offset: 224)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !83, file: !24, line: 100, baseType: !91, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !83, file: !24, line: 101, baseType: !96, size: 64, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !98, line: 133, size: 384, elements: !99)
!98 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!99 = !{!100, !101, !102, !103, !104, !113, !114, !115, !116}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !97, file: !98, line: 134, baseType: !44, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !97, file: !98, line: 135, baseType: !32, size: 8, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !97, file: !98, line: 136, baseType: !32, size: 8, offset: 72)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !98, line: 137, baseType: !48, size: 16, offset: 80)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !97, file: !98, line: 138, baseType: !105, size: 32, offset: 96)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !106, line: 328, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !105, file: !106, line: 329, baseType: !80, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !105, file: !106, line: 330, baseType: !110, size: 32)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 32, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 4)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !97, file: !98, line: 139, baseType: !96, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !97, file: !98, line: 140, baseType: !96, size: 64, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !97, file: !98, line: 141, baseType: !96, size: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !97, file: !98, line: 142, baseType: !117, size: 16, offset: 320)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !118, line: 445, baseType: !48)
!118 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!119 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !38, file: !24, line: 374, baseType: !120, size: 384)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !24, line: 104, size: 384, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !130, !131, !132}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !120, file: !24, line: 105, baseType: !44, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !120, file: !24, line: 105, baseType: !32, size: 8, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !120, file: !24, line: 105, baseType: !32, size: 8, offset: 72)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !120, file: !24, line: 105, baseType: !48, size: 16, offset: 80)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !120, file: !24, line: 105, baseType: !32, size: 8, offset: 96)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !120, file: !24, line: 105, baseType: !96, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !120, file: !24, line: 106, baseType: !129, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !120, file: !24, line: 107, baseType: !91, size: 64, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !120, file: !24, line: 108, baseType: !80, size: 32, offset: 320)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !120, file: !24, line: 109, baseType: !80, size: 32, offset: 352)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !38, file: !24, line: 375, baseType: !134, size: 192)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !24, line: 118, size: 192, elements: !135)
!135 = !{!136, !137, !138, !139, !140, !141}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !134, file: !24, line: 119, baseType: !44, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !134, file: !24, line: 119, baseType: !32, size: 8, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !134, file: !24, line: 119, baseType: !32, size: 8, offset: 72)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !134, file: !24, line: 119, baseType: !48, size: 16, offset: 80)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !134, file: !24, line: 119, baseType: !32, size: 8, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !134, file: !24, line: 119, baseType: !30, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !38, file: !24, line: 376, baseType: !143, size: 448)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !24, line: 144, size: 448, elements: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !453, !454, !455}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !143, file: !24, line: 145, baseType: !44, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !143, file: !24, line: 145, baseType: !32, size: 8, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !24, line: 145, baseType: !32, size: 8, offset: 72)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !143, file: !24, line: 145, baseType: !48, size: 16, offset: 80)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !143, file: !24, line: 145, baseType: !32, size: 8, offset: 96)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !143, file: !24, line: 145, baseType: !32, size: 8, offset: 104)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !143, file: !24, line: 146, baseType: !32, size: 8, offset: 112)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !143, file: !24, line: 147, baseType: !32, size: 8, offset: 120)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !143, file: !24, line: 148, baseType: !44, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !143, file: !24, line: 149, baseType: !44, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !143, file: !24, line: 150, baseType: !91, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !143, file: !24, line: 154, baseType: !157, size: 64, offset: 320)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !24, line: 151, size: 64, elements: !158)
!158 = !{!159, !452}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !157, file: !24, line: 152, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !98, line: 248, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !165}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !118, line: 421, baseType: !80)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !167, line: 37, size: 9024, elements: !168)
!167 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!168 = !{!169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !398, !399, !400, !401, !402, !406, !408, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !435, !436, !437, !438, !439, !440, !441, !442, !444, !450}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !167, line: 38, baseType: !165, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !166, file: !167, line: 39, baseType: !32, size: 8, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !166, file: !167, line: 40, baseType: !32, size: 8, offset: 72)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !166, file: !167, line: 41, baseType: !48, size: 16, offset: 80)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !166, file: !167, line: 42, baseType: !32, size: 8, offset: 96)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !166, file: !167, line: 43, baseType: !32, size: 8, offset: 104)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !166, file: !167, line: 44, baseType: !32, size: 8, offset: 112)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !166, file: !167, line: 45, baseType: !117, size: 16, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !166, file: !167, line: 46, baseType: !32, size: 8, offset: 144)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !166, file: !167, line: 47, baseType: !32, size: 8, offset: 152)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !166, file: !167, line: 48, baseType: !32, size: 8, offset: 160)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !166, file: !167, line: 49, baseType: !32, size: 8, offset: 168)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !166, file: !167, line: 50, baseType: !32, size: 8, offset: 176)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !166, file: !167, line: 51, baseType: !32, size: 8, offset: 184)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !166, file: !167, line: 52, baseType: !32, size: 8, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !166, file: !167, line: 53, baseType: !32, size: 8, offset: 200)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !166, file: !167, line: 54, baseType: !91, size: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !166, file: !167, line: 55, baseType: !80, size: 32, offset: 320)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !166, file: !167, line: 56, baseType: !80, size: 32, offset: 352)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !166, file: !167, line: 57, baseType: !80, size: 32, offset: 384)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !166, file: !167, line: 58, baseType: !80, size: 32, offset: 416)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !166, file: !167, line: 60, baseType: !191, size: 640, offset: 448)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !98, line: 909, size: 640, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !279, !280, !396, !397}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !191, file: !98, line: 910, baseType: !91, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !191, file: !98, line: 911, baseType: !91, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !191, file: !98, line: 912, baseType: !91, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !191, file: !98, line: 913, baseType: !91, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !191, file: !98, line: 914, baseType: !91, size: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !191, file: !98, line: 915, baseType: !199, size: 64, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !98, line: 891, size: 1600, elements: !201)
!201 = !{!202, !222, !238}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !200, file: !98, line: 892, baseType: !203, size: 448)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !98, line: 844, size: 448, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !221}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !203, file: !98, line: 845, baseType: !199, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !203, file: !98, line: 845, baseType: !32, size: 8, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !203, file: !98, line: 845, baseType: !32, size: 8, offset: 72)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !203, file: !98, line: 845, baseType: !48, size: 16, offset: 80)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !203, file: !98, line: 845, baseType: !91, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !98, line: 845, baseType: !199, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !203, file: !98, line: 845, baseType: !96, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !203, file: !98, line: 845, baseType: !213, size: 64, offset: 320)
!213 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !98, line: 732, size: 64, elements: !214)
!214 = !{!215, !216, !217, !218, !219, !220}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !213, file: !98, line: 733, baseType: !65, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !213, file: !98, line: 734, baseType: !80, size: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !213, file: !98, line: 735, baseType: !77, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !213, file: !98, line: 736, baseType: !91, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !98, line: 737, baseType: !77, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !213, file: !98, line: 738, baseType: !199, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !203, file: !98, line: 845, baseType: !32, size: 8, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !200, file: !98, line: 893, baseType: !223, size: 640)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !98, line: 851, size: 640, elements: !224)
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !223, file: !98, line: 852, baseType: !199, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !223, file: !98, line: 852, baseType: !32, size: 8, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !223, file: !98, line: 852, baseType: !32, size: 8, offset: 72)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !223, file: !98, line: 852, baseType: !48, size: 16, offset: 80)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !223, file: !98, line: 852, baseType: !91, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !98, line: 852, baseType: !199, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !223, file: !98, line: 852, baseType: !96, size: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !223, file: !98, line: 852, baseType: !213, size: 64, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !223, file: !98, line: 852, baseType: !32, size: 8, offset: 384)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !223, file: !98, line: 852, baseType: !77, size: 64, offset: 448)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !223, file: !98, line: 853, baseType: !91, size: 64, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !223, file: !98, line: 854, baseType: !80, size: 32, offset: 576)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !223, file: !98, line: 855, baseType: !80, size: 32, offset: 608)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !200, file: !98, line: 894, baseType: !239, size: 1600)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !98, line: 862, size: 1600, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !239, file: !98, line: 863, baseType: !199, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !239, file: !98, line: 863, baseType: !32, size: 8, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !239, file: !98, line: 863, baseType: !32, size: 8, offset: 72)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !239, file: !98, line: 863, baseType: !48, size: 16, offset: 80)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !239, file: !98, line: 863, baseType: !91, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !98, line: 863, baseType: !199, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !239, file: !98, line: 863, baseType: !96, size: 64, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !239, file: !98, line: 863, baseType: !213, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !239, file: !98, line: 863, baseType: !32, size: 8, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !239, file: !98, line: 863, baseType: !199, size: 64, offset: 448)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !239, file: !98, line: 864, baseType: !199, size: 64, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !239, file: !98, line: 865, baseType: !77, size: 64, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !239, file: !98, line: 866, baseType: !32, size: 8, offset: 640)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !239, file: !98, line: 867, baseType: !77, size: 64, offset: 704)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !239, file: !98, line: 868, baseType: !77, size: 64, offset: 768)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !239, file: !98, line: 869, baseType: !77, size: 64, offset: 832)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !239, file: !98, line: 870, baseType: !110, size: 32, offset: 896)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !239, file: !98, line: 871, baseType: !80, size: 32, offset: 928)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !239, file: !98, line: 872, baseType: !80, size: 32, offset: 960)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !239, file: !98, line: 873, baseType: !80, size: 32, offset: 992)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !239, file: !98, line: 874, baseType: !80, size: 32, offset: 1024)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !239, file: !98, line: 875, baseType: !80, size: 32, offset: 1056)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !239, file: !98, line: 876, baseType: !80, size: 32, offset: 1088)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !239, file: !98, line: 877, baseType: !80, size: 32, offset: 1120)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !239, file: !98, line: 878, baseType: !80, size: 32, offset: 1152)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !239, file: !98, line: 879, baseType: !80, size: 32, offset: 1184)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !239, file: !98, line: 880, baseType: !80, size: 32, offset: 1216)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !239, file: !98, line: 881, baseType: !80, size: 32, offset: 1248)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !239, file: !98, line: 882, baseType: !80, size: 32, offset: 1280)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !239, file: !98, line: 883, baseType: !80, size: 32, offset: 1312)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !239, file: !98, line: 884, baseType: !48, size: 16, offset: 1344)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !239, file: !98, line: 885, baseType: !32, size: 8, offset: 1360)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !239, file: !98, line: 886, baseType: !32, size: 8, offset: 1368)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !239, file: !98, line: 887, baseType: !32, size: 8, offset: 1376)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !239, file: !98, line: 888, baseType: !276, size: 160, offset: 1384)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 160, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 20)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !191, file: !98, line: 916, baseType: !96, size: 64, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !191, file: !98, line: 917, baseType: !281, size: 64, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !98, line: 679, size: 640, elements: !283)
!283 = !{!284, !292, !305, !314, !323, !336, !350, !362, !374}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !282, file: !98, line: 680, baseType: !285, size: 128)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !98, line: 575, size: 128, elements: !286)
!286 = !{!287, !288, !289, !290, !291}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !285, file: !98, line: 576, baseType: !30, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !285, file: !98, line: 576, baseType: !32, size: 8, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !285, file: !98, line: 576, baseType: !32, size: 8, offset: 72)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !285, file: !98, line: 576, baseType: !48, size: 16, offset: 80)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !285, file: !98, line: 576, baseType: !48, size: 16, offset: 96)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !282, file: !98, line: 681, baseType: !293, size: 384)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !98, line: 604, size: 384, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303, !304}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !293, file: !98, line: 605, baseType: !30, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !293, file: !98, line: 605, baseType: !32, size: 8, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !293, file: !98, line: 605, baseType: !32, size: 8, offset: 72)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !293, file: !98, line: 605, baseType: !48, size: 16, offset: 80)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !293, file: !98, line: 605, baseType: !48, size: 16, offset: 96)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !293, file: !98, line: 606, baseType: !48, size: 16, offset: 112)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !293, file: !98, line: 607, baseType: !199, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !293, file: !98, line: 608, baseType: !91, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !293, file: !98, line: 609, baseType: !91, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !293, file: !98, line: 610, baseType: !65, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !282, file: !98, line: 682, baseType: !306, size: 192)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !98, line: 582, size: 192, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !98, line: 583, baseType: !30, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !306, file: !98, line: 583, baseType: !32, size: 8, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !306, file: !98, line: 583, baseType: !32, size: 8, offset: 72)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !306, file: !98, line: 583, baseType: !48, size: 16, offset: 80)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !306, file: !98, line: 583, baseType: !48, size: 16, offset: 96)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !306, file: !98, line: 584, baseType: !44, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !282, file: !98, line: 683, baseType: !315, size: 192)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !98, line: 616, size: 192, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !98, line: 617, baseType: !30, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !315, file: !98, line: 617, baseType: !32, size: 8, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !98, line: 617, baseType: !32, size: 8, offset: 72)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !315, file: !98, line: 617, baseType: !48, size: 16, offset: 80)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !315, file: !98, line: 617, baseType: !48, size: 16, offset: 96)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !315, file: !98, line: 618, baseType: !96, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !282, file: !98, line: 684, baseType: !324, size: 448)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !98, line: 621, size: 448, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !324, file: !98, line: 622, baseType: !30, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !324, file: !98, line: 622, baseType: !32, size: 8, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !98, line: 622, baseType: !32, size: 8, offset: 72)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !324, file: !98, line: 622, baseType: !48, size: 16, offset: 80)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !324, file: !98, line: 622, baseType: !48, size: 16, offset: 96)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !324, file: !98, line: 623, baseType: !80, size: 32, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !324, file: !98, line: 624, baseType: !199, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !324, file: !98, line: 625, baseType: !91, size: 64, offset: 256)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !324, file: !98, line: 626, baseType: !91, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !324, file: !98, line: 627, baseType: !80, size: 32, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !282, file: !98, line: 685, baseType: !337, size: 512)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !98, line: 590, size: 512, elements: !338)
!338 = !{!339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !337, file: !98, line: 591, baseType: !30, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !337, file: !98, line: 591, baseType: !32, size: 8, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !337, file: !98, line: 591, baseType: !32, size: 8, offset: 72)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !337, file: !98, line: 591, baseType: !48, size: 16, offset: 80)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !337, file: !98, line: 591, baseType: !48, size: 16, offset: 96)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !337, file: !98, line: 592, baseType: !80, size: 32, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !337, file: !98, line: 593, baseType: !44, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !337, file: !98, line: 594, baseType: !44, size: 64, offset: 256)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !337, file: !98, line: 595, baseType: !165, size: 64, offset: 320)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !337, file: !98, line: 596, baseType: !30, size: 64, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !337, file: !98, line: 597, baseType: !80, size: 32, offset: 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !282, file: !98, line: 686, baseType: !351, size: 320)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !98, line: 634, size: 320, elements: !352)
!352 = !{!353, !354, !355, !356, !357, !358, !359, !360, !361}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !98, line: 635, baseType: !30, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !351, file: !98, line: 635, baseType: !32, size: 8, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !351, file: !98, line: 635, baseType: !32, size: 8, offset: 72)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !351, file: !98, line: 635, baseType: !48, size: 16, offset: 80)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !351, file: !98, line: 635, baseType: !48, size: 16, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !351, file: !98, line: 636, baseType: !32, size: 8, offset: 112)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !351, file: !98, line: 637, baseType: !165, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !351, file: !98, line: 638, baseType: !44, size: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !351, file: !98, line: 639, baseType: !65, size: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !282, file: !98, line: 687, baseType: !363, size: 640)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !98, line: 646, size: 640, elements: !364)
!364 = !{!365, !366, !367, !368, !369, !370}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !363, file: !98, line: 647, baseType: !30, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !363, file: !98, line: 647, baseType: !32, size: 8, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !363, file: !98, line: 647, baseType: !32, size: 8, offset: 72)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !363, file: !98, line: 647, baseType: !48, size: 16, offset: 80)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !363, file: !98, line: 647, baseType: !48, size: 16, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !363, file: !98, line: 648, baseType: !371, size: 512, offset: 128)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 512, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 8)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !282, file: !98, line: 688, baseType: !375, size: 320)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !98, line: 669, size: 320, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383, !384, !385}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !98, line: 670, baseType: !30, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !375, file: !98, line: 670, baseType: !32, size: 8, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !375, file: !98, line: 670, baseType: !32, size: 8, offset: 72)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !375, file: !98, line: 670, baseType: !48, size: 16, offset: 80)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !375, file: !98, line: 670, baseType: !48, size: 16, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !375, file: !98, line: 671, baseType: !32, size: 8, offset: 112)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !375, file: !98, line: 672, baseType: !96, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !375, file: !98, line: 673, baseType: !44, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !375, file: !98, line: 674, baseType: !386, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !98, line: 660, size: 128, elements: !388)
!388 = !{!389, !395}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !387, file: !98, line: 661, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !118, line: 1061, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !394, !80, !30}
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !118, line: 424, baseType: !30)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !387, file: !98, line: 662, baseType: !30, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !191, file: !98, line: 918, baseType: !199, size: 64, offset: 512)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !191, file: !98, line: 919, baseType: !80, size: 32, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !166, file: !167, line: 61, baseType: !80, size: 32, offset: 1088)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !166, file: !167, line: 62, baseType: !80, size: 32, offset: 1120)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !166, file: !167, line: 63, baseType: !48, size: 16, offset: 1152)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !166, file: !167, line: 64, baseType: !32, size: 8, offset: 1168)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !166, file: !167, line: 66, baseType: !403, size: 2688, offset: 1216)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 2688, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 7)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !166, file: !167, line: 67, baseType: !407, size: 3072, offset: 3904)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 3072, elements: !372)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !166, file: !167, line: 68, baseType: !409, size: 576, offset: 6976)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 576, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 9)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !166, file: !167, line: 69, baseType: !129, size: 64, offset: 7552)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !166, file: !167, line: 71, baseType: !91, size: 64, offset: 7616)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !166, file: !167, line: 72, baseType: !129, size: 64, offset: 7680)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !166, file: !167, line: 73, baseType: !281, size: 64, offset: 7744)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !166, file: !167, line: 74, baseType: !96, size: 64, offset: 7808)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !166, file: !167, line: 75, baseType: !44, size: 64, offset: 7872)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !166, file: !167, line: 76, baseType: !96, size: 64, offset: 7936)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !166, file: !167, line: 77, baseType: !199, size: 64, offset: 8000)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !166, file: !167, line: 78, baseType: !44, size: 64, offset: 8064)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !166, file: !167, line: 79, baseType: !96, size: 64, offset: 8128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !166, file: !167, line: 80, baseType: !77, size: 64, offset: 8192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !166, file: !167, line: 81, baseType: !199, size: 64, offset: 8256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !166, file: !167, line: 82, baseType: !425, size: 64, offset: 8320)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !98, line: 718, size: 128, elements: !428)
!428 = !{!429, !430, !431, !432, !433, !434}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !427, file: !98, line: 722, baseType: !80, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !427, file: !98, line: 723, baseType: !80, size: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !427, file: !98, line: 724, baseType: !48, size: 16, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !427, file: !98, line: 725, baseType: !32, size: 8, offset: 80)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !427, file: !98, line: 726, baseType: !32, size: 8, offset: 88)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !427, file: !98, line: 727, baseType: !32, size: 8, offset: 96)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !166, file: !167, line: 83, baseType: !199, size: 64, offset: 8384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !166, file: !167, line: 84, baseType: !44, size: 64, offset: 8448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !166, file: !167, line: 85, baseType: !281, size: 64, offset: 8512)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !166, file: !167, line: 86, baseType: !44, size: 64, offset: 8576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !166, file: !167, line: 87, baseType: !281, size: 64, offset: 8640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !166, file: !167, line: 88, baseType: !199, size: 64, offset: 8704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !166, file: !167, line: 89, baseType: !199, size: 64, offset: 8768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !166, file: !167, line: 90, baseType: !443, size: 64, offset: 8832)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !166, file: !167, line: 91, baseType: !445, size: 64, offset: 8896)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !98, line: 652, baseType: !446)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!164, !165, !449}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !166, file: !167, line: 92, baseType: !451, size: 64, offset: 8960)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !98, line: 656, baseType: !161)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !157, file: !24, line: 153, baseType: !44, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !143, file: !24, line: 156, baseType: !80, size: 32, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !143, file: !24, line: 157, baseType: !117, size: 16, offset: 416)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !143, file: !24, line: 158, baseType: !32, size: 8, offset: 432)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !38, file: !24, line: 377, baseType: !457, size: 576)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !24, line: 122, size: 576, elements: !458)
!458 = !{!459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !457, file: !24, line: 123, baseType: !44, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !457, file: !24, line: 123, baseType: !32, size: 8, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !457, file: !24, line: 123, baseType: !32, size: 8, offset: 72)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !457, file: !24, line: 123, baseType: !48, size: 16, offset: 80)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !457, file: !24, line: 123, baseType: !32, size: 8, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !457, file: !24, line: 123, baseType: !32, size: 8, offset: 104)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !457, file: !24, line: 124, baseType: !48, size: 16, offset: 112)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !457, file: !24, line: 125, baseType: !30, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !457, file: !24, line: 126, baseType: !65, size: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !457, file: !24, line: 127, baseType: !443, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !457, file: !24, line: 128, baseType: !44, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !24, line: 129, baseType: !44, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !457, file: !24, line: 130, baseType: !96, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !457, file: !24, line: 131, baseType: !32, size: 8, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !38, file: !24, line: 378, baseType: !474, size: 512)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !24, line: 134, size: 512, elements: !475)
!475 = !{!476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !487, !488}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !474, file: !24, line: 135, baseType: !44, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !474, file: !24, line: 135, baseType: !32, size: 8, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !24, line: 135, baseType: !32, size: 8, offset: 72)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !474, file: !24, line: 135, baseType: !48, size: 16, offset: 80)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !24, line: 135, baseType: !32, size: 8, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !474, file: !24, line: 135, baseType: !32, size: 8, offset: 104)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !474, file: !24, line: 136, baseType: !96, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !474, file: !24, line: 137, baseType: !44, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !474, file: !24, line: 138, baseType: !44, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !474, file: !24, line: 139, baseType: !486, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !118, line: 129, baseType: !65)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !474, file: !24, line: 140, baseType: !80, size: 32, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !474, file: !24, line: 141, baseType: !30, size: 64, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !38, file: !24, line: 379, baseType: !490, size: 320)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !24, line: 185, size: 320, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !497, !501}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !490, file: !24, line: 186, baseType: !44, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !490, file: !24, line: 186, baseType: !32, size: 8, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !490, file: !24, line: 186, baseType: !32, size: 8, offset: 72)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !490, file: !24, line: 186, baseType: !48, size: 16, offset: 80)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !24, line: 186, baseType: !32, size: 8, offset: 96)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !490, file: !24, line: 186, baseType: !498, size: 128, offset: 128)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 128, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 2)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !490, file: !24, line: 186, baseType: !44, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !38, file: !24, line: 380, baseType: !503, size: 384)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !24, line: 188, size: 384, elements: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !503, file: !24, line: 189, baseType: !44, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !503, file: !24, line: 189, baseType: !32, size: 8, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !503, file: !24, line: 189, baseType: !32, size: 8, offset: 72)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !503, file: !24, line: 189, baseType: !48, size: 16, offset: 80)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !503, file: !24, line: 189, baseType: !32, size: 8, offset: 96)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !503, file: !24, line: 190, baseType: !498, size: 128, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !503, file: !24, line: 190, baseType: !44, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !503, file: !24, line: 190, baseType: !513, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !98, line: 480, size: 576, elements: !515)
!515 = !{!516, !517, !518, !519, !527, !542, !574, !575, !576, !577, !578, !579}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !514, file: !98, line: 481, baseType: !96, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !514, file: !98, line: 482, baseType: !513, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !514, file: !98, line: 483, baseType: !513, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !514, file: !98, line: 484, baseType: !520, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !98, line: 497, size: 256, elements: !522)
!522 = !{!523, !524, !525, !526}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !521, file: !98, line: 498, baseType: !520, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !521, file: !98, line: 499, baseType: !520, size: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !521, file: !98, line: 500, baseType: !513, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !521, file: !98, line: 501, baseType: !80, size: 32, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !514, file: !98, line: 485, baseType: !528, size: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !98, line: 466, size: 320, elements: !530)
!530 = !{!531, !536, !537, !538, !539, !540, !541}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !529, file: !98, line: 467, baseType: !532, size: 128)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !98, line: 459, size: 128, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !532, file: !98, line: 460, baseType: !32, size: 8)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !532, file: !98, line: 461, baseType: !65, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !529, file: !98, line: 468, baseType: !532, size: 128, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !529, file: !98, line: 469, baseType: !48, size: 16, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !529, file: !98, line: 470, baseType: !32, size: 8, offset: 272)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !529, file: !98, line: 471, baseType: !32, size: 8, offset: 280)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !529, file: !98, line: 472, baseType: !32, size: 8, offset: 288)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !529, file: !98, line: 473, baseType: !32, size: 8, offset: 296)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !514, file: !98, line: 486, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !98, line: 448, size: 192, elements: !545)
!545 = !{!546, !569, !570, !571, !572, !573}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !544, file: !98, line: 449, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !98, line: 438, size: 64, elements: !548)
!548 = !{!549, !550, !563}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !547, file: !98, line: 439, baseType: !96, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !547, file: !98, line: 440, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !98, line: 419, size: 256, elements: !553)
!553 = !{!554, !559, !560, !561, !562}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !552, file: !98, line: 420, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !118, line: 1058, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!80, !394, !80, !30}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !552, file: !98, line: 421, baseType: !30, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !552, file: !98, line: 422, baseType: !96, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !552, file: !98, line: 423, baseType: !32, size: 8, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !552, file: !98, line: 424, baseType: !32, size: 8, offset: 200)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !547, file: !98, line: 441, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !98, line: 429, size: 128, elements: !566)
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !565, file: !98, line: 430, baseType: !96, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !565, file: !98, line: 431, baseType: !564, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !544, file: !98, line: 450, baseType: !528, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !544, file: !98, line: 451, baseType: !32, size: 8, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !544, file: !98, line: 452, baseType: !32, size: 8, offset: 136)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !544, file: !98, line: 453, baseType: !32, size: 8, offset: 144)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !544, file: !98, line: 454, baseType: !32, size: 8, offset: 152)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !514, file: !98, line: 487, baseType: !65, size: 64, offset: 384)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !514, file: !98, line: 488, baseType: !80, size: 32, offset: 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !514, file: !98, line: 489, baseType: !48, size: 16, offset: 480)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !514, file: !98, line: 490, baseType: !48, size: 16, offset: 496)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !514, file: !98, line: 491, baseType: !32, size: 8, offset: 512)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !514, file: !98, line: 492, baseType: !32, size: 8, offset: 520)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !38, file: !24, line: 381, baseType: !581, size: 384)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !24, line: 193, size: 384, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !589, !590, !591}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !581, file: !24, line: 194, baseType: !44, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !581, file: !24, line: 194, baseType: !32, size: 8, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !581, file: !24, line: 194, baseType: !32, size: 8, offset: 72)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !581, file: !24, line: 194, baseType: !48, size: 16, offset: 80)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !24, line: 194, baseType: !32, size: 8, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !581, file: !24, line: 194, baseType: !498, size: 128, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !581, file: !24, line: 194, baseType: !44, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !581, file: !24, line: 194, baseType: !80, size: 32, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !581, file: !24, line: 195, baseType: !80, size: 32, offset: 352)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !38, file: !24, line: 382, baseType: !593, size: 384)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !24, line: 198, size: 384, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603, !604}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !593, file: !24, line: 199, baseType: !44, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !593, file: !24, line: 199, baseType: !32, size: 8, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !593, file: !24, line: 199, baseType: !32, size: 8, offset: 72)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !593, file: !24, line: 199, baseType: !48, size: 16, offset: 80)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !593, file: !24, line: 199, baseType: !32, size: 8, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !593, file: !24, line: 201, baseType: !32, size: 8, offset: 104)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !593, file: !24, line: 202, baseType: !32, size: 8, offset: 112)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !593, file: !24, line: 203, baseType: !498, size: 128, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !593, file: !24, line: 203, baseType: !44, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !593, file: !24, line: 203, baseType: !605, size: 64, offset: 320)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !118, line: 128, baseType: !65)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !38, file: !24, line: 383, baseType: !607, size: 320)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !24, line: 206, size: 320, elements: !608)
!608 = !{!609, !610, !611, !612, !613, !614, !615}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !607, file: !24, line: 207, baseType: !44, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !607, file: !24, line: 207, baseType: !32, size: 8, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !607, file: !24, line: 207, baseType: !32, size: 8, offset: 72)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !607, file: !24, line: 207, baseType: !48, size: 16, offset: 80)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !607, file: !24, line: 207, baseType: !32, size: 8, offset: 96)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !607, file: !24, line: 207, baseType: !498, size: 128, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !607, file: !24, line: 207, baseType: !44, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !38, file: !24, line: 384, baseType: !617, size: 384)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !24, line: 234, size: 384, elements: !618)
!618 = !{!619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !617, file: !24, line: 235, baseType: !44, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !617, file: !24, line: 235, baseType: !32, size: 8, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !617, file: !24, line: 235, baseType: !32, size: 8, offset: 72)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !617, file: !24, line: 235, baseType: !48, size: 16, offset: 80)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !617, file: !24, line: 235, baseType: !32, size: 8, offset: 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !617, file: !24, line: 235, baseType: !32, size: 8, offset: 104)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !617, file: !24, line: 235, baseType: !32, size: 8, offset: 112)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !617, file: !24, line: 235, baseType: !32, size: 8, offset: 120)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !617, file: !24, line: 235, baseType: !96, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !617, file: !24, line: 235, baseType: !80, size: 32, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !617, file: !24, line: 235, baseType: !80, size: 32, offset: 224)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !617, file: !24, line: 235, baseType: !80, size: 32, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !617, file: !24, line: 235, baseType: !32, size: 8, offset: 288)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !617, file: !24, line: 235, baseType: !32, size: 8, offset: 296)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !617, file: !24, line: 235, baseType: !44, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !38, file: !24, line: 385, baseType: !635, size: 576)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !24, line: 238, size: 576, elements: !636)
!636 = !{!637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !635, file: !24, line: 239, baseType: !44, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !635, file: !24, line: 239, baseType: !32, size: 8, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !635, file: !24, line: 239, baseType: !32, size: 8, offset: 72)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !635, file: !24, line: 239, baseType: !48, size: 16, offset: 80)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !24, line: 239, baseType: !32, size: 8, offset: 96)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !635, file: !24, line: 239, baseType: !32, size: 8, offset: 104)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !635, file: !24, line: 239, baseType: !32, size: 8, offset: 112)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !635, file: !24, line: 239, baseType: !32, size: 8, offset: 120)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !635, file: !24, line: 239, baseType: !96, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !635, file: !24, line: 239, baseType: !80, size: 32, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !635, file: !24, line: 239, baseType: !80, size: 32, offset: 224)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !635, file: !24, line: 239, baseType: !80, size: 32, offset: 256)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !635, file: !24, line: 239, baseType: !32, size: 8, offset: 288)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !635, file: !24, line: 239, baseType: !32, size: 8, offset: 296)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !635, file: !24, line: 239, baseType: !48, size: 16, offset: 304)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !635, file: !24, line: 240, baseType: !44, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !635, file: !24, line: 241, baseType: !91, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !635, file: !24, line: 242, baseType: !48, size: 16, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !635, file: !24, line: 243, baseType: !91, size: 64, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !38, file: !24, line: 386, baseType: !657, size: 384)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !24, line: 263, size: 384, elements: !658)
!658 = !{!659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !657, file: !24, line: 264, baseType: !44, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !657, file: !24, line: 264, baseType: !32, size: 8, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !657, file: !24, line: 264, baseType: !32, size: 8, offset: 72)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !657, file: !24, line: 264, baseType: !48, size: 16, offset: 80)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !657, file: !24, line: 264, baseType: !32, size: 8, offset: 96)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !657, file: !24, line: 264, baseType: !32, size: 8, offset: 104)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !657, file: !24, line: 264, baseType: !32, size: 8, offset: 112)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !657, file: !24, line: 264, baseType: !32, size: 8, offset: 120)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !657, file: !24, line: 264, baseType: !96, size: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !657, file: !24, line: 264, baseType: !80, size: 32, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !657, file: !24, line: 264, baseType: !80, size: 32, offset: 224)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !657, file: !24, line: 264, baseType: !80, size: 32, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !657, file: !24, line: 264, baseType: !32, size: 8, offset: 288)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !657, file: !24, line: 264, baseType: !32, size: 8, offset: 296)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !657, file: !24, line: 264, baseType: !32, size: 8, offset: 304)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !657, file: !24, line: 265, baseType: !44, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !38, file: !24, line: 387, baseType: !676, size: 448)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !24, line: 246, size: 448, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !676, file: !24, line: 247, baseType: !44, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !676, file: !24, line: 247, baseType: !32, size: 8, offset: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !24, line: 247, baseType: !32, size: 8, offset: 72)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !24, line: 247, baseType: !48, size: 16, offset: 80)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !24, line: 247, baseType: !32, size: 8, offset: 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !676, file: !24, line: 247, baseType: !32, size: 8, offset: 104)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !676, file: !24, line: 247, baseType: !32, size: 8, offset: 112)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !676, file: !24, line: 247, baseType: !32, size: 8, offset: 120)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !676, file: !24, line: 247, baseType: !96, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !676, file: !24, line: 247, baseType: !80, size: 32, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !676, file: !24, line: 247, baseType: !80, size: 32, offset: 224)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !676, file: !24, line: 247, baseType: !80, size: 32, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !676, file: !24, line: 247, baseType: !32, size: 8, offset: 288)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !676, file: !24, line: 247, baseType: !32, size: 8, offset: 296)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !676, file: !24, line: 247, baseType: !44, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !676, file: !24, line: 248, baseType: !44, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !38, file: !24, line: 388, baseType: !695, size: 448)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !24, line: 251, size: 448, elements: !696)
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !695, file: !24, line: 252, baseType: !44, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !695, file: !24, line: 252, baseType: !32, size: 8, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !695, file: !24, line: 252, baseType: !32, size: 8, offset: 72)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !695, file: !24, line: 252, baseType: !48, size: 16, offset: 80)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !24, line: 252, baseType: !32, size: 8, offset: 96)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !695, file: !24, line: 252, baseType: !32, size: 8, offset: 104)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !695, file: !24, line: 252, baseType: !32, size: 8, offset: 112)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !695, file: !24, line: 252, baseType: !32, size: 8, offset: 120)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !695, file: !24, line: 252, baseType: !96, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !695, file: !24, line: 252, baseType: !80, size: 32, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !695, file: !24, line: 252, baseType: !80, size: 32, offset: 224)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !695, file: !24, line: 252, baseType: !80, size: 32, offset: 256)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !695, file: !24, line: 252, baseType: !32, size: 8, offset: 288)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !695, file: !24, line: 252, baseType: !32, size: 8, offset: 296)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !695, file: !24, line: 257, baseType: !44, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !695, file: !24, line: 258, baseType: !44, size: 64, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !38, file: !24, line: 389, baseType: !714, size: 512)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !24, line: 274, size: 512, elements: !715)
!715 = !{!716, !717, !718, !719, !720, !721, !722, !723, !724, !725}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !714, file: !24, line: 275, baseType: !44, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !714, file: !24, line: 275, baseType: !32, size: 8, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !714, file: !24, line: 275, baseType: !32, size: 8, offset: 72)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !714, file: !24, line: 275, baseType: !48, size: 16, offset: 80)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !714, file: !24, line: 275, baseType: !32, size: 8, offset: 96)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !714, file: !24, line: 275, baseType: !96, size: 64, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !714, file: !24, line: 276, baseType: !80, size: 32, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !714, file: !24, line: 277, baseType: !390, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !714, file: !24, line: 278, baseType: !30, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !24, line: 279, baseType: !498, size: 128, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !38, file: !24, line: 390, baseType: !727, size: 576)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !24, line: 282, size: 576, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !742, !743, !744, !745, !751, !752}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !727, file: !24, line: 283, baseType: !44, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !727, file: !24, line: 283, baseType: !32, size: 8, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !727, file: !24, line: 283, baseType: !32, size: 8, offset: 72)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !727, file: !24, line: 283, baseType: !48, size: 16, offset: 80)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !727, file: !24, line: 283, baseType: !32, size: 8, offset: 96)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !727, file: !24, line: 283, baseType: !32, size: 8, offset: 104)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !727, file: !24, line: 284, baseType: !32, size: 8, offset: 112)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !727, file: !24, line: 285, baseType: !737, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !118, line: 1093, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!164, !80, !486, !80, !741, !30, !30}
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !727, file: !24, line: 286, baseType: !96, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !727, file: !24, line: 287, baseType: !30, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !727, file: !24, line: 288, baseType: !30, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !727, file: !24, line: 289, baseType: !746, size: 64, offset: 384)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !118, line: 1126, baseType: !747)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!164, !394, !80, !30, !750}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !727, file: !24, line: 290, baseType: !44, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !727, file: !24, line: 291, baseType: !44, size: 64, offset: 512)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !38, file: !24, line: 391, baseType: !754, size: 512)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !24, line: 309, size: 512, elements: !755)
!755 = !{!756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !754, file: !24, line: 310, baseType: !44, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !754, file: !24, line: 310, baseType: !32, size: 8, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !754, file: !24, line: 310, baseType: !32, size: 8, offset: 72)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !754, file: !24, line: 310, baseType: !48, size: 16, offset: 80)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !754, file: !24, line: 310, baseType: !32, size: 8, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !754, file: !24, line: 310, baseType: !32, size: 8, offset: 104)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !754, file: !24, line: 311, baseType: !32, size: 8, offset: 112)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !754, file: !24, line: 312, baseType: !32, size: 8, offset: 120)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !754, file: !24, line: 313, baseType: !30, size: 64, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !754, file: !24, line: 314, baseType: !96, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !754, file: !24, line: 315, baseType: !129, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !754, file: !24, line: 316, baseType: !91, size: 64, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !754, file: !24, line: 317, baseType: !91, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !754, file: !24, line: 318, baseType: !80, size: 32, offset: 448)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !38, file: !24, line: 392, baseType: !771, size: 448)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !24, line: 342, size: 448, elements: !772)
!772 = !{!773, !774, !775, !776, !777, !778, !779, !780, !781, !782}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !771, file: !24, line: 343, baseType: !44, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !771, file: !24, line: 343, baseType: !32, size: 8, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !771, file: !24, line: 343, baseType: !32, size: 8, offset: 72)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !771, file: !24, line: 343, baseType: !48, size: 16, offset: 80)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !771, file: !24, line: 343, baseType: !32, size: 8, offset: 96)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !771, file: !24, line: 343, baseType: !96, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !771, file: !24, line: 344, baseType: !96, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !771, file: !24, line: 345, baseType: !30, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !771, file: !24, line: 346, baseType: !91, size: 64, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !771, file: !24, line: 347, baseType: !80, size: 32, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !38, file: !24, line: 393, baseType: !784, size: 256)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !24, line: 352, size: 256, elements: !785)
!785 = !{!786, !787, !788, !789, !790, !791, !796}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !784, file: !24, line: 353, baseType: !44, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !784, file: !24, line: 353, baseType: !32, size: 8, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !784, file: !24, line: 353, baseType: !32, size: 8, offset: 72)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !784, file: !24, line: 353, baseType: !48, size: 16, offset: 80)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !784, file: !24, line: 353, baseType: !32, size: 8, offset: 96)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !784, file: !24, line: 353, baseType: !792, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !118, line: 1064, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !394, !30}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !784, file: !24, line: 354, baseType: !30, size: 64, offset: 192)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !38, file: !24, line: 394, baseType: !798, size: 192)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !24, line: 359, size: 192, elements: !799)
!799 = !{!800, !801, !802, !803, !804, !805}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !798, file: !24, line: 360, baseType: !44, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !798, file: !24, line: 360, baseType: !32, size: 8, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !798, file: !24, line: 360, baseType: !32, size: 8, offset: 72)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !798, file: !24, line: 360, baseType: !48, size: 16, offset: 80)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !798, file: !24, line: 360, baseType: !32, size: 8, offset: 96)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !798, file: !24, line: 360, baseType: !44, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !38, file: !24, line: 401, baseType: !97, size: 384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !23, file: !24, line: 437, baseType: !97, size: 384)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !23, file: !24, line: 438, baseType: !200, size: 1600)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !811, line: 42, baseType: !812)
!811 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!812 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !118, line: 127, baseType: !65)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !811, line: 154, baseType: !7)
!815 = !{!816, !821, !826, !0, !829}
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !818, isLocal: true, isDefinition: true)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 488, elements: !819)
!819 = !{!820}
!820 = !DISubrange(count: 61)
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(scope: null, file: !3, line: 308, type: !823, isLocal: true, isDefinition: true)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 224, elements: !824)
!824 = !{!825}
!825 = !DISubrange(count: 28)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(scope: null, file: !3, line: 378, type: !828, isLocal: true, isDefinition: true)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 16, elements: !499)
!829 = !DIGlobalVariableExpression(var: !830, expr: !DIExpression())
!830 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !831, isLocal: true, isDefinition: true)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 168, elements: !832)
!832 = !{!833}
!833 = !DISubrange(count: 21)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 64, elements: !372)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!836 = !{i32 7, !"Dwarf Version", i32 5}
!837 = !{i32 2, !"Debug Info Version", i32 3}
!838 = !{i32 1, !"wchar_size", i32 2}
!839 = !{i32 8, !"cf-protection-branch", i32 1}
!840 = !{i32 4, !"function_return_thunk_extern", i32 1}
!841 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!842 = !{i32 1, !"Code Model", i32 2}
!843 = !{i32 1, !"override-stack-alignment", i32 8}
!844 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!845 = distinct !DISubprogram(name: "acpi_ns_get_external_pathname", scope: !3, file: !3, line: 30, type: !846, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !848)
!846 = !DISubroutineType(types: !847)
!847 = !{!77, !96}
!848 = !{!849, !850}
!849 = !DILocalVariable(name: "node", arg: 1, scope: !845, file: !3, line: 30, type: !96)
!850 = !DILocalVariable(name: "name_buffer", scope: !845, file: !3, line: 32, type: !77)
!851 = !DILocation(line: 30, column: 65, scope: !845)
!852 = !DILocation(line: 32, column: 2, scope: !845)
!853 = !DILocation(line: 32, column: 8, scope: !845)
!854 = !DILocation(line: 36, column: 48, scope: !845)
!855 = !DILocation(line: 36, column: 16, scope: !845)
!856 = !DILocation(line: 36, column: 14, scope: !845)
!857 = !DILocation(line: 37, column: 2, scope: !845)
!858 = !DILocation(line: 38, column: 1, scope: !845)
!859 = distinct !DISubprogram(name: "acpi_ns_get_normalized_pathname", scope: !3, file: !3, line: 289, type: !860, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !862)
!860 = !DISubroutineType(types: !861)
!861 = !{!77, !96, !32}
!862 = !{!863, !864, !865, !866}
!863 = !DILocalVariable(name: "node", arg: 1, scope: !859, file: !3, line: 289, type: !96)
!864 = !DILocalVariable(name: "no_trailing", arg: 2, scope: !859, file: !3, line: 290, type: !32)
!865 = !DILocalVariable(name: "name_buffer", scope: !859, file: !3, line: 292, type: !77)
!866 = !DILocalVariable(name: "size", scope: !859, file: !3, line: 293, type: !813)
!867 = !DILocation(line: 289, column: 67, scope: !859)
!868 = !DILocation(line: 290, column: 14, scope: !859)
!869 = !DILocation(line: 292, column: 2, scope: !859)
!870 = !DILocation(line: 292, column: 8, scope: !859)
!871 = !DILocation(line: 293, column: 2, scope: !859)
!872 = !DILocation(line: 293, column: 12, scope: !859)
!873 = !DILocation(line: 299, column: 39, scope: !859)
!874 = !DILocation(line: 299, column: 54, scope: !859)
!875 = !DILocation(line: 299, column: 9, scope: !859)
!876 = !DILocation(line: 299, column: 7, scope: !859)
!877 = !DILocation(line: 300, column: 7, scope: !878)
!878 = distinct !DILexicalBlock(scope: !859, file: !3, line: 300, column: 6)
!879 = !DILocation(line: 300, column: 6, scope: !859)
!880 = !DILocation(line: 301, column: 3, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !3, line: 300, column: 13)
!882 = !DILocation(line: 306, column: 16, scope: !859)
!883 = !DILocation(line: 306, column: 14, scope: !859)
!884 = !DILocation(line: 307, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !859, file: !3, line: 307, column: 6)
!886 = !DILocation(line: 307, column: 6, scope: !859)
!887 = !DILocation(line: 308, column: 3, scope: !888)
!888 = distinct !DILexicalBlock(scope: !885, file: !3, line: 307, column: 20)
!889 = !DILocation(line: 309, column: 3, scope: !888)
!890 = !DILocation(line: 314, column: 38, scope: !859)
!891 = !DILocation(line: 314, column: 44, scope: !859)
!892 = !DILocation(line: 314, column: 62, scope: !859)
!893 = !DILocation(line: 314, column: 57, scope: !859)
!894 = !DILocation(line: 315, column: 10, scope: !859)
!895 = !DILocation(line: 314, column: 8, scope: !859)
!896 = !DILocation(line: 320, column: 2, scope: !859)
!897 = !DILocation(line: 321, column: 1, scope: !859)
!898 = distinct !DISubprogram(name: "acpi_ns_get_pathname_length", scope: !3, file: !3, line: 52, type: !899, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !901)
!899 = !DISubroutineType(types: !900)
!900 = !{!813, !96}
!901 = !{!902, !903}
!902 = !DILocalVariable(name: "node", arg: 1, scope: !898, file: !3, line: 52, type: !96)
!903 = !DILocalVariable(name: "size", scope: !898, file: !3, line: 54, type: !813)
!904 = !DILocation(line: 52, column: 67, scope: !898)
!905 = !DILocation(line: 54, column: 2, scope: !898)
!906 = !DILocation(line: 54, column: 12, scope: !898)
!907 = !DILocation(line: 58, column: 6, scope: !908)
!908 = distinct !DILexicalBlock(scope: !898, file: !3, line: 58, column: 6)
!909 = !DILocation(line: 58, column: 37, scope: !908)
!910 = !DILocation(line: 58, column: 6, scope: !898)
!911 = !DILocation(line: 59, column: 3, scope: !912)
!912 = distinct !DILexicalBlock(scope: !908, file: !3, line: 58, column: 62)
!913 = !DILocation(line: 62, column: 3, scope: !912)
!914 = !DILocation(line: 65, column: 39, scope: !898)
!915 = !DILocation(line: 65, column: 9, scope: !898)
!916 = !DILocation(line: 65, column: 7, scope: !898)
!917 = !DILocation(line: 66, column: 10, scope: !898)
!918 = !DILocation(line: 66, column: 2, scope: !898)
!919 = !DILocation(line: 67, column: 1, scope: !898)
!920 = !DISubprogram(name: "acpi_error", scope: !921, file: !921, line: 901, type: !922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!921 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!922 = !DISubroutineType(types: !923)
!923 = !{null, !924, !80, !924, null}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!925 = distinct !DISubprogram(name: "acpi_ns_build_normalized_path", scope: !3, file: !3, line: 193, type: !926, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !928)
!926 = !DISubroutineType(types: !927)
!927 = !{!80, !96, !77, !80, !32}
!928 = !{!929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941}
!929 = !DILocalVariable(name: "node", arg: 1, scope: !925, file: !3, line: 193, type: !96)
!930 = !DILocalVariable(name: "full_path", arg: 2, scope: !925, file: !3, line: 194, type: !77)
!931 = !DILocalVariable(name: "path_size", arg: 3, scope: !925, file: !3, line: 194, type: !80)
!932 = !DILocalVariable(name: "no_trailing", arg: 4, scope: !925, file: !3, line: 194, type: !32)
!933 = !DILocalVariable(name: "length", scope: !925, file: !3, line: 196, type: !80)
!934 = !DILocalVariable(name: "i", scope: !925, file: !3, line: 196, type: !80)
!935 = !DILocalVariable(name: "name", scope: !925, file: !3, line: 197, type: !110)
!936 = !DILocalVariable(name: "do_no_trailing", scope: !925, file: !3, line: 198, type: !32)
!937 = !DILocalVariable(name: "c", scope: !925, file: !3, line: 199, type: !78)
!938 = !DILocalVariable(name: "left", scope: !925, file: !3, line: 199, type: !77)
!939 = !DILocalVariable(name: "right", scope: !925, file: !3, line: 199, type: !77)
!940 = !DILocalVariable(name: "next_node", scope: !925, file: !3, line: 200, type: !96)
!941 = !DILabel(scope: !925, name: "build_trailing_null", file: !3, line: 264)
!942 = !DILocation(line: 193, column: 59, scope: !925)
!943 = !DILocation(line: 194, column: 16, scope: !925)
!944 = !DILocation(line: 194, column: 31, scope: !925)
!945 = !DILocation(line: 194, column: 45, scope: !925)
!946 = !DILocation(line: 196, column: 2, scope: !925)
!947 = !DILocation(line: 196, column: 6, scope: !925)
!948 = !DILocation(line: 196, column: 18, scope: !925)
!949 = !DILocation(line: 197, column: 2, scope: !925)
!950 = !DILocation(line: 197, column: 7, scope: !925)
!951 = !DILocation(line: 198, column: 2, scope: !925)
!952 = !DILocation(line: 198, column: 5, scope: !925)
!953 = !DILocation(line: 199, column: 2, scope: !925)
!954 = !DILocation(line: 199, column: 7, scope: !925)
!955 = !DILocation(line: 199, column: 11, scope: !925)
!956 = !DILocation(line: 199, column: 18, scope: !925)
!957 = !DILocation(line: 200, column: 2, scope: !925)
!958 = !DILocation(line: 200, column: 30, scope: !925)
!959 = !DILocation(line: 217, column: 7, scope: !960)
!960 = distinct !DILexicalBlock(scope: !925, file: !3, line: 217, column: 6)
!961 = !DILocation(line: 217, column: 6, scope: !925)
!962 = !DILocation(line: 218, column: 13, scope: !963)
!963 = distinct !DILexicalBlock(scope: !960, file: !3, line: 217, column: 18)
!964 = !DILocation(line: 219, column: 2, scope: !963)
!965 = !DILocation(line: 221, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !925, file: !3, line: 221, column: 6)
!967 = !DILocation(line: 221, column: 6, scope: !925)
!968 = !DILocation(line: 222, column: 3, scope: !969)
!969 = distinct !DILexicalBlock(scope: !966, file: !3, line: 221, column: 13)
!970 = !DILocation(line: 225, column: 14, scope: !925)
!971 = !DILocation(line: 225, column: 12, scope: !925)
!972 = !DILocation(line: 226, column: 2, scope: !925)
!973 = !DILocation(line: 226, column: 9, scope: !925)
!974 = !DILocation(line: 226, column: 19, scope: !925)
!975 = !DILocation(line: 226, column: 22, scope: !925)
!976 = !DILocation(line: 226, column: 35, scope: !925)
!977 = !DILocation(line: 226, column: 32, scope: !925)
!978 = !DILocation(line: 0, scope: !925)
!979 = !DILocation(line: 227, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 227, column: 7)
!981 = distinct !DILexicalBlock(scope: !925, file: !3, line: 226, column: 55)
!982 = !DILocation(line: 227, column: 20, scope: !980)
!983 = !DILocation(line: 227, column: 17, scope: !980)
!984 = !DILocation(line: 227, column: 7, scope: !981)
!985 = !DILocation(line: 228, column: 4, scope: !986)
!986 = distinct !DILexicalBlock(scope: !980, file: !3, line: 227, column: 26)
!987 = !DILocation(line: 228, column: 4, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 228, column: 4)
!989 = distinct !DILexicalBlock(scope: !986, file: !3, line: 228, column: 4)
!990 = !DILocation(line: 228, column: 4, scope: !989)
!991 = !DILocation(line: 228, column: 4, scope: !992)
!992 = distinct !DILexicalBlock(scope: !988, file: !3, line: 228, column: 4)
!993 = !DILocation(line: 230, column: 3, scope: !986)
!994 = !DILocation(line: 232, column: 3, scope: !981)
!995 = !DILocation(line: 233, column: 20, scope: !981)
!996 = !DILocation(line: 233, column: 18, scope: !981)
!997 = !DILocation(line: 234, column: 10, scope: !998)
!998 = distinct !DILexicalBlock(scope: !981, file: !3, line: 234, column: 3)
!999 = !DILocation(line: 234, column: 8, scope: !998)
!1000 = !DILocation(line: 234, column: 15, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !998, file: !3, line: 234, column: 3)
!1002 = !DILocation(line: 234, column: 17, scope: !1001)
!1003 = !DILocation(line: 234, column: 3, scope: !998)
!1004 = !DILocation(line: 235, column: 17, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 234, column: 27)
!1006 = !DILocation(line: 235, column: 15, scope: !1005)
!1007 = !DILocation(line: 235, column: 19, scope: !1005)
!1008 = !DILocation(line: 235, column: 8, scope: !1005)
!1009 = !DILocation(line: 235, column: 6, scope: !1005)
!1010 = !DILocation(line: 236, column: 8, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 236, column: 8)
!1012 = !DILocation(line: 236, column: 23, scope: !1011)
!1013 = !DILocation(line: 236, column: 26, scope: !1011)
!1014 = !DILocation(line: 236, column: 28, scope: !1011)
!1015 = !DILocation(line: 236, column: 8, scope: !1005)
!1016 = !DILocation(line: 237, column: 20, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 236, column: 36)
!1018 = !DILocation(line: 238, column: 4, scope: !1017)
!1019 = !DILocation(line: 239, column: 9, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 239, column: 8)
!1021 = !DILocation(line: 239, column: 8, scope: !1005)
!1022 = !DILocation(line: 240, column: 5, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 239, column: 25)
!1024 = !DILocation(line: 240, column: 5, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 240, column: 5)
!1026 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 240, column: 5)
!1027 = !DILocation(line: 240, column: 5, scope: !1026)
!1028 = !DILocation(line: 240, column: 5, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 240, column: 5)
!1030 = !DILocation(line: 241, column: 4, scope: !1023)
!1031 = !DILocation(line: 242, column: 3, scope: !1005)
!1032 = !DILocation(line: 234, column: 23, scope: !1001)
!1033 = !DILocation(line: 234, column: 3, scope: !1001)
!1034 = distinct !{!1034, !1003, !1035, !1036, !1037}
!1035 = !DILocation(line: 242, column: 3, scope: !998)
!1036 = !{!"llvm.loop.mustprogress"}
!1037 = !{!"llvm.loop.unroll.disable"}
!1038 = !DILocation(line: 244, column: 15, scope: !981)
!1039 = !DILocation(line: 244, column: 26, scope: !981)
!1040 = !DILocation(line: 244, column: 13, scope: !981)
!1041 = distinct !{!1041, !972, !1042, !1036, !1037}
!1042 = !DILocation(line: 245, column: 2, scope: !925)
!1043 = !DILocation(line: 247, column: 2, scope: !925)
!1044 = !DILocation(line: 247, column: 2, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 247, column: 2)
!1046 = distinct !DILexicalBlock(scope: !925, file: !3, line: 247, column: 2)
!1047 = !DILocation(line: 247, column: 2, scope: !1046)
!1048 = !DILocation(line: 247, column: 2, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 247, column: 2)
!1050 = !DILocation(line: 251, column: 6, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !925, file: !3, line: 251, column: 6)
!1052 = !DILocation(line: 251, column: 16, scope: !1051)
!1053 = !DILocation(line: 251, column: 13, scope: !1051)
!1054 = !DILocation(line: 251, column: 6, scope: !925)
!1055 = !DILocation(line: 252, column: 10, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 251, column: 27)
!1057 = !DILocation(line: 252, column: 8, scope: !1056)
!1058 = !DILocation(line: 253, column: 11, scope: !1056)
!1059 = !DILocation(line: 253, column: 23, scope: !1056)
!1060 = !DILocation(line: 253, column: 21, scope: !1056)
!1061 = !DILocation(line: 253, column: 30, scope: !1056)
!1062 = !DILocation(line: 253, column: 9, scope: !1056)
!1063 = !DILocation(line: 255, column: 3, scope: !1056)
!1064 = !DILocation(line: 255, column: 10, scope: !1056)
!1065 = !DILocation(line: 255, column: 17, scope: !1056)
!1066 = !DILocation(line: 255, column: 15, scope: !1056)
!1067 = !DILocation(line: 256, column: 9, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1056, file: !3, line: 255, column: 24)
!1069 = !DILocation(line: 256, column: 8, scope: !1068)
!1070 = !DILocation(line: 256, column: 6, scope: !1068)
!1071 = !DILocation(line: 257, column: 15, scope: !1068)
!1072 = !DILocation(line: 257, column: 14, scope: !1068)
!1073 = !DILocation(line: 257, column: 9, scope: !1068)
!1074 = !DILocation(line: 257, column: 12, scope: !1068)
!1075 = !DILocation(line: 258, column: 15, scope: !1068)
!1076 = !DILocation(line: 258, column: 10, scope: !1068)
!1077 = !DILocation(line: 258, column: 13, scope: !1068)
!1078 = distinct !{!1078, !1063, !1079, !1036, !1037}
!1079 = !DILocation(line: 259, column: 3, scope: !1056)
!1080 = !DILocation(line: 260, column: 2, scope: !1056)
!1081 = !DILocation(line: 264, column: 1, scope: !925)
!1082 = !DILocation(line: 265, column: 2, scope: !925)
!1083 = !DILocation(line: 265, column: 2, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 265, column: 2)
!1085 = distinct !DILexicalBlock(scope: !925, file: !3, line: 265, column: 2)
!1086 = !DILocation(line: 265, column: 2, scope: !1085)
!1087 = !DILocation(line: 265, column: 2, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 265, column: 2)
!1089 = !DILocation(line: 269, column: 2, scope: !925)
!1090 = !DILocation(line: 270, column: 1, scope: !925)
!1091 = distinct !DISubprogram(name: "acpi_ns_handle_to_name", scope: !3, file: !3, line: 84, type: !1092, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1099)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!164, !394, !1094}
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !118, line: 978, size: 128, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1095, file: !118, line: 979, baseType: !813, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1095, file: !118, line: 980, baseType: !30, size: 64, offset: 64)
!1099 = !{!1100, !1101, !1102, !1103, !1104}
!1100 = !DILocalVariable(name: "target_handle", arg: 1, scope: !1091, file: !3, line: 84, type: !394)
!1101 = !DILocalVariable(name: "buffer", arg: 2, scope: !1091, file: !3, line: 84, type: !1094)
!1102 = !DILocalVariable(name: "status", scope: !1091, file: !3, line: 86, type: !164)
!1103 = !DILocalVariable(name: "node", scope: !1091, file: !3, line: 87, type: !96)
!1104 = !DILocalVariable(name: "node_name", scope: !1091, file: !3, line: 88, type: !924)
!1105 = !DILocation(line: 84, column: 36, scope: !1091)
!1106 = !DILocation(line: 84, column: 71, scope: !1091)
!1107 = !DILocation(line: 86, column: 2, scope: !1091)
!1108 = !DILocation(line: 86, column: 14, scope: !1091)
!1109 = !DILocation(line: 87, column: 2, scope: !1091)
!1110 = !DILocation(line: 87, column: 30, scope: !1091)
!1111 = !DILocation(line: 88, column: 2, scope: !1091)
!1112 = !DILocation(line: 88, column: 14, scope: !1091)
!1113 = !DILocation(line: 92, column: 33, scope: !1091)
!1114 = !DILocation(line: 92, column: 9, scope: !1091)
!1115 = !DILocation(line: 92, column: 7, scope: !1091)
!1116 = !DILocation(line: 93, column: 7, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 93, column: 6)
!1118 = !DILocation(line: 93, column: 6, scope: !1091)
!1119 = !DILocation(line: 94, column: 3, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 93, column: 13)
!1121 = !DILocation(line: 99, column: 37, scope: !1091)
!1122 = !DILocation(line: 99, column: 11, scope: !1091)
!1123 = !DILocation(line: 99, column: 9, scope: !1091)
!1124 = !DILocation(line: 100, column: 6, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 100, column: 6)
!1126 = !DILocation(line: 100, column: 6, scope: !1091)
!1127 = !DILocation(line: 101, column: 3, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 100, column: 28)
!1129 = !DILocation(line: 106, column: 36, scope: !1091)
!1130 = !DILocation(line: 106, column: 14, scope: !1091)
!1131 = !DILocation(line: 106, column: 12, scope: !1091)
!1132 = !DILocation(line: 107, column: 2, scope: !1091)
!1133 = !DILocation(line: 108, column: 11, scope: !1091)
!1134 = !DILocation(line: 108, column: 19, scope: !1091)
!1135 = !DILocation(line: 108, column: 2, scope: !1091)
!1136 = !DILocation(line: 108, column: 47, scope: !1091)
!1137 = !DILocation(line: 111, column: 2, scope: !1091)
!1138 = !DILocation(line: 112, column: 1, scope: !1091)
!1139 = !DISubprogram(name: "acpi_ns_validate_handle", scope: !1140, file: !1140, line: 398, type: !1141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1140 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!96, !394}
!1143 = !DISubprogram(name: "acpi_ut_initialize_buffer", scope: !1144, file: !1144, line: 660, type: !1145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1144 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!164, !1094, !813}
!1147 = !DISubprogram(name: "acpi_ut_get_node_name", scope: !1144, file: !1144, line: 227, type: !1148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!924, !30}
!1150 = distinct !DISubprogram(name: "acpi_ns_handle_to_pathname", scope: !3, file: !3, line: 131, type: !1151, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1153)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!164, !394, !1094, !32}
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159}
!1154 = !DILocalVariable(name: "target_handle", arg: 1, scope: !1150, file: !3, line: 131, type: !394)
!1155 = !DILocalVariable(name: "buffer", arg: 2, scope: !1150, file: !3, line: 132, type: !1094)
!1156 = !DILocalVariable(name: "no_trailing", arg: 3, scope: !1150, file: !3, line: 132, type: !32)
!1157 = !DILocalVariable(name: "status", scope: !1150, file: !3, line: 134, type: !164)
!1158 = !DILocalVariable(name: "node", scope: !1150, file: !3, line: 135, type: !96)
!1159 = !DILocalVariable(name: "required_size", scope: !1150, file: !3, line: 136, type: !813)
!1160 = !DILocation(line: 131, column: 40, scope: !1150)
!1161 = !DILocation(line: 132, column: 27, scope: !1150)
!1162 = !DILocation(line: 132, column: 38, scope: !1150)
!1163 = !DILocation(line: 134, column: 2, scope: !1150)
!1164 = !DILocation(line: 134, column: 14, scope: !1150)
!1165 = !DILocation(line: 135, column: 2, scope: !1150)
!1166 = !DILocation(line: 135, column: 30, scope: !1150)
!1167 = !DILocation(line: 136, column: 2, scope: !1150)
!1168 = !DILocation(line: 136, column: 12, scope: !1150)
!1169 = !DILocation(line: 140, column: 33, scope: !1150)
!1170 = !DILocation(line: 140, column: 9, scope: !1150)
!1171 = !DILocation(line: 140, column: 7, scope: !1150)
!1172 = !DILocation(line: 141, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 141, column: 6)
!1174 = !DILocation(line: 141, column: 6, scope: !1150)
!1175 = !DILocation(line: 142, column: 3, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 141, column: 13)
!1177 = !DILocation(line: 148, column: 36, scope: !1150)
!1178 = !DILocation(line: 148, column: 51, scope: !1150)
!1179 = !DILocation(line: 148, column: 6, scope: !1150)
!1180 = !DILocation(line: 147, column: 16, scope: !1150)
!1181 = !DILocation(line: 149, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 149, column: 6)
!1183 = !DILocation(line: 149, column: 6, scope: !1150)
!1184 = !DILocation(line: 150, column: 3, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 149, column: 22)
!1186 = !DILocation(line: 155, column: 37, scope: !1150)
!1187 = !DILocation(line: 155, column: 45, scope: !1150)
!1188 = !DILocation(line: 155, column: 11, scope: !1150)
!1189 = !DILocation(line: 155, column: 9, scope: !1150)
!1190 = !DILocation(line: 156, column: 6, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 156, column: 6)
!1192 = !DILocation(line: 156, column: 6, scope: !1150)
!1193 = !DILocation(line: 157, column: 3, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 156, column: 28)
!1195 = !DILocation(line: 162, column: 38, scope: !1150)
!1196 = !DILocation(line: 162, column: 44, scope: !1150)
!1197 = !DILocation(line: 162, column: 52, scope: !1150)
!1198 = !DILocation(line: 163, column: 15, scope: !1150)
!1199 = !DILocation(line: 163, column: 10, scope: !1150)
!1200 = !DILocation(line: 163, column: 30, scope: !1150)
!1201 = !DILocation(line: 162, column: 8, scope: !1150)
!1202 = !DILocation(line: 167, column: 2, scope: !1150)
!1203 = !DILocation(line: 168, column: 1, scope: !1150)
!1204 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !1205, file: !1205, line: 55, type: !1206, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1208)
!1205 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!30, !813}
!1208 = !{!1209, !1210, !1212, !1215, !1216, !1219}
!1209 = !DILocalVariable(name: "size", arg: 1, scope: !1204, file: !1205, line: 55, type: !813)
!1210 = !DILocalVariable(name: "_flags", scope: !1211, file: !1205, line: 57, type: !812)
!1211 = distinct !DILexicalBlock(scope: !1204, file: !1205, line: 57, column: 23)
!1212 = !DILocalVariable(name: "__dummy", scope: !1213, file: !1205, line: 57, type: !812)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !1205, line: 57, column: 23)
!1214 = distinct !DILexicalBlock(scope: !1211, file: !1205, line: 57, column: 23)
!1215 = !DILocalVariable(name: "__dummy2", scope: !1213, file: !1205, line: 57, type: !812)
!1216 = !DILocalVariable(name: "__dummy", scope: !1217, file: !1205, line: 57, type: !812)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !1205, line: 57, column: 23)
!1218 = distinct !DILexicalBlock(scope: !1211, file: !1205, line: 57, column: 23)
!1219 = !DILocalVariable(name: "__dummy2", scope: !1217, file: !1205, line: 57, type: !812)
!1220 = !DILocation(line: 55, column: 55, scope: !1204)
!1221 = !DILocation(line: 57, column: 17, scope: !1204)
!1222 = !DILocation(line: 57, column: 23, scope: !1211)
!1223 = !DILocation(line: 57, column: 23, scope: !1213)
!1224 = !DILocation(line: 57, column: 23, scope: !1214)
!1225 = !DILocation(line: 57, column: 23, scope: !1217)
!1226 = !DILocation(line: 57, column: 23, scope: !1218)
!1227 = !DILocation(line: 57, column: 23, scope: !1204)
!1228 = !DILocation(line: 57, column: 9, scope: !1204)
!1229 = !DILocation(line: 57, column: 2, scope: !1204)
!1230 = distinct !DISubprogram(name: "acpi_ns_build_prefixed_pathname", scope: !3, file: !3, line: 338, type: !1231, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1233)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!77, !281, !924}
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241}
!1234 = !DILocalVariable(name: "prefix_scope", arg: 1, scope: !1230, file: !3, line: 338, type: !281)
!1235 = !DILocalVariable(name: "internal_path", arg: 2, scope: !1230, file: !3, line: 339, type: !924)
!1236 = !DILocalVariable(name: "status", scope: !1230, file: !3, line: 341, type: !164)
!1237 = !DILocalVariable(name: "full_path", scope: !1230, file: !3, line: 342, type: !77)
!1238 = !DILocalVariable(name: "external_path", scope: !1230, file: !3, line: 343, type: !77)
!1239 = !DILocalVariable(name: "prefix_path", scope: !1230, file: !3, line: 344, type: !77)
!1240 = !DILocalVariable(name: "prefix_path_length", scope: !1230, file: !3, line: 345, type: !813)
!1241 = !DILabel(scope: !1230, name: "cleanup", file: !3, line: 385)
!1242 = !DILocation(line: 338, column: 65, scope: !1230)
!1243 = !DILocation(line: 339, column: 23, scope: !1230)
!1244 = !DILocation(line: 341, column: 2, scope: !1230)
!1245 = !DILocation(line: 341, column: 14, scope: !1230)
!1246 = !DILocation(line: 342, column: 2, scope: !1230)
!1247 = !DILocation(line: 342, column: 8, scope: !1230)
!1248 = !DILocation(line: 343, column: 2, scope: !1230)
!1249 = !DILocation(line: 343, column: 8, scope: !1230)
!1250 = !DILocation(line: 344, column: 2, scope: !1230)
!1251 = !DILocation(line: 344, column: 8, scope: !1230)
!1252 = !DILocation(line: 345, column: 2, scope: !1230)
!1253 = !DILocation(line: 345, column: 12, scope: !1230)
!1254 = !DILocation(line: 349, column: 6, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 349, column: 6)
!1256 = !DILocation(line: 349, column: 19, scope: !1255)
!1257 = !DILocation(line: 349, column: 22, scope: !1255)
!1258 = !DILocation(line: 349, column: 42, scope: !1255)
!1259 = !DILocation(line: 349, column: 6, scope: !1230)
!1260 = !DILocation(line: 351, column: 39, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 349, column: 48)
!1262 = !DILocation(line: 351, column: 59, scope: !1261)
!1263 = !DILocation(line: 351, column: 7, scope: !1261)
!1264 = !DILocation(line: 350, column: 15, scope: !1261)
!1265 = !DILocation(line: 353, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !3, line: 353, column: 7)
!1267 = !DILocation(line: 353, column: 7, scope: !1261)
!1268 = !DILocation(line: 354, column: 32, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 353, column: 20)
!1270 = !DILocation(line: 354, column: 25, scope: !1269)
!1271 = !DILocation(line: 354, column: 23, scope: !1269)
!1272 = !DILocation(line: 355, column: 3, scope: !1269)
!1273 = !DILocation(line: 356, column: 2, scope: !1261)
!1274 = !DILocation(line: 358, column: 53, scope: !1230)
!1275 = !DILocation(line: 358, column: 11, scope: !1230)
!1276 = !DILocation(line: 358, column: 9, scope: !1230)
!1277 = !DILocation(line: 360, column: 6, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 360, column: 6)
!1279 = !DILocation(line: 360, column: 6, scope: !1230)
!1280 = !DILocation(line: 361, column: 3, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 360, column: 28)
!1282 = !DILocation(line: 367, column: 6, scope: !1230)
!1283 = !DILocation(line: 366, column: 12, scope: !1230)
!1284 = !DILocation(line: 369, column: 7, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 369, column: 6)
!1286 = !DILocation(line: 369, column: 6, scope: !1230)
!1287 = !DILocation(line: 370, column: 3, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 369, column: 18)
!1289 = !DILocation(line: 375, column: 6, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 375, column: 6)
!1291 = !DILocation(line: 375, column: 18, scope: !1290)
!1292 = !DILocation(line: 375, column: 23, scope: !1290)
!1293 = !DILocation(line: 375, column: 22, scope: !1290)
!1294 = !DILocation(line: 375, column: 37, scope: !1290)
!1295 = !DILocation(line: 375, column: 46, scope: !1290)
!1296 = !DILocation(line: 375, column: 51, scope: !1290)
!1297 = !DILocation(line: 375, column: 50, scope: !1290)
!1298 = !DILocation(line: 375, column: 65, scope: !1290)
!1299 = !DILocation(line: 375, column: 6, scope: !1230)
!1300 = !DILocation(line: 376, column: 10, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 375, column: 74)
!1302 = !DILocation(line: 376, column: 21, scope: !1301)
!1303 = !DILocation(line: 376, column: 3, scope: !1301)
!1304 = !DILocation(line: 377, column: 7, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 377, column: 7)
!1306 = !DILocation(line: 377, column: 7, scope: !1301)
!1307 = !DILocation(line: 378, column: 11, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 377, column: 23)
!1309 = !DILocation(line: 378, column: 4, scope: !1308)
!1310 = !DILocation(line: 379, column: 3, scope: !1308)
!1311 = !DILocation(line: 380, column: 2, scope: !1301)
!1312 = !DILocation(line: 382, column: 29, scope: !1230)
!1313 = !DILocation(line: 382, column: 2, scope: !1230)
!1314 = !DILocation(line: 383, column: 9, scope: !1230)
!1315 = !DILocation(line: 383, column: 20, scope: !1230)
!1316 = !DILocation(line: 383, column: 2, scope: !1230)
!1317 = !DILocation(line: 385, column: 1, scope: !1230)
!1318 = !DILocation(line: 386, column: 6, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 386, column: 6)
!1320 = !DILocation(line: 386, column: 6, scope: !1230)
!1321 = !DILocation(line: 387, column: 3, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 386, column: 19)
!1323 = !DILocation(line: 388, column: 2, scope: !1322)
!1324 = !DILocation(line: 389, column: 6, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 389, column: 6)
!1326 = !DILocation(line: 389, column: 6, scope: !1230)
!1327 = !DILocation(line: 390, column: 3, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 389, column: 21)
!1329 = !DILocation(line: 391, column: 2, scope: !1328)
!1330 = !DILocation(line: 393, column: 10, scope: !1230)
!1331 = !DILocation(line: 394, column: 1, scope: !1230)
!1332 = !DILocation(line: 393, column: 2, scope: !1230)
!1333 = !DISubprogram(name: "strlen", scope: !1334, file: !1334, line: 128, type: !1335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1334 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!812, !924}
!1337 = !DISubprogram(name: "acpi_ns_externalize_name", scope: !1140, file: !1140, line: 394, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!164, !80, !924, !809, !1340}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!1341 = !DISubprogram(name: "strcat", scope: !1334, file: !1334, line: 79, type: !1342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!77, !77, !924}
!1344 = distinct !DISubprogram(name: "acpi_ns_normalize_pathname", scope: !3, file: !3, line: 410, type: !1345, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1347)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !77}
!1347 = !{!1348, !1349, !1350, !1351, !1352}
!1348 = !DILocalVariable(name: "original_path", arg: 1, scope: !1344, file: !3, line: 410, type: !77)
!1349 = !DILocalVariable(name: "input_path", scope: !1344, file: !3, line: 412, type: !77)
!1350 = !DILocalVariable(name: "new_path_buffer", scope: !1344, file: !3, line: 413, type: !77)
!1351 = !DILocalVariable(name: "new_path", scope: !1344, file: !3, line: 414, type: !77)
!1352 = !DILocalVariable(name: "i", scope: !1344, file: !3, line: 415, type: !80)
!1353 = !DILocation(line: 410, column: 39, scope: !1344)
!1354 = !DILocation(line: 412, column: 2, scope: !1344)
!1355 = !DILocation(line: 412, column: 8, scope: !1344)
!1356 = !DILocation(line: 412, column: 21, scope: !1344)
!1357 = !DILocation(line: 413, column: 2, scope: !1344)
!1358 = !DILocation(line: 413, column: 8, scope: !1344)
!1359 = !DILocation(line: 414, column: 2, scope: !1344)
!1360 = !DILocation(line: 414, column: 8, scope: !1344)
!1361 = !DILocation(line: 415, column: 2, scope: !1344)
!1362 = !DILocation(line: 415, column: 6, scope: !1344)
!1363 = !DILocation(line: 419, column: 20, scope: !1344)
!1364 = !DILocation(line: 419, column: 18, scope: !1344)
!1365 = !DILocation(line: 420, column: 13, scope: !1344)
!1366 = !DILocation(line: 420, column: 11, scope: !1344)
!1367 = !DILocation(line: 421, column: 7, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 421, column: 6)
!1369 = !DILocation(line: 421, column: 6, scope: !1344)
!1370 = !DILocation(line: 422, column: 3, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1368, file: !3, line: 421, column: 24)
!1372 = !DILocation(line: 427, column: 7, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 427, column: 6)
!1374 = !DILocation(line: 427, column: 6, scope: !1373)
!1375 = !DILocation(line: 427, column: 18, scope: !1373)
!1376 = !DILocation(line: 427, column: 6, scope: !1344)
!1377 = !DILocation(line: 428, column: 16, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 427, column: 27)
!1379 = !DILocation(line: 428, column: 15, scope: !1378)
!1380 = !DILocation(line: 428, column: 4, scope: !1378)
!1381 = !DILocation(line: 428, column: 13, scope: !1378)
!1382 = !DILocation(line: 429, column: 11, scope: !1378)
!1383 = !DILocation(line: 430, column: 13, scope: !1378)
!1384 = !DILocation(line: 431, column: 2, scope: !1378)
!1385 = !DILocation(line: 433, column: 2, scope: !1344)
!1386 = !DILocation(line: 433, column: 10, scope: !1344)
!1387 = !DILocation(line: 433, column: 9, scope: !1344)
!1388 = !DILocation(line: 433, column: 21, scope: !1344)
!1389 = !DILocation(line: 434, column: 16, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 433, column: 29)
!1391 = !DILocation(line: 434, column: 15, scope: !1390)
!1392 = !DILocation(line: 434, column: 4, scope: !1390)
!1393 = !DILocation(line: 434, column: 13, scope: !1390)
!1394 = !DILocation(line: 435, column: 11, scope: !1390)
!1395 = !DILocation(line: 436, column: 13, scope: !1390)
!1396 = distinct !{!1396, !1385, !1397, !1036, !1037}
!1397 = !DILocation(line: 437, column: 2, scope: !1344)
!1398 = !DILocation(line: 441, column: 2, scope: !1344)
!1399 = !DILocation(line: 441, column: 10, scope: !1344)
!1400 = !DILocation(line: 441, column: 9, scope: !1344)
!1401 = !DILocation(line: 445, column: 10, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 445, column: 3)
!1403 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 441, column: 22)
!1404 = !DILocation(line: 445, column: 8, scope: !1402)
!1405 = !DILocation(line: 445, column: 16, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !3, line: 445, column: 3)
!1407 = !DILocation(line: 445, column: 18, scope: !1406)
!1408 = !DILocation(line: 445, column: 39, scope: !1406)
!1409 = !DILocation(line: 445, column: 43, scope: !1406)
!1410 = !DILocation(line: 445, column: 42, scope: !1406)
!1411 = !DILocation(line: 0, scope: !1406)
!1412 = !DILocation(line: 445, column: 3, scope: !1402)
!1413 = !DILocation(line: 446, column: 9, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 446, column: 8)
!1415 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 445, column: 60)
!1416 = !DILocation(line: 446, column: 11, scope: !1414)
!1417 = !DILocation(line: 446, column: 17, scope: !1414)
!1418 = !DILocation(line: 446, column: 22, scope: !1414)
!1419 = !DILocation(line: 446, column: 21, scope: !1414)
!1420 = !DILocation(line: 446, column: 33, scope: !1414)
!1421 = !DILocation(line: 446, column: 8, scope: !1415)
!1422 = !DILocation(line: 447, column: 18, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 446, column: 42)
!1424 = !DILocation(line: 447, column: 17, scope: !1423)
!1425 = !DILocation(line: 447, column: 6, scope: !1423)
!1426 = !DILocation(line: 447, column: 15, scope: !1423)
!1427 = !DILocation(line: 448, column: 13, scope: !1423)
!1428 = !DILocation(line: 449, column: 4, scope: !1423)
!1429 = !DILocation(line: 451, column: 14, scope: !1415)
!1430 = !DILocation(line: 452, column: 3, scope: !1415)
!1431 = !DILocation(line: 445, column: 56, scope: !1406)
!1432 = !DILocation(line: 445, column: 3, scope: !1406)
!1433 = distinct !{!1433, !1412, !1434, !1036, !1037}
!1434 = !DILocation(line: 452, column: 3, scope: !1402)
!1435 = !DILocation(line: 456, column: 8, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 456, column: 7)
!1437 = !DILocation(line: 456, column: 7, scope: !1436)
!1438 = !DILocation(line: 456, column: 19, scope: !1436)
!1439 = !DILocation(line: 456, column: 7, scope: !1403)
!1440 = !DILocation(line: 457, column: 17, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 456, column: 27)
!1442 = !DILocation(line: 457, column: 16, scope: !1441)
!1443 = !DILocation(line: 457, column: 5, scope: !1441)
!1444 = !DILocation(line: 457, column: 14, scope: !1441)
!1445 = !DILocation(line: 458, column: 12, scope: !1441)
!1446 = !DILocation(line: 459, column: 14, scope: !1441)
!1447 = !DILocation(line: 460, column: 3, scope: !1441)
!1448 = distinct !{!1448, !1398, !1449, !1036, !1037}
!1449 = !DILocation(line: 461, column: 2, scope: !1344)
!1450 = !DILocation(line: 463, column: 3, scope: !1344)
!1451 = !DILocation(line: 463, column: 12, scope: !1344)
!1452 = !DILocation(line: 464, column: 9, scope: !1344)
!1453 = !DILocation(line: 464, column: 24, scope: !1344)
!1454 = !DILocation(line: 464, column: 2, scope: !1344)
!1455 = !DILocation(line: 465, column: 2, scope: !1344)
!1456 = !DILocation(line: 466, column: 1, scope: !1344)
!1457 = distinct !DISubprogram(name: "acpi_os_free", scope: !1205, file: !1205, line: 60, type: !1458, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1460)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{null, !30}
!1460 = !{!1461}
!1461 = !DILocalVariable(name: "memory", arg: 1, scope: !1457, file: !1205, line: 60, type: !30)
!1462 = !DILocation(line: 60, column: 39, scope: !1457)
!1463 = !DILocation(line: 62, column: 8, scope: !1457)
!1464 = !DILocation(line: 62, column: 2, scope: !1457)
!1465 = !DILocation(line: 63, column: 1, scope: !1457)
!1466 = !DISubprogram(name: "strcpy", scope: !1334, file: !1334, line: 63, type: !1342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1467 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !1468, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1474)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!30, !1470, !814}
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !811, line: 61, baseType: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1472, line: 72, baseType: !1473)
!1472 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1472, line: 16, baseType: !812)
!1474 = !{!1475, !1476}
!1475 = !DILocalVariable(name: "size", arg: 1, scope: !1467, file: !12, line: 719, type: !1470)
!1476 = !DILocalVariable(name: "flags", arg: 2, scope: !1467, file: !12, line: 719, type: !814)
!1477 = !DILocation(line: 719, column: 52, scope: !1467)
!1478 = !DILocation(line: 719, column: 64, scope: !1467)
!1479 = !DILocation(line: 721, column: 17, scope: !1467)
!1480 = !DILocation(line: 721, column: 23, scope: !1467)
!1481 = !DILocation(line: 721, column: 29, scope: !1467)
!1482 = !DILocation(line: 721, column: 9, scope: !1467)
!1483 = !DILocation(line: 721, column: 2, scope: !1467)
!1484 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1485, file: !1485, line: 65, type: !1486, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1485 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!812}
!1488 = !DILocation(line: 67, column: 9, scope: !1484)
!1489 = !DILocation(line: 67, column: 2, scope: !1484)
!1490 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1485, file: !1485, line: 120, type: !1491, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1494)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!1493, !812}
!1493 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!1494 = !{!1495}
!1495 = !DILocalVariable(name: "flags", arg: 1, scope: !1490, file: !1485, line: 120, type: !812)
!1496 = !DILocation(line: 120, column: 67, scope: !1490)
!1497 = !DILocation(line: 122, column: 11, scope: !1490)
!1498 = !DILocation(line: 122, column: 17, scope: !1490)
!1499 = !DILocation(line: 122, column: 9, scope: !1490)
!1500 = !DILocation(line: 122, column: 2, scope: !1490)
!1501 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !1468, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DILocalVariable(name: "size", arg: 1, scope: !1501, file: !12, line: 591, type: !1470)
!1504 = !DILocalVariable(name: "flags", arg: 2, scope: !1501, file: !12, line: 591, type: !814)
!1505 = !DILocalVariable(name: "index", scope: !1506, file: !12, line: 594, type: !7)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !12, line: 593, column: 42)
!1507 = distinct !DILexicalBlock(scope: !1501, file: !12, line: 593, column: 6)
!1508 = !DILocation(line: 591, column: 61, scope: !1501)
!1509 = !DILocation(line: 591, column: 73, scope: !1501)
!1510 = !DILocation(line: 593, column: 27, scope: !1507)
!1511 = !DILocation(line: 593, column: 6, scope: !1507)
!1512 = !DILocation(line: 593, column: 33, scope: !1507)
!1513 = !DILocation(line: 593, column: 36, scope: !1507)
!1514 = !DILocation(line: 593, column: 6, scope: !1501)
!1515 = !DILocation(line: 594, column: 3, scope: !1506)
!1516 = !DILocation(line: 594, column: 16, scope: !1506)
!1517 = !DILocation(line: 596, column: 7, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1506, file: !12, line: 596, column: 7)
!1519 = !DILocation(line: 596, column: 12, scope: !1518)
!1520 = !DILocation(line: 596, column: 7, scope: !1506)
!1521 = !DILocation(line: 597, column: 25, scope: !1518)
!1522 = !DILocation(line: 597, column: 31, scope: !1518)
!1523 = !DILocation(line: 597, column: 11, scope: !1518)
!1524 = !DILocation(line: 597, column: 4, scope: !1518)
!1525 = !DILocation(line: 599, column: 11, scope: !1506)
!1526 = !DILocation(line: 599, column: 9, scope: !1506)
!1527 = !DILocation(line: 601, column: 33, scope: !1506)
!1528 = !DILocation(line: 601, column: 40, scope: !1506)
!1529 = !DILocation(line: 601, column: 20, scope: !1506)
!1530 = !DILocation(line: 601, column: 5, scope: !1506)
!1531 = !DILocation(line: 601, column: 51, scope: !1506)
!1532 = !DILocation(line: 602, column: 5, scope: !1506)
!1533 = !DILocation(line: 602, column: 12, scope: !1506)
!1534 = !DILocation(line: 600, column: 10, scope: !1506)
!1535 = !DILocation(line: 600, column: 3, scope: !1506)
!1536 = !DILocation(line: 603, column: 2, scope: !1507)
!1537 = !DILocation(line: 604, column: 19, scope: !1501)
!1538 = !DILocation(line: 604, column: 25, scope: !1501)
!1539 = !DILocation(line: 604, column: 9, scope: !1501)
!1540 = !DILocation(line: 604, column: 2, scope: !1501)
!1541 = !DILocation(line: 605, column: 1, scope: !1501)
!1542 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !1468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1543 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1544, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1548)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!7, !1470, !1546}
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !811, line: 35, baseType: !1547)
!1547 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1548 = !{!1549, !1550}
!1549 = !DILocalVariable(name: "size", arg: 1, scope: !1543, file: !12, line: 444, type: !1470)
!1550 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1543, file: !12, line: 445, type: !1546)
!1551 = !DILocation(line: 444, column: 60, scope: !1543)
!1552 = !DILocation(line: 445, column: 16, scope: !1543)
!1553 = !DILocation(line: 447, column: 7, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 447, column: 6)
!1555 = !DILocation(line: 447, column: 6, scope: !1543)
!1556 = !DILocation(line: 448, column: 3, scope: !1554)
!1557 = !DILocation(line: 450, column: 6, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 450, column: 6)
!1559 = !DILocation(line: 450, column: 11, scope: !1558)
!1560 = !DILocation(line: 450, column: 6, scope: !1543)
!1561 = !DILocation(line: 451, column: 3, scope: !1558)
!1562 = !DILocation(line: 453, column: 32, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 453, column: 6)
!1564 = !DILocation(line: 453, column: 37, scope: !1563)
!1565 = !DILocation(line: 453, column: 42, scope: !1563)
!1566 = !DILocation(line: 453, column: 45, scope: !1563)
!1567 = !DILocation(line: 453, column: 50, scope: !1563)
!1568 = !DILocation(line: 453, column: 6, scope: !1543)
!1569 = !DILocation(line: 454, column: 3, scope: !1563)
!1570 = !DILocation(line: 455, column: 32, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 455, column: 6)
!1572 = !DILocation(line: 455, column: 37, scope: !1571)
!1573 = !DILocation(line: 455, column: 43, scope: !1571)
!1574 = !DILocation(line: 455, column: 46, scope: !1571)
!1575 = !DILocation(line: 455, column: 51, scope: !1571)
!1576 = !DILocation(line: 455, column: 6, scope: !1543)
!1577 = !DILocation(line: 456, column: 3, scope: !1571)
!1578 = !DILocation(line: 457, column: 6, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 457, column: 6)
!1580 = !DILocation(line: 457, column: 11, scope: !1579)
!1581 = !DILocation(line: 457, column: 6, scope: !1543)
!1582 = !DILocation(line: 457, column: 26, scope: !1579)
!1583 = !DILocation(line: 458, column: 6, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 458, column: 6)
!1585 = !DILocation(line: 458, column: 11, scope: !1584)
!1586 = !DILocation(line: 458, column: 6, scope: !1543)
!1587 = !DILocation(line: 458, column: 26, scope: !1584)
!1588 = !DILocation(line: 459, column: 6, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 459, column: 6)
!1590 = !DILocation(line: 459, column: 11, scope: !1589)
!1591 = !DILocation(line: 459, column: 6, scope: !1543)
!1592 = !DILocation(line: 459, column: 26, scope: !1589)
!1593 = !DILocation(line: 460, column: 6, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 460, column: 6)
!1595 = !DILocation(line: 460, column: 11, scope: !1594)
!1596 = !DILocation(line: 460, column: 6, scope: !1543)
!1597 = !DILocation(line: 460, column: 26, scope: !1594)
!1598 = !DILocation(line: 461, column: 6, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 461, column: 6)
!1600 = !DILocation(line: 461, column: 11, scope: !1599)
!1601 = !DILocation(line: 461, column: 6, scope: !1543)
!1602 = !DILocation(line: 461, column: 26, scope: !1599)
!1603 = !DILocation(line: 462, column: 6, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 462, column: 6)
!1605 = !DILocation(line: 462, column: 11, scope: !1604)
!1606 = !DILocation(line: 462, column: 6, scope: !1543)
!1607 = !DILocation(line: 462, column: 26, scope: !1604)
!1608 = !DILocation(line: 463, column: 6, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 463, column: 6)
!1610 = !DILocation(line: 463, column: 11, scope: !1609)
!1611 = !DILocation(line: 463, column: 6, scope: !1543)
!1612 = !DILocation(line: 463, column: 26, scope: !1609)
!1613 = !DILocation(line: 464, column: 6, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 464, column: 6)
!1615 = !DILocation(line: 464, column: 11, scope: !1614)
!1616 = !DILocation(line: 464, column: 6, scope: !1543)
!1617 = !DILocation(line: 464, column: 26, scope: !1614)
!1618 = !DILocation(line: 465, column: 6, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 465, column: 6)
!1620 = !DILocation(line: 465, column: 11, scope: !1619)
!1621 = !DILocation(line: 465, column: 6, scope: !1543)
!1622 = !DILocation(line: 465, column: 26, scope: !1619)
!1623 = !DILocation(line: 466, column: 6, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 466, column: 6)
!1625 = !DILocation(line: 466, column: 11, scope: !1624)
!1626 = !DILocation(line: 466, column: 6, scope: !1543)
!1627 = !DILocation(line: 466, column: 26, scope: !1624)
!1628 = !DILocation(line: 467, column: 6, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 467, column: 6)
!1630 = !DILocation(line: 467, column: 11, scope: !1629)
!1631 = !DILocation(line: 467, column: 6, scope: !1543)
!1632 = !DILocation(line: 467, column: 26, scope: !1629)
!1633 = !DILocation(line: 468, column: 6, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 468, column: 6)
!1635 = !DILocation(line: 468, column: 11, scope: !1634)
!1636 = !DILocation(line: 468, column: 6, scope: !1543)
!1637 = !DILocation(line: 468, column: 26, scope: !1634)
!1638 = !DILocation(line: 469, column: 6, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 469, column: 6)
!1640 = !DILocation(line: 469, column: 11, scope: !1639)
!1641 = !DILocation(line: 469, column: 6, scope: !1543)
!1642 = !DILocation(line: 469, column: 26, scope: !1639)
!1643 = !DILocation(line: 470, column: 6, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 470, column: 6)
!1645 = !DILocation(line: 470, column: 11, scope: !1644)
!1646 = !DILocation(line: 470, column: 6, scope: !1543)
!1647 = !DILocation(line: 470, column: 26, scope: !1644)
!1648 = !DILocation(line: 471, column: 6, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 471, column: 6)
!1650 = !DILocation(line: 471, column: 11, scope: !1649)
!1651 = !DILocation(line: 471, column: 6, scope: !1543)
!1652 = !DILocation(line: 471, column: 26, scope: !1649)
!1653 = !DILocation(line: 472, column: 6, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 472, column: 6)
!1655 = !DILocation(line: 472, column: 11, scope: !1654)
!1656 = !DILocation(line: 472, column: 6, scope: !1543)
!1657 = !DILocation(line: 472, column: 26, scope: !1654)
!1658 = !DILocation(line: 473, column: 6, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 473, column: 6)
!1660 = !DILocation(line: 473, column: 11, scope: !1659)
!1661 = !DILocation(line: 473, column: 6, scope: !1543)
!1662 = !DILocation(line: 473, column: 26, scope: !1659)
!1663 = !DILocation(line: 474, column: 6, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 474, column: 6)
!1665 = !DILocation(line: 474, column: 11, scope: !1664)
!1666 = !DILocation(line: 474, column: 6, scope: !1543)
!1667 = !DILocation(line: 474, column: 27, scope: !1664)
!1668 = !DILocation(line: 475, column: 6, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 475, column: 6)
!1670 = !DILocation(line: 475, column: 11, scope: !1669)
!1671 = !DILocation(line: 475, column: 6, scope: !1543)
!1672 = !DILocation(line: 475, column: 32, scope: !1669)
!1673 = !DILocation(line: 477, column: 50, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1543, file: !12, line: 477, column: 6)
!1675 = !{i8 0, i8 2}
!1676 = !{}
!1677 = !DILocation(line: 477, column: 6, scope: !1543)
!1678 = !DILocation(line: 478, column: 3, scope: !1674)
!1679 = !DILocation(line: 478, column: 3, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !12, line: 478, column: 3)
!1681 = distinct !DILexicalBlock(scope: !1674, file: !12, line: 478, column: 3)
!1682 = !{i32 -2143036402}
!1683 = !DILocation(line: 478, column: 3, scope: !1681)
!1684 = !DILocation(line: 480, column: 3, scope: !1674)
!1685 = !DILocation(line: 480, column: 3, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1674, file: !12, line: 480, column: 3)
!1687 = !DILocation(line: 480, column: 3, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1686, file: !12, line: 480, column: 3)
!1689 = !DILocation(line: 480, column: 3, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1686, file: !12, line: 480, column: 3)
!1691 = !{i64 2151931097, i64 2151931126, i64 2151931172, i64 2151931230, i64 2151931284, i64 2151931338, i64 2151931393, i64 2151931424}
!1692 = !DILocation(line: 483, column: 2, scope: !1543)
!1693 = !DILocation(line: 484, column: 1, scope: !1543)
!1694 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !1695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!30, !1697, !814, !1470}
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1699, line: 11, flags: DIFlagFwdDecl)
!1699 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1700 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !1701, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1703)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!11, !814, !812}
!1703 = !{!1704, !1705}
!1704 = !DILocalVariable(name: "flags", arg: 1, scope: !1700, file: !12, line: 401, type: !814)
!1705 = !DILocalVariable(name: "caller", arg: 2, scope: !1700, file: !12, line: 401, type: !812)
!1706 = !DILocation(line: 401, column: 67, scope: !1700)
!1707 = !DILocation(line: 401, column: 88, scope: !1700)
!1708 = !DILocation(line: 407, column: 6, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1700, file: !12, line: 407, column: 6)
!1710 = !DILocation(line: 407, column: 6, scope: !1700)
!1711 = !DILocation(line: 413, column: 3, scope: !1709)
!1712 = !DILocation(line: 423, column: 38, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1700, file: !12, line: 423, column: 6)
!1714 = !DILocation(line: 423, column: 44, scope: !1713)
!1715 = !DILocation(line: 423, column: 6, scope: !1700)
!1716 = !DILocation(line: 424, column: 3, scope: !1713)
!1717 = !DILocation(line: 426, column: 3, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1700, file: !12, line: 425, column: 6)
!1719 = !DILocation(line: 429, column: 1, scope: !1700)
!1720 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !1468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1721 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !1722, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null}
!1724 = distinct !DISubprogram(name: "native_save_fl", scope: !1485, file: !1485, line: 17, type: !1486, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1725)
!1725 = !{!1726}
!1726 = !DILocalVariable(name: "flags", scope: !1724, file: !1485, line: 19, type: !812)
!1727 = !DILocation(line: 19, column: 2, scope: !1724)
!1728 = !DILocation(line: 19, column: 16, scope: !1724)
!1729 = !DILocation(line: 26, column: 2, scope: !1724)
!1730 = !{i64 1521016, i64 1521037}
!1731 = !DILocation(line: 32, column: 9, scope: !1724)
!1732 = !DILocation(line: 33, column: 1, scope: !1724)
!1733 = !DILocation(line: 32, column: 2, scope: !1724)
!1734 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !1735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
