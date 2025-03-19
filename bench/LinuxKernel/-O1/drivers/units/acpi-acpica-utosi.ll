; ModuleID = 'drivers/acpi/acpica/utosi.c'
source_filename = "drivers/acpi/acpica/utosi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_interface_info = type { ptr, ptr, i8, i8 }
%struct.acpi_walk_state = type { ptr, i8, i8, i16, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, ptr, i32, i32, i32, i32, %struct.acpi_parse_state, i32, i32, i16, i8, [7 x %struct.acpi_namespace_node], [8 x %struct.acpi_namespace_node], [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_parse_state = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.acpi_namespace_node = type { ptr, i8, i8, i16, %union.acpi_name_union, ptr, ptr, ptr, i16 }
%union.acpi_name_union = type { i32 }
%struct.acpi_object_common = type { ptr, i8, i8, i16, i8 }
%struct.acpi_object_string = type { ptr, i8, i8, i16, i8, ptr, i32 }
%struct.acpi_object_integer = type { ptr, i8, i8, i16, i8, [3 x i8], i64 }

@acpi_gbl_osi_mutex = external dso_local global ptr, align 8
@acpi_default_supported_interfaces = internal global [28 x %struct.acpi_interface_info] [%struct.acpi_interface_info { ptr @.str, ptr null, i8 0, i8 1 }, %struct.acpi_interface_info { ptr @.str.1, ptr null, i8 0, i8 2 }, %struct.acpi_interface_info { ptr @.str.2, ptr null, i8 0, i8 3 }, %struct.acpi_interface_info { ptr @.str.3, ptr null, i8 0, i8 4 }, %struct.acpi_interface_info { ptr @.str.4, ptr null, i8 0, i8 5 }, %struct.acpi_interface_info { ptr @.str.5, ptr null, i8 0, i8 6 }, %struct.acpi_interface_info { ptr @.str.6, ptr null, i8 0, i8 7 }, %struct.acpi_interface_info { ptr @.str.7, ptr null, i8 0, i8 8 }, %struct.acpi_interface_info { ptr @.str.8, ptr null, i8 0, i8 9 }, %struct.acpi_interface_info { ptr @.str.9, ptr null, i8 0, i8 10 }, %struct.acpi_interface_info { ptr @.str.10, ptr null, i8 0, i8 11 }, %struct.acpi_interface_info { ptr @.str.11, ptr null, i8 0, i8 12 }, %struct.acpi_interface_info { ptr @.str.12, ptr null, i8 0, i8 13 }, %struct.acpi_interface_info { ptr @.str.13, ptr null, i8 0, i8 14 }, %struct.acpi_interface_info { ptr @.str.14, ptr null, i8 0, i8 15 }, %struct.acpi_interface_info { ptr @.str.15, ptr null, i8 0, i8 16 }, %struct.acpi_interface_info { ptr @.str.16, ptr null, i8 0, i8 17 }, %struct.acpi_interface_info { ptr @.str.17, ptr null, i8 0, i8 18 }, %struct.acpi_interface_info { ptr @.str.18, ptr null, i8 0, i8 19 }, %struct.acpi_interface_info { ptr @.str.19, ptr null, i8 0, i8 20 }, %struct.acpi_interface_info { ptr @.str.20, ptr null, i8 0, i8 21 }, %struct.acpi_interface_info { ptr @.str.21, ptr null, i8 0, i8 22 }, %struct.acpi_interface_info { ptr @.str.22, ptr null, i8 4, i8 0 }, %struct.acpi_interface_info { ptr @.str.23, ptr null, i8 13, i8 0 }, %struct.acpi_interface_info { ptr @.str.24, ptr null, i8 13, i8 0 }, %struct.acpi_interface_info { ptr @.str.25, ptr null, i8 13, i8 0 }, %struct.acpi_interface_info { ptr @.str.26, ptr null, i8 13, i8 0 }, %struct.acpi_interface_info { ptr @.str.27, ptr null, i8 13, i8 0 }], align 16, !dbg !0
@acpi_gbl_supported_interfaces = external dso_local global ptr, align 8
@_acpi_module_name = internal constant [6 x i8] c"utosi\00", align 1, !dbg !126
@acpi_gbl_osi_data = external dso_local global i8, align 1
@acpi_gbl_interface_handler = external dso_local global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"Windows 2000\00", align 1, !dbg !37
@.str.1 = private unnamed_addr constant [13 x i8] c"Windows 2001\00", align 1, !dbg !43
@.str.2 = private unnamed_addr constant [17 x i8] c"Windows 2001 SP1\00", align 1, !dbg !45
@.str.3 = private unnamed_addr constant [15 x i8] c"Windows 2001.1\00", align 1, !dbg !50
@.str.4 = private unnamed_addr constant [17 x i8] c"Windows 2001 SP2\00", align 1, !dbg !55
@.str.5 = private unnamed_addr constant [19 x i8] c"Windows 2001.1 SP1\00", align 1, !dbg !57
@.str.6 = private unnamed_addr constant [13 x i8] c"Windows 2006\00", align 1, !dbg !62
@.str.7 = private unnamed_addr constant [15 x i8] c"Windows 2006.1\00", align 1, !dbg !64
@.str.8 = private unnamed_addr constant [17 x i8] c"Windows 2006 SP1\00", align 1, !dbg !66
@.str.9 = private unnamed_addr constant [17 x i8] c"Windows 2006 SP2\00", align 1, !dbg !68
@.str.10 = private unnamed_addr constant [13 x i8] c"Windows 2009\00", align 1, !dbg !70
@.str.11 = private unnamed_addr constant [13 x i8] c"Windows 2012\00", align 1, !dbg !72
@.str.12 = private unnamed_addr constant [13 x i8] c"Windows 2013\00", align 1, !dbg !74
@.str.13 = private unnamed_addr constant [13 x i8] c"Windows 2015\00", align 1, !dbg !76
@.str.14 = private unnamed_addr constant [13 x i8] c"Windows 2016\00", align 1, !dbg !78
@.str.15 = private unnamed_addr constant [13 x i8] c"Windows 2017\00", align 1, !dbg !80
@.str.16 = private unnamed_addr constant [15 x i8] c"Windows 2017.2\00", align 1, !dbg !82
@.str.17 = private unnamed_addr constant [13 x i8] c"Windows 2018\00", align 1, !dbg !84
@.str.18 = private unnamed_addr constant [15 x i8] c"Windows 2018.2\00", align 1, !dbg !86
@.str.19 = private unnamed_addr constant [13 x i8] c"Windows 2019\00", align 1, !dbg !88
@.str.20 = private unnamed_addr constant [13 x i8] c"Windows 2020\00", align 1, !dbg !90
@.str.21 = private unnamed_addr constant [13 x i8] c"Windows 2021\00", align 1, !dbg !92
@.str.22 = private unnamed_addr constant [34 x i8] c"Extended Address Space Descriptor\00", align 1, !dbg !94
@.str.23 = private unnamed_addr constant [14 x i8] c"Module Device\00", align 1, !dbg !99
@.str.24 = private unnamed_addr constant [17 x i8] c"Processor Device\00", align 1, !dbg !104
@.str.25 = private unnamed_addr constant [18 x i8] c"3.0 Thermal Model\00", align 1, !dbg !106
@.str.26 = private unnamed_addr constant [20 x i8] c"3.0 _SCP Extensions\00", align 1, !dbg !111
@.str.27 = private unnamed_addr constant [28 x i8] c"Processor Aggregator Device\00", align 1, !dbg !116
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.28 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !121

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_initialize_interfaces() #0 align 16 !dbg !154 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !160
  call void @llvm.dbg.declare(metadata ptr %status, metadata !158, metadata !DIExpression()), !dbg !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !162
  call void @llvm.dbg.declare(metadata ptr %i, metadata !159, metadata !DIExpression()), !dbg !163
  %0 = load ptr, ptr @acpi_gbl_osi_mutex, align 8, !dbg !164
  %call = call i32 @acpi_os_wait_semaphore(ptr noundef %0, i32 noundef 1, i16 noundef zeroext -1) #14, !dbg !164
  store i32 %call, ptr %status, align 4, !dbg !165
  %1 = load i32, ptr %status, align 4, !dbg !166
  %tobool = icmp ne i32 %1, 0, !dbg !166
  br i1 %tobool, label %if.then, label %if.end, !dbg !168

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !169
  store i32 %2, ptr %retval, align 4, !dbg !171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !171

if.end:                                           ; preds = %entry
  store ptr @acpi_default_supported_interfaces, ptr @acpi_gbl_supported_interfaces, align 8, !dbg !172
  store i32 0, ptr %i, align 4, !dbg !173
  br label %for.cond, !dbg !175

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !176
  %conv = zext i32 %3 to i64, !dbg !176
  %cmp = icmp ult i64 %conv, 27, !dbg !178
  br i1 %cmp, label %for.body, label %for.end, !dbg !179

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !dbg !180
  %conv2 = zext i32 %4 to i64, !dbg !182
  %add = add i64 %conv2, 1, !dbg !183
  %arrayidx = getelementptr [28 x %struct.acpi_interface_info], ptr @acpi_default_supported_interfaces, i64 0, i64 %add, !dbg !184
  %5 = load i32, ptr %i, align 4, !dbg !185
  %idxprom = zext i32 %5 to i64, !dbg !186
  %arrayidx3 = getelementptr [28 x %struct.acpi_interface_info], ptr @acpi_default_supported_interfaces, i64 0, i64 %idxprom, !dbg !186
  %next = getelementptr inbounds %struct.acpi_interface_info, ptr %arrayidx3, i32 0, i32 1, !dbg !187
  store ptr %arrayidx, ptr %next, align 8, !dbg !188
  br label %for.inc, !dbg !189

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !190
  %inc = add i32 %6, 1, !dbg !190
  store i32 %inc, ptr %i, align 4, !dbg !190
  br label %for.cond, !dbg !191, !llvm.loop !192

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr @acpi_gbl_osi_mutex, align 8, !dbg !196
  %call4 = call i32 @acpi_os_signal_semaphore(ptr noundef %7, i32 noundef 1) #14, !dbg !196
  store i32 0, ptr %retval, align 4, !dbg !197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !197

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !198
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !198
  %8 = load i32, ptr %retval, align 4, !dbg !198
  ret i32 %8, !dbg !198
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !199 dso_local i32 @acpi_os_wait_semaphore(ptr noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !206 dso_local i32 @acpi_os_signal_semaphore(ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_interface_terminate() #0 align 16 !dbg !209 {
entry:
  %retval = alloca i32, align 4
  %status = alloca i32, align 4
  %next_interface = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !213
  call void @llvm.dbg.declare(metadata ptr %status, metadata !211, metadata !DIExpression()), !dbg !214
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_interface) #13, !dbg !215
  call void @llvm.dbg.declare(metadata ptr %next_interface, metadata !212, metadata !DIExpression()), !dbg !216
  %0 = load ptr, ptr @acpi_gbl_osi_mutex, align 8, !dbg !217
  %call = call i32 @acpi_os_wait_semaphore(ptr noundef %0, i32 noundef 1, i16 noundef zeroext -1) #14, !dbg !217
  store i32 %call, ptr %status, align 4, !dbg !218
  %1 = load i32, ptr %status, align 4, !dbg !219
  %tobool = icmp ne i32 %1, 0, !dbg !219
  br i1 %tobool, label %if.then, label %if.end, !dbg !221

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !222
  store i32 %2, ptr %retval, align 4, !dbg !224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !224

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @acpi_gbl_supported_interfaces, align 8, !dbg !225
  store ptr %3, ptr %next_interface, align 8, !dbg !226
  br label %while.cond, !dbg !227

while.cond:                                       ; preds = %if.end18, %if.end
  %4 = load ptr, ptr %next_interface, align 8, !dbg !228
  %tobool1 = icmp ne ptr %4, null, !dbg !227
  br i1 %tobool1, label %while.body, label %while.end, !dbg !227

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %next_interface, align 8, !dbg !229
  %next = getelementptr inbounds %struct.acpi_interface_info, ptr %5, i32 0, i32 1, !dbg !231
  %6 = load ptr, ptr %next, align 8, !dbg !231
  store ptr %6, ptr @acpi_gbl_supported_interfaces, align 8, !dbg !232
  %7 = load ptr, ptr %next_interface, align 8, !dbg !233
  %flags = getelementptr inbounds %struct.acpi_interface_info, ptr %7, i32 0, i32 2, !dbg !235
  %8 = load i8, ptr %flags, align 8, !dbg !235
  %conv = zext i8 %8 to i32, !dbg !233
  %and = and i32 %conv, 2, !dbg !236
  %tobool2 = icmp ne i32 %and, 0, !dbg !236
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !237

if.then3:                                         ; preds = %while.body
  %9 = load ptr, ptr %next_interface, align 8, !dbg !238
  %name = getelementptr inbounds %struct.acpi_interface_info, ptr %9, i32 0, i32 0, !dbg !238
  %10 = load ptr, ptr %name, align 8, !dbg !238
  call void @acpi_os_free(ptr noundef %10) #14, !dbg !238
  %11 = load ptr, ptr %next_interface, align 8, !dbg !240
  call void @acpi_os_free(ptr noundef %11) #14, !dbg !240
  br label %if.end18, !dbg !241

if.else:                                          ; preds = %while.body
  %12 = load ptr, ptr %next_interface, align 8, !dbg !242
  %flags4 = getelementptr inbounds %struct.acpi_interface_info, ptr %12, i32 0, i32 2, !dbg !245
  %13 = load i8, ptr %flags4, align 8, !dbg !245
  %conv5 = zext i8 %13 to i32, !dbg !242
  %and6 = and i32 %conv5, 8, !dbg !246
  %tobool7 = icmp ne i32 %and6, 0, !dbg !246
  br i1 %tobool7, label %if.then8, label %if.else12, !dbg !247

if.then8:                                         ; preds = %if.else
  %14 = load ptr, ptr %next_interface, align 8, !dbg !248
  %flags9 = getelementptr inbounds %struct.acpi_interface_info, ptr %14, i32 0, i32 2, !dbg !250
  %15 = load i8, ptr %flags9, align 8, !dbg !251
  %conv10 = zext i8 %15 to i32, !dbg !251
  %or = or i32 %conv10, 1, !dbg !251
  %conv11 = trunc i32 %or to i8, !dbg !251
  store i8 %conv11, ptr %flags9, align 8, !dbg !251
  br label %if.end17, !dbg !252

if.else12:                                        ; preds = %if.else
  %16 = load ptr, ptr %next_interface, align 8, !dbg !253
  %flags13 = getelementptr inbounds %struct.acpi_interface_info, ptr %16, i32 0, i32 2, !dbg !255
  %17 = load i8, ptr %flags13, align 8, !dbg !256
  %conv14 = zext i8 %17 to i32, !dbg !256
  %and15 = and i32 %conv14, -2, !dbg !256
  %conv16 = trunc i32 %and15 to i8, !dbg !256
  store i8 %conv16, ptr %flags13, align 8, !dbg !256
  br label %if.end17

if.end17:                                         ; preds = %if.else12, %if.then8
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then3
  %18 = load ptr, ptr @acpi_gbl_supported_interfaces, align 8, !dbg !257
  store ptr %18, ptr %next_interface, align 8, !dbg !258
  br label %while.cond, !dbg !227, !llvm.loop !259

while.end:                                        ; preds = %while.cond
  %19 = load ptr, ptr @acpi_gbl_osi_mutex, align 8, !dbg !261
  %call19 = call i32 @acpi_os_signal_semaphore(ptr noundef %19, i32 noundef 1) #14, !dbg !261
  store i32 0, ptr %retval, align 4, !dbg !262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !262

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_interface) #13, !dbg !263
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !263
  %20 = load i32, ptr %retval, align 4, !dbg !263
  ret i32 %20, !dbg !263
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !264 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !271
  call void @kfree(ptr noundef %0) #14, !dbg !272
  ret void, !dbg !273
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_install_interface(ptr noundef %interface_name) #0 align 16 !dbg !274 {
entry:
  %retval = alloca i32, align 4
  %interface_name.addr = alloca ptr, align 8
  %interface_info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %interface_name, ptr %interface_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %interface_name.addr, metadata !279, metadata !DIExpression()), !dbg !281
  call void @llvm.lifetime.start.p0(i64 8, ptr %interface_info) #13, !dbg !282
  call void @llvm.dbg.declare(metadata ptr %interface_info, metadata !280, metadata !DIExpression()), !dbg !283
  %call = call ptr @acpi_os_allocate_zeroed(i64 noundef 24) #14, !dbg !284
  store ptr %call, ptr %interface_info, align 8, !dbg !285
  %0 = load ptr, ptr %interface_info, align 8, !dbg !286
  %tobool = icmp ne ptr %0, null, !dbg !286
  br i1 %tobool, label %if.end, label %if.then, !dbg !288

if.then:                                          ; preds = %entry
  store i32 4, ptr %retval, align 4, !dbg !289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !289

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %interface_name.addr, align 8, !dbg !291
  %call1 = call i64 @strlen(ptr noundef %1) #14, !dbg !291
  %add = add i64 %call1, 1, !dbg !291
  %call2 = call ptr @acpi_os_allocate_zeroed(i64 noundef %add) #14, !dbg !291
  %2 = load ptr, ptr %interface_info, align 8, !dbg !292
  %name = getelementptr inbounds %struct.acpi_interface_info, ptr %2, i32 0, i32 0, !dbg !293
  store ptr %call2, ptr %name, align 8, !dbg !294
  %3 = load ptr, ptr %interface_info, align 8, !dbg !295
  %name3 = getelementptr inbounds %struct.acpi_interface_info, ptr %3, i32 0, i32 0, !dbg !297
  %4 = load ptr, ptr %name3, align 8, !dbg !297
  %tobool4 = icmp ne ptr %4, null, !dbg !295
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !298

if.then5:                                         ; preds = %if.end
  %5 = load ptr, ptr %interface_info, align 8, !dbg !299
  call void @acpi_os_free(ptr noundef %5) #14, !dbg !299
  store i32 4, ptr %retval, align 4, !dbg !301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !301

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %interface_info, align 8, !dbg !302
  %name7 = getelementptr inbounds %struct.acpi_interface_info, ptr %6, i32 0, i32 0, !dbg !303
  %7 = load ptr, ptr %name7, align 8, !dbg !303
  %8 = load ptr, ptr %interface_name.addr, align 8, !dbg !304
  %call8 = call ptr @strcpy(ptr noundef %7, ptr noundef %8) #14, !dbg !305
  %9 = load ptr, ptr %interface_info, align 8, !dbg !306
  %flags = getelementptr inbounds %struct.acpi_interface_info, ptr %9, i32 0, i32 2, !dbg !307
  store i8 2, ptr %flags, align 8, !dbg !308
  %10 = load ptr, ptr @acpi_gbl_supported_interfaces, align 8, !dbg !309
  %11 = load ptr, ptr %interface_info, align 8, !dbg !310
  %next = getelementptr inbounds %struct.acpi_interface_info, ptr %11, i32 0, i32 1, !dbg !311
  store ptr %10, ptr %next, align 8, !dbg !312
  %12 = load ptr, ptr %interface_info, align 8, !dbg !313
  store ptr %12, ptr @acpi_gbl_supported_interfaces, align 8, !dbg !314
  store i32 0, ptr %retval, align 4, !dbg !315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !315

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %interface_info) #13, !dbg !316
  %13 = load i32, ptr %retval, align 4, !dbg !316
  ret i32 %13, !dbg !316
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate_zeroed(i64 noundef %size) #4 align 16 !dbg !317 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !321, metadata !DIExpression()), !dbg !332
  %0 = load i64, ptr %size.addr, align 8, !dbg !333
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #13, !dbg !334
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !322, metadata !DIExpression()), !dbg !334
  br label %do.body, !dbg !334

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !335
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !324, metadata !DIExpression()), !dbg !335
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !335
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !327, metadata !DIExpression()), !dbg !335
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !335
  %conv = zext i1 %cmp to i32, !dbg !335
  store i32 1, ptr %tmp, align 4, !dbg !335
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !336
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !336
  %1 = load i32, ptr %tmp, align 4, !dbg !335
  %call = call i64 @arch_local_save_flags() #14, !dbg !336
  store i64 %call, ptr %_flags, align 8, !dbg !336
  br label %do.cond, !dbg !336

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !336

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #13, !dbg !337
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !328, metadata !DIExpression()), !dbg !337
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #13, !dbg !337
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !331, metadata !DIExpression()), !dbg !337
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !337
  %conv6 = zext i1 %cmp5 to i32, !dbg !337
  store i32 1, ptr %tmp7, align 4, !dbg !337
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #13, !dbg !338
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #13, !dbg !338
  %2 = load i32, ptr %tmp7, align 4, !dbg !337
  %3 = load i64, ptr %_flags, align 8, !dbg !338
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #14, !dbg !338
  store i32 %call9, ptr %tmp8, align 4, !dbg !338
  %4 = load i32, ptr %tmp8, align 4, !dbg !338
  store i32 %4, ptr %tmp1, align 4, !dbg !336
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #13, !dbg !339
  %5 = load i32, ptr %tmp1, align 4, !dbg !334
  %tobool = icmp ne i32 %5, 0, !dbg !339
  %6 = zext i1 %tobool to i64, !dbg !339
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !339
  %call10 = call noalias ptr @kzalloc(i64 noundef %0, i32 noundef %cond) #15, !dbg !340
  ret ptr %call10, !dbg !341
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !342 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !347 dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_remove_interface(ptr noundef %interface_name) #0 align 16 !dbg !350 {
entry:
  %retval = alloca i32, align 4
  %interface_name.addr = alloca ptr, align 8
  %previous_interface = alloca ptr, align 8
  %next_interface = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %interface_name, ptr %interface_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %interface_name.addr, metadata !352, metadata !DIExpression()), !dbg !355
  call void @llvm.lifetime.start.p0(i64 8, ptr %previous_interface) #13, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %previous_interface, metadata !353, metadata !DIExpression()), !dbg !357
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_interface) #13, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %next_interface, metadata !354, metadata !DIExpression()), !dbg !359
  %0 = load ptr, ptr @acpi_gbl_supported_interfaces, align 8, !dbg !360
  store ptr %0, ptr %next_interface, align 8, !dbg !361
  store ptr %0, ptr %previous_interface, align 8, !dbg !362
  br label %while.cond, !dbg !363

while.cond:                                       ; preds = %if.end20, %entry
  %1 = load ptr, ptr %next_interface, align 8, !dbg !364
  %tobool = icmp ne ptr %1, null, !dbg !363
  br i1 %tobool, label %while.body, label %while.end, !dbg !363

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %interface_name.addr, align 8, !dbg !365
  %3 = load ptr, ptr %next_interface, align 8, !dbg !368
  %name = getelementptr inbounds %struct.acpi_interface_info, ptr %3, i32 0, i32 0, !dbg !369
  %4 = load ptr, ptr %name, align 8, !dbg !369
  %call = call i32 @strcmp(ptr noundef %2, ptr noundef %4) #14, !dbg !370
  %tobool1 = icmp ne i32 %call, 0, !dbg !370
  br i1 %tobool1, label %if.end20, label %if.then, !dbg !371

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %next_interface, align 8, !dbg !372
  %flags = getelementptr inbounds %struct.acpi_interface_info, ptr %5, i32 0, i32 2, !dbg !375
  %6 = load i8, ptr %flags, align 8, !dbg !375
  %conv = zext i8 %6 to i32, !dbg !372
  %and = and i32 %conv, 2, !dbg !376
  %tobool2 = icmp ne i32 %and, 0, !dbg !376
  br i1 %tobool2, label %if.then3, label %if.else9, !dbg !377

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %previous_interface, align 8, !dbg !378
  %8 = load ptr, ptr %next_interface, align 8, !dbg !381
  %cmp = icmp eq ptr %7, %8, !dbg !382
  br i1 %cmp, label %if.then5, label %if.else, !dbg !383

if.then5:                                         ; preds = %if.then3
  %9 = load ptr, ptr %next_interface, align 8, !dbg !384
  %next = getelementptr inbounds %struct.acpi_interface_info, ptr %9, i32 0, i32 1, !dbg !386
  %10 = load ptr, ptr %next, align 8, !dbg !386
  store ptr %10, ptr @acpi_gbl_supported_interfaces, align 8, !dbg !387
  br label %if.end, !dbg !388

if.else:                                          ; preds = %if.then3
  %11 = load ptr, ptr %next_interface, align 8, !dbg !389
  %next6 = getelementptr inbounds %struct.acpi_interface_info, ptr %11, i32 0, i32 1, !dbg !391
  %12 = load ptr, ptr %next6, align 8, !dbg !391
  %13 = load ptr, ptr %previous_interface, align 8, !dbg !392
  %next7 = getelementptr inbounds %struct.acpi_interface_info, ptr %13, i32 0, i32 1, !dbg !393
  store ptr %12, ptr %next7, align 8, !dbg !394
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %14 = load ptr, ptr %next_interface, align 8, !dbg !395
  %name8 = getelementptr inbounds %struct.acpi_interface_info, ptr %14, i32 0, i32 0, !dbg !395
  %15 = load ptr, ptr %name8, align 8, !dbg !395
  call void @acpi_os_free(ptr noundef %15) #14, !dbg !395
  %16 = load ptr, ptr %next_interface, align 8, !dbg !396
  call void @acpi_os_free(ptr noundef %16) #14, !dbg !396
  br label %if.end19, !dbg !397

if.else9:                                         ; preds = %if.then
  %17 = load ptr, ptr %next_interface, align 8, !dbg !398
  %flags10 = getelementptr inbounds %struct.acpi_interface_info, ptr %17, i32 0, i32 2, !dbg !401
  %18 = load i8, ptr %flags10, align 8, !dbg !401
  %conv11 = zext i8 %18 to i32, !dbg !398
  %and12 = and i32 %conv11, 1, !dbg !402
  %tobool13 = icmp ne i32 %and12, 0, !dbg !402
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !403

if.then14:                                        ; preds = %if.else9
  store i32 6, ptr %retval, align 4, !dbg !404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !404

if.end15:                                         ; preds = %if.else9
  %19 = load ptr, ptr %next_interface, align 8, !dbg !406
  %flags16 = getelementptr inbounds %struct.acpi_interface_info, ptr %19, i32 0, i32 2, !dbg !407
  %20 = load i8, ptr %flags16, align 8, !dbg !408
  %conv17 = zext i8 %20 to i32, !dbg !408
  %or = or i32 %conv17, 1, !dbg !408
  %conv18 = trunc i32 %or to i8, !dbg !408
  store i8 %conv18, ptr %flags16, align 8, !dbg !408
  br label %if.end19

if.end19:                                         ; preds = %if.end15, %if.end
  store i32 0, ptr %retval, align 4, !dbg !409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !409

if.end20:                                         ; preds = %while.body
  %21 = load ptr, ptr %next_interface, align 8, !dbg !410
  store ptr %21, ptr %previous_interface, align 8, !dbg !411
  %22 = load ptr, ptr %next_interface, align 8, !dbg !412
  %next21 = getelementptr inbounds %struct.acpi_interface_info, ptr %22, i32 0, i32 1, !dbg !413
  %23 = load ptr, ptr %next21, align 8, !dbg !413
  store ptr %23, ptr %next_interface, align 8, !dbg !414
  br label %while.cond, !dbg !363, !llvm.loop !415

while.end:                                        ; preds = %while.cond
  store i32 6, ptr %retval, align 4, !dbg !417
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !417

cleanup:                                          ; preds = %while.end, %if.end19, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_interface) #13, !dbg !418
  call void @llvm.lifetime.end.p0(i64 8, ptr %previous_interface) #13, !dbg !418
  %24 = load i32, ptr %retval, align 4, !dbg !418
  ret i32 %24, !dbg !418
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !419 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_update_interfaces(i8 noundef zeroext %action) #0 align 16 !dbg !423 {
entry:
  %action.addr = alloca i8, align 1
  %next_interface = alloca ptr, align 8
  store i8 %action, ptr %action.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !427, metadata !DIExpression()), !dbg !429
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_interface) #13, !dbg !430
  call void @llvm.dbg.declare(metadata ptr %next_interface, metadata !428, metadata !DIExpression()), !dbg !431
  %0 = load ptr, ptr @acpi_gbl_supported_interfaces, align 8, !dbg !432
  store ptr %0, ptr %next_interface, align 8, !dbg !433
  br label %while.cond, !dbg !434

while.cond:                                       ; preds = %if.end24, %entry
  %1 = load ptr, ptr %next_interface, align 8, !dbg !435
  %tobool = icmp ne ptr %1, null, !dbg !434
  br i1 %tobool, label %while.body, label %while.end, !dbg !434

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %next_interface, align 8, !dbg !436
  %flags = getelementptr inbounds %struct.acpi_interface_info, ptr %2, i32 0, i32 2, !dbg !439
  %3 = load i8, ptr %flags, align 8, !dbg !439
  %conv = zext i8 %3 to i32, !dbg !436
  %and = and i32 %conv, 4, !dbg !440
  %tobool1 = icmp ne i32 %and, 0, !dbg !440
  br i1 %tobool1, label %land.lhs.true, label %lor.lhs.false, !dbg !441

land.lhs.true:                                    ; preds = %while.body
  %4 = load i8, ptr %action.addr, align 1, !dbg !442
  %conv2 = zext i8 %4 to i32, !dbg !442
  %and3 = and i32 %conv2, 2, !dbg !443
  %tobool4 = icmp ne i32 %and3, 0, !dbg !443
  br i1 %tobool4, label %if.then, label %lor.lhs.false, !dbg !444

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %5 = load ptr, ptr %next_interface, align 8, !dbg !445
  %flags5 = getelementptr inbounds %struct.acpi_interface_info, ptr %5, i32 0, i32 2, !dbg !446
  %6 = load i8, ptr %flags5, align 8, !dbg !446
  %conv6 = zext i8 %6 to i32, !dbg !445
  %and7 = and i32 %conv6, 4, !dbg !447
  %tobool8 = icmp ne i32 %and7, 0, !dbg !447
  br i1 %tobool8, label %if.end24, label %land.lhs.true9, !dbg !448

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %7 = load i8, ptr %action.addr, align 1, !dbg !449
  %conv10 = zext i8 %7 to i32, !dbg !449
  %and11 = and i32 %conv10, 1, !dbg !450
  %tobool12 = icmp ne i32 %and11, 0, !dbg !450
  br i1 %tobool12, label %if.then, label %if.end24, !dbg !451

if.then:                                          ; preds = %land.lhs.true9, %land.lhs.true
  %8 = load i8, ptr %action.addr, align 1, !dbg !452
  %conv13 = zext i8 %8 to i32, !dbg !452
  %and14 = and i32 %conv13, 4, !dbg !455
  %tobool15 = icmp ne i32 %and14, 0, !dbg !455
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !456

if.then16:                                        ; preds = %if.then
  %9 = load ptr, ptr %next_interface, align 8, !dbg !457
  %flags17 = getelementptr inbounds %struct.acpi_interface_info, ptr %9, i32 0, i32 2, !dbg !459
  %10 = load i8, ptr %flags17, align 8, !dbg !460
  %conv18 = zext i8 %10 to i32, !dbg !460
  %or = or i32 %conv18, 1, !dbg !460
  %conv19 = trunc i32 %or to i8, !dbg !460
  store i8 %conv19, ptr %flags17, align 8, !dbg !460
  br label %if.end, !dbg !461

if.else:                                          ; preds = %if.then
  %11 = load ptr, ptr %next_interface, align 8, !dbg !462
  %flags20 = getelementptr inbounds %struct.acpi_interface_info, ptr %11, i32 0, i32 2, !dbg !464
  %12 = load i8, ptr %flags20, align 8, !dbg !465
  %conv21 = zext i8 %12 to i32, !dbg !465
  %and22 = and i32 %conv21, -2, !dbg !465
  %conv23 = trunc i32 %and22 to i8, !dbg !465
  store i8 %conv23, ptr %flags20, align 8, !dbg !465
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then16
  br label %if.end24, !dbg !466

if.end24:                                         ; preds = %if.end, %land.lhs.true9, %lor.lhs.false
  %13 = load ptr, ptr %next_interface, align 8, !dbg !467
  %next = getelementptr inbounds %struct.acpi_interface_info, ptr %13, i32 0, i32 1, !dbg !468
  %14 = load ptr, ptr %next, align 8, !dbg !468
  store ptr %14, ptr %next_interface, align 8, !dbg !469
  br label %while.cond, !dbg !434, !llvm.loop !470

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_interface) #13, !dbg !472
  ret i32 0, !dbg !473
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_ut_get_interface(ptr noundef %interface_name) #0 align 16 !dbg !474 {
entry:
  %retval = alloca ptr, align 8
  %interface_name.addr = alloca ptr, align 8
  %next_interface = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %interface_name, ptr %interface_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %interface_name.addr, metadata !478, metadata !DIExpression()), !dbg !480
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_interface) #13, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %next_interface, metadata !479, metadata !DIExpression()), !dbg !482
  %0 = load ptr, ptr @acpi_gbl_supported_interfaces, align 8, !dbg !483
  store ptr %0, ptr %next_interface, align 8, !dbg !484
  br label %while.cond, !dbg !485

while.cond:                                       ; preds = %if.end, %entry
  %1 = load ptr, ptr %next_interface, align 8, !dbg !486
  %tobool = icmp ne ptr %1, null, !dbg !485
  br i1 %tobool, label %while.body, label %while.end, !dbg !485

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %interface_name.addr, align 8, !dbg !487
  %3 = load ptr, ptr %next_interface, align 8, !dbg !490
  %name = getelementptr inbounds %struct.acpi_interface_info, ptr %3, i32 0, i32 0, !dbg !491
  %4 = load ptr, ptr %name, align 8, !dbg !491
  %call = call i32 @strcmp(ptr noundef %2, ptr noundef %4) #14, !dbg !492
  %tobool1 = icmp ne i32 %call, 0, !dbg !492
  br i1 %tobool1, label %if.end, label %if.then, !dbg !493

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %next_interface, align 8, !dbg !494
  store ptr %5, ptr %retval, align 8, !dbg !496
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !496

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %next_interface, align 8, !dbg !497
  %next = getelementptr inbounds %struct.acpi_interface_info, ptr %6, i32 0, i32 1, !dbg !498
  %7 = load ptr, ptr %next, align 8, !dbg !498
  store ptr %7, ptr %next_interface, align 8, !dbg !499
  br label %while.cond, !dbg !485, !llvm.loop !500

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !502
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !502

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_interface) #13, !dbg !503
  %8 = load ptr, ptr %retval, align 8, !dbg !503
  ret ptr %8, !dbg !503
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_osi_implementation(ptr noundef %walk_state) #0 align 16 !dbg !504 {
entry:
  %retval = alloca i32, align 4
  %walk_state.addr = alloca ptr, align 8
  %string_desc = alloca ptr, align 8
  %return_desc = alloca ptr, align 8
  %interface_info = alloca ptr, align 8
  %interface_handler = alloca ptr, align 8
  %status = alloca i32, align 4
  %return_value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %walk_state, ptr %walk_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %walk_state.addr, metadata !1260, metadata !DIExpression()), !dbg !1271
  call void @llvm.lifetime.start.p0(i64 8, ptr %string_desc) #13, !dbg !1272
  call void @llvm.dbg.declare(metadata ptr %string_desc, metadata !1261, metadata !DIExpression()), !dbg !1273
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_desc) #13, !dbg !1274
  call void @llvm.dbg.declare(metadata ptr %return_desc, metadata !1262, metadata !DIExpression()), !dbg !1275
  call void @llvm.lifetime.start.p0(i64 8, ptr %interface_info) #13, !dbg !1276
  call void @llvm.dbg.declare(metadata ptr %interface_info, metadata !1263, metadata !DIExpression()), !dbg !1277
  call void @llvm.lifetime.start.p0(i64 8, ptr %interface_handler) #13, !dbg !1278
  call void @llvm.dbg.declare(metadata ptr %interface_handler, metadata !1264, metadata !DIExpression()), !dbg !1279
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !1280
  call void @llvm.dbg.declare(metadata ptr %status, metadata !1269, metadata !DIExpression()), !dbg !1281
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_value) #13, !dbg !1282
  call void @llvm.dbg.declare(metadata ptr %return_value, metadata !1270, metadata !DIExpression()), !dbg !1283
  %0 = load ptr, ptr %walk_state.addr, align 8, !dbg !1284
  %arguments = getelementptr inbounds %struct.acpi_walk_state, ptr %0, i32 0, i32 26, !dbg !1285
  %arrayidx = getelementptr [7 x %struct.acpi_namespace_node], ptr %arguments, i64 0, i64 0, !dbg !1284
  %object = getelementptr inbounds %struct.acpi_namespace_node, ptr %arrayidx, i32 0, i32 0, !dbg !1286
  %1 = load ptr, ptr %object, align 8, !dbg !1286
  store ptr %1, ptr %string_desc, align 8, !dbg !1287
  %2 = load ptr, ptr %string_desc, align 8, !dbg !1288
  %tobool = icmp ne ptr %2, null, !dbg !1288
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1290

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %string_desc, align 8, !dbg !1291
  %type = getelementptr inbounds %struct.acpi_object_common, ptr %3, i32 0, i32 2, !dbg !1292
  %4 = load i8, ptr %type, align 1, !dbg !1292
  %conv = zext i8 %4 to i32, !dbg !1291
  %cmp = icmp ne i32 %conv, 2, !dbg !1293
  br i1 %cmp, label %if.then, label %if.end, !dbg !1294

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 8, ptr %retval, align 4, !dbg !1295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1295

if.end:                                           ; preds = %lor.lhs.false
  %call = call ptr @acpi_ut_create_internal_object_dbg(ptr noundef @_acpi_module_name, i32 noundef 405, i32 noundef 1, i32 noundef 1) #14, !dbg !1297
  store ptr %call, ptr %return_desc, align 8, !dbg !1298
  %5 = load ptr, ptr %return_desc, align 8, !dbg !1299
  %tobool2 = icmp ne ptr %5, null, !dbg !1299
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !1301

if.then3:                                         ; preds = %if.end
  store i32 4, ptr %retval, align 4, !dbg !1302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1302

if.end4:                                          ; preds = %if.end
  store i64 0, ptr %return_value, align 8, !dbg !1304
  %6 = load ptr, ptr @acpi_gbl_osi_mutex, align 8, !dbg !1305
  %call5 = call i32 @acpi_os_wait_semaphore(ptr noundef %6, i32 noundef 1, i16 noundef zeroext -1) #14, !dbg !1305
  store i32 %call5, ptr %status, align 4, !dbg !1306
  %7 = load i32, ptr %status, align 4, !dbg !1307
  %tobool6 = icmp ne i32 %7, 0, !dbg !1307
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1309

if.then7:                                         ; preds = %if.end4
  %8 = load ptr, ptr %return_desc, align 8, !dbg !1310
  call void @acpi_ut_remove_reference(ptr noundef %8) #14, !dbg !1312
  %9 = load i32, ptr %status, align 4, !dbg !1313
  store i32 %9, ptr %retval, align 4, !dbg !1313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1313

if.end8:                                          ; preds = %if.end4
  %10 = load ptr, ptr %string_desc, align 8, !dbg !1314
  %pointer = getelementptr inbounds %struct.acpi_object_string, ptr %10, i32 0, i32 5, !dbg !1315
  %11 = load ptr, ptr %pointer, align 8, !dbg !1315
  %call9 = call ptr @acpi_ut_get_interface(ptr noundef %11) #14, !dbg !1316
  store ptr %call9, ptr %interface_info, align 8, !dbg !1317
  %12 = load ptr, ptr %interface_info, align 8, !dbg !1318
  %tobool10 = icmp ne ptr %12, null, !dbg !1318
  br i1 %tobool10, label %land.lhs.true, label %if.end21, !dbg !1320

land.lhs.true:                                    ; preds = %if.end8
  %13 = load ptr, ptr %interface_info, align 8, !dbg !1321
  %flags = getelementptr inbounds %struct.acpi_interface_info, ptr %13, i32 0, i32 2, !dbg !1322
  %14 = load i8, ptr %flags, align 8, !dbg !1322
  %conv11 = zext i8 %14 to i32, !dbg !1321
  %and = and i32 %conv11, 1, !dbg !1323
  %tobool12 = icmp ne i32 %and, 0, !dbg !1323
  br i1 %tobool12, label %if.end21, label %if.then13, !dbg !1324

if.then13:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %interface_info, align 8, !dbg !1325
  %value = getelementptr inbounds %struct.acpi_interface_info, ptr %15, i32 0, i32 3, !dbg !1328
  %16 = load i8, ptr %value, align 1, !dbg !1328
  %conv14 = zext i8 %16 to i32, !dbg !1325
  %17 = load i8, ptr @acpi_gbl_osi_data, align 1, !dbg !1329
  %conv15 = zext i8 %17 to i32, !dbg !1329
  %cmp16 = icmp sgt i32 %conv14, %conv15, !dbg !1330
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !1331

if.then18:                                        ; preds = %if.then13
  %18 = load ptr, ptr %interface_info, align 8, !dbg !1332
  %value19 = getelementptr inbounds %struct.acpi_interface_info, ptr %18, i32 0, i32 3, !dbg !1334
  %19 = load i8, ptr %value19, align 1, !dbg !1334
  store i8 %19, ptr @acpi_gbl_osi_data, align 1, !dbg !1335
  br label %if.end20, !dbg !1336

if.end20:                                         ; preds = %if.then18, %if.then13
  store i64 -1, ptr %return_value, align 8, !dbg !1337
  br label %if.end21, !dbg !1338

if.end21:                                         ; preds = %if.end20, %land.lhs.true, %if.end8
  %20 = load ptr, ptr @acpi_gbl_osi_mutex, align 8, !dbg !1339
  %call22 = call i32 @acpi_os_signal_semaphore(ptr noundef %20, i32 noundef 1) #14, !dbg !1339
  %21 = load ptr, ptr @acpi_gbl_interface_handler, align 8, !dbg !1340
  store ptr %21, ptr %interface_handler, align 8, !dbg !1341
  %22 = load ptr, ptr %interface_handler, align 8, !dbg !1342
  %tobool23 = icmp ne ptr %22, null, !dbg !1342
  br i1 %tobool23, label %if.then24, label %if.end31, !dbg !1344

if.then24:                                        ; preds = %if.end21
  %23 = load ptr, ptr %interface_handler, align 8, !dbg !1345
  %24 = load ptr, ptr %string_desc, align 8, !dbg !1348
  %pointer25 = getelementptr inbounds %struct.acpi_object_string, ptr %24, i32 0, i32 5, !dbg !1349
  %25 = load ptr, ptr %pointer25, align 8, !dbg !1349
  %26 = load i64, ptr %return_value, align 8, !dbg !1350
  %conv26 = trunc i64 %26 to i32, !dbg !1351
  %call27 = call i32 %23(ptr noundef %25, i32 noundef %conv26) #14, !dbg !1345
  %tobool28 = icmp ne i32 %call27, 0, !dbg !1345
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !1352

if.then29:                                        ; preds = %if.then24
  store i64 -1, ptr %return_value, align 8, !dbg !1353
  br label %if.end30, !dbg !1355

if.end30:                                         ; preds = %if.then29, %if.then24
  br label %if.end31, !dbg !1356

if.end31:                                         ; preds = %if.end30, %if.end21
  %27 = load i64, ptr %return_value, align 8, !dbg !1357
  %28 = load ptr, ptr %return_desc, align 8, !dbg !1358
  %value32 = getelementptr inbounds %struct.acpi_object_integer, ptr %28, i32 0, i32 6, !dbg !1359
  store i64 %27, ptr %value32, align 8, !dbg !1360
  %29 = load ptr, ptr %return_desc, align 8, !dbg !1361
  %30 = load ptr, ptr %walk_state.addr, align 8, !dbg !1362
  %return_desc33 = getelementptr inbounds %struct.acpi_walk_state, ptr %30, i32 0, i32 45, !dbg !1363
  store ptr %29, ptr %return_desc33, align 8, !dbg !1364
  store i32 0, ptr %retval, align 4, !dbg !1365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1365

cleanup:                                          ; preds = %if.end31, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_value) #13, !dbg !1366
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !1366
  call void @llvm.lifetime.end.p0(i64 8, ptr %interface_handler) #13, !dbg !1366
  call void @llvm.lifetime.end.p0(i64 8, ptr %interface_info) #13, !dbg !1366
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_desc) #13, !dbg !1366
  call void @llvm.lifetime.end.p0(i64 8, ptr %string_desc) #13, !dbg !1366
  %31 = load i32, ptr %retval, align 4, !dbg !1366
  ret i32 %31, !dbg !1366
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1367 dso_local ptr @acpi_ut_create_internal_object_dbg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1372 dso_local void @acpi_ut_remove_reference(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1375 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1380 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1388, metadata !DIExpression()), !dbg !1390
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1389, metadata !DIExpression()), !dbg !1391
  %0 = load i64, ptr %size.addr, align 8, !dbg !1392
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1393
  %or = or i32 %1, 256, !dbg !1394
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !1395
  ret ptr %call, !dbg !1396
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !1397 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !1401
  ret i64 %call, !dbg !1402
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !1403 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1407, metadata !DIExpression()), !dbg !1408
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1409
  %and = and i64 %0, 512, !dbg !1410
  %tobool = icmp ne i64 %and, 0, !dbg !1411
  %lnot = xor i1 %tobool, true, !dbg !1411
  %lnot.ext = zext i1 %lnot to i32, !dbg !1411
  ret i32 %lnot.ext, !dbg !1412
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1413 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1415, metadata !DIExpression()), !dbg !1420
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1416, metadata !DIExpression()), !dbg !1421
  %0 = load i64, ptr %size.addr, align 8, !dbg !1422
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1423
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1424

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1425
  %tobool = icmp ne i64 %2, 0, !dbg !1425
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1426

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !1427
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1417, metadata !DIExpression()), !dbg !1428
  %3 = load i64, ptr %size.addr, align 8, !dbg !1429
  %cmp = icmp ugt i64 %3, 8192, !dbg !1431
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1432

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1433
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1434
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !1435
  store ptr %call, ptr %retval, align 8, !dbg !1436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1436

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1437
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !1437
  store i32 %call2, ptr %index, align 4, !dbg !1438
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1439
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1440
  %9 = ptrtoint ptr %8 to i64, !dbg !1440
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !1441
  %idxprom = zext i32 %call3 to i64, !dbg !1442
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1442
  %10 = load i32, ptr %index, align 4, !dbg !1443
  %idxprom4 = zext i32 %10 to i64, !dbg !1442
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1442
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1442
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1444
  %13 = load i64, ptr %size.addr, align 8, !dbg !1445
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !1446
  store ptr %call6, ptr %retval, align 8, !dbg !1447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1447

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !1448
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1449
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1450
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !1451
  store ptr %call8, ptr %retval, align 8, !dbg !1452
  br label %return, !dbg !1452

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1453
  ret ptr %16, !dbg !1453
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1454 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !1455 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1461, metadata !DIExpression()), !dbg !1463
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1462, metadata !DIExpression()), !dbg !1464
  %0 = load i64, ptr %size.addr, align 8, !dbg !1465
  %tobool = icmp ne i64 %0, 0, !dbg !1465
  br i1 %tobool, label %if.end, label %if.then, !dbg !1467

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1468
  br label %return, !dbg !1468

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1469
  %cmp = icmp ule i64 %1, 8, !dbg !1471
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1472

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1473
  br label %return, !dbg !1473

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1474
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1476
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1477

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1478
  %cmp4 = icmp ule i64 %3, 96, !dbg !1479
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1480

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1481
  br label %return, !dbg !1481

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1482
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1484
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1485

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1486
  %cmp9 = icmp ule i64 %5, 192, !dbg !1487
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1488

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1489
  br label %return, !dbg !1489

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1490
  %cmp12 = icmp ule i64 %6, 8, !dbg !1492
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1493

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1494
  br label %return, !dbg !1494

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1495
  %cmp15 = icmp ule i64 %7, 16, !dbg !1497
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1498

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1499
  br label %return, !dbg !1499

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1500
  %cmp18 = icmp ule i64 %8, 32, !dbg !1502
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1503

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1504
  br label %return, !dbg !1504

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1505
  %cmp21 = icmp ule i64 %9, 64, !dbg !1507
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1508

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1509
  br label %return, !dbg !1509

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1510
  %cmp24 = icmp ule i64 %10, 128, !dbg !1512
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1513

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1514
  br label %return, !dbg !1514

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1515
  %cmp27 = icmp ule i64 %11, 256, !dbg !1517
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1518

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1519
  br label %return, !dbg !1519

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1520
  %cmp30 = icmp ule i64 %12, 512, !dbg !1522
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1523

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1524
  br label %return, !dbg !1524

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1525
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1527
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1528

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1529
  br label %return, !dbg !1529

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1530
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1532
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1533

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1534
  br label %return, !dbg !1534

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1535
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1537
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1538

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1539
  br label %return, !dbg !1539

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1540
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1542
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1543

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1544
  br label %return, !dbg !1544

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1545
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1547
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1548

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1549
  br label %return, !dbg !1549

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1550
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1552
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1553

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1554
  br label %return, !dbg !1554

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1555
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1557
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1558

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1559
  br label %return, !dbg !1559

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1560
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1562
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1563

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1564
  br label %return, !dbg !1564

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1565
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1567
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1568

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1569
  br label %return, !dbg !1569

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1570
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1572
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1573

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1574
  br label %return, !dbg !1574

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1575
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1577
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1578

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1579
  br label %return, !dbg !1579

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1580
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1582
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1583

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1584
  br label %return, !dbg !1584

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1585, !range !1587, !noundef !1588
  %tobool69 = trunc i8 %25 to i1, !dbg !1585
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1589

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1590

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #17, !dbg !1591, !srcloc !1594
  unreachable, !dbg !1591

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1595

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1596

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1597

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1599

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1597

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.28, i32 480, i32 0, i64 12) #13, !dbg !1601, !srcloc !1603
  br label %do.end75, !dbg !1601

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1597

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1604
  br label %return, !dbg !1604

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1605
  ret i32 %26, !dbg !1605
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1606 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !1612 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1616, metadata !DIExpression()), !dbg !1618
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1617, metadata !DIExpression()), !dbg !1619
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1620
  %and = and i32 %0, 17, !dbg !1620
  %cmp = icmp eq i32 %and, 0, !dbg !1620
  %lnot = xor i1 %cmp, true, !dbg !1620
  %lnot1 = xor i1 %lnot, true, !dbg !1620
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1620
  %conv = sext i32 %lnot.ext to i64, !dbg !1620
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1620
  %tobool = icmp ne i64 %expval, 0, !dbg !1620
  br i1 %tobool, label %if.then, label %if.end, !dbg !1622

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1623
  br label %return, !dbg !1623

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1624
  %and2 = and i32 %1, 1, !dbg !1626
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1626
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1627

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1628
  br label %return, !dbg !1628

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1629
  br label %return, !dbg !1629

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1631
  ret i32 %2, !dbg !1631
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1632 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1633 dso_local void @__compiletime_assert_173() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !1636 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1639
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1638, metadata !DIExpression()), !dbg !1640
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !1641, !srcloc !1642
  %0 = load i64, ptr %flags, align 8, !dbg !1643
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1644
  ret i64 %0, !dbg !1645
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_default_supported_interfaces", scope: !2, file: !3, line: 53, type: !132, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utosi.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utosi\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utosi.ll drivers/acpi/acpica/utosi.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !36, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpica/utosi.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bafc0b94a7395f49ebbd0bb240cec3e7")
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
!21 = !{!22, !29, !24, !30, !32, !33, !35}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !23, line: 127, baseType: !24)
!23 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !28)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !23, line: 421, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !34, line: 154, baseType: !7)
!34 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !{!37, !43, !45, !50, !55, !57, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !99, !104, !106, !111, !116, !0, !121, !126}
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !3, line: 56, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 104, elements: !41)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !{!42}
!42 = !DISubrange(count: 13)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !39, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 136, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 17)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 120, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 15)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !47, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !3, line: 61, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 152, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 19)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !39, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !3, line: 63, type: !52, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !47, isLocal: true, isDefinition: true)
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !47, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !3, line: 66, type: !39, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !3, line: 67, type: !39, isLocal: true, isDefinition: true)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !39, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !39, isLocal: true, isDefinition: true)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !39, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !3, line: 71, type: !39, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !3, line: 72, type: !52, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !39, isLocal: true, isDefinition: true)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !3, line: 74, type: !52, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !39, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !39, isLocal: true, isDefinition: true)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !3, line: 77, type: !39, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 272, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 34)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 112, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 14)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !47, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 144, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 18)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 160, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !3, line: 94, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 224, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 28)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 168, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 21)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "_acpi_module_name", scope: !2, file: !3, line: 14, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 48, elements: !130)
!129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!130 = !{!131}
!131 = !DISubrange(count: 6)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 5376, elements: !119)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_interface_info", file: !134, line: 1061, size: 192, elements: !135)
!134 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!135 = !{!136, !138, !140, !144}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !134, line: 1062, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !133, file: !134, line: 1063, baseType: !139, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !133, file: !134, line: 1064, baseType: !141, size: 8, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !25, line: 17, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !27, line: 21, baseType: !143)
!143 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !133, file: !134, line: 1065, baseType: !141, size: 8, offset: 136)
!145 = !{i32 7, !"Dwarf Version", i32 5}
!146 = !{i32 2, !"Debug Info Version", i32 3}
!147 = !{i32 1, !"wchar_size", i32 2}
!148 = !{i32 8, !"cf-protection-branch", i32 1}
!149 = !{i32 4, !"function_return_thunk_extern", i32 1}
!150 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!151 = !{i32 1, !"Code Model", i32 2}
!152 = !{i32 1, !"override-stack-alignment", i32 8}
!153 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!154 = distinct !DISubprogram(name: "acpi_ut_initialize_interfaces", scope: !3, file: !3, line: 109, type: !155, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !157)
!155 = !DISubroutineType(types: !156)
!156 = !{!29}
!157 = !{!158, !159}
!158 = !DILocalVariable(name: "status", scope: !154, file: !3, line: 111, type: !29)
!159 = !DILocalVariable(name: "i", scope: !154, file: !3, line: 112, type: !30)
!160 = !DILocation(line: 111, column: 2, scope: !154)
!161 = !DILocation(line: 111, column: 14, scope: !154)
!162 = !DILocation(line: 112, column: 2, scope: !154)
!163 = !DILocation(line: 112, column: 6, scope: !154)
!164 = !DILocation(line: 114, column: 11, scope: !154)
!165 = !DILocation(line: 114, column: 9, scope: !154)
!166 = !DILocation(line: 115, column: 6, scope: !167)
!167 = distinct !DILexicalBlock(scope: !154, file: !3, line: 115, column: 6)
!168 = !DILocation(line: 115, column: 6, scope: !154)
!169 = !DILocation(line: 116, column: 11, scope: !170)
!170 = distinct !DILexicalBlock(scope: !167, file: !3, line: 115, column: 28)
!171 = !DILocation(line: 116, column: 3, scope: !170)
!172 = !DILocation(line: 119, column: 32, scope: !154)
!173 = !DILocation(line: 123, column: 9, scope: !174)
!174 = distinct !DILexicalBlock(scope: !154, file: !3, line: 123, column: 2)
!175 = !DILocation(line: 123, column: 7, scope: !174)
!176 = !DILocation(line: 124, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !3, line: 123, column: 2)
!178 = !DILocation(line: 124, column: 9, scope: !177)
!179 = !DILocation(line: 123, column: 2, scope: !174)
!180 = !DILocation(line: 127, column: 53, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !3, line: 125, column: 12)
!182 = !DILocation(line: 127, column: 42, scope: !181)
!183 = !DILocation(line: 127, column: 55, scope: !181)
!184 = !DILocation(line: 127, column: 8, scope: !181)
!185 = !DILocation(line: 126, column: 37, scope: !181)
!186 = !DILocation(line: 126, column: 3, scope: !181)
!187 = !DILocation(line: 126, column: 40, scope: !181)
!188 = !DILocation(line: 126, column: 45, scope: !181)
!189 = !DILocation(line: 128, column: 2, scope: !181)
!190 = !DILocation(line: 125, column: 8, scope: !177)
!191 = !DILocation(line: 123, column: 2, scope: !177)
!192 = distinct !{!192, !179, !193, !194, !195}
!193 = !DILocation(line: 128, column: 2, scope: !174)
!194 = !{!"llvm.loop.mustprogress"}
!195 = !{!"llvm.loop.unroll.disable"}
!196 = !DILocation(line: 130, column: 2, scope: !154)
!197 = !DILocation(line: 131, column: 2, scope: !154)
!198 = !DILocation(line: 132, column: 1, scope: !154)
!199 = !DISubprogram(name: "acpi_os_wait_semaphore", scope: !200, file: !200, line: 136, type: !201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!200 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!201 = !DISubroutineType(types: !202)
!202 = !{!29, !32, !30, !203}
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !25, line: 19, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !205)
!205 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!206 = !DISubprogram(name: "acpi_os_signal_semaphore", scope: !200, file: !200, line: 140, type: !207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!207 = !DISubroutineType(types: !208)
!208 = !{!29, !32, !30}
!209 = distinct !DISubprogram(name: "acpi_ut_interface_terminate", scope: !3, file: !3, line: 147, type: !155, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!210 = !{!211, !212}
!211 = !DILocalVariable(name: "status", scope: !209, file: !3, line: 149, type: !29)
!212 = !DILocalVariable(name: "next_interface", scope: !209, file: !3, line: 150, type: !139)
!213 = !DILocation(line: 149, column: 2, scope: !209)
!214 = !DILocation(line: 149, column: 14, scope: !209)
!215 = !DILocation(line: 150, column: 2, scope: !209)
!216 = !DILocation(line: 150, column: 30, scope: !209)
!217 = !DILocation(line: 152, column: 11, scope: !209)
!218 = !DILocation(line: 152, column: 9, scope: !209)
!219 = !DILocation(line: 153, column: 6, scope: !220)
!220 = distinct !DILexicalBlock(scope: !209, file: !3, line: 153, column: 6)
!221 = !DILocation(line: 153, column: 6, scope: !209)
!222 = !DILocation(line: 154, column: 11, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !3, line: 153, column: 28)
!224 = !DILocation(line: 154, column: 3, scope: !223)
!225 = !DILocation(line: 157, column: 19, scope: !209)
!226 = !DILocation(line: 157, column: 17, scope: !209)
!227 = !DILocation(line: 158, column: 2, scope: !209)
!228 = !DILocation(line: 158, column: 9, scope: !209)
!229 = !DILocation(line: 159, column: 35, scope: !230)
!230 = distinct !DILexicalBlock(scope: !209, file: !3, line: 158, column: 25)
!231 = !DILocation(line: 159, column: 51, scope: !230)
!232 = !DILocation(line: 159, column: 33, scope: !230)
!233 = !DILocation(line: 161, column: 7, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !3, line: 161, column: 7)
!235 = !DILocation(line: 161, column: 23, scope: !234)
!236 = !DILocation(line: 161, column: 29, scope: !234)
!237 = !DILocation(line: 161, column: 7, scope: !230)
!238 = !DILocation(line: 165, column: 4, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !3, line: 161, column: 49)
!240 = !DILocation(line: 166, column: 4, scope: !239)
!241 = !DILocation(line: 167, column: 3, scope: !239)
!242 = !DILocation(line: 170, column: 8, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !3, line: 170, column: 8)
!244 = distinct !DILexicalBlock(scope: !234, file: !3, line: 167, column: 10)
!245 = !DILocation(line: 170, column: 24, scope: !243)
!246 = !DILocation(line: 170, column: 30, scope: !243)
!247 = !DILocation(line: 170, column: 8, scope: !244)
!248 = !DILocation(line: 171, column: 5, scope: !249)
!249 = distinct !DILexicalBlock(scope: !243, file: !3, line: 170, column: 58)
!250 = !DILocation(line: 171, column: 21, scope: !249)
!251 = !DILocation(line: 171, column: 27, scope: !249)
!252 = !DILocation(line: 172, column: 4, scope: !249)
!253 = !DILocation(line: 173, column: 5, scope: !254)
!254 = distinct !DILexicalBlock(scope: !243, file: !3, line: 172, column: 11)
!255 = !DILocation(line: 173, column: 21, scope: !254)
!256 = !DILocation(line: 173, column: 27, scope: !254)
!257 = !DILocation(line: 177, column: 20, scope: !230)
!258 = !DILocation(line: 177, column: 18, scope: !230)
!259 = distinct !{!259, !227, !260, !194, !195}
!260 = !DILocation(line: 178, column: 2, scope: !209)
!261 = !DILocation(line: 180, column: 2, scope: !209)
!262 = !DILocation(line: 181, column: 2, scope: !209)
!263 = !DILocation(line: 182, column: 1, scope: !209)
!264 = distinct !DISubprogram(name: "acpi_os_free", scope: !265, file: !265, line: 60, type: !266, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!265 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!266 = !DISubroutineType(types: !267)
!267 = !{null, !32}
!268 = !{!269}
!269 = !DILocalVariable(name: "memory", arg: 1, scope: !264, file: !265, line: 60, type: !32)
!270 = !DILocation(line: 60, column: 39, scope: !264)
!271 = !DILocation(line: 62, column: 8, scope: !264)
!272 = !DILocation(line: 62, column: 2, scope: !264)
!273 = !DILocation(line: 63, column: 1, scope: !264)
!274 = distinct !DISubprogram(name: "acpi_ut_install_interface", scope: !3, file: !3, line: 197, type: !275, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !278)
!275 = !DISubroutineType(types: !276)
!276 = !{!29, !277}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !23, line: 423, baseType: !137)
!278 = !{!279, !280}
!279 = !DILocalVariable(name: "interface_name", arg: 1, scope: !274, file: !3, line: 197, type: !277)
!280 = !DILocalVariable(name: "interface_info", scope: !274, file: !3, line: 199, type: !139)
!281 = !DILocation(line: 197, column: 51, scope: !274)
!282 = !DILocation(line: 199, column: 2, scope: !274)
!283 = !DILocation(line: 199, column: 30, scope: !274)
!284 = !DILocation(line: 204, column: 6, scope: !274)
!285 = !DILocation(line: 203, column: 17, scope: !274)
!286 = !DILocation(line: 205, column: 7, scope: !287)
!287 = distinct !DILexicalBlock(scope: !274, file: !3, line: 205, column: 6)
!288 = !DILocation(line: 205, column: 6, scope: !274)
!289 = !DILocation(line: 206, column: 3, scope: !290)
!290 = distinct !DILexicalBlock(scope: !287, file: !3, line: 205, column: 23)
!291 = !DILocation(line: 209, column: 25, scope: !274)
!292 = !DILocation(line: 209, column: 2, scope: !274)
!293 = !DILocation(line: 209, column: 18, scope: !274)
!294 = !DILocation(line: 209, column: 23, scope: !274)
!295 = !DILocation(line: 210, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !274, file: !3, line: 210, column: 6)
!297 = !DILocation(line: 210, column: 23, scope: !296)
!298 = !DILocation(line: 210, column: 6, scope: !274)
!299 = !DILocation(line: 211, column: 3, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !3, line: 210, column: 29)
!301 = !DILocation(line: 212, column: 3, scope: !300)
!302 = !DILocation(line: 217, column: 9, scope: !274)
!303 = !DILocation(line: 217, column: 25, scope: !274)
!304 = !DILocation(line: 217, column: 31, scope: !274)
!305 = !DILocation(line: 217, column: 2, scope: !274)
!306 = !DILocation(line: 218, column: 2, scope: !274)
!307 = !DILocation(line: 218, column: 18, scope: !274)
!308 = !DILocation(line: 218, column: 24, scope: !274)
!309 = !DILocation(line: 219, column: 25, scope: !274)
!310 = !DILocation(line: 219, column: 2, scope: !274)
!311 = !DILocation(line: 219, column: 18, scope: !274)
!312 = !DILocation(line: 219, column: 23, scope: !274)
!313 = !DILocation(line: 221, column: 34, scope: !274)
!314 = !DILocation(line: 221, column: 32, scope: !274)
!315 = !DILocation(line: 222, column: 2, scope: !274)
!316 = !DILocation(line: 223, column: 1, scope: !274)
!317 = distinct !DISubprogram(name: "acpi_os_allocate_zeroed", scope: !265, file: !265, line: 55, type: !318, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{!32, !22}
!320 = !{!321, !322, !324, !327, !328, !331}
!321 = !DILocalVariable(name: "size", arg: 1, scope: !317, file: !265, line: 55, type: !22)
!322 = !DILocalVariable(name: "_flags", scope: !323, file: !265, line: 57, type: !35)
!323 = distinct !DILexicalBlock(scope: !317, file: !265, line: 57, column: 23)
!324 = !DILocalVariable(name: "__dummy", scope: !325, file: !265, line: 57, type: !35)
!325 = distinct !DILexicalBlock(scope: !326, file: !265, line: 57, column: 23)
!326 = distinct !DILexicalBlock(scope: !323, file: !265, line: 57, column: 23)
!327 = !DILocalVariable(name: "__dummy2", scope: !325, file: !265, line: 57, type: !35)
!328 = !DILocalVariable(name: "__dummy", scope: !329, file: !265, line: 57, type: !35)
!329 = distinct !DILexicalBlock(scope: !330, file: !265, line: 57, column: 23)
!330 = distinct !DILexicalBlock(scope: !323, file: !265, line: 57, column: 23)
!331 = !DILocalVariable(name: "__dummy2", scope: !329, file: !265, line: 57, type: !35)
!332 = !DILocation(line: 55, column: 55, scope: !317)
!333 = !DILocation(line: 57, column: 17, scope: !317)
!334 = !DILocation(line: 57, column: 23, scope: !323)
!335 = !DILocation(line: 57, column: 23, scope: !325)
!336 = !DILocation(line: 57, column: 23, scope: !326)
!337 = !DILocation(line: 57, column: 23, scope: !329)
!338 = !DILocation(line: 57, column: 23, scope: !330)
!339 = !DILocation(line: 57, column: 23, scope: !317)
!340 = !DILocation(line: 57, column: 9, scope: !317)
!341 = !DILocation(line: 57, column: 2, scope: !317)
!342 = !DISubprogram(name: "strlen", scope: !343, file: !343, line: 128, type: !344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!343 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!344 = !DISubroutineType(types: !345)
!345 = !{!35, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!347 = !DISubprogram(name: "strcpy", scope: !343, file: !343, line: 63, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!348 = !DISubroutineType(types: !349)
!349 = !{!137, !137, !346}
!350 = distinct !DISubprogram(name: "acpi_ut_remove_interface", scope: !3, file: !3, line: 238, type: !275, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !351)
!351 = !{!352, !353, !354}
!352 = !DILocalVariable(name: "interface_name", arg: 1, scope: !350, file: !3, line: 238, type: !277)
!353 = !DILocalVariable(name: "previous_interface", scope: !350, file: !3, line: 240, type: !139)
!354 = !DILocalVariable(name: "next_interface", scope: !350, file: !3, line: 241, type: !139)
!355 = !DILocation(line: 238, column: 50, scope: !350)
!356 = !DILocation(line: 240, column: 2, scope: !350)
!357 = !DILocation(line: 240, column: 30, scope: !350)
!358 = !DILocation(line: 241, column: 2, scope: !350)
!359 = !DILocation(line: 241, column: 30, scope: !350)
!360 = !DILocation(line: 243, column: 40, scope: !350)
!361 = !DILocation(line: 243, column: 38, scope: !350)
!362 = !DILocation(line: 243, column: 21, scope: !350)
!363 = !DILocation(line: 244, column: 2, scope: !350)
!364 = !DILocation(line: 244, column: 9, scope: !350)
!365 = !DILocation(line: 245, column: 15, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !3, line: 245, column: 7)
!367 = distinct !DILexicalBlock(scope: !350, file: !3, line: 244, column: 25)
!368 = !DILocation(line: 245, column: 31, scope: !366)
!369 = !DILocation(line: 245, column: 47, scope: !366)
!370 = !DILocation(line: 245, column: 8, scope: !366)
!371 = !DILocation(line: 245, column: 7, scope: !367)
!372 = !DILocation(line: 250, column: 8, scope: !373)
!373 = distinct !DILexicalBlock(scope: !374, file: !3, line: 250, column: 8)
!374 = distinct !DILexicalBlock(scope: !366, file: !3, line: 245, column: 54)
!375 = !DILocation(line: 250, column: 24, scope: !373)
!376 = !DILocation(line: 250, column: 30, scope: !373)
!377 = !DILocation(line: 250, column: 8, scope: !374)
!378 = !DILocation(line: 254, column: 9, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !3, line: 254, column: 9)
!380 = distinct !DILexicalBlock(scope: !373, file: !3, line: 250, column: 50)
!381 = !DILocation(line: 254, column: 31, scope: !379)
!382 = !DILocation(line: 254, column: 28, scope: !379)
!383 = !DILocation(line: 254, column: 9, scope: !380)
!384 = !DILocation(line: 256, column: 10, scope: !385)
!385 = distinct !DILexicalBlock(scope: !379, file: !3, line: 254, column: 47)
!386 = !DILocation(line: 256, column: 26, scope: !385)
!387 = !DILocation(line: 255, column: 36, scope: !385)
!388 = !DILocation(line: 257, column: 5, scope: !385)
!389 = !DILocation(line: 259, column: 10, scope: !390)
!390 = distinct !DILexicalBlock(scope: !379, file: !3, line: 257, column: 12)
!391 = !DILocation(line: 259, column: 26, scope: !390)
!392 = !DILocation(line: 258, column: 6, scope: !390)
!393 = !DILocation(line: 258, column: 26, scope: !390)
!394 = !DILocation(line: 258, column: 31, scope: !390)
!395 = !DILocation(line: 262, column: 5, scope: !380)
!396 = !DILocation(line: 263, column: 5, scope: !380)
!397 = !DILocation(line: 264, column: 4, scope: !380)
!398 = !DILocation(line: 269, column: 9, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !3, line: 269, column: 9)
!400 = distinct !DILexicalBlock(scope: !373, file: !3, line: 264, column: 11)
!401 = !DILocation(line: 269, column: 25, scope: !399)
!402 = !DILocation(line: 269, column: 31, scope: !399)
!403 = !DILocation(line: 269, column: 9, scope: !400)
!404 = !DILocation(line: 270, column: 6, scope: !405)
!405 = distinct !DILexicalBlock(scope: !399, file: !3, line: 269, column: 51)
!406 = !DILocation(line: 273, column: 5, scope: !400)
!407 = !DILocation(line: 273, column: 21, scope: !400)
!408 = !DILocation(line: 273, column: 27, scope: !400)
!409 = !DILocation(line: 276, column: 4, scope: !374)
!410 = !DILocation(line: 279, column: 24, scope: !367)
!411 = !DILocation(line: 279, column: 22, scope: !367)
!412 = !DILocation(line: 280, column: 20, scope: !367)
!413 = !DILocation(line: 280, column: 36, scope: !367)
!414 = !DILocation(line: 280, column: 18, scope: !367)
!415 = distinct !{!415, !363, !416, !194, !195}
!416 = !DILocation(line: 281, column: 2, scope: !350)
!417 = !DILocation(line: 285, column: 2, scope: !350)
!418 = !DILocation(line: 286, column: 1, scope: !350)
!419 = !DISubprogram(name: "strcmp", scope: !343, file: !343, line: 88, type: !420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!420 = !DISubroutineType(types: !421)
!421 = !{!422, !346, !346}
!422 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!423 = distinct !DISubprogram(name: "acpi_ut_update_interfaces", scope: !3, file: !3, line: 303, type: !424, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{!29, !141}
!426 = !{!427, !428}
!427 = !DILocalVariable(name: "action", arg: 1, scope: !423, file: !3, line: 303, type: !141)
!428 = !DILocalVariable(name: "next_interface", scope: !423, file: !3, line: 305, type: !139)
!429 = !DILocation(line: 303, column: 42, scope: !423)
!430 = !DILocation(line: 305, column: 2, scope: !423)
!431 = !DILocation(line: 305, column: 30, scope: !423)
!432 = !DILocation(line: 307, column: 19, scope: !423)
!433 = !DILocation(line: 307, column: 17, scope: !423)
!434 = !DILocation(line: 308, column: 2, scope: !423)
!435 = !DILocation(line: 308, column: 9, scope: !423)
!436 = !DILocation(line: 309, column: 9, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 309, column: 7)
!438 = distinct !DILexicalBlock(scope: !423, file: !3, line: 308, column: 25)
!439 = !DILocation(line: 309, column: 25, scope: !437)
!440 = !DILocation(line: 309, column: 31, scope: !437)
!441 = !DILocation(line: 309, column: 51, scope: !437)
!442 = !DILocation(line: 310, column: 9, scope: !437)
!443 = !DILocation(line: 310, column: 16, scope: !437)
!444 = !DILocation(line: 310, column: 41, scope: !437)
!445 = !DILocation(line: 311, column: 10, scope: !437)
!446 = !DILocation(line: 311, column: 26, scope: !437)
!447 = !DILocation(line: 311, column: 32, scope: !437)
!448 = !DILocation(line: 311, column: 52, scope: !437)
!449 = !DILocation(line: 312, column: 9, scope: !437)
!450 = !DILocation(line: 312, column: 16, scope: !437)
!451 = !DILocation(line: 309, column: 7, scope: !438)
!452 = !DILocation(line: 313, column: 8, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !3, line: 313, column: 8)
!454 = distinct !DILexicalBlock(scope: !437, file: !3, line: 312, column: 41)
!455 = !DILocation(line: 313, column: 15, scope: !453)
!456 = !DILocation(line: 313, column: 8, scope: !454)
!457 = !DILocation(line: 317, column: 5, scope: !458)
!458 = distinct !DILexicalBlock(scope: !453, file: !3, line: 313, column: 42)
!459 = !DILocation(line: 317, column: 21, scope: !458)
!460 = !DILocation(line: 317, column: 27, scope: !458)
!461 = !DILocation(line: 318, column: 4, scope: !458)
!462 = !DILocation(line: 321, column: 5, scope: !463)
!463 = distinct !DILexicalBlock(scope: !453, file: !3, line: 318, column: 11)
!464 = !DILocation(line: 321, column: 21, scope: !463)
!465 = !DILocation(line: 321, column: 27, scope: !463)
!466 = !DILocation(line: 323, column: 3, scope: !454)
!467 = !DILocation(line: 325, column: 20, scope: !438)
!468 = !DILocation(line: 325, column: 36, scope: !438)
!469 = !DILocation(line: 325, column: 18, scope: !438)
!470 = distinct !{!470, !434, !471, !194, !195}
!471 = !DILocation(line: 326, column: 2, scope: !423)
!472 = !DILocation(line: 329, column: 1, scope: !423)
!473 = !DILocation(line: 328, column: 2, scope: !423)
!474 = distinct !DISubprogram(name: "acpi_ut_get_interface", scope: !3, file: !3, line: 344, type: !475, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !477)
!475 = !DISubroutineType(types: !476)
!476 = !{!139, !277}
!477 = !{!478, !479}
!478 = !DILocalVariable(name: "interface_name", arg: 1, scope: !474, file: !3, line: 344, type: !277)
!479 = !DILocalVariable(name: "next_interface", scope: !474, file: !3, line: 346, type: !139)
!480 = !DILocation(line: 344, column: 63, scope: !474)
!481 = !DILocation(line: 346, column: 2, scope: !474)
!482 = !DILocation(line: 346, column: 30, scope: !474)
!483 = !DILocation(line: 348, column: 19, scope: !474)
!484 = !DILocation(line: 348, column: 17, scope: !474)
!485 = !DILocation(line: 349, column: 2, scope: !474)
!486 = !DILocation(line: 349, column: 9, scope: !474)
!487 = !DILocation(line: 350, column: 15, scope: !488)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 350, column: 7)
!489 = distinct !DILexicalBlock(scope: !474, file: !3, line: 349, column: 25)
!490 = !DILocation(line: 350, column: 31, scope: !488)
!491 = !DILocation(line: 350, column: 47, scope: !488)
!492 = !DILocation(line: 350, column: 8, scope: !488)
!493 = !DILocation(line: 350, column: 7, scope: !489)
!494 = !DILocation(line: 351, column: 12, scope: !495)
!495 = distinct !DILexicalBlock(scope: !488, file: !3, line: 350, column: 54)
!496 = !DILocation(line: 351, column: 4, scope: !495)
!497 = !DILocation(line: 354, column: 20, scope: !489)
!498 = !DILocation(line: 354, column: 36, scope: !489)
!499 = !DILocation(line: 354, column: 18, scope: !489)
!500 = distinct !{!500, !485, !501, !194, !195}
!501 = !DILocation(line: 355, column: 2, scope: !474)
!502 = !DILocation(line: 357, column: 2, scope: !474)
!503 = !DILocation(line: 358, column: 1, scope: !474)
!504 = distinct !DISubprogram(name: "acpi_ut_osi_implementation", scope: !3, file: !3, line: 385, type: !505, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1259)
!505 = !DISubroutineType(types: !506)
!506 = !{!29, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !509, line: 37, size: 9024, elements: !510)
!509 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!510 = !{!511, !512, !513, !514, !515, !516, !517, !518, !520, !521, !522, !523, !524, !525, !526, !527, !528, !530, !531, !532, !533, !534, !1206, !1207, !1208, !1209, !1210, !1214, !1216, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1257}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !508, file: !509, line: 38, baseType: !507, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !508, file: !509, line: 39, baseType: !141, size: 8, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !508, file: !509, line: 40, baseType: !141, size: 8, offset: 72)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !508, file: !509, line: 41, baseType: !203, size: 16, offset: 80)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !508, file: !509, line: 42, baseType: !141, size: 8, offset: 96)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !508, file: !509, line: 43, baseType: !141, size: 8, offset: 104)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !508, file: !509, line: 44, baseType: !141, size: 8, offset: 112)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !508, file: !509, line: 45, baseType: !519, size: 16, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !23, line: 445, baseType: !203)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !508, file: !509, line: 46, baseType: !141, size: 8, offset: 144)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !508, file: !509, line: 47, baseType: !141, size: 8, offset: 152)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !508, file: !509, line: 48, baseType: !141, size: 8, offset: 160)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !508, file: !509, line: 49, baseType: !141, size: 8, offset: 168)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !508, file: !509, line: 50, baseType: !141, size: 8, offset: 176)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !508, file: !509, line: 51, baseType: !141, size: 8, offset: 184)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !508, file: !509, line: 52, baseType: !141, size: 8, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !508, file: !509, line: 53, baseType: !141, size: 8, offset: 200)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !508, file: !509, line: 54, baseType: !529, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !508, file: !509, line: 55, baseType: !30, size: 32, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !508, file: !509, line: 56, baseType: !30, size: 32, offset: 352)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !508, file: !509, line: 57, baseType: !30, size: 32, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !508, file: !509, line: 58, baseType: !30, size: 32, offset: 416)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !508, file: !509, line: 60, baseType: !535, size: 640, offset: 448)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !134, line: 909, size: 640, elements: !536)
!536 = !{!537, !538, !539, !540, !541, !542, !1103, !1104, !1204, !1205}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !535, file: !134, line: 910, baseType: !529, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !535, file: !134, line: 911, baseType: !529, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !535, file: !134, line: 912, baseType: !529, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !535, file: !134, line: 913, baseType: !529, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !535, file: !134, line: 914, baseType: !529, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !535, file: !134, line: 915, baseType: !543, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !134, line: 891, size: 1600, elements: !545)
!545 = !{!546, !1049, !1065}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !544, file: !134, line: 892, baseType: !547, size: 448)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !134, line: 844, size: 448, elements: !548)
!548 = !{!549, !550, !551, !552, !553, !554, !555, !1039, !1048}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !547, file: !134, line: 845, baseType: !543, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !547, file: !134, line: 845, baseType: !141, size: 8, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !547, file: !134, line: 845, baseType: !141, size: 8, offset: 72)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !547, file: !134, line: 845, baseType: !203, size: 16, offset: 80)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !547, file: !134, line: 845, baseType: !529, size: 64, offset: 128)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !547, file: !134, line: 845, baseType: !543, size: 64, offset: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !547, file: !134, line: 845, baseType: !556, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !134, line: 133, size: 384, elements: !558)
!558 = !{!559, !1023, !1024, !1025, !1026, !1035, !1036, !1037, !1038}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !557, file: !134, line: 134, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !562, line: 369, size: 576, elements: !563)
!562 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!563 = !{!564, !572, !585, !595, !608, !622, !631, !655, !684, !700, !713, !792, !804, !818, !828, !846, !868, !887, !906, !925, !942, !969, !986, !999, !1013, !1022}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !561, file: !562, line: 370, baseType: !565, size: 128)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !562, line: 73, size: 128, elements: !566)
!566 = !{!567, !568, !569, !570, !571}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !565, file: !562, line: 74, baseType: !560, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !565, file: !562, line: 74, baseType: !141, size: 8, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !565, file: !562, line: 74, baseType: !141, size: 8, offset: 72)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !565, file: !562, line: 74, baseType: !203, size: 16, offset: 80)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !565, file: !562, line: 74, baseType: !141, size: 8, offset: 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !561, file: !562, line: 371, baseType: !573, size: 192)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !562, line: 76, size: 192, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !580, !584}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !573, file: !562, line: 77, baseType: !560, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !573, file: !562, line: 77, baseType: !141, size: 8, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !573, file: !562, line: 77, baseType: !141, size: 8, offset: 72)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !573, file: !562, line: 77, baseType: !203, size: 16, offset: 80)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !573, file: !562, line: 77, baseType: !141, size: 8, offset: 96)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !573, file: !562, line: 77, baseType: !581, size: 24, offset: 104)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 24, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 3)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !573, file: !562, line: 78, baseType: !24, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !561, file: !562, line: 372, baseType: !586, size: 256)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !562, line: 93, size: 256, elements: !587)
!587 = !{!588, !589, !590, !591, !592, !593, !594}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !586, file: !562, line: 94, baseType: !560, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !586, file: !562, line: 94, baseType: !141, size: 8, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !586, file: !562, line: 94, baseType: !141, size: 8, offset: 72)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !586, file: !562, line: 94, baseType: !203, size: 16, offset: 80)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !562, line: 94, baseType: !141, size: 8, offset: 96)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !586, file: !562, line: 94, baseType: !137, size: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !586, file: !562, line: 94, baseType: !30, size: 32, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !561, file: !562, line: 373, baseType: !596, size: 384)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !562, line: 97, size: 384, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603, !604, !605, !606, !607}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !596, file: !562, line: 98, baseType: !560, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !596, file: !562, line: 98, baseType: !141, size: 8, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !596, file: !562, line: 98, baseType: !141, size: 8, offset: 72)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !596, file: !562, line: 98, baseType: !203, size: 16, offset: 80)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !596, file: !562, line: 98, baseType: !141, size: 8, offset: 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !596, file: !562, line: 98, baseType: !529, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !596, file: !562, line: 98, baseType: !30, size: 32, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !596, file: !562, line: 99, baseType: !30, size: 32, offset: 224)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !596, file: !562, line: 100, baseType: !529, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !596, file: !562, line: 101, baseType: !556, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !561, file: !562, line: 374, baseType: !609, size: 384)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !562, line: 104, size: 384, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !619, !620, !621}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !609, file: !562, line: 105, baseType: !560, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !609, file: !562, line: 105, baseType: !141, size: 8, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !609, file: !562, line: 105, baseType: !141, size: 8, offset: 72)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !609, file: !562, line: 105, baseType: !203, size: 16, offset: 80)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !609, file: !562, line: 105, baseType: !141, size: 8, offset: 96)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !609, file: !562, line: 105, baseType: !556, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !609, file: !562, line: 106, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !609, file: !562, line: 107, baseType: !529, size: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !609, file: !562, line: 108, baseType: !30, size: 32, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !609, file: !562, line: 109, baseType: !30, size: 32, offset: 352)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !561, file: !562, line: 375, baseType: !623, size: 192)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !562, line: 118, size: 192, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !623, file: !562, line: 119, baseType: !560, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !623, file: !562, line: 119, baseType: !141, size: 8, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !623, file: !562, line: 119, baseType: !141, size: 8, offset: 72)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !623, file: !562, line: 119, baseType: !203, size: 16, offset: 80)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !623, file: !562, line: 119, baseType: !141, size: 8, offset: 96)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !623, file: !562, line: 119, baseType: !32, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !561, file: !562, line: 376, baseType: !632, size: 448)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !562, line: 144, size: 448, elements: !633)
!633 = !{!634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !652, !653, !654}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !632, file: !562, line: 145, baseType: !560, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !632, file: !562, line: 145, baseType: !141, size: 8, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !632, file: !562, line: 145, baseType: !141, size: 8, offset: 72)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !632, file: !562, line: 145, baseType: !203, size: 16, offset: 80)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !562, line: 145, baseType: !141, size: 8, offset: 96)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !632, file: !562, line: 145, baseType: !141, size: 8, offset: 104)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !632, file: !562, line: 146, baseType: !141, size: 8, offset: 112)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !632, file: !562, line: 147, baseType: !141, size: 8, offset: 120)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !632, file: !562, line: 148, baseType: !560, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !632, file: !562, line: 149, baseType: !560, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !632, file: !562, line: 150, baseType: !529, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !632, file: !562, line: 154, baseType: !646, size: 64, offset: 320)
!646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !562, line: 151, size: 64, elements: !647)
!647 = !{!648, !651}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !646, file: !562, line: 152, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !134, line: 248, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !646, file: !562, line: 153, baseType: !560, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !632, file: !562, line: 156, baseType: !30, size: 32, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !632, file: !562, line: 157, baseType: !519, size: 16, offset: 416)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !632, file: !562, line: 158, baseType: !141, size: 8, offset: 432)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !561, file: !562, line: 377, baseType: !656, size: 576)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !562, line: 122, size: 576, elements: !657)
!657 = !{!658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !680, !681, !682, !683}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !656, file: !562, line: 123, baseType: !560, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !656, file: !562, line: 123, baseType: !141, size: 8, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !656, file: !562, line: 123, baseType: !141, size: 8, offset: 72)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !656, file: !562, line: 123, baseType: !203, size: 16, offset: 80)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !562, line: 123, baseType: !141, size: 8, offset: 96)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !656, file: !562, line: 123, baseType: !141, size: 8, offset: 104)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !656, file: !562, line: 124, baseType: !203, size: 16, offset: 112)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !656, file: !562, line: 125, baseType: !32, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !656, file: !562, line: 126, baseType: !24, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !656, file: !562, line: 127, baseType: !668, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !134, line: 634, size: 320, elements: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !677, !678, !679}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !669, file: !134, line: 635, baseType: !32, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !669, file: !134, line: 635, baseType: !141, size: 8, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !669, file: !134, line: 635, baseType: !141, size: 8, offset: 72)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !669, file: !134, line: 635, baseType: !203, size: 16, offset: 80)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !669, file: !134, line: 635, baseType: !203, size: 16, offset: 96)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !669, file: !134, line: 636, baseType: !141, size: 8, offset: 112)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !669, file: !134, line: 637, baseType: !507, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !669, file: !134, line: 638, baseType: !560, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !669, file: !134, line: 639, baseType: !24, size: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !656, file: !562, line: 128, baseType: !560, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !656, file: !562, line: 129, baseType: !560, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !656, file: !562, line: 130, baseType: !556, size: 64, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !656, file: !562, line: 131, baseType: !141, size: 8, offset: 512)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !561, file: !562, line: 378, baseType: !685, size: 512)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !562, line: 134, size: 512, elements: !686)
!686 = !{!687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !698, !699}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !685, file: !562, line: 135, baseType: !560, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !685, file: !562, line: 135, baseType: !141, size: 8, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !685, file: !562, line: 135, baseType: !141, size: 8, offset: 72)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !685, file: !562, line: 135, baseType: !203, size: 16, offset: 80)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !685, file: !562, line: 135, baseType: !141, size: 8, offset: 96)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !685, file: !562, line: 135, baseType: !141, size: 8, offset: 104)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !685, file: !562, line: 136, baseType: !556, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !685, file: !562, line: 137, baseType: !560, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !685, file: !562, line: 138, baseType: !560, size: 64, offset: 256)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !685, file: !562, line: 139, baseType: !697, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !23, line: 129, baseType: !24)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !685, file: !562, line: 140, baseType: !30, size: 32, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !685, file: !562, line: 141, baseType: !32, size: 64, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !561, file: !562, line: 379, baseType: !701, size: 320)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !562, line: 185, size: 320, elements: !702)
!702 = !{!703, !704, !705, !706, !707, !708, !712}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !701, file: !562, line: 186, baseType: !560, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !701, file: !562, line: 186, baseType: !141, size: 8, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !701, file: !562, line: 186, baseType: !141, size: 8, offset: 72)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !701, file: !562, line: 186, baseType: !203, size: 16, offset: 80)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !701, file: !562, line: 186, baseType: !141, size: 8, offset: 96)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !701, file: !562, line: 186, baseType: !709, size: 128, offset: 128)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 128, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 2)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !701, file: !562, line: 186, baseType: !560, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !561, file: !562, line: 380, baseType: !714, size: 384)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !562, line: 188, size: 384, elements: !715)
!715 = !{!716, !717, !718, !719, !720, !721, !722, !723}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !714, file: !562, line: 189, baseType: !560, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !714, file: !562, line: 189, baseType: !141, size: 8, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !714, file: !562, line: 189, baseType: !141, size: 8, offset: 72)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !714, file: !562, line: 189, baseType: !203, size: 16, offset: 80)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !714, file: !562, line: 189, baseType: !141, size: 8, offset: 96)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !714, file: !562, line: 190, baseType: !709, size: 128, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !714, file: !562, line: 190, baseType: !560, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !714, file: !562, line: 190, baseType: !724, size: 64, offset: 320)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !134, line: 480, size: 576, elements: !726)
!726 = !{!727, !728, !729, !730, !738, !753, !786, !787, !788, !789, !790, !791}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !725, file: !134, line: 481, baseType: !556, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !725, file: !134, line: 482, baseType: !724, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !725, file: !134, line: 483, baseType: !724, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !725, file: !134, line: 484, baseType: !731, size: 64, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !134, line: 497, size: 256, elements: !733)
!733 = !{!734, !735, !736, !737}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !732, file: !134, line: 498, baseType: !731, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !732, file: !134, line: 499, baseType: !731, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !732, file: !134, line: 500, baseType: !724, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !732, file: !134, line: 501, baseType: !30, size: 32, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !725, file: !134, line: 485, baseType: !739, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !134, line: 466, size: 320, elements: !741)
!741 = !{!742, !747, !748, !749, !750, !751, !752}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !740, file: !134, line: 467, baseType: !743, size: 128)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !134, line: 459, size: 128, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !743, file: !134, line: 460, baseType: !141, size: 8)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !743, file: !134, line: 461, baseType: !24, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !740, file: !134, line: 468, baseType: !743, size: 128, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !740, file: !134, line: 469, baseType: !203, size: 16, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !740, file: !134, line: 470, baseType: !141, size: 8, offset: 272)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !740, file: !134, line: 471, baseType: !141, size: 8, offset: 280)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !740, file: !134, line: 472, baseType: !141, size: 8, offset: 288)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !740, file: !134, line: 473, baseType: !141, size: 8, offset: 296)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !725, file: !134, line: 486, baseType: !754, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !134, line: 448, size: 192, elements: !756)
!756 = !{!757, !781, !782, !783, !784, !785}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !755, file: !134, line: 449, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !134, line: 438, size: 64, elements: !759)
!759 = !{!760, !761, !775}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !758, file: !134, line: 439, baseType: !556, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !758, file: !134, line: 440, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !134, line: 419, size: 256, elements: !764)
!764 = !{!765, !771, !772, !773, !774}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !763, file: !134, line: 420, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !23, line: 1058, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!30, !770, !30, !32}
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !23, line: 424, baseType: !32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !763, file: !134, line: 421, baseType: !32, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !763, file: !134, line: 422, baseType: !556, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !763, file: !134, line: 423, baseType: !141, size: 8, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !763, file: !134, line: 424, baseType: !141, size: 8, offset: 200)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !758, file: !134, line: 441, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !134, line: 429, size: 128, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !777, file: !134, line: 430, baseType: !556, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !777, file: !134, line: 431, baseType: !776, size: 64, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !755, file: !134, line: 450, baseType: !739, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !134, line: 451, baseType: !141, size: 8, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !755, file: !134, line: 452, baseType: !141, size: 8, offset: 136)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !755, file: !134, line: 453, baseType: !141, size: 8, offset: 144)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !755, file: !134, line: 454, baseType: !141, size: 8, offset: 152)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !725, file: !134, line: 487, baseType: !24, size: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !725, file: !134, line: 488, baseType: !30, size: 32, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !725, file: !134, line: 489, baseType: !203, size: 16, offset: 480)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !725, file: !134, line: 490, baseType: !203, size: 16, offset: 496)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !725, file: !134, line: 491, baseType: !141, size: 8, offset: 512)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !725, file: !134, line: 492, baseType: !141, size: 8, offset: 520)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !561, file: !562, line: 381, baseType: !793, size: 384)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !562, line: 193, size: 384, elements: !794)
!794 = !{!795, !796, !797, !798, !799, !800, !801, !802, !803}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !793, file: !562, line: 194, baseType: !560, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !793, file: !562, line: 194, baseType: !141, size: 8, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !793, file: !562, line: 194, baseType: !141, size: 8, offset: 72)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !793, file: !562, line: 194, baseType: !203, size: 16, offset: 80)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !562, line: 194, baseType: !141, size: 8, offset: 96)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !793, file: !562, line: 194, baseType: !709, size: 128, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !793, file: !562, line: 194, baseType: !560, size: 64, offset: 256)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !793, file: !562, line: 194, baseType: !30, size: 32, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !793, file: !562, line: 195, baseType: !30, size: 32, offset: 352)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !561, file: !562, line: 382, baseType: !805, size: 384)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !562, line: 198, size: 384, elements: !806)
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814, !815, !816}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !805, file: !562, line: 199, baseType: !560, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !805, file: !562, line: 199, baseType: !141, size: 8, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !805, file: !562, line: 199, baseType: !141, size: 8, offset: 72)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !805, file: !562, line: 199, baseType: !203, size: 16, offset: 80)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !805, file: !562, line: 199, baseType: !141, size: 8, offset: 96)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !805, file: !562, line: 201, baseType: !141, size: 8, offset: 104)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !805, file: !562, line: 202, baseType: !141, size: 8, offset: 112)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !805, file: !562, line: 203, baseType: !709, size: 128, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !805, file: !562, line: 203, baseType: !560, size: 64, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !805, file: !562, line: 203, baseType: !817, size: 64, offset: 320)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !23, line: 128, baseType: !24)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !561, file: !562, line: 383, baseType: !819, size: 320)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !562, line: 206, size: 320, elements: !820)
!820 = !{!821, !822, !823, !824, !825, !826, !827}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !819, file: !562, line: 207, baseType: !560, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !819, file: !562, line: 207, baseType: !141, size: 8, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !819, file: !562, line: 207, baseType: !141, size: 8, offset: 72)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !819, file: !562, line: 207, baseType: !203, size: 16, offset: 80)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !819, file: !562, line: 207, baseType: !141, size: 8, offset: 96)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !819, file: !562, line: 207, baseType: !709, size: 128, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !819, file: !562, line: 207, baseType: !560, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !561, file: !562, line: 384, baseType: !829, size: 384)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !562, line: 234, size: 384, elements: !830)
!830 = !{!831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !829, file: !562, line: 235, baseType: !560, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !829, file: !562, line: 235, baseType: !141, size: 8, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !829, file: !562, line: 235, baseType: !141, size: 8, offset: 72)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !829, file: !562, line: 235, baseType: !203, size: 16, offset: 80)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !829, file: !562, line: 235, baseType: !141, size: 8, offset: 96)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !829, file: !562, line: 235, baseType: !141, size: 8, offset: 104)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !829, file: !562, line: 235, baseType: !141, size: 8, offset: 112)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !829, file: !562, line: 235, baseType: !141, size: 8, offset: 120)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !829, file: !562, line: 235, baseType: !556, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !829, file: !562, line: 235, baseType: !30, size: 32, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !829, file: !562, line: 235, baseType: !30, size: 32, offset: 224)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !829, file: !562, line: 235, baseType: !30, size: 32, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !829, file: !562, line: 235, baseType: !141, size: 8, offset: 288)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !829, file: !562, line: 235, baseType: !141, size: 8, offset: 296)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !829, file: !562, line: 235, baseType: !560, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !561, file: !562, line: 385, baseType: !847, size: 576)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !562, line: 238, size: 576, elements: !848)
!848 = !{!849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !847, file: !562, line: 239, baseType: !560, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !847, file: !562, line: 239, baseType: !141, size: 8, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !847, file: !562, line: 239, baseType: !141, size: 8, offset: 72)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !847, file: !562, line: 239, baseType: !203, size: 16, offset: 80)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !847, file: !562, line: 239, baseType: !141, size: 8, offset: 96)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !847, file: !562, line: 239, baseType: !141, size: 8, offset: 104)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !847, file: !562, line: 239, baseType: !141, size: 8, offset: 112)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !847, file: !562, line: 239, baseType: !141, size: 8, offset: 120)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !847, file: !562, line: 239, baseType: !556, size: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !847, file: !562, line: 239, baseType: !30, size: 32, offset: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !847, file: !562, line: 239, baseType: !30, size: 32, offset: 224)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !847, file: !562, line: 239, baseType: !30, size: 32, offset: 256)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !847, file: !562, line: 239, baseType: !141, size: 8, offset: 288)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !847, file: !562, line: 239, baseType: !141, size: 8, offset: 296)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !847, file: !562, line: 239, baseType: !203, size: 16, offset: 304)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !847, file: !562, line: 240, baseType: !560, size: 64, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !847, file: !562, line: 241, baseType: !529, size: 64, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !847, file: !562, line: 242, baseType: !203, size: 16, offset: 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !847, file: !562, line: 243, baseType: !529, size: 64, offset: 512)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !561, file: !562, line: 386, baseType: !869, size: 384)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !562, line: 263, size: 384, elements: !870)
!870 = !{!871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !869, file: !562, line: 264, baseType: !560, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !869, file: !562, line: 264, baseType: !141, size: 8, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !869, file: !562, line: 264, baseType: !141, size: 8, offset: 72)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !869, file: !562, line: 264, baseType: !203, size: 16, offset: 80)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !869, file: !562, line: 264, baseType: !141, size: 8, offset: 96)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !869, file: !562, line: 264, baseType: !141, size: 8, offset: 104)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !869, file: !562, line: 264, baseType: !141, size: 8, offset: 112)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !869, file: !562, line: 264, baseType: !141, size: 8, offset: 120)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !869, file: !562, line: 264, baseType: !556, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !869, file: !562, line: 264, baseType: !30, size: 32, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !869, file: !562, line: 264, baseType: !30, size: 32, offset: 224)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !869, file: !562, line: 264, baseType: !30, size: 32, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !869, file: !562, line: 264, baseType: !141, size: 8, offset: 288)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !869, file: !562, line: 264, baseType: !141, size: 8, offset: 296)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !869, file: !562, line: 264, baseType: !141, size: 8, offset: 304)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !869, file: !562, line: 265, baseType: !560, size: 64, offset: 320)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !561, file: !562, line: 387, baseType: !888, size: 448)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !562, line: 246, size: 448, elements: !889)
!889 = !{!890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !888, file: !562, line: 247, baseType: !560, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !888, file: !562, line: 247, baseType: !141, size: 8, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !888, file: !562, line: 247, baseType: !141, size: 8, offset: 72)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !888, file: !562, line: 247, baseType: !203, size: 16, offset: 80)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !888, file: !562, line: 247, baseType: !141, size: 8, offset: 96)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !888, file: !562, line: 247, baseType: !141, size: 8, offset: 104)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !888, file: !562, line: 247, baseType: !141, size: 8, offset: 112)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !888, file: !562, line: 247, baseType: !141, size: 8, offset: 120)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !888, file: !562, line: 247, baseType: !556, size: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !888, file: !562, line: 247, baseType: !30, size: 32, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !888, file: !562, line: 247, baseType: !30, size: 32, offset: 224)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !888, file: !562, line: 247, baseType: !30, size: 32, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !888, file: !562, line: 247, baseType: !141, size: 8, offset: 288)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !888, file: !562, line: 247, baseType: !141, size: 8, offset: 296)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !888, file: !562, line: 247, baseType: !560, size: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !888, file: !562, line: 248, baseType: !560, size: 64, offset: 384)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !561, file: !562, line: 388, baseType: !907, size: 448)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !562, line: 251, size: 448, elements: !908)
!908 = !{!909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !907, file: !562, line: 252, baseType: !560, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !907, file: !562, line: 252, baseType: !141, size: 8, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !907, file: !562, line: 252, baseType: !141, size: 8, offset: 72)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !907, file: !562, line: 252, baseType: !203, size: 16, offset: 80)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !907, file: !562, line: 252, baseType: !141, size: 8, offset: 96)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !907, file: !562, line: 252, baseType: !141, size: 8, offset: 104)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !907, file: !562, line: 252, baseType: !141, size: 8, offset: 112)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !907, file: !562, line: 252, baseType: !141, size: 8, offset: 120)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !907, file: !562, line: 252, baseType: !556, size: 64, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !907, file: !562, line: 252, baseType: !30, size: 32, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !907, file: !562, line: 252, baseType: !30, size: 32, offset: 224)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !907, file: !562, line: 252, baseType: !30, size: 32, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !907, file: !562, line: 252, baseType: !141, size: 8, offset: 288)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !907, file: !562, line: 252, baseType: !141, size: 8, offset: 296)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !907, file: !562, line: 257, baseType: !560, size: 64, offset: 320)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !907, file: !562, line: 258, baseType: !560, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !561, file: !562, line: 389, baseType: !926, size: 512)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !562, line: 274, size: 512, elements: !927)
!927 = !{!928, !929, !930, !931, !932, !933, !934, !935, !940, !941}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !926, file: !562, line: 275, baseType: !560, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !926, file: !562, line: 275, baseType: !141, size: 8, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !926, file: !562, line: 275, baseType: !141, size: 8, offset: 72)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !926, file: !562, line: 275, baseType: !203, size: 16, offset: 80)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !926, file: !562, line: 275, baseType: !141, size: 8, offset: 96)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !926, file: !562, line: 275, baseType: !556, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !926, file: !562, line: 276, baseType: !30, size: 32, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !926, file: !562, line: 277, baseType: !936, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !23, line: 1061, baseType: !937)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{null, !770, !30, !32}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !926, file: !562, line: 278, baseType: !32, size: 64, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !926, file: !562, line: 279, baseType: !709, size: 128, offset: 384)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !561, file: !562, line: 390, baseType: !943, size: 576)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !562, line: 282, size: 576, elements: !944)
!944 = !{!945, !946, !947, !948, !949, !950, !951, !952, !958, !959, !960, !961, !967, !968}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !943, file: !562, line: 283, baseType: !560, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !943, file: !562, line: 283, baseType: !141, size: 8, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !943, file: !562, line: 283, baseType: !141, size: 8, offset: 72)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !943, file: !562, line: 283, baseType: !203, size: 16, offset: 80)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !943, file: !562, line: 283, baseType: !141, size: 8, offset: 96)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !943, file: !562, line: 283, baseType: !141, size: 8, offset: 104)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !943, file: !562, line: 284, baseType: !141, size: 8, offset: 112)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !943, file: !562, line: 285, baseType: !953, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !23, line: 1093, baseType: !954)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!29, !30, !697, !30, !957, !32, !32}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !943, file: !562, line: 286, baseType: !556, size: 64, offset: 192)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !943, file: !562, line: 287, baseType: !32, size: 64, offset: 256)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !943, file: !562, line: 288, baseType: !32, size: 64, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !943, file: !562, line: 289, baseType: !962, size: 64, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !23, line: 1126, baseType: !963)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!29, !770, !30, !32, !966}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !943, file: !562, line: 290, baseType: !560, size: 64, offset: 448)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !943, file: !562, line: 291, baseType: !560, size: 64, offset: 512)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !561, file: !562, line: 391, baseType: !970, size: 512)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !562, line: 309, size: 512, elements: !971)
!971 = !{!972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !970, file: !562, line: 310, baseType: !560, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !970, file: !562, line: 310, baseType: !141, size: 8, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !970, file: !562, line: 310, baseType: !141, size: 8, offset: 72)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !970, file: !562, line: 310, baseType: !203, size: 16, offset: 80)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !970, file: !562, line: 310, baseType: !141, size: 8, offset: 96)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !970, file: !562, line: 310, baseType: !141, size: 8, offset: 104)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !970, file: !562, line: 311, baseType: !141, size: 8, offset: 112)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !970, file: !562, line: 312, baseType: !141, size: 8, offset: 120)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !970, file: !562, line: 313, baseType: !32, size: 64, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !970, file: !562, line: 314, baseType: !556, size: 64, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !970, file: !562, line: 315, baseType: !618, size: 64, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !970, file: !562, line: 316, baseType: !529, size: 64, offset: 320)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !970, file: !562, line: 317, baseType: !529, size: 64, offset: 384)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !970, file: !562, line: 318, baseType: !30, size: 32, offset: 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !561, file: !562, line: 392, baseType: !987, size: 448)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !562, line: 342, size: 448, elements: !988)
!988 = !{!989, !990, !991, !992, !993, !994, !995, !996, !997, !998}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !987, file: !562, line: 343, baseType: !560, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !987, file: !562, line: 343, baseType: !141, size: 8, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !987, file: !562, line: 343, baseType: !141, size: 8, offset: 72)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !987, file: !562, line: 343, baseType: !203, size: 16, offset: 80)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !987, file: !562, line: 343, baseType: !141, size: 8, offset: 96)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !987, file: !562, line: 343, baseType: !556, size: 64, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !987, file: !562, line: 344, baseType: !556, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !987, file: !562, line: 345, baseType: !32, size: 64, offset: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !987, file: !562, line: 346, baseType: !529, size: 64, offset: 320)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !987, file: !562, line: 347, baseType: !30, size: 32, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !561, file: !562, line: 393, baseType: !1000, size: 256)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !562, line: 352, size: 256, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1012}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1000, file: !562, line: 353, baseType: !560, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1000, file: !562, line: 353, baseType: !141, size: 8, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1000, file: !562, line: 353, baseType: !141, size: 8, offset: 72)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1000, file: !562, line: 353, baseType: !203, size: 16, offset: 80)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1000, file: !562, line: 353, baseType: !141, size: 8, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1000, file: !562, line: 353, baseType: !1008, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !23, line: 1064, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !770, !32}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1000, file: !562, line: 354, baseType: !32, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !561, file: !562, line: 394, baseType: !1014, size: 192)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !562, line: 359, size: 192, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1014, file: !562, line: 360, baseType: !560, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1014, file: !562, line: 360, baseType: !141, size: 8, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1014, file: !562, line: 360, baseType: !141, size: 8, offset: 72)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1014, file: !562, line: 360, baseType: !203, size: 16, offset: 80)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1014, file: !562, line: 360, baseType: !141, size: 8, offset: 96)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1014, file: !562, line: 360, baseType: !560, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !561, file: !562, line: 401, baseType: !557, size: 384)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !557, file: !134, line: 135, baseType: !141, size: 8, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !557, file: !134, line: 136, baseType: !141, size: 8, offset: 72)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !557, file: !134, line: 137, baseType: !203, size: 16, offset: 80)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !557, file: !134, line: 138, baseType: !1027, size: 32, offset: 96)
!1027 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !1028, line: 328, size: 32, elements: !1029)
!1028 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1027, file: !1028, line: 329, baseType: !30, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !1027, file: !1028, line: 330, baseType: !1032, size: 32)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 32, elements: !1033)
!1033 = !{!1034}
!1034 = !DISubrange(count: 4)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !557, file: !134, line: 139, baseType: !556, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !557, file: !134, line: 140, baseType: !556, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !557, file: !134, line: 141, baseType: !556, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !557, file: !134, line: 142, baseType: !519, size: 16, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !547, file: !134, line: 845, baseType: !1040, size: 64, offset: 320)
!1040 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !134, line: 732, size: 64, elements: !1041)
!1041 = !{!1042, !1043, !1044, !1045, !1046, !1047}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1040, file: !134, line: 733, baseType: !24, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1040, file: !134, line: 734, baseType: !30, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1040, file: !134, line: 735, baseType: !137, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1040, file: !134, line: 736, baseType: !529, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1040, file: !134, line: 737, baseType: !137, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1040, file: !134, line: 738, baseType: !543, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !547, file: !134, line: 845, baseType: !141, size: 8, offset: 384)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !544, file: !134, line: 893, baseType: !1050, size: 640)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !134, line: 851, size: 640, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1050, file: !134, line: 852, baseType: !543, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1050, file: !134, line: 852, baseType: !141, size: 8, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1050, file: !134, line: 852, baseType: !141, size: 8, offset: 72)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !1050, file: !134, line: 852, baseType: !203, size: 16, offset: 80)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1050, file: !134, line: 852, baseType: !529, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1050, file: !134, line: 852, baseType: !543, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1050, file: !134, line: 852, baseType: !556, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1050, file: !134, line: 852, baseType: !1040, size: 64, offset: 320)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !1050, file: !134, line: 852, baseType: !141, size: 8, offset: 384)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1050, file: !134, line: 852, baseType: !137, size: 64, offset: 448)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1050, file: !134, line: 853, baseType: !529, size: 64, offset: 512)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1050, file: !134, line: 854, baseType: !30, size: 32, offset: 576)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1050, file: !134, line: 855, baseType: !30, size: 32, offset: 608)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !544, file: !134, line: 894, baseType: !1066, size: 1600)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !134, line: 862, size: 1600, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1066, file: !134, line: 863, baseType: !543, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1066, file: !134, line: 863, baseType: !141, size: 8, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1066, file: !134, line: 863, baseType: !141, size: 8, offset: 72)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !1066, file: !134, line: 863, baseType: !203, size: 16, offset: 80)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1066, file: !134, line: 863, baseType: !529, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1066, file: !134, line: 863, baseType: !543, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1066, file: !134, line: 863, baseType: !556, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1066, file: !134, line: 863, baseType: !1040, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !1066, file: !134, line: 863, baseType: !141, size: 8, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1066, file: !134, line: 863, baseType: !543, size: 64, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !1066, file: !134, line: 864, baseType: !543, size: 64, offset: 512)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1066, file: !134, line: 865, baseType: !137, size: 64, offset: 576)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !1066, file: !134, line: 866, baseType: !141, size: 8, offset: 640)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !1066, file: !134, line: 867, baseType: !137, size: 64, offset: 704)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !1066, file: !134, line: 868, baseType: !137, size: 64, offset: 768)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !1066, file: !134, line: 869, baseType: !137, size: 64, offset: 832)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !1066, file: !134, line: 870, baseType: !1032, size: 32, offset: 896)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !1066, file: !134, line: 871, baseType: !30, size: 32, offset: 928)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !1066, file: !134, line: 872, baseType: !30, size: 32, offset: 960)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !1066, file: !134, line: 873, baseType: !30, size: 32, offset: 992)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !1066, file: !134, line: 874, baseType: !30, size: 32, offset: 1024)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !1066, file: !134, line: 875, baseType: !30, size: 32, offset: 1056)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !1066, file: !134, line: 876, baseType: !30, size: 32, offset: 1088)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !1066, file: !134, line: 877, baseType: !30, size: 32, offset: 1120)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !1066, file: !134, line: 878, baseType: !30, size: 32, offset: 1152)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1066, file: !134, line: 879, baseType: !30, size: 32, offset: 1184)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !1066, file: !134, line: 880, baseType: !30, size: 32, offset: 1216)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !1066, file: !134, line: 881, baseType: !30, size: 32, offset: 1248)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !1066, file: !134, line: 882, baseType: !30, size: 32, offset: 1280)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !1066, file: !134, line: 883, baseType: !30, size: 32, offset: 1312)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !1066, file: !134, line: 884, baseType: !203, size: 16, offset: 1344)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !1066, file: !134, line: 885, baseType: !141, size: 8, offset: 1360)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !1066, file: !134, line: 886, baseType: !141, size: 8, offset: 1368)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !1066, file: !134, line: 887, baseType: !141, size: 8, offset: 1376)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !1066, file: !134, line: 888, baseType: !113, size: 160, offset: 1384)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !535, file: !134, line: 916, baseType: !556, size: 64, offset: 384)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !535, file: !134, line: 917, baseType: !1105, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !134, line: 679, size: 640, elements: !1107)
!1107 = !{!1108, !1116, !1129, !1138, !1147, !1160, !1174, !1175, !1187}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1106, file: !134, line: 680, baseType: !1109, size: 128)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !134, line: 575, size: 128, elements: !1110)
!1110 = !{!1111, !1112, !1113, !1114, !1115}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1109, file: !134, line: 576, baseType: !32, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1109, file: !134, line: 576, baseType: !141, size: 8, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1109, file: !134, line: 576, baseType: !141, size: 8, offset: 72)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1109, file: !134, line: 576, baseType: !203, size: 16, offset: 80)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1109, file: !134, line: 576, baseType: !203, size: 16, offset: 96)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1106, file: !134, line: 681, baseType: !1117, size: 384)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !134, line: 604, size: 384, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1117, file: !134, line: 605, baseType: !32, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1117, file: !134, line: 605, baseType: !141, size: 8, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1117, file: !134, line: 605, baseType: !141, size: 8, offset: 72)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1117, file: !134, line: 605, baseType: !203, size: 16, offset: 80)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1117, file: !134, line: 605, baseType: !203, size: 16, offset: 96)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !1117, file: !134, line: 606, baseType: !203, size: 16, offset: 112)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !1117, file: !134, line: 607, baseType: !543, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !1117, file: !134, line: 608, baseType: !529, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !1117, file: !134, line: 609, baseType: !529, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !1117, file: !134, line: 610, baseType: !24, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !1106, file: !134, line: 682, baseType: !1130, size: 192)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !134, line: 582, size: 192, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135, !1136, !1137}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1130, file: !134, line: 583, baseType: !32, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1130, file: !134, line: 583, baseType: !141, size: 8, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1130, file: !134, line: 583, baseType: !141, size: 8, offset: 72)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1130, file: !134, line: 583, baseType: !203, size: 16, offset: 80)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1130, file: !134, line: 583, baseType: !203, size: 16, offset: 96)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1130, file: !134, line: 584, baseType: !560, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !1106, file: !134, line: 683, baseType: !1139, size: 192)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !134, line: 616, size: 192, elements: !1140)
!1140 = !{!1141, !1142, !1143, !1144, !1145, !1146}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1139, file: !134, line: 617, baseType: !32, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1139, file: !134, line: 617, baseType: !141, size: 8, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1139, file: !134, line: 617, baseType: !141, size: 8, offset: 72)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1139, file: !134, line: 617, baseType: !203, size: 16, offset: 80)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1139, file: !134, line: 617, baseType: !203, size: 16, offset: 96)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1139, file: !134, line: 618, baseType: !556, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !1106, file: !134, line: 684, baseType: !1148, size: 448)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !134, line: 621, size: 448, elements: !1149)
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1148, file: !134, line: 622, baseType: !32, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1148, file: !134, line: 622, baseType: !141, size: 8, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1148, file: !134, line: 622, baseType: !141, size: 8, offset: 72)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1148, file: !134, line: 622, baseType: !203, size: 16, offset: 80)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1148, file: !134, line: 622, baseType: !203, size: 16, offset: 96)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !1148, file: !134, line: 623, baseType: !30, size: 32, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1148, file: !134, line: 624, baseType: !543, size: 64, offset: 192)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1148, file: !134, line: 625, baseType: !529, size: 64, offset: 256)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !1148, file: !134, line: 626, baseType: !529, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !1148, file: !134, line: 627, baseType: !30, size: 32, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !1106, file: !134, line: 685, baseType: !1161, size: 512)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !134, line: 590, size: 512, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1161, file: !134, line: 591, baseType: !32, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1161, file: !134, line: 591, baseType: !141, size: 8, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1161, file: !134, line: 591, baseType: !141, size: 8, offset: 72)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1161, file: !134, line: 591, baseType: !203, size: 16, offset: 80)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1161, file: !134, line: 591, baseType: !203, size: 16, offset: 96)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1161, file: !134, line: 592, baseType: !30, size: 32, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !1161, file: !134, line: 593, baseType: !560, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !1161, file: !134, line: 594, baseType: !560, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !1161, file: !134, line: 595, baseType: !507, size: 64, offset: 320)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !1161, file: !134, line: 596, baseType: !32, size: 64, offset: 384)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !1161, file: !134, line: 597, baseType: !30, size: 32, offset: 448)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1106, file: !134, line: 686, baseType: !669, size: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !1106, file: !134, line: 687, baseType: !1176, size: 640)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !134, line: 646, size: 640, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1181, !1182, !1183}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1176, file: !134, line: 647, baseType: !32, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1176, file: !134, line: 647, baseType: !141, size: 8, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1176, file: !134, line: 647, baseType: !141, size: 8, offset: 72)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1176, file: !134, line: 647, baseType: !203, size: 16, offset: 80)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1176, file: !134, line: 647, baseType: !203, size: 16, offset: 96)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !1176, file: !134, line: 648, baseType: !1184, size: 512, offset: 128)
!1184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 512, elements: !1185)
!1185 = !{!1186}
!1186 = !DISubrange(count: 8)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1106, file: !134, line: 688, baseType: !1188, size: 320)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !134, line: 669, size: 320, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1188, file: !134, line: 670, baseType: !32, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1188, file: !134, line: 670, baseType: !141, size: 8, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1188, file: !134, line: 670, baseType: !141, size: 8, offset: 72)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1188, file: !134, line: 670, baseType: !203, size: 16, offset: 80)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1188, file: !134, line: 670, baseType: !203, size: 16, offset: 96)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !1188, file: !134, line: 671, baseType: !141, size: 8, offset: 112)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1188, file: !134, line: 672, baseType: !556, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !1188, file: !134, line: 673, baseType: !560, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1188, file: !134, line: 674, baseType: !1199, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !134, line: 660, size: 128, elements: !1201)
!1201 = !{!1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1200, file: !134, line: 661, baseType: !936, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1200, file: !134, line: 662, baseType: !32, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !535, file: !134, line: 918, baseType: !543, size: 64, offset: 512)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !535, file: !134, line: 919, baseType: !30, size: 32, offset: 576)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !508, file: !509, line: 61, baseType: !30, size: 32, offset: 1088)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !508, file: !509, line: 62, baseType: !30, size: 32, offset: 1120)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !508, file: !509, line: 63, baseType: !203, size: 16, offset: 1152)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !508, file: !509, line: 64, baseType: !141, size: 8, offset: 1168)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !508, file: !509, line: 66, baseType: !1211, size: 2688, offset: 1216)
!1211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 2688, elements: !1212)
!1212 = !{!1213}
!1213 = !DISubrange(count: 7)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !508, file: !509, line: 67, baseType: !1215, size: 3072, offset: 3904)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 3072, elements: !1185)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !508, file: !509, line: 68, baseType: !1217, size: 576, offset: 6976)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 576, elements: !1218)
!1218 = !{!1219}
!1219 = !DISubrange(count: 9)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !508, file: !509, line: 69, baseType: !618, size: 64, offset: 7552)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !508, file: !509, line: 71, baseType: !529, size: 64, offset: 7616)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !508, file: !509, line: 72, baseType: !618, size: 64, offset: 7680)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !508, file: !509, line: 73, baseType: !1105, size: 64, offset: 7744)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !508, file: !509, line: 74, baseType: !556, size: 64, offset: 7808)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !508, file: !509, line: 75, baseType: !560, size: 64, offset: 7872)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !508, file: !509, line: 76, baseType: !556, size: 64, offset: 7936)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !508, file: !509, line: 77, baseType: !543, size: 64, offset: 8000)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !508, file: !509, line: 78, baseType: !560, size: 64, offset: 8064)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !508, file: !509, line: 79, baseType: !556, size: 64, offset: 8128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !508, file: !509, line: 80, baseType: !137, size: 64, offset: 8192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !508, file: !509, line: 81, baseType: !543, size: 64, offset: 8256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !508, file: !509, line: 82, baseType: !1233, size: 64, offset: 8320)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1235)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !134, line: 718, size: 128, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1242}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !1235, file: !134, line: 722, baseType: !30, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !1235, file: !134, line: 723, baseType: !30, size: 32, offset: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1235, file: !134, line: 724, baseType: !203, size: 16, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1235, file: !134, line: 725, baseType: !141, size: 8, offset: 80)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1235, file: !134, line: 726, baseType: !141, size: 8, offset: 88)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1235, file: !134, line: 727, baseType: !141, size: 8, offset: 96)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !508, file: !509, line: 83, baseType: !543, size: 64, offset: 8384)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !508, file: !509, line: 84, baseType: !560, size: 64, offset: 8448)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !508, file: !509, line: 85, baseType: !1105, size: 64, offset: 8512)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !508, file: !509, line: 86, baseType: !560, size: 64, offset: 8576)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !508, file: !509, line: 87, baseType: !1105, size: 64, offset: 8640)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !508, file: !509, line: 88, baseType: !543, size: 64, offset: 8704)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !508, file: !509, line: 89, baseType: !543, size: 64, offset: 8768)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !508, file: !509, line: 90, baseType: !668, size: 64, offset: 8832)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !508, file: !509, line: 91, baseType: !1252, size: 64, offset: 8896)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !134, line: 652, baseType: !1253)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!29, !507, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !508, file: !509, line: 92, baseType: !1258, size: 64, offset: 8960)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !134, line: 656, baseType: !650)
!1259 = !{!1260, !1261, !1262, !1263, !1264, !1269, !1270}
!1260 = !DILocalVariable(name: "walk_state", arg: 1, scope: !504, file: !3, line: 385, type: !507)
!1261 = !DILocalVariable(name: "string_desc", scope: !504, file: !3, line: 387, type: !560)
!1262 = !DILocalVariable(name: "return_desc", scope: !504, file: !3, line: 388, type: !560)
!1263 = !DILocalVariable(name: "interface_info", scope: !504, file: !3, line: 389, type: !139)
!1264 = !DILocalVariable(name: "interface_handler", scope: !504, file: !3, line: 390, type: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_interface_handler", file: !23, line: 1140, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!30, !277, !30}
!1269 = !DILocalVariable(name: "status", scope: !504, file: !3, line: 391, type: !29)
!1270 = !DILocalVariable(name: "return_value", scope: !504, file: !3, line: 392, type: !24)
!1271 = !DILocation(line: 385, column: 64, scope: !504)
!1272 = !DILocation(line: 387, column: 2, scope: !504)
!1273 = !DILocation(line: 387, column: 29, scope: !504)
!1274 = !DILocation(line: 388, column: 2, scope: !504)
!1275 = !DILocation(line: 388, column: 29, scope: !504)
!1276 = !DILocation(line: 389, column: 2, scope: !504)
!1277 = !DILocation(line: 389, column: 30, scope: !504)
!1278 = !DILocation(line: 390, column: 2, scope: !504)
!1279 = !DILocation(line: 390, column: 25, scope: !504)
!1280 = !DILocation(line: 391, column: 2, scope: !504)
!1281 = !DILocation(line: 391, column: 14, scope: !504)
!1282 = !DILocation(line: 392, column: 2, scope: !504)
!1283 = !DILocation(line: 392, column: 6, scope: !504)
!1284 = !DILocation(line: 398, column: 16, scope: !504)
!1285 = !DILocation(line: 398, column: 28, scope: !504)
!1286 = !DILocation(line: 398, column: 41, scope: !504)
!1287 = !DILocation(line: 398, column: 14, scope: !504)
!1288 = !DILocation(line: 399, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !504, file: !3, line: 399, column: 6)
!1290 = !DILocation(line: 399, column: 19, scope: !1289)
!1291 = !DILocation(line: 399, column: 23, scope: !1289)
!1292 = !DILocation(line: 399, column: 43, scope: !1289)
!1293 = !DILocation(line: 399, column: 48, scope: !1289)
!1294 = !DILocation(line: 399, column: 6, scope: !504)
!1295 = !DILocation(line: 400, column: 3, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 399, column: 70)
!1297 = !DILocation(line: 405, column: 16, scope: !504)
!1298 = !DILocation(line: 405, column: 14, scope: !504)
!1299 = !DILocation(line: 406, column: 7, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !504, file: !3, line: 406, column: 6)
!1301 = !DILocation(line: 406, column: 6, scope: !504)
!1302 = !DILocation(line: 407, column: 3, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 406, column: 20)
!1304 = !DILocation(line: 412, column: 15, scope: !504)
!1305 = !DILocation(line: 413, column: 11, scope: !504)
!1306 = !DILocation(line: 413, column: 9, scope: !504)
!1307 = !DILocation(line: 414, column: 6, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !504, file: !3, line: 414, column: 6)
!1309 = !DILocation(line: 414, column: 6, scope: !504)
!1310 = !DILocation(line: 415, column: 28, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 414, column: 28)
!1312 = !DILocation(line: 415, column: 3, scope: !1311)
!1313 = !DILocation(line: 416, column: 3, scope: !1311)
!1314 = !DILocation(line: 421, column: 41, scope: !504)
!1315 = !DILocation(line: 421, column: 61, scope: !504)
!1316 = !DILocation(line: 421, column: 19, scope: !504)
!1317 = !DILocation(line: 421, column: 17, scope: !504)
!1318 = !DILocation(line: 422, column: 6, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !504, file: !3, line: 422, column: 6)
!1320 = !DILocation(line: 422, column: 21, scope: !1319)
!1321 = !DILocation(line: 422, column: 26, scope: !1319)
!1322 = !DILocation(line: 422, column: 42, scope: !1319)
!1323 = !DILocation(line: 422, column: 48, scope: !1319)
!1324 = !DILocation(line: 422, column: 6, scope: !504)
!1325 = !DILocation(line: 428, column: 7, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 428, column: 7)
!1327 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 422, column: 69)
!1328 = !DILocation(line: 428, column: 23, scope: !1326)
!1329 = !DILocation(line: 428, column: 31, scope: !1326)
!1330 = !DILocation(line: 428, column: 29, scope: !1326)
!1331 = !DILocation(line: 428, column: 7, scope: !1327)
!1332 = !DILocation(line: 429, column: 24, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 428, column: 50)
!1334 = !DILocation(line: 429, column: 40, scope: !1333)
!1335 = !DILocation(line: 429, column: 22, scope: !1333)
!1336 = !DILocation(line: 430, column: 3, scope: !1333)
!1337 = !DILocation(line: 432, column: 16, scope: !1327)
!1338 = !DILocation(line: 433, column: 2, scope: !1327)
!1339 = !DILocation(line: 435, column: 2, scope: !504)
!1340 = !DILocation(line: 442, column: 22, scope: !504)
!1341 = !DILocation(line: 442, column: 20, scope: !504)
!1342 = !DILocation(line: 443, column: 6, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !504, file: !3, line: 443, column: 6)
!1344 = !DILocation(line: 443, column: 6, scope: !504)
!1345 = !DILocation(line: 444, column: 7, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 444, column: 7)
!1347 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 443, column: 25)
!1348 = !DILocation(line: 445, column: 8, scope: !1346)
!1349 = !DILocation(line: 445, column: 28, scope: !1346)
!1350 = !DILocation(line: 445, column: 42, scope: !1346)
!1351 = !DILocation(line: 445, column: 37, scope: !1346)
!1352 = !DILocation(line: 444, column: 7, scope: !1347)
!1353 = !DILocation(line: 446, column: 17, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 445, column: 57)
!1355 = !DILocation(line: 447, column: 3, scope: !1354)
!1356 = !DILocation(line: 448, column: 2, scope: !1347)
!1357 = !DILocation(line: 457, column: 31, scope: !504)
!1358 = !DILocation(line: 457, column: 2, scope: !504)
!1359 = !DILocation(line: 457, column: 23, scope: !504)
!1360 = !DILocation(line: 457, column: 29, scope: !504)
!1361 = !DILocation(line: 458, column: 28, scope: !504)
!1362 = !DILocation(line: 458, column: 2, scope: !504)
!1363 = !DILocation(line: 458, column: 14, scope: !504)
!1364 = !DILocation(line: 458, column: 26, scope: !504)
!1365 = !DILocation(line: 459, column: 2, scope: !504)
!1366 = !DILocation(line: 460, column: 1, scope: !504)
!1367 = !DISubprogram(name: "acpi_ut_create_internal_object_dbg", scope: !1368, file: !1368, line: 436, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1368 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!560, !346, !30, !30, !1371}
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !23, line: 644, baseType: !30)
!1372 = !DISubprogram(name: "acpi_ut_remove_reference", scope: !1368, file: !1368, line: 369, type: !1373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{null, !560}
!1375 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !1376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !1378}
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1380 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !1381, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1387)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!32, !1383, !33}
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 61, baseType: !1384)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1385, line: 72, baseType: !1386)
!1385 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1385, line: 16, baseType: !35)
!1387 = !{!1388, !1389}
!1388 = !DILocalVariable(name: "size", arg: 1, scope: !1380, file: !12, line: 719, type: !1383)
!1389 = !DILocalVariable(name: "flags", arg: 2, scope: !1380, file: !12, line: 719, type: !33)
!1390 = !DILocation(line: 719, column: 52, scope: !1380)
!1391 = !DILocation(line: 719, column: 64, scope: !1380)
!1392 = !DILocation(line: 721, column: 17, scope: !1380)
!1393 = !DILocation(line: 721, column: 23, scope: !1380)
!1394 = !DILocation(line: 721, column: 29, scope: !1380)
!1395 = !DILocation(line: 721, column: 9, scope: !1380)
!1396 = !DILocation(line: 721, column: 2, scope: !1380)
!1397 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1398, file: !1398, line: 65, type: !1399, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1398 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!35}
!1401 = !DILocation(line: 67, column: 9, scope: !1397)
!1402 = !DILocation(line: 67, column: 2, scope: !1397)
!1403 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1398, file: !1398, line: 120, type: !1404, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1406)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!422, !35}
!1406 = !{!1407}
!1407 = !DILocalVariable(name: "flags", arg: 1, scope: !1403, file: !1398, line: 120, type: !35)
!1408 = !DILocation(line: 120, column: 67, scope: !1403)
!1409 = !DILocation(line: 122, column: 11, scope: !1403)
!1410 = !DILocation(line: 122, column: 17, scope: !1403)
!1411 = !DILocation(line: 122, column: 9, scope: !1403)
!1412 = !DILocation(line: 122, column: 2, scope: !1403)
!1413 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !1381, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1414)
!1414 = !{!1415, !1416, !1417}
!1415 = !DILocalVariable(name: "size", arg: 1, scope: !1413, file: !12, line: 591, type: !1383)
!1416 = !DILocalVariable(name: "flags", arg: 2, scope: !1413, file: !12, line: 591, type: !33)
!1417 = !DILocalVariable(name: "index", scope: !1418, file: !12, line: 594, type: !7)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !12, line: 593, column: 42)
!1419 = distinct !DILexicalBlock(scope: !1413, file: !12, line: 593, column: 6)
!1420 = !DILocation(line: 591, column: 61, scope: !1413)
!1421 = !DILocation(line: 591, column: 73, scope: !1413)
!1422 = !DILocation(line: 593, column: 27, scope: !1419)
!1423 = !DILocation(line: 593, column: 6, scope: !1419)
!1424 = !DILocation(line: 593, column: 33, scope: !1419)
!1425 = !DILocation(line: 593, column: 36, scope: !1419)
!1426 = !DILocation(line: 593, column: 6, scope: !1413)
!1427 = !DILocation(line: 594, column: 3, scope: !1418)
!1428 = !DILocation(line: 594, column: 16, scope: !1418)
!1429 = !DILocation(line: 596, column: 7, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1418, file: !12, line: 596, column: 7)
!1431 = !DILocation(line: 596, column: 12, scope: !1430)
!1432 = !DILocation(line: 596, column: 7, scope: !1418)
!1433 = !DILocation(line: 597, column: 25, scope: !1430)
!1434 = !DILocation(line: 597, column: 31, scope: !1430)
!1435 = !DILocation(line: 597, column: 11, scope: !1430)
!1436 = !DILocation(line: 597, column: 4, scope: !1430)
!1437 = !DILocation(line: 599, column: 11, scope: !1418)
!1438 = !DILocation(line: 599, column: 9, scope: !1418)
!1439 = !DILocation(line: 601, column: 33, scope: !1418)
!1440 = !DILocation(line: 601, column: 40, scope: !1418)
!1441 = !DILocation(line: 601, column: 20, scope: !1418)
!1442 = !DILocation(line: 601, column: 5, scope: !1418)
!1443 = !DILocation(line: 601, column: 51, scope: !1418)
!1444 = !DILocation(line: 602, column: 5, scope: !1418)
!1445 = !DILocation(line: 602, column: 12, scope: !1418)
!1446 = !DILocation(line: 600, column: 10, scope: !1418)
!1447 = !DILocation(line: 600, column: 3, scope: !1418)
!1448 = !DILocation(line: 603, column: 2, scope: !1419)
!1449 = !DILocation(line: 604, column: 19, scope: !1413)
!1450 = !DILocation(line: 604, column: 25, scope: !1413)
!1451 = !DILocation(line: 604, column: 9, scope: !1413)
!1452 = !DILocation(line: 604, column: 2, scope: !1413)
!1453 = !DILocation(line: 605, column: 1, scope: !1413)
!1454 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !1381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1455 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !1456, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1460)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!7, !1383, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !34, line: 35, baseType: !1459)
!1459 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1460 = !{!1461, !1462}
!1461 = !DILocalVariable(name: "size", arg: 1, scope: !1455, file: !12, line: 444, type: !1383)
!1462 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1455, file: !12, line: 445, type: !1458)
!1463 = !DILocation(line: 444, column: 60, scope: !1455)
!1464 = !DILocation(line: 445, column: 16, scope: !1455)
!1465 = !DILocation(line: 447, column: 7, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 447, column: 6)
!1467 = !DILocation(line: 447, column: 6, scope: !1455)
!1468 = !DILocation(line: 448, column: 3, scope: !1466)
!1469 = !DILocation(line: 450, column: 6, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 450, column: 6)
!1471 = !DILocation(line: 450, column: 11, scope: !1470)
!1472 = !DILocation(line: 450, column: 6, scope: !1455)
!1473 = !DILocation(line: 451, column: 3, scope: !1470)
!1474 = !DILocation(line: 453, column: 32, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 453, column: 6)
!1476 = !DILocation(line: 453, column: 37, scope: !1475)
!1477 = !DILocation(line: 453, column: 42, scope: !1475)
!1478 = !DILocation(line: 453, column: 45, scope: !1475)
!1479 = !DILocation(line: 453, column: 50, scope: !1475)
!1480 = !DILocation(line: 453, column: 6, scope: !1455)
!1481 = !DILocation(line: 454, column: 3, scope: !1475)
!1482 = !DILocation(line: 455, column: 32, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 455, column: 6)
!1484 = !DILocation(line: 455, column: 37, scope: !1483)
!1485 = !DILocation(line: 455, column: 43, scope: !1483)
!1486 = !DILocation(line: 455, column: 46, scope: !1483)
!1487 = !DILocation(line: 455, column: 51, scope: !1483)
!1488 = !DILocation(line: 455, column: 6, scope: !1455)
!1489 = !DILocation(line: 456, column: 3, scope: !1483)
!1490 = !DILocation(line: 457, column: 6, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 457, column: 6)
!1492 = !DILocation(line: 457, column: 11, scope: !1491)
!1493 = !DILocation(line: 457, column: 6, scope: !1455)
!1494 = !DILocation(line: 457, column: 26, scope: !1491)
!1495 = !DILocation(line: 458, column: 6, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 458, column: 6)
!1497 = !DILocation(line: 458, column: 11, scope: !1496)
!1498 = !DILocation(line: 458, column: 6, scope: !1455)
!1499 = !DILocation(line: 458, column: 26, scope: !1496)
!1500 = !DILocation(line: 459, column: 6, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 459, column: 6)
!1502 = !DILocation(line: 459, column: 11, scope: !1501)
!1503 = !DILocation(line: 459, column: 6, scope: !1455)
!1504 = !DILocation(line: 459, column: 26, scope: !1501)
!1505 = !DILocation(line: 460, column: 6, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 460, column: 6)
!1507 = !DILocation(line: 460, column: 11, scope: !1506)
!1508 = !DILocation(line: 460, column: 6, scope: !1455)
!1509 = !DILocation(line: 460, column: 26, scope: !1506)
!1510 = !DILocation(line: 461, column: 6, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 461, column: 6)
!1512 = !DILocation(line: 461, column: 11, scope: !1511)
!1513 = !DILocation(line: 461, column: 6, scope: !1455)
!1514 = !DILocation(line: 461, column: 26, scope: !1511)
!1515 = !DILocation(line: 462, column: 6, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 462, column: 6)
!1517 = !DILocation(line: 462, column: 11, scope: !1516)
!1518 = !DILocation(line: 462, column: 6, scope: !1455)
!1519 = !DILocation(line: 462, column: 26, scope: !1516)
!1520 = !DILocation(line: 463, column: 6, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 463, column: 6)
!1522 = !DILocation(line: 463, column: 11, scope: !1521)
!1523 = !DILocation(line: 463, column: 6, scope: !1455)
!1524 = !DILocation(line: 463, column: 26, scope: !1521)
!1525 = !DILocation(line: 464, column: 6, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 464, column: 6)
!1527 = !DILocation(line: 464, column: 11, scope: !1526)
!1528 = !DILocation(line: 464, column: 6, scope: !1455)
!1529 = !DILocation(line: 464, column: 26, scope: !1526)
!1530 = !DILocation(line: 465, column: 6, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 465, column: 6)
!1532 = !DILocation(line: 465, column: 11, scope: !1531)
!1533 = !DILocation(line: 465, column: 6, scope: !1455)
!1534 = !DILocation(line: 465, column: 26, scope: !1531)
!1535 = !DILocation(line: 466, column: 6, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 466, column: 6)
!1537 = !DILocation(line: 466, column: 11, scope: !1536)
!1538 = !DILocation(line: 466, column: 6, scope: !1455)
!1539 = !DILocation(line: 466, column: 26, scope: !1536)
!1540 = !DILocation(line: 467, column: 6, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 467, column: 6)
!1542 = !DILocation(line: 467, column: 11, scope: !1541)
!1543 = !DILocation(line: 467, column: 6, scope: !1455)
!1544 = !DILocation(line: 467, column: 26, scope: !1541)
!1545 = !DILocation(line: 468, column: 6, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 468, column: 6)
!1547 = !DILocation(line: 468, column: 11, scope: !1546)
!1548 = !DILocation(line: 468, column: 6, scope: !1455)
!1549 = !DILocation(line: 468, column: 26, scope: !1546)
!1550 = !DILocation(line: 469, column: 6, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 469, column: 6)
!1552 = !DILocation(line: 469, column: 11, scope: !1551)
!1553 = !DILocation(line: 469, column: 6, scope: !1455)
!1554 = !DILocation(line: 469, column: 26, scope: !1551)
!1555 = !DILocation(line: 470, column: 6, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 470, column: 6)
!1557 = !DILocation(line: 470, column: 11, scope: !1556)
!1558 = !DILocation(line: 470, column: 6, scope: !1455)
!1559 = !DILocation(line: 470, column: 26, scope: !1556)
!1560 = !DILocation(line: 471, column: 6, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 471, column: 6)
!1562 = !DILocation(line: 471, column: 11, scope: !1561)
!1563 = !DILocation(line: 471, column: 6, scope: !1455)
!1564 = !DILocation(line: 471, column: 26, scope: !1561)
!1565 = !DILocation(line: 472, column: 6, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 472, column: 6)
!1567 = !DILocation(line: 472, column: 11, scope: !1566)
!1568 = !DILocation(line: 472, column: 6, scope: !1455)
!1569 = !DILocation(line: 472, column: 26, scope: !1566)
!1570 = !DILocation(line: 473, column: 6, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 473, column: 6)
!1572 = !DILocation(line: 473, column: 11, scope: !1571)
!1573 = !DILocation(line: 473, column: 6, scope: !1455)
!1574 = !DILocation(line: 473, column: 26, scope: !1571)
!1575 = !DILocation(line: 474, column: 6, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 474, column: 6)
!1577 = !DILocation(line: 474, column: 11, scope: !1576)
!1578 = !DILocation(line: 474, column: 6, scope: !1455)
!1579 = !DILocation(line: 474, column: 27, scope: !1576)
!1580 = !DILocation(line: 475, column: 6, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 475, column: 6)
!1582 = !DILocation(line: 475, column: 11, scope: !1581)
!1583 = !DILocation(line: 475, column: 6, scope: !1455)
!1584 = !DILocation(line: 475, column: 32, scope: !1581)
!1585 = !DILocation(line: 477, column: 50, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1455, file: !12, line: 477, column: 6)
!1587 = !{i8 0, i8 2}
!1588 = !{}
!1589 = !DILocation(line: 477, column: 6, scope: !1455)
!1590 = !DILocation(line: 478, column: 3, scope: !1586)
!1591 = !DILocation(line: 478, column: 3, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !12, line: 478, column: 3)
!1593 = distinct !DILexicalBlock(scope: !1586, file: !12, line: 478, column: 3)
!1594 = !{i32 -2143034291}
!1595 = !DILocation(line: 478, column: 3, scope: !1593)
!1596 = !DILocation(line: 480, column: 3, scope: !1586)
!1597 = !DILocation(line: 480, column: 3, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1586, file: !12, line: 480, column: 3)
!1599 = !DILocation(line: 480, column: 3, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1598, file: !12, line: 480, column: 3)
!1601 = !DILocation(line: 480, column: 3, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !12, line: 480, column: 3)
!1603 = !{i64 2151933208, i64 2151933237, i64 2151933283, i64 2151933341, i64 2151933395, i64 2151933449, i64 2151933504, i64 2151933535}
!1604 = !DILocation(line: 483, column: 2, scope: !1455)
!1605 = !DILocation(line: 484, column: 1, scope: !1455)
!1606 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !1607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!32, !1609, !33, !1383}
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1611, line: 11, flags: DIFlagFwdDecl)
!1611 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1612 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !1613, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1615)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!11, !33, !35}
!1615 = !{!1616, !1617}
!1616 = !DILocalVariable(name: "flags", arg: 1, scope: !1612, file: !12, line: 401, type: !33)
!1617 = !DILocalVariable(name: "caller", arg: 2, scope: !1612, file: !12, line: 401, type: !35)
!1618 = !DILocation(line: 401, column: 67, scope: !1612)
!1619 = !DILocation(line: 401, column: 88, scope: !1612)
!1620 = !DILocation(line: 407, column: 6, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1612, file: !12, line: 407, column: 6)
!1622 = !DILocation(line: 407, column: 6, scope: !1612)
!1623 = !DILocation(line: 413, column: 3, scope: !1621)
!1624 = !DILocation(line: 423, column: 38, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1612, file: !12, line: 423, column: 6)
!1626 = !DILocation(line: 423, column: 44, scope: !1625)
!1627 = !DILocation(line: 423, column: 6, scope: !1612)
!1628 = !DILocation(line: 424, column: 3, scope: !1625)
!1629 = !DILocation(line: 426, column: 3, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1612, file: !12, line: 425, column: 6)
!1631 = !DILocation(line: 429, column: 1, scope: !1612)
!1632 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !1381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1633 = !DISubprogram(name: "__compiletime_assert_173", scope: !12, file: !12, line: 478, type: !1634, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{null}
!1636 = distinct !DISubprogram(name: "native_save_fl", scope: !1398, file: !1398, line: 17, type: !1399, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1637)
!1637 = !{!1638}
!1638 = !DILocalVariable(name: "flags", scope: !1636, file: !1398, line: 19, type: !35)
!1639 = !DILocation(line: 19, column: 2, scope: !1636)
!1640 = !DILocation(line: 19, column: 16, scope: !1636)
!1641 = !DILocation(line: 26, column: 2, scope: !1636)
!1642 = !{i64 1523127, i64 1523148}
!1643 = !DILocation(line: 32, column: 9, scope: !1636)
!1644 = !DILocation(line: 33, column: 1, scope: !1636)
!1645 = !DILocation(line: 32, column: 2, scope: !1636)
