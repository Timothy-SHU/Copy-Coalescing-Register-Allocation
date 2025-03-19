; ModuleID = 'drivers/acpi/acpica/utdecode.c'
source_filename = "drivers/acpi/acpica/utdecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_common_descriptor = type { ptr, i8 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_reference = type { ptr, i8, i8, i16, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, i32 }

@acpi_gbl_ns_properties = hidden constant [31 x i8] c"\00\00\00\00\00\00\01\00\01\00\00\01\01\01\00\00\00\00\00\00\00\00\00\00\00\03\03\01\00\00\00", align 16, !dbg !0
@.str = private unnamed_addr constant [13 x i8] c"SystemMemory\00", align 1, !dbg !810
@.str.1 = private unnamed_addr constant [9 x i8] c"SystemIO\00", align 1, !dbg !815
@.str.2 = private unnamed_addr constant [11 x i8] c"PCI_Config\00", align 1, !dbg !818
@.str.3 = private unnamed_addr constant [16 x i8] c"EmbeddedControl\00", align 1, !dbg !823
@.str.4 = private unnamed_addr constant [6 x i8] c"SMBus\00", align 1, !dbg !828
@.str.5 = private unnamed_addr constant [11 x i8] c"SystemCMOS\00", align 1, !dbg !833
@.str.6 = private unnamed_addr constant [13 x i8] c"PCIBARTarget\00", align 1, !dbg !835
@.str.7 = private unnamed_addr constant [5 x i8] c"IPMI\00", align 1, !dbg !837
@.str.8 = private unnamed_addr constant [17 x i8] c"GeneralPurposeIo\00", align 1, !dbg !842
@.str.9 = private unnamed_addr constant [17 x i8] c"GenericSerialBus\00", align 1, !dbg !847
@.str.10 = private unnamed_addr constant [4 x i8] c"PCC\00", align 1, !dbg !849
@.str.11 = private unnamed_addr constant [20 x i8] c"PlatformRtMechanism\00", align 1, !dbg !851
@acpi_gbl_region_types = hidden global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 16, !dbg !853
@.str.12 = private unnamed_addr constant [18 x i8] c"UserDefinedRegion\00", align 1, !dbg !860
@.str.13 = private unnamed_addr constant [10 x i8] c"DataTable\00", align 1, !dbg !865
@.str.14 = private unnamed_addr constant [18 x i8] c"FunctionalFixedHW\00", align 1, !dbg !870
@.str.15 = private unnamed_addr constant [15 x i8] c"InvalidSpaceId\00", align 1, !dbg !872
@.str.16 = private unnamed_addr constant [15 x i8] c"InvalidEventID\00", align 1, !dbg !877
@acpi_gbl_event_types = internal global [5 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], align 16, !dbg !929
@acpi_gbl_bad_type = internal constant [10 x i8] c"UNDEFINED\00", align 1, !dbg !932
@acpi_gbl_ns_type_names = internal global [31 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], align 16, !dbg !999
@.str.17 = private unnamed_addr constant [25 x i8] c"[NULL Object Descriptor]\00", align 1, !dbg !879
@.str.18 = private unnamed_addr constant [15 x i8] c"Invalid object\00", align 1, !dbg !884
@.str.19 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1, !dbg !886
@acpi_gbl_root_node = external dso_local global ptr, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"\22\\\22 \00", align 1, !dbg !888
@.str.21 = private unnamed_addr constant [5 x i8] c"####\00", align 1, !dbg !890
@.str.22 = private unnamed_addr constant [12 x i8] c"NULL OBJECT\00", align 1, !dbg !892
@.str.23 = private unnamed_addr constant [17 x i8] c"Not a Descriptor\00", align 1, !dbg !895
@acpi_gbl_desc_type_names = internal global [16 x ptr] [ptr @.str.23, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], align 16, !dbg !1037
@.str.24 = private unnamed_addr constant [12 x i8] c"NULL Object\00", align 1, !dbg !897
@.str.25 = private unnamed_addr constant [22 x i8] c"Not an Operand object\00", align 1, !dbg !899
@.str.26 = private unnamed_addr constant [23 x i8] c"Not a Reference object\00", align 1, !dbg !904
@.str.27 = private unnamed_addr constant [24 x i8] c"Unknown Reference class\00", align 1, !dbg !909
@acpi_gbl_ref_class_names = internal global [7 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.49, ptr @.str.84, ptr @.str.85], align 16, !dbg !1052
@.str.28 = private unnamed_addr constant [17 x i8] c"Invalid Mutex ID\00", align 1, !dbg !914
@acpi_gbl_mutex_names = internal global [6 x ptr] [ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], align 16, !dbg !1070
@.str.29 = private unnamed_addr constant [9 x i8] c"PM_Timer\00", align 1, !dbg !916
@.str.30 = private unnamed_addr constant [11 x i8] c"GlobalLock\00", align 1, !dbg !918
@.str.31 = private unnamed_addr constant [12 x i8] c"PowerButton\00", align 1, !dbg !920
@.str.32 = private unnamed_addr constant [12 x i8] c"SleepButton\00", align 1, !dbg !922
@.str.33 = private unnamed_addr constant [14 x i8] c"RealTimeClock\00", align 1, !dbg !924
@.str.34 = private unnamed_addr constant [8 x i8] c"Untyped\00", align 1, !dbg !935
@.str.35 = private unnamed_addr constant [8 x i8] c"Integer\00", align 1, !dbg !938
@.str.36 = private unnamed_addr constant [7 x i8] c"String\00", align 1, !dbg !940
@.str.37 = private unnamed_addr constant [7 x i8] c"Buffer\00", align 1, !dbg !943
@.str.38 = private unnamed_addr constant [8 x i8] c"Package\00", align 1, !dbg !945
@.str.39 = private unnamed_addr constant [10 x i8] c"FieldUnit\00", align 1, !dbg !947
@.str.40 = private unnamed_addr constant [7 x i8] c"Device\00", align 1, !dbg !949
@.str.41 = private unnamed_addr constant [6 x i8] c"Event\00", align 1, !dbg !951
@.str.42 = private unnamed_addr constant [7 x i8] c"Method\00", align 1, !dbg !953
@.str.43 = private unnamed_addr constant [6 x i8] c"Mutex\00", align 1, !dbg !955
@.str.44 = private unnamed_addr constant [7 x i8] c"Region\00", align 1, !dbg !957
@.str.45 = private unnamed_addr constant [6 x i8] c"Power\00", align 1, !dbg !959
@.str.46 = private unnamed_addr constant [10 x i8] c"Processor\00", align 1, !dbg !961
@.str.47 = private unnamed_addr constant [8 x i8] c"Thermal\00", align 1, !dbg !963
@.str.48 = private unnamed_addr constant [12 x i8] c"BufferField\00", align 1, !dbg !965
@.str.49 = private unnamed_addr constant [10 x i8] c"DdbHandle\00", align 1, !dbg !967
@.str.50 = private unnamed_addr constant [12 x i8] c"DebugObject\00", align 1, !dbg !969
@.str.51 = private unnamed_addr constant [12 x i8] c"RegionField\00", align 1, !dbg !971
@.str.52 = private unnamed_addr constant [10 x i8] c"BankField\00", align 1, !dbg !973
@.str.53 = private unnamed_addr constant [11 x i8] c"IndexField\00", align 1, !dbg !975
@.str.54 = private unnamed_addr constant [10 x i8] c"Reference\00", align 1, !dbg !977
@.str.55 = private unnamed_addr constant [6 x i8] c"Alias\00", align 1, !dbg !979
@.str.56 = private unnamed_addr constant [12 x i8] c"MethodAlias\00", align 1, !dbg !981
@.str.57 = private unnamed_addr constant [7 x i8] c"Notify\00", align 1, !dbg !983
@.str.58 = private unnamed_addr constant [12 x i8] c"AddrHandler\00", align 1, !dbg !985
@.str.59 = private unnamed_addr constant [13 x i8] c"ResourceDesc\00", align 1, !dbg !987
@.str.60 = private unnamed_addr constant [12 x i8] c"ResourceFld\00", align 1, !dbg !989
@.str.61 = private unnamed_addr constant [6 x i8] c"Scope\00", align 1, !dbg !991
@.str.62 = private unnamed_addr constant [6 x i8] c"Extra\00", align 1, !dbg !993
@.str.63 = private unnamed_addr constant [5 x i8] c"Data\00", align 1, !dbg !995
@.str.64 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1, !dbg !997
@.str.65 = private unnamed_addr constant [14 x i8] c"Cached Object\00", align 1, !dbg !1004
@.str.66 = private unnamed_addr constant [14 x i8] c"State-Generic\00", align 1, !dbg !1006
@.str.67 = private unnamed_addr constant [13 x i8] c"State-Update\00", align 1, !dbg !1008
@.str.68 = private unnamed_addr constant [14 x i8] c"State-Package\00", align 1, !dbg !1010
@.str.69 = private unnamed_addr constant [14 x i8] c"State-Control\00", align 1, !dbg !1012
@.str.70 = private unnamed_addr constant [21 x i8] c"State-RootParseScope\00", align 1, !dbg !1014
@.str.71 = private unnamed_addr constant [17 x i8] c"State-ParseScope\00", align 1, !dbg !1019
@.str.72 = private unnamed_addr constant [16 x i8] c"State-WalkScope\00", align 1, !dbg !1021
@.str.73 = private unnamed_addr constant [13 x i8] c"State-Result\00", align 1, !dbg !1023
@.str.74 = private unnamed_addr constant [13 x i8] c"State-Notify\00", align 1, !dbg !1025
@.str.75 = private unnamed_addr constant [13 x i8] c"State-Thread\00", align 1, !dbg !1027
@.str.76 = private unnamed_addr constant [16 x i8] c"Tree Walk State\00", align 1, !dbg !1029
@.str.77 = private unnamed_addr constant [14 x i8] c"Parse Tree Op\00", align 1, !dbg !1031
@.str.78 = private unnamed_addr constant [15 x i8] c"Operand Object\00", align 1, !dbg !1033
@.str.79 = private unnamed_addr constant [15 x i8] c"Namespace Node\00", align 1, !dbg !1035
@.str.80 = private unnamed_addr constant [6 x i8] c"Local\00", align 1, !dbg !1040
@.str.81 = private unnamed_addr constant [9 x i8] c"Argument\00", align 1, !dbg !1042
@.str.82 = private unnamed_addr constant [6 x i8] c"RefOf\00", align 1, !dbg !1044
@.str.83 = private unnamed_addr constant [6 x i8] c"Index\00", align 1, !dbg !1046
@.str.84 = private unnamed_addr constant [13 x i8] c"Named Object\00", align 1, !dbg !1048
@.str.85 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1, !dbg !1050
@.str.86 = private unnamed_addr constant [21 x i8] c"ACPI_MTX_Interpreter\00", align 1, !dbg !1055
@.str.87 = private unnamed_addr constant [19 x i8] c"ACPI_MTX_Namespace\00", align 1, !dbg !1057
@.str.88 = private unnamed_addr constant [16 x i8] c"ACPI_MTX_Tables\00", align 1, !dbg !1062
@.str.89 = private unnamed_addr constant [16 x i8] c"ACPI_MTX_Events\00", align 1, !dbg !1064
@.str.90 = private unnamed_addr constant [16 x i8] c"ACPI_MTX_Caches\00", align 1, !dbg !1066
@.str.91 = private unnamed_addr constant [16 x i8] c"ACPI_MTX_Memory\00", align 1, !dbg !1068

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_get_region_name(i8 noundef zeroext %space_id) #0 align 16 !dbg !1084 {
entry:
  %retval = alloca ptr, align 8
  %space_id.addr = alloca i8, align 1
  store i8 %space_id, ptr %space_id.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %space_id.addr, metadata !1088, metadata !DIExpression()), !dbg !1089
  %0 = load i8, ptr %space_id.addr, align 1, !dbg !1090
  %conv = zext i8 %0 to i32, !dbg !1090
  %cmp = icmp sge i32 %conv, 128, !dbg !1092
  br i1 %cmp, label %if.then, label %if.else, !dbg !1093

if.then:                                          ; preds = %entry
  store ptr @.str.12, ptr %retval, align 8, !dbg !1094
  br label %return, !dbg !1094

if.else:                                          ; preds = %entry
  %1 = load i8, ptr %space_id.addr, align 1, !dbg !1096
  %conv2 = zext i8 %1 to i32, !dbg !1096
  %cmp3 = icmp eq i32 %conv2, 126, !dbg !1098
  br i1 %cmp3, label %if.then5, label %if.else6, !dbg !1099

if.then5:                                         ; preds = %if.else
  store ptr @.str.13, ptr %retval, align 8, !dbg !1100
  br label %return, !dbg !1100

if.else6:                                         ; preds = %if.else
  %2 = load i8, ptr %space_id.addr, align 1, !dbg !1102
  %conv7 = zext i8 %2 to i32, !dbg !1102
  %cmp8 = icmp eq i32 %conv7, 127, !dbg !1104
  br i1 %cmp8, label %if.then10, label %if.else11, !dbg !1105

if.then10:                                        ; preds = %if.else6
  store ptr @.str.14, ptr %retval, align 8, !dbg !1106
  br label %return, !dbg !1106

if.else11:                                        ; preds = %if.else6
  %3 = load i8, ptr %space_id.addr, align 1, !dbg !1108
  %conv12 = zext i8 %3 to i32, !dbg !1108
  %cmp13 = icmp sge i32 %conv12, 12, !dbg !1110
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !1111

if.then15:                                        ; preds = %if.else11
  store ptr @.str.15, ptr %retval, align 8, !dbg !1112
  br label %return, !dbg !1112

if.end:                                           ; preds = %if.else11
  br label %if.end16

if.end16:                                         ; preds = %if.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  %4 = load i8, ptr %space_id.addr, align 1, !dbg !1114
  %idxprom = zext i8 %4 to i64, !dbg !1115
  %arrayidx = getelementptr [12 x ptr], ptr @acpi_gbl_region_types, i64 0, i64 %idxprom, !dbg !1115
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1115
  store ptr %5, ptr %retval, align 8, !dbg !1116
  br label %return, !dbg !1116

return:                                           ; preds = %if.end18, %if.then15, %if.then10, %if.then5, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !1117
  ret ptr %6, !dbg !1117
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_get_event_name(i32 noundef %event_id) #0 align 16 !dbg !1118 {
entry:
  %retval = alloca ptr, align 8
  %event_id.addr = alloca i32, align 4
  store i32 %event_id, ptr %event_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event_id.addr, metadata !1122, metadata !DIExpression()), !dbg !1123
  %0 = load i32, ptr %event_id.addr, align 4, !dbg !1124
  %cmp = icmp ugt i32 %0, 4, !dbg !1126
  br i1 %cmp, label %if.then, label %if.end, !dbg !1127

if.then:                                          ; preds = %entry
  store ptr @.str.16, ptr %retval, align 8, !dbg !1128
  br label %return, !dbg !1128

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %event_id.addr, align 4, !dbg !1130
  %idxprom = zext i32 %1 to i64, !dbg !1131
  %arrayidx = getelementptr [5 x ptr], ptr @acpi_gbl_event_types, i64 0, i64 %idxprom, !dbg !1131
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1131
  store ptr %2, ptr %retval, align 8, !dbg !1132
  br label %return, !dbg !1132

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !1133
  ret ptr %3, !dbg !1133
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_get_type_name(i32 noundef %type) #0 align 16 !dbg !1134 {
entry:
  %retval = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1139, metadata !DIExpression()), !dbg !1140
  %0 = load i32, ptr %type.addr, align 4, !dbg !1141
  %cmp = icmp ugt i32 %0, 30, !dbg !1143
  br i1 %cmp, label %if.then, label %if.end, !dbg !1144

if.then:                                          ; preds = %entry
  store ptr @acpi_gbl_bad_type, ptr %retval, align 8, !dbg !1145
  br label %return, !dbg !1145

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !1147
  %idxprom = zext i32 %1 to i64, !dbg !1148
  %arrayidx = getelementptr [31 x ptr], ptr @acpi_gbl_ns_type_names, i64 0, i64 %idxprom, !dbg !1148
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1148
  store ptr %2, ptr %retval, align 8, !dbg !1149
  br label %return, !dbg !1149

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !1150
  ret ptr %3, !dbg !1150
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_get_object_type_name(ptr noundef %obj_desc) #0 align 16 !dbg !1151 {
entry:
  %retval = alloca ptr, align 8
  %obj_desc.addr = alloca ptr, align 8
  store ptr %obj_desc, ptr %obj_desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj_desc.addr, metadata !1155, metadata !DIExpression()), !dbg !1156
  %0 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1157
  %tobool = icmp ne ptr %0, null, !dbg !1157
  br i1 %tobool, label %if.end, label %if.then, !dbg !1159

if.then:                                          ; preds = %entry
  store ptr @.str.17, ptr %retval, align 8, !dbg !1160
  br label %return, !dbg !1160

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1162
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %1, i32 0, i32 1, !dbg !1162
  %2 = load i8, ptr %descriptor_type, align 8, !dbg !1162
  %conv = zext i8 %2 to i32, !dbg !1162
  %cmp = icmp ne i32 %conv, 14, !dbg !1164
  br i1 %cmp, label %land.lhs.true, label %if.end7, !dbg !1165

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1166
  %descriptor_type2 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %3, i32 0, i32 1, !dbg !1166
  %4 = load i8, ptr %descriptor_type2, align 8, !dbg !1166
  %conv3 = zext i8 %4 to i32, !dbg !1166
  %cmp4 = icmp ne i32 %conv3, 15, !dbg !1167
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !1168

if.then6:                                         ; preds = %land.lhs.true
  store ptr @.str.18, ptr %retval, align 8, !dbg !1169
  br label %return, !dbg !1169

if.end7:                                          ; preds = %land.lhs.true, %if.end
  %5 = load ptr, ptr %obj_desc.addr, align 8, !dbg !1171
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %5, i32 0, i32 2, !dbg !1171
  %6 = load i8, ptr %type, align 1, !dbg !1171
  %conv8 = zext i8 %6 to i32, !dbg !1171
  %call = call ptr @acpi_ut_get_type_name(i32 noundef %conv8) #4, !dbg !1171
  store ptr %call, ptr %retval, align 8, !dbg !1171
  br label %return, !dbg !1171

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %7 = load ptr, ptr %retval, align 8, !dbg !1172
  ret ptr %7, !dbg !1172
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_get_node_name(ptr noundef %object) #0 align 16 !dbg !1173 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1177, metadata !DIExpression()), !dbg !1179
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #5, !dbg !1180
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1178, metadata !DIExpression()), !dbg !1181
  %0 = load ptr, ptr %object.addr, align 8, !dbg !1182
  store ptr %0, ptr %node, align 8, !dbg !1181
  %1 = load ptr, ptr %object.addr, align 8, !dbg !1183
  %tobool = icmp ne ptr %1, null, !dbg !1183
  br i1 %tobool, label %if.end, label %if.then, !dbg !1185

if.then:                                          ; preds = %entry
  store ptr @.str.19, ptr %retval, align 8, !dbg !1186
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1186

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %object.addr, align 8, !dbg !1188
  %cmp = icmp eq ptr %2, inttoptr (i64 -1 to ptr), !dbg !1190
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !1191

lor.lhs.false:                                    ; preds = %if.end
  %3 = load ptr, ptr %object.addr, align 8, !dbg !1192
  %4 = load ptr, ptr @acpi_gbl_root_node, align 8, !dbg !1193
  %cmp1 = icmp eq ptr %3, %4, !dbg !1194
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !1195

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  store ptr @.str.20, ptr %retval, align 8, !dbg !1196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1196

if.end3:                                          ; preds = %lor.lhs.false
  %5 = load ptr, ptr %node, align 8, !dbg !1198
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %5, i32 0, i32 1, !dbg !1198
  %6 = load i8, ptr %descriptor_type, align 8, !dbg !1198
  %conv = zext i8 %6 to i32, !dbg !1198
  %cmp4 = icmp ne i32 %conv, 15, !dbg !1200
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !1201

if.then6:                                         ; preds = %if.end3
  store ptr @.str.21, ptr %retval, align 8, !dbg !1202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1202

if.end7:                                          ; preds = %if.end3
  %7 = load ptr, ptr %node, align 8, !dbg !1204
  %name = getelementptr inbounds %struct.acpi_namespace_node, ptr %7, i32 0, i32 4, !dbg !1205
  %arraydecay = getelementptr inbounds [4 x i8], ptr %name, i64 0, i64 0, !dbg !1204
  call void @acpi_ut_repair_name(ptr noundef %arraydecay) #4, !dbg !1206
  %8 = load ptr, ptr %node, align 8, !dbg !1207
  %name8 = getelementptr inbounds %struct.acpi_namespace_node, ptr %8, i32 0, i32 4, !dbg !1208
  %arraydecay9 = getelementptr inbounds [4 x i8], ptr %name8, i64 0, i64 0, !dbg !1209
  store ptr %arraydecay9, ptr %retval, align 8, !dbg !1210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1210

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #5, !dbg !1211
  %9 = load ptr, ptr %retval, align 8, !dbg !1211
  ret ptr %9, !dbg !1211
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1212 dso_local void @acpi_ut_repair_name(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_get_descriptor_name(ptr noundef %object) #0 align 16 !dbg !1216 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1218, metadata !DIExpression()), !dbg !1219
  %0 = load ptr, ptr %object.addr, align 8, !dbg !1220
  %tobool = icmp ne ptr %0, null, !dbg !1220
  br i1 %tobool, label %if.end, label %if.then, !dbg !1222

if.then:                                          ; preds = %entry
  store ptr @.str.22, ptr %retval, align 8, !dbg !1223
  br label %return, !dbg !1223

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8, !dbg !1225
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %1, i32 0, i32 1, !dbg !1225
  %2 = load i8, ptr %descriptor_type, align 8, !dbg !1225
  %conv = zext i8 %2 to i32, !dbg !1225
  %cmp = icmp sgt i32 %conv, 15, !dbg !1227
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1228

if.then2:                                         ; preds = %if.end
  store ptr @.str.23, ptr %retval, align 8, !dbg !1229
  br label %return, !dbg !1229

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %object.addr, align 8, !dbg !1231
  %descriptor_type4 = getelementptr inbounds %struct.acpi_common_descriptor, ptr %3, i32 0, i32 1, !dbg !1231
  %4 = load i8, ptr %descriptor_type4, align 8, !dbg !1231
  %idxprom = zext i8 %4 to i64, !dbg !1232
  %arrayidx = getelementptr [16 x ptr], ptr @acpi_gbl_desc_type_names, i64 0, i64 %idxprom, !dbg !1232
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1232
  store ptr %5, ptr %retval, align 8, !dbg !1233
  br label %return, !dbg !1233

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !1234
  ret ptr %6, !dbg !1234
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_get_reference_name(ptr noundef %object) #0 align 16 !dbg !1235 {
entry:
  %retval = alloca ptr, align 8
  %object.addr = alloca ptr, align 8
  store ptr %object, ptr %object.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %object.addr, metadata !1237, metadata !DIExpression()), !dbg !1238
  %0 = load ptr, ptr %object.addr, align 8, !dbg !1239
  %tobool = icmp ne ptr %0, null, !dbg !1239
  br i1 %tobool, label %if.end, label %if.then, !dbg !1241

if.then:                                          ; preds = %entry
  store ptr @.str.24, ptr %retval, align 8, !dbg !1242
  br label %return, !dbg !1242

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %object.addr, align 8, !dbg !1244
  %descriptor_type = getelementptr inbounds %struct.acpi_common_descriptor, ptr %1, i32 0, i32 1, !dbg !1244
  %2 = load i8, ptr %descriptor_type, align 8, !dbg !1244
  %conv = zext i8 %2 to i32, !dbg !1244
  %cmp = icmp ne i32 %conv, 14, !dbg !1246
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !1247

if.then2:                                         ; preds = %if.end
  store ptr @.str.25, ptr %retval, align 8, !dbg !1248
  br label %return, !dbg !1248

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %object.addr, align 8, !dbg !1250
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !1252
  %4 = load i8, ptr %type, align 1, !dbg !1252
  %conv4 = zext i8 %4 to i32, !dbg !1250
  %cmp5 = icmp ne i32 %conv4, 20, !dbg !1253
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !1254

if.then7:                                         ; preds = %if.end3
  store ptr @.str.26, ptr %retval, align 8, !dbg !1255
  br label %return, !dbg !1255

if.end8:                                          ; preds = %if.end3
  %5 = load ptr, ptr %object.addr, align 8, !dbg !1257
  %class = getelementptr inbounds %struct.acpi_object_reference, ptr %5, i32 0, i32 5, !dbg !1259
  %6 = load i8, ptr %class, align 1, !dbg !1259
  %conv9 = zext i8 %6 to i32, !dbg !1257
  %cmp10 = icmp sgt i32 %conv9, 6, !dbg !1260
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !1261

if.then12:                                        ; preds = %if.end8
  store ptr @.str.27, ptr %retval, align 8, !dbg !1262
  br label %return, !dbg !1262

if.end13:                                         ; preds = %if.end8
  %7 = load ptr, ptr %object.addr, align 8, !dbg !1264
  %class14 = getelementptr inbounds %struct.acpi_object_reference, ptr %7, i32 0, i32 5, !dbg !1265
  %8 = load i8, ptr %class14, align 1, !dbg !1265
  %idxprom = zext i8 %8 to i64, !dbg !1266
  %arrayidx = getelementptr [7 x ptr], ptr @acpi_gbl_ref_class_names, i64 0, i64 %idxprom, !dbg !1266
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !1266
  store ptr %9, ptr %retval, align 8, !dbg !1267
  br label %return, !dbg !1267

return:                                           ; preds = %if.end13, %if.then12, %if.then7, %if.then2, %if.then
  %10 = load ptr, ptr %retval, align 8, !dbg !1268
  ret ptr %10, !dbg !1268
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_get_mutex_name(i32 noundef %mutex_id) #0 align 16 !dbg !1269 {
entry:
  %retval = alloca ptr, align 8
  %mutex_id.addr = alloca i32, align 4
  store i32 %mutex_id, ptr %mutex_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mutex_id.addr, metadata !1271, metadata !DIExpression()), !dbg !1272
  %0 = load i32, ptr %mutex_id.addr, align 4, !dbg !1273
  %cmp = icmp ugt i32 %0, 5, !dbg !1275
  br i1 %cmp, label %if.then, label %if.end, !dbg !1276

if.then:                                          ; preds = %entry
  store ptr @.str.28, ptr %retval, align 8, !dbg !1277
  br label %return, !dbg !1277

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %mutex_id.addr, align 4, !dbg !1279
  %idxprom = zext i32 %1 to i64, !dbg !1280
  %arrayidx = getelementptr [6 x ptr], ptr @acpi_gbl_mutex_names, i64 0, i64 %idxprom, !dbg !1280
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !1280
  store ptr %2, ptr %retval, align 8, !dbg !1281
  br label %return, !dbg !1281

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !1282
  ret ptr %3, !dbg !1282
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ut_valid_object_type(i32 noundef %type) #0 align 16 !dbg !1283 {
entry:
  %retval = alloca i8, align 1
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1287, metadata !DIExpression()), !dbg !1288
  %0 = load i32, ptr %type.addr, align 4, !dbg !1289
  %cmp = icmp ugt i32 %0, 29, !dbg !1291
  br i1 %cmp, label %if.then, label %if.end, !dbg !1292

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !1293
  br label %return, !dbg !1293

if.end:                                           ; preds = %entry
  store i8 1, ptr %retval, align 1, !dbg !1295
  br label %return, !dbg !1295

return:                                           ; preds = %if.end, %if.then
  %1 = load i8, ptr %retval, align 1, !dbg !1296
  ret i8 %1, !dbg !1296
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082}
!llvm.ident = !{!1083}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_gbl_ns_properties", scope: !2, file: !3, line: 22, type: !1073, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utdecode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utdecode\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utdecode.ll drivers/acpi/acpica/utdecode.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !17, globals: !809, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utdecode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51ad760acf8be7d1494494de2398c92d")
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
!17 = !{!18, !25, !32, !93, !390, !805, !808, !62}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_type", file: !19, line: 814, baseType: !20)
!19 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !21, line: 17, baseType: !22)
!21 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !23, line: 21, baseType: !24)
!23 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_descriptor", file: !6, line: 434, size: 1600, elements: !27)
!27 = !{!28, !34, !803, !804}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !26, file: !6, line: 435, baseType: !29, size: 128)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_descriptor", file: !6, line: 429, size: 128, elements: !30)
!30 = !{!31, !33}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "common_pointer", scope: !29, file: !6, line: 430, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !29, file: !6, line: 431, baseType: !20, size: 8, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !26, file: !6, line: 436, baseType: !35, size: 576)
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !6, line: 369, size: 576, elements: !36)
!36 = !{!37, !49, !65, !79, !115, !129, !138, !452, !469, !485, !498, !576, !588, !602, !612, !630, !652, !671, !690, !709, !722, !749, !766, !779, !793, !802}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !35, file: !6, line: 370, baseType: !38, size: 128)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !6, line: 73, size: 128, elements: !39)
!39 = !{!40, !42, !43, !44, !48}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !38, file: !6, line: 74, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !38, file: !6, line: 74, baseType: !20, size: 8, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !6, line: 74, baseType: !20, size: 8, offset: 72)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !38, file: !6, line: 74, baseType: !45, size: 16, offset: 80)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !21, line: 19, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !23, line: 24, baseType: !47)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !38, file: !6, line: 74, baseType: !20, size: 8, offset: 96)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !35, file: !6, line: 371, baseType: !50, size: 192)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !6, line: 76, size: 192, elements: !51)
!51 = !{!52, !53, !54, !55, !56, !57, !61}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !50, file: !6, line: 77, baseType: !41, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !50, file: !6, line: 77, baseType: !20, size: 8, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !50, file: !6, line: 77, baseType: !20, size: 8, offset: 72)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !50, file: !6, line: 77, baseType: !45, size: 16, offset: 80)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !50, file: !6, line: 77, baseType: !20, size: 8, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !50, file: !6, line: 77, baseType: !58, size: 24, offset: 104)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 24, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 3)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !50, file: !6, line: 78, baseType: !62, size: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !21, line: 23, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !23, line: 31, baseType: !64)
!64 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !35, file: !6, line: 372, baseType: !66, size: 256)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !6, line: 93, size: 256, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73, !76}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !66, file: !6, line: 94, baseType: !41, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !66, file: !6, line: 94, baseType: !20, size: 8, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !6, line: 94, baseType: !20, size: 8, offset: 72)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !66, file: !6, line: 94, baseType: !45, size: 16, offset: 80)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !6, line: 94, baseType: !20, size: 8, offset: 96)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !66, file: !6, line: 94, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !66, file: !6, line: 94, baseType: !77, size: 32, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !21, line: 21, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !23, line: 27, baseType: !7)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !35, file: !6, line: 373, baseType: !80, size: 384)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !6, line: 97, size: 384, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !89, !90, !91, !92}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !80, file: !6, line: 98, baseType: !41, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !80, file: !6, line: 98, baseType: !20, size: 8, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !6, line: 98, baseType: !20, size: 8, offset: 72)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !80, file: !6, line: 98, baseType: !45, size: 16, offset: 80)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !6, line: 98, baseType: !20, size: 8, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !80, file: !6, line: 98, baseType: !88, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !80, file: !6, line: 98, baseType: !77, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !80, file: !6, line: 99, baseType: !77, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !80, file: !6, line: 100, baseType: !88, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !80, file: !6, line: 101, baseType: !93, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !95, line: 133, size: 384, elements: !96)
!95 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!96 = !{!97, !98, !99, !100, !101, !110, !111, !112, !113}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !94, file: !95, line: 134, baseType: !41, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !94, file: !95, line: 135, baseType: !20, size: 8, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !95, line: 136, baseType: !20, size: 8, offset: 72)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !94, file: !95, line: 137, baseType: !45, size: 16, offset: 80)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !94, file: !95, line: 138, baseType: !102, size: 32, offset: 96)
!102 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !103, line: 328, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !102, file: !103, line: 329, baseType: !77, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !102, file: !103, line: 330, baseType: !107, size: 32)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 32, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 4)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !94, file: !95, line: 139, baseType: !93, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !94, file: !95, line: 140, baseType: !93, size: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !94, file: !95, line: 141, baseType: !93, size: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !94, file: !95, line: 142, baseType: !114, size: 16, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !19, line: 445, baseType: !45)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !35, file: !6, line: 374, baseType: !116, size: 384)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !6, line: 104, size: 384, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124, !126, !127, !128}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !116, file: !6, line: 105, baseType: !41, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !116, file: !6, line: 105, baseType: !20, size: 8, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !116, file: !6, line: 105, baseType: !20, size: 8, offset: 72)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !116, file: !6, line: 105, baseType: !45, size: 16, offset: 80)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !6, line: 105, baseType: !20, size: 8, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !116, file: !6, line: 105, baseType: !93, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !116, file: !6, line: 106, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !116, file: !6, line: 107, baseType: !88, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !116, file: !6, line: 108, baseType: !77, size: 32, offset: 320)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !116, file: !6, line: 109, baseType: !77, size: 32, offset: 352)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !35, file: !6, line: 375, baseType: !130, size: 192)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !6, line: 118, size: 192, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !130, file: !6, line: 119, baseType: !41, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !130, file: !6, line: 119, baseType: !20, size: 8, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !6, line: 119, baseType: !20, size: 8, offset: 72)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !130, file: !6, line: 119, baseType: !45, size: 16, offset: 80)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !130, file: !6, line: 119, baseType: !20, size: 8, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !130, file: !6, line: 119, baseType: !32, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !35, file: !6, line: 376, baseType: !139, size: 448)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !6, line: 144, size: 448, elements: !140)
!140 = !{!141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !449, !450, !451}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !139, file: !6, line: 145, baseType: !41, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !139, file: !6, line: 145, baseType: !20, size: 8, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !139, file: !6, line: 145, baseType: !20, size: 8, offset: 72)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !139, file: !6, line: 145, baseType: !45, size: 16, offset: 80)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !6, line: 145, baseType: !20, size: 8, offset: 96)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !139, file: !6, line: 145, baseType: !20, size: 8, offset: 104)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !139, file: !6, line: 146, baseType: !20, size: 8, offset: 112)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !139, file: !6, line: 147, baseType: !20, size: 8, offset: 120)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !139, file: !6, line: 148, baseType: !41, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !6, line: 149, baseType: !41, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !139, file: !6, line: 150, baseType: !88, size: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !139, file: !6, line: 154, baseType: !153, size: 64, offset: 320)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !139, file: !6, line: 151, size: 64, elements: !154)
!154 = !{!155, !448}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !153, file: !6, line: 152, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !95, line: 248, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !19, line: 421, baseType: !77)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !163, line: 37, size: 9024, elements: !164)
!163 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !394, !395, !396, !397, !398, !402, !404, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !431, !432, !433, !434, !435, !436, !437, !438, !440, !446}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !163, line: 38, baseType: !161, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !162, file: !163, line: 39, baseType: !20, size: 8, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !162, file: !163, line: 40, baseType: !20, size: 8, offset: 72)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !162, file: !163, line: 41, baseType: !45, size: 16, offset: 80)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !162, file: !163, line: 42, baseType: !20, size: 8, offset: 96)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !162, file: !163, line: 43, baseType: !20, size: 8, offset: 104)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !162, file: !163, line: 44, baseType: !20, size: 8, offset: 112)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !162, file: !163, line: 45, baseType: !114, size: 16, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !162, file: !163, line: 46, baseType: !20, size: 8, offset: 144)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !162, file: !163, line: 47, baseType: !20, size: 8, offset: 152)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !162, file: !163, line: 48, baseType: !20, size: 8, offset: 160)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !162, file: !163, line: 49, baseType: !20, size: 8, offset: 168)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !162, file: !163, line: 50, baseType: !20, size: 8, offset: 176)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !162, file: !163, line: 51, baseType: !20, size: 8, offset: 184)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !162, file: !163, line: 52, baseType: !20, size: 8, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !162, file: !163, line: 53, baseType: !20, size: 8, offset: 200)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !162, file: !163, line: 54, baseType: !88, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !162, file: !163, line: 55, baseType: !77, size: 32, offset: 320)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !162, file: !163, line: 56, baseType: !77, size: 32, offset: 352)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !162, file: !163, line: 57, baseType: !77, size: 32, offset: 384)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !162, file: !163, line: 58, baseType: !77, size: 32, offset: 416)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !162, file: !163, line: 60, baseType: !187, size: 640, offset: 448)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !95, line: 909, size: 640, elements: !188)
!188 = !{!189, !190, !191, !192, !193, !194, !275, !276, !392, !393}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !187, file: !95, line: 910, baseType: !88, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !187, file: !95, line: 911, baseType: !88, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !187, file: !95, line: 912, baseType: !88, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !187, file: !95, line: 913, baseType: !88, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !187, file: !95, line: 914, baseType: !88, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !187, file: !95, line: 915, baseType: !195, size: 64, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !95, line: 891, size: 1600, elements: !197)
!197 = !{!198, !218, !234}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !196, file: !95, line: 892, baseType: !199, size: 448)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !95, line: 844, size: 448, elements: !200)
!200 = !{!201, !202, !203, !204, !205, !206, !207, !208, !217}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !199, file: !95, line: 845, baseType: !195, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !199, file: !95, line: 845, baseType: !20, size: 8, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !95, line: 845, baseType: !20, size: 8, offset: 72)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !199, file: !95, line: 845, baseType: !45, size: 16, offset: 80)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !199, file: !95, line: 845, baseType: !88, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !95, line: 845, baseType: !195, size: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !199, file: !95, line: 845, baseType: !93, size: 64, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !199, file: !95, line: 845, baseType: !209, size: 64, offset: 320)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !95, line: 732, size: 64, elements: !210)
!210 = !{!211, !212, !213, !214, !215, !216}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !209, file: !95, line: 733, baseType: !62, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !209, file: !95, line: 734, baseType: !77, size: 32)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !209, file: !95, line: 735, baseType: !74, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !209, file: !95, line: 736, baseType: !88, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !95, line: 737, baseType: !74, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !209, file: !95, line: 738, baseType: !195, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !199, file: !95, line: 845, baseType: !20, size: 8, offset: 384)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !196, file: !95, line: 893, baseType: !219, size: 640)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !95, line: 851, size: 640, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !219, file: !95, line: 852, baseType: !195, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !219, file: !95, line: 852, baseType: !20, size: 8, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !219, file: !95, line: 852, baseType: !20, size: 8, offset: 72)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !219, file: !95, line: 852, baseType: !45, size: 16, offset: 80)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !219, file: !95, line: 852, baseType: !88, size: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !219, file: !95, line: 852, baseType: !195, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !219, file: !95, line: 852, baseType: !93, size: 64, offset: 256)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !219, file: !95, line: 852, baseType: !209, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !219, file: !95, line: 852, baseType: !20, size: 8, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !219, file: !95, line: 852, baseType: !74, size: 64, offset: 448)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !219, file: !95, line: 853, baseType: !88, size: 64, offset: 512)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !219, file: !95, line: 854, baseType: !77, size: 32, offset: 576)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !219, file: !95, line: 855, baseType: !77, size: 32, offset: 608)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !196, file: !95, line: 894, baseType: !235, size: 1600)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !95, line: 862, size: 1600, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !235, file: !95, line: 863, baseType: !195, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !235, file: !95, line: 863, baseType: !20, size: 8, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !235, file: !95, line: 863, baseType: !20, size: 8, offset: 72)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !235, file: !95, line: 863, baseType: !45, size: 16, offset: 80)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !235, file: !95, line: 863, baseType: !88, size: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !95, line: 863, baseType: !195, size: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !235, file: !95, line: 863, baseType: !93, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !235, file: !95, line: 863, baseType: !209, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !235, file: !95, line: 863, baseType: !20, size: 8, offset: 384)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !235, file: !95, line: 863, baseType: !195, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !235, file: !95, line: 864, baseType: !195, size: 64, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !235, file: !95, line: 865, baseType: !74, size: 64, offset: 576)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !235, file: !95, line: 866, baseType: !20, size: 8, offset: 640)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !235, file: !95, line: 867, baseType: !74, size: 64, offset: 704)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !235, file: !95, line: 868, baseType: !74, size: 64, offset: 768)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !235, file: !95, line: 869, baseType: !74, size: 64, offset: 832)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !235, file: !95, line: 870, baseType: !107, size: 32, offset: 896)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !235, file: !95, line: 871, baseType: !77, size: 32, offset: 928)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !235, file: !95, line: 872, baseType: !77, size: 32, offset: 960)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !235, file: !95, line: 873, baseType: !77, size: 32, offset: 992)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !235, file: !95, line: 874, baseType: !77, size: 32, offset: 1024)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !235, file: !95, line: 875, baseType: !77, size: 32, offset: 1056)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !235, file: !95, line: 876, baseType: !77, size: 32, offset: 1088)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !235, file: !95, line: 877, baseType: !77, size: 32, offset: 1120)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !235, file: !95, line: 878, baseType: !77, size: 32, offset: 1152)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !235, file: !95, line: 879, baseType: !77, size: 32, offset: 1184)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !235, file: !95, line: 880, baseType: !77, size: 32, offset: 1216)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !235, file: !95, line: 881, baseType: !77, size: 32, offset: 1248)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !235, file: !95, line: 882, baseType: !77, size: 32, offset: 1280)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !235, file: !95, line: 883, baseType: !77, size: 32, offset: 1312)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !235, file: !95, line: 884, baseType: !45, size: 16, offset: 1344)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !235, file: !95, line: 885, baseType: !20, size: 8, offset: 1360)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !235, file: !95, line: 886, baseType: !20, size: 8, offset: 1368)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !235, file: !95, line: 887, baseType: !20, size: 8, offset: 1376)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !235, file: !95, line: 888, baseType: !272, size: 160, offset: 1384)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 160, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 20)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !187, file: !95, line: 916, baseType: !93, size: 64, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !187, file: !95, line: 917, baseType: !277, size: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !95, line: 679, size: 640, elements: !279)
!279 = !{!280, !288, !301, !310, !319, !332, !346, !358, !370}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !278, file: !95, line: 680, baseType: !281, size: 128)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !95, line: 575, size: 128, elements: !282)
!282 = !{!283, !284, !285, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !281, file: !95, line: 576, baseType: !32, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !281, file: !95, line: 576, baseType: !20, size: 8, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !281, file: !95, line: 576, baseType: !20, size: 8, offset: 72)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !281, file: !95, line: 576, baseType: !45, size: 16, offset: 80)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !281, file: !95, line: 576, baseType: !45, size: 16, offset: 96)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !278, file: !95, line: 681, baseType: !289, size: 384)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !95, line: 604, size: 384, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !289, file: !95, line: 605, baseType: !32, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !289, file: !95, line: 605, baseType: !20, size: 8, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !95, line: 605, baseType: !20, size: 8, offset: 72)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !289, file: !95, line: 605, baseType: !45, size: 16, offset: 80)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !289, file: !95, line: 605, baseType: !45, size: 16, offset: 96)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !289, file: !95, line: 606, baseType: !45, size: 16, offset: 112)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !289, file: !95, line: 607, baseType: !195, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !289, file: !95, line: 608, baseType: !88, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !289, file: !95, line: 609, baseType: !88, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !289, file: !95, line: 610, baseType: !62, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !278, file: !95, line: 682, baseType: !302, size: 192)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !95, line: 582, size: 192, elements: !303)
!303 = !{!304, !305, !306, !307, !308, !309}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !95, line: 583, baseType: !32, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !302, file: !95, line: 583, baseType: !20, size: 8, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !302, file: !95, line: 583, baseType: !20, size: 8, offset: 72)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !302, file: !95, line: 583, baseType: !45, size: 16, offset: 80)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !302, file: !95, line: 583, baseType: !45, size: 16, offset: 96)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !302, file: !95, line: 584, baseType: !41, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !278, file: !95, line: 683, baseType: !311, size: 192)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !95, line: 616, size: 192, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !95, line: 617, baseType: !32, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !311, file: !95, line: 617, baseType: !20, size: 8, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !95, line: 617, baseType: !20, size: 8, offset: 72)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !311, file: !95, line: 617, baseType: !45, size: 16, offset: 80)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !311, file: !95, line: 617, baseType: !45, size: 16, offset: 96)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !311, file: !95, line: 618, baseType: !93, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !278, file: !95, line: 684, baseType: !320, size: 448)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !95, line: 621, size: 448, elements: !321)
!321 = !{!322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !95, line: 622, baseType: !32, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !320, file: !95, line: 622, baseType: !20, size: 8, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !95, line: 622, baseType: !20, size: 8, offset: 72)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !320, file: !95, line: 622, baseType: !45, size: 16, offset: 80)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !320, file: !95, line: 622, baseType: !45, size: 16, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !320, file: !95, line: 623, baseType: !77, size: 32, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !320, file: !95, line: 624, baseType: !195, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !320, file: !95, line: 625, baseType: !88, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !320, file: !95, line: 626, baseType: !88, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !320, file: !95, line: 627, baseType: !77, size: 32, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !278, file: !95, line: 685, baseType: !333, size: 512)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !95, line: 590, size: 512, elements: !334)
!334 = !{!335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !95, line: 591, baseType: !32, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !333, file: !95, line: 591, baseType: !20, size: 8, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !95, line: 591, baseType: !20, size: 8, offset: 72)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !333, file: !95, line: 591, baseType: !45, size: 16, offset: 80)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !333, file: !95, line: 591, baseType: !45, size: 16, offset: 96)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !333, file: !95, line: 592, baseType: !77, size: 32, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !333, file: !95, line: 593, baseType: !41, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !333, file: !95, line: 594, baseType: !41, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !333, file: !95, line: 595, baseType: !161, size: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !333, file: !95, line: 596, baseType: !32, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !333, file: !95, line: 597, baseType: !77, size: 32, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !278, file: !95, line: 686, baseType: !347, size: 320)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !95, line: 634, size: 320, elements: !348)
!348 = !{!349, !350, !351, !352, !353, !354, !355, !356, !357}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !95, line: 635, baseType: !32, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !347, file: !95, line: 635, baseType: !20, size: 8, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !95, line: 635, baseType: !20, size: 8, offset: 72)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !347, file: !95, line: 635, baseType: !45, size: 16, offset: 80)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !347, file: !95, line: 635, baseType: !45, size: 16, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !347, file: !95, line: 636, baseType: !20, size: 8, offset: 112)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !347, file: !95, line: 637, baseType: !161, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !347, file: !95, line: 638, baseType: !41, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !347, file: !95, line: 639, baseType: !62, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !278, file: !95, line: 687, baseType: !359, size: 640)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !95, line: 646, size: 640, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !359, file: !95, line: 647, baseType: !32, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !359, file: !95, line: 647, baseType: !20, size: 8, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !359, file: !95, line: 647, baseType: !20, size: 8, offset: 72)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !359, file: !95, line: 647, baseType: !45, size: 16, offset: 80)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !359, file: !95, line: 647, baseType: !45, size: 16, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !359, file: !95, line: 648, baseType: !367, size: 512, offset: 128)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 512, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 8)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !278, file: !95, line: 688, baseType: !371, size: 320)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !95, line: 669, size: 320, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !95, line: 670, baseType: !32, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !371, file: !95, line: 670, baseType: !20, size: 8, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !371, file: !95, line: 670, baseType: !20, size: 8, offset: 72)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !371, file: !95, line: 670, baseType: !45, size: 16, offset: 80)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !371, file: !95, line: 670, baseType: !45, size: 16, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !371, file: !95, line: 671, baseType: !20, size: 8, offset: 112)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !371, file: !95, line: 672, baseType: !93, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !371, file: !95, line: 673, baseType: !41, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !371, file: !95, line: 674, baseType: !382, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !95, line: 660, size: 128, elements: !384)
!384 = !{!385, !391}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !383, file: !95, line: 661, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !19, line: 1061, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !390, !77, !32}
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !19, line: 424, baseType: !32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !383, file: !95, line: 662, baseType: !32, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !187, file: !95, line: 918, baseType: !195, size: 64, offset: 512)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !187, file: !95, line: 919, baseType: !77, size: 32, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !162, file: !163, line: 61, baseType: !77, size: 32, offset: 1088)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !162, file: !163, line: 62, baseType: !77, size: 32, offset: 1120)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !162, file: !163, line: 63, baseType: !45, size: 16, offset: 1152)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !162, file: !163, line: 64, baseType: !20, size: 8, offset: 1168)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !162, file: !163, line: 66, baseType: !399, size: 2688, offset: 1216)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 2688, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 7)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !162, file: !163, line: 67, baseType: !403, size: 3072, offset: 3904)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3072, elements: !368)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !162, file: !163, line: 68, baseType: !405, size: 576, offset: 6976)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 576, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 9)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !162, file: !163, line: 69, baseType: !125, size: 64, offset: 7552)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !162, file: !163, line: 71, baseType: !88, size: 64, offset: 7616)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !162, file: !163, line: 72, baseType: !125, size: 64, offset: 7680)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !162, file: !163, line: 73, baseType: !277, size: 64, offset: 7744)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !162, file: !163, line: 74, baseType: !93, size: 64, offset: 7808)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !162, file: !163, line: 75, baseType: !41, size: 64, offset: 7872)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !162, file: !163, line: 76, baseType: !93, size: 64, offset: 7936)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !162, file: !163, line: 77, baseType: !195, size: 64, offset: 8000)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !162, file: !163, line: 78, baseType: !41, size: 64, offset: 8064)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !162, file: !163, line: 79, baseType: !93, size: 64, offset: 8128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !162, file: !163, line: 80, baseType: !74, size: 64, offset: 8192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !162, file: !163, line: 81, baseType: !195, size: 64, offset: 8256)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !162, file: !163, line: 82, baseType: !421, size: 64, offset: 8320)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !95, line: 718, size: 128, elements: !424)
!424 = !{!425, !426, !427, !428, !429, !430}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !423, file: !95, line: 722, baseType: !77, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !423, file: !95, line: 723, baseType: !77, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !423, file: !95, line: 724, baseType: !45, size: 16, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !423, file: !95, line: 725, baseType: !20, size: 8, offset: 80)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !423, file: !95, line: 726, baseType: !20, size: 8, offset: 88)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !423, file: !95, line: 727, baseType: !20, size: 8, offset: 96)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !162, file: !163, line: 83, baseType: !195, size: 64, offset: 8384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !162, file: !163, line: 84, baseType: !41, size: 64, offset: 8448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !162, file: !163, line: 85, baseType: !277, size: 64, offset: 8512)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !162, file: !163, line: 86, baseType: !41, size: 64, offset: 8576)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !162, file: !163, line: 87, baseType: !277, size: 64, offset: 8640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !162, file: !163, line: 88, baseType: !195, size: 64, offset: 8704)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !162, file: !163, line: 89, baseType: !195, size: 64, offset: 8768)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !162, file: !163, line: 90, baseType: !439, size: 64, offset: 8832)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !162, file: !163, line: 91, baseType: !441, size: 64, offset: 8896)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !95, line: 652, baseType: !442)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!160, !161, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !162, file: !163, line: 92, baseType: !447, size: 64, offset: 8960)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !95, line: 656, baseType: !157)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !153, file: !6, line: 153, baseType: !41, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !139, file: !6, line: 156, baseType: !77, size: 32, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !139, file: !6, line: 157, baseType: !114, size: 16, offset: 416)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !139, file: !6, line: 158, baseType: !20, size: 8, offset: 432)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !35, file: !6, line: 377, baseType: !453, size: 576)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !6, line: 122, size: 576, elements: !454)
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !453, file: !6, line: 123, baseType: !41, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !453, file: !6, line: 123, baseType: !20, size: 8, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !453, file: !6, line: 123, baseType: !20, size: 8, offset: 72)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !453, file: !6, line: 123, baseType: !45, size: 16, offset: 80)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !6, line: 123, baseType: !20, size: 8, offset: 96)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !453, file: !6, line: 123, baseType: !20, size: 8, offset: 104)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !453, file: !6, line: 124, baseType: !45, size: 16, offset: 112)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !453, file: !6, line: 125, baseType: !32, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !453, file: !6, line: 126, baseType: !62, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !453, file: !6, line: 127, baseType: !439, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !453, file: !6, line: 128, baseType: !41, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !6, line: 129, baseType: !41, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !453, file: !6, line: 130, baseType: !93, size: 64, offset: 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !453, file: !6, line: 131, baseType: !20, size: 8, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !35, file: !6, line: 378, baseType: !470, size: 512)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !6, line: 134, size: 512, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !483, !484}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !470, file: !6, line: 135, baseType: !41, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !470, file: !6, line: 135, baseType: !20, size: 8, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !470, file: !6, line: 135, baseType: !20, size: 8, offset: 72)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !470, file: !6, line: 135, baseType: !45, size: 16, offset: 80)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !6, line: 135, baseType: !20, size: 8, offset: 96)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !470, file: !6, line: 135, baseType: !20, size: 8, offset: 104)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !470, file: !6, line: 136, baseType: !93, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !470, file: !6, line: 137, baseType: !41, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !470, file: !6, line: 138, baseType: !41, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !470, file: !6, line: 139, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !19, line: 129, baseType: !62)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !470, file: !6, line: 140, baseType: !77, size: 32, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !470, file: !6, line: 141, baseType: !32, size: 64, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !35, file: !6, line: 379, baseType: !486, size: 320)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !6, line: 185, size: 320, elements: !487)
!487 = !{!488, !489, !490, !491, !492, !493, !497}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !486, file: !6, line: 186, baseType: !41, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !486, file: !6, line: 186, baseType: !20, size: 8, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !486, file: !6, line: 186, baseType: !20, size: 8, offset: 72)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !486, file: !6, line: 186, baseType: !45, size: 16, offset: 80)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !6, line: 186, baseType: !20, size: 8, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !486, file: !6, line: 186, baseType: !494, size: 128, offset: 128)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 128, elements: !495)
!495 = !{!496}
!496 = !DISubrange(count: 2)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !486, file: !6, line: 186, baseType: !41, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !35, file: !6, line: 380, baseType: !499, size: 384)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !6, line: 188, size: 384, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !499, file: !6, line: 189, baseType: !41, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !499, file: !6, line: 189, baseType: !20, size: 8, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !499, file: !6, line: 189, baseType: !20, size: 8, offset: 72)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !499, file: !6, line: 189, baseType: !45, size: 16, offset: 80)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !6, line: 189, baseType: !20, size: 8, offset: 96)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !499, file: !6, line: 190, baseType: !494, size: 128, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !499, file: !6, line: 190, baseType: !41, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !499, file: !6, line: 190, baseType: !509, size: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !95, line: 480, size: 576, elements: !511)
!511 = !{!512, !513, !514, !515, !523, !538, !570, !571, !572, !573, !574, !575}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !510, file: !95, line: 481, baseType: !93, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !510, file: !95, line: 482, baseType: !509, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !510, file: !95, line: 483, baseType: !509, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !510, file: !95, line: 484, baseType: !516, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !95, line: 497, size: 256, elements: !518)
!518 = !{!519, !520, !521, !522}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !517, file: !95, line: 498, baseType: !516, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !517, file: !95, line: 499, baseType: !516, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !517, file: !95, line: 500, baseType: !509, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !517, file: !95, line: 501, baseType: !77, size: 32, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !510, file: !95, line: 485, baseType: !524, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !95, line: 466, size: 320, elements: !526)
!526 = !{!527, !532, !533, !534, !535, !536, !537}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !525, file: !95, line: 467, baseType: !528, size: 128)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !95, line: 459, size: 128, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !528, file: !95, line: 460, baseType: !20, size: 8)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !528, file: !95, line: 461, baseType: !62, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !525, file: !95, line: 468, baseType: !528, size: 128, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !525, file: !95, line: 469, baseType: !45, size: 16, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !525, file: !95, line: 470, baseType: !20, size: 8, offset: 272)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !525, file: !95, line: 471, baseType: !20, size: 8, offset: 280)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !525, file: !95, line: 472, baseType: !20, size: 8, offset: 288)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !525, file: !95, line: 473, baseType: !20, size: 8, offset: 296)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !510, file: !95, line: 486, baseType: !539, size: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !95, line: 448, size: 192, elements: !541)
!541 = !{!542, !565, !566, !567, !568, !569}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !540, file: !95, line: 449, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !95, line: 438, size: 64, elements: !544)
!544 = !{!545, !546, !559}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !543, file: !95, line: 439, baseType: !93, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !543, file: !95, line: 440, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !95, line: 419, size: 256, elements: !549)
!549 = !{!550, !555, !556, !557, !558}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !548, file: !95, line: 420, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !19, line: 1058, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!77, !390, !77, !32}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !548, file: !95, line: 421, baseType: !32, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !548, file: !95, line: 422, baseType: !93, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !548, file: !95, line: 423, baseType: !20, size: 8, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !548, file: !95, line: 424, baseType: !20, size: 8, offset: 200)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !543, file: !95, line: 441, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !95, line: 429, size: 128, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !561, file: !95, line: 430, baseType: !93, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !561, file: !95, line: 431, baseType: !560, size: 64, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !540, file: !95, line: 450, baseType: !524, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !540, file: !95, line: 451, baseType: !20, size: 8, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !540, file: !95, line: 452, baseType: !20, size: 8, offset: 136)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !540, file: !95, line: 453, baseType: !20, size: 8, offset: 144)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !540, file: !95, line: 454, baseType: !20, size: 8, offset: 152)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !510, file: !95, line: 487, baseType: !62, size: 64, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !510, file: !95, line: 488, baseType: !77, size: 32, offset: 448)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !510, file: !95, line: 489, baseType: !45, size: 16, offset: 480)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !510, file: !95, line: 490, baseType: !45, size: 16, offset: 496)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !510, file: !95, line: 491, baseType: !20, size: 8, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !510, file: !95, line: 492, baseType: !20, size: 8, offset: 520)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !35, file: !6, line: 381, baseType: !577, size: 384)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !6, line: 193, size: 384, elements: !578)
!578 = !{!579, !580, !581, !582, !583, !584, !585, !586, !587}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !577, file: !6, line: 194, baseType: !41, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !577, file: !6, line: 194, baseType: !20, size: 8, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !577, file: !6, line: 194, baseType: !20, size: 8, offset: 72)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !577, file: !6, line: 194, baseType: !45, size: 16, offset: 80)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !577, file: !6, line: 194, baseType: !20, size: 8, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !577, file: !6, line: 194, baseType: !494, size: 128, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !577, file: !6, line: 194, baseType: !41, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !577, file: !6, line: 194, baseType: !77, size: 32, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !577, file: !6, line: 195, baseType: !77, size: 32, offset: 352)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !35, file: !6, line: 382, baseType: !589, size: 384)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !6, line: 198, size: 384, elements: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !597, !598, !599, !600}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !589, file: !6, line: 199, baseType: !41, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !589, file: !6, line: 199, baseType: !20, size: 8, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !6, line: 199, baseType: !20, size: 8, offset: 72)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !589, file: !6, line: 199, baseType: !45, size: 16, offset: 80)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !589, file: !6, line: 199, baseType: !20, size: 8, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !589, file: !6, line: 201, baseType: !20, size: 8, offset: 104)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !589, file: !6, line: 202, baseType: !20, size: 8, offset: 112)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !589, file: !6, line: 203, baseType: !494, size: 128, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !589, file: !6, line: 203, baseType: !41, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !589, file: !6, line: 203, baseType: !601, size: 64, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !19, line: 128, baseType: !62)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !35, file: !6, line: 383, baseType: !603, size: 320)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !6, line: 206, size: 320, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !603, file: !6, line: 207, baseType: !41, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !603, file: !6, line: 207, baseType: !20, size: 8, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !603, file: !6, line: 207, baseType: !20, size: 8, offset: 72)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !603, file: !6, line: 207, baseType: !45, size: 16, offset: 80)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !603, file: !6, line: 207, baseType: !20, size: 8, offset: 96)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !603, file: !6, line: 207, baseType: !494, size: 128, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !603, file: !6, line: 207, baseType: !41, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !35, file: !6, line: 384, baseType: !613, size: 384)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !6, line: 234, size: 384, elements: !614)
!614 = !{!615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !613, file: !6, line: 235, baseType: !41, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !613, file: !6, line: 235, baseType: !20, size: 8, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !6, line: 235, baseType: !20, size: 8, offset: 72)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !613, file: !6, line: 235, baseType: !45, size: 16, offset: 80)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !613, file: !6, line: 235, baseType: !20, size: 8, offset: 96)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !613, file: !6, line: 235, baseType: !20, size: 8, offset: 104)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !613, file: !6, line: 235, baseType: !20, size: 8, offset: 112)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !613, file: !6, line: 235, baseType: !20, size: 8, offset: 120)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !613, file: !6, line: 235, baseType: !93, size: 64, offset: 128)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !613, file: !6, line: 235, baseType: !77, size: 32, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !613, file: !6, line: 235, baseType: !77, size: 32, offset: 224)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !613, file: !6, line: 235, baseType: !77, size: 32, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !613, file: !6, line: 235, baseType: !20, size: 8, offset: 288)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !613, file: !6, line: 235, baseType: !20, size: 8, offset: 296)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !613, file: !6, line: 235, baseType: !41, size: 64, offset: 320)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !35, file: !6, line: 385, baseType: !631, size: 576)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !6, line: 238, size: 576, elements: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !631, file: !6, line: 239, baseType: !41, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !631, file: !6, line: 239, baseType: !20, size: 8, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !631, file: !6, line: 239, baseType: !20, size: 8, offset: 72)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !631, file: !6, line: 239, baseType: !45, size: 16, offset: 80)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !6, line: 239, baseType: !20, size: 8, offset: 96)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !631, file: !6, line: 239, baseType: !20, size: 8, offset: 104)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !631, file: !6, line: 239, baseType: !20, size: 8, offset: 112)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !631, file: !6, line: 239, baseType: !20, size: 8, offset: 120)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !631, file: !6, line: 239, baseType: !93, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !631, file: !6, line: 239, baseType: !77, size: 32, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !631, file: !6, line: 239, baseType: !77, size: 32, offset: 224)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !631, file: !6, line: 239, baseType: !77, size: 32, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !631, file: !6, line: 239, baseType: !20, size: 8, offset: 288)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !631, file: !6, line: 239, baseType: !20, size: 8, offset: 296)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !631, file: !6, line: 239, baseType: !45, size: 16, offset: 304)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !631, file: !6, line: 240, baseType: !41, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !631, file: !6, line: 241, baseType: !88, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !631, file: !6, line: 242, baseType: !45, size: 16, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !631, file: !6, line: 243, baseType: !88, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !35, file: !6, line: 386, baseType: !653, size: 384)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !6, line: 263, size: 384, elements: !654)
!654 = !{!655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !653, file: !6, line: 264, baseType: !41, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !653, file: !6, line: 264, baseType: !20, size: 8, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !653, file: !6, line: 264, baseType: !20, size: 8, offset: 72)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !653, file: !6, line: 264, baseType: !45, size: 16, offset: 80)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !653, file: !6, line: 264, baseType: !20, size: 8, offset: 96)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !653, file: !6, line: 264, baseType: !20, size: 8, offset: 104)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !653, file: !6, line: 264, baseType: !20, size: 8, offset: 112)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !653, file: !6, line: 264, baseType: !20, size: 8, offset: 120)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !653, file: !6, line: 264, baseType: !93, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !653, file: !6, line: 264, baseType: !77, size: 32, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !653, file: !6, line: 264, baseType: !77, size: 32, offset: 224)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !653, file: !6, line: 264, baseType: !77, size: 32, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !653, file: !6, line: 264, baseType: !20, size: 8, offset: 288)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !653, file: !6, line: 264, baseType: !20, size: 8, offset: 296)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !653, file: !6, line: 264, baseType: !20, size: 8, offset: 304)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !653, file: !6, line: 265, baseType: !41, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !35, file: !6, line: 387, baseType: !672, size: 448)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !6, line: 246, size: 448, elements: !673)
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !672, file: !6, line: 247, baseType: !41, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !672, file: !6, line: 247, baseType: !20, size: 8, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !672, file: !6, line: 247, baseType: !20, size: 8, offset: 72)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !672, file: !6, line: 247, baseType: !45, size: 16, offset: 80)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !672, file: !6, line: 247, baseType: !20, size: 8, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !672, file: !6, line: 247, baseType: !20, size: 8, offset: 104)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !672, file: !6, line: 247, baseType: !20, size: 8, offset: 112)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !672, file: !6, line: 247, baseType: !20, size: 8, offset: 120)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !672, file: !6, line: 247, baseType: !93, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !672, file: !6, line: 247, baseType: !77, size: 32, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !672, file: !6, line: 247, baseType: !77, size: 32, offset: 224)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !672, file: !6, line: 247, baseType: !77, size: 32, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !672, file: !6, line: 247, baseType: !20, size: 8, offset: 288)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !672, file: !6, line: 247, baseType: !20, size: 8, offset: 296)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !672, file: !6, line: 247, baseType: !41, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !672, file: !6, line: 248, baseType: !41, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !35, file: !6, line: 388, baseType: !691, size: 448)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !6, line: 251, size: 448, elements: !692)
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !691, file: !6, line: 252, baseType: !41, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !691, file: !6, line: 252, baseType: !20, size: 8, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !691, file: !6, line: 252, baseType: !20, size: 8, offset: 72)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !691, file: !6, line: 252, baseType: !45, size: 16, offset: 80)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !6, line: 252, baseType: !20, size: 8, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !691, file: !6, line: 252, baseType: !20, size: 8, offset: 104)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !691, file: !6, line: 252, baseType: !20, size: 8, offset: 112)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !691, file: !6, line: 252, baseType: !20, size: 8, offset: 120)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !691, file: !6, line: 252, baseType: !93, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !691, file: !6, line: 252, baseType: !77, size: 32, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !691, file: !6, line: 252, baseType: !77, size: 32, offset: 224)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !691, file: !6, line: 252, baseType: !77, size: 32, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !691, file: !6, line: 252, baseType: !20, size: 8, offset: 288)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !691, file: !6, line: 252, baseType: !20, size: 8, offset: 296)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !691, file: !6, line: 257, baseType: !41, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !691, file: !6, line: 258, baseType: !41, size: 64, offset: 384)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !35, file: !6, line: 389, baseType: !710, size: 512)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !6, line: 274, size: 512, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720, !721}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !710, file: !6, line: 275, baseType: !41, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !710, file: !6, line: 275, baseType: !20, size: 8, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !710, file: !6, line: 275, baseType: !20, size: 8, offset: 72)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !710, file: !6, line: 275, baseType: !45, size: 16, offset: 80)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !710, file: !6, line: 275, baseType: !20, size: 8, offset: 96)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !710, file: !6, line: 275, baseType: !93, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !710, file: !6, line: 276, baseType: !77, size: 32, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !710, file: !6, line: 277, baseType: !386, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !710, file: !6, line: 278, baseType: !32, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !710, file: !6, line: 279, baseType: !494, size: 128, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !35, file: !6, line: 390, baseType: !723, size: 576)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !6, line: 282, size: 576, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !738, !739, !740, !741, !747, !748}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !723, file: !6, line: 283, baseType: !41, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !723, file: !6, line: 283, baseType: !20, size: 8, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !723, file: !6, line: 283, baseType: !20, size: 8, offset: 72)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !723, file: !6, line: 283, baseType: !45, size: 16, offset: 80)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !6, line: 283, baseType: !20, size: 8, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !723, file: !6, line: 283, baseType: !20, size: 8, offset: 104)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !723, file: !6, line: 284, baseType: !20, size: 8, offset: 112)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !723, file: !6, line: 285, baseType: !733, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !19, line: 1093, baseType: !734)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!160, !77, !482, !77, !737, !32, !32}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !723, file: !6, line: 286, baseType: !93, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !723, file: !6, line: 287, baseType: !32, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !723, file: !6, line: 288, baseType: !32, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !723, file: !6, line: 289, baseType: !742, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !19, line: 1126, baseType: !743)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!160, !390, !77, !32, !746}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !723, file: !6, line: 290, baseType: !41, size: 64, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !723, file: !6, line: 291, baseType: !41, size: 64, offset: 512)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !35, file: !6, line: 391, baseType: !750, size: 512)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !6, line: 309, size: 512, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !750, file: !6, line: 310, baseType: !41, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !750, file: !6, line: 310, baseType: !20, size: 8, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !750, file: !6, line: 310, baseType: !20, size: 8, offset: 72)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !750, file: !6, line: 310, baseType: !45, size: 16, offset: 80)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !6, line: 310, baseType: !20, size: 8, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !750, file: !6, line: 310, baseType: !20, size: 8, offset: 104)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !750, file: !6, line: 311, baseType: !20, size: 8, offset: 112)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !750, file: !6, line: 312, baseType: !20, size: 8, offset: 120)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !750, file: !6, line: 313, baseType: !32, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !750, file: !6, line: 314, baseType: !93, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !750, file: !6, line: 315, baseType: !125, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !750, file: !6, line: 316, baseType: !88, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !750, file: !6, line: 317, baseType: !88, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !750, file: !6, line: 318, baseType: !77, size: 32, offset: 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !35, file: !6, line: 392, baseType: !767, size: 448)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !6, line: 342, size: 448, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !777, !778}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !767, file: !6, line: 343, baseType: !41, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !767, file: !6, line: 343, baseType: !20, size: 8, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !767, file: !6, line: 343, baseType: !20, size: 8, offset: 72)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !767, file: !6, line: 343, baseType: !45, size: 16, offset: 80)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !767, file: !6, line: 343, baseType: !20, size: 8, offset: 96)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !767, file: !6, line: 343, baseType: !93, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !767, file: !6, line: 344, baseType: !93, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !767, file: !6, line: 345, baseType: !32, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !767, file: !6, line: 346, baseType: !88, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !767, file: !6, line: 347, baseType: !77, size: 32, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !35, file: !6, line: 393, baseType: !780, size: 256)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !6, line: 352, size: 256, elements: !781)
!781 = !{!782, !783, !784, !785, !786, !787, !792}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !780, file: !6, line: 353, baseType: !41, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !780, file: !6, line: 353, baseType: !20, size: 8, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !780, file: !6, line: 353, baseType: !20, size: 8, offset: 72)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !780, file: !6, line: 353, baseType: !45, size: 16, offset: 80)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !6, line: 353, baseType: !20, size: 8, offset: 96)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !780, file: !6, line: 353, baseType: !788, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !19, line: 1064, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !390, !32}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !780, file: !6, line: 354, baseType: !32, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !35, file: !6, line: 394, baseType: !794, size: 192)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !6, line: 359, size: 192, elements: !795)
!795 = !{!796, !797, !798, !799, !800, !801}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !794, file: !6, line: 360, baseType: !41, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !794, file: !6, line: 360, baseType: !20, size: 8, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !794, file: !6, line: 360, baseType: !20, size: 8, offset: 72)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !794, file: !6, line: 360, baseType: !45, size: 16, offset: 80)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !6, line: 360, baseType: !20, size: 8, offset: 96)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !794, file: !6, line: 360, baseType: !41, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !35, file: !6, line: 401, baseType: !94, size: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !26, file: !6, line: 437, baseType: !94, size: 384)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !26, file: !6, line: 438, baseType: !196, size: 1600)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !806, line: 42, baseType: !807)
!806 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!807 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !19, line: 127, baseType: !62)
!809 = !{!0, !810, !815, !818, !823, !828, !833, !835, !837, !842, !847, !849, !851, !853, !860, !865, !870, !872, !877, !879, !884, !886, !888, !890, !892, !895, !897, !899, !904, !909, !914, !916, !918, !920, !922, !924, !929, !932, !935, !938, !940, !943, !945, !947, !949, !951, !953, !955, !957, !959, !961, !963, !965, !967, !969, !971, !973, !975, !977, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1004, !1006, !1008, !1010, !1012, !1014, !1019, !1021, !1023, !1025, !1027, !1029, !1031, !1033, !1035, !1037, !1040, !1042, !1044, !1046, !1048, !1050, !1052, !1055, !1057, !1062, !1064, !1066, !1068, !1070}
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !812, isLocal: true, isDefinition: true)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 104, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 13)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 72, elements: !406)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !820, isLocal: true, isDefinition: true)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 88, elements: !821)
!821 = !{!822}
!822 = !DISubrange(count: 11)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(scope: null, file: !3, line: 74, type: !825, isLocal: true, isDefinition: true)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !826)
!826 = !{!827}
!827 = !DISubrange(count: 16)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !830, isLocal: true, isDefinition: true)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 48, elements: !831)
!831 = !{!832}
!832 = !DISubrange(count: 6)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !820, isLocal: true, isDefinition: true)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !812, isLocal: true, isDefinition: true)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !3, line: 78, type: !839, isLocal: true, isDefinition: true)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 40, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 5)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !844, isLocal: true, isDefinition: true)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 136, elements: !845)
!845 = !{!846}
!846 = !DISubrange(count: 17)
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression())
!848 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !844, isLocal: true, isDefinition: true)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !107, isLocal: true, isDefinition: true)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !272, isLocal: true, isDefinition: true)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(name: "acpi_gbl_region_types", scope: !2, file: !3, line: 70, type: !855, isLocal: false, isDefinition: true)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, size: 768, elements: !858)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!858 = !{!859}
!859 = !DISubrange(count: 12)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !862, isLocal: true, isDefinition: true)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 144, elements: !863)
!863 = !{!864}
!864 = !DISubrange(count: 18)
!865 = !DIGlobalVariableExpression(var: !866, expr: !DIExpression())
!866 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !867, isLocal: true, isDefinition: true)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 80, elements: !868)
!868 = !{!869}
!869 = !DISubrange(count: 10)
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !862, isLocal: true, isDefinition: true)
!872 = !DIGlobalVariableExpression(var: !873, expr: !DIExpression())
!873 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !874, isLocal: true, isDefinition: true)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 120, elements: !875)
!875 = !{!876}
!876 = !DISubrange(count: 15)
!877 = !DIGlobalVariableExpression(var: !878, expr: !DIExpression())
!878 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !874, isLocal: true, isDefinition: true)
!879 = !DIGlobalVariableExpression(var: !880, expr: !DIExpression())
!880 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !881, isLocal: true, isDefinition: true)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 200, elements: !882)
!882 = !{!883}
!883 = !DISubrange(count: 25)
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(scope: null, file: !3, line: 221, type: !874, isLocal: true, isDefinition: true)
!886 = !DIGlobalVariableExpression(var: !887, expr: !DIExpression())
!887 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !839, isLocal: true, isDefinition: true)
!888 = !DIGlobalVariableExpression(var: !889, expr: !DIExpression())
!889 = distinct !DIGlobalVariable(scope: null, file: !3, line: 252, type: !839, isLocal: true, isDefinition: true)
!890 = !DIGlobalVariableExpression(var: !891, expr: !DIExpression())
!891 = distinct !DIGlobalVariable(scope: null, file: !3, line: 258, type: !839, isLocal: true, isDefinition: true)
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(scope: null, file: !3, line: 309, type: !894, isLocal: true, isDefinition: true)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 96, elements: !858)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(scope: null, file: !3, line: 313, type: !844, isLocal: true, isDefinition: true)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(scope: null, file: !3, line: 347, type: !894, isLocal: true, isDefinition: true)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(scope: null, file: !3, line: 351, type: !901, isLocal: true, isDefinition: true)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 176, elements: !902)
!902 = !{!903}
!903 = !DISubrange(count: 22)
!904 = !DIGlobalVariableExpression(var: !905, expr: !DIExpression())
!905 = distinct !DIGlobalVariable(scope: null, file: !3, line: 355, type: !906, isLocal: true, isDefinition: true)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 184, elements: !907)
!907 = !{!908}
!908 = !DISubrange(count: 23)
!909 = !DIGlobalVariableExpression(var: !910, expr: !DIExpression())
!910 = distinct !DIGlobalVariable(scope: null, file: !3, line: 359, type: !911, isLocal: true, isDefinition: true)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 192, elements: !912)
!912 = !{!913}
!913 = !DISubrange(count: 24)
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(scope: null, file: !3, line: 392, type: !844, isLocal: true, isDefinition: true)
!916 = !DIGlobalVariableExpression(var: !917, expr: !DIExpression())
!917 = distinct !DIGlobalVariable(scope: null, file: !3, line: 116, type: !817, isLocal: true, isDefinition: true)
!918 = !DIGlobalVariableExpression(var: !919, expr: !DIExpression())
!919 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !820, isLocal: true, isDefinition: true)
!920 = !DIGlobalVariableExpression(var: !921, expr: !DIExpression())
!921 = distinct !DIGlobalVariable(scope: null, file: !3, line: 118, type: !894, isLocal: true, isDefinition: true)
!922 = !DIGlobalVariableExpression(var: !923, expr: !DIExpression())
!923 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !894, isLocal: true, isDefinition: true)
!924 = !DIGlobalVariableExpression(var: !925, expr: !DIExpression())
!925 = distinct !DIGlobalVariable(scope: null, file: !3, line: 120, type: !926, isLocal: true, isDefinition: true)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 112, elements: !927)
!927 = !{!928}
!928 = !DISubrange(count: 14)
!929 = !DIGlobalVariableExpression(var: !930, expr: !DIExpression())
!930 = distinct !DIGlobalVariable(name: "acpi_gbl_event_types", scope: !2, file: !3, line: 115, type: !931, isLocal: true, isDefinition: true)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, size: 320, elements: !840)
!932 = !DIGlobalVariableExpression(var: !933, expr: !DIExpression())
!933 = distinct !DIGlobalVariable(name: "acpi_gbl_bad_type", scope: !2, file: !3, line: 154, type: !934, isLocal: true, isDefinition: true)
!934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !857, size: 80, elements: !868)
!935 = !DIGlobalVariableExpression(var: !936, expr: !DIExpression())
!936 = distinct !DIGlobalVariable(scope: null, file: !3, line: 159, type: !937, isLocal: true, isDefinition: true)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 64, elements: !368)
!938 = !DIGlobalVariableExpression(var: !939, expr: !DIExpression())
!939 = distinct !DIGlobalVariable(scope: null, file: !3, line: 160, type: !937, isLocal: true, isDefinition: true)
!940 = !DIGlobalVariableExpression(var: !941, expr: !DIExpression())
!941 = distinct !DIGlobalVariable(scope: null, file: !3, line: 161, type: !942, isLocal: true, isDefinition: true)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 56, elements: !400)
!943 = !DIGlobalVariableExpression(var: !944, expr: !DIExpression())
!944 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !942, isLocal: true, isDefinition: true)
!945 = !DIGlobalVariableExpression(var: !946, expr: !DIExpression())
!946 = distinct !DIGlobalVariable(scope: null, file: !3, line: 163, type: !937, isLocal: true, isDefinition: true)
!947 = !DIGlobalVariableExpression(var: !948, expr: !DIExpression())
!948 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !867, isLocal: true, isDefinition: true)
!949 = !DIGlobalVariableExpression(var: !950, expr: !DIExpression())
!950 = distinct !DIGlobalVariable(scope: null, file: !3, line: 165, type: !942, isLocal: true, isDefinition: true)
!951 = !DIGlobalVariableExpression(var: !952, expr: !DIExpression())
!952 = distinct !DIGlobalVariable(scope: null, file: !3, line: 166, type: !830, isLocal: true, isDefinition: true)
!953 = !DIGlobalVariableExpression(var: !954, expr: !DIExpression())
!954 = distinct !DIGlobalVariable(scope: null, file: !3, line: 167, type: !942, isLocal: true, isDefinition: true)
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(scope: null, file: !3, line: 168, type: !830, isLocal: true, isDefinition: true)
!957 = !DIGlobalVariableExpression(var: !958, expr: !DIExpression())
!958 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !942, isLocal: true, isDefinition: true)
!959 = !DIGlobalVariableExpression(var: !960, expr: !DIExpression())
!960 = distinct !DIGlobalVariable(scope: null, file: !3, line: 170, type: !830, isLocal: true, isDefinition: true)
!961 = !DIGlobalVariableExpression(var: !962, expr: !DIExpression())
!962 = distinct !DIGlobalVariable(scope: null, file: !3, line: 171, type: !867, isLocal: true, isDefinition: true)
!963 = !DIGlobalVariableExpression(var: !964, expr: !DIExpression())
!964 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !937, isLocal: true, isDefinition: true)
!965 = !DIGlobalVariableExpression(var: !966, expr: !DIExpression())
!966 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !894, isLocal: true, isDefinition: true)
!967 = !DIGlobalVariableExpression(var: !968, expr: !DIExpression())
!968 = distinct !DIGlobalVariable(scope: null, file: !3, line: 174, type: !867, isLocal: true, isDefinition: true)
!969 = !DIGlobalVariableExpression(var: !970, expr: !DIExpression())
!970 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !894, isLocal: true, isDefinition: true)
!971 = !DIGlobalVariableExpression(var: !972, expr: !DIExpression())
!972 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !894, isLocal: true, isDefinition: true)
!973 = !DIGlobalVariableExpression(var: !974, expr: !DIExpression())
!974 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !867, isLocal: true, isDefinition: true)
!975 = !DIGlobalVariableExpression(var: !976, expr: !DIExpression())
!976 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !820, isLocal: true, isDefinition: true)
!977 = !DIGlobalVariableExpression(var: !978, expr: !DIExpression())
!978 = distinct !DIGlobalVariable(scope: null, file: !3, line: 179, type: !867, isLocal: true, isDefinition: true)
!979 = !DIGlobalVariableExpression(var: !980, expr: !DIExpression())
!980 = distinct !DIGlobalVariable(scope: null, file: !3, line: 180, type: !830, isLocal: true, isDefinition: true)
!981 = !DIGlobalVariableExpression(var: !982, expr: !DIExpression())
!982 = distinct !DIGlobalVariable(scope: null, file: !3, line: 181, type: !894, isLocal: true, isDefinition: true)
!983 = !DIGlobalVariableExpression(var: !984, expr: !DIExpression())
!984 = distinct !DIGlobalVariable(scope: null, file: !3, line: 182, type: !942, isLocal: true, isDefinition: true)
!985 = !DIGlobalVariableExpression(var: !986, expr: !DIExpression())
!986 = distinct !DIGlobalVariable(scope: null, file: !3, line: 183, type: !894, isLocal: true, isDefinition: true)
!987 = !DIGlobalVariableExpression(var: !988, expr: !DIExpression())
!988 = distinct !DIGlobalVariable(scope: null, file: !3, line: 184, type: !812, isLocal: true, isDefinition: true)
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression())
!990 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !894, isLocal: true, isDefinition: true)
!991 = !DIGlobalVariableExpression(var: !992, expr: !DIExpression())
!992 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !830, isLocal: true, isDefinition: true)
!993 = !DIGlobalVariableExpression(var: !994, expr: !DIExpression())
!994 = distinct !DIGlobalVariable(scope: null, file: !3, line: 187, type: !830, isLocal: true, isDefinition: true)
!995 = !DIGlobalVariableExpression(var: !996, expr: !DIExpression())
!996 = distinct !DIGlobalVariable(scope: null, file: !3, line: 188, type: !839, isLocal: true, isDefinition: true)
!997 = !DIGlobalVariableExpression(var: !998, expr: !DIExpression())
!998 = distinct !DIGlobalVariable(scope: null, file: !3, line: 189, type: !937, isLocal: true, isDefinition: true)
!999 = !DIGlobalVariableExpression(var: !1000, expr: !DIExpression())
!1000 = distinct !DIGlobalVariable(name: "acpi_gbl_ns_type_names", scope: !2, file: !3, line: 158, type: !1001, isLocal: true, isDefinition: true)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, size: 1984, elements: !1002)
!1002 = !{!1003}
!1003 = !DISubrange(count: 31)
!1004 = !DIGlobalVariableExpression(var: !1005, expr: !DIExpression())
!1005 = distinct !DIGlobalVariable(scope: null, file: !3, line: 288, type: !926, isLocal: true, isDefinition: true)
!1006 = !DIGlobalVariableExpression(var: !1007, expr: !DIExpression())
!1007 = distinct !DIGlobalVariable(scope: null, file: !3, line: 289, type: !926, isLocal: true, isDefinition: true)
!1008 = !DIGlobalVariableExpression(var: !1009, expr: !DIExpression())
!1009 = distinct !DIGlobalVariable(scope: null, file: !3, line: 290, type: !812, isLocal: true, isDefinition: true)
!1010 = !DIGlobalVariableExpression(var: !1011, expr: !DIExpression())
!1011 = distinct !DIGlobalVariable(scope: null, file: !3, line: 291, type: !926, isLocal: true, isDefinition: true)
!1012 = !DIGlobalVariableExpression(var: !1013, expr: !DIExpression())
!1013 = distinct !DIGlobalVariable(scope: null, file: !3, line: 292, type: !926, isLocal: true, isDefinition: true)
!1014 = !DIGlobalVariableExpression(var: !1015, expr: !DIExpression())
!1015 = distinct !DIGlobalVariable(scope: null, file: !3, line: 293, type: !1016, isLocal: true, isDefinition: true)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 168, elements: !1017)
!1017 = !{!1018}
!1018 = !DISubrange(count: 21)
!1019 = !DIGlobalVariableExpression(var: !1020, expr: !DIExpression())
!1020 = distinct !DIGlobalVariable(scope: null, file: !3, line: 294, type: !844, isLocal: true, isDefinition: true)
!1021 = !DIGlobalVariableExpression(var: !1022, expr: !DIExpression())
!1022 = distinct !DIGlobalVariable(scope: null, file: !3, line: 295, type: !825, isLocal: true, isDefinition: true)
!1023 = !DIGlobalVariableExpression(var: !1024, expr: !DIExpression())
!1024 = distinct !DIGlobalVariable(scope: null, file: !3, line: 296, type: !812, isLocal: true, isDefinition: true)
!1025 = !DIGlobalVariableExpression(var: !1026, expr: !DIExpression())
!1026 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !812, isLocal: true, isDefinition: true)
!1027 = !DIGlobalVariableExpression(var: !1028, expr: !DIExpression())
!1028 = distinct !DIGlobalVariable(scope: null, file: !3, line: 298, type: !812, isLocal: true, isDefinition: true)
!1029 = !DIGlobalVariableExpression(var: !1030, expr: !DIExpression())
!1030 = distinct !DIGlobalVariable(scope: null, file: !3, line: 299, type: !825, isLocal: true, isDefinition: true)
!1031 = !DIGlobalVariableExpression(var: !1032, expr: !DIExpression())
!1032 = distinct !DIGlobalVariable(scope: null, file: !3, line: 300, type: !926, isLocal: true, isDefinition: true)
!1033 = !DIGlobalVariableExpression(var: !1034, expr: !DIExpression())
!1034 = distinct !DIGlobalVariable(scope: null, file: !3, line: 301, type: !874, isLocal: true, isDefinition: true)
!1035 = !DIGlobalVariableExpression(var: !1036, expr: !DIExpression())
!1036 = distinct !DIGlobalVariable(scope: null, file: !3, line: 302, type: !874, isLocal: true, isDefinition: true)
!1037 = !DIGlobalVariableExpression(var: !1038, expr: !DIExpression())
!1038 = distinct !DIGlobalVariable(name: "acpi_gbl_desc_type_names", scope: !2, file: !3, line: 286, type: !1039, isLocal: true, isDefinition: true)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, size: 1024, elements: !826)
!1040 = !DIGlobalVariableExpression(var: !1041, expr: !DIExpression())
!1041 = distinct !DIGlobalVariable(scope: null, file: !3, line: 334, type: !830, isLocal: true, isDefinition: true)
!1042 = !DIGlobalVariableExpression(var: !1043, expr: !DIExpression())
!1043 = distinct !DIGlobalVariable(scope: null, file: !3, line: 335, type: !817, isLocal: true, isDefinition: true)
!1044 = !DIGlobalVariableExpression(var: !1045, expr: !DIExpression())
!1045 = distinct !DIGlobalVariable(scope: null, file: !3, line: 336, type: !830, isLocal: true, isDefinition: true)
!1046 = !DIGlobalVariableExpression(var: !1047, expr: !DIExpression())
!1047 = distinct !DIGlobalVariable(scope: null, file: !3, line: 337, type: !830, isLocal: true, isDefinition: true)
!1048 = !DIGlobalVariableExpression(var: !1049, expr: !DIExpression())
!1049 = distinct !DIGlobalVariable(scope: null, file: !3, line: 339, type: !812, isLocal: true, isDefinition: true)
!1050 = !DIGlobalVariableExpression(var: !1051, expr: !DIExpression())
!1051 = distinct !DIGlobalVariable(scope: null, file: !3, line: 340, type: !830, isLocal: true, isDefinition: true)
!1052 = !DIGlobalVariableExpression(var: !1053, expr: !DIExpression())
!1053 = distinct !DIGlobalVariable(name: "acpi_gbl_ref_class_names", scope: !2, file: !3, line: 333, type: !1054, isLocal: true, isDefinition: true)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, size: 448, elements: !400)
!1055 = !DIGlobalVariableExpression(var: !1056, expr: !DIExpression())
!1056 = distinct !DIGlobalVariable(scope: null, file: !3, line: 380, type: !1016, isLocal: true, isDefinition: true)
!1057 = !DIGlobalVariableExpression(var: !1058, expr: !DIExpression())
!1058 = distinct !DIGlobalVariable(scope: null, file: !3, line: 381, type: !1059, isLocal: true, isDefinition: true)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 152, elements: !1060)
!1060 = !{!1061}
!1061 = !DISubrange(count: 19)
!1062 = !DIGlobalVariableExpression(var: !1063, expr: !DIExpression())
!1063 = distinct !DIGlobalVariable(scope: null, file: !3, line: 382, type: !825, isLocal: true, isDefinition: true)
!1064 = !DIGlobalVariableExpression(var: !1065, expr: !DIExpression())
!1065 = distinct !DIGlobalVariable(scope: null, file: !3, line: 383, type: !825, isLocal: true, isDefinition: true)
!1066 = !DIGlobalVariableExpression(var: !1067, expr: !DIExpression())
!1067 = distinct !DIGlobalVariable(scope: null, file: !3, line: 384, type: !825, isLocal: true, isDefinition: true)
!1068 = !DIGlobalVariableExpression(var: !1069, expr: !DIExpression())
!1069 = distinct !DIGlobalVariable(scope: null, file: !3, line: 385, type: !825, isLocal: true, isDefinition: true)
!1070 = !DIGlobalVariableExpression(var: !1071, expr: !DIExpression())
!1071 = distinct !DIGlobalVariable(name: "acpi_gbl_mutex_names", scope: !2, file: !3, line: 379, type: !1072, isLocal: true, isDefinition: true)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, size: 384, elements: !831)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1074, size: 248, elements: !1002)
!1074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!1075 = !{i32 7, !"Dwarf Version", i32 5}
!1076 = !{i32 2, !"Debug Info Version", i32 3}
!1077 = !{i32 1, !"wchar_size", i32 2}
!1078 = !{i32 8, !"cf-protection-branch", i32 1}
!1079 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1080 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1081 = !{i32 1, !"Code Model", i32 2}
!1082 = !{i32 1, !"override-stack-alignment", i32 8}
!1083 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1084 = distinct !DISubprogram(name: "acpi_ut_get_region_name", scope: !3, file: !3, line: 85, type: !1085, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1087)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!856, !20}
!1087 = !{!1088}
!1088 = !DILocalVariable(name: "space_id", arg: 1, scope: !1084, file: !3, line: 85, type: !20)
!1089 = !DILocation(line: 85, column: 40, scope: !1084)
!1090 = !DILocation(line: 88, column: 6, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 88, column: 6)
!1092 = !DILocation(line: 88, column: 15, scope: !1091)
!1093 = !DILocation(line: 88, column: 6, scope: !1084)
!1094 = !DILocation(line: 89, column: 3, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 88, column: 42)
!1096 = !DILocation(line: 90, column: 13, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 90, column: 13)
!1098 = !DILocation(line: 90, column: 22, scope: !1097)
!1099 = !DILocation(line: 90, column: 13, scope: !1091)
!1100 = !DILocation(line: 91, column: 3, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 90, column: 52)
!1102 = !DILocation(line: 92, column: 13, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 92, column: 13)
!1104 = !DILocation(line: 92, column: 22, scope: !1103)
!1105 = !DILocation(line: 92, column: 13, scope: !1097)
!1106 = !DILocation(line: 93, column: 3, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 92, column: 56)
!1108 = !DILocation(line: 94, column: 13, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 94, column: 13)
!1110 = !DILocation(line: 94, column: 22, scope: !1109)
!1111 = !DILocation(line: 94, column: 13, scope: !1103)
!1112 = !DILocation(line: 95, column: 3, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 94, column: 54)
!1114 = !DILocation(line: 98, column: 32, scope: !1084)
!1115 = !DILocation(line: 98, column: 10, scope: !1084)
!1116 = !DILocation(line: 98, column: 2, scope: !1084)
!1117 = !DILocation(line: 99, column: 1, scope: !1084)
!1118 = distinct !DISubprogram(name: "acpi_ut_get_event_name", scope: !3, file: !3, line: 123, type: !1119, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1121)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!856, !77}
!1121 = !{!1122}
!1122 = !DILocalVariable(name: "event_id", arg: 1, scope: !1118, file: !3, line: 123, type: !77)
!1123 = !DILocation(line: 123, column: 40, scope: !1118)
!1124 = !DILocation(line: 126, column: 6, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 126, column: 6)
!1126 = !DILocation(line: 126, column: 15, scope: !1125)
!1127 = !DILocation(line: 126, column: 6, scope: !1118)
!1128 = !DILocation(line: 127, column: 3, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 126, column: 33)
!1130 = !DILocation(line: 130, column: 31, scope: !1118)
!1131 = !DILocation(line: 130, column: 10, scope: !1118)
!1132 = !DILocation(line: 130, column: 2, scope: !1118)
!1133 = !DILocation(line: 131, column: 1, scope: !1118)
!1134 = distinct !DISubprogram(name: "acpi_ut_get_type_name", scope: !3, file: !3, line: 192, type: !1135, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1138)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!856, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !19, line: 644, baseType: !77)
!1138 = !{!1139}
!1139 = !DILocalVariable(name: "type", arg: 1, scope: !1134, file: !3, line: 192, type: !1137)
!1140 = !DILocation(line: 192, column: 52, scope: !1134)
!1141 = !DILocation(line: 195, column: 6, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 195, column: 6)
!1143 = !DILocation(line: 195, column: 11, scope: !1142)
!1144 = !DILocation(line: 195, column: 6, scope: !1134)
!1145 = !DILocation(line: 196, column: 3, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 195, column: 32)
!1147 = !DILocation(line: 199, column: 33, scope: !1134)
!1148 = !DILocation(line: 199, column: 10, scope: !1134)
!1149 = !DILocation(line: 199, column: 2, scope: !1134)
!1150 = !DILocation(line: 200, column: 1, scope: !1134)
!1151 = distinct !DISubprogram(name: "acpi_ut_get_object_type_name", scope: !3, file: !3, line: 202, type: !1152, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1154)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!856, !41}
!1154 = !{!1155}
!1155 = !DILocalVariable(name: "obj_desc", arg: 1, scope: !1151, file: !3, line: 202, type: !41)
!1156 = !DILocation(line: 202, column: 69, scope: !1151)
!1157 = !DILocation(line: 206, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 206, column: 6)
!1159 = !DILocation(line: 206, column: 6, scope: !1151)
!1160 = !DILocation(line: 208, column: 3, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 206, column: 17)
!1162 = !DILocation(line: 213, column: 7, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 213, column: 6)
!1164 = !DILocation(line: 213, column: 42, scope: !1163)
!1165 = !DILocation(line: 213, column: 69, scope: !1163)
!1166 = !DILocation(line: 214, column: 7, scope: !1163)
!1167 = !DILocation(line: 214, column: 42, scope: !1163)
!1168 = !DILocation(line: 213, column: 6, scope: !1151)
!1169 = !DILocation(line: 221, column: 3, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 214, column: 68)
!1171 = !DILocation(line: 224, column: 2, scope: !1151)
!1172 = !DILocation(line: 225, column: 1, scope: !1151)
!1173 = distinct !DISubprogram(name: "acpi_ut_get_node_name", scope: !3, file: !3, line: 239, type: !1174, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1176)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!856, !32}
!1176 = !{!1177, !1178}
!1177 = !DILocalVariable(name: "object", arg: 1, scope: !1173, file: !3, line: 239, type: !32)
!1178 = !DILocalVariable(name: "node", scope: !1173, file: !3, line: 241, type: !93)
!1179 = !DILocation(line: 239, column: 41, scope: !1173)
!1180 = !DILocation(line: 241, column: 2, scope: !1173)
!1181 = !DILocation(line: 241, column: 30, scope: !1173)
!1182 = !DILocation(line: 241, column: 67, scope: !1173)
!1183 = !DILocation(line: 245, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 245, column: 6)
!1185 = !DILocation(line: 245, column: 6, scope: !1173)
!1186 = !DILocation(line: 246, column: 3, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 245, column: 15)
!1188 = !DILocation(line: 251, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 251, column: 6)
!1190 = !DILocation(line: 251, column: 14, scope: !1189)
!1191 = !DILocation(line: 251, column: 35, scope: !1189)
!1192 = !DILocation(line: 251, column: 39, scope: !1189)
!1193 = !DILocation(line: 251, column: 49, scope: !1189)
!1194 = !DILocation(line: 251, column: 46, scope: !1189)
!1195 = !DILocation(line: 251, column: 6, scope: !1173)
!1196 = !DILocation(line: 252, column: 3, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 251, column: 70)
!1198 = !DILocation(line: 257, column: 6, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 257, column: 6)
!1200 = !DILocation(line: 257, column: 37, scope: !1199)
!1201 = !DILocation(line: 257, column: 6, scope: !1173)
!1202 = !DILocation(line: 258, column: 3, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 257, column: 62)
!1204 = !DILocation(line: 265, column: 22, scope: !1173)
!1205 = !DILocation(line: 265, column: 28, scope: !1173)
!1206 = !DILocation(line: 265, column: 2, scope: !1173)
!1207 = !DILocation(line: 269, column: 10, scope: !1173)
!1208 = !DILocation(line: 269, column: 16, scope: !1173)
!1209 = !DILocation(line: 269, column: 9, scope: !1173)
!1210 = !DILocation(line: 269, column: 2, scope: !1173)
!1211 = !DILocation(line: 270, column: 1, scope: !1173)
!1212 = !DISubprogram(name: "acpi_ut_repair_name", scope: !1213, file: !1213, line: 624, type: !1214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1213 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !74}
!1216 = distinct !DISubprogram(name: "acpi_ut_get_descriptor_name", scope: !3, file: !3, line: 305, type: !1174, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1217)
!1217 = !{!1218}
!1218 = !DILocalVariable(name: "object", arg: 1, scope: !1216, file: !3, line: 305, type: !32)
!1219 = !DILocation(line: 305, column: 47, scope: !1216)
!1220 = !DILocation(line: 308, column: 7, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 308, column: 6)
!1222 = !DILocation(line: 308, column: 6, scope: !1216)
!1223 = !DILocation(line: 309, column: 3, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 308, column: 15)
!1225 = !DILocation(line: 312, column: 6, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 312, column: 6)
!1227 = !DILocation(line: 312, column: 39, scope: !1226)
!1228 = !DILocation(line: 312, column: 6, scope: !1216)
!1229 = !DILocation(line: 313, column: 3, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 312, column: 61)
!1231 = !DILocation(line: 316, column: 35, scope: !1216)
!1232 = !DILocation(line: 316, column: 10, scope: !1216)
!1233 = !DILocation(line: 316, column: 2, scope: !1216)
!1234 = !DILocation(line: 317, column: 1, scope: !1216)
!1235 = distinct !DISubprogram(name: "acpi_ut_get_reference_name", scope: !3, file: !3, line: 343, type: !1152, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1236)
!1236 = !{!1237}
!1237 = !DILocalVariable(name: "object", arg: 1, scope: !1235, file: !3, line: 343, type: !41)
!1238 = !DILocation(line: 343, column: 67, scope: !1235)
!1239 = !DILocation(line: 346, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 346, column: 6)
!1241 = !DILocation(line: 346, column: 6, scope: !1235)
!1242 = !DILocation(line: 347, column: 3, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 346, column: 15)
!1244 = !DILocation(line: 350, column: 6, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 350, column: 6)
!1246 = !DILocation(line: 350, column: 39, scope: !1245)
!1247 = !DILocation(line: 350, column: 6, scope: !1235)
!1248 = !DILocation(line: 351, column: 3, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 350, column: 66)
!1250 = !DILocation(line: 354, column: 6, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 354, column: 6)
!1252 = !DILocation(line: 354, column: 21, scope: !1251)
!1253 = !DILocation(line: 354, column: 26, scope: !1251)
!1254 = !DILocation(line: 354, column: 6, scope: !1235)
!1255 = !DILocation(line: 355, column: 3, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 354, column: 56)
!1257 = !DILocation(line: 358, column: 6, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 358, column: 6)
!1259 = !DILocation(line: 358, column: 24, scope: !1258)
!1260 = !DILocation(line: 358, column: 30, scope: !1258)
!1261 = !DILocation(line: 358, column: 6, scope: !1235)
!1262 = !DILocation(line: 359, column: 3, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 358, column: 51)
!1264 = !DILocation(line: 362, column: 35, scope: !1235)
!1265 = !DILocation(line: 362, column: 53, scope: !1235)
!1266 = !DILocation(line: 362, column: 10, scope: !1235)
!1267 = !DILocation(line: 362, column: 2, scope: !1235)
!1268 = !DILocation(line: 363, column: 1, scope: !1235)
!1269 = distinct !DISubprogram(name: "acpi_ut_get_mutex_name", scope: !3, file: !3, line: 388, type: !1119, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1270)
!1270 = !{!1271}
!1271 = !DILocalVariable(name: "mutex_id", arg: 1, scope: !1269, file: !3, line: 388, type: !77)
!1272 = !DILocation(line: 388, column: 40, scope: !1269)
!1273 = !DILocation(line: 391, column: 6, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 391, column: 6)
!1275 = !DILocation(line: 391, column: 15, scope: !1274)
!1276 = !DILocation(line: 391, column: 6, scope: !1269)
!1277 = !DILocation(line: 392, column: 3, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 391, column: 33)
!1279 = !DILocation(line: 395, column: 31, scope: !1269)
!1280 = !DILocation(line: 395, column: 10, scope: !1269)
!1281 = !DILocation(line: 395, column: 2, scope: !1269)
!1282 = !DILocation(line: 396, column: 1, scope: !1269)
!1283 = distinct !DISubprogram(name: "acpi_ut_valid_object_type", scope: !3, file: !3, line: 570, type: !1284, scopeLine: 571, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1286)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!20, !1137}
!1286 = !{!1287}
!1287 = !DILocalVariable(name: "type", arg: 1, scope: !1283, file: !3, line: 570, type: !1137)
!1288 = !DILocation(line: 570, column: 47, scope: !1283)
!1289 = !DILocation(line: 573, column: 6, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 573, column: 6)
!1291 = !DILocation(line: 573, column: 11, scope: !1290)
!1292 = !DILocation(line: 573, column: 6, scope: !1283)
!1293 = !DILocation(line: 577, column: 3, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 573, column: 34)
!1295 = !DILocation(line: 580, column: 2, scope: !1283)
!1296 = !DILocation(line: 581, column: 1, scope: !1283)
