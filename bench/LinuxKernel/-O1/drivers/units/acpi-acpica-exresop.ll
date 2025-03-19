; ModuleID = 'drivers/acpi/acpica/exresop.c'
source_filename = "drivers/acpi/acpica/exresop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_opcode_info = type { i32, i32, i16, i8, i8, i8 }
%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }

@_acpi_module_name = internal constant [8 x i8] c"exresop\00", align 1, !dbg !0
@.str = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1, !dbg !805
@.str.1 = private unnamed_addr constant [23 x i8] c"Null stack entry at %p\00", align 1, !dbg !810
@.str.2 = private unnamed_addr constant [31 x i8] c"Bad operand object type [0x%X]\00", align 1, !dbg !815
@.str.3 = private unnamed_addr constant [38 x i8] c"Unknown Reference Class 0x%2.2X in %p\00", align 1, !dbg !820
@.str.4 = private unnamed_addr constant [27 x i8] c"Invalid descriptor %p [%s]\00", align 1, !dbg !825
@.str.5 = private unnamed_addr constant [46 x i8] c"Needed [Integer/String/Buffer], found [%s] %p\00", align 1, !dbg !830
@.str.6 = private unnamed_addr constant [56 x i8] c"Needed [Buffer/String/Package/Reference], found [%s] %p\00", align 1, !dbg !835
@.str.7 = private unnamed_addr constant [46 x i8] c"Needed [Buffer/String/Package], found [%s] %p\00", align 1, !dbg !840
@.str.8 = private unnamed_addr constant [38 x i8] c"Needed [Region/Buffer], found [%s] %p\00", align 1, !dbg !842
@acpi_gbl_enable_interpreter_slack = external dso_local global i8, align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"Needed Integer/Buffer/String/Package/Ref/Ddb], found [%s] %p\00", align 1, !dbg !844
@.str.10 = private unnamed_addr constant [53 x i8] c"Internal - Unknown ARGI (required operand) type 0x%X\00", align 1, !dbg !849
@.str.11 = private unnamed_addr constant [32 x i8] c"Needed type [%s], found [%s] %p\00", align 1, !dbg !854

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ex_resolve_operands(i16 noundef zeroext %opcode, ptr noundef %stack_ptr, ptr noundef %walk_state) #0 align 16 !dbg !870 {
entry:
  %retval = alloca i32, align 4
  %opcode.addr = alloca i16, align 2
  %stack_ptr.addr = alloca ptr, align 8
  %walk_state.addr = alloca ptr, align 8
  %obj_desc = alloca ptr, align 8
  %status = alloca i32, align 4
  %object_type = alloca i8, align 1
  %arg_types = alloca i32, align 4
  %op_info = alloca ptr, align 8
  %this_arg_type = alloca i32, align 4
  %type_needed = alloca i32, align 4
  %target_op = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store i16 %opcode, ptr %opcode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !874, metadata !DIExpression()), !dbg !888
  store ptr %stack_ptr, ptr %stack_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stack_ptr.addr, metadata !875, metadata !DIExpression()), !dbg !889
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !876, metadata !DIExpression()), !dbg !890
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_desc) #4, !dbg !891
  call void @llvm.dbg.declare(metadata ptr %obj_desc, metadata !877, metadata !DIExpression()), !dbg !892
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #4, !dbg !893
  call void @llvm.dbg.declare(metadata ptr %status, metadata !878, metadata !DIExpression()), !dbg !894
  store i32 0, ptr %status, align 4, !dbg !894
  call void @llvm.lifetime.start.p0(i64 1, ptr %object_type) #4, !dbg !895
  call void @llvm.dbg.declare(metadata ptr %object_type, metadata !879, metadata !DIExpression()), !dbg !896
  call void @llvm.lifetime.start.p0(i64 4, ptr %arg_types) #4, !dbg !897
  call void @llvm.dbg.declare(metadata ptr %arg_types, metadata !880, metadata !DIExpression()), !dbg !898
  call void @llvm.lifetime.start.p0(i64 8, ptr %op_info) #4, !dbg !899
  call void @llvm.dbg.declare(metadata ptr %op_info, metadata !881, metadata !DIExpression()), !dbg !900
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_arg_type) #4, !dbg !901
  call void @llvm.dbg.declare(metadata ptr %this_arg_type, metadata !882, metadata !DIExpression()), !dbg !902
  call void @llvm.lifetime.start.p0(i64 4, ptr %type_needed) #4, !dbg !903
  call void @llvm.dbg.declare(metadata ptr %type_needed, metadata !883, metadata !DIExpression()), !dbg !904
  call void @llvm.lifetime.start.p0(i64 2, ptr %target_op) #4, !dbg !905
  call void @llvm.dbg.declare(metadata ptr %target_op, metadata !885, metadata !DIExpression()), !dbg !906
  store i16 0, ptr %target_op, align 2, !dbg !906
  %0 = load i16, ptr %opcode.addr, align 2, !dbg !907
  %call = call ptr @acpi_ps_get_opcode_info(i16 noundef zeroext %0) #5, !dbg !908
  store ptr %call, ptr %op_info, align 8, !dbg !909
  %1 = load ptr, ptr %op_info, align 8, !dbg !910
  %class = getelementptr inbounds %struct.acpi_opcode_info, ptr %1, i32 0, i32 4, !dbg !912
  %2 = load i8, ptr %class, align 1, !dbg !912
  %conv = zext i8 %2 to i32, !dbg !910
  %cmp = icmp eq i32 %conv, 10, !dbg !913
  br i1 %cmp, label %if.then, label %if.end, !dbg !914

if.then:                                          ; preds = %entry
  store i32 12289, ptr %retval, align 4, !dbg !915
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !915

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %op_info, align 8, !dbg !917
  %runtime_args = getelementptr inbounds %struct.acpi_opcode_info, ptr %3, i32 0, i32 1, !dbg !918
  %4 = load i32, ptr %runtime_args, align 4, !dbg !918
  store i32 %4, ptr %arg_types, align 4, !dbg !919
  %5 = load i32, ptr %arg_types, align 4, !dbg !920
  %cmp2 = icmp eq i32 %5, -1, !dbg !922
  br i1 %cmp2, label %if.then4, label %if.end6, !dbg !923

if.then4:                                         ; preds = %if.end
  %6 = load i16, ptr %opcode.addr, align 2, !dbg !924
  %conv5 = zext i16 %6 to i32, !dbg !924
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 121, ptr noundef @.str, i32 noundef %conv5) #5, !dbg !924
  store i32 12303, ptr %retval, align 4, !dbg !926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !926

if.end6:                                          ; preds = %if.end
  br label %while.cond, !dbg !927

while.cond:                                       ; preds = %if.end204, %if.end6
  %7 = load i32, ptr %arg_types, align 4, !dbg !928
  %and = and i32 %7, 31, !dbg !928
  %tobool = icmp ne i32 %and, 0, !dbg !927
  br i1 %tobool, label %while.body, label %while.end, !dbg !927

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !929
  %tobool7 = icmp ne ptr %8, null, !dbg !929
  br i1 %tobool7, label %lor.lhs.false, label %if.then9, !dbg !931

lor.lhs.false:                                    ; preds = %while.body
  %9 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !932
  %10 = load ptr, ptr %9, align 8, !dbg !933
  %tobool8 = icmp ne ptr %10, null, !dbg !933
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !934

if.then9:                                         ; preds = %lor.lhs.false, %while.body
  %11 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !935
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 139, ptr noundef @.str.1, ptr noundef %11) #5, !dbg !935
  store i32 12303, ptr %retval, align 4, !dbg !937
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !937

if.end10:                                         ; preds = %lor.lhs.false
  %12 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !938
  %13 = load ptr, ptr %12, align 8, !dbg !939
  store ptr %13, ptr %obj_desc, align 8, !dbg !940
  %14 = load ptr, ptr %obj_desc, align 8, !dbg !941
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %14, i32 0, i32 1, !dbg !941
  %15 = load i8, ptr %descriptor_type, align 8, !dbg !941
  %conv11 = zext i8 %15 to i32, !dbg !941
  switch i32 %conv11, label %sw.default38 [
    i32 15, label %sw.bb
    i32 14, label %sw.bb19
  ], !dbg !942

sw.bb:                                            ; preds = %if.end10
  %16 = load ptr, ptr %obj_desc, align 8, !dbg !943
  %type = getelementptr inbounds %struct.acpi_namespace_node, ptr %16, i32 0, i32 2, !dbg !945
  %17 = load i8, ptr %type, align 1, !dbg !945
  store i8 %17, ptr %object_type, align 1, !dbg !946
  %18 = load i8, ptr %object_type, align 1, !dbg !947
  %conv12 = zext i8 %18 to i32, !dbg !947
  %cmp13 = icmp eq i32 %conv12, 21, !dbg !949
  br i1 %cmp13, label %if.then15, label %if.end18, !dbg !950

if.then15:                                        ; preds = %sw.bb
  %19 = load ptr, ptr %obj_desc, align 8, !dbg !951
  %call16 = call ptr @acpi_ns_get_attached_object(ptr noundef %19) #5, !dbg !953
  store ptr %call16, ptr %obj_desc, align 8, !dbg !954
  %20 = load ptr, ptr %obj_desc, align 8, !dbg !955
  %21 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !956
  store ptr %20, ptr %21, align 8, !dbg !957
  %22 = load ptr, ptr %obj_desc, align 8, !dbg !958
  %type17 = getelementptr inbounds %struct.acpi_namespace_node, ptr %22, i32 0, i32 2, !dbg !959
  %23 = load i8, ptr %type17, align 1, !dbg !959
  store i8 %23, ptr %object_type, align 1, !dbg !960
  br label %if.end18, !dbg !961

if.end18:                                         ; preds = %if.then15, %sw.bb
  br label %sw.epilog40, !dbg !962

sw.bb19:                                          ; preds = %if.end10
  %24 = load ptr, ptr %obj_desc, align 8, !dbg !963
  %type20 = getelementptr inbounds %struct.acpi_object_common, ptr %24, i32 0, i32 2, !dbg !964
  %25 = load i8, ptr %type20, align 1, !dbg !964
  store i8 %25, ptr %object_type, align 1, !dbg !965
  %26 = load i8, ptr %object_type, align 1, !dbg !966
  %conv21 = zext i8 %26 to i32, !dbg !966
  %call22 = call zeroext i8 @acpi_ut_valid_object_type(i32 noundef %conv21) #5, !dbg !968
  %tobool23 = icmp ne i8 %call22, 0, !dbg !968
  br i1 %tobool23, label %if.end26, label %if.then24, !dbg !969

if.then24:                                        ; preds = %sw.bb19
  %27 = load i8, ptr %object_type, align 1, !dbg !970
  %conv25 = zext i8 %27 to i32, !dbg !970
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 185, ptr noundef @.str.2, i32 noundef %conv25) #5, !dbg !970
  store i32 12291, ptr %retval, align 4, !dbg !972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !972

if.end26:                                         ; preds = %sw.bb19
  %28 = load i8, ptr %object_type, align 1, !dbg !973
  %conv27 = zext i8 %28 to i32, !dbg !973
  %cmp28 = icmp eq i32 %conv27, 20, !dbg !975
  br i1 %cmp28, label %if.then30, label %if.end37, !dbg !976

if.then30:                                        ; preds = %if.end26
  %29 = load ptr, ptr %obj_desc, align 8, !dbg !977
  %class31 = getelementptr inbounds %struct.acpi_object_reference, ptr %29, i32 0, i32 5, !dbg !979
  %30 = load i8, ptr %class31, align 1, !dbg !979
  %conv32 = zext i8 %30 to i32, !dbg !977
  switch i32 %conv32, label %sw.default [
    i32 6, label %sw.bb33
    i32 1, label %sw.bb34
    i32 0, label %sw.bb34
    i32 3, label %sw.bb34
    i32 2, label %sw.bb34
    i32 4, label %sw.bb34
    i32 5, label %sw.bb34
  ], !dbg !980

sw.bb33:                                          ; preds = %if.then30
  store i16 23345, ptr %target_op, align 2, !dbg !981
  br label %sw.bb34, !dbg !983

sw.bb34:                                          ; preds = %if.then30, %if.then30, %if.then30, %if.then30, %if.then30, %if.then30, %sw.bb33
  br label %sw.epilog, !dbg !984

sw.default:                                       ; preds = %if.then30
  %31 = load ptr, ptr %obj_desc, align 8, !dbg !985
  %class35 = getelementptr inbounds %struct.acpi_object_reference, ptr %31, i32 0, i32 5, !dbg !985
  %32 = load i8, ptr %class35, align 1, !dbg !985
  %conv36 = zext i8 %32 to i32, !dbg !985
  %33 = load ptr, ptr %obj_desc, align 8, !dbg !985
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 220, ptr noundef @.str.3, i32 noundef %conv36, ptr noundef %33) #5, !dbg !985
  store i32 12291, ptr %retval, align 4, !dbg !986
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !986

sw.epilog:                                        ; preds = %sw.bb34
  br label %if.end37, !dbg !987

if.end37:                                         ; preds = %sw.epilog, %if.end26
  br label %sw.epilog40, !dbg !988

sw.default38:                                     ; preds = %if.end10
  %34 = load ptr, ptr %obj_desc, align 8, !dbg !989
  %35 = load ptr, ptr %obj_desc, align 8, !dbg !989
  %call39 = call ptr @acpi_ut_get_descriptor_name(ptr noundef %35) #5, !dbg !989
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 234, ptr noundef @.str.4, ptr noundef %34, ptr noundef %call39) #5, !dbg !989
  store i32 12291, ptr %retval, align 4, !dbg !990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !990

sw.epilog40:                                      ; preds = %if.end37, %if.end18
  %36 = load i32, ptr %arg_types, align 4, !dbg !991
  %and41 = and i32 %36, 31, !dbg !991
  store i32 %and41, ptr %this_arg_type, align 4, !dbg !992
  %37 = load i32, ptr %arg_types, align 4, !dbg !993
  %shr = lshr i32 %37, 5, !dbg !993
  store i32 %shr, ptr %arg_types, align 4, !dbg !993
  %38 = load i32, ptr %this_arg_type, align 4, !dbg !994
  switch i32 %38, label %sw.default81 [
    i32 21, label %sw.bb42
    i32 14, label %sw.bb53
    i32 11, label %sw.bb53
    i32 12, label %sw.bb53
    i32 13, label %sw.bb53
    i32 15, label %sw.bb53
    i32 16, label %sw.bb53
    i32 17, label %sw.bb53
    i32 18, label %sw.bb53
    i32 23, label %sw.bb65
  ], !dbg !995

sw.bb42:                                          ; preds = %sw.epilog40
  %39 = load ptr, ptr %obj_desc, align 8, !dbg !996
  %descriptor_type43 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %39, i32 0, i32 1, !dbg !996
  %40 = load i8, ptr %descriptor_type43, align 8, !dbg !996
  %conv44 = zext i8 %40 to i32, !dbg !996
  %cmp45 = icmp eq i32 %conv44, 14, !dbg !999
  br i1 %cmp45, label %land.lhs.true, label %if.end52, !dbg !1000

land.lhs.true:                                    ; preds = %sw.bb42
  %41 = load ptr, ptr %obj_desc, align 8, !dbg !1001
  %type47 = getelementptr inbounds %struct.acpi_object_common, ptr %41, i32 0, i32 2, !dbg !1002
  %42 = load i8, ptr %type47, align 1, !dbg !1002
  %conv48 = zext i8 %42 to i32, !dbg !1001
  %cmp49 = icmp eq i32 %conv48, 2, !dbg !1003
  br i1 %cmp49, label %if.then51, label %if.end52, !dbg !1004

if.then51:                                        ; preds = %land.lhs.true
  br label %next_operand, !dbg !1005

if.end52:                                         ; preds = %land.lhs.true, %sw.bb42
  br label %sw.bb53, !dbg !1007

sw.bb53:                                          ; preds = %sw.epilog40, %sw.epilog40, %sw.epilog40, %sw.epilog40, %sw.epilog40, %sw.epilog40, %sw.epilog40, %sw.epilog40, %if.end52
  %43 = load ptr, ptr %obj_desc, align 8, !dbg !1008
  %descriptor_type54 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %43, i32 0, i32 1, !dbg !1008
  %44 = load i8, ptr %descriptor_type54, align 8, !dbg !1008
  %conv55 = zext i8 %44 to i32, !dbg !1008
  %cmp56 = icmp eq i32 %conv55, 15, !dbg !1010
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !1011

if.then58:                                        ; preds = %sw.bb53
  br label %next_operand, !dbg !1012

if.end59:                                         ; preds = %sw.bb53
  %45 = load i8, ptr %object_type, align 1, !dbg !1014
  %conv60 = zext i8 %45 to i32, !dbg !1014
  %46 = load ptr, ptr %obj_desc, align 8, !dbg !1015
  %call61 = call i32 @acpi_ex_check_object_type(i32 noundef 20, i32 noundef %conv60, ptr noundef %46) #5, !dbg !1016
  store i32 %call61, ptr %status, align 4, !dbg !1017
  %47 = load i32, ptr %status, align 4, !dbg !1018
  %tobool62 = icmp ne i32 %47, 0, !dbg !1018
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !1020

if.then63:                                        ; preds = %if.end59
  %48 = load i32, ptr %status, align 4, !dbg !1021
  store i32 %48, ptr %retval, align 4, !dbg !1021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1021

if.end64:                                         ; preds = %if.end59
  br label %next_operand, !dbg !1023

sw.bb65:                                          ; preds = %sw.epilog40
  %49 = load i16, ptr %opcode.addr, align 2, !dbg !1024
  %conv66 = zext i16 %49 to i32, !dbg !1024
  %cmp67 = icmp eq i32 %conv66, 112, !dbg !1026
  br i1 %cmp67, label %land.lhs.true69, label %if.end80, !dbg !1027

land.lhs.true69:                                  ; preds = %sw.bb65
  %50 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1028
  %51 = load ptr, ptr %50, align 8, !dbg !1029
  %type70 = getelementptr inbounds %struct.acpi_object_common, ptr %51, i32 0, i32 2, !dbg !1030
  %52 = load i8, ptr %type70, align 1, !dbg !1030
  %conv71 = zext i8 %52 to i32, !dbg !1031
  %cmp72 = icmp eq i32 %conv71, 20, !dbg !1032
  br i1 %cmp72, label %land.lhs.true74, label %if.end80, !dbg !1033

land.lhs.true74:                                  ; preds = %land.lhs.true69
  %53 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1034
  %54 = load ptr, ptr %53, align 8, !dbg !1035
  %class75 = getelementptr inbounds %struct.acpi_object_reference, ptr %54, i32 0, i32 5, !dbg !1036
  %55 = load i8, ptr %class75, align 1, !dbg !1036
  %conv76 = zext i8 %55 to i32, !dbg !1037
  %cmp77 = icmp eq i32 %conv76, 3, !dbg !1038
  br i1 %cmp77, label %if.then79, label %if.end80, !dbg !1039

if.then79:                                        ; preds = %land.lhs.true74
  br label %next_operand, !dbg !1040

if.end80:                                         ; preds = %land.lhs.true74, %land.lhs.true69, %sw.bb65
  br label %sw.epilog82, !dbg !1042

sw.default81:                                     ; preds = %sw.epilog40
  br label %sw.epilog82, !dbg !1043

sw.epilog82:                                      ; preds = %sw.default81, %if.end80
  %56 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1044
  %57 = load ptr, ptr %walk_state.addr, align 8, !dbg !1045
  %call83 = call i32 @acpi_ex_resolve_to_value(ptr noundef %56, ptr noundef %57) #5, !dbg !1046
  store i32 %call83, ptr %status, align 4, !dbg !1047
  %58 = load i32, ptr %status, align 4, !dbg !1048
  %tobool84 = icmp ne i32 %58, 0, !dbg !1048
  br i1 %tobool84, label %if.then85, label %if.end86, !dbg !1050

if.then85:                                        ; preds = %sw.epilog82
  %59 = load i32, ptr %status, align 4, !dbg !1051
  store i32 %59, ptr %retval, align 4, !dbg !1051
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1051

if.end86:                                         ; preds = %sw.epilog82
  %60 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1053
  %61 = load ptr, ptr %60, align 8, !dbg !1054
  store ptr %61, ptr %obj_desc, align 8, !dbg !1055
  %62 = load i32, ptr %this_arg_type, align 4, !dbg !1056
  switch i32 %62, label %sw.default193 [
    i32 4, label %sw.bb87
    i32 3, label %sw.bb88
    i32 2, label %sw.bb89
    i32 1, label %sw.bb90
    i32 5, label %sw.bb91
    i32 6, label %sw.bb92
    i32 8, label %sw.bb106
    i32 7, label %sw.bb120
    i32 10, label %sw.bb134
    i32 9, label %sw.bb141
    i32 19, label %sw.bb157
    i32 20, label %sw.bb164
    i32 22, label %sw.bb171
    i32 23, label %sw.bb178
  ], !dbg !1057

sw.bb87:                                          ; preds = %if.end86
  store i32 9, ptr %type_needed, align 4, !dbg !1058
  br label %sw.epilog194, !dbg !1060

sw.bb88:                                          ; preds = %if.end86
  store i32 7, ptr %type_needed, align 4, !dbg !1061
  br label %sw.epilog194, !dbg !1062

sw.bb89:                                          ; preds = %if.end86
  store i32 4, ptr %type_needed, align 4, !dbg !1063
  br label %sw.epilog194, !dbg !1064

sw.bb90:                                          ; preds = %if.end86
  store i32 0, ptr %type_needed, align 4, !dbg !1065
  br label %sw.epilog194, !dbg !1066

sw.bb91:                                          ; preds = %if.end86
  store i32 20, ptr %type_needed, align 4, !dbg !1067
  br label %sw.epilog194, !dbg !1068

sw.bb92:                                          ; preds = %if.end86
  %63 = load ptr, ptr %obj_desc, align 8, !dbg !1069
  %64 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1070
  %call93 = call i32 @acpi_ex_convert_to_integer(ptr noundef %63, ptr noundef %64, i32 noundef 1) #5, !dbg !1071
  store i32 %call93, ptr %status, align 4, !dbg !1072
  %65 = load i32, ptr %status, align 4, !dbg !1073
  %tobool94 = icmp ne i32 %65, 0, !dbg !1073
  br i1 %tobool94, label %if.then95, label %if.end101, !dbg !1075

if.then95:                                        ; preds = %sw.bb92
  %66 = load i32, ptr %status, align 4, !dbg !1076
  %cmp96 = icmp eq i32 %66, 8, !dbg !1079
  br i1 %cmp96, label %if.then98, label %if.end100, !dbg !1080

if.then98:                                        ; preds = %if.then95
  %67 = load ptr, ptr %obj_desc, align 8, !dbg !1081
  %call99 = call ptr @acpi_ut_get_object_type_name(ptr noundef %67) #5, !dbg !1081
  %68 = load ptr, ptr %obj_desc, align 8, !dbg !1081
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 388, ptr noundef @.str.5, ptr noundef %call99, ptr noundef %68) #5, !dbg !1081
  store i32 12291, ptr %retval, align 4, !dbg !1083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1083

if.end100:                                        ; preds = %if.then95
  %69 = load i32, ptr %status, align 4, !dbg !1084
  store i32 %69, ptr %retval, align 4, !dbg !1084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1084

if.end101:                                        ; preds = %sw.bb92
  %70 = load ptr, ptr %obj_desc, align 8, !dbg !1085
  %71 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1087
  %72 = load ptr, ptr %71, align 8, !dbg !1088
  %cmp102 = icmp ne ptr %70, %72, !dbg !1089
  br i1 %cmp102, label %if.then104, label %if.end105, !dbg !1090

if.then104:                                       ; preds = %if.end101
  %73 = load ptr, ptr %obj_desc, align 8, !dbg !1091
  call void @acpi_ut_remove_reference(ptr noundef %73) #5, !dbg !1093
  br label %if.end105, !dbg !1094

if.end105:                                        ; preds = %if.then104, %if.end101
  br label %next_operand, !dbg !1095

sw.bb106:                                         ; preds = %if.end86
  %74 = load ptr, ptr %obj_desc, align 8, !dbg !1096
  %75 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1097
  %call107 = call i32 @acpi_ex_convert_to_buffer(ptr noundef %74, ptr noundef %75) #5, !dbg !1098
  store i32 %call107, ptr %status, align 4, !dbg !1099
  %76 = load i32, ptr %status, align 4, !dbg !1100
  %tobool108 = icmp ne i32 %76, 0, !dbg !1100
  br i1 %tobool108, label %if.then109, label %if.end115, !dbg !1102

if.then109:                                       ; preds = %sw.bb106
  %77 = load i32, ptr %status, align 4, !dbg !1103
  %cmp110 = icmp eq i32 %77, 8, !dbg !1106
  br i1 %cmp110, label %if.then112, label %if.end114, !dbg !1107

if.then112:                                       ; preds = %if.then109
  %78 = load ptr, ptr %obj_desc, align 8, !dbg !1108
  %call113 = call ptr @acpi_ut_get_object_type_name(ptr noundef %78) #5, !dbg !1108
  %79 = load ptr, ptr %obj_desc, align 8, !dbg !1108
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 413, ptr noundef @.str.5, ptr noundef %call113, ptr noundef %79) #5, !dbg !1108
  store i32 12291, ptr %retval, align 4, !dbg !1110
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1110

if.end114:                                        ; preds = %if.then109
  %80 = load i32, ptr %status, align 4, !dbg !1111
  store i32 %80, ptr %retval, align 4, !dbg !1111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1111

if.end115:                                        ; preds = %sw.bb106
  %81 = load ptr, ptr %obj_desc, align 8, !dbg !1112
  %82 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1114
  %83 = load ptr, ptr %82, align 8, !dbg !1115
  %cmp116 = icmp ne ptr %81, %83, !dbg !1116
  br i1 %cmp116, label %if.then118, label %if.end119, !dbg !1117

if.then118:                                       ; preds = %if.end115
  %84 = load ptr, ptr %obj_desc, align 8, !dbg !1118
  call void @acpi_ut_remove_reference(ptr noundef %84) #5, !dbg !1120
  br label %if.end119, !dbg !1121

if.end119:                                        ; preds = %if.then118, %if.end115
  br label %next_operand, !dbg !1122

sw.bb120:                                         ; preds = %if.end86
  %85 = load ptr, ptr %obj_desc, align 8, !dbg !1123
  %86 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1124
  %call121 = call i32 @acpi_ex_convert_to_string(ptr noundef %85, ptr noundef %86, i32 noundef 2) #5, !dbg !1125
  store i32 %call121, ptr %status, align 4, !dbg !1126
  %87 = load i32, ptr %status, align 4, !dbg !1127
  %tobool122 = icmp ne i32 %87, 0, !dbg !1127
  br i1 %tobool122, label %if.then123, label %if.end129, !dbg !1129

if.then123:                                       ; preds = %sw.bb120
  %88 = load i32, ptr %status, align 4, !dbg !1130
  %cmp124 = icmp eq i32 %88, 8, !dbg !1133
  br i1 %cmp124, label %if.then126, label %if.end128, !dbg !1134

if.then126:                                       ; preds = %if.then123
  %89 = load ptr, ptr %obj_desc, align 8, !dbg !1135
  %call127 = call ptr @acpi_ut_get_object_type_name(ptr noundef %89) #5, !dbg !1135
  %90 = load ptr, ptr %obj_desc, align 8, !dbg !1135
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 440, ptr noundef @.str.5, ptr noundef %call127, ptr noundef %90) #5, !dbg !1135
  store i32 12291, ptr %retval, align 4, !dbg !1137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1137

if.end128:                                        ; preds = %if.then123
  %91 = load i32, ptr %status, align 4, !dbg !1138
  store i32 %91, ptr %retval, align 4, !dbg !1138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1138

if.end129:                                        ; preds = %sw.bb120
  %92 = load ptr, ptr %obj_desc, align 8, !dbg !1139
  %93 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1141
  %94 = load ptr, ptr %93, align 8, !dbg !1142
  %cmp130 = icmp ne ptr %92, %94, !dbg !1143
  br i1 %cmp130, label %if.then132, label %if.end133, !dbg !1144

if.then132:                                       ; preds = %if.end129
  %95 = load ptr, ptr %obj_desc, align 8, !dbg !1145
  call void @acpi_ut_remove_reference(ptr noundef %95) #5, !dbg !1147
  br label %if.end133, !dbg !1148

if.end133:                                        ; preds = %if.then132, %if.end129
  br label %next_operand, !dbg !1149

sw.bb134:                                         ; preds = %if.end86
  %96 = load ptr, ptr %obj_desc, align 8, !dbg !1150
  %type135 = getelementptr inbounds %struct.acpi_object_common, ptr %96, i32 0, i32 2, !dbg !1151
  %97 = load i8, ptr %type135, align 1, !dbg !1151
  %conv136 = zext i8 %97 to i32, !dbg !1150
  switch i32 %conv136, label %sw.default138 [
    i32 1, label %sw.bb137
    i32 2, label %sw.bb137
    i32 3, label %sw.bb137
  ], !dbg !1152

sw.bb137:                                         ; preds = %sw.bb134, %sw.bb134, %sw.bb134
  br label %sw.epilog140, !dbg !1153

sw.default138:                                    ; preds = %sw.bb134
  %98 = load ptr, ptr %obj_desc, align 8, !dbg !1155
  %call139 = call ptr @acpi_ut_get_object_type_name(ptr noundef %98) #5, !dbg !1155
  %99 = load ptr, ptr %obj_desc, align 8, !dbg !1155
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 469, ptr noundef @.str.5, ptr noundef %call139, ptr noundef %99) #5, !dbg !1155
  store i32 12291, ptr %retval, align 4, !dbg !1156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1156

sw.epilog140:                                     ; preds = %sw.bb137
  br label %next_operand, !dbg !1157

sw.bb141:                                         ; preds = %if.end86
  %100 = load ptr, ptr %obj_desc, align 8, !dbg !1158
  %type142 = getelementptr inbounds %struct.acpi_object_common, ptr %100, i32 0, i32 2, !dbg !1159
  %101 = load i8, ptr %type142, align 1, !dbg !1159
  %conv143 = zext i8 %101 to i32, !dbg !1158
  switch i32 %conv143, label %sw.default154 [
    i32 2, label %sw.bb144
    i32 3, label %sw.bb144
    i32 1, label %sw.bb145
  ], !dbg !1160

sw.bb144:                                         ; preds = %sw.bb141, %sw.bb141
  br label %sw.epilog156, !dbg !1161

sw.bb145:                                         ; preds = %sw.bb141
  %102 = load ptr, ptr %obj_desc, align 8, !dbg !1163
  %103 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1164
  %call146 = call i32 @acpi_ex_convert_to_buffer(ptr noundef %102, ptr noundef %103) #5, !dbg !1165
  store i32 %call146, ptr %status, align 4, !dbg !1166
  %104 = load i32, ptr %status, align 4, !dbg !1167
  %tobool147 = icmp ne i32 %104, 0, !dbg !1167
  br i1 %tobool147, label %if.then148, label %if.end149, !dbg !1169

if.then148:                                       ; preds = %sw.bb145
  %105 = load i32, ptr %status, align 4, !dbg !1170
  store i32 %105, ptr %retval, align 4, !dbg !1170
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1170

if.end149:                                        ; preds = %sw.bb145
  %106 = load ptr, ptr %obj_desc, align 8, !dbg !1172
  %107 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1174
  %108 = load ptr, ptr %107, align 8, !dbg !1175
  %cmp150 = icmp ne ptr %106, %108, !dbg !1176
  br i1 %cmp150, label %if.then152, label %if.end153, !dbg !1177

if.then152:                                       ; preds = %if.end149
  %109 = load ptr, ptr %obj_desc, align 8, !dbg !1178
  call void @acpi_ut_remove_reference(ptr noundef %109) #5, !dbg !1180
  br label %if.end153, !dbg !1181

if.end153:                                        ; preds = %if.then152, %if.end149
  br label %sw.epilog156, !dbg !1182

sw.default154:                                    ; preds = %sw.bb141
  %110 = load ptr, ptr %obj_desc, align 8, !dbg !1183
  %call155 = call ptr @acpi_ut_get_object_type_name(ptr noundef %110) #5, !dbg !1183
  %111 = load ptr, ptr %obj_desc, align 8, !dbg !1183
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 506, ptr noundef @.str.5, ptr noundef %call155, ptr noundef %111) #5, !dbg !1183
  store i32 12291, ptr %retval, align 4, !dbg !1184
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1184

sw.epilog156:                                     ; preds = %if.end153, %sw.bb144
  br label %next_operand, !dbg !1185

sw.bb157:                                         ; preds = %if.end86
  %112 = load ptr, ptr %obj_desc, align 8, !dbg !1186
  %type158 = getelementptr inbounds %struct.acpi_object_common, ptr %112, i32 0, i32 2, !dbg !1187
  %113 = load i8, ptr %type158, align 1, !dbg !1187
  %conv159 = zext i8 %113 to i32, !dbg !1186
  switch i32 %conv159, label %sw.default161 [
    i32 4, label %sw.bb160
    i32 2, label %sw.bb160
    i32 3, label %sw.bb160
    i32 20, label %sw.bb160
  ], !dbg !1188

sw.bb160:                                         ; preds = %sw.bb157, %sw.bb157, %sw.bb157, %sw.bb157
  br label %sw.epilog163, !dbg !1189

sw.default161:                                    ; preds = %sw.bb157
  %114 = load ptr, ptr %obj_desc, align 8, !dbg !1191
  %call162 = call ptr @acpi_ut_get_object_type_name(ptr noundef %114) #5, !dbg !1191
  %115 = load ptr, ptr %obj_desc, align 8, !dbg !1191
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 534, ptr noundef @.str.6, ptr noundef %call162, ptr noundef %115) #5, !dbg !1191
  store i32 12291, ptr %retval, align 4, !dbg !1192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1192

sw.epilog163:                                     ; preds = %sw.bb160
  br label %next_operand, !dbg !1193

sw.bb164:                                         ; preds = %if.end86
  %116 = load ptr, ptr %obj_desc, align 8, !dbg !1194
  %type165 = getelementptr inbounds %struct.acpi_object_common, ptr %116, i32 0, i32 2, !dbg !1195
  %117 = load i8, ptr %type165, align 1, !dbg !1195
  %conv166 = zext i8 %117 to i32, !dbg !1194
  switch i32 %conv166, label %sw.default168 [
    i32 4, label %sw.bb167
    i32 2, label %sw.bb167
    i32 3, label %sw.bb167
  ], !dbg !1196

sw.bb167:                                         ; preds = %sw.bb164, %sw.bb164, %sw.bb164
  br label %sw.epilog170, !dbg !1197

sw.default168:                                    ; preds = %sw.bb164
  %118 = load ptr, ptr %obj_desc, align 8, !dbg !1199
  %call169 = call ptr @acpi_ut_get_object_type_name(ptr noundef %118) #5, !dbg !1199
  %119 = load ptr, ptr %obj_desc, align 8, !dbg !1199
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 557, ptr noundef @.str.7, ptr noundef %call169, ptr noundef %119) #5, !dbg !1199
  store i32 12291, ptr %retval, align 4, !dbg !1200
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1200

sw.epilog170:                                     ; preds = %sw.bb167
  br label %next_operand, !dbg !1201

sw.bb171:                                         ; preds = %if.end86
  %120 = load ptr, ptr %obj_desc, align 8, !dbg !1202
  %type172 = getelementptr inbounds %struct.acpi_object_common, ptr %120, i32 0, i32 2, !dbg !1203
  %121 = load i8, ptr %type172, align 1, !dbg !1203
  %conv173 = zext i8 %121 to i32, !dbg !1202
  switch i32 %conv173, label %sw.default175 [
    i32 3, label %sw.bb174
    i32 10, label %sw.bb174
  ], !dbg !1204

sw.bb174:                                         ; preds = %sw.bb171, %sw.bb171
  br label %sw.epilog177, !dbg !1205

sw.default175:                                    ; preds = %sw.bb171
  %122 = load ptr, ptr %obj_desc, align 8, !dbg !1207
  %call176 = call ptr @acpi_ut_get_object_type_name(ptr noundef %122) #5, !dbg !1207
  %123 = load ptr, ptr %obj_desc, align 8, !dbg !1207
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 581, ptr noundef @.str.8, ptr noundef %call176, ptr noundef %123) #5, !dbg !1207
  store i32 12291, ptr %retval, align 4, !dbg !1208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1208

sw.epilog177:                                     ; preds = %sw.bb174
  br label %next_operand, !dbg !1209

sw.bb178:                                         ; preds = %if.end86
  %124 = load ptr, ptr %obj_desc, align 8, !dbg !1210
  %type179 = getelementptr inbounds %struct.acpi_object_common, ptr %124, i32 0, i32 2, !dbg !1211
  %125 = load i8, ptr %type179, align 1, !dbg !1211
  %conv180 = zext i8 %125 to i32, !dbg !1210
  switch i32 %conv180, label %sw.default182 [
    i32 1, label %sw.bb181
    i32 4, label %sw.bb181
    i32 2, label %sw.bb181
    i32 3, label %sw.bb181
    i32 14, label %sw.bb181
    i32 20, label %sw.bb181
    i32 17, label %sw.bb181
    i32 18, label %sw.bb181
    i32 19, label %sw.bb181
    i32 15, label %sw.bb181
  ], !dbg !1212

sw.bb181:                                         ; preds = %sw.bb178, %sw.bb178, %sw.bb178, %sw.bb178, %sw.bb178, %sw.bb178, %sw.bb178, %sw.bb178, %sw.bb178, %sw.bb178
  br label %sw.epilog192, !dbg !1213

sw.default182:                                    ; preds = %sw.bb178
  %126 = load i8, ptr @acpi_gbl_enable_interpreter_slack, align 1, !dbg !1215
  %tobool183 = icmp ne i8 %126, 0, !dbg !1215
  br i1 %tobool183, label %if.then184, label %if.end185, !dbg !1217

if.then184:                                       ; preds = %sw.default182
  br label %sw.epilog192, !dbg !1218

if.end185:                                        ; preds = %sw.default182
  %127 = load i16, ptr %target_op, align 2, !dbg !1220
  %conv186 = zext i16 %127 to i32, !dbg !1220
  %cmp187 = icmp eq i32 %conv186, 23345, !dbg !1222
  br i1 %cmp187, label %if.then189, label %if.end190, !dbg !1223

if.then189:                                       ; preds = %if.end185
  br label %sw.epilog192, !dbg !1224

if.end190:                                        ; preds = %if.end185
  %128 = load ptr, ptr %obj_desc, align 8, !dbg !1226
  %call191 = call ptr @acpi_ut_get_object_type_name(ptr noundef %128) #5, !dbg !1226
  %129 = load ptr, ptr %obj_desc, align 8, !dbg !1226
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 627, ptr noundef @.str.9, ptr noundef %call191, ptr noundef %129) #5, !dbg !1226
  store i32 12291, ptr %retval, align 4, !dbg !1227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1227

sw.epilog192:                                     ; preds = %if.then189, %if.then184, %sw.bb181
  br label %next_operand, !dbg !1228

sw.default193:                                    ; preds = %if.end86
  %130 = load i32, ptr %this_arg_type, align 4, !dbg !1229
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 641, ptr noundef @.str.10, i32 noundef %130) #5, !dbg !1229
  store i32 4097, ptr %retval, align 4, !dbg !1230
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1230

sw.epilog194:                                     ; preds = %sw.bb91, %sw.bb90, %sw.bb89, %sw.bb88, %sw.bb87
  %131 = load i32, ptr %type_needed, align 4, !dbg !1231
  %132 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1232
  %133 = load ptr, ptr %132, align 8, !dbg !1233
  %type195 = getelementptr inbounds %struct.acpi_object_common, ptr %133, i32 0, i32 2, !dbg !1234
  %134 = load i8, ptr %type195, align 1, !dbg !1234
  %conv196 = zext i8 %134 to i32, !dbg !1235
  %135 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1236
  %136 = load ptr, ptr %135, align 8, !dbg !1237
  %call197 = call i32 @acpi_ex_check_object_type(i32 noundef %131, i32 noundef %conv196, ptr noundef %136) #5, !dbg !1238
  store i32 %call197, ptr %status, align 4, !dbg !1239
  %137 = load i32, ptr %status, align 4, !dbg !1240
  %tobool198 = icmp ne i32 %137, 0, !dbg !1240
  br i1 %tobool198, label %if.then199, label %if.end200, !dbg !1242

if.then199:                                       ; preds = %sw.epilog194
  %138 = load i32, ptr %status, align 4, !dbg !1243
  store i32 %138, ptr %retval, align 4, !dbg !1243
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1243

if.end200:                                        ; preds = %sw.epilog194
  br label %next_operand, !dbg !1240

next_operand:                                     ; preds = %if.end200, %sw.epilog192, %sw.epilog177, %sw.epilog170, %sw.epilog163, %sw.epilog156, %sw.epilog140, %if.end133, %if.end119, %if.end105, %if.then79, %if.end64, %if.then58, %if.then51
  call void @llvm.dbg.label(metadata !886), !dbg !1245
  %139 = load i32, ptr %arg_types, align 4, !dbg !1246
  %and201 = and i32 %139, 31, !dbg !1246
  %tobool202 = icmp ne i32 %and201, 0, !dbg !1246
  br i1 %tobool202, label %if.then203, label %if.end204, !dbg !1248

if.then203:                                       ; preds = %next_operand
  %140 = load ptr, ptr %stack_ptr.addr, align 8, !dbg !1249
  %incdec.ptr = getelementptr ptr, ptr %140, i32 -1, !dbg !1249
  store ptr %incdec.ptr, ptr %stack_ptr.addr, align 8, !dbg !1249
  br label %if.end204, !dbg !1251

if.end204:                                        ; preds = %if.then203, %next_operand
  br label %while.cond, !dbg !927, !llvm.loop !1252

while.end:                                        ; preds = %while.cond
  %141 = load i32, ptr %status, align 4, !dbg !1256
  store i32 %141, ptr %retval, align 4, !dbg !1256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1256

cleanup:                                          ; preds = %while.end, %if.then199, %sw.default193, %if.end190, %sw.default175, %sw.default168, %sw.default161, %sw.default154, %if.then148, %sw.default138, %if.end128, %if.then126, %if.end114, %if.then112, %if.end100, %if.then98, %if.then85, %if.then63, %sw.default38, %sw.default, %if.then24, %if.then9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %target_op) #4, !dbg !1257
  call void @llvm.lifetime.end.p0(i64 4, ptr %type_needed) #4, !dbg !1257
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_arg_type) #4, !dbg !1257
  call void @llvm.lifetime.end.p0(i64 8, ptr %op_info) #4, !dbg !1257
  call void @llvm.lifetime.end.p0(i64 4, ptr %arg_types) #4, !dbg !1257
  call void @llvm.lifetime.end.p0(i64 1, ptr %object_type) #4, !dbg !1257
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #4, !dbg !1257
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_desc) #4, !dbg !1257
  %142 = load i32, ptr %retval, align 4, !dbg !1257
  ret i32 %142, !dbg !1257
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1258 dso_local ptr @acpi_ps_get_opcode_info(i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1262 dso_local void @acpi_error(ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1267 dso_local ptr @acpi_ns_get_attached_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1271 dso_local zeroext i8 @acpi_ut_valid_object_type(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1275 dso_local ptr @acpi_ut_get_descriptor_name(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ex_check_object_type(i32 noundef %type_needed, i32 noundef %this_type, ptr noundef %object) #0 align 16 !dbg !1278 {
entry:
  %retval = alloca i32, align 4
  %type_needed.addr = alloca i32, align 4
  %this_type.addr = alloca i32, align 4
  %object.addr = alloca ptr, align 8
  store i32 %type_needed, ptr %type_needed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type_needed.addr, metadata !1282, metadata !DIExpression()), !dbg !1285
  store i32 %this_type, ptr %this_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %this_type.addr, metadata !1283, metadata !DIExpression()), !dbg !1286
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1284, metadata !DIExpression()), !dbg !1287
  %0 = load i32, ptr %type_needed.addr, align 4, !dbg !1288
  %cmp = icmp eq i32 %0, 0, !dbg !1290
  br i1 %cmp, label %if.then, label %if.end, !dbg !1291

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1292
  br label %return, !dbg !1292

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %type_needed.addr, align 4, !dbg !1294
  %cmp1 = icmp eq i32 %1, 20, !dbg !1296
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1297

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %this_type.addr, align 4, !dbg !1298
  %cmp3 = icmp eq i32 %2, 1, !dbg !1301
  br i1 %cmp3, label %land.lhs.true, label %if.end5, !dbg !1302

land.lhs.true:                                    ; preds = %if.then2
  %3 = load ptr, ptr %object.addr, align 8, !dbg !1303
  %flags = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 4, !dbg !1304
  %4 = load i8, ptr %flags, align 4, !dbg !1304
  %conv = zext i8 %4 to i32, !dbg !1305
  %and = and i32 %conv, 1, !dbg !1306
  %tobool = icmp ne i32 %and, 0, !dbg !1306
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !1307

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !1308
  br label %return, !dbg !1308

if.end5:                                          ; preds = %land.lhs.true, %if.then2
  br label %if.end6, !dbg !1310

if.end6:                                          ; preds = %if.end5, %if.end
  %5 = load i32, ptr %type_needed.addr, align 4, !dbg !1311
  %6 = load i32, ptr %this_type.addr, align 4, !dbg !1313
  %cmp7 = icmp ne i32 %5, %6, !dbg !1314
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !1315

if.then9:                                         ; preds = %if.end6
  %7 = load i32, ptr %type_needed.addr, align 4, !dbg !1316
  %call = call ptr @acpi_ut_get_type_name(i32 noundef %7) #5, !dbg !1316
  %8 = load i32, ptr %this_type.addr, align 4, !dbg !1316
  %call10 = call ptr @acpi_ut_get_type_name(i32 noundef %8) #5, !dbg !1316
  %9 = load ptr, ptr %object.addr, align 8, !dbg !1316
  call void (ptr, i32, ptr, ...) @acpi_error(ptr noundef @_acpi_module_name, i32 noundef 66, ptr noundef @.str.11, ptr noundef %call, ptr noundef %call10, ptr noundef %9) #5, !dbg !1316
  store i32 12291, ptr %retval, align 4, !dbg !1318
  br label %return, !dbg !1318

if.end11:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4, !dbg !1319
  br label %return, !dbg !1319

return:                                           ; preds = %if.end11, %if.then9, %if.then4, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !1320
  ret i32 %10, !dbg !1320
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1321 dso_local i32 @acpi_ex_resolve_to_value(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1325 dso_local i32 @acpi_ex_convert_to_integer(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1328 dso_local ptr @acpi_ut_get_object_type_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1331 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1334 dso_local i32 @acpi_ex_convert_to_buffer(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1337 dso_local i32 @acpi_ex_convert_to_string(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1338 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!861, !862, !863, !864, !865, !866, !867, !868}
!llvm.ident = !{!869}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 18, type: !859, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exresop.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exresop\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exresop.ll drivers/acpi/acpica/exresop.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !804, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/exresop.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "848d5019f0787d1bc82ea0383bcbd0e1")
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
!17 = !{!18, !20, !24, !31, !93, !33, !47, !43}
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
!804 = !{!805, !810, !815, !820, !825, !830, !835, !840, !842, !844, !849, !0, !854}
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !3, line: 121, type: !807, isLocal: true, isDefinition: true)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 192, elements: !808)
!808 = !{!809}
!809 = !DISubrange(count: 24)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !3, line: 139, type: !812, isLocal: true, isDefinition: true)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 184, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 23)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 248, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 31)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !822, isLocal: true, isDefinition: true)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 304, elements: !823)
!823 = !{!824}
!824 = !DISubrange(count: 38)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(scope: null, file: !3, line: 234, type: !827, isLocal: true, isDefinition: true)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 216, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 27)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(scope: null, file: !3, line: 388, type: !832, isLocal: true, isDefinition: true)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 368, elements: !833)
!833 = !{!834}
!834 = !DISubrange(count: 46)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !3, line: 534, type: !837, isLocal: true, isDefinition: true)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 448, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 56)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(scope: null, file: !3, line: 557, type: !832, isLocal: true, isDefinition: true)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(scope: null, file: !3, line: 581, type: !822, isLocal: true, isDefinition: true)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !3, line: 627, type: !846, isLocal: true, isDefinition: true)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 488, elements: !847)
!847 = !{!848}
!848 = !DISubrange(count: 61)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(scope: null, file: !3, line: 641, type: !851, isLocal: true, isDefinition: true)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 424, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 53)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(scope: null, file: !3, line: 66, type: !856, isLocal: true, isDefinition: true)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 256, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 32)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !860, size: 64, elements: !367)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!861 = !{i32 7, !"Dwarf Version", i32 5}
!862 = !{i32 2, !"Debug Info Version", i32 3}
!863 = !{i32 1, !"wchar_size", i32 2}
!864 = !{i32 8, !"cf-protection-branch", i32 1}
!865 = !{i32 4, !"function_return_thunk_extern", i32 1}
!866 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!867 = !{i32 1, !"Code Model", i32 2}
!868 = !{i32 1, !"override-stack-alignment", i32 8}
!869 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!870 = distinct !DISubprogram(name: "acpi_ex_resolve_operands", scope: !3, file: !3, line: 99, type: !871, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !873)
!871 = !DISubroutineType(types: !872)
!872 = !{!18, !47, !125, !160}
!873 = !{!874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !885, !886}
!874 = !DILocalVariable(name: "opcode", arg: 1, scope: !870, file: !3, line: 99, type: !47)
!875 = !DILocalVariable(name: "stack_ptr", arg: 2, scope: !870, file: !3, line: 100, type: !125)
!876 = !DILocalVariable(name: "walk_state", arg: 3, scope: !870, file: !3, line: 101, type: !160)
!877 = !DILocalVariable(name: "obj_desc", scope: !870, file: !3, line: 103, type: !43)
!878 = !DILocalVariable(name: "status", scope: !870, file: !3, line: 104, type: !18)
!879 = !DILocalVariable(name: "object_type", scope: !870, file: !3, line: 105, type: !33)
!880 = !DILocalVariable(name: "arg_types", scope: !870, file: !3, line: 106, type: !20)
!881 = !DILocalVariable(name: "op_info", scope: !870, file: !3, line: 107, type: !420)
!882 = !DILocalVariable(name: "this_arg_type", scope: !870, file: !3, line: 108, type: !20)
!883 = !DILocalVariable(name: "type_needed", scope: !870, file: !3, line: 109, type: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 644, baseType: !20)
!885 = !DILocalVariable(name: "target_op", scope: !870, file: !3, line: 110, type: !47)
!886 = !DILabel(scope: !887, name: "next_operand", file: !3, line: 660)
!887 = distinct !DILexicalBlock(scope: !870, file: !3, line: 137, column: 42)
!888 = !DILocation(line: 99, column: 30, scope: !870)
!889 = !DILocation(line: 100, column: 33, scope: !870)
!890 = !DILocation(line: 101, column: 29, scope: !870)
!891 = !DILocation(line: 103, column: 2, scope: !870)
!892 = !DILocation(line: 103, column: 29, scope: !870)
!893 = !DILocation(line: 104, column: 2, scope: !870)
!894 = !DILocation(line: 104, column: 14, scope: !870)
!895 = !DILocation(line: 105, column: 2, scope: !870)
!896 = !DILocation(line: 105, column: 5, scope: !870)
!897 = !DILocation(line: 106, column: 2, scope: !870)
!898 = !DILocation(line: 106, column: 6, scope: !870)
!899 = !DILocation(line: 107, column: 2, scope: !870)
!900 = !DILocation(line: 107, column: 33, scope: !870)
!901 = !DILocation(line: 108, column: 2, scope: !870)
!902 = !DILocation(line: 108, column: 6, scope: !870)
!903 = !DILocation(line: 109, column: 2, scope: !870)
!904 = !DILocation(line: 109, column: 19, scope: !870)
!905 = !DILocation(line: 110, column: 2, scope: !870)
!906 = !DILocation(line: 110, column: 6, scope: !870)
!907 = !DILocation(line: 114, column: 36, scope: !870)
!908 = !DILocation(line: 114, column: 12, scope: !870)
!909 = !DILocation(line: 114, column: 10, scope: !870)
!910 = !DILocation(line: 115, column: 6, scope: !911)
!911 = distinct !DILexicalBlock(scope: !870, file: !3, line: 115, column: 6)
!912 = !DILocation(line: 115, column: 15, scope: !911)
!913 = !DILocation(line: 115, column: 21, scope: !911)
!914 = !DILocation(line: 115, column: 6, scope: !870)
!915 = !DILocation(line: 116, column: 3, scope: !916)
!916 = distinct !DILexicalBlock(scope: !911, file: !3, line: 115, column: 43)
!917 = !DILocation(line: 119, column: 14, scope: !870)
!918 = !DILocation(line: 119, column: 23, scope: !870)
!919 = !DILocation(line: 119, column: 12, scope: !870)
!920 = !DILocation(line: 120, column: 6, scope: !921)
!921 = distinct !DILexicalBlock(scope: !870, file: !3, line: 120, column: 6)
!922 = !DILocation(line: 120, column: 16, scope: !921)
!923 = !DILocation(line: 120, column: 6, scope: !870)
!924 = !DILocation(line: 121, column: 3, scope: !925)
!925 = distinct !DILexicalBlock(scope: !921, file: !3, line: 120, column: 40)
!926 = !DILocation(line: 123, column: 3, scope: !925)
!927 = !DILocation(line: 137, column: 2, scope: !870)
!928 = !DILocation(line: 137, column: 9, scope: !870)
!929 = !DILocation(line: 138, column: 8, scope: !930)
!930 = distinct !DILexicalBlock(scope: !887, file: !3, line: 138, column: 7)
!931 = !DILocation(line: 138, column: 18, scope: !930)
!932 = !DILocation(line: 138, column: 23, scope: !930)
!933 = !DILocation(line: 138, column: 22, scope: !930)
!934 = !DILocation(line: 138, column: 7, scope: !887)
!935 = !DILocation(line: 139, column: 4, scope: !936)
!936 = distinct !DILexicalBlock(scope: !930, file: !3, line: 138, column: 34)
!937 = !DILocation(line: 142, column: 4, scope: !936)
!938 = !DILocation(line: 147, column: 15, scope: !887)
!939 = !DILocation(line: 147, column: 14, scope: !887)
!940 = !DILocation(line: 147, column: 12, scope: !887)
!941 = !DILocation(line: 151, column: 11, scope: !887)
!942 = !DILocation(line: 151, column: 3, scope: !887)
!943 = !DILocation(line: 157, column: 39, scope: !944)
!944 = distinct !DILexicalBlock(scope: !887, file: !3, line: 151, column: 47)
!945 = !DILocation(line: 157, column: 50, scope: !944)
!946 = !DILocation(line: 156, column: 16, scope: !944)
!947 = !DILocation(line: 164, column: 8, scope: !948)
!948 = distinct !DILexicalBlock(scope: !944, file: !3, line: 164, column: 8)
!949 = !DILocation(line: 164, column: 20, scope: !948)
!950 = !DILocation(line: 164, column: 8, scope: !944)
!951 = !DILocation(line: 168, column: 16, scope: !952)
!952 = distinct !DILexicalBlock(scope: !948, file: !3, line: 164, column: 46)
!953 = !DILocation(line: 165, column: 16, scope: !952)
!954 = !DILocation(line: 165, column: 14, scope: !952)
!955 = !DILocation(line: 169, column: 18, scope: !952)
!956 = !DILocation(line: 169, column: 6, scope: !952)
!957 = !DILocation(line: 169, column: 16, scope: !952)
!958 = !DILocation(line: 171, column: 40, scope: !952)
!959 = !DILocation(line: 172, column: 9, scope: !952)
!960 = !DILocation(line: 170, column: 17, scope: !952)
!961 = !DILocation(line: 173, column: 4, scope: !952)
!962 = !DILocation(line: 174, column: 4, scope: !944)
!963 = !DILocation(line: 180, column: 18, scope: !944)
!964 = !DILocation(line: 180, column: 35, scope: !944)
!965 = !DILocation(line: 180, column: 16, scope: !944)
!966 = !DILocation(line: 184, column: 35, scope: !967)
!967 = distinct !DILexicalBlock(scope: !944, file: !3, line: 184, column: 8)
!968 = !DILocation(line: 184, column: 9, scope: !967)
!969 = !DILocation(line: 184, column: 8, scope: !944)
!970 = !DILocation(line: 185, column: 5, scope: !971)
!971 = distinct !DILexicalBlock(scope: !967, file: !3, line: 184, column: 49)
!972 = !DILocation(line: 189, column: 5, scope: !971)
!973 = !DILocation(line: 192, column: 8, scope: !974)
!974 = distinct !DILexicalBlock(scope: !944, file: !3, line: 192, column: 8)
!975 = !DILocation(line: 192, column: 20, scope: !974)
!976 = !DILocation(line: 192, column: 8, scope: !944)
!977 = !DILocation(line: 196, column: 13, scope: !978)
!978 = distinct !DILexicalBlock(scope: !974, file: !3, line: 192, column: 55)
!979 = !DILocation(line: 196, column: 33, scope: !978)
!980 = !DILocation(line: 196, column: 5, scope: !978)
!981 = !DILocation(line: 199, column: 16, scope: !982)
!982 = distinct !DILexicalBlock(scope: !978, file: !3, line: 196, column: 40)
!983 = !DILocation(line: 199, column: 6, scope: !982)
!984 = !DILocation(line: 216, column: 6, scope: !982)
!985 = !DILocation(line: 220, column: 6, scope: !982)
!986 = !DILocation(line: 225, column: 6, scope: !982)
!987 = !DILocation(line: 227, column: 4, scope: !978)
!988 = !DILocation(line: 228, column: 4, scope: !944)
!989 = !DILocation(line: 234, column: 4, scope: !944)
!990 = !DILocation(line: 238, column: 4, scope: !944)
!991 = !DILocation(line: 243, column: 19, scope: !887)
!992 = !DILocation(line: 243, column: 17, scope: !887)
!993 = !DILocation(line: 244, column: 3, scope: !887)
!994 = !DILocation(line: 250, column: 11, scope: !887)
!995 = !DILocation(line: 250, column: 3, scope: !887)
!996 = !DILocation(line: 253, column: 9, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 253, column: 8)
!998 = distinct !DILexicalBlock(scope: !887, file: !3, line: 250, column: 26)
!999 = !DILocation(line: 253, column: 44, scope: !997)
!1000 = !DILocation(line: 254, column: 33, scope: !997)
!1001 = !DILocation(line: 255, column: 9, scope: !997)
!1002 = !DILocation(line: 255, column: 26, scope: !997)
!1003 = !DILocation(line: 255, column: 31, scope: !997)
!1004 = !DILocation(line: 253, column: 8, scope: !998)
!1005 = !DILocation(line: 260, column: 5, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !997, file: !3, line: 255, column: 53)
!1007 = !DILocation(line: 255, column: 50, scope: !997)
!1008 = !DILocation(line: 282, column: 8, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !998, file: !3, line: 282, column: 8)
!1010 = !DILocation(line: 282, column: 43, scope: !1009)
!1011 = !DILocation(line: 282, column: 8, scope: !998)
!1012 = !DILocation(line: 284, column: 5, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !3, line: 283, column: 30)
!1014 = !DILocation(line: 289, column: 13, scope: !998)
!1015 = !DILocation(line: 289, column: 26, scope: !998)
!1016 = !DILocation(line: 288, column: 8, scope: !998)
!1017 = !DILocation(line: 287, column: 11, scope: !998)
!1018 = !DILocation(line: 290, column: 8, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !998, file: !3, line: 290, column: 8)
!1020 = !DILocation(line: 290, column: 8, scope: !998)
!1021 = !DILocation(line: 291, column: 5, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 290, column: 30)
!1023 = !DILocation(line: 293, column: 4, scope: !998)
!1024 = !DILocation(line: 302, column: 9, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !998, file: !3, line: 302, column: 8)
!1026 = !DILocation(line: 302, column: 16, scope: !1025)
!1027 = !DILocation(line: 302, column: 33, scope: !1025)
!1028 = !DILocation(line: 303, column: 11, scope: !1025)
!1029 = !DILocation(line: 303, column: 10, scope: !1025)
!1030 = !DILocation(line: 303, column: 30, scope: !1025)
!1031 = !DILocation(line: 303, column: 9, scope: !1025)
!1032 = !DILocation(line: 303, column: 35, scope: !1025)
!1033 = !DILocation(line: 305, column: 8, scope: !1025)
!1034 = !DILocation(line: 305, column: 14, scope: !1025)
!1035 = !DILocation(line: 305, column: 13, scope: !1025)
!1036 = !DILocation(line: 305, column: 36, scope: !1025)
!1037 = !DILocation(line: 305, column: 12, scope: !1025)
!1038 = !DILocation(line: 305, column: 42, scope: !1025)
!1039 = !DILocation(line: 302, column: 8, scope: !998)
!1040 = !DILocation(line: 307, column: 5, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 306, column: 27)
!1042 = !DILocation(line: 309, column: 4, scope: !998)
!1043 = !DILocation(line: 315, column: 4, scope: !998)
!1044 = !DILocation(line: 321, column: 37, scope: !887)
!1045 = !DILocation(line: 321, column: 48, scope: !887)
!1046 = !DILocation(line: 321, column: 12, scope: !887)
!1047 = !DILocation(line: 321, column: 10, scope: !887)
!1048 = !DILocation(line: 322, column: 7, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !887, file: !3, line: 322, column: 7)
!1050 = !DILocation(line: 322, column: 7, scope: !887)
!1051 = !DILocation(line: 323, column: 4, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 322, column: 29)
!1053 = !DILocation(line: 328, column: 15, scope: !887)
!1054 = !DILocation(line: 328, column: 14, scope: !887)
!1055 = !DILocation(line: 328, column: 12, scope: !887)
!1056 = !DILocation(line: 333, column: 11, scope: !887)
!1057 = !DILocation(line: 333, column: 3, scope: !887)
!1058 = !DILocation(line: 342, column: 16, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !887, file: !3, line: 333, column: 26)
!1060 = !DILocation(line: 343, column: 4, scope: !1059)
!1061 = !DILocation(line: 349, column: 16, scope: !1059)
!1062 = !DILocation(line: 350, column: 4, scope: !1059)
!1063 = !DILocation(line: 356, column: 16, scope: !1059)
!1064 = !DILocation(line: 357, column: 4, scope: !1059)
!1065 = !DILocation(line: 363, column: 16, scope: !1059)
!1066 = !DILocation(line: 364, column: 4, scope: !1059)
!1067 = !DILocation(line: 370, column: 16, scope: !1059)
!1068 = !DILocation(line: 371, column: 4, scope: !1059)
!1069 = !DILocation(line: 384, column: 40, scope: !1059)
!1070 = !DILocation(line: 384, column: 50, scope: !1059)
!1071 = !DILocation(line: 384, column: 13, scope: !1059)
!1072 = !DILocation(line: 384, column: 11, scope: !1059)
!1073 = !DILocation(line: 386, column: 8, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 386, column: 8)
!1075 = !DILocation(line: 386, column: 8, scope: !1059)
!1076 = !DILocation(line: 387, column: 9, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 387, column: 9)
!1078 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 386, column: 30)
!1079 = !DILocation(line: 387, column: 16, scope: !1077)
!1080 = !DILocation(line: 387, column: 9, scope: !1078)
!1081 = !DILocation(line: 388, column: 6, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 387, column: 28)
!1083 = !DILocation(line: 393, column: 6, scope: !1082)
!1084 = !DILocation(line: 396, column: 5, scope: !1078)
!1085 = !DILocation(line: 399, column: 8, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 399, column: 8)
!1087 = !DILocation(line: 399, column: 21, scope: !1086)
!1088 = !DILocation(line: 399, column: 20, scope: !1086)
!1089 = !DILocation(line: 399, column: 17, scope: !1086)
!1090 = !DILocation(line: 399, column: 8, scope: !1059)
!1091 = !DILocation(line: 400, column: 30, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 399, column: 32)
!1093 = !DILocation(line: 400, column: 5, scope: !1092)
!1094 = !DILocation(line: 401, column: 4, scope: !1092)
!1095 = !DILocation(line: 402, column: 4, scope: !1059)
!1096 = !DILocation(line: 410, column: 39, scope: !1059)
!1097 = !DILocation(line: 410, column: 49, scope: !1059)
!1098 = !DILocation(line: 410, column: 13, scope: !1059)
!1099 = !DILocation(line: 410, column: 11, scope: !1059)
!1100 = !DILocation(line: 411, column: 8, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 411, column: 8)
!1102 = !DILocation(line: 411, column: 8, scope: !1059)
!1103 = !DILocation(line: 412, column: 9, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 412, column: 9)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 411, column: 30)
!1106 = !DILocation(line: 412, column: 16, scope: !1104)
!1107 = !DILocation(line: 412, column: 9, scope: !1105)
!1108 = !DILocation(line: 413, column: 6, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !3, line: 412, column: 28)
!1110 = !DILocation(line: 418, column: 6, scope: !1109)
!1111 = !DILocation(line: 421, column: 5, scope: !1105)
!1112 = !DILocation(line: 424, column: 8, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 424, column: 8)
!1114 = !DILocation(line: 424, column: 21, scope: !1113)
!1115 = !DILocation(line: 424, column: 20, scope: !1113)
!1116 = !DILocation(line: 424, column: 17, scope: !1113)
!1117 = !DILocation(line: 424, column: 8, scope: !1059)
!1118 = !DILocation(line: 425, column: 30, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 424, column: 32)
!1120 = !DILocation(line: 425, column: 5, scope: !1119)
!1121 = !DILocation(line: 426, column: 4, scope: !1119)
!1122 = !DILocation(line: 427, column: 4, scope: !1059)
!1123 = !DILocation(line: 436, column: 34, scope: !1059)
!1124 = !DILocation(line: 436, column: 44, scope: !1059)
!1125 = !DILocation(line: 436, column: 8, scope: !1059)
!1126 = !DILocation(line: 435, column: 11, scope: !1059)
!1127 = !DILocation(line: 438, column: 8, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 438, column: 8)
!1129 = !DILocation(line: 438, column: 8, scope: !1059)
!1130 = !DILocation(line: 439, column: 9, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 439, column: 9)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 438, column: 30)
!1133 = !DILocation(line: 439, column: 16, scope: !1131)
!1134 = !DILocation(line: 439, column: 9, scope: !1132)
!1135 = !DILocation(line: 440, column: 6, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !3, line: 439, column: 28)
!1137 = !DILocation(line: 445, column: 6, scope: !1136)
!1138 = !DILocation(line: 448, column: 5, scope: !1132)
!1139 = !DILocation(line: 451, column: 8, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 451, column: 8)
!1141 = !DILocation(line: 451, column: 21, scope: !1140)
!1142 = !DILocation(line: 451, column: 20, scope: !1140)
!1143 = !DILocation(line: 451, column: 17, scope: !1140)
!1144 = !DILocation(line: 451, column: 8, scope: !1059)
!1145 = !DILocation(line: 452, column: 30, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 451, column: 32)
!1147 = !DILocation(line: 452, column: 5, scope: !1146)
!1148 = !DILocation(line: 453, column: 4, scope: !1146)
!1149 = !DILocation(line: 454, column: 4, scope: !1059)
!1150 = !DILocation(line: 460, column: 12, scope: !1059)
!1151 = !DILocation(line: 460, column: 29, scope: !1059)
!1152 = !DILocation(line: 460, column: 4, scope: !1059)
!1153 = !DILocation(line: 466, column: 5, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 460, column: 35)
!1155 = !DILocation(line: 469, column: 5, scope: !1154)
!1156 = !DILocation(line: 474, column: 5, scope: !1154)
!1157 = !DILocation(line: 476, column: 4, scope: !1059)
!1158 = !DILocation(line: 482, column: 12, scope: !1059)
!1159 = !DILocation(line: 482, column: 29, scope: !1059)
!1160 = !DILocation(line: 482, column: 4, scope: !1059)
!1161 = !DILocation(line: 487, column: 5, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 482, column: 35)
!1163 = !DILocation(line: 494, column: 35, scope: !1162)
!1164 = !DILocation(line: 495, column: 14, scope: !1162)
!1165 = !DILocation(line: 494, column: 9, scope: !1162)
!1166 = !DILocation(line: 493, column: 12, scope: !1162)
!1167 = !DILocation(line: 496, column: 9, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 496, column: 9)
!1169 = !DILocation(line: 496, column: 9, scope: !1162)
!1170 = !DILocation(line: 497, column: 6, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 496, column: 31)
!1172 = !DILocation(line: 500, column: 9, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 500, column: 9)
!1174 = !DILocation(line: 500, column: 22, scope: !1173)
!1175 = !DILocation(line: 500, column: 21, scope: !1173)
!1176 = !DILocation(line: 500, column: 18, scope: !1173)
!1177 = !DILocation(line: 500, column: 9, scope: !1162)
!1178 = !DILocation(line: 501, column: 31, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 500, column: 33)
!1180 = !DILocation(line: 501, column: 6, scope: !1179)
!1181 = !DILocation(line: 502, column: 5, scope: !1179)
!1182 = !DILocation(line: 503, column: 5, scope: !1162)
!1183 = !DILocation(line: 506, column: 5, scope: !1162)
!1184 = !DILocation(line: 511, column: 5, scope: !1162)
!1185 = !DILocation(line: 513, column: 4, scope: !1059)
!1186 = !DILocation(line: 523, column: 12, scope: !1059)
!1187 = !DILocation(line: 523, column: 29, scope: !1059)
!1188 = !DILocation(line: 523, column: 4, scope: !1059)
!1189 = !DILocation(line: 530, column: 5, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 523, column: 35)
!1191 = !DILocation(line: 534, column: 5, scope: !1190)
!1192 = !DILocation(line: 539, column: 5, scope: !1190)
!1193 = !DILocation(line: 541, column: 4, scope: !1059)
!1194 = !DILocation(line: 547, column: 12, scope: !1059)
!1195 = !DILocation(line: 547, column: 29, scope: !1059)
!1196 = !DILocation(line: 547, column: 4, scope: !1059)
!1197 = !DILocation(line: 553, column: 5, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 547, column: 35)
!1199 = !DILocation(line: 557, column: 5, scope: !1198)
!1200 = !DILocation(line: 562, column: 5, scope: !1198)
!1201 = !DILocation(line: 564, column: 4, scope: !1059)
!1202 = !DILocation(line: 572, column: 12, scope: !1059)
!1203 = !DILocation(line: 572, column: 29, scope: !1059)
!1204 = !DILocation(line: 572, column: 4, scope: !1059)
!1205 = !DILocation(line: 577, column: 5, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 572, column: 35)
!1207 = !DILocation(line: 581, column: 5, scope: !1206)
!1208 = !DILocation(line: 586, column: 5, scope: !1206)
!1209 = !DILocation(line: 588, column: 4, scope: !1059)
!1210 = !DILocation(line: 594, column: 12, scope: !1059)
!1211 = !DILocation(line: 594, column: 29, scope: !1059)
!1212 = !DILocation(line: 594, column: 4, scope: !1059)
!1213 = !DILocation(line: 607, column: 5, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 594, column: 35)
!1215 = !DILocation(line: 611, column: 9, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 611, column: 9)
!1217 = !DILocation(line: 611, column: 9, scope: !1214)
!1218 = !DILocation(line: 617, column: 6, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 611, column: 44)
!1220 = !DILocation(line: 620, column: 9, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 620, column: 9)
!1222 = !DILocation(line: 620, column: 19, scope: !1221)
!1223 = !DILocation(line: 620, column: 9, scope: !1214)
!1224 = !DILocation(line: 624, column: 6, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 620, column: 36)
!1226 = !DILocation(line: 627, column: 5, scope: !1214)
!1227 = !DILocation(line: 633, column: 5, scope: !1214)
!1228 = !DILocation(line: 635, column: 4, scope: !1059)
!1229 = !DILocation(line: 641, column: 4, scope: !1059)
!1230 = !DILocation(line: 645, column: 4, scope: !1059)
!1231 = !DILocation(line: 653, column: 33, scope: !887)
!1232 = !DILocation(line: 654, column: 14, scope: !887)
!1233 = !DILocation(line: 654, column: 13, scope: !887)
!1234 = !DILocation(line: 654, column: 33, scope: !887)
!1235 = !DILocation(line: 654, column: 12, scope: !887)
!1236 = !DILocation(line: 655, column: 13, scope: !887)
!1237 = !DILocation(line: 655, column: 12, scope: !887)
!1238 = !DILocation(line: 653, column: 7, scope: !887)
!1239 = !DILocation(line: 652, column: 10, scope: !887)
!1240 = !DILocation(line: 656, column: 7, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !887, file: !3, line: 656, column: 7)
!1242 = !DILocation(line: 656, column: 7, scope: !887)
!1243 = !DILocation(line: 657, column: 4, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 656, column: 29)
!1245 = !DILocation(line: 660, column: 1, scope: !887)
!1246 = !DILocation(line: 665, column: 7, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !887, file: !3, line: 665, column: 7)
!1248 = !DILocation(line: 665, column: 7, scope: !887)
!1249 = !DILocation(line: 666, column: 13, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 665, column: 40)
!1251 = !DILocation(line: 667, column: 3, scope: !1250)
!1252 = distinct !{!1252, !927, !1253, !1254, !1255}
!1253 = !DILocation(line: 668, column: 2, scope: !870)
!1254 = !{!"llvm.loop.mustprogress"}
!1255 = !{!"llvm.loop.unroll.disable"}
!1256 = !DILocation(line: 674, column: 2, scope: !870)
!1257 = !DILocation(line: 675, column: 1, scope: !870)
!1258 = !DISubprogram(name: "acpi_ps_get_opcode_info", scope: !1259, file: !1259, line: 108, type: !1260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1259 = !DIFile(filename: "drivers/acpi/acpica/acparser.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ef6d66ea995d431f5551506a5e503ec")
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!420, !47}
!1262 = !DISubprogram(name: "acpi_error", scope: !1263, file: !1263, line: 901, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1263 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !1266, !20, !1266, null}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!1267 = !DISubprogram(name: "acpi_ns_get_attached_object", scope: !1268, file: !1268, line: 298, type: !1269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1268 = !DIFile(filename: "drivers/acpi/acpica/acnamesp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3b086382489eb62167f1cb004f9ae2b")
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!43, !93}
!1271 = !DISubprogram(name: "acpi_ut_valid_object_type", scope: !1272, file: !1272, line: 247, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1272 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!33, !884}
!1275 = !DISubprogram(name: "acpi_ut_get_descriptor_name", scope: !1272, file: !1272, line: 229, type: !1276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!1266, !31}
!1278 = distinct !DISubprogram(name: "acpi_ex_check_object_type", scope: !3, file: !3, line: 40, type: !1279, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1281)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!18, !884, !884, !31}
!1281 = !{!1282, !1283, !1284}
!1282 = !DILocalVariable(name: "type_needed", arg: 1, scope: !1278, file: !3, line: 40, type: !884)
!1283 = !DILocalVariable(name: "this_type", arg: 2, scope: !1278, file: !3, line: 41, type: !884)
!1284 = !DILocalVariable(name: "object", arg: 3, scope: !1278, file: !3, line: 41, type: !31)
!1285 = !DILocation(line: 40, column: 44, scope: !1278)
!1286 = !DILocation(line: 41, column: 23, scope: !1278)
!1287 = !DILocation(line: 41, column: 40, scope: !1278)
!1288 = !DILocation(line: 45, column: 6, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 45, column: 6)
!1290 = !DILocation(line: 45, column: 18, scope: !1289)
!1291 = !DILocation(line: 45, column: 6, scope: !1278)
!1292 = !DILocation(line: 49, column: 3, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 45, column: 36)
!1294 = !DILocation(line: 52, column: 6, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 52, column: 6)
!1296 = !DILocation(line: 52, column: 18, scope: !1295)
!1297 = !DILocation(line: 52, column: 6, scope: !1278)
!1298 = !DILocation(line: 58, column: 8, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 58, column: 7)
!1300 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 52, column: 48)
!1301 = !DILocation(line: 58, column: 18, scope: !1299)
!1302 = !DILocation(line: 58, column: 40, scope: !1299)
!1303 = !DILocation(line: 59, column: 38, scope: !1299)
!1304 = !DILocation(line: 59, column: 54, scope: !1299)
!1305 = !DILocation(line: 59, column: 8, scope: !1299)
!1306 = !DILocation(line: 59, column: 60, scope: !1299)
!1307 = !DILocation(line: 58, column: 7, scope: !1300)
!1308 = !DILocation(line: 61, column: 4, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 60, column: 30)
!1310 = !DILocation(line: 63, column: 2, scope: !1300)
!1311 = !DILocation(line: 65, column: 6, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 65, column: 6)
!1313 = !DILocation(line: 65, column: 21, scope: !1312)
!1314 = !DILocation(line: 65, column: 18, scope: !1312)
!1315 = !DILocation(line: 65, column: 6, scope: !1278)
!1316 = !DILocation(line: 66, column: 3, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 65, column: 32)
!1318 = !DILocation(line: 71, column: 3, scope: !1317)
!1319 = !DILocation(line: 74, column: 2, scope: !1278)
!1320 = !DILocation(line: 75, column: 1, scope: !1278)
!1321 = !DISubprogram(name: "acpi_ex_resolve_to_value", scope: !1322, file: !1322, line: 357, type: !1323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1322 = !DIFile(filename: "drivers/acpi/acpica/acinterp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "03b0cbc12a5caca966d0ef71b44b85cc")
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!18, !125, !160}
!1325 = !DISubprogram(name: "acpi_ex_convert_to_integer", scope: !1322, file: !1322, line: 69, type: !1326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!18, !43, !125, !20}
!1328 = !DISubprogram(name: "acpi_ut_get_object_type_name", scope: !1272, file: !1272, line: 233, type: !1329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!1266, !43}
!1331 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1272, file: !1272, line: 369, type: !1332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{null, !43}
!1334 = !DISubprogram(name: "acpi_ex_convert_to_buffer", scope: !1322, file: !1322, line: 74, type: !1335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!18, !43, !125}
!1337 = !DISubprogram(name: "acpi_ex_convert_to_string", scope: !1322, file: !1322, line: 78, type: !1326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1338 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !1272, file: !1272, line: 225, type: !1339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!1266, !884}
