; ModuleID = 'drivers/acpi/acpica/exstore.c'
source_filename = "drivers/acpi/acpica/exstore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }

@_acpi_module_name = internal constant [8 x i8] c"exstore\00", align 1, !dbg !0
@.str = private unnamed_addr constant [15 x i8] c"Null parameter\00", align 1, !dbg !805
@.str.1 = private unnamed_addr constant [55 x i8] c"Target is not a Reference or Constant object - [%s] %p\00", align 1, !dbg !810
@.str.2 = private unnamed_addr constant [32 x i8] c"Unknown Reference Class 0x%2.2X\00", align 1, !dbg !815
@.str.3 = private unnamed_addr constant [63 x i8] c"Cannot assign type [%s] to [Package] (source must be type Pkg)\00", align 1, !dbg !820
@.str.4 = private unnamed_addr constant [69 x i8] c"Target must be [Buffer/Integer/String/Reference], found [%s] (%4.4s)\00", align 1, !dbg !825
@.str.5 = private unnamed_addr constant [56 x i8] c"Source must be type [Integer/Buffer/String], found [%s]\00", align 1, !dbg !830
@.str.6 = private unnamed_addr constant [44 x i8] c"Target is not of type [Package/BufferField]\00", align 1, !dbg !835

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_store(ptr noundef %source_desc, ptr noundef %dest_desc, ptr noundef %walk_state) #0 align 16 !dbg !851 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca ptr, align 8
  %dest_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %ref_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %source_desc, ptr %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_desc.addr, metadata !855, metadata !DIExpression()), !dbg !860
  store ptr %dest_desc, ptr %dest_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest_desc.addr, metadata !856, metadata !DIExpression()), !dbg !861
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !857, metadata !DIExpression()), !dbg !862
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !863
  call void @llvm.dbg.declare(metadata ptr %status, metadata !858, metadata !DIExpression()), !dbg !864
  store i32 0, ptr %status, align 4, !dbg !864
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref_desc) #4, !dbg !865
  call void @llvm.dbg.declare(metadata ptr %ref_desc, metadata !859, metadata !DIExpression()), !dbg !866
  %0 = load ptr, ptr %dest_desc.addr, align 8, !dbg !867
  store ptr %0, ptr %ref_desc, align 8, !dbg !866
  %1 = load ptr, ptr %source_desc.addr, align 8, !dbg !868
  %tobool = icmp ne ptr %1, null, !dbg !868
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !870

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %dest_desc.addr, align 8, !dbg !871
  %tobool1 = icmp ne ptr %2, null, !dbg !871
  br i1 %tobool1, label %if.end, label %if.then, !dbg !872

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 64, ptr noundef @.str) #5, !dbg !873
  store i32 12290, ptr %retval, align 4, !dbg !875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !875

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %dest_desc.addr, align 8, !dbg !876
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %3, i32 0, i32 1, !dbg !876
  %4 = load i8, ptr %descriptor_type, align 8, !dbg !876
  %conv = zext i8 %4 to i32, !dbg !876
  %cmp = icmp eq i32 %conv, 15, !dbg !878
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !879

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %source_desc.addr, align 8, !dbg !880
  %6 = load ptr, ptr %dest_desc.addr, align 8, !dbg !882
  %7 = load ptr, ptr %walk_state.addr, align 8, !dbg !883
  %call = call i32 @acpi_ex_store_object_to_node(ptr noundef %5, ptr noundef %6, ptr noundef %7, i8 noundef zeroext 1) #5, !dbg !884
  store i32 %call, ptr %status, align 4, !dbg !885
  %8 = load i32, ptr %status, align 4, !dbg !886
  store i32 %8, ptr %retval, align 4, !dbg !886
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !886

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %dest_desc.addr, align 8, !dbg !887
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %9, i32 0, i32 2, !dbg !888
  %10 = load i8, ptr %type, align 1, !dbg !888
  %conv5 = zext i8 %10 to i32, !dbg !887
  switch i32 %conv5, label %sw.default [
    i32 20, label %sw.epilog
    i32 1, label %sw.bb
  ], !dbg !889

sw.bb:                                            ; preds = %if.end4
  %11 = load ptr, ptr %dest_desc.addr, align 8, !dbg !890
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %11, i32 0, i32 4, !dbg !893
  %12 = load i8, ptr %flags, align 4, !dbg !893
  %conv6 = zext i8 %12 to i32, !dbg !890
  %and = and i32 %conv6, 1, !dbg !894
  %tobool7 = icmp ne i32 %and, 0, !dbg !894
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !895

if.then8:                                         ; preds = %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !896
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !896

if.end9:                                          ; preds = %sw.bb
  br label %sw.default, !dbg !898

sw.default:                                       ; preds = %if.end4, %if.end9
  %13 = load ptr, ptr %dest_desc.addr, align 8, !dbg !899
  %call10 = call ptr @acpi_ut_get_object_type_name(ptr noundef %13) #5, !dbg !899
  %14 = load ptr, ptr %dest_desc.addr, align 8, !dbg !899
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 105, ptr noundef @.str.1, ptr noundef %call10, ptr noundef %14) #5, !dbg !899
  store i32 12291, ptr %retval, align 4, !dbg !900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !900

sw.epilog:                                        ; preds = %if.end4
  %15 = load ptr, ptr %ref_desc, align 8, !dbg !901
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %15, i32 0, i32 5, !dbg !902
  %16 = load i8, ptr %class, align 1, !dbg !902
  %conv11 = zext i8 %16 to i32, !dbg !901
  switch i32 %conv11, label %sw.default20 [
    i32 2, label %sw.bb12
    i32 3, label %sw.bb14
    i32 0, label %sw.bb16
    i32 1, label %sw.bb16
    i32 6, label %sw.bb19
  ], !dbg !903

sw.bb12:                                          ; preds = %sw.epilog
  %17 = load ptr, ptr %source_desc.addr, align 8, !dbg !904
  %18 = load ptr, ptr %ref_desc, align 8, !dbg !906
  %object = getelementptr inbounds %struct.acpi_object_reference, ptr %18, i32 0, i32 8, !dbg !907
  %19 = load ptr, ptr %object, align 8, !dbg !907
  %20 = load ptr, ptr %walk_state.addr, align 8, !dbg !908
  %call13 = call i32 @acpi_ex_store_object_to_node(ptr noundef %17, ptr noundef %19, ptr noundef %20, i8 noundef zeroext 1) #5, !dbg !909
  store i32 %call13, ptr %status, align 4, !dbg !910
  br label %sw.epilog23, !dbg !911

sw.bb14:                                          ; preds = %sw.epilog
  %21 = load ptr, ptr %source_desc.addr, align 8, !dbg !912
  %22 = load ptr, ptr %ref_desc, align 8, !dbg !913
  %23 = load ptr, ptr %walk_state.addr, align 8, !dbg !914
  %call15 = call i32 @acpi_ex_store_object_to_index(ptr noundef %21, ptr noundef %22, ptr noundef %23) #5, !dbg !915
  store i32 %call15, ptr %status, align 4, !dbg !916
  br label %sw.epilog23, !dbg !917

sw.bb16:                                          ; preds = %sw.epilog, %sw.epilog
  %24 = load ptr, ptr %ref_desc, align 8, !dbg !918
  %class17 = getelementptr inbounds %struct.acpi_object_reference, ptr %24, i32 0, i32 5, !dbg !919
  %25 = load i8, ptr %class17, align 1, !dbg !919
  %26 = load ptr, ptr %ref_desc, align 8, !dbg !920
  %value = getelementptr inbounds %struct.acpi_object_reference, ptr %26, i32 0, i32 13, !dbg !921
  %27 = load i32, ptr %value, align 8, !dbg !921
  %28 = load ptr, ptr %source_desc.addr, align 8, !dbg !922
  %29 = load ptr, ptr %walk_state.addr, align 8, !dbg !923
  %call18 = call i32 @acpi_ds_store_object_to_local(i8 noundef zeroext %25, i32 noundef %27, ptr noundef %28, ptr noundef %29) #5, !dbg !924
  store i32 %call18, ptr %status, align 4, !dbg !925
  br label %sw.epilog23, !dbg !926

sw.bb19:                                          ; preds = %sw.epilog
  %30 = load ptr, ptr %source_desc.addr, align 8, !dbg !927
  call void @acpi_ex_do_debug_object(ptr noundef %30, i32 noundef 0, i32 noundef 0) #5, !dbg !927
  br label %sw.epilog23, !dbg !928

sw.default20:                                     ; preds = %sw.epilog
  %31 = load ptr, ptr %ref_desc, align 8, !dbg !929
  %class21 = getelementptr inbounds %struct.acpi_object_reference, ptr %31, i32 0, i32 5, !dbg !929
  %32 = load i8, ptr %class21, align 1, !dbg !929
  %conv22 = zext i8 %32 to i32, !dbg !929
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 167, ptr noundef @.str.2, i32 noundef %conv22) #5, !dbg !929
  store i32 12303, ptr %status, align 4, !dbg !930
  br label %sw.epilog23, !dbg !931

sw.epilog23:                                      ; preds = %sw.default20, %sw.bb19, %sw.bb16, %sw.bb14, %sw.bb12
  %33 = load i32, ptr %status, align 4, !dbg !932
  store i32 %33, ptr %retval, align 4, !dbg !932
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !932

cleanup:                                          ; preds = %sw.epilog23, %sw.default, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref_desc) #4, !dbg !933
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !933
  %34 = load i32, ptr %retval, align 4, !dbg !933
  ret i32 %34, !dbg !933
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !934 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_store_object_to_node(ptr noundef %source_desc, ptr noundef %node, ptr noundef %walk_state, i8 noundef zeroext %implicit_conversion) #0 align 16 !dbg !939 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %implicit_conversion.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %target_desc = alloca ptr, align 8
  %new_desc = alloca ptr, align 8
  %target_type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %source_desc, ptr %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_desc.addr, metadata !943, metadata !DIExpression()), !dbg !952
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !944, metadata !DIExpression()), !dbg !953
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !945, metadata !DIExpression()), !dbg !954
  store i8 %implicit_conversion, ptr %implicit_conversion.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %implicit_conversion.addr, metadata !946, metadata !DIExpression()), !dbg !955
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !956
  call void @llvm.dbg.declare(metadata ptr %status, metadata !947, metadata !DIExpression()), !dbg !957
  store i32 0, ptr %status, align 4, !dbg !957
  call void @llvm.lifetime.start.p0(i64 8, ptr %target_desc) #4, !dbg !958
  call void @llvm.dbg.declare(metadata ptr %target_desc, metadata !948, metadata !DIExpression()), !dbg !959
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_desc) #4, !dbg !960
  call void @llvm.dbg.declare(metadata ptr %new_desc, metadata !949, metadata !DIExpression()), !dbg !961
  call void @llvm.lifetime.start.p0(i64 4, ptr %target_type) #4, !dbg !962
  call void @llvm.dbg.declare(metadata ptr %target_type, metadata !950, metadata !DIExpression()), !dbg !963
  %0 = load ptr, ptr %node.addr, align 8, !dbg !964
  %call = call i32 @acpi_ns_get_type(ptr noundef %0) #5, !dbg !965
  store i32 %call, ptr %target_type, align 4, !dbg !966
  %1 = load ptr, ptr %node.addr, align 8, !dbg !967
  %call1 = call ptr @acpi_ns_get_attached_object(ptr noundef %1) #5, !dbg !968
  store ptr %call1, ptr %target_desc, align 8, !dbg !969
  %2 = load ptr, ptr %walk_state.addr, align 8, !dbg !970
  %opcode = getelementptr inbounds %struct.acpi_walk_state, ptr %2, i32 0, i32 3, !dbg !972
  %3 = load i16, ptr %opcode, align 2, !dbg !972
  %conv = zext i16 %3 to i32, !dbg !970
  %cmp = icmp ne i32 %conv, 157, !dbg !973
  br i1 %cmp, label %if.then, label %if.end18, !dbg !974

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %target_type, align 4, !dbg !975
  switch i32 %4, label %sw.default [
    i32 4, label %sw.bb
    i32 6, label %sw.bb14
    i32 7, label %sw.bb14
    i32 9, label %sw.bb14
    i32 10, label %sw.bb14
    i32 11, label %sw.bb14
    i32 12, label %sw.bb14
    i32 13, label %sw.bb14
  ], !dbg !977

sw.bb:                                            ; preds = %if.then
  %5 = load ptr, ptr %walk_state.addr, align 8, !dbg !978
  %opcode3 = getelementptr inbounds %struct.acpi_walk_state, ptr %5, i32 0, i32 3, !dbg !981
  %6 = load i16, ptr %opcode3, align 2, !dbg !981
  %conv4 = zext i16 %6 to i32, !dbg !978
  %cmp5 = icmp eq i32 %conv4, 112, !dbg !982
  br i1 %cmp5, label %if.then7, label %if.end13, !dbg !983

if.then7:                                         ; preds = %sw.bb
  %7 = load ptr, ptr %source_desc.addr, align 8, !dbg !984
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %7, i32 0, i32 2, !dbg !987
  %8 = load i8, ptr %type, align 1, !dbg !987
  %conv8 = zext i8 %8 to i32, !dbg !984
  %cmp9 = icmp ne i32 %conv8, 4, !dbg !988
  br i1 %cmp9, label %if.then11, label %if.end, !dbg !989

if.then11:                                        ; preds = %if.then7
  %9 = load ptr, ptr %source_desc.addr, align 8, !dbg !990
  %call12 = call ptr @acpi_ut_get_object_type_name(ptr noundef %9) #5, !dbg !990
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 414, ptr noundef @.str.3, ptr noundef %call12) #5, !dbg !990
  store i32 12323, ptr %retval, align 4, !dbg !992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !992

if.end:                                           ; preds = %if.then7
  br label %sw.epilog, !dbg !993

if.end13:                                         ; preds = %sw.bb
  br label %sw.bb14, !dbg !994

sw.bb14:                                          ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.end13
  %10 = load ptr, ptr %node.addr, align 8, !dbg !995
  %type15 = getelementptr inbounds %struct.acpi_namespace_node, ptr %10, i32 0, i32 2, !dbg !995
  %11 = load i8, ptr %type15, align 1, !dbg !995
  %conv16 = zext i8 %11 to i32, !dbg !995
  %call17 = call ptr @acpi_ut_get_type_name(i32 noundef %conv16) #5, !dbg !995
  %12 = load ptr, ptr %node.addr, align 8, !dbg !995
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %12, i32 0, i32 4, !dbg !995
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !995
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 435, ptr noundef @.str.4, ptr noundef %call17, ptr noundef %arraydecay) #5, !dbg !995
  store i32 12323, ptr %retval, align 4, !dbg !996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !996

sw.default:                                       ; preds = %if.then
  br label %sw.epilog, !dbg !997

sw.epilog:                                        ; preds = %sw.default, %if.end
  br label %if.end18, !dbg !998

if.end18:                                         ; preds = %sw.epilog, %entry
  %13 = load i32, ptr %target_type, align 4, !dbg !999
  %14 = load ptr, ptr %walk_state.addr, align 8, !dbg !1000
  %call19 = call i32 @acpi_ex_resolve_object(ptr noundef %source_desc.addr, i32 noundef %13, ptr noundef %14) #5, !dbg !1001
  store i32 %call19, ptr %status, align 4, !dbg !1002
  %15 = load i32, ptr %status, align 4, !dbg !1003
  %tobool = icmp ne i32 %15, 0, !dbg !1003
  br i1 %tobool, label %if.then20, label %if.end21, !dbg !1005

if.then20:                                        ; preds = %if.end18
  %16 = load i32, ptr %status, align 4, !dbg !1006
  store i32 %16, ptr %retval, align 4, !dbg !1006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1006

if.end21:                                         ; preds = %if.end18
  %17 = load i32, ptr %target_type, align 4, !dbg !1008
  switch i32 %17, label %sw.default44 [
    i32 1, label %sw.bb22
    i32 2, label %sw.bb22
    i32 3, label %sw.bb22
    i32 14, label %sw.bb42
    i32 17, label %sw.bb42
    i32 18, label %sw.bb42
    i32 19, label %sw.bb42
  ], !dbg !1009

sw.bb22:                                          ; preds = %if.end21, %if.end21, %if.end21
  %18 = load ptr, ptr %walk_state.addr, align 8, !dbg !1010
  %opcode23 = getelementptr inbounds %struct.acpi_walk_state, ptr %18, i32 0, i32 3, !dbg !1013
  %19 = load i16, ptr %opcode23, align 2, !dbg !1013
  %conv24 = zext i16 %19 to i32, !dbg !1010
  %cmp25 = icmp eq i32 %conv24, 157, !dbg !1014
  br i1 %cmp25, label %if.then28, label %lor.lhs.false, !dbg !1015

lor.lhs.false:                                    ; preds = %sw.bb22
  %20 = load i8, ptr %implicit_conversion.addr, align 1, !dbg !1016
  %tobool27 = icmp ne i8 %20, 0, !dbg !1016
  br i1 %tobool27, label %if.end30, label %if.then28, !dbg !1017

if.then28:                                        ; preds = %lor.lhs.false, %sw.bb22
  %21 = load ptr, ptr %source_desc.addr, align 8, !dbg !1018
  %22 = load ptr, ptr %node.addr, align 8, !dbg !1020
  %23 = load ptr, ptr %walk_state.addr, align 8, !dbg !1021
  %call29 = call i32 @acpi_ex_store_direct_to_node(ptr noundef %21, ptr noundef %22, ptr noundef %23) #5, !dbg !1022
  store i32 %call29, ptr %status, align 4, !dbg !1023
  br label %sw.epilog46, !dbg !1024

if.end30:                                         ; preds = %lor.lhs.false
  %24 = load ptr, ptr %source_desc.addr, align 8, !dbg !1025
  %25 = load ptr, ptr %target_desc, align 8, !dbg !1026
  %26 = load ptr, ptr %walk_state.addr, align 8, !dbg !1027
  %call31 = call i32 @acpi_ex_store_object_to_object(ptr noundef %24, ptr noundef %25, ptr noundef %new_desc, ptr noundef %26) #5, !dbg !1028
  store i32 %call31, ptr %status, align 4, !dbg !1029
  %27 = load i32, ptr %status, align 4, !dbg !1030
  %tobool32 = icmp ne i32 %27, 0, !dbg !1030
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !1032

if.then33:                                        ; preds = %if.end30
  %28 = load i32, ptr %status, align 4, !dbg !1033
  store i32 %28, ptr %retval, align 4, !dbg !1033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1033

if.end34:                                         ; preds = %if.end30
  %29 = load ptr, ptr %new_desc, align 8, !dbg !1035
  %30 = load ptr, ptr %target_desc, align 8, !dbg !1037
  %cmp35 = icmp ne ptr %29, %30, !dbg !1038
  br i1 %cmp35, label %if.then37, label %if.end41, !dbg !1039

if.then37:                                        ; preds = %if.end34
  %31 = load ptr, ptr %node.addr, align 8, !dbg !1040
  %32 = load ptr, ptr %new_desc, align 8, !dbg !1042
  %33 = load ptr, ptr %new_desc, align 8, !dbg !1043
  %type38 = getelementptr inbounds %struct.acpi_object_common, ptr %33, i32 0, i32 2, !dbg !1044
  %34 = load i8, ptr %type38, align 1, !dbg !1044
  %conv39 = zext i8 %34 to i32, !dbg !1043
  %call40 = call i32 @acpi_ns_attach_object(ptr noundef %31, ptr noundef %32, i32 noundef %conv39) #5, !dbg !1045
  store i32 %call40, ptr %status, align 4, !dbg !1046
  br label %if.end41, !dbg !1047

if.end41:                                         ; preds = %if.then37, %if.end34
  br label %sw.epilog46, !dbg !1048

sw.bb42:                                          ; preds = %if.end21, %if.end21, %if.end21, %if.end21
  %35 = load ptr, ptr %source_desc.addr, align 8, !dbg !1049
  %36 = load ptr, ptr %target_desc, align 8, !dbg !1050
  %37 = load ptr, ptr %walk_state.addr, align 8, !dbg !1051
  %result_obj = getelementptr inbounds %struct.acpi_walk_state, ptr %37, i32 0, i32 43, !dbg !1052
  %call43 = call i32 @acpi_ex_write_data_to_field(ptr noundef %35, ptr noundef %36, ptr noundef %result_obj) #5, !dbg !1053
  store i32 %call43, ptr %status, align 4, !dbg !1054
  br label %sw.epilog46, !dbg !1055

sw.default44:                                     ; preds = %if.end21
  %38 = load ptr, ptr %source_desc.addr, align 8, !dbg !1056
  %39 = load ptr, ptr %node.addr, align 8, !dbg !1057
  %40 = load ptr, ptr %walk_state.addr, align 8, !dbg !1058
  %call45 = call i32 @acpi_ex_store_direct_to_node(ptr noundef %38, ptr noundef %39, ptr noundef %40) #5, !dbg !1059
  store i32 %call45, ptr %status, align 4, !dbg !1060
  br label %sw.epilog46, !dbg !1061

sw.epilog46:                                      ; preds = %sw.default44, %sw.bb42, %if.end41, %if.then28
  %41 = load i32, ptr %status, align 4, !dbg !1062
  store i32 %41, ptr %retval, align 4, !dbg !1062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1062

cleanup:                                          ; preds = %sw.epilog46, %if.then33, %if.then20, %sw.bb14, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %target_type) #4, !dbg !1063
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_desc) #4, !dbg !1063
  call void @llvm.lifetime.end.p0(i64 8, ptr %target_desc) #4, !dbg !1063
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1063
  %42 = load i32, ptr %retval, align 4, !dbg !1063
  ret i32 %42, !dbg !1063
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1064 dso_local ptr @acpi_ut_get_object_type_name(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ex_store_object_to_index(ptr noundef %source_desc, ptr noundef %index_desc, ptr noundef %walk_state) #0 align 16 !dbg !1068 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca ptr, align 8
  %index_desc.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %obj_desc = alloca ptr, align 8
  %new_desc = alloca ptr, align 8
  %value = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %source_desc, ptr %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_desc.addr, metadata !1070, metadata !DIExpression()), !dbg !1078
  store ptr %index_desc, ptr %index_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %index_desc.addr, metadata !1071, metadata !DIExpression()), !dbg !1079
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1072, metadata !DIExpression()), !dbg !1080
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1073, metadata !DIExpression()), !dbg !1082
  store i32 0, ptr %status, align 4, !dbg !1082
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !1083
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !1074, metadata !DIExpression()), !dbg !1084
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_desc) #4, !dbg !1085
  call void @llvm.dbg.declare(metadata ptr %new_desc, metadata !1075, metadata !DIExpression()), !dbg !1086
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #4, !dbg !1087
  call void @llvm.dbg.declare(metadata ptr %value, metadata !1076, metadata !DIExpression()), !dbg !1088
  store i8 0, ptr %value, align 1, !dbg !1088
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !1089
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1077, metadata !DIExpression()), !dbg !1090
  %0 = load ptr, ptr %index_desc.addr, align 8, !dbg !1091
  %target_type = getelementptr inbounds %struct.acpi_object_reference, ptr %0, i32 0, i32 6, !dbg !1092
  %1 = load i8, ptr %target_type, align 2, !dbg !1092
  %conv = zext i8 %1 to i32, !dbg !1091
  switch i32 %conv, label %sw.default48 [
    i32 4, label %sw.bb
    i32 14, label %sw.bb25
  ], !dbg !1093

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %index_desc.addr, align 8, !dbg !1094
  %where = getelementptr inbounds %struct.acpi_object_reference, ptr %2, i32 0, i32 10, !dbg !1096
  %3 = load ptr, ptr %where, align 8, !dbg !1096
  %4 = load ptr, ptr %3, align 8, !dbg !1097
  store ptr %4, ptr %obj_desc, align 8, !dbg !1098
  %5 = load ptr, ptr %source_desc.addr, align 8, !dbg !1099
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %5, i32 0, i32 2, !dbg !1101
  %6 = load i8, ptr %type, align 1, !dbg !1101
  %conv1 = zext i8 %6 to i32, !dbg !1099
  %cmp = icmp eq i32 %conv1, 20, !dbg !1102
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1103

land.lhs.true:                                    ; preds = %sw.bb
  %7 = load ptr, ptr %source_desc.addr, align 8, !dbg !1104
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %7, i32 0, i32 5, !dbg !1105
  %8 = load i8, ptr %class, align 1, !dbg !1105
  %conv3 = zext i8 %8 to i32, !dbg !1104
  %cmp4 = icmp eq i32 %conv3, 4, !dbg !1106
  br i1 %cmp4, label %if.then, label %if.else, !dbg !1107

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %source_desc.addr, align 8, !dbg !1108
  call void @acpi_ut_add_reference(ptr noundef %9) #5, !dbg !1110
  %10 = load ptr, ptr %source_desc.addr, align 8, !dbg !1111
  store ptr %10, ptr %new_desc, align 8, !dbg !1112
  br label %if.end7, !dbg !1113

if.else:                                          ; preds = %land.lhs.true, %sw.bb
  %11 = load ptr, ptr %source_desc.addr, align 8, !dbg !1114
  %12 = load ptr, ptr %walk_state.addr, align 8, !dbg !1116
  %call = call i32 @acpi_ut_copy_iobject_to_iobject(ptr noundef %11, ptr noundef %new_desc, ptr noundef %12) #5, !dbg !1117
  store i32 %call, ptr %status, align 4, !dbg !1118
  %13 = load i32, ptr %status, align 4, !dbg !1119
  %tobool = icmp ne i32 %13, 0, !dbg !1119
  br i1 %tobool, label %if.then6, label %if.end, !dbg !1121

if.then6:                                         ; preds = %if.else
  %14 = load i32, ptr %status, align 4, !dbg !1122
  store i32 %14, ptr %retval, align 4, !dbg !1122
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1122

if.end:                                           ; preds = %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %15 = load ptr, ptr %obj_desc, align 8, !dbg !1124
  %tobool8 = icmp ne ptr %15, null, !dbg !1124
  br i1 %tobool8, label %if.then9, label %if.end13, !dbg !1126

if.then9:                                         ; preds = %if.end7
  store i32 0, ptr %i, align 4, !dbg !1127
  br label %for.cond, !dbg !1130

for.cond:                                         ; preds = %for.inc, %if.then9
  %16 = load i32, ptr %i, align 4, !dbg !1131
  %17 = load ptr, ptr %index_desc.addr, align 8, !dbg !1133
  %object = getelementptr inbounds %struct.acpi_object_reference, ptr %17, i32 0, i32 8, !dbg !1134
  %18 = load ptr, ptr %object, align 8, !dbg !1134
  %reference_count = getelementptr inbounds %struct.acpi_object_common, ptr %18, i32 0, i32 3, !dbg !1135
  %19 = load i16, ptr %reference_count, align 2, !dbg !1135
  %conv10 = zext i16 %19 to i32, !dbg !1136
  %cmp11 = icmp ult i32 %16, %conv10, !dbg !1137
  br i1 %cmp11, label %for.body, label %for.end, !dbg !1138

for.body:                                         ; preds = %for.cond
  %20 = load ptr, ptr %obj_desc, align 8, !dbg !1139
  call void @acpi_ut_remove_reference(ptr noundef %20) #5, !dbg !1141
  br label %for.inc, !dbg !1142

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4, !dbg !1143
  %inc = add i32 %21, 1, !dbg !1143
  store i32 %inc, ptr %i, align 4, !dbg !1143
  br label %for.cond, !dbg !1144, !llvm.loop !1145

for.end:                                          ; preds = %for.cond
  br label %if.end13, !dbg !1149

if.end13:                                         ; preds = %for.end, %if.end7
  %22 = load ptr, ptr %new_desc, align 8, !dbg !1150
  %23 = load ptr, ptr %index_desc.addr, align 8, !dbg !1151
  %where14 = getelementptr inbounds %struct.acpi_object_reference, ptr %23, i32 0, i32 10, !dbg !1152
  %24 = load ptr, ptr %where14, align 8, !dbg !1152
  store ptr %22, ptr %24, align 8, !dbg !1153
  store i32 1, ptr %i, align 4, !dbg !1154
  br label %for.cond15, !dbg !1156

for.cond15:                                       ; preds = %for.inc22, %if.end13
  %25 = load i32, ptr %i, align 4, !dbg !1157
  %26 = load ptr, ptr %index_desc.addr, align 8, !dbg !1159
  %object16 = getelementptr inbounds %struct.acpi_object_reference, ptr %26, i32 0, i32 8, !dbg !1160
  %27 = load ptr, ptr %object16, align 8, !dbg !1160
  %reference_count17 = getelementptr inbounds %struct.acpi_object_common, ptr %27, i32 0, i32 3, !dbg !1161
  %28 = load i16, ptr %reference_count17, align 2, !dbg !1161
  %conv18 = zext i16 %28 to i32, !dbg !1162
  %cmp19 = icmp ult i32 %25, %conv18, !dbg !1163
  br i1 %cmp19, label %for.body21, label %for.end24, !dbg !1164

for.body21:                                       ; preds = %for.cond15
  %29 = load ptr, ptr %new_desc, align 8, !dbg !1165
  call void @acpi_ut_add_reference(ptr noundef %29) #5, !dbg !1167
  br label %for.inc22, !dbg !1168

for.inc22:                                        ; preds = %for.body21
  %30 = load i32, ptr %i, align 4, !dbg !1169
  %inc23 = add i32 %30, 1, !dbg !1169
  store i32 %inc23, ptr %i, align 4, !dbg !1169
  br label %for.cond15, !dbg !1170, !llvm.loop !1171

for.end24:                                        ; preds = %for.cond15
  br label %sw.epilog49, !dbg !1173

sw.bb25:                                          ; preds = %entry
  %31 = load ptr, ptr %index_desc.addr, align 8, !dbg !1174
  %object26 = getelementptr inbounds %struct.acpi_object_reference, ptr %31, i32 0, i32 8, !dbg !1175
  %32 = load ptr, ptr %object26, align 8, !dbg !1175
  store ptr %32, ptr %obj_desc, align 8, !dbg !1176
  %33 = load ptr, ptr %obj_desc, align 8, !dbg !1177
  %type27 = getelementptr inbounds %struct.acpi_object_common, ptr %33, i32 0, i32 2, !dbg !1179
  %34 = load i8, ptr %type27, align 1, !dbg !1179
  %conv28 = zext i8 %34 to i32, !dbg !1177
  %cmp29 = icmp ne i32 %conv28, 3, !dbg !1180
  br i1 %cmp29, label %land.lhs.true31, label %if.end37, !dbg !1181

land.lhs.true31:                                  ; preds = %sw.bb25
  %35 = load ptr, ptr %obj_desc, align 8, !dbg !1182
  %type32 = getelementptr inbounds %struct.acpi_object_common, ptr %35, i32 0, i32 2, !dbg !1183
  %36 = load i8, ptr %type32, align 1, !dbg !1183
  %conv33 = zext i8 %36 to i32, !dbg !1182
  %cmp34 = icmp ne i32 %conv33, 2, !dbg !1184
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !1185

if.then36:                                        ; preds = %land.lhs.true31
  store i32 12291, ptr %retval, align 4, !dbg !1186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1186

if.end37:                                         ; preds = %land.lhs.true31, %sw.bb25
  %37 = load ptr, ptr %source_desc.addr, align 8, !dbg !1188
  %type38 = getelementptr inbounds %struct.acpi_object_common, ptr %37, i32 0, i32 2, !dbg !1189
  %38 = load i8, ptr %type38, align 1, !dbg !1189
  %conv39 = zext i8 %38 to i32, !dbg !1188
  switch i32 %conv39, label %sw.default [
    i32 1, label %sw.bb40
    i32 3, label %sw.bb43
    i32 2, label %sw.bb43
  ], !dbg !1190

sw.bb40:                                          ; preds = %if.end37
  %39 = load ptr, ptr %source_desc.addr, align 8, !dbg !1191
  %value41 = getelementptr inbounds %struct.acpi_object_integer, ptr %39, i32 0, i32 6, !dbg !1193
  %40 = load i64, ptr %value41, align 8, !dbg !1193
  %conv42 = trunc i64 %40 to i8, !dbg !1194
  store i8 %conv42, ptr %value, align 1, !dbg !1195
  br label %sw.epilog, !dbg !1196

sw.bb43:                                          ; preds = %if.end37, %if.end37
  %41 = load ptr, ptr %source_desc.addr, align 8, !dbg !1197
  %pointer = getelementptr inbounds %struct.acpi_object_buffer, ptr %41, i32 0, i32 5, !dbg !1198
  %42 = load ptr, ptr %pointer, align 8, !dbg !1198
  %arrayidx = getelementptr i8, ptr %42, i64 0, !dbg !1197
  %43 = load i8, ptr %arrayidx, align 1, !dbg !1197
  store i8 %43, ptr %value, align 1, !dbg !1199
  br label %sw.epilog, !dbg !1200

sw.default:                                       ; preds = %if.end37
  %44 = load ptr, ptr %source_desc.addr, align 8, !dbg !1201
  %call44 = call ptr @acpi_ut_get_object_type_name(ptr noundef %44) #5, !dbg !1201
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 309, ptr noundef @.str.5, ptr noundef %call44) #5, !dbg !1201
  store i32 12291, ptr %retval, align 4, !dbg !1202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1202

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb40
  %45 = load i8, ptr %value, align 1, !dbg !1203
  %46 = load ptr, ptr %obj_desc, align 8, !dbg !1204
  %pointer45 = getelementptr inbounds %struct.acpi_object_buffer, ptr %46, i32 0, i32 5, !dbg !1205
  %47 = load ptr, ptr %pointer45, align 8, !dbg !1205
  %48 = load ptr, ptr %index_desc.addr, align 8, !dbg !1206
  %value46 = getelementptr inbounds %struct.acpi_object_reference, ptr %48, i32 0, i32 13, !dbg !1207
  %49 = load i32, ptr %value46, align 8, !dbg !1207
  %idxprom = zext i32 %49 to i64, !dbg !1204
  %arrayidx47 = getelementptr i8, ptr %47, i64 %idxprom, !dbg !1204
  store i8 %45, ptr %arrayidx47, align 1, !dbg !1208
  br label %sw.epilog49, !dbg !1209

sw.default48:                                     ; preds = %entry
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 321, ptr noundef @.str.6) #5, !dbg !1210
  store i32 12323, ptr %status, align 4, !dbg !1211
  br label %sw.epilog49, !dbg !1212

sw.epilog49:                                      ; preds = %sw.default48, %sw.epilog, %for.end24
  %50 = load i32, ptr %status, align 4, !dbg !1213
  store i32 %50, ptr %retval, align 4, !dbg !1213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1213

cleanup:                                          ; preds = %sw.epilog49, %sw.default, %if.then36, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #4, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_desc) #4, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1214
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1214
  %51 = load i32, ptr %retval, align 4, !dbg !1214
  ret i32 %51, !dbg !1214
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1215 dso_local i32 @acpi_ds_store_object_to_local(i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1219 dso_local void @acpi_ex_do_debug_object(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1223 dso_local i32 @acpi_ns_get_type(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1227 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1230 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1233 dso_local i32 @acpi_ex_resolve_object(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ex_store_direct_to_node(ptr noundef %source_desc, ptr noundef %node, ptr noundef %walk_state) #0 align 16 !dbg !1236 {
entry:
  %retval = alloca i32, align 4
  %source_desc.addr = alloca ptr, align 8
  %node.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %new_desc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %source_desc, ptr %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_desc.addr, metadata !1240, metadata !DIExpression()), !dbg !1245
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1241, metadata !DIExpression()), !dbg !1246
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1242, metadata !DIExpression()), !dbg !1247
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !1248
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1243, metadata !DIExpression()), !dbg !1249
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_desc) #4, !dbg !1250
  call void @llvm.dbg.declare(metadata ptr %new_desc, metadata !1244, metadata !DIExpression()), !dbg !1251
  %0 = load ptr, ptr %source_desc.addr, align 8, !dbg !1252
  %1 = load ptr, ptr %walk_state.addr, align 8, !dbg !1253
  %call = call i32 @acpi_ut_copy_iobject_to_iobject(ptr noundef %0, ptr noundef %new_desc, ptr noundef %1) #5, !dbg !1254
  store i32 %call, ptr %status, align 4, !dbg !1255
  %2 = load i32, ptr %status, align 4, !dbg !1256
  %tobool = icmp ne i32 %2, 0, !dbg !1256
  br i1 %tobool, label %if.then, label %if.end, !dbg !1258

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !1259
  store i32 %3, ptr %retval, align 4, !dbg !1259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1259

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %node.addr, align 8, !dbg !1261
  %5 = load ptr, ptr %new_desc, align 8, !dbg !1262
  %6 = load ptr, ptr %new_desc, align 8, !dbg !1263
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %6, i32 0, i32 2, !dbg !1264
  %7 = load i8, ptr %type, align 1, !dbg !1264
  %conv = zext i8 %7 to i32, !dbg !1263
  %call1 = call i32 @acpi_ns_attach_object(ptr noundef %4, ptr noundef %5, i32 noundef %conv) #5, !dbg !1265
  store i32 %call1, ptr %status, align 4, !dbg !1266
  %8 = load ptr, ptr %new_desc, align 8, !dbg !1267
  call void @acpi_ut_remove_reference(ptr noundef %8) #5, !dbg !1268
  %9 = load i32, ptr %status, align 4, !dbg !1269
  store i32 %9, ptr %retval, align 4, !dbg !1269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1269

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_desc) #4, !dbg !1270
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1270
  %10 = load i32, ptr %retval, align 4, !dbg !1270
  ret i32 %10, !dbg !1270
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1271 dso_local i32 @acpi_ex_store_object_to_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1274 dso_local i32 @acpi_ns_attach_object(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1277 dso_local i32 @acpi_ex_write_data_to_field(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1280 dso_local void @acpi_ut_add_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1283 dso_local i32 @acpi_ut_copy_iobject_to_iobject(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1286 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!842, !843, !844, !845, !846, !847, !848, !849}
!llvm.ident = !{!850}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !840, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exstore.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exstore\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exstore.ll drivers/acpi/acpica/exstore.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !804, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exstore.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d4e2863b2bb97f0aa7aa5ccd44b43e51")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 323, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16}
!9 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0)
!10 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1)
!11 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2)
!12 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3)
!13 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4)
!14 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5)
!15 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6)
!16 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6)
!17 = !{!18, !24, !31, !93, !47, !43, !33}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 434, size: 1600, elements: !26)
!26 = !{!27, !36, !802, !803}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !25, file: !6, line: 435, baseType: !28, size: 128)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 429, size: 128, elements: !29)
!29 = !{!30, !32}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !28, file: !6, line: 430, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !28, file: !6, line: 431, baseType: !33, size: 8, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !35)
!35 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !25, file: !6, line: 436, baseType: !37, size: 576)
!37 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 369, size: 576, elements: !38)
!38 = !{!39, !51, !67, !79, !115, !129, !138, !451, !468, !484, !497, !575, !587, !601, !611, !629, !651, !670, !689, !708, !721, !748, !765, !778, !792, !801}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !37, file: !6, line: 370, baseType: !40, size: 128)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !41)
!41 = !{!42, !44, !45, !46, !50}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !40, file: !6, line: 74, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 72)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !40, file: !6, line: 74, baseType: !47, size: 16, offset: 80)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !49)
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !40, file: !6, line: 74, baseType: !33, size: 8, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !37, file: !6, line: 371, baseType: !52, size: 192)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !53)
!53 = !{!54, !55, !56, !57, !58, !59, !63}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !52, file: !6, line: 77, baseType: !43, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 72)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !52, file: !6, line: 77, baseType: !47, size: 16, offset: 80)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !6, line: 77, baseType: !33, size: 8, offset: 96)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !52, file: !6, line: 77, baseType: !60, size: 24, offset: 104)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 3)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !52, file: !6, line: 78, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !66)
!66 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !37, file: !6, line: 372, baseType: !68, size: 256)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !69)
!69 = !{!70, !71, !72, !73, !74, !75, !78}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !68, file: !6, line: 94, baseType: !43, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 72)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !68, file: !6, line: 94, baseType: !47, size: 16, offset: 80)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !68, file: !6, line: 94, baseType: !33, size: 8, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !68, file: !6, line: 94, baseType: !76, size: 64, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !68, file: !6, line: 94, baseType: !20, size: 32, offset: 192)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !37, file: !6, line: 373, baseType: !80, size: 384)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !89, !90, !91, !92}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !6, line: 98, baseType: !43, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !6, line: 98, baseType: !47, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !6, line: 98, baseType: !33, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !80, file: !6, line: 98, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !6, line: 98, baseType: !20, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !80, file: !6, line: 99, baseType: !20, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !80, file: !6, line: 100, baseType: !88, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !6, line: 101, baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !95, line: 133, size: 384, elements: !96)
!95 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!96 = !{!97, !98, !99, !100, !101, !110, !111, !112, !113}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !94, file: !95, line: 134, baseType: !43, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !95, line: 135, baseType: !33, size: 8, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !95, line: 136, baseType: !33, size: 8, offset: 72)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !95, line: 137, baseType: !47, size: 16, offset: 80)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !95, line: 138, baseType: !102, size: 32, offset: 96)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !103, line: 328, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !102, file: !103, line: 329, baseType: !20, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !102, file: !103, line: 330, baseType: !107, size: 32)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 32, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 4)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !94, file: !95, line: 139, baseType: !93, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !94, file: !95, line: 140, baseType: !93, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !94, file: !95, line: 141, baseType: !93, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !94, file: !95, line: 142, baseType: !114, size: 16, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !47)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !37, file: !6, line: 374, baseType: !116, size: 384)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !126, !127, !128}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !6, line: 105, baseType: !43, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !6, line: 105, baseType: !47, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !6, line: 105, baseType: !33, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !116, file: !6, line: 105, baseType: !93, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !116, file: !6, line: 106, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !116, file: !6, line: 107, baseType: !88, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !116, file: !6, line: 108, baseType: !20, size: 32, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !116, file: !6, line: 109, baseType: !20, size: 32, offset: 352)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !37, file: !6, line: 375, baseType: !130, size: 192)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !130, file: !6, line: 119, baseType: !43, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !130, file: !6, line: 119, baseType: !47, size: 16, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !6, line: 119, baseType: !33, size: 8, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !130, file: !6, line: 119, baseType: !31, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !37, file: !6, line: 376, baseType: !139, size: 448)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 144, size: 448, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !448, !449, !450}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !139, file: !6, line: 145, baseType: !43, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !139, file: !6, line: 145, baseType: !47, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !139, file: !6, line: 145, baseType: !33, size: 8, offset: 104)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !139, file: !6, line: 146, baseType: !33, size: 8, offset: 112)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !139, file: !6, line: 147, baseType: !33, size: 8, offset: 120)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !139, file: !6, line: 148, baseType: !43, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !6, line: 149, baseType: !43, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !139, file: !6, line: 150, baseType: !88, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !139, file: !6, line: 154, baseType: !153, size: 64, offset: 320)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !6, line: 151, size: 64, elements: !154)
!154 = !{!155, !447}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !153, file: !6, line: 152, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !95, line: 248, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!18, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !162, line: 37, size: 9024, elements: !163)
!162 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !393, !394, !395, !396, !397, !401, !403, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !430, !431, !432, !433, !434, !435, !436, !437, !439, !445}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !161, file: !162, line: 38, baseType: !160, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !161, file: !162, line: 39, baseType: !33, size: 8, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !161, file: !162, line: 40, baseType: !33, size: 8, offset: 72)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !161, file: !162, line: 41, baseType: !47, size: 16, offset: 80)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !161, file: !162, line: 42, baseType: !33, size: 8, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !161, file: !162, line: 43, baseType: !33, size: 8, offset: 104)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !161, file: !162, line: 44, baseType: !33, size: 8, offset: 112)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !161, file: !162, line: 45, baseType: !114, size: 16, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !161, file: !162, line: 46, baseType: !33, size: 8, offset: 144)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !161, file: !162, line: 47, baseType: !33, size: 8, offset: 152)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !161, file: !162, line: 48, baseType: !33, size: 8, offset: 160)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !161, file: !162, line: 49, baseType: !33, size: 8, offset: 168)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !161, file: !162, line: 50, baseType: !33, size: 8, offset: 176)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !161, file: !162, line: 51, baseType: !33, size: 8, offset: 184)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !161, file: !162, line: 52, baseType: !33, size: 8, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !161, file: !162, line: 53, baseType: !33, size: 8, offset: 200)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !161, file: !162, line: 54, baseType: !88, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !161, file: !162, line: 55, baseType: !20, size: 32, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !161, file: !162, line: 56, baseType: !20, size: 32, offset: 352)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !161, file: !162, line: 57, baseType: !20, size: 32, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !161, file: !162, line: 58, baseType: !20, size: 32, offset: 416)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !161, file: !162, line: 60, baseType: !186, size: 640, offset: 448)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !95, line: 909, size: 640, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !274, !275, !391, !392}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !186, file: !95, line: 910, baseType: !88, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !186, file: !95, line: 911, baseType: !88, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !186, file: !95, line: 912, baseType: !88, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !186, file: !95, line: 913, baseType: !88, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !186, file: !95, line: 914, baseType: !88, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !186, file: !95, line: 915, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !95, line: 891, size: 1600, elements: !196)
!196 = !{!197, !217, !233}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !195, file: !95, line: 892, baseType: !198, size: 448)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !95, line: 844, size: 448, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !216}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !198, file: !95, line: 845, baseType: !194, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !198, file: !95, line: 845, baseType: !33, size: 8, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !95, line: 845, baseType: !33, size: 8, offset: 72)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !198, file: !95, line: 845, baseType: !47, size: 16, offset: 80)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !198, file: !95, line: 845, baseType: !88, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !198, file: !95, line: 845, baseType: !194, size: 64, offset: 192)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !198, file: !95, line: 845, baseType: !93, size: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !95, line: 845, baseType: !208, size: 64, offset: 320)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !95, line: 732, size: 64, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !208, file: !95, line: 733, baseType: !64, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !208, file: !95, line: 734, baseType: !20, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !208, file: !95, line: 735, baseType: !76, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !208, file: !95, line: 736, baseType: !88, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !95, line: 737, baseType: !76, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !208, file: !95, line: 738, baseType: !194, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !198, file: !95, line: 845, baseType: !33, size: 8, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !195, file: !95, line: 893, baseType: !218, size: 640)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !95, line: 851, size: 640, elements: !219)
!219 = !{!220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !218, file: !95, line: 852, baseType: !194, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !218, file: !95, line: 852, baseType: !33, size: 8, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !218, file: !95, line: 852, baseType: !33, size: 8, offset: 72)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !218, file: !95, line: 852, baseType: !47, size: 16, offset: 80)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !218, file: !95, line: 852, baseType: !88, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !95, line: 852, baseType: !194, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !218, file: !95, line: 852, baseType: !93, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !218, file: !95, line: 852, baseType: !208, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !218, file: !95, line: 852, baseType: !33, size: 8, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !218, file: !95, line: 852, baseType: !76, size: 64, offset: 448)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !218, file: !95, line: 853, baseType: !88, size: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !218, file: !95, line: 854, baseType: !20, size: 32, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !218, file: !95, line: 855, baseType: !20, size: 32, offset: 608)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !195, file: !95, line: 894, baseType: !234, size: 1600)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !95, line: 862, size: 1600, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !234, file: !95, line: 863, baseType: !194, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !234, file: !95, line: 863, baseType: !33, size: 8, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !234, file: !95, line: 863, baseType: !33, size: 8, offset: 72)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !234, file: !95, line: 863, baseType: !47, size: 16, offset: 80)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !234, file: !95, line: 863, baseType: !88, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !234, file: !95, line: 863, baseType: !194, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !234, file: !95, line: 863, baseType: !93, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !234, file: !95, line: 863, baseType: !208, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !234, file: !95, line: 863, baseType: !33, size: 8, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !234, file: !95, line: 863, baseType: !194, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !234, file: !95, line: 864, baseType: !194, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !234, file: !95, line: 865, baseType: !76, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !234, file: !95, line: 866, baseType: !33, size: 8, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !234, file: !95, line: 867, baseType: !76, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !234, file: !95, line: 868, baseType: !76, size: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !234, file: !95, line: 869, baseType: !76, size: 64, offset: 832)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !234, file: !95, line: 870, baseType: !107, size: 32, offset: 896)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !234, file: !95, line: 871, baseType: !20, size: 32, offset: 928)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !234, file: !95, line: 872, baseType: !20, size: 32, offset: 960)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !234, file: !95, line: 873, baseType: !20, size: 32, offset: 992)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !234, file: !95, line: 874, baseType: !20, size: 32, offset: 1024)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !234, file: !95, line: 875, baseType: !20, size: 32, offset: 1056)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !234, file: !95, line: 876, baseType: !20, size: 32, offset: 1088)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !234, file: !95, line: 877, baseType: !20, size: 32, offset: 1120)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !234, file: !95, line: 878, baseType: !20, size: 32, offset: 1152)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !234, file: !95, line: 879, baseType: !20, size: 32, offset: 1184)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !234, file: !95, line: 880, baseType: !20, size: 32, offset: 1216)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !234, file: !95, line: 881, baseType: !20, size: 32, offset: 1248)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !234, file: !95, line: 882, baseType: !20, size: 32, offset: 1280)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !234, file: !95, line: 883, baseType: !20, size: 32, offset: 1312)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !234, file: !95, line: 884, baseType: !47, size: 16, offset: 1344)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !234, file: !95, line: 885, baseType: !33, size: 8, offset: 1360)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !234, file: !95, line: 886, baseType: !33, size: 8, offset: 1368)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !234, file: !95, line: 887, baseType: !33, size: 8, offset: 1376)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !234, file: !95, line: 888, baseType: !271, size: 160, offset: 1384)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 160, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 20)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !186, file: !95, line: 916, baseType: !93, size: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !186, file: !95, line: 917, baseType: !276, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !95, line: 679, size: 640, elements: !278)
!278 = !{!279, !287, !300, !309, !318, !331, !345, !357, !369}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !277, file: !95, line: 680, baseType: !280, size: 128)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !95, line: 575, size: 128, elements: !281)
!281 = !{!282, !283, !284, !285, !286}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !280, file: !95, line: 576, baseType: !31, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !280, file: !95, line: 576, baseType: !33, size: 8, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !280, file: !95, line: 576, baseType: !33, size: 8, offset: 72)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !280, file: !95, line: 576, baseType: !47, size: 16, offset: 80)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !280, file: !95, line: 576, baseType: !47, size: 16, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !277, file: !95, line: 681, baseType: !288, size: 384)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !95, line: 604, size: 384, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !95, line: 605, baseType: !31, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !288, file: !95, line: 605, baseType: !33, size: 8, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !288, file: !95, line: 605, baseType: !33, size: 8, offset: 72)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !288, file: !95, line: 605, baseType: !47, size: 16, offset: 80)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !288, file: !95, line: 605, baseType: !47, size: 16, offset: 96)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !288, file: !95, line: 606, baseType: !47, size: 16, offset: 112)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !288, file: !95, line: 607, baseType: !194, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !288, file: !95, line: 608, baseType: !88, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !288, file: !95, line: 609, baseType: !88, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !288, file: !95, line: 610, baseType: !64, size: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !277, file: !95, line: 682, baseType: !301, size: 192)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !95, line: 582, size: 192, elements: !302)
!302 = !{!303, !304, !305, !306, !307, !308}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !95, line: 583, baseType: !31, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !301, file: !95, line: 583, baseType: !33, size: 8, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !95, line: 583, baseType: !33, size: 8, offset: 72)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !301, file: !95, line: 583, baseType: !47, size: 16, offset: 80)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !301, file: !95, line: 583, baseType: !47, size: 16, offset: 96)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !301, file: !95, line: 584, baseType: !43, size: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !277, file: !95, line: 683, baseType: !310, size: 192)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !95, line: 616, size: 192, elements: !311)
!311 = !{!312, !313, !314, !315, !316, !317}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !95, line: 617, baseType: !31, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !310, file: !95, line: 617, baseType: !33, size: 8, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !95, line: 617, baseType: !33, size: 8, offset: 72)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !310, file: !95, line: 617, baseType: !47, size: 16, offset: 80)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !310, file: !95, line: 617, baseType: !47, size: 16, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !310, file: !95, line: 618, baseType: !93, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !277, file: !95, line: 684, baseType: !319, size: 448)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !95, line: 621, size: 448, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !319, file: !95, line: 622, baseType: !31, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !319, file: !95, line: 622, baseType: !33, size: 8, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !95, line: 622, baseType: !33, size: 8, offset: 72)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !319, file: !95, line: 622, baseType: !47, size: 16, offset: 80)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !319, file: !95, line: 622, baseType: !47, size: 16, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !319, file: !95, line: 623, baseType: !20, size: 32, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !319, file: !95, line: 624, baseType: !194, size: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !319, file: !95, line: 625, baseType: !88, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !319, file: !95, line: 626, baseType: !88, size: 64, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !319, file: !95, line: 627, baseType: !20, size: 32, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !277, file: !95, line: 685, baseType: !332, size: 512)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !95, line: 590, size: 512, elements: !333)
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !95, line: 591, baseType: !31, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !332, file: !95, line: 591, baseType: !33, size: 8, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !95, line: 591, baseType: !33, size: 8, offset: 72)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !332, file: !95, line: 591, baseType: !47, size: 16, offset: 80)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !332, file: !95, line: 591, baseType: !47, size: 16, offset: 96)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !332, file: !95, line: 592, baseType: !20, size: 32, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !332, file: !95, line: 593, baseType: !43, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !332, file: !95, line: 594, baseType: !43, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !332, file: !95, line: 595, baseType: !160, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !332, file: !95, line: 596, baseType: !31, size: 64, offset: 384)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !332, file: !95, line: 597, baseType: !20, size: 32, offset: 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !277, file: !95, line: 686, baseType: !346, size: 320)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !95, line: 634, size: 320, elements: !347)
!347 = !{!348, !349, !350, !351, !352, !353, !354, !355, !356}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !346, file: !95, line: 635, baseType: !31, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !346, file: !95, line: 635, baseType: !33, size: 8, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !95, line: 635, baseType: !33, size: 8, offset: 72)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !346, file: !95, line: 635, baseType: !47, size: 16, offset: 80)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !95, line: 635, baseType: !47, size: 16, offset: 96)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !346, file: !95, line: 636, baseType: !33, size: 8, offset: 112)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !346, file: !95, line: 637, baseType: !160, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !346, file: !95, line: 638, baseType: !43, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !346, file: !95, line: 639, baseType: !64, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !277, file: !95, line: 687, baseType: !358, size: 640)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !95, line: 646, size: 640, elements: !359)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !95, line: 647, baseType: !31, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !358, file: !95, line: 647, baseType: !33, size: 8, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !358, file: !95, line: 647, baseType: !33, size: 8, offset: 72)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !95, line: 647, baseType: !47, size: 16, offset: 80)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !95, line: 647, baseType: !47, size: 16, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !358, file: !95, line: 648, baseType: !366, size: 512, offset: 128)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 512, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 8)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !277, file: !95, line: 688, baseType: !370, size: 320)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !95, line: 669, size: 320, elements: !371)
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379, !380}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !370, file: !95, line: 670, baseType: !31, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !370, file: !95, line: 670, baseType: !33, size: 8, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !370, file: !95, line: 670, baseType: !33, size: 8, offset: 72)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !370, file: !95, line: 670, baseType: !47, size: 16, offset: 80)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !370, file: !95, line: 670, baseType: !47, size: 16, offset: 96)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !370, file: !95, line: 671, baseType: !33, size: 8, offset: 112)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !370, file: !95, line: 672, baseType: !93, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !370, file: !95, line: 673, baseType: !43, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !370, file: !95, line: 674, baseType: !381, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !95, line: 660, size: 128, elements: !383)
!383 = !{!384, !390}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !382, file: !95, line: 661, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1061, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389, !20, !31}
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !31)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !382, file: !95, line: 662, baseType: !31, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !186, file: !95, line: 918, baseType: !194, size: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !186, file: !95, line: 919, baseType: !20, size: 32, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !161, file: !162, line: 61, baseType: !20, size: 32, offset: 1088)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !161, file: !162, line: 62, baseType: !20, size: 32, offset: 1120)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !161, file: !162, line: 63, baseType: !47, size: 16, offset: 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !161, file: !162, line: 64, baseType: !33, size: 8, offset: 1168)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !161, file: !162, line: 66, baseType: !398, size: 2688, offset: 1216)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2688, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 7)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !161, file: !162, line: 67, baseType: !402, size: 3072, offset: 3904)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3072, elements: !367)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !161, file: !162, line: 68, baseType: !404, size: 576, offset: 6976)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 576, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 9)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !161, file: !162, line: 69, baseType: !125, size: 64, offset: 7552)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !161, file: !162, line: 71, baseType: !88, size: 64, offset: 7616)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !161, file: !162, line: 72, baseType: !125, size: 64, offset: 7680)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !161, file: !162, line: 73, baseType: !276, size: 64, offset: 7744)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !161, file: !162, line: 74, baseType: !93, size: 64, offset: 7808)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !161, file: !162, line: 75, baseType: !43, size: 64, offset: 7872)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !161, file: !162, line: 76, baseType: !93, size: 64, offset: 7936)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !161, file: !162, line: 77, baseType: !194, size: 64, offset: 8000)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !161, file: !162, line: 78, baseType: !43, size: 64, offset: 8064)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !161, file: !162, line: 79, baseType: !93, size: 64, offset: 8128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !161, file: !162, line: 80, baseType: !76, size: 64, offset: 8192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !161, file: !162, line: 81, baseType: !194, size: 64, offset: 8256)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !161, file: !162, line: 82, baseType: !420, size: 64, offset: 8320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !95, line: 718, size: 128, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !429}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !422, file: !95, line: 722, baseType: !20, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !422, file: !95, line: 723, baseType: !20, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !422, file: !95, line: 724, baseType: !47, size: 16, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !422, file: !95, line: 725, baseType: !33, size: 8, offset: 80)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !422, file: !95, line: 726, baseType: !33, size: 8, offset: 88)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !422, file: !95, line: 727, baseType: !33, size: 8, offset: 96)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !161, file: !162, line: 83, baseType: !194, size: 64, offset: 8384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !161, file: !162, line: 84, baseType: !43, size: 64, offset: 8448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !161, file: !162, line: 85, baseType: !276, size: 64, offset: 8512)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !161, file: !162, line: 86, baseType: !43, size: 64, offset: 8576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !161, file: !162, line: 87, baseType: !276, size: 64, offset: 8640)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !161, file: !162, line: 88, baseType: !194, size: 64, offset: 8704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !161, file: !162, line: 89, baseType: !194, size: 64, offset: 8768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !161, file: !162, line: 90, baseType: !438, size: 64, offset: 8832)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !161, file: !162, line: 91, baseType: !440, size: 64, offset: 8896)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !95, line: 652, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!18, !160, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !161, file: !162, line: 92, baseType: !446, size: 64, offset: 8960)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !95, line: 656, baseType: !157)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !153, file: !6, line: 153, baseType: !43, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !139, file: !6, line: 156, baseType: !20, size: 32, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !139, file: !6, line: 157, baseType: !114, size: 16, offset: 416)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !139, file: !6, line: 158, baseType: !33, size: 8, offset: 432)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !37, file: !6, line: 377, baseType: !452, size: 576)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !453)
!453 = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !452, file: !6, line: 123, baseType: !43, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 72)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !452, file: !6, line: 123, baseType: !47, size: 16, offset: 80)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 96)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !452, file: !6, line: 123, baseType: !33, size: 8, offset: 104)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !452, file: !6, line: 124, baseType: !47, size: 16, offset: 112)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !452, file: !6, line: 125, baseType: !31, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !452, file: !6, line: 126, baseType: !64, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !452, file: !6, line: 127, baseType: !438, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !452, file: !6, line: 128, baseType: !43, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !452, file: !6, line: 129, baseType: !43, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !452, file: !6, line: 130, baseType: !93, size: 64, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !452, file: !6, line: 131, baseType: !33, size: 8, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !37, file: !6, line: 378, baseType: !469, size: 512)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 512, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !482, !483}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !469, file: !6, line: 135, baseType: !43, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 72)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !469, file: !6, line: 135, baseType: !47, size: 16, offset: 80)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !469, file: !6, line: 135, baseType: !33, size: 8, offset: 104)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !469, file: !6, line: 136, baseType: !93, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !469, file: !6, line: 137, baseType: !43, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !6, line: 138, baseType: !43, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !469, file: !6, line: 139, baseType: !481, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !469, file: !6, line: 140, baseType: !20, size: 32, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !469, file: !6, line: 141, baseType: !31, size: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !37, file: !6, line: 379, baseType: !485, size: 320)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 185, size: 320, elements: !486)
!486 = !{!487, !488, !489, !490, !491, !492, !496}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !485, file: !6, line: 186, baseType: !43, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !485, file: !6, line: 186, baseType: !33, size: 8, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !6, line: 186, baseType: !33, size: 8, offset: 72)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !485, file: !6, line: 186, baseType: !47, size: 16, offset: 80)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !6, line: 186, baseType: !33, size: 8, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !485, file: !6, line: 186, baseType: !493, size: 128, offset: 128)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 128, elements: !494)
!494 = !{!495}
!495 = !DISubrange(count: 2)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !485, file: !6, line: 186, baseType: !43, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !37, file: !6, line: 380, baseType: !498, size: 384)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 188, size: 384, elements: !499)
!499 = !{!500, !501, !502, !503, !504, !505, !506, !507}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !498, file: !6, line: 189, baseType: !43, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !498, file: !6, line: 189, baseType: !33, size: 8, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !498, file: !6, line: 189, baseType: !33, size: 8, offset: 72)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !498, file: !6, line: 189, baseType: !47, size: 16, offset: 80)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !498, file: !6, line: 189, baseType: !33, size: 8, offset: 96)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !498, file: !6, line: 190, baseType: !493, size: 128, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !498, file: !6, line: 190, baseType: !43, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !498, file: !6, line: 190, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !95, line: 480, size: 576, elements: !510)
!510 = !{!511, !512, !513, !514, !522, !537, !569, !570, !571, !572, !573, !574}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !509, file: !95, line: 481, baseType: !93, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !509, file: !95, line: 482, baseType: !508, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !95, line: 483, baseType: !508, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !509, file: !95, line: 484, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !95, line: 497, size: 256, elements: !517)
!517 = !{!518, !519, !520, !521}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !516, file: !95, line: 498, baseType: !515, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !516, file: !95, line: 499, baseType: !515, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !516, file: !95, line: 500, baseType: !508, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !516, file: !95, line: 501, baseType: !20, size: 32, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !509, file: !95, line: 485, baseType: !523, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !95, line: 466, size: 320, elements: !525)
!525 = !{!526, !531, !532, !533, !534, !535, !536}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !524, file: !95, line: 467, baseType: !527, size: 128)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !95, line: 459, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !527, file: !95, line: 460, baseType: !33, size: 8)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !527, file: !95, line: 461, baseType: !64, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !524, file: !95, line: 468, baseType: !527, size: 128, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !524, file: !95, line: 469, baseType: !47, size: 16, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !524, file: !95, line: 470, baseType: !33, size: 8, offset: 272)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !524, file: !95, line: 471, baseType: !33, size: 8, offset: 280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !524, file: !95, line: 472, baseType: !33, size: 8, offset: 288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !524, file: !95, line: 473, baseType: !33, size: 8, offset: 296)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !509, file: !95, line: 486, baseType: !538, size: 64, offset: 320)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !95, line: 448, size: 192, elements: !540)
!540 = !{!541, !564, !565, !566, !567, !568}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !539, file: !95, line: 449, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !95, line: 438, size: 64, elements: !543)
!543 = !{!544, !545, !558}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !542, file: !95, line: 439, baseType: !93, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !542, file: !95, line: 440, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !95, line: 419, size: 256, elements: !548)
!548 = !{!549, !554, !555, !556, !557}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !547, file: !95, line: 420, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1058, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!20, !389, !20, !31}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !547, file: !95, line: 421, baseType: !31, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !547, file: !95, line: 422, baseType: !93, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !547, file: !95, line: 423, baseType: !33, size: 8, offset: 192)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !547, file: !95, line: 424, baseType: !33, size: 8, offset: 200)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !542, file: !95, line: 441, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !95, line: 429, size: 128, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !560, file: !95, line: 430, baseType: !93, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !560, file: !95, line: 431, baseType: !559, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !539, file: !95, line: 450, baseType: !523, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !95, line: 451, baseType: !33, size: 8, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !539, file: !95, line: 452, baseType: !33, size: 8, offset: 136)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !539, file: !95, line: 453, baseType: !33, size: 8, offset: 144)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !539, file: !95, line: 454, baseType: !33, size: 8, offset: 152)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !509, file: !95, line: 487, baseType: !64, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !509, file: !95, line: 488, baseType: !20, size: 32, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !509, file: !95, line: 489, baseType: !47, size: 16, offset: 480)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !509, file: !95, line: 490, baseType: !47, size: 16, offset: 496)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !509, file: !95, line: 491, baseType: !33, size: 8, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !509, file: !95, line: 492, baseType: !33, size: 8, offset: 520)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !37, file: !6, line: 381, baseType: !576, size: 384)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 193, size: 384, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !586}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !576, file: !6, line: 194, baseType: !43, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !576, file: !6, line: 194, baseType: !33, size: 8, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !576, file: !6, line: 194, baseType: !33, size: 8, offset: 72)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !576, file: !6, line: 194, baseType: !47, size: 16, offset: 80)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !6, line: 194, baseType: !33, size: 8, offset: 96)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !576, file: !6, line: 194, baseType: !493, size: 128, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !576, file: !6, line: 194, baseType: !43, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !576, file: !6, line: 194, baseType: !20, size: 32, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !576, file: !6, line: 195, baseType: !20, size: 32, offset: 352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !37, file: !6, line: 382, baseType: !588, size: 384)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 198, size: 384, elements: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !588, file: !6, line: 199, baseType: !43, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !588, file: !6, line: 199, baseType: !33, size: 8, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !588, file: !6, line: 199, baseType: !33, size: 8, offset: 72)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !588, file: !6, line: 199, baseType: !47, size: 16, offset: 80)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !588, file: !6, line: 199, baseType: !33, size: 8, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !588, file: !6, line: 201, baseType: !33, size: 8, offset: 104)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !588, file: !6, line: 202, baseType: !33, size: 8, offset: 112)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !588, file: !6, line: 203, baseType: !493, size: 128, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !588, file: !6, line: 203, baseType: !43, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !588, file: !6, line: 203, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !37, file: !6, line: 383, baseType: !602, size: 320)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 206, size: 320, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !602, file: !6, line: 207, baseType: !43, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !602, file: !6, line: 207, baseType: !33, size: 8, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !6, line: 207, baseType: !33, size: 8, offset: 72)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !602, file: !6, line: 207, baseType: !47, size: 16, offset: 80)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !602, file: !6, line: 207, baseType: !33, size: 8, offset: 96)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !602, file: !6, line: 207, baseType: !493, size: 128, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !602, file: !6, line: 207, baseType: !43, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !37, file: !6, line: 384, baseType: !612, size: 384)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 234, size: 384, elements: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !612, file: !6, line: 235, baseType: !43, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 72)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !612, file: !6, line: 235, baseType: !47, size: 16, offset: 80)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 96)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 104)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 112)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 120)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !612, file: !6, line: 235, baseType: !93, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !612, file: !6, line: 235, baseType: !20, size: 32, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !612, file: !6, line: 235, baseType: !20, size: 32, offset: 224)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !612, file: !6, line: 235, baseType: !20, size: 32, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 288)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !612, file: !6, line: 235, baseType: !33, size: 8, offset: 296)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !612, file: !6, line: 235, baseType: !43, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !37, file: !6, line: 385, baseType: !630, size: 576)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 238, size: 576, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !630, file: !6, line: 239, baseType: !43, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 72)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !630, file: !6, line: 239, baseType: !47, size: 16, offset: 80)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 96)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 104)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 112)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 120)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !6, line: 239, baseType: !93, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !630, file: !6, line: 239, baseType: !20, size: 32, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !630, file: !6, line: 239, baseType: !20, size: 32, offset: 224)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !630, file: !6, line: 239, baseType: !20, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 288)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !630, file: !6, line: 239, baseType: !33, size: 8, offset: 296)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !630, file: !6, line: 239, baseType: !47, size: 16, offset: 304)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !630, file: !6, line: 240, baseType: !43, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !630, file: !6, line: 241, baseType: !88, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !630, file: !6, line: 242, baseType: !47, size: 16, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !630, file: !6, line: 243, baseType: !88, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !37, file: !6, line: 386, baseType: !652, size: 384)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 263, size: 384, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !652, file: !6, line: 264, baseType: !43, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 72)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !652, file: !6, line: 264, baseType: !47, size: 16, offset: 80)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 104)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 112)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 120)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !652, file: !6, line: 264, baseType: !93, size: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !652, file: !6, line: 264, baseType: !20, size: 32, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !652, file: !6, line: 264, baseType: !20, size: 32, offset: 224)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !652, file: !6, line: 264, baseType: !20, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 288)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 296)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !652, file: !6, line: 264, baseType: !33, size: 8, offset: 304)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !652, file: !6, line: 265, baseType: !43, size: 64, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !37, file: !6, line: 387, baseType: !671, size: 448)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 246, size: 448, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !671, file: !6, line: 247, baseType: !43, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 72)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !671, file: !6, line: 247, baseType: !47, size: 16, offset: 80)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 96)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 104)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 112)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 120)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !671, file: !6, line: 247, baseType: !93, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !671, file: !6, line: 247, baseType: !20, size: 32, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !671, file: !6, line: 247, baseType: !20, size: 32, offset: 224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !671, file: !6, line: 247, baseType: !20, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !671, file: !6, line: 247, baseType: !33, size: 8, offset: 296)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !671, file: !6, line: 247, baseType: !43, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !671, file: !6, line: 248, baseType: !43, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !37, file: !6, line: 388, baseType: !690, size: 448)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 251, size: 448, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !690, file: !6, line: 252, baseType: !43, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 72)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !690, file: !6, line: 252, baseType: !47, size: 16, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 96)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 104)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 112)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 120)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !690, file: !6, line: 252, baseType: !93, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !690, file: !6, line: 252, baseType: !20, size: 32, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !690, file: !6, line: 252, baseType: !20, size: 32, offset: 224)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !690, file: !6, line: 252, baseType: !20, size: 32, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 288)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !690, file: !6, line: 252, baseType: !33, size: 8, offset: 296)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !690, file: !6, line: 257, baseType: !43, size: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !690, file: !6, line: 258, baseType: !43, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !37, file: !6, line: 389, baseType: !709, size: 512)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 274, size: 512, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !709, file: !6, line: 275, baseType: !43, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !709, file: !6, line: 275, baseType: !33, size: 8, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !709, file: !6, line: 275, baseType: !33, size: 8, offset: 72)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !709, file: !6, line: 275, baseType: !47, size: 16, offset: 80)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !709, file: !6, line: 275, baseType: !33, size: 8, offset: 96)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !6, line: 275, baseType: !93, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !709, file: !6, line: 276, baseType: !20, size: 32, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !709, file: !6, line: 277, baseType: !385, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !709, file: !6, line: 278, baseType: !31, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !6, line: 279, baseType: !493, size: 128, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !37, file: !6, line: 390, baseType: !722, size: 576)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 282, size: 576, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !731, !737, !738, !739, !740, !746, !747}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !722, file: !6, line: 283, baseType: !43, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 72)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !722, file: !6, line: 283, baseType: !47, size: 16, offset: 80)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !722, file: !6, line: 283, baseType: !33, size: 8, offset: 104)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !722, file: !6, line: 284, baseType: !33, size: 8, offset: 112)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !722, file: !6, line: 285, baseType: !732, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1093, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!18, !20, !481, !20, !736, !31, !31}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !722, file: !6, line: 286, baseType: !93, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !722, file: !6, line: 287, baseType: !31, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !722, file: !6, line: 288, baseType: !31, size: 64, offset: 320)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !722, file: !6, line: 289, baseType: !741, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1126, baseType: !742)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!18, !389, !20, !31, !745}
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !722, file: !6, line: 290, baseType: !43, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !722, file: !6, line: 291, baseType: !43, size: 64, offset: 512)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !37, file: !6, line: 391, baseType: !749, size: 512)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 309, size: 512, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !749, file: !6, line: 310, baseType: !43, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 72)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !749, file: !6, line: 310, baseType: !47, size: 16, offset: 80)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 96)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !749, file: !6, line: 310, baseType: !33, size: 8, offset: 104)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !749, file: !6, line: 311, baseType: !33, size: 8, offset: 112)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !749, file: !6, line: 312, baseType: !33, size: 8, offset: 120)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !749, file: !6, line: 313, baseType: !31, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !749, file: !6, line: 314, baseType: !93, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !749, file: !6, line: 315, baseType: !125, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !749, file: !6, line: 316, baseType: !88, size: 64, offset: 320)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !749, file: !6, line: 317, baseType: !88, size: 64, offset: 384)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !749, file: !6, line: 318, baseType: !20, size: 32, offset: 448)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !37, file: !6, line: 392, baseType: !766, size: 448)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 342, size: 448, elements: !767)
!767 = !{!768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !766, file: !6, line: 343, baseType: !43, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !766, file: !6, line: 343, baseType: !33, size: 8, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !766, file: !6, line: 343, baseType: !33, size: 8, offset: 72)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !766, file: !6, line: 343, baseType: !47, size: 16, offset: 80)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !766, file: !6, line: 343, baseType: !33, size: 8, offset: 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !766, file: !6, line: 343, baseType: !93, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !766, file: !6, line: 344, baseType: !93, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !766, file: !6, line: 345, baseType: !31, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !766, file: !6, line: 346, baseType: !88, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !766, file: !6, line: 347, baseType: !20, size: 32, offset: 384)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !37, file: !6, line: 393, baseType: !779, size: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 352, size: 256, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786, !791}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !779, file: !6, line: 353, baseType: !43, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !779, file: !6, line: 353, baseType: !33, size: 8, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !779, file: !6, line: 353, baseType: !33, size: 8, offset: 72)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !779, file: !6, line: 353, baseType: !47, size: 16, offset: 80)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !779, file: !6, line: 353, baseType: !33, size: 8, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !779, file: !6, line: 353, baseType: !787, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1064, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{null, !389, !31}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !779, file: !6, line: 354, baseType: !31, size: 64, offset: 192)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !37, file: !6, line: 394, baseType: !793, size: 192)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 359, size: 192, elements: !794)
!794 = !{!795, !796, !797, !798, !799, !800}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !793, file: !6, line: 360, baseType: !43, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !793, file: !6, line: 360, baseType: !33, size: 8, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !793, file: !6, line: 360, baseType: !33, size: 8, offset: 72)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !793, file: !6, line: 360, baseType: !47, size: 16, offset: 80)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !6, line: 360, baseType: !33, size: 8, offset: 96)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !793, file: !6, line: 360, baseType: !43, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !37, file: !6, line: 401, baseType: !94, size: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !25, file: !6, line: 437, baseType: !94, size: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !25, file: !6, line: 438, baseType: !195, size: 1600)
!804 = !{!805, !810, !815, !820, !825, !0, !830, !835}
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !807, isLocal: true, isDefinition: true)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 120, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 15)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !812, isLocal: true, isDefinition: true)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 440, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 55)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !3, line: 167, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 256, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 32)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !3, line: 414, type: !822, isLocal: true, isDefinition: true)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 504, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 63)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !3, line: 435, type: !827, isLocal: true, isDefinition: true)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 552, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 69)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !3, line: 309, type: !832, isLocal: true, isDefinition: true)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 448, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 56)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !3, line: 321, type: !837, isLocal: true, isDefinition: true)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 352, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 44)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 64, elements: !367)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!842 = !{i32 7, !"Dwarf Version", i32 5}
!843 = !{i32 2, !"Debug Info Version", i32 3}
!844 = !{i32 1, !"wchar_size", i32 2}
!845 = !{i32 8, !"cf-protection-branch", i32 1}
!846 = !{i32 4, !"function_return_thunk_extern", i32 1}
!847 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!848 = !{i32 1, !"Code Model", i32 2}
!849 = !{i32 1, !"override-stack-alignment", i32 8}
!850 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!851 = distinct !DISubprogram(name: "acpi_ex_store", scope: !3, file: !3, line: 52, type: !852, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{!18, !43, !43, !160}
!854 = !{!855, !856, !857, !858, !859}
!855 = !DILocalVariable(name: "source_desc", arg: 1, scope: !851, file: !3, line: 52, type: !43)
!856 = !DILocalVariable(name: "dest_desc", arg: 2, scope: !851, file: !3, line: 53, type: !43)
!857 = !DILocalVariable(name: "walk_state", arg: 3, scope: !851, file: !3, line: 54, type: !160)
!858 = !DILocalVariable(name: "status", scope: !851, file: !3, line: 56, type: !18)
!859 = !DILocalVariable(name: "ref_desc", scope: !851, file: !3, line: 57, type: !43)
!860 = !DILocation(line: 52, column: 42, scope: !851)
!861 = !DILocation(line: 53, column: 35, scope: !851)
!862 = !DILocation(line: 54, column: 32, scope: !851)
!863 = !DILocation(line: 56, column: 2, scope: !851)
!864 = !DILocation(line: 56, column: 14, scope: !851)
!865 = !DILocation(line: 57, column: 2, scope: !851)
!866 = !DILocation(line: 57, column: 29, scope: !851)
!867 = !DILocation(line: 57, column: 40, scope: !851)
!868 = !DILocation(line: 63, column: 7, scope: !869)
!869 = distinct !DILexicalBlock(scope: !851, file: !3, line: 63, column: 6)
!870 = !DILocation(line: 63, column: 19, scope: !869)
!871 = !DILocation(line: 63, column: 23, scope: !869)
!872 = !DILocation(line: 63, column: 6, scope: !851)
!873 = !DILocation(line: 64, column: 3, scope: !874)
!874 = distinct !DILexicalBlock(scope: !869, file: !3, line: 63, column: 34)
!875 = !DILocation(line: 65, column: 3, scope: !874)
!876 = !DILocation(line: 70, column: 6, scope: !877)
!877 = distinct !DILexicalBlock(scope: !851, file: !3, line: 70, column: 6)
!878 = !DILocation(line: 70, column: 42, scope: !877)
!879 = !DILocation(line: 70, column: 6, scope: !851)
!880 = !DILocation(line: 75, column: 41, scope: !881)
!881 = distinct !DILexicalBlock(scope: !877, file: !3, line: 70, column: 67)
!882 = !DILocation(line: 78, column: 13, scope: !881)
!883 = !DILocation(line: 78, column: 24, scope: !881)
!884 = !DILocation(line: 75, column: 12, scope: !881)
!885 = !DILocation(line: 75, column: 10, scope: !881)
!886 = !DILocation(line: 81, column: 3, scope: !881)
!887 = !DILocation(line: 86, column: 10, scope: !851)
!888 = !DILocation(line: 86, column: 28, scope: !851)
!889 = !DILocation(line: 86, column: 2, scope: !851)
!890 = !DILocation(line: 95, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !3, line: 95, column: 7)
!892 = distinct !DILexicalBlock(scope: !851, file: !3, line: 86, column: 34)
!893 = !DILocation(line: 95, column: 25, scope: !891)
!894 = !DILocation(line: 95, column: 31, scope: !891)
!895 = !DILocation(line: 95, column: 7, scope: !892)
!896 = !DILocation(line: 96, column: 4, scope: !897)
!897 = distinct !DILexicalBlock(scope: !891, file: !3, line: 95, column: 54)
!898 = !DILocation(line: 95, column: 33, scope: !891)
!899 = !DILocation(line: 105, column: 3, scope: !892)
!900 = !DILocation(line: 110, column: 3, scope: !892)
!901 = !DILocation(line: 121, column: 10, scope: !851)
!902 = !DILocation(line: 121, column: 30, scope: !851)
!903 = !DILocation(line: 121, column: 2, scope: !851)
!904 = !DILocation(line: 126, column: 41, scope: !905)
!905 = distinct !DILexicalBlock(scope: !851, file: !3, line: 121, column: 37)
!906 = !DILocation(line: 127, column: 13, scope: !905)
!907 = !DILocation(line: 128, column: 13, scope: !905)
!908 = !DILocation(line: 128, column: 21, scope: !905)
!909 = !DILocation(line: 126, column: 12, scope: !905)
!910 = !DILocation(line: 126, column: 10, scope: !905)
!911 = !DILocation(line: 130, column: 3, scope: !905)
!912 = !DILocation(line: 137, column: 37, scope: !905)
!913 = !DILocation(line: 137, column: 50, scope: !905)
!914 = !DILocation(line: 138, column: 9, scope: !905)
!915 = !DILocation(line: 137, column: 7, scope: !905)
!916 = !DILocation(line: 136, column: 10, scope: !905)
!917 = !DILocation(line: 139, column: 3, scope: !905)
!918 = !DILocation(line: 147, column: 37, scope: !905)
!919 = !DILocation(line: 147, column: 57, scope: !905)
!920 = !DILocation(line: 148, column: 9, scope: !905)
!921 = !DILocation(line: 148, column: 29, scope: !905)
!922 = !DILocation(line: 149, column: 9, scope: !905)
!923 = !DILocation(line: 149, column: 22, scope: !905)
!924 = !DILocation(line: 147, column: 7, scope: !905)
!925 = !DILocation(line: 146, column: 10, scope: !905)
!926 = !DILocation(line: 150, column: 3, scope: !905)
!927 = !DILocation(line: 162, column: 3, scope: !905)
!928 = !DILocation(line: 163, column: 3, scope: !905)
!929 = !DILocation(line: 167, column: 3, scope: !905)
!930 = !DILocation(line: 171, column: 10, scope: !905)
!931 = !DILocation(line: 172, column: 3, scope: !905)
!932 = !DILocation(line: 175, column: 2, scope: !851)
!933 = !DILocation(line: 176, column: 1, scope: !851)
!934 = !DISubprogram(name: "acpi_error", scope: !935, file: !935, line: 901, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!935 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!936 = !DISubroutineType(types: !937)
!937 = !{null, !938, !20, !938, null}
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!939 = distinct !DISubprogram(name: "acpi_ex_store_object_to_node", scope: !3, file: !3, line: 361, type: !940, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !942)
!940 = !DISubroutineType(types: !941)
!941 = !{!18, !43, !93, !160, !33}
!942 = !{!943, !944, !945, !946, !947, !948, !949, !950}
!943 = !DILocalVariable(name: "source_desc", arg: 1, scope: !939, file: !3, line: 361, type: !43)
!944 = !DILocalVariable(name: "node", arg: 2, scope: !939, file: !3, line: 362, type: !93)
!945 = !DILocalVariable(name: "walk_state", arg: 3, scope: !939, file: !3, line: 363, type: !160)
!946 = !DILocalVariable(name: "implicit_conversion", arg: 4, scope: !939, file: !3, line: 364, type: !33)
!947 = !DILocalVariable(name: "status", scope: !939, file: !3, line: 366, type: !18)
!948 = !DILocalVariable(name: "target_desc", scope: !939, file: !3, line: 367, type: !43)
!949 = !DILocalVariable(name: "new_desc", scope: !939, file: !3, line: 368, type: !43)
!950 = !DILocalVariable(name: "target_type", scope: !939, file: !3, line: 369, type: !951)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 644, baseType: !20)
!952 = !DILocation(line: 361, column: 57, scope: !939)
!953 = !DILocation(line: 362, column: 37, scope: !939)
!954 = !DILocation(line: 363, column: 33, scope: !939)
!955 = !DILocation(line: 364, column: 12, scope: !939)
!956 = !DILocation(line: 366, column: 2, scope: !939)
!957 = !DILocation(line: 366, column: 14, scope: !939)
!958 = !DILocation(line: 367, column: 2, scope: !939)
!959 = !DILocation(line: 367, column: 29, scope: !939)
!960 = !DILocation(line: 368, column: 2, scope: !939)
!961 = !DILocation(line: 368, column: 29, scope: !939)
!962 = !DILocation(line: 369, column: 2, scope: !939)
!963 = !DILocation(line: 369, column: 19, scope: !939)
!964 = !DILocation(line: 375, column: 33, scope: !939)
!965 = !DILocation(line: 375, column: 16, scope: !939)
!966 = !DILocation(line: 375, column: 14, scope: !939)
!967 = !DILocation(line: 376, column: 44, scope: !939)
!968 = !DILocation(line: 376, column: 16, scope: !939)
!969 = !DILocation(line: 376, column: 14, scope: !939)
!970 = !DILocation(line: 385, column: 6, scope: !971)
!971 = distinct !DILexicalBlock(scope: !939, file: !3, line: 385, column: 6)
!972 = !DILocation(line: 385, column: 18, scope: !971)
!973 = !DILocation(line: 385, column: 25, scope: !971)
!974 = !DILocation(line: 385, column: 6, scope: !939)
!975 = !DILocation(line: 404, column: 11, scope: !976)
!976 = distinct !DILexicalBlock(scope: !971, file: !3, line: 385, column: 48)
!977 = !DILocation(line: 404, column: 3, scope: !976)
!978 = !DILocation(line: 411, column: 8, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !3, line: 411, column: 8)
!980 = distinct !DILexicalBlock(scope: !976, file: !3, line: 404, column: 24)
!981 = !DILocation(line: 411, column: 20, scope: !979)
!982 = !DILocation(line: 411, column: 27, scope: !979)
!983 = !DILocation(line: 411, column: 8, scope: !980)
!984 = !DILocation(line: 412, column: 9, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !3, line: 412, column: 9)
!986 = distinct !DILexicalBlock(scope: !979, file: !3, line: 411, column: 44)
!987 = !DILocation(line: 412, column: 29, scope: !985)
!988 = !DILocation(line: 412, column: 34, scope: !985)
!989 = !DILocation(line: 412, column: 9, scope: !986)
!990 = !DILocation(line: 414, column: 6, scope: !991)
!991 = distinct !DILexicalBlock(scope: !985, file: !3, line: 413, column: 28)
!992 = !DILocation(line: 420, column: 6, scope: !991)
!993 = !DILocation(line: 422, column: 5, scope: !986)
!994 = !DILocation(line: 411, column: 30, scope: !979)
!995 = !DILocation(line: 435, column: 4, scope: !980)
!996 = !DILocation(line: 441, column: 4, scope: !980)
!997 = !DILocation(line: 444, column: 4, scope: !980)
!998 = !DILocation(line: 446, column: 2, scope: !976)
!999 = !DILocation(line: 452, column: 48, scope: !939)
!1000 = !DILocation(line: 452, column: 61, scope: !939)
!1001 = !DILocation(line: 452, column: 11, scope: !939)
!1002 = !DILocation(line: 452, column: 9, scope: !939)
!1003 = !DILocation(line: 453, column: 6, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !939, file: !3, line: 453, column: 6)
!1005 = !DILocation(line: 453, column: 6, scope: !939)
!1006 = !DILocation(line: 454, column: 3, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 453, column: 28)
!1008 = !DILocation(line: 459, column: 10, scope: !939)
!1009 = !DILocation(line: 459, column: 2, scope: !939)
!1010 = !DILocation(line: 468, column: 8, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 468, column: 7)
!1012 = distinct !DILexicalBlock(scope: !939, file: !3, line: 459, column: 23)
!1013 = !DILocation(line: 468, column: 20, scope: !1011)
!1014 = !DILocation(line: 468, column: 27, scope: !1011)
!1015 = !DILocation(line: 468, column: 50, scope: !1011)
!1016 = !DILocation(line: 469, column: 8, scope: !1011)
!1017 = !DILocation(line: 468, column: 7, scope: !1012)
!1018 = !DILocation(line: 476, column: 37, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 469, column: 29)
!1020 = !DILocation(line: 476, column: 50, scope: !1019)
!1021 = !DILocation(line: 477, column: 9, scope: !1019)
!1022 = !DILocation(line: 476, column: 8, scope: !1019)
!1023 = !DILocation(line: 475, column: 11, scope: !1019)
!1024 = !DILocation(line: 478, column: 4, scope: !1019)
!1025 = !DILocation(line: 484, column: 38, scope: !1012)
!1026 = !DILocation(line: 484, column: 51, scope: !1012)
!1027 = !DILocation(line: 485, column: 21, scope: !1012)
!1028 = !DILocation(line: 484, column: 7, scope: !1012)
!1029 = !DILocation(line: 483, column: 10, scope: !1012)
!1030 = !DILocation(line: 486, column: 7, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 486, column: 7)
!1032 = !DILocation(line: 486, column: 7, scope: !1012)
!1033 = !DILocation(line: 487, column: 4, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 486, column: 29)
!1035 = !DILocation(line: 490, column: 7, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 490, column: 7)
!1037 = !DILocation(line: 490, column: 19, scope: !1036)
!1038 = !DILocation(line: 490, column: 16, scope: !1036)
!1039 = !DILocation(line: 490, column: 7, scope: !1012)
!1040 = !DILocation(line: 501, column: 30, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 490, column: 32)
!1042 = !DILocation(line: 501, column: 36, scope: !1041)
!1043 = !DILocation(line: 502, column: 9, scope: !1041)
!1044 = !DILocation(line: 502, column: 26, scope: !1041)
!1045 = !DILocation(line: 501, column: 8, scope: !1041)
!1046 = !DILocation(line: 500, column: 11, scope: !1041)
!1047 = !DILocation(line: 510, column: 3, scope: !1041)
!1048 = !DILocation(line: 511, column: 3, scope: !1012)
!1049 = !DILocation(line: 523, column: 40, scope: !1012)
!1050 = !DILocation(line: 523, column: 53, scope: !1012)
!1051 = !DILocation(line: 524, column: 13, scope: !1012)
!1052 = !DILocation(line: 524, column: 25, scope: !1012)
!1053 = !DILocation(line: 523, column: 12, scope: !1012)
!1054 = !DILocation(line: 523, column: 10, scope: !1012)
!1055 = !DILocation(line: 525, column: 3, scope: !1012)
!1056 = !DILocation(line: 537, column: 36, scope: !1012)
!1057 = !DILocation(line: 537, column: 49, scope: !1012)
!1058 = !DILocation(line: 537, column: 55, scope: !1012)
!1059 = !DILocation(line: 537, column: 7, scope: !1012)
!1060 = !DILocation(line: 536, column: 10, scope: !1012)
!1061 = !DILocation(line: 538, column: 3, scope: !1012)
!1062 = !DILocation(line: 541, column: 2, scope: !939)
!1063 = !DILocation(line: 542, column: 1, scope: !939)
!1064 = !DISubprogram(name: "acpi_ut_get_object_type_name", scope: !1065, file: !1065, line: 233, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1065 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!938, !43}
!1068 = distinct !DISubprogram(name: "acpi_ex_store_object_to_index", scope: !3, file: !3, line: 193, type: !852, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077}
!1070 = !DILocalVariable(name: "source_desc", arg: 1, scope: !1068, file: !3, line: 193, type: !43)
!1071 = !DILocalVariable(name: "index_desc", arg: 2, scope: !1068, file: !3, line: 194, type: !43)
!1072 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1068, file: !3, line: 195, type: !160)
!1073 = !DILocalVariable(name: "status", scope: !1068, file: !3, line: 197, type: !18)
!1074 = !DILocalVariable(name: "obj_desc", scope: !1068, file: !3, line: 198, type: !43)
!1075 = !DILocalVariable(name: "new_desc", scope: !1068, file: !3, line: 199, type: !43)
!1076 = !DILocalVariable(name: "value", scope: !1068, file: !3, line: 200, type: !33)
!1077 = !DILocalVariable(name: "i", scope: !1068, file: !3, line: 201, type: !20)
!1078 = !DILocation(line: 193, column: 58, scope: !1068)
!1079 = !DILocation(line: 194, column: 37, scope: !1068)
!1080 = !DILocation(line: 195, column: 34, scope: !1068)
!1081 = !DILocation(line: 197, column: 2, scope: !1068)
!1082 = !DILocation(line: 197, column: 14, scope: !1068)
!1083 = !DILocation(line: 198, column: 2, scope: !1068)
!1084 = !DILocation(line: 198, column: 29, scope: !1068)
!1085 = !DILocation(line: 199, column: 2, scope: !1068)
!1086 = !DILocation(line: 199, column: 29, scope: !1068)
!1087 = !DILocation(line: 200, column: 2, scope: !1068)
!1088 = !DILocation(line: 200, column: 5, scope: !1068)
!1089 = !DILocation(line: 201, column: 2, scope: !1068)
!1090 = !DILocation(line: 201, column: 6, scope: !1068)
!1091 = !DILocation(line: 209, column: 10, scope: !1068)
!1092 = !DILocation(line: 209, column: 32, scope: !1068)
!1093 = !DILocation(line: 209, column: 2, scope: !1068)
!1094 = !DILocation(line: 220, column: 16, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 209, column: 45)
!1096 = !DILocation(line: 220, column: 38, scope: !1095)
!1097 = !DILocation(line: 220, column: 14, scope: !1095)
!1098 = !DILocation(line: 220, column: 12, scope: !1095)
!1099 = !DILocation(line: 222, column: 7, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 222, column: 7)
!1101 = !DILocation(line: 222, column: 27, scope: !1100)
!1102 = !DILocation(line: 222, column: 32, scope: !1100)
!1103 = !DILocation(line: 222, column: 61, scope: !1100)
!1104 = !DILocation(line: 223, column: 7, scope: !1100)
!1105 = !DILocation(line: 223, column: 30, scope: !1100)
!1106 = !DILocation(line: 223, column: 36, scope: !1100)
!1107 = !DILocation(line: 222, column: 7, scope: !1095)
!1108 = !DILocation(line: 227, column: 26, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 223, column: 60)
!1110 = !DILocation(line: 227, column: 4, scope: !1109)
!1111 = !DILocation(line: 228, column: 15, scope: !1109)
!1112 = !DILocation(line: 228, column: 13, scope: !1109)
!1113 = !DILocation(line: 229, column: 3, scope: !1109)
!1114 = !DILocation(line: 233, column: 40, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 229, column: 10)
!1116 = !DILocation(line: 235, column: 12, scope: !1115)
!1117 = !DILocation(line: 233, column: 8, scope: !1115)
!1118 = !DILocation(line: 232, column: 11, scope: !1115)
!1119 = !DILocation(line: 236, column: 8, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 236, column: 8)
!1121 = !DILocation(line: 236, column: 8, scope: !1115)
!1122 = !DILocation(line: 237, column: 5, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 236, column: 30)
!1124 = !DILocation(line: 241, column: 7, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 241, column: 7)
!1126 = !DILocation(line: 241, column: 7, scope: !1095)
!1127 = !DILocation(line: 245, column: 11, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 245, column: 4)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 241, column: 17)
!1130 = !DILocation(line: 245, column: 9, scope: !1128)
!1131 = !DILocation(line: 245, column: 16, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 245, column: 4)
!1133 = !DILocation(line: 246, column: 7, scope: !1132)
!1134 = !DILocation(line: 246, column: 29, scope: !1132)
!1135 = !DILocation(line: 247, column: 9, scope: !1132)
!1136 = !DILocation(line: 245, column: 20, scope: !1132)
!1137 = !DILocation(line: 245, column: 18, scope: !1132)
!1138 = !DILocation(line: 245, column: 4, scope: !1128)
!1139 = !DILocation(line: 248, column: 30, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 247, column: 31)
!1141 = !DILocation(line: 248, column: 5, scope: !1140)
!1142 = !DILocation(line: 249, column: 4, scope: !1140)
!1143 = !DILocation(line: 247, column: 27, scope: !1132)
!1144 = !DILocation(line: 245, column: 4, scope: !1132)
!1145 = distinct !{!1145, !1138, !1146, !1147, !1148}
!1146 = !DILocation(line: 249, column: 4, scope: !1128)
!1147 = !{!"llvm.loop.mustprogress"}
!1148 = !{!"llvm.loop.unroll.disable"}
!1149 = !DILocation(line: 250, column: 3, scope: !1129)
!1150 = !DILocation(line: 252, column: 36, scope: !1095)
!1151 = !DILocation(line: 252, column: 5, scope: !1095)
!1152 = !DILocation(line: 252, column: 27, scope: !1095)
!1153 = !DILocation(line: 252, column: 34, scope: !1095)
!1154 = !DILocation(line: 256, column: 10, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 256, column: 3)
!1156 = !DILocation(line: 256, column: 8, scope: !1155)
!1157 = !DILocation(line: 256, column: 15, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 256, column: 3)
!1159 = !DILocation(line: 257, column: 6, scope: !1158)
!1160 = !DILocation(line: 257, column: 28, scope: !1158)
!1161 = !DILocation(line: 258, column: 8, scope: !1158)
!1162 = !DILocation(line: 256, column: 19, scope: !1158)
!1163 = !DILocation(line: 256, column: 17, scope: !1158)
!1164 = !DILocation(line: 256, column: 3, scope: !1155)
!1165 = !DILocation(line: 259, column: 26, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 258, column: 30)
!1167 = !DILocation(line: 259, column: 4, scope: !1166)
!1168 = !DILocation(line: 260, column: 3, scope: !1166)
!1169 = !DILocation(line: 258, column: 26, scope: !1158)
!1170 = !DILocation(line: 256, column: 3, scope: !1158)
!1171 = distinct !{!1171, !1164, !1172, !1147, !1148}
!1172 = !DILocation(line: 260, column: 3, scope: !1155)
!1173 = !DILocation(line: 262, column: 3, scope: !1095)
!1174 = !DILocation(line: 279, column: 14, scope: !1095)
!1175 = !DILocation(line: 279, column: 36, scope: !1095)
!1176 = !DILocation(line: 279, column: 12, scope: !1095)
!1177 = !DILocation(line: 280, column: 8, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 280, column: 7)
!1179 = !DILocation(line: 280, column: 25, scope: !1178)
!1180 = !DILocation(line: 280, column: 30, scope: !1178)
!1181 = !DILocation(line: 280, column: 51, scope: !1178)
!1182 = !DILocation(line: 281, column: 8, scope: !1178)
!1183 = !DILocation(line: 281, column: 25, scope: !1178)
!1184 = !DILocation(line: 281, column: 30, scope: !1178)
!1185 = !DILocation(line: 280, column: 7, scope: !1095)
!1186 = !DILocation(line: 282, column: 4, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 281, column: 52)
!1188 = !DILocation(line: 289, column: 11, scope: !1095)
!1189 = !DILocation(line: 289, column: 31, scope: !1095)
!1190 = !DILocation(line: 289, column: 3, scope: !1095)
!1191 = !DILocation(line: 294, column: 18, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 289, column: 37)
!1193 = !DILocation(line: 294, column: 39, scope: !1192)
!1194 = !DILocation(line: 294, column: 12, scope: !1192)
!1195 = !DILocation(line: 294, column: 10, scope: !1192)
!1196 = !DILocation(line: 295, column: 4, scope: !1192)
!1197 = !DILocation(line: 302, column: 12, scope: !1192)
!1198 = !DILocation(line: 302, column: 32, scope: !1192)
!1199 = !DILocation(line: 302, column: 10, scope: !1192)
!1200 = !DILocation(line: 303, column: 4, scope: !1192)
!1201 = !DILocation(line: 309, column: 4, scope: !1192)
!1202 = !DILocation(line: 312, column: 4, scope: !1192)
!1203 = !DILocation(line: 317, column: 59, scope: !1095)
!1204 = !DILocation(line: 317, column: 3, scope: !1095)
!1205 = !DILocation(line: 317, column: 20, scope: !1095)
!1206 = !DILocation(line: 317, column: 28, scope: !1095)
!1207 = !DILocation(line: 317, column: 50, scope: !1095)
!1208 = !DILocation(line: 317, column: 57, scope: !1095)
!1209 = !DILocation(line: 318, column: 3, scope: !1095)
!1210 = !DILocation(line: 321, column: 3, scope: !1095)
!1211 = !DILocation(line: 323, column: 10, scope: !1095)
!1212 = !DILocation(line: 324, column: 3, scope: !1095)
!1213 = !DILocation(line: 327, column: 2, scope: !1068)
!1214 = !DILocation(line: 328, column: 1, scope: !1068)
!1215 = !DISubprogram(name: "acpi_ds_store_object_to_local", scope: !1216, file: !1216, line: 133, type: !1217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1216 = !DIFile(filename: "drivers/acpi/acpica/acdispat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e70935523931759dfe4d22f44e6111a6")
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!18, !33, !20, !43, !160}
!1219 = !DISubprogram(name: "acpi_ex_do_debug_object", scope: !1220, file: !1220, line: 98, type: !1221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1220 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1221 = !DISubroutineType(types: !1222)
!1222 = !{null, !43, !20, !20}
!1223 = !DISubprogram(name: "acpi_ns_get_type", scope: !1224, file: !1224, line: 379, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1224 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!951, !93}
!1227 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1224, file: !1224, line: 298, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!43, !93}
!1230 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !1065, file: !1065, line: 225, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!938, !951}
!1233 = !DISubprogram(name: "acpi_ex_resolve_object", scope: !1220, file: !1220, line: 421, type: !1234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!18, !125, !951, !160}
!1236 = distinct !DISubprogram(name: "acpi_ex_store_direct_to_node", scope: !3, file: !3, line: 560, type: !1237, scopeLine: 563, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1239)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!18, !43, !93, !160}
!1239 = !{!1240, !1241, !1242, !1243, !1244}
!1240 = !DILocalVariable(name: "source_desc", arg: 1, scope: !1236, file: !3, line: 560, type: !43)
!1241 = !DILocalVariable(name: "node", arg: 2, scope: !1236, file: !3, line: 561, type: !93)
!1242 = !DILocalVariable(name: "walk_state", arg: 3, scope: !1236, file: !3, line: 562, type: !160)
!1243 = !DILocalVariable(name: "status", scope: !1236, file: !3, line: 564, type: !18)
!1244 = !DILocalVariable(name: "new_desc", scope: !1236, file: !3, line: 565, type: !43)
!1245 = !DILocation(line: 560, column: 57, scope: !1236)
!1246 = !DILocation(line: 561, column: 37, scope: !1236)
!1247 = !DILocation(line: 562, column: 33, scope: !1236)
!1248 = !DILocation(line: 564, column: 2, scope: !1236)
!1249 = !DILocation(line: 564, column: 14, scope: !1236)
!1250 = !DILocation(line: 565, column: 2, scope: !1236)
!1251 = !DILocation(line: 565, column: 29, scope: !1236)
!1252 = !DILocation(line: 579, column: 38, scope: !1236)
!1253 = !DILocation(line: 579, column: 62, scope: !1236)
!1254 = !DILocation(line: 579, column: 6, scope: !1236)
!1255 = !DILocation(line: 578, column: 9, scope: !1236)
!1256 = !DILocation(line: 580, column: 6, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 580, column: 6)
!1258 = !DILocation(line: 580, column: 6, scope: !1236)
!1259 = !DILocation(line: 581, column: 3, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 580, column: 28)
!1261 = !DILocation(line: 586, column: 33, scope: !1236)
!1262 = !DILocation(line: 586, column: 39, scope: !1236)
!1263 = !DILocation(line: 586, column: 49, scope: !1236)
!1264 = !DILocation(line: 586, column: 66, scope: !1236)
!1265 = !DILocation(line: 586, column: 11, scope: !1236)
!1266 = !DILocation(line: 586, column: 9, scope: !1236)
!1267 = !DILocation(line: 587, column: 27, scope: !1236)
!1268 = !DILocation(line: 587, column: 2, scope: !1236)
!1269 = !DILocation(line: 588, column: 2, scope: !1236)
!1270 = !DILocation(line: 589, column: 1, scope: !1236)
!1271 = !DISubprogram(name: "acpi_ex_store_object_to_object", scope: !1220, file: !1220, line: 426, type: !1272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!18, !43, !43, !125, !160}
!1274 = !DISubprogram(name: "acpi_ns_attach_object", scope: !1224, file: !1224, line: 295, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!18, !93, !43, !951}
!1277 = !DISubprogram(name: "acpi_ex_write_data_to_field", scope: !1220, file: !1220, line: 156, type: !1278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!18, !43, !43, !125}
!1280 = !DISubprogram(name: "acpi_ut_add_reference", scope: !1065, file: !1065, line: 367, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !43}
!1283 = !DISubprogram(name: "acpi_ut_copy_iobject_to_iobject", scope: !1065, file: !1065, line: 281, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!18, !43, !125, !160}
!1286 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1065, file: !1065, line: 369, type: !1281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
