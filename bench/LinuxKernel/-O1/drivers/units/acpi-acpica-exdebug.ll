; ModuleID = 'drivers/acpi/acpica/exdebug.c'
source_filename = "drivers/acpi/acpica/exdebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }
%struct.acpi_object_buffer = type { ptr, i8, i8, i16, i8, ptr, i32, i32, ptr, ptr }
%struct.acpi_object_package = type { ptr, i8, i8, i16, i8, ptr, ptr, ptr, i32, i32 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }

@acpi_gbl_enable_aml_debug_object = external dso_local global i8, align 1
@acpi_dbg_level = external dso_local global i32, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !0
@acpi_gbl_display_debug_timer = external dso_local global i8, align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ACPI Debug: T=0x%8.8X %*s\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [16 x i8] c"ACPI Debug: %*s\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [8 x i8] c"(%.2u) \00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [15 x i8] c"[Null Object]\0A\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [4 x i8] c"%s \00", align 1, !dbg !29
@.str.7 = private unnamed_addr constant [30 x i8] c"%p, Invalid Internal Object!\0A\00", align 1, !dbg !34
@.str.8 = private unnamed_addr constant [14 x i8] c"%s (Node %p)\0A\00", align 1, !dbg !39
@acpi_gbl_integer_byte_width = external dso_local global i8, align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"0x%8.8X\0A\00", align 1, !dbg !44
@.str.10 = private unnamed_addr constant [14 x i8] c"0x%8.8X%8.8X\0A\00", align 1, !dbg !49
@.str.11 = private unnamed_addr constant [10 x i8] c"[0x%.2X]\0A\00", align 1, !dbg !51
@.str.12 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1, !dbg !56
@.str.13 = private unnamed_addr constant [29 x i8] c"(Contains 0x%.2X Elements):\0A\00", align 1, !dbg !61
@.str.14 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1, !dbg !66
@.str.15 = private unnamed_addr constant [6 x i8] c"0x%X\0A\00", align 1, !dbg !68
@.str.16 = private unnamed_addr constant [18 x i8] c"Table Index 0x%X\0A\00", align 1, !dbg !70
@.str.17 = private unnamed_addr constant [34 x i8] c" %p - Not a valid namespace node\0A\00", align 1, !dbg !75
@.str.18 = private unnamed_addr constant [17 x i8] c"Node %p [%4.4s] \00", align 1, !dbg !80
@.str.19 = private unnamed_addr constant [8 x i8] c"Device\0A\00", align 1, !dbg !85
@.str.20 = private unnamed_addr constant [14 x i8] c"Thermal Zone\0A\00", align 1, !dbg !87
@.str.21 = private unnamed_addr constant [22 x i8] c"Buffer[%u] = 0x%2.2X\0A\00", align 1, !dbg !89
@.str.22 = private unnamed_addr constant [29 x i8] c"String[%u] = \22%c\22 (0x%2.2X)\0A\00", align 1, !dbg !94
@.str.23 = private unnamed_addr constant [15 x i8] c"Package[%u] = \00", align 1, !dbg !96
@.str.24 = private unnamed_addr constant [33 x i8] c"[Uninitialized Package Element]\0A\00", align 1, !dbg !98
@.str.25 = private unnamed_addr constant [34 x i8] c"Unknown Reference object type %X\0A\00", align 1, !dbg !103
@.str.26 = private unnamed_addr constant [17 x i8] c"(Descriptor %p)\0A\00", align 1, !dbg !105

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ex_do_debug_object(ptr noundef %source_desc, i32 noundef %level, i32 noundef %index) #0 align 16 !dbg !911 {
entry:
  %source_desc.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %timer = alloca i32, align 4
  %object_desc = alloca ptr, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %source_desc, ptr %source_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %source_desc.addr, metadata !915, metadata !DIExpression()), !dbg !922
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !916, metadata !DIExpression()), !dbg !923
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !917, metadata !DIExpression()), !dbg !924
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !925
  call void @llvm.dbg.declare(metadata ptr %i, metadata !918, metadata !DIExpression()), !dbg !926
  call void @llvm.lifetime.start.p0(i64 4, ptr %timer) #4, !dbg !927
  call void @llvm.dbg.declare(metadata ptr %timer, metadata !919, metadata !DIExpression()), !dbg !928
  call void @llvm.lifetime.start.p0(i64 8, ptr %object_desc) #4, !dbg !929
  call void @llvm.dbg.declare(metadata ptr %object_desc, metadata !920, metadata !DIExpression()), !dbg !930
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #4, !dbg !931
  call void @llvm.dbg.declare(metadata ptr %value, metadata !921, metadata !DIExpression()), !dbg !932
  %0 = load i8, ptr @acpi_gbl_enable_aml_debug_object, align 1, !dbg !933
  %tobool = icmp ne i8 %0, 0, !dbg !933
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !935

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr @acpi_dbg_level, align 4, !dbg !936
  %and = and i32 %1, 2, !dbg !937
  %tobool1 = icmp ne i32 %and, 0, !dbg !937
  br i1 %tobool1, label %if.end, label %if.then, !dbg !938

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !939

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load ptr, ptr %source_desc.addr, align 8, !dbg !941
  %tobool2 = icmp ne ptr %2, null, !dbg !941
  br i1 %tobool2, label %land.lhs.true3, label %if.end18, !dbg !943

land.lhs.true3:                                   ; preds = %if.end
  %3 = load ptr, ptr %source_desc.addr, align 8, !dbg !944
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %3, i32 0, i32 1, !dbg !944
  %4 = load i8, ptr %descriptor_type, align 8, !dbg !944
  %conv = zext i8 %4 to i32, !dbg !944
  %cmp = icmp eq i32 %conv, 14, !dbg !945
  br i1 %cmp, label %land.lhs.true5, label %if.end18, !dbg !946

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %5 = load ptr, ptr %source_desc.addr, align 8, !dbg !947
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %5, i32 0, i32 2, !dbg !948
  %6 = load i8, ptr %type, align 1, !dbg !948
  %conv6 = zext i8 %6 to i32, !dbg !947
  %cmp7 = icmp eq i32 %conv6, 2, !dbg !949
  br i1 %cmp7, label %if.then9, label %if.end18, !dbg !950

if.then9:                                         ; preds = %land.lhs.true5
  %7 = load ptr, ptr %source_desc.addr, align 8, !dbg !951
  %length = getelementptr inbounds %struct.acpi_object_string, ptr %7, i32 0, i32 6, !dbg !954
  %8 = load i32, ptr %length, align 8, !dbg !954
  %cmp10 = icmp eq i32 %8, 1, !dbg !955
  br i1 %cmp10, label %land.lhs.true12, label %if.end17, !dbg !956

land.lhs.true12:                                  ; preds = %if.then9
  %9 = load ptr, ptr %source_desc.addr, align 8, !dbg !957
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %9, i32 0, i32 5, !dbg !958
  %10 = load ptr, ptr %pointer, align 8, !dbg !958
  %11 = load i8, ptr %10, align 1, !dbg !959
  %conv13 = zext i8 %11 to i32, !dbg !959
  %cmp14 = icmp eq i32 %conv13, 10, !dbg !960
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !961

if.then16:                                        ; preds = %land.lhs.true12
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str) #5, !dbg !962
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !964

if.end17:                                         ; preds = %land.lhs.true12, %if.then9
  br label %if.end18, !dbg !965

if.end18:                                         ; preds = %if.end17, %land.lhs.true5, %land.lhs.true3, %if.end
  %12 = load i32, ptr %level.addr, align 4, !dbg !966
  %cmp19 = icmp ugt i32 %12, 0, !dbg !968
  br i1 %cmp19, label %land.lhs.true21, label %if.then24, !dbg !969

land.lhs.true21:                                  ; preds = %if.end18
  %13 = load i32, ptr %index.addr, align 4, !dbg !970
  %cmp22 = icmp eq i32 %13, 0, !dbg !971
  br i1 %cmp22, label %if.end30, label %if.then24, !dbg !972

if.then24:                                        ; preds = %land.lhs.true21, %if.end18
  %14 = load i8, ptr @acpi_gbl_display_debug_timer, align 1, !dbg !973
  %tobool25 = icmp ne i8 %14, 0, !dbg !973
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !976

if.then26:                                        ; preds = %if.then24
  %call = call i64 @acpi_os_get_timer() #5, !dbg !977
  %conv27 = trunc i64 %call to i32, !dbg !979
  %div = udiv i32 %conv27, 10, !dbg !980
  store i32 %div, ptr %timer, align 4, !dbg !981
  %15 = load i32, ptr %timer, align 4, !dbg !982
  %and28 = and i32 %15, 67108863, !dbg !982
  store i32 %and28, ptr %timer, align 4, !dbg !982
  %16 = load i32, ptr %timer, align 4, !dbg !983
  %17 = load i32, ptr %level.addr, align 4, !dbg !984
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.1, i32 noundef %16, i32 noundef %17, ptr noundef @.str.2) #5, !dbg !985
  br label %if.end29, !dbg !986

if.else:                                          ; preds = %if.then24
  %18 = load i32, ptr %level.addr, align 4, !dbg !987
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.3, i32 noundef %18, ptr noundef @.str.2) #5, !dbg !989
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  br label %if.end30, !dbg !990

if.end30:                                         ; preds = %if.end29, %land.lhs.true21
  %19 = load i32, ptr %index.addr, align 4, !dbg !991
  %cmp31 = icmp ugt i32 %19, 0, !dbg !993
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !994

if.then33:                                        ; preds = %if.end30
  %20 = load i32, ptr %index.addr, align 4, !dbg !995
  %sub = sub i32 %20, 1, !dbg !997
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.4, i32 noundef %sub) #5, !dbg !998
  br label %if.end34, !dbg !999

if.end34:                                         ; preds = %if.then33, %if.end30
  %21 = load ptr, ptr %source_desc.addr, align 8, !dbg !1000
  %tobool35 = icmp ne ptr %21, null, !dbg !1000
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !1002

if.then36:                                        ; preds = %if.end34
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.5) #5, !dbg !1003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1005

if.end37:                                         ; preds = %if.end34
  %22 = load ptr, ptr %source_desc.addr, align 8, !dbg !1006
  %descriptor_type38 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %22, i32 0, i32 1, !dbg !1006
  %23 = load i8, ptr %descriptor_type38, align 8, !dbg !1006
  %conv39 = zext i8 %23 to i32, !dbg !1006
  %cmp40 = icmp eq i32 %conv39, 14, !dbg !1008
  br i1 %cmp40, label %if.then42, label %if.else59, !dbg !1009

if.then42:                                        ; preds = %if.end37
  %24 = load ptr, ptr %source_desc.addr, align 8, !dbg !1010
  %type43 = getelementptr inbounds %struct.acpi_object_common, ptr %24, i32 0, i32 2, !dbg !1013
  %25 = load i8, ptr %type43, align 1, !dbg !1013
  %conv44 = zext i8 %25 to i32, !dbg !1010
  %cmp45 = icmp ne i32 %conv44, 1, !dbg !1014
  br i1 %cmp45, label %land.lhs.true47, label %if.end54, !dbg !1015

land.lhs.true47:                                  ; preds = %if.then42
  %26 = load ptr, ptr %source_desc.addr, align 8, !dbg !1016
  %type48 = getelementptr inbounds %struct.acpi_object_common, ptr %26, i32 0, i32 2, !dbg !1017
  %27 = load i8, ptr %type48, align 1, !dbg !1017
  %conv49 = zext i8 %27 to i32, !dbg !1016
  %cmp50 = icmp ne i32 %conv49, 2, !dbg !1018
  br i1 %cmp50, label %if.then52, label %if.end54, !dbg !1019

if.then52:                                        ; preds = %land.lhs.true47
  %28 = load ptr, ptr %source_desc.addr, align 8, !dbg !1020
  %call53 = call ptr @acpi_ut_get_object_type_name(ptr noundef %28) #5, !dbg !1022
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.6, ptr noundef %call53) #5, !dbg !1023
  br label %if.end54, !dbg !1024

if.end54:                                         ; preds = %if.then52, %land.lhs.true47, %if.then42
  %29 = load ptr, ptr %source_desc.addr, align 8, !dbg !1025
  %call55 = call zeroext i8 @acpi_ut_valid_internal_object(ptr noundef %29) #5, !dbg !1027
  %tobool56 = icmp ne i8 %call55, 0, !dbg !1027
  br i1 %tobool56, label %if.end58, label %if.then57, !dbg !1028

if.then57:                                        ; preds = %if.end54
  %30 = load ptr, ptr %source_desc.addr, align 8, !dbg !1029
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.7, ptr noundef %30) #5, !dbg !1031
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1032

if.end58:                                         ; preds = %if.end54
  br label %if.end69, !dbg !1033

if.else59:                                        ; preds = %if.end37
  %31 = load ptr, ptr %source_desc.addr, align 8, !dbg !1034
  %descriptor_type60 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %31, i32 0, i32 1, !dbg !1034
  %32 = load i8, ptr %descriptor_type60, align 8, !dbg !1034
  %conv61 = zext i8 %32 to i32, !dbg !1034
  %cmp62 = icmp eq i32 %conv61, 15, !dbg !1036
  br i1 %cmp62, label %if.then64, label %if.else68, !dbg !1037

if.then64:                                        ; preds = %if.else59
  %33 = load ptr, ptr %source_desc.addr, align 8, !dbg !1038
  %type65 = getelementptr inbounds %struct.acpi_namespace_node, ptr %33, i32 0, i32 2, !dbg !1040
  %34 = load i8, ptr %type65, align 1, !dbg !1040
  %conv66 = zext i8 %34 to i32, !dbg !1041
  %call67 = call ptr @acpi_ut_get_type_name(i32 noundef %conv66) #5, !dbg !1042
  %35 = load ptr, ptr %source_desc.addr, align 8, !dbg !1043
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.8, ptr noundef %call67, ptr noundef %35) #5, !dbg !1044
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1045

if.else68:                                        ; preds = %if.else59
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1046

if.end69:                                         ; preds = %if.end58
  %36 = load ptr, ptr %source_desc.addr, align 8, !dbg !1048
  %type70 = getelementptr inbounds %struct.acpi_object_common, ptr %36, i32 0, i32 2, !dbg !1049
  %37 = load i8, ptr %type70, align 1, !dbg !1049
  %conv71 = zext i8 %37 to i32, !dbg !1048
  switch i32 %conv71, label %sw.default165 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb84
    i32 2, label %sw.bb91
    i32 4, label %sw.bb93
    i32 20, label %sw.bb98
  ], !dbg !1050

sw.bb:                                            ; preds = %if.end69
  %38 = load i8, ptr @acpi_gbl_integer_byte_width, align 1, !dbg !1051
  %conv72 = zext i8 %38 to i32, !dbg !1051
  %cmp73 = icmp eq i32 %conv72, 4, !dbg !1054
  br i1 %cmp73, label %if.then75, label %if.else78, !dbg !1055

if.then75:                                        ; preds = %sw.bb
  %39 = load ptr, ptr %source_desc.addr, align 8, !dbg !1056
  %value76 = getelementptr inbounds %struct.acpi_object_integer, ptr %39, i32 0, i32 6, !dbg !1058
  %40 = load i64, ptr %value76, align 8, !dbg !1058
  %conv77 = trunc i64 %40 to i32, !dbg !1059
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.9, i32 noundef %conv77) #5, !dbg !1060
  br label %if.end83, !dbg !1061

if.else78:                                        ; preds = %sw.bb
  %41 = load ptr, ptr %source_desc.addr, align 8, !dbg !1062
  %value79 = getelementptr inbounds %struct.acpi_object_integer, ptr %41, i32 0, i32 6, !dbg !1062
  %42 = load i64, ptr %value79, align 8, !dbg !1062
  %shr = lshr i64 %42, 32, !dbg !1062
  %conv80 = trunc i64 %shr to i32, !dbg !1062
  %43 = load ptr, ptr %source_desc.addr, align 8, !dbg !1062
  %value81 = getelementptr inbounds %struct.acpi_object_integer, ptr %43, i32 0, i32 6, !dbg !1062
  %44 = load i64, ptr %value81, align 8, !dbg !1062
  %conv82 = trunc i64 %44 to i32, !dbg !1062
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.10, i32 noundef %conv80, i32 noundef %conv82) #5, !dbg !1064
  br label %if.end83

if.end83:                                         ; preds = %if.else78, %if.then75
  br label %sw.epilog166, !dbg !1065

sw.bb84:                                          ; preds = %if.end69
  %45 = load ptr, ptr %source_desc.addr, align 8, !dbg !1066
  %length85 = getelementptr inbounds %struct.acpi_object_buffer, ptr %45, i32 0, i32 6, !dbg !1067
  %46 = load i32, ptr %length85, align 8, !dbg !1067
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.11, i32 noundef %46) #5, !dbg !1068
  %47 = load ptr, ptr %source_desc.addr, align 8, !dbg !1069
  %pointer86 = getelementptr inbounds %struct.acpi_object_buffer, ptr %47, i32 0, i32 5, !dbg !1070
  %48 = load ptr, ptr %pointer86, align 8, !dbg !1070
  %49 = load ptr, ptr %source_desc.addr, align 8, !dbg !1071
  %length87 = getelementptr inbounds %struct.acpi_object_buffer, ptr %49, i32 0, i32 6, !dbg !1072
  %50 = load i32, ptr %length87, align 8, !dbg !1072
  %cmp88 = icmp ult i32 %50, 256, !dbg !1073
  br i1 %cmp88, label %cond.true, label %cond.false, !dbg !1074

cond.true:                                        ; preds = %sw.bb84
  %51 = load ptr, ptr %source_desc.addr, align 8, !dbg !1075
  %length90 = getelementptr inbounds %struct.acpi_object_buffer, ptr %51, i32 0, i32 6, !dbg !1076
  %52 = load i32, ptr %length90, align 8, !dbg !1076
  br label %cond.end, !dbg !1074

cond.false:                                       ; preds = %sw.bb84
  br label %cond.end, !dbg !1074

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %52, %cond.true ], [ 256, %cond.false ], !dbg !1074
  call void @acpi_ut_dump_buffer(ptr noundef %48, i32 noundef %cond, i32 noundef 1, i32 noundef 0) #5, !dbg !1077
  br label %sw.epilog166, !dbg !1078

sw.bb91:                                          ; preds = %if.end69
  %53 = load ptr, ptr %source_desc.addr, align 8, !dbg !1079
  %pointer92 = getelementptr inbounds %struct.acpi_object_string, ptr %53, i32 0, i32 5, !dbg !1080
  %54 = load ptr, ptr %pointer92, align 8, !dbg !1080
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.12, ptr noundef %54) #5, !dbg !1081
  br label %sw.epilog166, !dbg !1082

sw.bb93:                                          ; preds = %if.end69
  %55 = load ptr, ptr %source_desc.addr, align 8, !dbg !1083
  %count = getelementptr inbounds %struct.acpi_object_package, ptr %55, i32 0, i32 9, !dbg !1084
  %56 = load i32, ptr %count, align 4, !dbg !1084
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.13, i32 noundef %56) #5, !dbg !1085
  store i32 0, ptr %i, align 4, !dbg !1086
  br label %for.cond, !dbg !1088

for.cond:                                         ; preds = %for.inc, %sw.bb93
  %57 = load i32, ptr %i, align 4, !dbg !1089
  %58 = load ptr, ptr %source_desc.addr, align 8, !dbg !1091
  %count94 = getelementptr inbounds %struct.acpi_object_package, ptr %58, i32 0, i32 9, !dbg !1092
  %59 = load i32, ptr %count94, align 4, !dbg !1092
  %cmp95 = icmp ult i32 %57, %59, !dbg !1093
  br i1 %cmp95, label %for.body, label %for.end, !dbg !1094

for.body:                                         ; preds = %for.cond
  %60 = load ptr, ptr %source_desc.addr, align 8, !dbg !1095
  %elements = getelementptr inbounds %struct.acpi_object_package, ptr %60, i32 0, i32 6, !dbg !1097
  %61 = load ptr, ptr %elements, align 8, !dbg !1097
  %62 = load i32, ptr %i, align 4, !dbg !1098
  %idxprom = zext i32 %62 to i64, !dbg !1095
  %arrayidx = getelementptr ptr, ptr %61, i64 %idxprom, !dbg !1095
  %63 = load ptr, ptr %arrayidx, align 8, !dbg !1095
  %64 = load i32, ptr %level.addr, align 4, !dbg !1099
  %add = add i32 %64, 4, !dbg !1100
  %65 = load i32, ptr %i, align 4, !dbg !1101
  %add97 = add i32 %65, 1, !dbg !1102
  call void @acpi_ex_do_debug_object(ptr noundef %63, i32 noundef %add, i32 noundef %add97) #5, !dbg !1103
  br label %for.inc, !dbg !1104

for.inc:                                          ; preds = %for.body
  %66 = load i32, ptr %i, align 4, !dbg !1105
  %inc = add i32 %66, 1, !dbg !1105
  store i32 %inc, ptr %i, align 4, !dbg !1105
  br label %for.cond, !dbg !1106, !llvm.loop !1107

for.end:                                          ; preds = %for.cond
  br label %sw.epilog166, !dbg !1111

sw.bb98:                                          ; preds = %if.end69
  %67 = load ptr, ptr %source_desc.addr, align 8, !dbg !1112
  %call99 = call ptr @acpi_ut_get_reference_name(ptr noundef %67) #5, !dbg !1113
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.14, ptr noundef %call99) #5, !dbg !1114
  %68 = load ptr, ptr %source_desc.addr, align 8, !dbg !1115
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %68, i32 0, i32 5, !dbg !1116
  %69 = load i8, ptr %class, align 1, !dbg !1116
  %conv100 = zext i8 %69 to i32, !dbg !1115
  switch i32 %conv100, label %sw.default [
    i32 3, label %sw.bb101
    i32 4, label %sw.bb103
  ], !dbg !1117

sw.bb101:                                         ; preds = %sw.bb98
  %70 = load ptr, ptr %source_desc.addr, align 8, !dbg !1118
  %value102 = getelementptr inbounds %struct.acpi_object_reference, ptr %70, i32 0, i32 13, !dbg !1120
  %71 = load i32, ptr %value102, align 8, !dbg !1120
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.15, i32 noundef %71) #5, !dbg !1121
  br label %sw.epilog, !dbg !1122

sw.bb103:                                         ; preds = %sw.bb98
  %72 = load ptr, ptr %source_desc.addr, align 8, !dbg !1123
  %value104 = getelementptr inbounds %struct.acpi_object_reference, ptr %72, i32 0, i32 13, !dbg !1124
  %73 = load i32, ptr %value104, align 8, !dbg !1124
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.16, i32 noundef %73) #5, !dbg !1125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1126

sw.default:                                       ; preds = %sw.bb98
  br label %sw.epilog, !dbg !1127

sw.epilog:                                        ; preds = %sw.default, %sw.bb101
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.2) #5, !dbg !1128
  %74 = load ptr, ptr %source_desc.addr, align 8, !dbg !1129
  %node = getelementptr inbounds %struct.acpi_object_reference, ptr %74, i32 0, i32 9, !dbg !1131
  %75 = load ptr, ptr %node, align 8, !dbg !1131
  %tobool105 = icmp ne ptr %75, null, !dbg !1129
  br i1 %tobool105, label %if.then106, label %if.else127, !dbg !1132

if.then106:                                       ; preds = %sw.epilog
  %76 = load ptr, ptr %source_desc.addr, align 8, !dbg !1133
  %node107 = getelementptr inbounds %struct.acpi_object_reference, ptr %76, i32 0, i32 9, !dbg !1133
  %77 = load ptr, ptr %node107, align 8, !dbg !1133
  %descriptor_type108 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %77, i32 0, i32 1, !dbg !1133
  %78 = load i8, ptr %descriptor_type108, align 8, !dbg !1133
  %conv109 = zext i8 %78 to i32, !dbg !1133
  %cmp110 = icmp ne i32 %conv109, 15, !dbg !1136
  br i1 %cmp110, label %if.then112, label %if.else114, !dbg !1137

if.then112:                                       ; preds = %if.then106
  %79 = load ptr, ptr %source_desc.addr, align 8, !dbg !1138
  %node113 = getelementptr inbounds %struct.acpi_object_reference, ptr %79, i32 0, i32 9, !dbg !1140
  %80 = load ptr, ptr %node113, align 8, !dbg !1140
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.17, ptr noundef %80) #5, !dbg !1141
  br label %if.end126, !dbg !1142

if.else114:                                       ; preds = %if.then106
  %81 = load ptr, ptr %source_desc.addr, align 8, !dbg !1143
  %node115 = getelementptr inbounds %struct.acpi_object_reference, ptr %81, i32 0, i32 9, !dbg !1145
  %82 = load ptr, ptr %node115, align 8, !dbg !1145
  %83 = load ptr, ptr %source_desc.addr, align 8, !dbg !1146
  %node116 = getelementptr inbounds %struct.acpi_object_reference, ptr %83, i32 0, i32 9, !dbg !1147
  %84 = load ptr, ptr %node116, align 8, !dbg !1147
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %84, i32 0, i32 4, !dbg !1148
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !1149
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.18, ptr noundef %82, ptr noundef %arraydecay) #5, !dbg !1150
  %85 = load ptr, ptr %source_desc.addr, align 8, !dbg !1151
  %node117 = getelementptr inbounds %struct.acpi_object_reference, ptr %85, i32 0, i32 9, !dbg !1152
  %86 = load ptr, ptr %node117, align 8, !dbg !1152
  %type118 = getelementptr inbounds %struct.acpi_namespace_node, ptr %86, i32 0, i32 2, !dbg !1153
  %87 = load i8, ptr %type118, align 1, !dbg !1153
  %conv119 = zext i8 %87 to i32, !dbg !1154
  switch i32 %conv119, label %sw.default122 [
    i32 6, label %sw.bb120
    i32 13, label %sw.bb121
  ], !dbg !1155

sw.bb120:                                         ; preds = %if.else114
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.19) #5, !dbg !1156
  br label %sw.epilog125, !dbg !1158

sw.bb121:                                         ; preds = %if.else114
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.20) #5, !dbg !1159
  br label %sw.epilog125, !dbg !1160

sw.default122:                                    ; preds = %if.else114
  %88 = load ptr, ptr %source_desc.addr, align 8, !dbg !1161
  %node123 = getelementptr inbounds %struct.acpi_object_reference, ptr %88, i32 0, i32 9, !dbg !1162
  %89 = load ptr, ptr %node123, align 8, !dbg !1162
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %89, i32 0, i32 0, !dbg !1163
  %90 = load ptr, ptr %object, align 8, !dbg !1163
  %91 = load i32, ptr %level.addr, align 4, !dbg !1164
  %add124 = add i32 %91, 4, !dbg !1165
  call void @acpi_ex_do_debug_object(ptr noundef %90, i32 noundef %add124, i32 noundef 0) #5, !dbg !1166
  br label %sw.epilog125, !dbg !1167

sw.epilog125:                                     ; preds = %sw.default122, %sw.bb121, %sw.bb120
  br label %if.end126

if.end126:                                        ; preds = %sw.epilog125, %if.then112
  br label %if.end164, !dbg !1168

if.else127:                                       ; preds = %sw.epilog
  %92 = load ptr, ptr %source_desc.addr, align 8, !dbg !1169
  %object128 = getelementptr inbounds %struct.acpi_object_reference, ptr %92, i32 0, i32 8, !dbg !1171
  %93 = load ptr, ptr %object128, align 8, !dbg !1171
  %tobool129 = icmp ne ptr %93, null, !dbg !1169
  br i1 %tobool129, label %if.then130, label %if.end163, !dbg !1172

if.then130:                                       ; preds = %if.else127
  %94 = load ptr, ptr %source_desc.addr, align 8, !dbg !1173
  %object131 = getelementptr inbounds %struct.acpi_object_reference, ptr %94, i32 0, i32 8, !dbg !1173
  %95 = load ptr, ptr %object131, align 8, !dbg !1173
  %descriptor_type132 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %95, i32 0, i32 1, !dbg !1173
  %96 = load i8, ptr %descriptor_type132, align 8, !dbg !1173
  %conv133 = zext i8 %96 to i32, !dbg !1173
  %cmp134 = icmp eq i32 %conv133, 15, !dbg !1176
  br i1 %cmp134, label %if.then136, label %if.else139, !dbg !1177

if.then136:                                       ; preds = %if.then130
  %97 = load ptr, ptr %source_desc.addr, align 8, !dbg !1178
  %object137 = getelementptr inbounds %struct.acpi_object_reference, ptr %97, i32 0, i32 8, !dbg !1178
  %98 = load ptr, ptr %object137, align 8, !dbg !1178
  %99 = ptrtoint ptr %98 to i64, !dbg !1178
  %100 = inttoptr i64 %99 to ptr, !dbg !1178
  %101 = load i32, ptr %level.addr, align 4, !dbg !1180
  %add138 = add i32 %101, 4, !dbg !1181
  call void @acpi_ex_do_debug_object(ptr noundef %100, i32 noundef %add138, i32 noundef 0) #5, !dbg !1182
  br label %if.end162, !dbg !1183

if.else139:                                       ; preds = %if.then130
  %102 = load ptr, ptr %source_desc.addr, align 8, !dbg !1184
  %object140 = getelementptr inbounds %struct.acpi_object_reference, ptr %102, i32 0, i32 8, !dbg !1186
  %103 = load ptr, ptr %object140, align 8, !dbg !1186
  store ptr %103, ptr %object_desc, align 8, !dbg !1187
  %104 = load ptr, ptr %source_desc.addr, align 8, !dbg !1188
  %value141 = getelementptr inbounds %struct.acpi_object_reference, ptr %104, i32 0, i32 13, !dbg !1189
  %105 = load i32, ptr %value141, align 8, !dbg !1189
  store i32 %105, ptr %value, align 4, !dbg !1190
  %106 = load ptr, ptr %object_desc, align 8, !dbg !1191
  %type142 = getelementptr inbounds %struct.acpi_object_common, ptr %106, i32 0, i32 2, !dbg !1192
  %107 = load i8, ptr %type142, align 1, !dbg !1192
  %conv143 = zext i8 %107 to i32, !dbg !1191
  switch i32 %conv143, label %sw.default158 [
    i32 3, label %sw.bb144
    i32 2, label %sw.bb146
    i32 4, label %sw.bb151
  ], !dbg !1193

sw.bb144:                                         ; preds = %if.else139
  %108 = load i32, ptr %value, align 4, !dbg !1194
  %109 = load ptr, ptr %source_desc.addr, align 8, !dbg !1196
  %index_pointer = getelementptr inbounds %struct.acpi_object_reference, ptr %109, i32 0, i32 11, !dbg !1197
  %110 = load ptr, ptr %index_pointer, align 8, !dbg !1197
  %111 = load i8, ptr %110, align 1, !dbg !1198
  %conv145 = zext i8 %111 to i32, !dbg !1198
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.21, i32 noundef %108, i32 noundef %conv145) #5, !dbg !1199
  br label %sw.epilog161, !dbg !1200

sw.bb146:                                         ; preds = %if.else139
  %112 = load i32, ptr %value, align 4, !dbg !1201
  %113 = load ptr, ptr %source_desc.addr, align 8, !dbg !1202
  %index_pointer147 = getelementptr inbounds %struct.acpi_object_reference, ptr %113, i32 0, i32 11, !dbg !1203
  %114 = load ptr, ptr %index_pointer147, align 8, !dbg !1203
  %115 = load i8, ptr %114, align 1, !dbg !1204
  %conv148 = zext i8 %115 to i32, !dbg !1204
  %116 = load ptr, ptr %source_desc.addr, align 8, !dbg !1205
  %index_pointer149 = getelementptr inbounds %struct.acpi_object_reference, ptr %116, i32 0, i32 11, !dbg !1206
  %117 = load ptr, ptr %index_pointer149, align 8, !dbg !1206
  %118 = load i8, ptr %117, align 1, !dbg !1207
  %conv150 = zext i8 %118 to i32, !dbg !1207
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.22, i32 noundef %112, i32 noundef %conv148, i32 noundef %conv150) #5, !dbg !1208
  br label %sw.epilog161, !dbg !1209

sw.bb151:                                         ; preds = %if.else139
  %119 = load i32, ptr %value, align 4, !dbg !1210
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.23, i32 noundef %119) #5, !dbg !1211
  %120 = load ptr, ptr %source_desc.addr, align 8, !dbg !1212
  %where = getelementptr inbounds %struct.acpi_object_reference, ptr %120, i32 0, i32 10, !dbg !1214
  %121 = load ptr, ptr %where, align 8, !dbg !1214
  %122 = load ptr, ptr %121, align 8, !dbg !1215
  %tobool152 = icmp ne ptr %122, null, !dbg !1216
  br i1 %tobool152, label %if.else154, label %if.then153, !dbg !1217

if.then153:                                       ; preds = %sw.bb151
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.24) #5, !dbg !1218
  br label %if.end157, !dbg !1220

if.else154:                                       ; preds = %sw.bb151
  %123 = load ptr, ptr %source_desc.addr, align 8, !dbg !1221
  %where155 = getelementptr inbounds %struct.acpi_object_reference, ptr %123, i32 0, i32 10, !dbg !1223
  %124 = load ptr, ptr %where155, align 8, !dbg !1223
  %125 = load ptr, ptr %124, align 8, !dbg !1224
  %126 = load i32, ptr %level.addr, align 4, !dbg !1225
  %add156 = add i32 %126, 4, !dbg !1226
  call void @acpi_ex_do_debug_object(ptr noundef %125, i32 noundef %add156, i32 noundef 0) #5, !dbg !1227
  br label %if.end157

if.end157:                                        ; preds = %if.else154, %if.then153
  br label %sw.epilog161, !dbg !1228

sw.default158:                                    ; preds = %if.else139
  %127 = load ptr, ptr %object_desc, align 8, !dbg !1229
  %type159 = getelementptr inbounds %struct.acpi_object_common, ptr %127, i32 0, i32 2, !dbg !1230
  %128 = load i8, ptr %type159, align 1, !dbg !1230
  %conv160 = zext i8 %128 to i32, !dbg !1229
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.25, i32 noundef %conv160) #5, !dbg !1231
  br label %sw.epilog161, !dbg !1232

sw.epilog161:                                     ; preds = %sw.default158, %if.end157, %sw.bb146, %sw.bb144
  br label %if.end162

if.end162:                                        ; preds = %sw.epilog161, %if.then136
  br label %if.end163, !dbg !1233

if.end163:                                        ; preds = %if.end162, %if.else127
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.end126
  br label %sw.epilog166, !dbg !1234

sw.default165:                                    ; preds = %if.end69
  %129 = load ptr, ptr %source_desc.addr, align 8, !dbg !1235
  call void (ptr, ...) @acpi_os_printf(ptr noundef @.str.26, ptr noundef %129) #5, !dbg !1236
  br label %sw.epilog166, !dbg !1237

sw.epilog166:                                     ; preds = %sw.default165, %if.end164, %for.end, %sw.bb91, %cond.end, %if.end83
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1238

cleanup:                                          ; preds = %sw.epilog166, %sw.bb103, %if.else68, %if.then64, %if.then57, %if.then36, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #4, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 8, ptr %object_desc) #4, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 4, ptr %timer) #4, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !1239
  ret void, !dbg !1239
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1240 dso_local void @acpi_os_printf(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1246 dso_local i64 @acpi_os_get_timer() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1249 dso_local ptr @acpi_ut_get_object_type_name(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1253 dso_local zeroext i8 @acpi_ut_valid_internal_object(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1256 dso_local ptr @acpi_ut_get_type_name(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1260 dso_local void @acpi_ut_dump_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1263 dso_local ptr @acpi_ut_get_reference_name(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!107}
!llvm.module.flags = !{!902, !903, !904, !905, !906, !907, !908, !909}
!llvm.ident = !{!910}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/acpica/exdebug.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "94a8e771c3b285168fd5cc017d958943")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 2)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 26)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !3, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 16)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 8)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !26, isLocal: true, isDefinition: true)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 15)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 4)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !36, isLocal: true, isDefinition: true)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 30)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 14)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !2, line: 139, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 9)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !41, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 10)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 159, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 6)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 29)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 177, type: !58, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !58, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 18)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 210, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 34)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 17)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !21, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 227, type: !41, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 258, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 22)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 267, type: !63, isLocal: true, isDefinition: true)
!96 = !DIGlobalVariableExpression(var: !97, expr: !DIExpression())
!97 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !26, isLocal: true, isDefinition: true)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 280, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 33)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !77, isLocal: true, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !2, line: 301, type: !82, isLocal: true, isDefinition: true)
!107 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.exdebug.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22exdebug\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/exdebug.ll drivers/acpi/acpica/exdebug.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !108, retainedTypes: !121, globals: !901, splitDebugInlining: false, nameTableKind: None)
!108 = !{!109}
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !110, line: 323, baseType: !111, size: 32, elements: !112)
!110 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!111 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120}
!113 = !DIEnumerator(name: "ACPI_REFCLASS_LOCAL", value: 0)
!114 = !DIEnumerator(name: "ACPI_REFCLASS_ARG", value: 1)
!115 = !DIEnumerator(name: "ACPI_REFCLASS_REFOF", value: 2)
!116 = !DIEnumerator(name: "ACPI_REFCLASS_INDEX", value: 3)
!117 = !DIEnumerator(name: "ACPI_REFCLASS_TABLE", value: 4)
!118 = !DIEnumerator(name: "ACPI_REFCLASS_NAME", value: 5)
!119 = !DIEnumerator(name: "ACPI_REFCLASS_DEBUG", value: 6)
!120 = !DIEnumerator(name: "ACPI_REFCLASS_MAX", value: 6)
!121 = !{!122, !129, !178, !194, !164, !143, !898}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !110, line: 434, size: 1600, elements: !124)
!124 = !{!125, !136, !896, !897}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !123, file: !110, line: 435, baseType: !126, size: 128)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !110, line: 429, size: 128, elements: !127)
!127 = !{!128, !130}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !126, file: !110, line: 430, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !126, file: !110, line: 431, baseType: !131, size: 8, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !132, line: 17, baseType: !133)
!132 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !134, line: 21, baseType: !135)
!134 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!135 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !123, file: !110, line: 436, baseType: !137, size: 576)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !110, line: 369, size: 576, elements: !138)
!138 = !{!139, !151, !167, !180, !214, !228, !237, !547, !564, !580, !591, !669, !681, !695, !705, !723, !745, !764, !783, !802, !815, !842, !859, !872, !886, !895}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !137, file: !110, line: 370, baseType: !140, size: 128)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !110, line: 73, size: 128, elements: !141)
!141 = !{!142, !144, !145, !146, !150}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !140, file: !110, line: 74, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !140, file: !110, line: 74, baseType: !131, size: 8, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !140, file: !110, line: 74, baseType: !131, size: 8, offset: 72)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !140, file: !110, line: 74, baseType: !147, size: 16, offset: 80)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !132, line: 19, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !134, line: 24, baseType: !149)
!149 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !110, line: 74, baseType: !131, size: 8, offset: 96)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !137, file: !110, line: 371, baseType: !152, size: 192)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !110, line: 76, size: 192, elements: !153)
!153 = !{!154, !155, !156, !157, !158, !159, !163}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !152, file: !110, line: 77, baseType: !143, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !152, file: !110, line: 77, baseType: !131, size: 8, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !110, line: 77, baseType: !131, size: 8, offset: 72)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !152, file: !110, line: 77, baseType: !147, size: 16, offset: 80)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !110, line: 77, baseType: !131, size: 8, offset: 96)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !152, file: !110, line: 77, baseType: !160, size: 24, offset: 104)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 24, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 3)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !152, file: !110, line: 78, baseType: !164, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !132, line: 23, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !134, line: 31, baseType: !166)
!166 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !137, file: !110, line: 372, baseType: !168, size: 256)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !110, line: 93, size: 256, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !177}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !168, file: !110, line: 94, baseType: !143, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !168, file: !110, line: 94, baseType: !131, size: 8, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !168, file: !110, line: 94, baseType: !131, size: 8, offset: 72)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !168, file: !110, line: 94, baseType: !147, size: 16, offset: 80)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !168, file: !110, line: 94, baseType: !131, size: 8, offset: 96)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !168, file: !110, line: 94, baseType: !176, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !168, file: !110, line: 94, baseType: !178, size: 32, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !132, line: 21, baseType: !179)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !134, line: 27, baseType: !111)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !137, file: !110, line: 373, baseType: !181, size: 384)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !110, line: 97, size: 384, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !190, !191, !192, !193}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !181, file: !110, line: 98, baseType: !143, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !181, file: !110, line: 98, baseType: !131, size: 8, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !181, file: !110, line: 98, baseType: !131, size: 8, offset: 72)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !181, file: !110, line: 98, baseType: !147, size: 16, offset: 80)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !110, line: 98, baseType: !131, size: 8, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !181, file: !110, line: 98, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !181, file: !110, line: 98, baseType: !178, size: 32, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !181, file: !110, line: 99, baseType: !178, size: 32, offset: 224)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !181, file: !110, line: 100, baseType: !189, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !181, file: !110, line: 101, baseType: !194, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !196, line: 133, size: 384, elements: !197)
!196 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!197 = !{!198, !199, !200, !201, !202, !208, !209, !210, !211}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !195, file: !196, line: 134, baseType: !143, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !195, file: !196, line: 135, baseType: !131, size: 8, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !195, file: !196, line: 136, baseType: !131, size: 8, offset: 72)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !195, file: !196, line: 137, baseType: !147, size: 16, offset: 80)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !195, file: !196, line: 138, baseType: !203, size: 32, offset: 96)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !204, line: 328, size: 32, elements: !205)
!204 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!205 = !{!206, !207}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !203, file: !204, line: 329, baseType: !178, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !203, file: !204, line: 330, baseType: !31, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !195, file: !196, line: 139, baseType: !194, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !195, file: !196, line: 140, baseType: !194, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !195, file: !196, line: 141, baseType: !194, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !195, file: !196, line: 142, baseType: !212, size: 16, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !213, line: 445, baseType: !147)
!213 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!214 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !137, file: !110, line: 374, baseType: !215, size: 384)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !110, line: 104, size: 384, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !225, !226, !227}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !215, file: !110, line: 105, baseType: !143, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !215, file: !110, line: 105, baseType: !131, size: 8, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !215, file: !110, line: 105, baseType: !131, size: 8, offset: 72)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !215, file: !110, line: 105, baseType: !147, size: 16, offset: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !110, line: 105, baseType: !131, size: 8, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !215, file: !110, line: 105, baseType: !194, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !215, file: !110, line: 106, baseType: !224, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !215, file: !110, line: 107, baseType: !189, size: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !215, file: !110, line: 108, baseType: !178, size: 32, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !215, file: !110, line: 109, baseType: !178, size: 32, offset: 352)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !137, file: !110, line: 375, baseType: !229, size: 192)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !110, line: 118, size: 192, elements: !230)
!230 = !{!231, !232, !233, !234, !235, !236}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !229, file: !110, line: 119, baseType: !143, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !229, file: !110, line: 119, baseType: !131, size: 8, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !229, file: !110, line: 119, baseType: !131, size: 8, offset: 72)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !229, file: !110, line: 119, baseType: !147, size: 16, offset: 80)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !229, file: !110, line: 119, baseType: !131, size: 8, offset: 96)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !229, file: !110, line: 119, baseType: !129, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !137, file: !110, line: 376, baseType: !238, size: 448)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !110, line: 144, size: 448, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !544, !545, !546}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !238, file: !110, line: 145, baseType: !143, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !238, file: !110, line: 145, baseType: !131, size: 8, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !238, file: !110, line: 145, baseType: !131, size: 8, offset: 72)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !238, file: !110, line: 145, baseType: !147, size: 16, offset: 80)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !110, line: 145, baseType: !131, size: 8, offset: 96)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !238, file: !110, line: 145, baseType: !131, size: 8, offset: 104)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !238, file: !110, line: 146, baseType: !131, size: 8, offset: 112)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !238, file: !110, line: 147, baseType: !131, size: 8, offset: 120)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !238, file: !110, line: 148, baseType: !143, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !238, file: !110, line: 149, baseType: !143, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !238, file: !110, line: 150, baseType: !189, size: 64, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !238, file: !110, line: 154, baseType: !252, size: 64, offset: 320)
!252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !110, line: 151, size: 64, elements: !253)
!253 = !{!254, !543}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !252, file: !110, line: 152, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !196, line: 248, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !213, line: 421, baseType: !178)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !262, line: 37, size: 9024, elements: !263)
!262 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!263 = !{!264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !491, !492, !493, !494, !495, !499, !501, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !526, !527, !528, !529, !530, !531, !532, !533, !535, !541}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !261, file: !262, line: 38, baseType: !260, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !261, file: !262, line: 39, baseType: !131, size: 8, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !261, file: !262, line: 40, baseType: !131, size: 8, offset: 72)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !261, file: !262, line: 41, baseType: !147, size: 16, offset: 80)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !261, file: !262, line: 42, baseType: !131, size: 8, offset: 96)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !261, file: !262, line: 43, baseType: !131, size: 8, offset: 104)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !261, file: !262, line: 44, baseType: !131, size: 8, offset: 112)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !261, file: !262, line: 45, baseType: !212, size: 16, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !261, file: !262, line: 46, baseType: !131, size: 8, offset: 144)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !261, file: !262, line: 47, baseType: !131, size: 8, offset: 152)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !261, file: !262, line: 48, baseType: !131, size: 8, offset: 160)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !261, file: !262, line: 49, baseType: !131, size: 8, offset: 168)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !261, file: !262, line: 50, baseType: !131, size: 8, offset: 176)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !261, file: !262, line: 51, baseType: !131, size: 8, offset: 184)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !261, file: !262, line: 52, baseType: !131, size: 8, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !261, file: !262, line: 53, baseType: !131, size: 8, offset: 200)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !261, file: !262, line: 54, baseType: !189, size: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !261, file: !262, line: 55, baseType: !178, size: 32, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !261, file: !262, line: 56, baseType: !178, size: 32, offset: 352)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !261, file: !262, line: 57, baseType: !178, size: 32, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !261, file: !262, line: 58, baseType: !178, size: 32, offset: 416)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !261, file: !262, line: 60, baseType: !286, size: 640, offset: 448)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !196, line: 909, size: 640, elements: !287)
!287 = !{!288, !289, !290, !291, !292, !293, !374, !375, !489, !490}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !286, file: !196, line: 910, baseType: !189, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !286, file: !196, line: 911, baseType: !189, size: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !286, file: !196, line: 912, baseType: !189, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !286, file: !196, line: 913, baseType: !189, size: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !286, file: !196, line: 914, baseType: !189, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !286, file: !196, line: 915, baseType: !294, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !196, line: 891, size: 1600, elements: !296)
!296 = !{!297, !317, !333}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !295, file: !196, line: 892, baseType: !298, size: 448)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !196, line: 844, size: 448, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307, !316}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !298, file: !196, line: 845, baseType: !294, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !298, file: !196, line: 845, baseType: !131, size: 8, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !196, line: 845, baseType: !131, size: 8, offset: 72)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !298, file: !196, line: 845, baseType: !147, size: 16, offset: 80)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !298, file: !196, line: 845, baseType: !189, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !298, file: !196, line: 845, baseType: !294, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !298, file: !196, line: 845, baseType: !194, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !298, file: !196, line: 845, baseType: !308, size: 64, offset: 320)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !196, line: 732, size: 64, elements: !309)
!309 = !{!310, !311, !312, !313, !314, !315}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !308, file: !196, line: 733, baseType: !164, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !308, file: !196, line: 734, baseType: !178, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !308, file: !196, line: 735, baseType: !176, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !308, file: !196, line: 736, baseType: !189, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !196, line: 737, baseType: !176, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !308, file: !196, line: 738, baseType: !294, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !298, file: !196, line: 845, baseType: !131, size: 8, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !295, file: !196, line: 893, baseType: !318, size: 640)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !196, line: 851, size: 640, elements: !319)
!319 = !{!320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !318, file: !196, line: 852, baseType: !294, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !318, file: !196, line: 852, baseType: !131, size: 8, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !196, line: 852, baseType: !131, size: 8, offset: 72)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !318, file: !196, line: 852, baseType: !147, size: 16, offset: 80)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !318, file: !196, line: 852, baseType: !189, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !196, line: 852, baseType: !294, size: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !318, file: !196, line: 852, baseType: !194, size: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !318, file: !196, line: 852, baseType: !308, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !318, file: !196, line: 852, baseType: !131, size: 8, offset: 384)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !318, file: !196, line: 852, baseType: !176, size: 64, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !318, file: !196, line: 853, baseType: !189, size: 64, offset: 512)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !318, file: !196, line: 854, baseType: !178, size: 32, offset: 576)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !196, line: 855, baseType: !178, size: 32, offset: 608)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !295, file: !196, line: 894, baseType: !334, size: 1600)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !196, line: 862, size: 1600, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !334, file: !196, line: 863, baseType: !294, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !334, file: !196, line: 863, baseType: !131, size: 8, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !196, line: 863, baseType: !131, size: 8, offset: 72)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !334, file: !196, line: 863, baseType: !147, size: 16, offset: 80)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !334, file: !196, line: 863, baseType: !189, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !196, line: 863, baseType: !294, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !334, file: !196, line: 863, baseType: !194, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !334, file: !196, line: 863, baseType: !308, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !334, file: !196, line: 863, baseType: !131, size: 8, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !334, file: !196, line: 863, baseType: !294, size: 64, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !334, file: !196, line: 864, baseType: !294, size: 64, offset: 512)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !334, file: !196, line: 865, baseType: !176, size: 64, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !334, file: !196, line: 866, baseType: !131, size: 8, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !334, file: !196, line: 867, baseType: !176, size: 64, offset: 704)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !334, file: !196, line: 868, baseType: !176, size: 64, offset: 768)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !334, file: !196, line: 869, baseType: !176, size: 64, offset: 832)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !334, file: !196, line: 870, baseType: !31, size: 32, offset: 896)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !334, file: !196, line: 871, baseType: !178, size: 32, offset: 928)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !334, file: !196, line: 872, baseType: !178, size: 32, offset: 960)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !334, file: !196, line: 873, baseType: !178, size: 32, offset: 992)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !334, file: !196, line: 874, baseType: !178, size: 32, offset: 1024)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !334, file: !196, line: 875, baseType: !178, size: 32, offset: 1056)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !334, file: !196, line: 876, baseType: !178, size: 32, offset: 1088)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !334, file: !196, line: 877, baseType: !178, size: 32, offset: 1120)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !334, file: !196, line: 878, baseType: !178, size: 32, offset: 1152)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !334, file: !196, line: 879, baseType: !178, size: 32, offset: 1184)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !334, file: !196, line: 880, baseType: !178, size: 32, offset: 1216)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !334, file: !196, line: 881, baseType: !178, size: 32, offset: 1248)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !334, file: !196, line: 882, baseType: !178, size: 32, offset: 1280)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !334, file: !196, line: 883, baseType: !178, size: 32, offset: 1312)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !334, file: !196, line: 884, baseType: !147, size: 16, offset: 1344)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !334, file: !196, line: 885, baseType: !131, size: 8, offset: 1360)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !334, file: !196, line: 886, baseType: !131, size: 8, offset: 1368)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !334, file: !196, line: 887, baseType: !131, size: 8, offset: 1376)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !334, file: !196, line: 888, baseType: !371, size: 160, offset: 1384)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 20)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !286, file: !196, line: 916, baseType: !194, size: 64, offset: 384)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !286, file: !196, line: 917, baseType: !376, size: 64, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !196, line: 679, size: 640, elements: !378)
!378 = !{!379, !387, !400, !409, !418, !431, !445, !457, !467}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !377, file: !196, line: 680, baseType: !380, size: 128)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !196, line: 575, size: 128, elements: !381)
!381 = !{!382, !383, !384, !385, !386}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !196, line: 576, baseType: !129, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !380, file: !196, line: 576, baseType: !131, size: 8, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !380, file: !196, line: 576, baseType: !131, size: 8, offset: 72)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !380, file: !196, line: 576, baseType: !147, size: 16, offset: 80)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !380, file: !196, line: 576, baseType: !147, size: 16, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !377, file: !196, line: 681, baseType: !388, size: 384)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !196, line: 604, size: 384, elements: !389)
!389 = !{!390, !391, !392, !393, !394, !395, !396, !397, !398, !399}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !388, file: !196, line: 605, baseType: !129, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !388, file: !196, line: 605, baseType: !131, size: 8, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !196, line: 605, baseType: !131, size: 8, offset: 72)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !388, file: !196, line: 605, baseType: !147, size: 16, offset: 80)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !388, file: !196, line: 605, baseType: !147, size: 16, offset: 96)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !388, file: !196, line: 606, baseType: !147, size: 16, offset: 112)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !388, file: !196, line: 607, baseType: !294, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !388, file: !196, line: 608, baseType: !189, size: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !388, file: !196, line: 609, baseType: !189, size: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !388, file: !196, line: 610, baseType: !164, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !377, file: !196, line: 682, baseType: !401, size: 192)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !196, line: 582, size: 192, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !401, file: !196, line: 583, baseType: !129, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !401, file: !196, line: 583, baseType: !131, size: 8, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !401, file: !196, line: 583, baseType: !131, size: 8, offset: 72)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !401, file: !196, line: 583, baseType: !147, size: 16, offset: 80)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !401, file: !196, line: 583, baseType: !147, size: 16, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !401, file: !196, line: 584, baseType: !143, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !377, file: !196, line: 683, baseType: !410, size: 192)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !196, line: 616, size: 192, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !410, file: !196, line: 617, baseType: !129, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !410, file: !196, line: 617, baseType: !131, size: 8, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !410, file: !196, line: 617, baseType: !131, size: 8, offset: 72)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !410, file: !196, line: 617, baseType: !147, size: 16, offset: 80)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !410, file: !196, line: 617, baseType: !147, size: 16, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !410, file: !196, line: 618, baseType: !194, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !377, file: !196, line: 684, baseType: !419, size: 448)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !196, line: 621, size: 448, elements: !420)
!420 = !{!421, !422, !423, !424, !425, !426, !427, !428, !429, !430}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !419, file: !196, line: 622, baseType: !129, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !419, file: !196, line: 622, baseType: !131, size: 8, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !419, file: !196, line: 622, baseType: !131, size: 8, offset: 72)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !419, file: !196, line: 622, baseType: !147, size: 16, offset: 80)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !419, file: !196, line: 622, baseType: !147, size: 16, offset: 96)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !419, file: !196, line: 623, baseType: !178, size: 32, offset: 128)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !419, file: !196, line: 624, baseType: !294, size: 64, offset: 192)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !419, file: !196, line: 625, baseType: !189, size: 64, offset: 256)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !419, file: !196, line: 626, baseType: !189, size: 64, offset: 320)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !419, file: !196, line: 627, baseType: !178, size: 32, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !377, file: !196, line: 685, baseType: !432, size: 512)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !196, line: 590, size: 512, elements: !433)
!433 = !{!434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !432, file: !196, line: 591, baseType: !129, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !432, file: !196, line: 591, baseType: !131, size: 8, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !432, file: !196, line: 591, baseType: !131, size: 8, offset: 72)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !432, file: !196, line: 591, baseType: !147, size: 16, offset: 80)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !432, file: !196, line: 591, baseType: !147, size: 16, offset: 96)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !432, file: !196, line: 592, baseType: !178, size: 32, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !432, file: !196, line: 593, baseType: !143, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !432, file: !196, line: 594, baseType: !143, size: 64, offset: 256)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !432, file: !196, line: 595, baseType: !260, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !432, file: !196, line: 596, baseType: !129, size: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !432, file: !196, line: 597, baseType: !178, size: 32, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !377, file: !196, line: 686, baseType: !446, size: 320)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !196, line: 634, size: 320, elements: !447)
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !456}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !446, file: !196, line: 635, baseType: !129, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !446, file: !196, line: 635, baseType: !131, size: 8, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !446, file: !196, line: 635, baseType: !131, size: 8, offset: 72)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !446, file: !196, line: 635, baseType: !147, size: 16, offset: 80)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !446, file: !196, line: 635, baseType: !147, size: 16, offset: 96)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !446, file: !196, line: 636, baseType: !131, size: 8, offset: 112)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !446, file: !196, line: 637, baseType: !260, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !446, file: !196, line: 638, baseType: !143, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !446, file: !196, line: 639, baseType: !164, size: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !377, file: !196, line: 687, baseType: !458, size: 640)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !196, line: 646, size: 640, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !458, file: !196, line: 647, baseType: !129, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !458, file: !196, line: 647, baseType: !131, size: 8, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !196, line: 647, baseType: !131, size: 8, offset: 72)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !458, file: !196, line: 647, baseType: !147, size: 16, offset: 80)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !458, file: !196, line: 647, baseType: !147, size: 16, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !458, file: !196, line: 648, baseType: !466, size: 512, offset: 128)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 512, elements: !22)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !377, file: !196, line: 688, baseType: !468, size: 320)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !196, line: 669, size: 320, elements: !469)
!469 = !{!470, !471, !472, !473, !474, !475, !476, !477, !478}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !196, line: 670, baseType: !129, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !468, file: !196, line: 670, baseType: !131, size: 8, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !468, file: !196, line: 670, baseType: !131, size: 8, offset: 72)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !468, file: !196, line: 670, baseType: !147, size: 16, offset: 80)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !468, file: !196, line: 670, baseType: !147, size: 16, offset: 96)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !468, file: !196, line: 671, baseType: !131, size: 8, offset: 112)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !468, file: !196, line: 672, baseType: !194, size: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !468, file: !196, line: 673, baseType: !143, size: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !468, file: !196, line: 674, baseType: !479, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !196, line: 660, size: 128, elements: !481)
!481 = !{!482, !488}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !480, file: !196, line: 661, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !213, line: 1061, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !487, !178, !129}
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !213, line: 424, baseType: !129)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !480, file: !196, line: 662, baseType: !129, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !286, file: !196, line: 918, baseType: !294, size: 64, offset: 512)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !286, file: !196, line: 919, baseType: !178, size: 32, offset: 576)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !261, file: !262, line: 61, baseType: !178, size: 32, offset: 1088)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !261, file: !262, line: 62, baseType: !178, size: 32, offset: 1120)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !261, file: !262, line: 63, baseType: !147, size: 16, offset: 1152)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !261, file: !262, line: 64, baseType: !131, size: 8, offset: 1168)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !261, file: !262, line: 66, baseType: !496, size: 2688, offset: 1216)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 2688, elements: !497)
!497 = !{!498}
!498 = !DISubrange(count: 7)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !261, file: !262, line: 67, baseType: !500, size: 3072, offset: 3904)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 3072, elements: !22)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !261, file: !262, line: 68, baseType: !502, size: 576, offset: 6976)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 576, elements: !47)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !261, file: !262, line: 69, baseType: !224, size: 64, offset: 7552)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !261, file: !262, line: 71, baseType: !189, size: 64, offset: 7616)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !261, file: !262, line: 72, baseType: !224, size: 64, offset: 7680)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !261, file: !262, line: 73, baseType: !376, size: 64, offset: 7744)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !261, file: !262, line: 74, baseType: !194, size: 64, offset: 7808)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !261, file: !262, line: 75, baseType: !143, size: 64, offset: 7872)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !261, file: !262, line: 76, baseType: !194, size: 64, offset: 7936)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !261, file: !262, line: 77, baseType: !294, size: 64, offset: 8000)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !261, file: !262, line: 78, baseType: !143, size: 64, offset: 8064)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !261, file: !262, line: 79, baseType: !194, size: 64, offset: 8128)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !261, file: !262, line: 80, baseType: !176, size: 64, offset: 8192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !261, file: !262, line: 81, baseType: !294, size: 64, offset: 8256)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !261, file: !262, line: 82, baseType: !516, size: 64, offset: 8320)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !196, line: 718, size: 128, elements: !519)
!519 = !{!520, !521, !522, !523, !524, !525}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !518, file: !196, line: 722, baseType: !178, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !518, file: !196, line: 723, baseType: !178, size: 32, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !518, file: !196, line: 724, baseType: !147, size: 16, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !518, file: !196, line: 725, baseType: !131, size: 8, offset: 80)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !518, file: !196, line: 726, baseType: !131, size: 8, offset: 88)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !518, file: !196, line: 727, baseType: !131, size: 8, offset: 96)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !261, file: !262, line: 83, baseType: !294, size: 64, offset: 8384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !261, file: !262, line: 84, baseType: !143, size: 64, offset: 8448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !261, file: !262, line: 85, baseType: !376, size: 64, offset: 8512)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !261, file: !262, line: 86, baseType: !143, size: 64, offset: 8576)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !261, file: !262, line: 87, baseType: !376, size: 64, offset: 8640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !261, file: !262, line: 88, baseType: !294, size: 64, offset: 8704)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !261, file: !262, line: 89, baseType: !294, size: 64, offset: 8768)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !261, file: !262, line: 90, baseType: !534, size: 64, offset: 8832)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !261, file: !262, line: 91, baseType: !536, size: 64, offset: 8896)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !196, line: 652, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!259, !260, !540}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !261, file: !262, line: 92, baseType: !542, size: 64, offset: 8960)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !196, line: 656, baseType: !256)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !252, file: !110, line: 153, baseType: !143, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !238, file: !110, line: 156, baseType: !178, size: 32, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !238, file: !110, line: 157, baseType: !212, size: 16, offset: 416)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !238, file: !110, line: 158, baseType: !131, size: 8, offset: 432)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !137, file: !110, line: 377, baseType: !548, size: 576)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !110, line: 122, size: 576, elements: !549)
!549 = !{!550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !548, file: !110, line: 123, baseType: !143, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !548, file: !110, line: 123, baseType: !131, size: 8, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !548, file: !110, line: 123, baseType: !131, size: 8, offset: 72)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !548, file: !110, line: 123, baseType: !147, size: 16, offset: 80)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !548, file: !110, line: 123, baseType: !131, size: 8, offset: 96)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !548, file: !110, line: 123, baseType: !131, size: 8, offset: 104)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !548, file: !110, line: 124, baseType: !147, size: 16, offset: 112)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !548, file: !110, line: 125, baseType: !129, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !548, file: !110, line: 126, baseType: !164, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !548, file: !110, line: 127, baseType: !534, size: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !548, file: !110, line: 128, baseType: !143, size: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !548, file: !110, line: 129, baseType: !143, size: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !548, file: !110, line: 130, baseType: !194, size: 64, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !548, file: !110, line: 131, baseType: !131, size: 8, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !137, file: !110, line: 378, baseType: !565, size: 512)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !110, line: 134, size: 512, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !578, !579}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !565, file: !110, line: 135, baseType: !143, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !565, file: !110, line: 135, baseType: !131, size: 8, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !565, file: !110, line: 135, baseType: !131, size: 8, offset: 72)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !565, file: !110, line: 135, baseType: !147, size: 16, offset: 80)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !110, line: 135, baseType: !131, size: 8, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !565, file: !110, line: 135, baseType: !131, size: 8, offset: 104)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !565, file: !110, line: 136, baseType: !194, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !565, file: !110, line: 137, baseType: !143, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !565, file: !110, line: 138, baseType: !143, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !565, file: !110, line: 139, baseType: !577, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !213, line: 129, baseType: !164)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !565, file: !110, line: 140, baseType: !178, size: 32, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !565, file: !110, line: 141, baseType: !129, size: 64, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !137, file: !110, line: 379, baseType: !581, size: 320)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !110, line: 185, size: 320, elements: !582)
!582 = !{!583, !584, !585, !586, !587, !588, !590}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !581, file: !110, line: 186, baseType: !143, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !581, file: !110, line: 186, baseType: !131, size: 8, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !581, file: !110, line: 186, baseType: !131, size: 8, offset: 72)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !581, file: !110, line: 186, baseType: !147, size: 16, offset: 80)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !581, file: !110, line: 186, baseType: !131, size: 8, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !581, file: !110, line: 186, baseType: !589, size: 128, offset: 128)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, elements: !5)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !581, file: !110, line: 186, baseType: !143, size: 64, offset: 256)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !137, file: !110, line: 380, baseType: !592, size: 384)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !110, line: 188, size: 384, elements: !593)
!593 = !{!594, !595, !596, !597, !598, !599, !600, !601}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !592, file: !110, line: 189, baseType: !143, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !592, file: !110, line: 189, baseType: !131, size: 8, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !592, file: !110, line: 189, baseType: !131, size: 8, offset: 72)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !592, file: !110, line: 189, baseType: !147, size: 16, offset: 80)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !592, file: !110, line: 189, baseType: !131, size: 8, offset: 96)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !592, file: !110, line: 190, baseType: !589, size: 128, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !592, file: !110, line: 190, baseType: !143, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !592, file: !110, line: 190, baseType: !602, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !196, line: 480, size: 576, elements: !604)
!604 = !{!605, !606, !607, !608, !616, !631, !663, !664, !665, !666, !667, !668}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !603, file: !196, line: 481, baseType: !194, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !603, file: !196, line: 482, baseType: !602, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !603, file: !196, line: 483, baseType: !602, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !603, file: !196, line: 484, baseType: !609, size: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !196, line: 497, size: 256, elements: !611)
!611 = !{!612, !613, !614, !615}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !610, file: !196, line: 498, baseType: !609, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !610, file: !196, line: 499, baseType: !609, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !610, file: !196, line: 500, baseType: !602, size: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !610, file: !196, line: 501, baseType: !178, size: 32, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !603, file: !196, line: 485, baseType: !617, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !196, line: 466, size: 320, elements: !619)
!619 = !{!620, !625, !626, !627, !628, !629, !630}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !618, file: !196, line: 467, baseType: !621, size: 128)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !196, line: 459, size: 128, elements: !622)
!622 = !{!623, !624}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !621, file: !196, line: 460, baseType: !131, size: 8)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !621, file: !196, line: 461, baseType: !164, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !618, file: !196, line: 468, baseType: !621, size: 128, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !618, file: !196, line: 469, baseType: !147, size: 16, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !618, file: !196, line: 470, baseType: !131, size: 8, offset: 272)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !618, file: !196, line: 471, baseType: !131, size: 8, offset: 280)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !618, file: !196, line: 472, baseType: !131, size: 8, offset: 288)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !618, file: !196, line: 473, baseType: !131, size: 8, offset: 296)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !603, file: !196, line: 486, baseType: !632, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !196, line: 448, size: 192, elements: !634)
!634 = !{!635, !658, !659, !660, !661, !662}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !633, file: !196, line: 449, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !196, line: 438, size: 64, elements: !637)
!637 = !{!638, !639, !652}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !636, file: !196, line: 439, baseType: !194, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !636, file: !196, line: 440, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !196, line: 419, size: 256, elements: !642)
!642 = !{!643, !648, !649, !650, !651}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !641, file: !196, line: 420, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !213, line: 1058, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!178, !487, !178, !129}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !641, file: !196, line: 421, baseType: !129, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !641, file: !196, line: 422, baseType: !194, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !641, file: !196, line: 423, baseType: !131, size: 8, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !641, file: !196, line: 424, baseType: !131, size: 8, offset: 200)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !636, file: !196, line: 441, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !196, line: 429, size: 128, elements: !655)
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !654, file: !196, line: 430, baseType: !194, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !654, file: !196, line: 431, baseType: !653, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !633, file: !196, line: 450, baseType: !617, size: 64, offset: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !196, line: 451, baseType: !131, size: 8, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !633, file: !196, line: 452, baseType: !131, size: 8, offset: 136)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !633, file: !196, line: 453, baseType: !131, size: 8, offset: 144)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !633, file: !196, line: 454, baseType: !131, size: 8, offset: 152)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !603, file: !196, line: 487, baseType: !164, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !603, file: !196, line: 488, baseType: !178, size: 32, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !603, file: !196, line: 489, baseType: !147, size: 16, offset: 480)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !603, file: !196, line: 490, baseType: !147, size: 16, offset: 496)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !603, file: !196, line: 491, baseType: !131, size: 8, offset: 512)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !603, file: !196, line: 492, baseType: !131, size: 8, offset: 520)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !137, file: !110, line: 381, baseType: !670, size: 384)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !110, line: 193, size: 384, elements: !671)
!671 = !{!672, !673, !674, !675, !676, !677, !678, !679, !680}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !670, file: !110, line: 194, baseType: !143, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !670, file: !110, line: 194, baseType: !131, size: 8, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !670, file: !110, line: 194, baseType: !131, size: 8, offset: 72)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !670, file: !110, line: 194, baseType: !147, size: 16, offset: 80)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !110, line: 194, baseType: !131, size: 8, offset: 96)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !670, file: !110, line: 194, baseType: !589, size: 128, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !670, file: !110, line: 194, baseType: !143, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !670, file: !110, line: 194, baseType: !178, size: 32, offset: 320)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !670, file: !110, line: 195, baseType: !178, size: 32, offset: 352)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !137, file: !110, line: 382, baseType: !682, size: 384)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !110, line: 198, size: 384, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !692, !693}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !682, file: !110, line: 199, baseType: !143, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !682, file: !110, line: 199, baseType: !131, size: 8, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !682, file: !110, line: 199, baseType: !131, size: 8, offset: 72)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !682, file: !110, line: 199, baseType: !147, size: 16, offset: 80)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !110, line: 199, baseType: !131, size: 8, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !682, file: !110, line: 201, baseType: !131, size: 8, offset: 104)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !682, file: !110, line: 202, baseType: !131, size: 8, offset: 112)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !682, file: !110, line: 203, baseType: !589, size: 128, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !682, file: !110, line: 203, baseType: !143, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !682, file: !110, line: 203, baseType: !694, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !213, line: 128, baseType: !164)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !137, file: !110, line: 383, baseType: !696, size: 320)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !110, line: 206, size: 320, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !696, file: !110, line: 207, baseType: !143, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !696, file: !110, line: 207, baseType: !131, size: 8, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !110, line: 207, baseType: !131, size: 8, offset: 72)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !696, file: !110, line: 207, baseType: !147, size: 16, offset: 80)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !696, file: !110, line: 207, baseType: !131, size: 8, offset: 96)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !696, file: !110, line: 207, baseType: !589, size: 128, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !696, file: !110, line: 207, baseType: !143, size: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !137, file: !110, line: 384, baseType: !706, size: 384)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !110, line: 234, size: 384, elements: !707)
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !706, file: !110, line: 235, baseType: !143, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !706, file: !110, line: 235, baseType: !131, size: 8, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !706, file: !110, line: 235, baseType: !131, size: 8, offset: 72)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !706, file: !110, line: 235, baseType: !147, size: 16, offset: 80)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !706, file: !110, line: 235, baseType: !131, size: 8, offset: 96)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !706, file: !110, line: 235, baseType: !131, size: 8, offset: 104)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !706, file: !110, line: 235, baseType: !131, size: 8, offset: 112)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !706, file: !110, line: 235, baseType: !131, size: 8, offset: 120)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !706, file: !110, line: 235, baseType: !194, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !706, file: !110, line: 235, baseType: !178, size: 32, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !706, file: !110, line: 235, baseType: !178, size: 32, offset: 224)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !706, file: !110, line: 235, baseType: !178, size: 32, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !706, file: !110, line: 235, baseType: !131, size: 8, offset: 288)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !706, file: !110, line: 235, baseType: !131, size: 8, offset: 296)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !706, file: !110, line: 235, baseType: !143, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !137, file: !110, line: 385, baseType: !724, size: 576)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !110, line: 238, size: 576, elements: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !724, file: !110, line: 239, baseType: !143, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !724, file: !110, line: 239, baseType: !131, size: 8, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !724, file: !110, line: 239, baseType: !131, size: 8, offset: 72)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !724, file: !110, line: 239, baseType: !147, size: 16, offset: 80)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !724, file: !110, line: 239, baseType: !131, size: 8, offset: 96)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !724, file: !110, line: 239, baseType: !131, size: 8, offset: 104)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !724, file: !110, line: 239, baseType: !131, size: 8, offset: 112)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !724, file: !110, line: 239, baseType: !131, size: 8, offset: 120)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !724, file: !110, line: 239, baseType: !194, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !724, file: !110, line: 239, baseType: !178, size: 32, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !724, file: !110, line: 239, baseType: !178, size: 32, offset: 224)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !724, file: !110, line: 239, baseType: !178, size: 32, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !724, file: !110, line: 239, baseType: !131, size: 8, offset: 288)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !724, file: !110, line: 239, baseType: !131, size: 8, offset: 296)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !724, file: !110, line: 239, baseType: !147, size: 16, offset: 304)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !724, file: !110, line: 240, baseType: !143, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !724, file: !110, line: 241, baseType: !189, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !724, file: !110, line: 242, baseType: !147, size: 16, offset: 448)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !724, file: !110, line: 243, baseType: !189, size: 64, offset: 512)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !137, file: !110, line: 386, baseType: !746, size: 384)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !110, line: 263, size: 384, elements: !747)
!747 = !{!748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !746, file: !110, line: 264, baseType: !143, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !746, file: !110, line: 264, baseType: !131, size: 8, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !746, file: !110, line: 264, baseType: !131, size: 8, offset: 72)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !746, file: !110, line: 264, baseType: !147, size: 16, offset: 80)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !746, file: !110, line: 264, baseType: !131, size: 8, offset: 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !746, file: !110, line: 264, baseType: !131, size: 8, offset: 104)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !746, file: !110, line: 264, baseType: !131, size: 8, offset: 112)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !746, file: !110, line: 264, baseType: !131, size: 8, offset: 120)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !746, file: !110, line: 264, baseType: !194, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !746, file: !110, line: 264, baseType: !178, size: 32, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !746, file: !110, line: 264, baseType: !178, size: 32, offset: 224)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !746, file: !110, line: 264, baseType: !178, size: 32, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !746, file: !110, line: 264, baseType: !131, size: 8, offset: 288)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !746, file: !110, line: 264, baseType: !131, size: 8, offset: 296)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !746, file: !110, line: 264, baseType: !131, size: 8, offset: 304)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !746, file: !110, line: 265, baseType: !143, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !137, file: !110, line: 387, baseType: !765, size: 448)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !110, line: 246, size: 448, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !765, file: !110, line: 247, baseType: !143, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !765, file: !110, line: 247, baseType: !131, size: 8, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !765, file: !110, line: 247, baseType: !131, size: 8, offset: 72)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !765, file: !110, line: 247, baseType: !147, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !765, file: !110, line: 247, baseType: !131, size: 8, offset: 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !765, file: !110, line: 247, baseType: !131, size: 8, offset: 104)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !765, file: !110, line: 247, baseType: !131, size: 8, offset: 112)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !765, file: !110, line: 247, baseType: !131, size: 8, offset: 120)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !765, file: !110, line: 247, baseType: !194, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !765, file: !110, line: 247, baseType: !178, size: 32, offset: 192)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !765, file: !110, line: 247, baseType: !178, size: 32, offset: 224)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !765, file: !110, line: 247, baseType: !178, size: 32, offset: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !765, file: !110, line: 247, baseType: !131, size: 8, offset: 288)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !765, file: !110, line: 247, baseType: !131, size: 8, offset: 296)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !765, file: !110, line: 247, baseType: !143, size: 64, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !765, file: !110, line: 248, baseType: !143, size: 64, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !137, file: !110, line: 388, baseType: !784, size: 448)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !110, line: 251, size: 448, elements: !785)
!785 = !{!786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !784, file: !110, line: 252, baseType: !143, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !784, file: !110, line: 252, baseType: !131, size: 8, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !784, file: !110, line: 252, baseType: !131, size: 8, offset: 72)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !784, file: !110, line: 252, baseType: !147, size: 16, offset: 80)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !784, file: !110, line: 252, baseType: !131, size: 8, offset: 96)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !784, file: !110, line: 252, baseType: !131, size: 8, offset: 104)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !784, file: !110, line: 252, baseType: !131, size: 8, offset: 112)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !784, file: !110, line: 252, baseType: !131, size: 8, offset: 120)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !784, file: !110, line: 252, baseType: !194, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !784, file: !110, line: 252, baseType: !178, size: 32, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !784, file: !110, line: 252, baseType: !178, size: 32, offset: 224)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !784, file: !110, line: 252, baseType: !178, size: 32, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !784, file: !110, line: 252, baseType: !131, size: 8, offset: 288)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !784, file: !110, line: 252, baseType: !131, size: 8, offset: 296)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !784, file: !110, line: 257, baseType: !143, size: 64, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !784, file: !110, line: 258, baseType: !143, size: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !137, file: !110, line: 389, baseType: !803, size: 512)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !110, line: 274, size: 512, elements: !804)
!804 = !{!805, !806, !807, !808, !809, !810, !811, !812, !813, !814}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !803, file: !110, line: 275, baseType: !143, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !803, file: !110, line: 275, baseType: !131, size: 8, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !803, file: !110, line: 275, baseType: !131, size: 8, offset: 72)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !803, file: !110, line: 275, baseType: !147, size: 16, offset: 80)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !803, file: !110, line: 275, baseType: !131, size: 8, offset: 96)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !803, file: !110, line: 275, baseType: !194, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !803, file: !110, line: 276, baseType: !178, size: 32, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !803, file: !110, line: 277, baseType: !483, size: 64, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !803, file: !110, line: 278, baseType: !129, size: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !803, file: !110, line: 279, baseType: !589, size: 128, offset: 384)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !137, file: !110, line: 390, baseType: !816, size: 576)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !110, line: 282, size: 576, elements: !817)
!817 = !{!818, !819, !820, !821, !822, !823, !824, !825, !831, !832, !833, !834, !840, !841}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !816, file: !110, line: 283, baseType: !143, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !816, file: !110, line: 283, baseType: !131, size: 8, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !816, file: !110, line: 283, baseType: !131, size: 8, offset: 72)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !816, file: !110, line: 283, baseType: !147, size: 16, offset: 80)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !816, file: !110, line: 283, baseType: !131, size: 8, offset: 96)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !816, file: !110, line: 283, baseType: !131, size: 8, offset: 104)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !816, file: !110, line: 284, baseType: !131, size: 8, offset: 112)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !816, file: !110, line: 285, baseType: !826, size: 64, offset: 128)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !213, line: 1093, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!259, !178, !577, !178, !830, !129, !129}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !816, file: !110, line: 286, baseType: !194, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !816, file: !110, line: 287, baseType: !129, size: 64, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !816, file: !110, line: 288, baseType: !129, size: 64, offset: 320)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !816, file: !110, line: 289, baseType: !835, size: 64, offset: 384)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !213, line: 1126, baseType: !836)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!259, !487, !178, !129, !839}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !816, file: !110, line: 290, baseType: !143, size: 64, offset: 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !816, file: !110, line: 291, baseType: !143, size: 64, offset: 512)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !137, file: !110, line: 391, baseType: !843, size: 512)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !110, line: 309, size: 512, elements: !844)
!844 = !{!845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !843, file: !110, line: 310, baseType: !143, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !843, file: !110, line: 310, baseType: !131, size: 8, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !843, file: !110, line: 310, baseType: !131, size: 8, offset: 72)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !843, file: !110, line: 310, baseType: !147, size: 16, offset: 80)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !843, file: !110, line: 310, baseType: !131, size: 8, offset: 96)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !843, file: !110, line: 310, baseType: !131, size: 8, offset: 104)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !843, file: !110, line: 311, baseType: !131, size: 8, offset: 112)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !843, file: !110, line: 312, baseType: !131, size: 8, offset: 120)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !843, file: !110, line: 313, baseType: !129, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !843, file: !110, line: 314, baseType: !194, size: 64, offset: 192)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !843, file: !110, line: 315, baseType: !224, size: 64, offset: 256)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !843, file: !110, line: 316, baseType: !189, size: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !843, file: !110, line: 317, baseType: !189, size: 64, offset: 384)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !843, file: !110, line: 318, baseType: !178, size: 32, offset: 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !137, file: !110, line: 392, baseType: !860, size: 448)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !110, line: 342, size: 448, elements: !861)
!861 = !{!862, !863, !864, !865, !866, !867, !868, !869, !870, !871}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !860, file: !110, line: 343, baseType: !143, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !860, file: !110, line: 343, baseType: !131, size: 8, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !860, file: !110, line: 343, baseType: !131, size: 8, offset: 72)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !860, file: !110, line: 343, baseType: !147, size: 16, offset: 80)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !860, file: !110, line: 343, baseType: !131, size: 8, offset: 96)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !860, file: !110, line: 343, baseType: !194, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !860, file: !110, line: 344, baseType: !194, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !860, file: !110, line: 345, baseType: !129, size: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !860, file: !110, line: 346, baseType: !189, size: 64, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !860, file: !110, line: 347, baseType: !178, size: 32, offset: 384)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !137, file: !110, line: 393, baseType: !873, size: 256)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !110, line: 352, size: 256, elements: !874)
!874 = !{!875, !876, !877, !878, !879, !880, !885}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !873, file: !110, line: 353, baseType: !143, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !873, file: !110, line: 353, baseType: !131, size: 8, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !873, file: !110, line: 353, baseType: !131, size: 8, offset: 72)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !873, file: !110, line: 353, baseType: !147, size: 16, offset: 80)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !873, file: !110, line: 353, baseType: !131, size: 8, offset: 96)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !873, file: !110, line: 353, baseType: !881, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !213, line: 1064, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !487, !129}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !873, file: !110, line: 354, baseType: !129, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !137, file: !110, line: 394, baseType: !887, size: 192)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !110, line: 359, size: 192, elements: !888)
!888 = !{!889, !890, !891, !892, !893, !894}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !887, file: !110, line: 360, baseType: !143, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !887, file: !110, line: 360, baseType: !131, size: 8, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !887, file: !110, line: 360, baseType: !131, size: 8, offset: 72)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !887, file: !110, line: 360, baseType: !147, size: 16, offset: 80)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !887, file: !110, line: 360, baseType: !131, size: 8, offset: 96)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !887, file: !110, line: 360, baseType: !143, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !137, file: !110, line: 401, baseType: !195, size: 384)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !123, file: !110, line: 437, baseType: !195, size: 384)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !123, file: !110, line: 438, baseType: !295, size: 1600)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !899, line: 42, baseType: !900)
!899 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!900 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!901 = !{!0, !7, !12, !14, !19, !24, !29, !34, !39, !44, !49, !51, !56, !61, !66, !68, !70, !75, !80, !85, !87, !89, !94, !96, !98, !103, !105}
!902 = !{i32 7, !"Dwarf Version", i32 5}
!903 = !{i32 2, !"Debug Info Version", i32 3}
!904 = !{i32 1, !"wchar_size", i32 2}
!905 = !{i32 8, !"cf-protection-branch", i32 1}
!906 = !{i32 4, !"function_return_thunk_extern", i32 1}
!907 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!908 = !{i32 1, !"Code Model", i32 2}
!909 = !{i32 1, !"override-stack-alignment", i32 8}
!910 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!911 = distinct !DISubprogram(name: "acpi_ex_do_debug_object", scope: !2, file: !2, line: 40, type: !912, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !107, retainedNodes: !914)
!912 = !DISubroutineType(types: !913)
!913 = !{null, !143, !178, !178}
!914 = !{!915, !916, !917, !918, !919, !920, !921}
!915 = !DILocalVariable(name: "source_desc", arg: 1, scope: !911, file: !2, line: 40, type: !143)
!916 = !DILocalVariable(name: "level", arg: 2, scope: !911, file: !2, line: 41, type: !178)
!917 = !DILocalVariable(name: "index", arg: 3, scope: !911, file: !2, line: 41, type: !178)
!918 = !DILocalVariable(name: "i", scope: !911, file: !2, line: 43, type: !178)
!919 = !DILocalVariable(name: "timer", scope: !911, file: !2, line: 44, type: !178)
!920 = !DILocalVariable(name: "object_desc", scope: !911, file: !2, line: 45, type: !143)
!921 = !DILocalVariable(name: "value", scope: !911, file: !2, line: 46, type: !178)
!922 = !DILocation(line: 40, column: 52, scope: !911)
!923 = !DILocation(line: 41, column: 8, scope: !911)
!924 = !DILocation(line: 41, column: 19, scope: !911)
!925 = !DILocation(line: 43, column: 2, scope: !911)
!926 = !DILocation(line: 43, column: 6, scope: !911)
!927 = !DILocation(line: 44, column: 2, scope: !911)
!928 = !DILocation(line: 44, column: 6, scope: !911)
!929 = !DILocation(line: 45, column: 2, scope: !911)
!930 = !DILocation(line: 45, column: 29, scope: !911)
!931 = !DILocation(line: 46, column: 2, scope: !911)
!932 = !DILocation(line: 46, column: 6, scope: !911)
!933 = !DILocation(line: 52, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !911, file: !2, line: 52, column: 6)
!935 = !DILocation(line: 52, column: 40, scope: !934)
!936 = !DILocation(line: 53, column: 8, scope: !934)
!937 = !DILocation(line: 53, column: 23, scope: !934)
!938 = !DILocation(line: 52, column: 6, scope: !911)
!939 = !DILocation(line: 54, column: 3, scope: !940)
!940 = distinct !DILexicalBlock(scope: !934, file: !2, line: 53, column: 48)
!941 = !DILocation(line: 59, column: 6, scope: !942)
!942 = distinct !DILexicalBlock(scope: !911, file: !2, line: 59, column: 6)
!943 = !DILocation(line: 59, column: 18, scope: !942)
!944 = !DILocation(line: 60, column: 7, scope: !942)
!945 = !DILocation(line: 60, column: 45, scope: !942)
!946 = !DILocation(line: 60, column: 72, scope: !942)
!947 = !DILocation(line: 61, column: 7, scope: !942)
!948 = !DILocation(line: 61, column: 27, scope: !942)
!949 = !DILocation(line: 61, column: 32, scope: !942)
!950 = !DILocation(line: 59, column: 6, scope: !911)
!951 = !DILocation(line: 62, column: 8, scope: !952)
!952 = distinct !DILexicalBlock(scope: !953, file: !2, line: 62, column: 7)
!953 = distinct !DILexicalBlock(scope: !942, file: !2, line: 61, column: 54)
!954 = !DILocation(line: 62, column: 28, scope: !952)
!955 = !DILocation(line: 62, column: 35, scope: !952)
!956 = !DILocation(line: 62, column: 41, scope: !952)
!957 = !DILocation(line: 63, column: 9, scope: !952)
!958 = !DILocation(line: 63, column: 29, scope: !952)
!959 = !DILocation(line: 63, column: 8, scope: !952)
!960 = !DILocation(line: 63, column: 37, scope: !952)
!961 = !DILocation(line: 62, column: 7, scope: !953)
!962 = !DILocation(line: 64, column: 4, scope: !963)
!963 = distinct !DILexicalBlock(scope: !952, file: !2, line: 63, column: 47)
!964 = !DILocation(line: 65, column: 4, scope: !963)
!965 = !DILocation(line: 67, column: 2, scope: !953)
!966 = !DILocation(line: 73, column: 9, scope: !967)
!967 = distinct !DILexicalBlock(scope: !911, file: !2, line: 73, column: 6)
!968 = !DILocation(line: 73, column: 15, scope: !967)
!969 = !DILocation(line: 73, column: 20, scope: !967)
!970 = !DILocation(line: 73, column: 23, scope: !967)
!971 = !DILocation(line: 73, column: 29, scope: !967)
!972 = !DILocation(line: 73, column: 6, scope: !911)
!973 = !DILocation(line: 74, column: 7, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !2, line: 74, column: 7)
!975 = distinct !DILexicalBlock(scope: !967, file: !2, line: 73, column: 36)
!976 = !DILocation(line: 74, column: 7, scope: !975)
!977 = !DILocation(line: 82, column: 18, scope: !978)
!978 = distinct !DILexicalBlock(scope: !974, file: !2, line: 74, column: 37)
!979 = !DILocation(line: 82, column: 13, scope: !978)
!980 = !DILocation(line: 82, column: 38, scope: !978)
!981 = !DILocation(line: 82, column: 10, scope: !978)
!982 = !DILocation(line: 83, column: 10, scope: !978)
!983 = !DILocation(line: 85, column: 48, scope: !978)
!984 = !DILocation(line: 86, column: 12, scope: !978)
!985 = !DILocation(line: 85, column: 4, scope: !978)
!986 = !DILocation(line: 87, column: 3, scope: !978)
!987 = !DILocation(line: 88, column: 38, scope: !988)
!988 = distinct !DILexicalBlock(scope: !974, file: !2, line: 87, column: 10)
!989 = !DILocation(line: 88, column: 4, scope: !988)
!990 = !DILocation(line: 90, column: 2, scope: !975)
!991 = !DILocation(line: 94, column: 6, scope: !992)
!992 = distinct !DILexicalBlock(scope: !911, file: !2, line: 94, column: 6)
!993 = !DILocation(line: 94, column: 12, scope: !992)
!994 = !DILocation(line: 94, column: 6, scope: !911)
!995 = !DILocation(line: 95, column: 29, scope: !996)
!996 = distinct !DILexicalBlock(scope: !992, file: !2, line: 94, column: 17)
!997 = !DILocation(line: 95, column: 35, scope: !996)
!998 = !DILocation(line: 95, column: 3, scope: !996)
!999 = !DILocation(line: 96, column: 2, scope: !996)
!1000 = !DILocation(line: 98, column: 7, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !911, file: !2, line: 98, column: 6)
!1002 = !DILocation(line: 98, column: 6, scope: !911)
!1003 = !DILocation(line: 99, column: 3, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 98, column: 20)
!1005 = !DILocation(line: 100, column: 3, scope: !1004)
!1006 = !DILocation(line: 103, column: 6, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !911, file: !2, line: 103, column: 6)
!1008 = !DILocation(line: 103, column: 44, scope: !1007)
!1009 = !DILocation(line: 103, column: 6, scope: !911)
!1010 = !DILocation(line: 107, column: 8, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 107, column: 7)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 103, column: 71)
!1013 = !DILocation(line: 107, column: 28, scope: !1011)
!1014 = !DILocation(line: 107, column: 33, scope: !1011)
!1015 = !DILocation(line: 107, column: 55, scope: !1011)
!1016 = !DILocation(line: 108, column: 8, scope: !1011)
!1017 = !DILocation(line: 108, column: 28, scope: !1011)
!1018 = !DILocation(line: 108, column: 33, scope: !1011)
!1019 = !DILocation(line: 107, column: 7, scope: !1012)
!1020 = !DILocation(line: 111, column: 13, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 108, column: 55)
!1022 = !DILocation(line: 110, column: 12, scope: !1021)
!1023 = !DILocation(line: 109, column: 4, scope: !1021)
!1024 = !DILocation(line: 112, column: 3, scope: !1021)
!1025 = !DILocation(line: 114, column: 38, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1012, file: !2, line: 114, column: 7)
!1027 = !DILocation(line: 114, column: 8, scope: !1026)
!1028 = !DILocation(line: 114, column: 7, scope: !1012)
!1029 = !DILocation(line: 116, column: 12, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 114, column: 52)
!1031 = !DILocation(line: 115, column: 4, scope: !1030)
!1032 = !DILocation(line: 117, column: 4, scope: !1030)
!1033 = !DILocation(line: 119, column: 2, scope: !1012)
!1034 = !DILocation(line: 119, column: 13, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 119, column: 13)
!1036 = !DILocation(line: 119, column: 51, scope: !1035)
!1037 = !DILocation(line: 119, column: 13, scope: !1007)
!1038 = !DILocation(line: 124, column: 13, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 120, column: 28)
!1040 = !DILocation(line: 124, column: 27, scope: !1039)
!1041 = !DILocation(line: 122, column: 33, scope: !1039)
!1042 = !DILocation(line: 122, column: 11, scope: !1039)
!1043 = !DILocation(line: 125, column: 11, scope: !1039)
!1044 = !DILocation(line: 121, column: 3, scope: !1039)
!1045 = !DILocation(line: 126, column: 3, scope: !1039)
!1046 = !DILocation(line: 128, column: 3, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1035, file: !2, line: 127, column: 9)
!1048 = !DILocation(line: 133, column: 10, scope: !911)
!1049 = !DILocation(line: 133, column: 30, scope: !911)
!1050 = !DILocation(line: 133, column: 2, scope: !911)
!1051 = !DILocation(line: 138, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 138, column: 7)
!1053 = distinct !DILexicalBlock(scope: !911, file: !2, line: 133, column: 36)
!1054 = !DILocation(line: 138, column: 35, scope: !1052)
!1055 = !DILocation(line: 138, column: 7, scope: !1053)
!1056 = !DILocation(line: 140, column: 17, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 138, column: 41)
!1058 = !DILocation(line: 140, column: 38, scope: !1057)
!1059 = !DILocation(line: 140, column: 12, scope: !1057)
!1060 = !DILocation(line: 139, column: 4, scope: !1057)
!1061 = !DILocation(line: 141, column: 3, scope: !1057)
!1062 = !DILocation(line: 143, column: 12, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 141, column: 10)
!1064 = !DILocation(line: 142, column: 4, scope: !1063)
!1065 = !DILocation(line: 146, column: 3, scope: !1053)
!1066 = !DILocation(line: 150, column: 37, scope: !1053)
!1067 = !DILocation(line: 150, column: 57, scope: !1053)
!1068 = !DILocation(line: 150, column: 3, scope: !1053)
!1069 = !DILocation(line: 151, column: 23, scope: !1053)
!1070 = !DILocation(line: 151, column: 43, scope: !1053)
!1071 = !DILocation(line: 152, column: 10, scope: !1053)
!1072 = !DILocation(line: 152, column: 30, scope: !1053)
!1073 = !DILocation(line: 152, column: 37, scope: !1053)
!1074 = !DILocation(line: 152, column: 9, scope: !1053)
!1075 = !DILocation(line: 153, column: 9, scope: !1053)
!1076 = !DILocation(line: 153, column: 29, scope: !1053)
!1077 = !DILocation(line: 151, column: 3, scope: !1053)
!1078 = !DILocation(line: 155, column: 3, scope: !1053)
!1079 = !DILocation(line: 159, column: 30, scope: !1053)
!1080 = !DILocation(line: 159, column: 50, scope: !1053)
!1081 = !DILocation(line: 159, column: 3, scope: !1053)
!1082 = !DILocation(line: 160, column: 3, scope: !1053)
!1083 = !DILocation(line: 165, column: 11, scope: !1053)
!1084 = !DILocation(line: 165, column: 32, scope: !1053)
!1085 = !DILocation(line: 164, column: 3, scope: !1053)
!1086 = !DILocation(line: 169, column: 10, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 169, column: 3)
!1088 = !DILocation(line: 169, column: 8, scope: !1087)
!1089 = !DILocation(line: 169, column: 15, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 169, column: 3)
!1091 = !DILocation(line: 169, column: 19, scope: !1090)
!1092 = !DILocation(line: 169, column: 40, scope: !1090)
!1093 = !DILocation(line: 169, column: 17, scope: !1090)
!1094 = !DILocation(line: 169, column: 3, scope: !1087)
!1095 = !DILocation(line: 170, column: 28, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1090, file: !2, line: 169, column: 52)
!1097 = !DILocation(line: 171, column: 7, scope: !1096)
!1098 = !DILocation(line: 171, column: 16, scope: !1096)
!1099 = !DILocation(line: 171, column: 20, scope: !1096)
!1100 = !DILocation(line: 171, column: 26, scope: !1096)
!1101 = !DILocation(line: 171, column: 31, scope: !1096)
!1102 = !DILocation(line: 171, column: 33, scope: !1096)
!1103 = !DILocation(line: 170, column: 4, scope: !1096)
!1104 = !DILocation(line: 172, column: 3, scope: !1096)
!1105 = !DILocation(line: 169, column: 48, scope: !1090)
!1106 = !DILocation(line: 169, column: 3, scope: !1090)
!1107 = distinct !{!1107, !1094, !1108, !1109, !1110}
!1108 = !DILocation(line: 172, column: 3, scope: !1087)
!1109 = !{!"llvm.loop.mustprogress"}
!1110 = !{!"llvm.loop.unroll.disable"}
!1111 = !DILocation(line: 173, column: 3, scope: !1053)
!1112 = !DILocation(line: 178, column: 38, scope: !1053)
!1113 = !DILocation(line: 178, column: 11, scope: !1053)
!1114 = !DILocation(line: 177, column: 3, scope: !1053)
!1115 = !DILocation(line: 182, column: 11, scope: !1053)
!1116 = !DILocation(line: 182, column: 34, scope: !1053)
!1117 = !DILocation(line: 182, column: 3, scope: !1053)
!1118 = !DILocation(line: 185, column: 29, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 182, column: 41)
!1120 = !DILocation(line: 185, column: 52, scope: !1119)
!1121 = !DILocation(line: 185, column: 4, scope: !1119)
!1122 = !DILocation(line: 186, column: 4, scope: !1119)
!1123 = !DILocation(line: 193, column: 12, scope: !1119)
!1124 = !DILocation(line: 193, column: 35, scope: !1119)
!1125 = !DILocation(line: 192, column: 4, scope: !1119)
!1126 = !DILocation(line: 194, column: 4, scope: !1119)
!1127 = !DILocation(line: 198, column: 4, scope: !1119)
!1128 = !DILocation(line: 201, column: 3, scope: !1053)
!1129 = !DILocation(line: 205, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 205, column: 7)
!1131 = !DILocation(line: 205, column: 30, scope: !1130)
!1132 = !DILocation(line: 205, column: 7, scope: !1053)
!1133 = !DILocation(line: 206, column: 8, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 206, column: 8)
!1135 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 205, column: 36)
!1136 = !DILocation(line: 207, column: 38, scope: !1134)
!1137 = !DILocation(line: 206, column: 8, scope: !1135)
!1138 = !DILocation(line: 211, column: 10, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 208, column: 30)
!1140 = !DILocation(line: 211, column: 33, scope: !1139)
!1141 = !DILocation(line: 209, column: 5, scope: !1139)
!1142 = !DILocation(line: 212, column: 4, scope: !1139)
!1143 = !DILocation(line: 214, column: 13, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 212, column: 11)
!1145 = !DILocation(line: 214, column: 36, scope: !1144)
!1146 = !DILocation(line: 215, column: 14, scope: !1144)
!1147 = !DILocation(line: 215, column: 37, scope: !1144)
!1148 = !DILocation(line: 216, column: 13, scope: !1144)
!1149 = !DILocation(line: 215, column: 13, scope: !1144)
!1150 = !DILocation(line: 213, column: 5, scope: !1144)
!1151 = !DILocation(line: 218, column: 14, scope: !1144)
!1152 = !DILocation(line: 218, column: 37, scope: !1144)
!1153 = !DILocation(line: 218, column: 44, scope: !1144)
!1154 = !DILocation(line: 218, column: 13, scope: !1144)
!1155 = !DILocation(line: 218, column: 5, scope: !1144)
!1156 = !DILocation(line: 223, column: 6, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1144, file: !2, line: 218, column: 50)
!1158 = !DILocation(line: 224, column: 6, scope: !1157)
!1159 = !DILocation(line: 227, column: 6, scope: !1157)
!1160 = !DILocation(line: 228, column: 6, scope: !1157)
!1161 = !DILocation(line: 232, column: 31, scope: !1157)
!1162 = !DILocation(line: 234, column: 10, scope: !1157)
!1163 = !DILocation(line: 234, column: 17, scope: !1157)
!1164 = !DILocation(line: 235, column: 9, scope: !1157)
!1165 = !DILocation(line: 235, column: 15, scope: !1157)
!1166 = !DILocation(line: 232, column: 6, scope: !1157)
!1167 = !DILocation(line: 236, column: 6, scope: !1157)
!1168 = !DILocation(line: 239, column: 3, scope: !1135)
!1169 = !DILocation(line: 239, column: 14, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1130, file: !2, line: 239, column: 14)
!1171 = !DILocation(line: 239, column: 37, scope: !1170)
!1172 = !DILocation(line: 239, column: 14, scope: !1130)
!1173 = !DILocation(line: 240, column: 8, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !2, line: 240, column: 8)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !2, line: 239, column: 45)
!1176 = !DILocation(line: 241, column: 40, scope: !1174)
!1177 = !DILocation(line: 240, column: 8, scope: !1175)
!1178 = !DILocation(line: 246, column: 29, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 242, column: 30)
!1180 = !DILocation(line: 250, column: 18, scope: !1179)
!1181 = !DILocation(line: 250, column: 24, scope: !1179)
!1182 = !DILocation(line: 246, column: 5, scope: !1179)
!1183 = !DILocation(line: 251, column: 4, scope: !1179)
!1184 = !DILocation(line: 252, column: 19, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1174, file: !2, line: 251, column: 11)
!1186 = !DILocation(line: 252, column: 42, scope: !1185)
!1187 = !DILocation(line: 252, column: 17, scope: !1185)
!1188 = !DILocation(line: 253, column: 13, scope: !1185)
!1189 = !DILocation(line: 253, column: 36, scope: !1185)
!1190 = !DILocation(line: 253, column: 11, scope: !1185)
!1191 = !DILocation(line: 255, column: 13, scope: !1185)
!1192 = !DILocation(line: 255, column: 33, scope: !1185)
!1193 = !DILocation(line: 255, column: 5, scope: !1185)
!1194 = !DILocation(line: 259, column: 14, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1185, file: !2, line: 255, column: 39)
!1196 = !DILocation(line: 260, column: 15, scope: !1195)
!1197 = !DILocation(line: 261, column: 14, scope: !1195)
!1198 = !DILocation(line: 260, column: 14, scope: !1195)
!1199 = !DILocation(line: 258, column: 6, scope: !1195)
!1200 = !DILocation(line: 262, column: 6, scope: !1195)
!1201 = !DILocation(line: 268, column: 11, scope: !1195)
!1202 = !DILocation(line: 269, column: 12, scope: !1195)
!1203 = !DILocation(line: 270, column: 11, scope: !1195)
!1204 = !DILocation(line: 269, column: 11, scope: !1195)
!1205 = !DILocation(line: 271, column: 12, scope: !1195)
!1206 = !DILocation(line: 272, column: 11, scope: !1195)
!1207 = !DILocation(line: 271, column: 11, scope: !1195)
!1208 = !DILocation(line: 266, column: 6, scope: !1195)
!1209 = !DILocation(line: 273, column: 6, scope: !1195)
!1210 = !DILocation(line: 277, column: 39, scope: !1195)
!1211 = !DILocation(line: 277, column: 6, scope: !1195)
!1212 = !DILocation(line: 278, column: 13, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 278, column: 10)
!1214 = !DILocation(line: 278, column: 36, scope: !1213)
!1215 = !DILocation(line: 278, column: 12, scope: !1213)
!1216 = !DILocation(line: 278, column: 11, scope: !1213)
!1217 = !DILocation(line: 278, column: 10, scope: !1195)
!1218 = !DILocation(line: 279, column: 7, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 278, column: 44)
!1220 = !DILocation(line: 281, column: 6, scope: !1219)
!1221 = !DILocation(line: 283, column: 13, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 281, column: 13)
!1223 = !DILocation(line: 284, column: 12, scope: !1222)
!1224 = !DILocation(line: 283, column: 12, scope: !1222)
!1225 = !DILocation(line: 284, column: 19, scope: !1222)
!1226 = !DILocation(line: 284, column: 25, scope: !1222)
!1227 = !DILocation(line: 282, column: 7, scope: !1222)
!1228 = !DILocation(line: 286, column: 6, scope: !1195)
!1229 = !DILocation(line: 292, column: 11, scope: !1195)
!1230 = !DILocation(line: 292, column: 31, scope: !1195)
!1231 = !DILocation(line: 290, column: 6, scope: !1195)
!1232 = !DILocation(line: 293, column: 6, scope: !1195)
!1233 = !DILocation(line: 296, column: 3, scope: !1175)
!1234 = !DILocation(line: 297, column: 3, scope: !1053)
!1235 = !DILocation(line: 301, column: 39, scope: !1053)
!1236 = !DILocation(line: 301, column: 3, scope: !1053)
!1237 = !DILocation(line: 302, column: 3, scope: !1053)
!1238 = !DILocation(line: 306, column: 2, scope: !911)
!1239 = !DILocation(line: 307, column: 1, scope: !911)
!1240 = !DISubprogram(name: "acpi_os_printf", scope: !1241, file: !1241, line: 334, type: !1242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1241 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !1244, null}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1246 = !DISubprogram(name: "acpi_os_get_timer", scope: !1241, file: !1241, line: 318, type: !1247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!164}
!1249 = !DISubprogram(name: "acpi_ut_get_object_type_name", scope: !1250, file: !1250, line: 233, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1250 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!1244, !143}
!1253 = !DISubprogram(name: "acpi_ut_valid_internal_object", scope: !1250, file: !1250, line: 451, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!131, !129}
!1256 = !DISubprogram(name: "acpi_ut_get_type_name", scope: !1250, file: !1250, line: 225, type: !1257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!1244, !1259}
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !213, line: 644, baseType: !178)
!1260 = !DISubprogram(name: "acpi_ut_dump_buffer", scope: !1250, file: !1250, line: 349, type: !1261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !189, !178, !178, !178}
!1263 = !DISubprogram(name: "acpi_ut_get_reference_name", scope: !1250, file: !1250, line: 231, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
