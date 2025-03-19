; ModuleID = 'drivers/acpi/acpica/hwpci.c'
source_filename = "drivers/acpi/acpica/hwpci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_pci_device = type { ptr, ptr }
%struct.acpi_pci_id = type { i16, i16, i16, i16 }

@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"_ADR\00", align 1, !dbg !7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_hw_derive_pci_id(ptr noundef %pci_id, ptr noundef %root_pci_device, ptr noundef %pci_region) #0 align 16 !dbg !57 {
entry:
  %retval = alloca i32, align 4
  %pci_id.addr = alloca ptr, align 8
  %root_pci_device.addr = alloca ptr, align 8
  %pci_region.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %list_head = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_id, ptr %pci_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_id.addr, metadata !70, metadata !DIExpression()), !dbg !80
  store ptr %root_pci_device, ptr %root_pci_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root_pci_device.addr, metadata !71, metadata !DIExpression()), !dbg !81
  store ptr %pci_region, ptr %pci_region.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_region.addr, metadata !72, metadata !DIExpression()), !dbg !82
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #12, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %status, metadata !73, metadata !DIExpression()), !dbg !84
  call void @llvm.lifetime.start.p0(i64 8, ptr %list_head) #12, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %list_head, metadata !74, metadata !DIExpression()), !dbg !86
  %0 = load ptr, ptr %pci_id.addr, align 8, !dbg !87
  %tobool = icmp ne ptr %0, null, !dbg !87
  br i1 %tobool, label %if.end, label %if.then, !dbg !89

if.then:                                          ; preds = %entry
  store i32 4097, ptr %retval, align 4, !dbg !90
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !90

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %root_pci_device.addr, align 8, !dbg !92
  %2 = load ptr, ptr %pci_region.addr, align 8, !dbg !93
  %call = call i32 @acpi_hw_build_pci_list(ptr noundef %1, ptr noundef %2, ptr noundef %list_head) #13, !dbg !94
  store i32 %call, ptr %status, align 4, !dbg !95
  %3 = load i32, ptr %status, align 4, !dbg !96
  %tobool1 = icmp ne i32 %3, 0, !dbg !96
  br i1 %tobool1, label %if.end4, label %if.then2, !dbg !98

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %pci_id.addr, align 8, !dbg !99
  %5 = load ptr, ptr %list_head, align 8, !dbg !101
  %call3 = call i32 @acpi_hw_process_pci_list(ptr noundef %4, ptr noundef %5) #13, !dbg !102
  store i32 %call3, ptr %status, align 4, !dbg !103
  %6 = load ptr, ptr %list_head, align 8, !dbg !104
  call void @acpi_hw_delete_pci_list(ptr noundef %6) #13, !dbg !105
  br label %if.end4, !dbg !106

if.end4:                                          ; preds = %if.then2, %if.end
  %7 = load i32, ptr %status, align 4, !dbg !107
  store i32 %7, ptr %retval, align 4, !dbg !107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !107

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %list_head) #12, !dbg !108
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #12, !dbg !108
  %8 = load i32, ptr %retval, align 4, !dbg !108
  ret i32 %8, !dbg !108
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_hw_build_pci_list(ptr noundef %root_pci_device, ptr noundef %pci_region, ptr noundef %return_list_head) #0 align 16 !dbg !109 {
entry:
  %retval = alloca i32, align 4
  %root_pci_device.addr = alloca ptr, align 8
  %pci_region.addr = alloca ptr, align 8
  %return_list_head.addr = alloca ptr, align 8
  %current_device = alloca ptr, align 8
  %parent_device = alloca ptr, align 8
  %status = alloca i32, align 4
  %list_element = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %root_pci_device, ptr %root_pci_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %root_pci_device.addr, metadata !114, metadata !DIExpression()), !dbg !121
  store ptr %pci_region, ptr %pci_region.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_region.addr, metadata !115, metadata !DIExpression()), !dbg !122
  store ptr %return_list_head, ptr %return_list_head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %return_list_head.addr, metadata !116, metadata !DIExpression()), !dbg !123
  call void @llvm.lifetime.start.p0(i64 8, ptr %current_device) #12, !dbg !124
  call void @llvm.dbg.declare(metadata ptr %current_device, metadata !117, metadata !DIExpression()), !dbg !125
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent_device) #12, !dbg !126
  call void @llvm.dbg.declare(metadata ptr %parent_device, metadata !118, metadata !DIExpression()), !dbg !127
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #12, !dbg !128
  call void @llvm.dbg.declare(metadata ptr %status, metadata !119, metadata !DIExpression()), !dbg !129
  call void @llvm.lifetime.start.p0(i64 8, ptr %list_element) #12, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %list_element, metadata !120, metadata !DIExpression()), !dbg !131
  %0 = load ptr, ptr %return_list_head.addr, align 8, !dbg !132
  store ptr null, ptr %0, align 8, !dbg !133
  %1 = load ptr, ptr %pci_region.addr, align 8, !dbg !134
  store ptr %1, ptr %current_device, align 8, !dbg !135
  br label %while.cond, !dbg !136

while.cond:                                       ; preds = %if.end6, %entry
  br label %while.body, !dbg !136

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %current_device, align 8, !dbg !137
  %call = call i32 @acpi_get_parent(ptr noundef %2, ptr noundef %parent_device) #13, !dbg !139
  store i32 %call, ptr %status, align 4, !dbg !140
  %3 = load i32, ptr %status, align 4, !dbg !141
  %tobool = icmp ne i32 %3, 0, !dbg !141
  br i1 %tobool, label %if.then, label %if.end, !dbg !143

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %return_list_head.addr, align 8, !dbg !144
  %5 = load ptr, ptr %4, align 8, !dbg !146
  call void @acpi_hw_delete_pci_list(ptr noundef %5) #13, !dbg !147
  %6 = load i32, ptr %status, align 4, !dbg !148
  store i32 %6, ptr %retval, align 4, !dbg !149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !149

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %parent_device, align 8, !dbg !150
  %8 = load ptr, ptr %root_pci_device.addr, align 8, !dbg !152
  %cmp = icmp eq ptr %7, %8, !dbg !153
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !154

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !155

if.end2:                                          ; preds = %if.end
  %call3 = call ptr @acpi_os_allocate(i64 noundef 16) #13, !dbg !157
  store ptr %call3, ptr %list_element, align 8, !dbg !158
  %9 = load ptr, ptr %list_element, align 8, !dbg !159
  %tobool4 = icmp ne ptr %9, null, !dbg !159
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !161

if.then5:                                         ; preds = %if.end2
  %10 = load ptr, ptr %return_list_head.addr, align 8, !dbg !162
  %11 = load ptr, ptr %10, align 8, !dbg !164
  call void @acpi_hw_delete_pci_list(ptr noundef %11) #13, !dbg !165
  store i32 4, ptr %retval, align 4, !dbg !166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !166

if.end6:                                          ; preds = %if.end2
  %12 = load ptr, ptr %return_list_head.addr, align 8, !dbg !167
  %13 = load ptr, ptr %12, align 8, !dbg !168
  %14 = load ptr, ptr %list_element, align 8, !dbg !169
  %next = getelementptr inbounds %struct.acpi_pci_device, ptr %14, i32 0, i32 1, !dbg !170
  store ptr %13, ptr %next, align 8, !dbg !171
  %15 = load ptr, ptr %parent_device, align 8, !dbg !172
  %16 = load ptr, ptr %list_element, align 8, !dbg !173
  %device = getelementptr inbounds %struct.acpi_pci_device, ptr %16, i32 0, i32 0, !dbg !174
  store ptr %15, ptr %device, align 8, !dbg !175
  %17 = load ptr, ptr %list_element, align 8, !dbg !176
  %18 = load ptr, ptr %return_list_head.addr, align 8, !dbg !177
  store ptr %17, ptr %18, align 8, !dbg !178
  %19 = load ptr, ptr %parent_device, align 8, !dbg !179
  store ptr %19, ptr %current_device, align 8, !dbg !180
  br label %while.cond, !dbg !136, !llvm.loop !181

cleanup:                                          ; preds = %if.then5, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %list_element) #12, !dbg !184
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #12, !dbg !184
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent_device) #12, !dbg !184
  call void @llvm.lifetime.end.p0(i64 8, ptr %current_device) #12, !dbg !184
  %20 = load i32, ptr %retval, align 4, !dbg !184
  ret i32 %20, !dbg !184
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_hw_process_pci_list(ptr noundef %pci_id, ptr noundef %list_head) #0 align 16 !dbg !185 {
entry:
  %retval = alloca i32, align 4
  %pci_id.addr = alloca ptr, align 8
  %list_head.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %info = alloca ptr, align 8
  %bus_number = alloca i16, align 2
  %is_bridge = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_id, ptr %pci_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_id.addr, metadata !189, metadata !DIExpression()), !dbg !198
  store ptr %list_head, ptr %list_head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list_head.addr, metadata !190, metadata !DIExpression()), !dbg !199
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #12, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %status, metadata !191, metadata !DIExpression()), !dbg !201
  store i32 0, ptr %status, align 4, !dbg !201
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #12, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %info, metadata !192, metadata !DIExpression()), !dbg !203
  call void @llvm.lifetime.start.p0(i64 2, ptr %bus_number) #12, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %bus_number, metadata !193, metadata !DIExpression()), !dbg !205
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_bridge) #12, !dbg !206
  call void @llvm.dbg.declare(metadata ptr %is_bridge, metadata !194, metadata !DIExpression()), !dbg !207
  store i8 1, ptr %is_bridge, align 1, !dbg !207
  %0 = load ptr, ptr %pci_id.addr, align 8, !dbg !208
  %bus = getelementptr inbounds %struct.acpi_pci_id, ptr %0, i32 0, i32 1, !dbg !209
  %1 = load i16, ptr %bus, align 2, !dbg !209
  store i16 %1, ptr %bus_number, align 2, !dbg !210
  %2 = load ptr, ptr %list_head.addr, align 8, !dbg !211
  store ptr %2, ptr %info, align 8, !dbg !212
  br label %while.cond, !dbg !213

while.cond:                                       ; preds = %if.end, %entry
  %3 = load ptr, ptr %info, align 8, !dbg !214
  %tobool = icmp ne ptr %3, null, !dbg !213
  br i1 %tobool, label %while.body, label %while.end, !dbg !213

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %pci_id.addr, align 8, !dbg !215
  %5 = load ptr, ptr %info, align 8, !dbg !217
  %device = getelementptr inbounds %struct.acpi_pci_device, ptr %5, i32 0, i32 0, !dbg !218
  %6 = load ptr, ptr %device, align 8, !dbg !218
  %call = call i32 @acpi_hw_get_pci_device_info(ptr noundef %4, ptr noundef %6, ptr noundef %bus_number, ptr noundef %is_bridge) #13, !dbg !219
  store i32 %call, ptr %status, align 4, !dbg !220
  %7 = load i32, ptr %status, align 4, !dbg !221
  %tobool1 = icmp ne i32 %7, 0, !dbg !221
  br i1 %tobool1, label %if.then, label %if.end, !dbg !223

if.then:                                          ; preds = %while.body
  %8 = load i32, ptr %status, align 4, !dbg !224
  store i32 %8, ptr %retval, align 4, !dbg !226
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !226

if.end:                                           ; preds = %while.body
  %9 = load ptr, ptr %info, align 8, !dbg !227
  %next = getelementptr inbounds %struct.acpi_pci_device, ptr %9, i32 0, i32 1, !dbg !228
  %10 = load ptr, ptr %next, align 8, !dbg !228
  store ptr %10, ptr %info, align 8, !dbg !229
  br label %while.cond, !dbg !213, !llvm.loop !230

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !233

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_bridge) #12, !dbg !234
  call void @llvm.lifetime.end.p0(i64 2, ptr %bus_number) #12, !dbg !234
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #12, !dbg !234
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #12, !dbg !234
  %11 = load i32, ptr %retval, align 4, !dbg !234
  ret i32 %11, !dbg !234
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_hw_delete_pci_list(ptr noundef %list_head) #0 align 16 !dbg !235 {
entry:
  %list_head.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %previous = alloca ptr, align 8
  store ptr %list_head, ptr %list_head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list_head.addr, metadata !239, metadata !DIExpression()), !dbg !242
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #12, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %next, metadata !240, metadata !DIExpression()), !dbg !244
  call void @llvm.lifetime.start.p0(i64 8, ptr %previous) #12, !dbg !245
  call void @llvm.dbg.declare(metadata ptr %previous, metadata !241, metadata !DIExpression()), !dbg !246
  %0 = load ptr, ptr %list_head.addr, align 8, !dbg !247
  store ptr %0, ptr %next, align 8, !dbg !248
  br label %while.cond, !dbg !249

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %next, align 8, !dbg !250
  %tobool = icmp ne ptr %1, null, !dbg !249
  br i1 %tobool, label %while.body, label %while.end, !dbg !249

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %next, align 8, !dbg !251
  store ptr %2, ptr %previous, align 8, !dbg !253
  %3 = load ptr, ptr %previous, align 8, !dbg !254
  %next1 = getelementptr inbounds %struct.acpi_pci_device, ptr %3, i32 0, i32 1, !dbg !255
  %4 = load ptr, ptr %next1, align 8, !dbg !255
  store ptr %4, ptr %next, align 8, !dbg !256
  %5 = load ptr, ptr %previous, align 8, !dbg !257
  call void @acpi_os_free(ptr noundef %5) #13, !dbg !257
  br label %while.cond, !dbg !249, !llvm.loop !258

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %previous) #12, !dbg !260
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #12, !dbg !260
  ret void, !dbg !260
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !261 dso_local i32 @acpi_get_parent(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_allocate(i64 noundef %size) #4 align 16 !dbg !266 {
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
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !271, metadata !DIExpression()), !dbg !282
  %0 = load i64, ptr %size.addr, align 8, !dbg !283
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #12, !dbg !284
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !272, metadata !DIExpression()), !dbg !284
  br label %do.body, !dbg !284

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !274, metadata !DIExpression()), !dbg !285
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !277, metadata !DIExpression()), !dbg !285
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !285
  %conv = zext i1 %cmp to i32, !dbg !285
  store i32 1, ptr %tmp, align 4, !dbg !285
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !286
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !286
  %1 = load i32, ptr %tmp, align 4, !dbg !285
  %call = call i64 @arch_local_save_flags() #13, !dbg !286
  store i64 %call, ptr %_flags, align 8, !dbg !286
  br label %do.cond, !dbg !286

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !286

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #12, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !278, metadata !DIExpression()), !dbg !287
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #12, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !281, metadata !DIExpression()), !dbg !287
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !287
  %conv6 = zext i1 %cmp5 to i32, !dbg !287
  store i32 1, ptr %tmp7, align 4, !dbg !287
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #12, !dbg !288
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #12, !dbg !288
  %2 = load i32, ptr %tmp7, align 4, !dbg !287
  %3 = load i64, ptr %_flags, align 8, !dbg !288
  %call9 = call i32 @arch_irqs_disabled_flags(i64 noundef %3) #13, !dbg !288
  store i32 %call9, ptr %tmp8, align 4, !dbg !288
  %4 = load i32, ptr %tmp8, align 4, !dbg !288
  store i32 %4, ptr %tmp1, align 4, !dbg !286
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #12, !dbg !289
  %5 = load i32, ptr %tmp1, align 4, !dbg !284
  %tobool = icmp ne i32 %5, 0, !dbg !289
  %6 = zext i1 %tobool to i64, !dbg !289
  %cond = select i1 %tobool, i32 2080, i32 3264, !dbg !289
  %call10 = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %cond) #14, !dbg !290
  ret ptr %call10, !dbg !291
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !292 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !300, metadata !DIExpression()), !dbg !305
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !301, metadata !DIExpression()), !dbg !306
  %0 = load i64, ptr %size.addr, align 8, !dbg !307
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !308
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !309

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !310
  %tobool = icmp ne i64 %2, 0, !dbg !310
  br i1 %tobool, label %if.then, label %if.end7, !dbg !311

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #12, !dbg !312
  call void @llvm.dbg.declare(metadata ptr %index, metadata !302, metadata !DIExpression()), !dbg !313
  %3 = load i64, ptr %size.addr, align 8, !dbg !314
  %cmp = icmp ugt i64 %3, 8192, !dbg !316
  br i1 %cmp, label %if.then1, label %if.end, !dbg !317

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !318
  %5 = load i32, ptr %flags.addr, align 4, !dbg !319
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #14, !dbg !320
  store ptr %call, ptr %retval, align 8, !dbg !321
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !321

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !322
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #13, !dbg !322
  store i32 %call2, ptr %index, align 4, !dbg !323
  %7 = load i32, ptr %flags.addr, align 4, !dbg !324
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !325
  %9 = ptrtoint ptr %8 to i64, !dbg !325
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #13, !dbg !326
  %idxprom = zext i32 %call3 to i64, !dbg !327
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !327
  %10 = load i32, ptr %index, align 4, !dbg !328
  %idxprom4 = zext i32 %10 to i64, !dbg !327
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !327
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !327
  %12 = load i32, ptr %flags.addr, align 4, !dbg !329
  %13 = load i64, ptr %size.addr, align 8, !dbg !330
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #15, !dbg !331
  store ptr %call6, ptr %retval, align 8, !dbg !332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !332

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #12, !dbg !333
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !334
  %15 = load i32, ptr %flags.addr, align 4, !dbg !335
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #14, !dbg !336
  store ptr %call8, ptr %retval, align 8, !dbg !337
  br label %return, !dbg !337

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !338
  ret ptr %16, !dbg !338
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #6 align 16 !dbg !339 {
entry:
  %call = call i64 @native_save_fl() #13, !dbg !343
  ret i64 %call, !dbg !344
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #6 align 16 !dbg !345 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %0 = load i64, ptr %flags.addr, align 8, !dbg !352
  %and = and i64 %0, 512, !dbg !353
  %tobool = icmp ne i64 %and, 0, !dbg !354
  %lnot = xor i1 %tobool, true, !dbg !354
  %lnot.ext = zext i1 %lnot to i32, !dbg !354
  ret i32 %lnot.ext, !dbg !355
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !356 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !357 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !363, metadata !DIExpression()), !dbg !365
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !364, metadata !DIExpression()), !dbg !366
  %0 = load i64, ptr %size.addr, align 8, !dbg !367
  %tobool = icmp ne i64 %0, 0, !dbg !367
  br i1 %tobool, label %if.end, label %if.then, !dbg !369

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !370
  br label %return, !dbg !370

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !371
  %cmp = icmp ule i64 %1, 8, !dbg !373
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !374

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !375
  br label %return, !dbg !375

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !376
  %cmp3 = icmp ugt i64 %2, 64, !dbg !378
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !379

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !380
  %cmp4 = icmp ule i64 %3, 96, !dbg !381
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !382

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !383
  br label %return, !dbg !383

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !384
  %cmp7 = icmp ugt i64 %4, 128, !dbg !386
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !387

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !388
  %cmp9 = icmp ule i64 %5, 192, !dbg !389
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !390

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !391
  br label %return, !dbg !391

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !392
  %cmp12 = icmp ule i64 %6, 8, !dbg !394
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !395

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !396
  br label %return, !dbg !396

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !397
  %cmp15 = icmp ule i64 %7, 16, !dbg !399
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !400

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !401
  br label %return, !dbg !401

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !402
  %cmp18 = icmp ule i64 %8, 32, !dbg !404
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !405

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !406
  br label %return, !dbg !406

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !407
  %cmp21 = icmp ule i64 %9, 64, !dbg !409
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !410

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !411
  br label %return, !dbg !411

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !412
  %cmp24 = icmp ule i64 %10, 128, !dbg !414
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !415

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !416
  br label %return, !dbg !416

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !417
  %cmp27 = icmp ule i64 %11, 256, !dbg !419
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !420

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !421
  br label %return, !dbg !421

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !422
  %cmp30 = icmp ule i64 %12, 512, !dbg !424
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !425

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !426
  br label %return, !dbg !426

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !427
  %cmp33 = icmp ule i64 %13, 1024, !dbg !429
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !430

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !431
  br label %return, !dbg !431

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !432
  %cmp36 = icmp ule i64 %14, 2048, !dbg !434
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !435

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !436
  br label %return, !dbg !436

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !437
  %cmp39 = icmp ule i64 %15, 4096, !dbg !439
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !440

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !441
  br label %return, !dbg !441

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !442
  %cmp42 = icmp ule i64 %16, 8192, !dbg !444
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !445

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !446
  br label %return, !dbg !446

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !447
  %cmp45 = icmp ule i64 %17, 16384, !dbg !449
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !450

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !451
  br label %return, !dbg !451

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !452
  %cmp48 = icmp ule i64 %18, 32768, !dbg !454
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !455

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !456
  br label %return, !dbg !456

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !457
  %cmp51 = icmp ule i64 %19, 65536, !dbg !459
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !460

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !461
  br label %return, !dbg !461

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !462
  %cmp54 = icmp ule i64 %20, 131072, !dbg !464
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !465

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !466
  br label %return, !dbg !466

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !467
  %cmp57 = icmp ule i64 %21, 262144, !dbg !469
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !470

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !471
  br label %return, !dbg !471

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !472
  %cmp60 = icmp ule i64 %22, 524288, !dbg !474
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !475

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !476
  br label %return, !dbg !476

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !477
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !479
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !480

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !481
  br label %return, !dbg !481

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !482
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !484
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !485

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !486
  br label %return, !dbg !486

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !487, !range !489, !noundef !490
  %tobool69 = trunc i8 %25 to i1, !dbg !487
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !491

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !492

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #16, !dbg !493, !srcloc !496
  unreachable, !dbg !493

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !497

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !498

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !499

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !501

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !499

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #12, !dbg !503, !srcloc !505
  br label %do.end75, !dbg !503

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !499

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !506
  br label %return, !dbg !506

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !507
  ret i32 %26, !dbg !507
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !508 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !514 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !518, metadata !DIExpression()), !dbg !520
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !519, metadata !DIExpression()), !dbg !521
  %0 = load i32, ptr %flags.addr, align 4, !dbg !522
  %and = and i32 %0, 17, !dbg !522
  %cmp = icmp eq i32 %and, 0, !dbg !522
  %lnot = xor i1 %cmp, true, !dbg !522
  %lnot1 = xor i1 %lnot, true, !dbg !522
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !522
  %conv = sext i32 %lnot.ext to i64, !dbg !522
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !522
  %tobool = icmp ne i64 %expval, 0, !dbg !522
  br i1 %tobool, label %if.then, label %if.end, !dbg !524

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !525
  br label %return, !dbg !525

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !526
  %and2 = and i32 %1, 1, !dbg !528
  %tobool3 = icmp ne i32 %and2, 0, !dbg !528
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !529

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !530
  br label %return, !dbg !530

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !531
  br label %return, !dbg !531

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !533
  ret i32 %2, !dbg !533
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !534 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !535 dso_local void @__compiletime_assert_173() #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #6 align 16 !dbg !538 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !540, metadata !DIExpression()), !dbg !542
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #12, !dbg !543, !srcloc !544
  %0 = load i64, ptr %flags, align 8, !dbg !545
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !546
  ret i64 %0, !dbg !547
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_hw_get_pci_device_info(ptr noundef %pci_id, ptr noundef %pci_device, ptr noundef %bus_number, ptr noundef %is_bridge) #0 align 16 !dbg !548 {
entry:
  %retval = alloca i32, align 4
  %pci_id.addr = alloca ptr, align 8
  %pci_device.addr = alloca ptr, align 8
  %bus_number.addr = alloca ptr, align 8
  %is_bridge.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %object_type = alloca i32, align 4
  %return_value = alloca i64, align 8
  %pci_value = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_id, ptr %pci_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_id.addr, metadata !554, metadata !DIExpression()), !dbg !563
  store ptr %pci_device, ptr %pci_device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_device.addr, metadata !555, metadata !DIExpression()), !dbg !564
  store ptr %bus_number, ptr %bus_number.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus_number.addr, metadata !556, metadata !DIExpression()), !dbg !565
  store ptr %is_bridge, ptr %is_bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %is_bridge.addr, metadata !557, metadata !DIExpression()), !dbg !566
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #12, !dbg !567
  call void @llvm.dbg.declare(metadata ptr %status, metadata !558, metadata !DIExpression()), !dbg !568
  call void @llvm.lifetime.start.p0(i64 4, ptr %object_type) #12, !dbg !569
  call void @llvm.dbg.declare(metadata ptr %object_type, metadata !559, metadata !DIExpression()), !dbg !570
  call void @llvm.lifetime.start.p0(i64 8, ptr %return_value) #12, !dbg !571
  call void @llvm.dbg.declare(metadata ptr %return_value, metadata !561, metadata !DIExpression()), !dbg !572
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_value) #12, !dbg !573
  call void @llvm.dbg.declare(metadata ptr %pci_value, metadata !562, metadata !DIExpression()), !dbg !574
  %0 = load ptr, ptr %pci_device.addr, align 8, !dbg !575
  %call = call i32 @acpi_get_type(ptr noundef %0, ptr noundef %object_type) #13, !dbg !576
  store i32 %call, ptr %status, align 4, !dbg !577
  %1 = load i32, ptr %status, align 4, !dbg !578
  %tobool = icmp ne i32 %1, 0, !dbg !578
  br i1 %tobool, label %if.then, label %if.end, !dbg !580

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %status, align 4, !dbg !581
  store i32 %2, ptr %retval, align 4, !dbg !583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !583

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %object_type, align 4, !dbg !584
  %cmp = icmp ne i32 %3, 6, !dbg !586
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !587

if.then1:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !588

if.end2:                                          ; preds = %if.end
  %4 = load ptr, ptr %pci_device.addr, align 8, !dbg !590
  %call3 = call i32 @acpi_ut_evaluate_numeric_object(ptr noundef @.str.1, ptr noundef %4, ptr noundef %return_value) #13, !dbg !591
  store i32 %call3, ptr %status, align 4, !dbg !592
  %5 = load i32, ptr %status, align 4, !dbg !593
  %tobool4 = icmp ne i32 %5, 0, !dbg !593
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !595

if.then5:                                         ; preds = %if.end2
  store i32 0, ptr %retval, align 4, !dbg !596
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !596

if.end6:                                          ; preds = %if.end2
  %6 = load i64, ptr %return_value, align 8, !dbg !598
  %conv = trunc i64 %6 to i32, !dbg !598
  %shr = lshr i32 %conv, 16, !dbg !598
  %conv7 = trunc i32 %shr to i16, !dbg !598
  %7 = load ptr, ptr %pci_id.addr, align 8, !dbg !599
  %device = getelementptr inbounds %struct.acpi_pci_id, ptr %7, i32 0, i32 2, !dbg !600
  store i16 %conv7, ptr %device, align 2, !dbg !601
  %8 = load i64, ptr %return_value, align 8, !dbg !602
  %conv8 = trunc i64 %8 to i32, !dbg !602
  %conv9 = trunc i32 %conv8 to i16, !dbg !602
  %9 = load ptr, ptr %pci_id.addr, align 8, !dbg !603
  %function = getelementptr inbounds %struct.acpi_pci_id, ptr %9, i32 0, i32 3, !dbg !604
  store i16 %conv9, ptr %function, align 2, !dbg !605
  %10 = load ptr, ptr %is_bridge.addr, align 8, !dbg !606
  %11 = load i8, ptr %10, align 1, !dbg !608
  %tobool10 = icmp ne i8 %11, 0, !dbg !608
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !609

if.then11:                                        ; preds = %if.end6
  %12 = load ptr, ptr %bus_number.addr, align 8, !dbg !610
  %13 = load i16, ptr %12, align 2, !dbg !612
  %14 = load ptr, ptr %pci_id.addr, align 8, !dbg !613
  %bus = getelementptr inbounds %struct.acpi_pci_id, ptr %14, i32 0, i32 1, !dbg !614
  store i16 %13, ptr %bus, align 2, !dbg !615
  br label %if.end12, !dbg !616

if.end12:                                         ; preds = %if.then11, %if.end6
  %15 = load ptr, ptr %is_bridge.addr, align 8, !dbg !617
  store i8 0, ptr %15, align 1, !dbg !618
  %16 = load ptr, ptr %pci_id.addr, align 8, !dbg !619
  %call13 = call i32 @acpi_os_read_pci_configuration(ptr noundef %16, i32 noundef 14, ptr noundef %pci_value, i32 noundef 8) #13, !dbg !620
  store i32 %call13, ptr %status, align 4, !dbg !621
  %17 = load i32, ptr %status, align 4, !dbg !622
  %tobool14 = icmp ne i32 %17, 0, !dbg !622
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !624

if.then15:                                        ; preds = %if.end12
  %18 = load i32, ptr %status, align 4, !dbg !625
  store i32 %18, ptr %retval, align 4, !dbg !627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !627

if.end16:                                         ; preds = %if.end12
  %19 = load i64, ptr %pci_value, align 8, !dbg !628
  %and = and i64 %19, 127, !dbg !628
  store i64 %and, ptr %pci_value, align 8, !dbg !628
  %20 = load i64, ptr %pci_value, align 8, !dbg !629
  %cmp17 = icmp ne i64 %20, 1, !dbg !631
  br i1 %cmp17, label %land.lhs.true, label %if.end22, !dbg !632

land.lhs.true:                                    ; preds = %if.end16
  %21 = load i64, ptr %pci_value, align 8, !dbg !633
  %cmp19 = icmp ne i64 %21, 2, !dbg !634
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !635

if.then21:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !636

if.end22:                                         ; preds = %land.lhs.true, %if.end16
  %22 = load ptr, ptr %pci_id.addr, align 8, !dbg !638
  %call23 = call i32 @acpi_os_read_pci_configuration(ptr noundef %22, i32 noundef 24, ptr noundef %pci_value, i32 noundef 8) #13, !dbg !639
  store i32 %call23, ptr %status, align 4, !dbg !640
  %23 = load i32, ptr %status, align 4, !dbg !641
  %tobool24 = icmp ne i32 %23, 0, !dbg !641
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !643

if.then25:                                        ; preds = %if.end22
  %24 = load i32, ptr %status, align 4, !dbg !644
  store i32 %24, ptr %retval, align 4, !dbg !646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !646

if.end26:                                         ; preds = %if.end22
  %25 = load ptr, ptr %is_bridge.addr, align 8, !dbg !647
  store i8 1, ptr %25, align 1, !dbg !648
  %26 = load i64, ptr %pci_value, align 8, !dbg !649
  %conv27 = trunc i64 %26 to i16, !dbg !650
  %27 = load ptr, ptr %pci_id.addr, align 8, !dbg !651
  %bus28 = getelementptr inbounds %struct.acpi_pci_id, ptr %27, i32 0, i32 1, !dbg !652
  store i16 %conv27, ptr %bus28, align 2, !dbg !653
  %28 = load ptr, ptr %pci_id.addr, align 8, !dbg !654
  %call29 = call i32 @acpi_os_read_pci_configuration(ptr noundef %28, i32 noundef 25, ptr noundef %pci_value, i32 noundef 8) #13, !dbg !655
  store i32 %call29, ptr %status, align 4, !dbg !656
  %29 = load i32, ptr %status, align 4, !dbg !657
  %tobool30 = icmp ne i32 %29, 0, !dbg !657
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !659

if.then31:                                        ; preds = %if.end26
  %30 = load i32, ptr %status, align 4, !dbg !660
  store i32 %30, ptr %retval, align 4, !dbg !662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !662

if.end32:                                         ; preds = %if.end26
  %31 = load i64, ptr %pci_value, align 8, !dbg !663
  %conv33 = trunc i64 %31 to i16, !dbg !664
  %32 = load ptr, ptr %bus_number.addr, align 8, !dbg !665
  store i16 %conv33, ptr %32, align 2, !dbg !666
  store i32 0, ptr %retval, align 4, !dbg !667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !667

cleanup:                                          ; preds = %if.end32, %if.then31, %if.then25, %if.then21, %if.then15, %if.then5, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_value) #12, !dbg !668
  call void @llvm.lifetime.end.p0(i64 8, ptr %return_value) #12, !dbg !668
  call void @llvm.lifetime.end.p0(i64 4, ptr %object_type) #12, !dbg !668
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #12, !dbg !668
  %33 = load i32, ptr %retval, align 4, !dbg !668
  ret i32 %33, !dbg !668
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !669 dso_local i32 @acpi_get_type(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !673 dso_local i32 @acpi_ut_evaluate_numeric_object(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1436 dso_local i32 @acpi_os_read_pci_configuration(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #4 align 16 !dbg !1440 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !1444, metadata !DIExpression()), !dbg !1445
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !1446
  call void @kfree(ptr noundef %0) #13, !dbg !1447
  ret void, !dbg !1448
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1449 dso_local void @kfree(ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { noredzone allocsize(0) }
attributes #15 = { noredzone allocsize(2) }
attributes #16 = { noredzone noreturn }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 318, type: !10, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "drivers/acpi/acpica/hwpci.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eac9358b685f83629b379609c8df5e8b")
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !11)
!11 = !{!12}
!12 = !DISubrange(count: 5)
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !9, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.hwpci.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22hwpci\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/hwpci.ll drivers/acpi/acpica/hwpci.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !30, globals: !47, splitDebugInlining: false, nameTableKind: None)
!14 = !{!15, !21}
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 10, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "false", value: 0)
!20 = !DIEnumerator(name: "true", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !2, line: 364, baseType: !17, size: 32, elements: !22)
!22 = !{!23, !24, !25, !26, !27, !28, !29}
!23 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!24 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!25 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!26 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!27 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!28 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!29 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!30 = !{!31, !37, !41, !43, !44, !33, !38}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !32, line: 421, baseType: !33)
!32 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !34, line: 21, baseType: !35)
!34 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !36, line: 27, baseType: !17)
!36 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !32, line: 127, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !34, line: 23, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !36, line: 31, baseType: !40)
!40 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !42, line: 154, baseType: !17)
!42 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !34, line: 19, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !36, line: 24, baseType: !46)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !{!0, !7}
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 8, !"cf-protection-branch", i32 1}
!52 = !{i32 4, !"function_return_thunk_extern", i32 1}
!53 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!54 = !{i32 1, !"Code Model", i32 2}
!55 = !{i32 1, !"override-stack-alignment", i32 8}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = distinct !DISubprogram(name: "acpi_hw_derive_pci_id", scope: !9, file: !9, line: 86, type: !58, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !69)
!58 = !DISubroutineType(types: !59)
!59 = !{!31, !60, !67, !67}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_id", file: !32, line: 1221, size: 64, elements: !62)
!62 = !{!63, !64, !65, !66}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !61, file: !32, line: 1222, baseType: !44, size: 16)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !61, file: !32, line: 1223, baseType: !44, size: 16, offset: 16)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !61, file: !32, line: 1224, baseType: !44, size: 16, offset: 32)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !61, file: !32, line: 1225, baseType: !44, size: 16, offset: 48)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !32, line: 424, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !{!70, !71, !72, !73, !74}
!70 = !DILocalVariable(name: "pci_id", arg: 1, scope: !57, file: !9, line: 86, type: !60)
!71 = !DILocalVariable(name: "root_pci_device", arg: 2, scope: !57, file: !9, line: 87, type: !67)
!72 = !DILocalVariable(name: "pci_region", arg: 3, scope: !57, file: !9, line: 87, type: !67)
!73 = !DILocalVariable(name: "status", scope: !57, file: !9, line: 89, type: !31)
!74 = !DILocalVariable(name: "list_head", scope: !57, file: !9, line: 90, type: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pci_device", file: !9, line: 22, size: 128, elements: !77)
!77 = !{!78, !79}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !76, file: !9, line: 23, baseType: !67, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !76, file: !9, line: 24, baseType: !75, size: 64, offset: 64)
!80 = !DILocation(line: 86, column: 43, scope: !57)
!81 = !DILocation(line: 87, column: 21, scope: !57)
!82 = !DILocation(line: 87, column: 50, scope: !57)
!83 = !DILocation(line: 89, column: 2, scope: !57)
!84 = !DILocation(line: 89, column: 14, scope: !57)
!85 = !DILocation(line: 90, column: 2, scope: !57)
!86 = !DILocation(line: 90, column: 26, scope: !57)
!87 = !DILocation(line: 94, column: 7, scope: !88)
!88 = distinct !DILexicalBlock(scope: !57, file: !9, line: 94, column: 6)
!89 = !DILocation(line: 94, column: 6, scope: !57)
!90 = !DILocation(line: 95, column: 3, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !9, line: 94, column: 15)
!92 = !DILocation(line: 101, column: 29, scope: !57)
!93 = !DILocation(line: 101, column: 46, scope: !57)
!94 = !DILocation(line: 101, column: 6, scope: !57)
!95 = !DILocation(line: 100, column: 9, scope: !57)
!96 = !DILocation(line: 102, column: 6, scope: !97)
!97 = distinct !DILexicalBlock(scope: !57, file: !9, line: 102, column: 6)
!98 = !DILocation(line: 102, column: 6, scope: !57)
!99 = !DILocation(line: 106, column: 37, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !9, line: 102, column: 28)
!101 = !DILocation(line: 106, column: 45, scope: !100)
!102 = !DILocation(line: 106, column: 12, scope: !100)
!103 = !DILocation(line: 106, column: 10, scope: !100)
!104 = !DILocation(line: 110, column: 27, scope: !100)
!105 = !DILocation(line: 110, column: 3, scope: !100)
!106 = !DILocation(line: 111, column: 2, scope: !100)
!107 = !DILocation(line: 113, column: 2, scope: !57)
!108 = !DILocation(line: 114, column: 1, scope: !57)
!109 = distinct !DISubprogram(name: "acpi_hw_build_pci_list", scope: !9, file: !9, line: 136, type: !110, scopeLine: 139, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !113)
!110 = !DISubroutineType(types: !111)
!111 = !{!31, !67, !67, !112}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!113 = !{!114, !115, !116, !117, !118, !119, !120}
!114 = !DILocalVariable(name: "root_pci_device", arg: 1, scope: !109, file: !9, line: 136, type: !67)
!115 = !DILocalVariable(name: "pci_region", arg: 2, scope: !109, file: !9, line: 137, type: !67)
!116 = !DILocalVariable(name: "return_list_head", arg: 3, scope: !109, file: !9, line: 138, type: !112)
!117 = !DILocalVariable(name: "current_device", scope: !109, file: !9, line: 140, type: !67)
!118 = !DILocalVariable(name: "parent_device", scope: !109, file: !9, line: 141, type: !67)
!119 = !DILocalVariable(name: "status", scope: !109, file: !9, line: 142, type: !31)
!120 = !DILocalVariable(name: "list_element", scope: !109, file: !9, line: 143, type: !75)
!121 = !DILocation(line: 136, column: 36, scope: !109)
!122 = !DILocation(line: 137, column: 22, scope: !109)
!123 = !DILocation(line: 138, column: 35, scope: !109)
!124 = !DILocation(line: 140, column: 2, scope: !109)
!125 = !DILocation(line: 140, column: 14, scope: !109)
!126 = !DILocation(line: 141, column: 2, scope: !109)
!127 = !DILocation(line: 141, column: 14, scope: !109)
!128 = !DILocation(line: 142, column: 2, scope: !109)
!129 = !DILocation(line: 142, column: 14, scope: !109)
!130 = !DILocation(line: 143, column: 2, scope: !109)
!131 = !DILocation(line: 143, column: 26, scope: !109)
!132 = !DILocation(line: 150, column: 3, scope: !109)
!133 = !DILocation(line: 150, column: 20, scope: !109)
!134 = !DILocation(line: 151, column: 19, scope: !109)
!135 = !DILocation(line: 151, column: 17, scope: !109)
!136 = !DILocation(line: 152, column: 2, scope: !109)
!137 = !DILocation(line: 153, column: 28, scope: !138)
!138 = distinct !DILexicalBlock(scope: !109, file: !9, line: 152, column: 12)
!139 = !DILocation(line: 153, column: 12, scope: !138)
!140 = !DILocation(line: 153, column: 10, scope: !138)
!141 = !DILocation(line: 154, column: 7, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !9, line: 154, column: 7)
!143 = !DILocation(line: 154, column: 7, scope: !138)
!144 = !DILocation(line: 158, column: 29, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !9, line: 154, column: 29)
!146 = !DILocation(line: 158, column: 28, scope: !145)
!147 = !DILocation(line: 158, column: 4, scope: !145)
!148 = !DILocation(line: 159, column: 12, scope: !145)
!149 = !DILocation(line: 159, column: 4, scope: !145)
!150 = !DILocation(line: 164, column: 7, scope: !151)
!151 = distinct !DILexicalBlock(scope: !138, file: !9, line: 164, column: 7)
!152 = !DILocation(line: 164, column: 24, scope: !151)
!153 = !DILocation(line: 164, column: 21, scope: !151)
!154 = !DILocation(line: 164, column: 7, scope: !138)
!155 = !DILocation(line: 165, column: 4, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !9, line: 164, column: 41)
!157 = !DILocation(line: 168, column: 18, scope: !138)
!158 = !DILocation(line: 168, column: 16, scope: !138)
!159 = !DILocation(line: 169, column: 8, scope: !160)
!160 = distinct !DILexicalBlock(scope: !138, file: !9, line: 169, column: 7)
!161 = !DILocation(line: 169, column: 7, scope: !138)
!162 = !DILocation(line: 173, column: 29, scope: !163)
!163 = distinct !DILexicalBlock(scope: !160, file: !9, line: 169, column: 22)
!164 = !DILocation(line: 173, column: 28, scope: !163)
!165 = !DILocation(line: 173, column: 4, scope: !163)
!166 = !DILocation(line: 174, column: 4, scope: !163)
!167 = !DILocation(line: 179, column: 25, scope: !138)
!168 = !DILocation(line: 179, column: 24, scope: !138)
!169 = !DILocation(line: 179, column: 3, scope: !138)
!170 = !DILocation(line: 179, column: 17, scope: !138)
!171 = !DILocation(line: 179, column: 22, scope: !138)
!172 = !DILocation(line: 180, column: 26, scope: !138)
!173 = !DILocation(line: 180, column: 3, scope: !138)
!174 = !DILocation(line: 180, column: 17, scope: !138)
!175 = !DILocation(line: 180, column: 24, scope: !138)
!176 = !DILocation(line: 181, column: 23, scope: !138)
!177 = !DILocation(line: 181, column: 4, scope: !138)
!178 = !DILocation(line: 181, column: 21, scope: !138)
!179 = !DILocation(line: 183, column: 20, scope: !138)
!180 = !DILocation(line: 183, column: 18, scope: !138)
!181 = distinct !{!181, !136, !182, !183}
!182 = !DILocation(line: 184, column: 2, scope: !109)
!183 = !{!"llvm.loop.unroll.disable"}
!184 = !DILocation(line: 185, column: 1, scope: !109)
!185 = distinct !DISubprogram(name: "acpi_hw_process_pci_list", scope: !9, file: !9, line: 205, type: !186, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !188)
!186 = !DISubroutineType(types: !187)
!187 = !{!31, !60, !75}
!188 = !{!189, !190, !191, !192, !193, !194}
!189 = !DILocalVariable(name: "pci_id", arg: 1, scope: !185, file: !9, line: 205, type: !60)
!190 = !DILocalVariable(name: "list_head", arg: 2, scope: !185, file: !9, line: 206, type: !75)
!191 = !DILocalVariable(name: "status", scope: !185, file: !9, line: 208, type: !31)
!192 = !DILocalVariable(name: "info", scope: !185, file: !9, line: 209, type: !75)
!193 = !DILocalVariable(name: "bus_number", scope: !185, file: !9, line: 210, type: !44)
!194 = !DILocalVariable(name: "is_bridge", scope: !185, file: !9, line: 211, type: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !34, line: 17, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !36, line: 21, baseType: !197)
!197 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!198 = !DILocation(line: 205, column: 46, scope: !185)
!199 = !DILocation(line: 206, column: 29, scope: !185)
!200 = !DILocation(line: 208, column: 2, scope: !185)
!201 = !DILocation(line: 208, column: 14, scope: !185)
!202 = !DILocation(line: 209, column: 2, scope: !185)
!203 = !DILocation(line: 209, column: 26, scope: !185)
!204 = !DILocation(line: 210, column: 2, scope: !185)
!205 = !DILocation(line: 210, column: 6, scope: !185)
!206 = !DILocation(line: 211, column: 2, scope: !185)
!207 = !DILocation(line: 211, column: 5, scope: !185)
!208 = !DILocation(line: 220, column: 15, scope: !185)
!209 = !DILocation(line: 220, column: 23, scope: !185)
!210 = !DILocation(line: 220, column: 13, scope: !185)
!211 = !DILocation(line: 229, column: 9, scope: !185)
!212 = !DILocation(line: 229, column: 7, scope: !185)
!213 = !DILocation(line: 230, column: 2, scope: !185)
!214 = !DILocation(line: 230, column: 9, scope: !185)
!215 = !DILocation(line: 231, column: 40, scope: !216)
!216 = distinct !DILexicalBlock(scope: !185, file: !9, line: 230, column: 15)
!217 = !DILocation(line: 231, column: 48, scope: !216)
!218 = !DILocation(line: 231, column: 54, scope: !216)
!219 = !DILocation(line: 231, column: 12, scope: !216)
!220 = !DILocation(line: 231, column: 10, scope: !216)
!221 = !DILocation(line: 233, column: 7, scope: !222)
!222 = distinct !DILexicalBlock(scope: !216, file: !9, line: 233, column: 7)
!223 = !DILocation(line: 233, column: 7, scope: !216)
!224 = !DILocation(line: 234, column: 12, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !9, line: 233, column: 29)
!226 = !DILocation(line: 234, column: 4, scope: !225)
!227 = !DILocation(line: 237, column: 10, scope: !216)
!228 = !DILocation(line: 237, column: 16, scope: !216)
!229 = !DILocation(line: 237, column: 8, scope: !216)
!230 = distinct !{!230, !213, !231, !232, !183}
!231 = !DILocation(line: 238, column: 2, scope: !185)
!232 = !{!"llvm.loop.mustprogress"}
!233 = !DILocation(line: 246, column: 2, scope: !185)
!234 = !DILocation(line: 247, column: 1, scope: !185)
!235 = distinct !DISubprogram(name: "acpi_hw_delete_pci_list", scope: !9, file: !9, line: 262, type: !236, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !75}
!238 = !{!239, !240, !241}
!239 = !DILocalVariable(name: "list_head", arg: 1, scope: !235, file: !9, line: 262, type: !75)
!240 = !DILocalVariable(name: "next", scope: !235, file: !9, line: 264, type: !75)
!241 = !DILocalVariable(name: "previous", scope: !235, file: !9, line: 265, type: !75)
!242 = !DILocation(line: 262, column: 61, scope: !235)
!243 = !DILocation(line: 264, column: 2, scope: !235)
!244 = !DILocation(line: 264, column: 26, scope: !235)
!245 = !DILocation(line: 265, column: 2, scope: !235)
!246 = !DILocation(line: 265, column: 26, scope: !235)
!247 = !DILocation(line: 267, column: 9, scope: !235)
!248 = !DILocation(line: 267, column: 7, scope: !235)
!249 = !DILocation(line: 268, column: 2, scope: !235)
!250 = !DILocation(line: 268, column: 9, scope: !235)
!251 = !DILocation(line: 269, column: 14, scope: !252)
!252 = distinct !DILexicalBlock(scope: !235, file: !9, line: 268, column: 15)
!253 = !DILocation(line: 269, column: 12, scope: !252)
!254 = !DILocation(line: 270, column: 10, scope: !252)
!255 = !DILocation(line: 270, column: 20, scope: !252)
!256 = !DILocation(line: 270, column: 8, scope: !252)
!257 = !DILocation(line: 271, column: 3, scope: !252)
!258 = distinct !{!258, !249, !259, !232, !183}
!259 = !DILocation(line: 272, column: 2, scope: !235)
!260 = !DILocation(line: 273, column: 1, scope: !235)
!261 = !DISubprogram(name: "acpi_get_parent", scope: !262, file: !262, line: 581, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!262 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!263 = !DISubroutineType(types: !264)
!264 = !{!31, !67, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!266 = distinct !DISubprogram(name: "acpi_os_allocate", scope: !267, file: !267, line: 50, type: !268, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !270)
!267 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!268 = !DISubroutineType(types: !269)
!269 = !{!68, !37}
!270 = !{!271, !272, !274, !277, !278, !281}
!271 = !DILocalVariable(name: "size", arg: 1, scope: !266, file: !267, line: 50, type: !37)
!272 = !DILocalVariable(name: "_flags", scope: !273, file: !267, line: 52, type: !43)
!273 = distinct !DILexicalBlock(scope: !266, file: !267, line: 52, column: 23)
!274 = !DILocalVariable(name: "__dummy", scope: !275, file: !267, line: 52, type: !43)
!275 = distinct !DILexicalBlock(scope: !276, file: !267, line: 52, column: 23)
!276 = distinct !DILexicalBlock(scope: !273, file: !267, line: 52, column: 23)
!277 = !DILocalVariable(name: "__dummy2", scope: !275, file: !267, line: 52, type: !43)
!278 = !DILocalVariable(name: "__dummy", scope: !279, file: !267, line: 52, type: !43)
!279 = distinct !DILexicalBlock(scope: !280, file: !267, line: 52, column: 23)
!280 = distinct !DILexicalBlock(scope: !273, file: !267, line: 52, column: 23)
!281 = !DILocalVariable(name: "__dummy2", scope: !279, file: !267, line: 52, type: !43)
!282 = !DILocation(line: 50, column: 48, scope: !266)
!283 = !DILocation(line: 52, column: 17, scope: !266)
!284 = !DILocation(line: 52, column: 23, scope: !273)
!285 = !DILocation(line: 52, column: 23, scope: !275)
!286 = !DILocation(line: 52, column: 23, scope: !276)
!287 = !DILocation(line: 52, column: 23, scope: !279)
!288 = !DILocation(line: 52, column: 23, scope: !280)
!289 = !DILocation(line: 52, column: 23, scope: !266)
!290 = !DILocation(line: 52, column: 9, scope: !266)
!291 = !DILocation(line: 52, column: 2, scope: !266)
!292 = distinct !DISubprogram(name: "kmalloc", scope: !2, file: !2, line: 591, type: !293, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !299)
!293 = !DISubroutineType(types: !294)
!294 = !{!68, !295, !41}
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 61, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !297, line: 72, baseType: !298)
!297 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !297, line: 16, baseType: !43)
!299 = !{!300, !301, !302}
!300 = !DILocalVariable(name: "size", arg: 1, scope: !292, file: !2, line: 591, type: !295)
!301 = !DILocalVariable(name: "flags", arg: 2, scope: !292, file: !2, line: 591, type: !41)
!302 = !DILocalVariable(name: "index", scope: !303, file: !2, line: 594, type: !17)
!303 = distinct !DILexicalBlock(scope: !304, file: !2, line: 593, column: 42)
!304 = distinct !DILexicalBlock(scope: !292, file: !2, line: 593, column: 6)
!305 = !DILocation(line: 591, column: 61, scope: !292)
!306 = !DILocation(line: 591, column: 73, scope: !292)
!307 = !DILocation(line: 593, column: 27, scope: !304)
!308 = !DILocation(line: 593, column: 6, scope: !304)
!309 = !DILocation(line: 593, column: 33, scope: !304)
!310 = !DILocation(line: 593, column: 36, scope: !304)
!311 = !DILocation(line: 593, column: 6, scope: !292)
!312 = !DILocation(line: 594, column: 3, scope: !303)
!313 = !DILocation(line: 594, column: 16, scope: !303)
!314 = !DILocation(line: 596, column: 7, scope: !315)
!315 = distinct !DILexicalBlock(scope: !303, file: !2, line: 596, column: 7)
!316 = !DILocation(line: 596, column: 12, scope: !315)
!317 = !DILocation(line: 596, column: 7, scope: !303)
!318 = !DILocation(line: 597, column: 25, scope: !315)
!319 = !DILocation(line: 597, column: 31, scope: !315)
!320 = !DILocation(line: 597, column: 11, scope: !315)
!321 = !DILocation(line: 597, column: 4, scope: !315)
!322 = !DILocation(line: 599, column: 11, scope: !303)
!323 = !DILocation(line: 599, column: 9, scope: !303)
!324 = !DILocation(line: 601, column: 33, scope: !303)
!325 = !DILocation(line: 601, column: 40, scope: !303)
!326 = !DILocation(line: 601, column: 20, scope: !303)
!327 = !DILocation(line: 601, column: 5, scope: !303)
!328 = !DILocation(line: 601, column: 51, scope: !303)
!329 = !DILocation(line: 602, column: 5, scope: !303)
!330 = !DILocation(line: 602, column: 12, scope: !303)
!331 = !DILocation(line: 600, column: 10, scope: !303)
!332 = !DILocation(line: 600, column: 3, scope: !303)
!333 = !DILocation(line: 603, column: 2, scope: !304)
!334 = !DILocation(line: 604, column: 19, scope: !292)
!335 = !DILocation(line: 604, column: 25, scope: !292)
!336 = !DILocation(line: 604, column: 9, scope: !292)
!337 = !DILocation(line: 604, column: 2, scope: !292)
!338 = !DILocation(line: 605, column: 1, scope: !292)
!339 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !340, file: !340, line: 65, type: !341, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13)
!340 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!341 = !DISubroutineType(types: !342)
!342 = !{!43}
!343 = !DILocation(line: 67, column: 9, scope: !339)
!344 = !DILocation(line: 67, column: 2, scope: !339)
!345 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !340, file: !340, line: 120, type: !346, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !349)
!346 = !DISubroutineType(types: !347)
!347 = !{!348, !43}
!348 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!349 = !{!350}
!350 = !DILocalVariable(name: "flags", arg: 1, scope: !345, file: !340, line: 120, type: !43)
!351 = !DILocation(line: 120, column: 67, scope: !345)
!352 = !DILocation(line: 122, column: 11, scope: !345)
!353 = !DILocation(line: 122, column: 17, scope: !345)
!354 = !DILocation(line: 122, column: 9, scope: !345)
!355 = !DILocation(line: 122, column: 2, scope: !345)
!356 = !DISubprogram(name: "kmalloc_large", scope: !2, file: !2, line: 531, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!357 = distinct !DISubprogram(name: "__kmalloc_index", scope: !2, file: !2, line: 444, type: !358, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !362)
!358 = !DISubroutineType(types: !359)
!359 = !{!17, !295, !360}
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !42, line: 35, baseType: !361)
!361 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!362 = !{!363, !364}
!363 = !DILocalVariable(name: "size", arg: 1, scope: !357, file: !2, line: 444, type: !295)
!364 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !357, file: !2, line: 445, type: !360)
!365 = !DILocation(line: 444, column: 60, scope: !357)
!366 = !DILocation(line: 445, column: 16, scope: !357)
!367 = !DILocation(line: 447, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !357, file: !2, line: 447, column: 6)
!369 = !DILocation(line: 447, column: 6, scope: !357)
!370 = !DILocation(line: 448, column: 3, scope: !368)
!371 = !DILocation(line: 450, column: 6, scope: !372)
!372 = distinct !DILexicalBlock(scope: !357, file: !2, line: 450, column: 6)
!373 = !DILocation(line: 450, column: 11, scope: !372)
!374 = !DILocation(line: 450, column: 6, scope: !357)
!375 = !DILocation(line: 451, column: 3, scope: !372)
!376 = !DILocation(line: 453, column: 32, scope: !377)
!377 = distinct !DILexicalBlock(scope: !357, file: !2, line: 453, column: 6)
!378 = !DILocation(line: 453, column: 37, scope: !377)
!379 = !DILocation(line: 453, column: 42, scope: !377)
!380 = !DILocation(line: 453, column: 45, scope: !377)
!381 = !DILocation(line: 453, column: 50, scope: !377)
!382 = !DILocation(line: 453, column: 6, scope: !357)
!383 = !DILocation(line: 454, column: 3, scope: !377)
!384 = !DILocation(line: 455, column: 32, scope: !385)
!385 = distinct !DILexicalBlock(scope: !357, file: !2, line: 455, column: 6)
!386 = !DILocation(line: 455, column: 37, scope: !385)
!387 = !DILocation(line: 455, column: 43, scope: !385)
!388 = !DILocation(line: 455, column: 46, scope: !385)
!389 = !DILocation(line: 455, column: 51, scope: !385)
!390 = !DILocation(line: 455, column: 6, scope: !357)
!391 = !DILocation(line: 456, column: 3, scope: !385)
!392 = !DILocation(line: 457, column: 6, scope: !393)
!393 = distinct !DILexicalBlock(scope: !357, file: !2, line: 457, column: 6)
!394 = !DILocation(line: 457, column: 11, scope: !393)
!395 = !DILocation(line: 457, column: 6, scope: !357)
!396 = !DILocation(line: 457, column: 26, scope: !393)
!397 = !DILocation(line: 458, column: 6, scope: !398)
!398 = distinct !DILexicalBlock(scope: !357, file: !2, line: 458, column: 6)
!399 = !DILocation(line: 458, column: 11, scope: !398)
!400 = !DILocation(line: 458, column: 6, scope: !357)
!401 = !DILocation(line: 458, column: 26, scope: !398)
!402 = !DILocation(line: 459, column: 6, scope: !403)
!403 = distinct !DILexicalBlock(scope: !357, file: !2, line: 459, column: 6)
!404 = !DILocation(line: 459, column: 11, scope: !403)
!405 = !DILocation(line: 459, column: 6, scope: !357)
!406 = !DILocation(line: 459, column: 26, scope: !403)
!407 = !DILocation(line: 460, column: 6, scope: !408)
!408 = distinct !DILexicalBlock(scope: !357, file: !2, line: 460, column: 6)
!409 = !DILocation(line: 460, column: 11, scope: !408)
!410 = !DILocation(line: 460, column: 6, scope: !357)
!411 = !DILocation(line: 460, column: 26, scope: !408)
!412 = !DILocation(line: 461, column: 6, scope: !413)
!413 = distinct !DILexicalBlock(scope: !357, file: !2, line: 461, column: 6)
!414 = !DILocation(line: 461, column: 11, scope: !413)
!415 = !DILocation(line: 461, column: 6, scope: !357)
!416 = !DILocation(line: 461, column: 26, scope: !413)
!417 = !DILocation(line: 462, column: 6, scope: !418)
!418 = distinct !DILexicalBlock(scope: !357, file: !2, line: 462, column: 6)
!419 = !DILocation(line: 462, column: 11, scope: !418)
!420 = !DILocation(line: 462, column: 6, scope: !357)
!421 = !DILocation(line: 462, column: 26, scope: !418)
!422 = !DILocation(line: 463, column: 6, scope: !423)
!423 = distinct !DILexicalBlock(scope: !357, file: !2, line: 463, column: 6)
!424 = !DILocation(line: 463, column: 11, scope: !423)
!425 = !DILocation(line: 463, column: 6, scope: !357)
!426 = !DILocation(line: 463, column: 26, scope: !423)
!427 = !DILocation(line: 464, column: 6, scope: !428)
!428 = distinct !DILexicalBlock(scope: !357, file: !2, line: 464, column: 6)
!429 = !DILocation(line: 464, column: 11, scope: !428)
!430 = !DILocation(line: 464, column: 6, scope: !357)
!431 = !DILocation(line: 464, column: 26, scope: !428)
!432 = !DILocation(line: 465, column: 6, scope: !433)
!433 = distinct !DILexicalBlock(scope: !357, file: !2, line: 465, column: 6)
!434 = !DILocation(line: 465, column: 11, scope: !433)
!435 = !DILocation(line: 465, column: 6, scope: !357)
!436 = !DILocation(line: 465, column: 26, scope: !433)
!437 = !DILocation(line: 466, column: 6, scope: !438)
!438 = distinct !DILexicalBlock(scope: !357, file: !2, line: 466, column: 6)
!439 = !DILocation(line: 466, column: 11, scope: !438)
!440 = !DILocation(line: 466, column: 6, scope: !357)
!441 = !DILocation(line: 466, column: 26, scope: !438)
!442 = !DILocation(line: 467, column: 6, scope: !443)
!443 = distinct !DILexicalBlock(scope: !357, file: !2, line: 467, column: 6)
!444 = !DILocation(line: 467, column: 11, scope: !443)
!445 = !DILocation(line: 467, column: 6, scope: !357)
!446 = !DILocation(line: 467, column: 26, scope: !443)
!447 = !DILocation(line: 468, column: 6, scope: !448)
!448 = distinct !DILexicalBlock(scope: !357, file: !2, line: 468, column: 6)
!449 = !DILocation(line: 468, column: 11, scope: !448)
!450 = !DILocation(line: 468, column: 6, scope: !357)
!451 = !DILocation(line: 468, column: 26, scope: !448)
!452 = !DILocation(line: 469, column: 6, scope: !453)
!453 = distinct !DILexicalBlock(scope: !357, file: !2, line: 469, column: 6)
!454 = !DILocation(line: 469, column: 11, scope: !453)
!455 = !DILocation(line: 469, column: 6, scope: !357)
!456 = !DILocation(line: 469, column: 26, scope: !453)
!457 = !DILocation(line: 470, column: 6, scope: !458)
!458 = distinct !DILexicalBlock(scope: !357, file: !2, line: 470, column: 6)
!459 = !DILocation(line: 470, column: 11, scope: !458)
!460 = !DILocation(line: 470, column: 6, scope: !357)
!461 = !DILocation(line: 470, column: 26, scope: !458)
!462 = !DILocation(line: 471, column: 6, scope: !463)
!463 = distinct !DILexicalBlock(scope: !357, file: !2, line: 471, column: 6)
!464 = !DILocation(line: 471, column: 11, scope: !463)
!465 = !DILocation(line: 471, column: 6, scope: !357)
!466 = !DILocation(line: 471, column: 26, scope: !463)
!467 = !DILocation(line: 472, column: 6, scope: !468)
!468 = distinct !DILexicalBlock(scope: !357, file: !2, line: 472, column: 6)
!469 = !DILocation(line: 472, column: 11, scope: !468)
!470 = !DILocation(line: 472, column: 6, scope: !357)
!471 = !DILocation(line: 472, column: 26, scope: !468)
!472 = !DILocation(line: 473, column: 6, scope: !473)
!473 = distinct !DILexicalBlock(scope: !357, file: !2, line: 473, column: 6)
!474 = !DILocation(line: 473, column: 11, scope: !473)
!475 = !DILocation(line: 473, column: 6, scope: !357)
!476 = !DILocation(line: 473, column: 26, scope: !473)
!477 = !DILocation(line: 474, column: 6, scope: !478)
!478 = distinct !DILexicalBlock(scope: !357, file: !2, line: 474, column: 6)
!479 = !DILocation(line: 474, column: 11, scope: !478)
!480 = !DILocation(line: 474, column: 6, scope: !357)
!481 = !DILocation(line: 474, column: 27, scope: !478)
!482 = !DILocation(line: 475, column: 6, scope: !483)
!483 = distinct !DILexicalBlock(scope: !357, file: !2, line: 475, column: 6)
!484 = !DILocation(line: 475, column: 11, scope: !483)
!485 = !DILocation(line: 475, column: 6, scope: !357)
!486 = !DILocation(line: 475, column: 32, scope: !483)
!487 = !DILocation(line: 477, column: 50, scope: !488)
!488 = distinct !DILexicalBlock(scope: !357, file: !2, line: 477, column: 6)
!489 = !{i8 0, i8 2}
!490 = !{}
!491 = !DILocation(line: 477, column: 6, scope: !357)
!492 = !DILocation(line: 478, column: 3, scope: !488)
!493 = !DILocation(line: 478, column: 3, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !2, line: 478, column: 3)
!495 = distinct !DILexicalBlock(scope: !488, file: !2, line: 478, column: 3)
!496 = !{i32 -2143037780}
!497 = !DILocation(line: 478, column: 3, scope: !495)
!498 = !DILocation(line: 480, column: 3, scope: !488)
!499 = !DILocation(line: 480, column: 3, scope: !500)
!500 = distinct !DILexicalBlock(scope: !488, file: !2, line: 480, column: 3)
!501 = !DILocation(line: 480, column: 3, scope: !502)
!502 = distinct !DILexicalBlock(scope: !500, file: !2, line: 480, column: 3)
!503 = !DILocation(line: 480, column: 3, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !2, line: 480, column: 3)
!505 = !{i64 2151929719, i64 2151929748, i64 2151929794, i64 2151929852, i64 2151929906, i64 2151929960, i64 2151930015, i64 2151930046}
!506 = !DILocation(line: 483, column: 2, scope: !357)
!507 = !DILocation(line: 484, column: 1, scope: !357)
!508 = !DISubprogram(name: "kmalloc_trace", scope: !2, file: !2, line: 525, type: !509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!509 = !DISubroutineType(types: !510)
!510 = !{!68, !511, !41, !295}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !513, line: 11, flags: DIFlagFwdDecl)
!513 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!514 = distinct !DISubprogram(name: "kmalloc_type", scope: !2, file: !2, line: 401, type: !515, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{!21, !41, !43}
!517 = !{!518, !519}
!518 = !DILocalVariable(name: "flags", arg: 1, scope: !514, file: !2, line: 401, type: !41)
!519 = !DILocalVariable(name: "caller", arg: 2, scope: !514, file: !2, line: 401, type: !43)
!520 = !DILocation(line: 401, column: 67, scope: !514)
!521 = !DILocation(line: 401, column: 88, scope: !514)
!522 = !DILocation(line: 407, column: 6, scope: !523)
!523 = distinct !DILexicalBlock(scope: !514, file: !2, line: 407, column: 6)
!524 = !DILocation(line: 407, column: 6, scope: !514)
!525 = !DILocation(line: 413, column: 3, scope: !523)
!526 = !DILocation(line: 423, column: 38, scope: !527)
!527 = distinct !DILexicalBlock(scope: !514, file: !2, line: 423, column: 6)
!528 = !DILocation(line: 423, column: 44, scope: !527)
!529 = !DILocation(line: 423, column: 6, scope: !514)
!530 = !DILocation(line: 424, column: 3, scope: !527)
!531 = !DILocation(line: 426, column: 3, scope: !532)
!532 = distinct !DILexicalBlock(scope: !514, file: !2, line: 425, column: 6)
!533 = !DILocation(line: 429, column: 1, scope: !514)
!534 = !DISubprogram(name: "__kmalloc", scope: !2, file: !2, line: 488, type: !293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!535 = !DISubprogram(name: "__compiletime_assert_173", scope: !2, file: !2, line: 478, type: !536, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!536 = !DISubroutineType(types: !537)
!537 = !{null}
!538 = distinct !DISubprogram(name: "native_save_fl", scope: !340, file: !340, line: 17, type: !341, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !539)
!539 = !{!540}
!540 = !DILocalVariable(name: "flags", scope: !538, file: !340, line: 19, type: !43)
!541 = !DILocation(line: 19, column: 2, scope: !538)
!542 = !DILocation(line: 19, column: 16, scope: !538)
!543 = !DILocation(line: 26, column: 2, scope: !538)
!544 = !{i64 1519638, i64 1519659}
!545 = !DILocation(line: 32, column: 9, scope: !538)
!546 = !DILocation(line: 33, column: 1, scope: !538)
!547 = !DILocation(line: 32, column: 2, scope: !538)
!548 = distinct !DISubprogram(name: "acpi_hw_get_pci_device_info", scope: !9, file: !9, line: 296, type: !549, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !553)
!549 = !DISubroutineType(types: !550)
!550 = !{!31, !60, !67, !551, !552}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!553 = !{!554, !555, !556, !557, !558, !559, !561, !562}
!554 = !DILocalVariable(name: "pci_id", arg: 1, scope: !548, file: !9, line: 296, type: !60)
!555 = !DILocalVariable(name: "pci_device", arg: 2, scope: !548, file: !9, line: 297, type: !67)
!556 = !DILocalVariable(name: "bus_number", arg: 3, scope: !548, file: !9, line: 298, type: !551)
!557 = !DILocalVariable(name: "is_bridge", arg: 4, scope: !548, file: !9, line: 298, type: !552)
!558 = !DILocalVariable(name: "status", scope: !548, file: !9, line: 300, type: !31)
!559 = !DILocalVariable(name: "object_type", scope: !548, file: !9, line: 301, type: !560)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !32, line: 644, baseType: !33)
!561 = !DILocalVariable(name: "return_value", scope: !548, file: !9, line: 302, type: !38)
!562 = !DILocalVariable(name: "pci_value", scope: !548, file: !9, line: 303, type: !38)
!563 = !DILocation(line: 296, column: 49, scope: !548)
!564 = !DILocation(line: 297, column: 20, scope: !548)
!565 = !DILocation(line: 298, column: 13, scope: !548)
!566 = !DILocation(line: 298, column: 29, scope: !548)
!567 = !DILocation(line: 300, column: 2, scope: !548)
!568 = !DILocation(line: 300, column: 14, scope: !548)
!569 = !DILocation(line: 301, column: 2, scope: !548)
!570 = !DILocation(line: 301, column: 19, scope: !548)
!571 = !DILocation(line: 302, column: 2, scope: !548)
!572 = !DILocation(line: 302, column: 6, scope: !548)
!573 = !DILocation(line: 303, column: 2, scope: !548)
!574 = !DILocation(line: 303, column: 6, scope: !548)
!575 = !DILocation(line: 307, column: 25, scope: !548)
!576 = !DILocation(line: 307, column: 11, scope: !548)
!577 = !DILocation(line: 307, column: 9, scope: !548)
!578 = !DILocation(line: 308, column: 6, scope: !579)
!579 = distinct !DILexicalBlock(scope: !548, file: !9, line: 308, column: 6)
!580 = !DILocation(line: 308, column: 6, scope: !548)
!581 = !DILocation(line: 309, column: 11, scope: !582)
!582 = distinct !DILexicalBlock(scope: !579, file: !9, line: 308, column: 28)
!583 = !DILocation(line: 309, column: 3, scope: !582)
!584 = !DILocation(line: 312, column: 6, scope: !585)
!585 = distinct !DILexicalBlock(scope: !548, file: !9, line: 312, column: 6)
!586 = !DILocation(line: 312, column: 18, scope: !585)
!587 = !DILocation(line: 312, column: 6, scope: !548)
!588 = !DILocation(line: 313, column: 3, scope: !589)
!589 = distinct !DILexicalBlock(scope: !585, file: !9, line: 312, column: 39)
!590 = !DILocation(line: 319, column: 8, scope: !548)
!591 = !DILocation(line: 318, column: 11, scope: !548)
!592 = !DILocation(line: 318, column: 9, scope: !548)
!593 = !DILocation(line: 320, column: 6, scope: !594)
!594 = distinct !DILexicalBlock(scope: !548, file: !9, line: 320, column: 6)
!595 = !DILocation(line: 320, column: 6, scope: !548)
!596 = !DILocation(line: 321, column: 3, scope: !597)
!597 = distinct !DILexicalBlock(scope: !594, file: !9, line: 320, column: 28)
!598 = !DILocation(line: 328, column: 19, scope: !548)
!599 = !DILocation(line: 328, column: 2, scope: !548)
!600 = !DILocation(line: 328, column: 10, scope: !548)
!601 = !DILocation(line: 328, column: 17, scope: !548)
!602 = !DILocation(line: 329, column: 21, scope: !548)
!603 = !DILocation(line: 329, column: 2, scope: !548)
!604 = !DILocation(line: 329, column: 10, scope: !548)
!605 = !DILocation(line: 329, column: 19, scope: !548)
!606 = !DILocation(line: 335, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !548, file: !9, line: 335, column: 6)
!608 = !DILocation(line: 335, column: 6, scope: !607)
!609 = !DILocation(line: 335, column: 6, scope: !548)
!610 = !DILocation(line: 336, column: 18, scope: !611)
!611 = distinct !DILexicalBlock(scope: !607, file: !9, line: 335, column: 18)
!612 = !DILocation(line: 336, column: 17, scope: !611)
!613 = !DILocation(line: 336, column: 3, scope: !611)
!614 = !DILocation(line: 336, column: 11, scope: !611)
!615 = !DILocation(line: 336, column: 15, scope: !611)
!616 = !DILocation(line: 337, column: 2, scope: !611)
!617 = !DILocation(line: 344, column: 3, scope: !548)
!618 = !DILocation(line: 344, column: 13, scope: !548)
!619 = !DILocation(line: 345, column: 42, scope: !548)
!620 = !DILocation(line: 345, column: 11, scope: !548)
!621 = !DILocation(line: 345, column: 9, scope: !548)
!622 = !DILocation(line: 348, column: 6, scope: !623)
!623 = distinct !DILexicalBlock(scope: !548, file: !9, line: 348, column: 6)
!624 = !DILocation(line: 348, column: 6, scope: !548)
!625 = !DILocation(line: 349, column: 11, scope: !626)
!626 = distinct !DILexicalBlock(scope: !623, file: !9, line: 348, column: 28)
!627 = !DILocation(line: 349, column: 3, scope: !626)
!628 = !DILocation(line: 354, column: 12, scope: !548)
!629 = !DILocation(line: 356, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !548, file: !9, line: 356, column: 6)
!631 = !DILocation(line: 356, column: 17, scope: !630)
!632 = !DILocation(line: 356, column: 37, scope: !630)
!633 = !DILocation(line: 357, column: 7, scope: !630)
!634 = !DILocation(line: 357, column: 17, scope: !630)
!635 = !DILocation(line: 356, column: 6, scope: !548)
!636 = !DILocation(line: 358, column: 3, scope: !637)
!637 = distinct !DILexicalBlock(scope: !630, file: !9, line: 357, column: 46)
!638 = !DILocation(line: 363, column: 42, scope: !548)
!639 = !DILocation(line: 363, column: 11, scope: !548)
!640 = !DILocation(line: 363, column: 9, scope: !548)
!641 = !DILocation(line: 366, column: 6, scope: !642)
!642 = distinct !DILexicalBlock(scope: !548, file: !9, line: 366, column: 6)
!643 = !DILocation(line: 366, column: 6, scope: !548)
!644 = !DILocation(line: 367, column: 11, scope: !645)
!645 = distinct !DILexicalBlock(scope: !642, file: !9, line: 366, column: 28)
!646 = !DILocation(line: 367, column: 3, scope: !645)
!647 = !DILocation(line: 370, column: 3, scope: !548)
!648 = !DILocation(line: 370, column: 13, scope: !548)
!649 = !DILocation(line: 371, column: 21, scope: !548)
!650 = !DILocation(line: 371, column: 16, scope: !548)
!651 = !DILocation(line: 371, column: 2, scope: !548)
!652 = !DILocation(line: 371, column: 10, scope: !548)
!653 = !DILocation(line: 371, column: 14, scope: !548)
!654 = !DILocation(line: 375, column: 42, scope: !548)
!655 = !DILocation(line: 375, column: 11, scope: !548)
!656 = !DILocation(line: 375, column: 9, scope: !548)
!657 = !DILocation(line: 378, column: 6, scope: !658)
!658 = distinct !DILexicalBlock(scope: !548, file: !9, line: 378, column: 6)
!659 = !DILocation(line: 378, column: 6, scope: !548)
!660 = !DILocation(line: 379, column: 11, scope: !661)
!661 = distinct !DILexicalBlock(scope: !658, file: !9, line: 378, column: 28)
!662 = !DILocation(line: 379, column: 3, scope: !661)
!663 = !DILocation(line: 382, column: 21, scope: !548)
!664 = !DILocation(line: 382, column: 16, scope: !548)
!665 = !DILocation(line: 382, column: 3, scope: !548)
!666 = !DILocation(line: 382, column: 14, scope: !548)
!667 = !DILocation(line: 383, column: 2, scope: !548)
!668 = !DILocation(line: 384, column: 1, scope: !548)
!669 = !DISubprogram(name: "acpi_get_type", scope: !262, file: !262, line: 577, type: !670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!670 = !DISubroutineType(types: !671)
!671 = !{!31, !67, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!673 = !DISubprogram(name: "acpi_ut_evaluate_numeric_object", scope: !674, file: !674, line: 387, type: !675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!674 = !DIFile(filename: "drivers/acpi/acpica/acutils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f71c9fadf2e087a21b704f3f1c06e12")
!675 = !DISubroutineType(types: !676)
!676 = !{!31, !677, !679, !1357}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_namespace_node", file: !681, line: 133, size: 384, elements: !682)
!681 = !DIFile(filename: "drivers/acpi/acpica/aclocal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14b3788967aae91231fc373a4e05d175")
!682 = !{!683, !1423, !1424, !1425, !1426, !1432, !1433, !1434, !1435}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !680, file: !681, line: 134, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_operand_object", file: !686, line: 369, size: 576, elements: !687)
!686 = !DIFile(filename: "drivers/acpi/acpica/acobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37e7fd2e44d58a9cc504bee8cb1bfd0a")
!687 = !{!688, !696, !709, !720, !733, !747, !756, !1072, !1089, !1105, !1118, !1196, !1208, !1222, !1232, !1250, !1272, !1291, !1310, !1329, !1342, !1369, !1386, !1399, !1413, !1422}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !685, file: !686, line: 370, baseType: !689, size: 128)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_common", file: !686, line: 73, size: 128, elements: !690)
!690 = !{!691, !692, !693, !694, !695}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !689, file: !686, line: 74, baseType: !684, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !689, file: !686, line: 74, baseType: !195, size: 8, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !686, line: 74, baseType: !195, size: 8, offset: 72)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !689, file: !686, line: 74, baseType: !44, size: 16, offset: 80)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !686, line: 74, baseType: !195, size: 8, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !685, file: !686, line: 371, baseType: !697, size: 192)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_integer", file: !686, line: 76, size: 192, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !708}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !697, file: !686, line: 77, baseType: !684, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !697, file: !686, line: 77, baseType: !195, size: 8, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !697, file: !686, line: 77, baseType: !195, size: 8, offset: 72)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !697, file: !686, line: 77, baseType: !44, size: 16, offset: 80)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !686, line: 77, baseType: !195, size: 8, offset: 96)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !697, file: !686, line: 77, baseType: !705, size: 24, offset: 104)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 24, elements: !706)
!706 = !{!707}
!707 = !DISubrange(count: 3)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !697, file: !686, line: 78, baseType: !38, size: 64, offset: 128)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !685, file: !686, line: 372, baseType: !710, size: 256)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_string", file: !686, line: 93, size: 256, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !719}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !710, file: !686, line: 94, baseType: !684, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !710, file: !686, line: 94, baseType: !195, size: 8, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !710, file: !686, line: 94, baseType: !195, size: 8, offset: 72)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !710, file: !686, line: 94, baseType: !44, size: 16, offset: 80)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !710, file: !686, line: 94, baseType: !195, size: 8, offset: 96)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !710, file: !686, line: 94, baseType: !718, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !710, file: !686, line: 94, baseType: !33, size: 32, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !685, file: !686, line: 373, baseType: !721, size: 384)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer", file: !686, line: 97, size: 384, elements: !722)
!722 = !{!723, !724, !725, !726, !727, !728, !729, !730, !731, !732}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !721, file: !686, line: 98, baseType: !684, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !721, file: !686, line: 98, baseType: !195, size: 8, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !721, file: !686, line: 98, baseType: !195, size: 8, offset: 72)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !721, file: !686, line: 98, baseType: !44, size: 16, offset: 80)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !686, line: 98, baseType: !195, size: 8, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !721, file: !686, line: 98, baseType: !552, size: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !721, file: !686, line: 98, baseType: !33, size: 32, offset: 192)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !721, file: !686, line: 99, baseType: !33, size: 32, offset: 224)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !721, file: !686, line: 100, baseType: !552, size: 64, offset: 256)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !721, file: !686, line: 101, baseType: !679, size: 64, offset: 320)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !685, file: !686, line: 374, baseType: !734, size: 384)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_package", file: !686, line: 104, size: 384, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !744, !745, !746}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !734, file: !686, line: 105, baseType: !684, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !734, file: !686, line: 105, baseType: !195, size: 8, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !686, line: 105, baseType: !195, size: 8, offset: 72)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !734, file: !686, line: 105, baseType: !44, size: 16, offset: 80)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !734, file: !686, line: 105, baseType: !195, size: 8, offset: 96)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !734, file: !686, line: 105, baseType: !679, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !734, file: !686, line: 106, baseType: !743, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !734, file: !686, line: 107, baseType: !552, size: 64, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !734, file: !686, line: 108, baseType: !33, size: 32, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !734, file: !686, line: 109, baseType: !33, size: 32, offset: 352)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !685, file: !686, line: 375, baseType: !748, size: 192)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_event", file: !686, line: 118, size: 192, elements: !749)
!749 = !{!750, !751, !752, !753, !754, !755}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !748, file: !686, line: 119, baseType: !684, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !748, file: !686, line: 119, baseType: !195, size: 8, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !748, file: !686, line: 119, baseType: !195, size: 8, offset: 72)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !748, file: !686, line: 119, baseType: !44, size: 16, offset: 80)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !686, line: 119, baseType: !195, size: 8, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "os_semaphore", scope: !748, file: !686, line: 119, baseType: !68, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "method", scope: !685, file: !686, line: 376, baseType: !757, size: 448)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_method", file: !686, line: 144, size: 448, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !1069, !1070, !1071}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !757, file: !686, line: 145, baseType: !684, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !757, file: !686, line: 145, baseType: !195, size: 8, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !757, file: !686, line: 145, baseType: !195, size: 8, offset: 72)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !757, file: !686, line: 145, baseType: !44, size: 16, offset: 80)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !757, file: !686, line: 145, baseType: !195, size: 8, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "info_flags", scope: !757, file: !686, line: 145, baseType: !195, size: 8, offset: 104)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !757, file: !686, line: 146, baseType: !195, size: 8, offset: 112)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !757, file: !686, line: 147, baseType: !195, size: 8, offset: 120)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !757, file: !686, line: 148, baseType: !684, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !757, file: !686, line: 149, baseType: !684, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !757, file: !686, line: 150, baseType: !552, size: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !757, file: !686, line: 154, baseType: !771, size: 64, offset: 320)
!771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !757, file: !686, line: 151, size: 64, elements: !772)
!772 = !{!773, !1068}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "implementation", scope: !771, file: !686, line: 152, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_internal_method", file: !681, line: 248, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!31, !778}
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_walk_state", file: !780, line: 37, size: 9024, elements: !781)
!780 = !DIFile(filename: "drivers/acpi/acpica/acstruct.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84bcf430dac5da66bc982aeae71b7963")
!781 = !{!782, !783, !784, !785, !786, !787, !788, !789, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !1014, !1015, !1016, !1017, !1018, !1022, !1024, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1060, !1066}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !779, file: !780, line: 38, baseType: !778, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !779, file: !780, line: 39, baseType: !195, size: 8, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "walk_type", scope: !779, file: !780, line: 40, baseType: !195, size: 8, offset: 72)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !779, file: !780, line: 41, baseType: !44, size: 16, offset: 80)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "next_op_info", scope: !779, file: !780, line: 42, baseType: !195, size: 8, offset: 96)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "num_operands", scope: !779, file: !780, line: 43, baseType: !195, size: 8, offset: 104)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "operand_index", scope: !779, file: !780, line: 44, baseType: !195, size: 8, offset: 112)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !779, file: !780, line: 45, baseType: !790, size: 16, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_owner_id", file: !32, line: 445, baseType: !44)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "last_predicate", scope: !779, file: !780, line: 46, baseType: !195, size: 8, offset: 144)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "current_result", scope: !779, file: !780, line: 47, baseType: !195, size: 8, offset: 152)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "return_used", scope: !779, file: !780, line: 48, baseType: !195, size: 8, offset: 160)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "scope_depth", scope: !779, file: !780, line: 49, baseType: !195, size: 8, offset: 168)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "pass_number", scope: !779, file: !780, line: 50, baseType: !195, size: 8, offset: 176)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "namespace_override", scope: !779, file: !780, line: 51, baseType: !195, size: 8, offset: 184)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "result_size", scope: !779, file: !780, line: 52, baseType: !195, size: 8, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "result_count", scope: !779, file: !780, line: 53, baseType: !195, size: 8, offset: 200)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !779, file: !780, line: 54, baseType: !552, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "arg_types", scope: !779, file: !780, line: 55, baseType: !33, size: 32, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "method_breakpoint", scope: !779, file: !780, line: 56, baseType: !33, size: 32, offset: 352)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "user_breakpoint", scope: !779, file: !780, line: 57, baseType: !33, size: 32, offset: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "parse_flags", scope: !779, file: !780, line: 58, baseType: !33, size: 32, offset: 416)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "parser_state", scope: !779, file: !780, line: 60, baseType: !805, size: 640, offset: 448)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_state", file: !681, line: 909, size: 640, elements: !806)
!806 = !{!807, !808, !809, !810, !811, !812, !896, !897, !1012, !1013}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !805, file: !681, line: 910, baseType: !552, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !805, file: !681, line: 911, baseType: !552, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "aml_end", scope: !805, file: !681, line: 912, baseType: !552, size: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_start", scope: !805, file: !681, line: 913, baseType: !552, size: 64, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !805, file: !681, line: 914, baseType: !552, size: 64, offset: 256)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "start_op", scope: !805, file: !681, line: 915, baseType: !813, size: 64, offset: 320)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_object", file: !681, line: 891, size: 1600, elements: !815)
!815 = !{!816, !836, !852}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !814, file: !681, line: 892, baseType: !817, size: 448)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_common", file: !681, line: 844, size: 448, elements: !818)
!818 = !{!819, !820, !821, !822, !823, !824, !825, !826, !835}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !817, file: !681, line: 845, baseType: !813, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !817, file: !681, line: 845, baseType: !195, size: 8, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !817, file: !681, line: 845, baseType: !195, size: 8, offset: 72)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !817, file: !681, line: 845, baseType: !44, size: 16, offset: 80)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !817, file: !681, line: 845, baseType: !552, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !817, file: !681, line: 845, baseType: !813, size: 64, offset: 192)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !817, file: !681, line: 845, baseType: !679, size: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !817, file: !681, line: 845, baseType: !827, size: 64, offset: 320)
!827 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_parse_value", file: !681, line: 732, size: 64, elements: !828)
!828 = !{!829, !830, !831, !832, !833, !834}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !827, file: !681, line: 733, baseType: !38, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !827, file: !681, line: 734, baseType: !33, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !827, file: !681, line: 735, baseType: !718, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !827, file: !681, line: 736, baseType: !552, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !827, file: !681, line: 737, baseType: !718, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !827, file: !681, line: 738, baseType: !813, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !817, file: !681, line: 845, baseType: !195, size: 8, offset: 384)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !814, file: !681, line: 893, baseType: !837, size: 640)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_named", file: !681, line: 851, size: 640, elements: !838)
!838 = !{!839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !837, file: !681, line: 852, baseType: !813, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !837, file: !681, line: 852, baseType: !195, size: 8, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !837, file: !681, line: 852, baseType: !195, size: 8, offset: 72)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !837, file: !681, line: 852, baseType: !44, size: 16, offset: 80)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !837, file: !681, line: 852, baseType: !552, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !837, file: !681, line: 852, baseType: !813, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !837, file: !681, line: 852, baseType: !679, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !837, file: !681, line: 852, baseType: !827, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !837, file: !681, line: 852, baseType: !195, size: 8, offset: 384)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !837, file: !681, line: 852, baseType: !718, size: 64, offset: 448)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !837, file: !681, line: 853, baseType: !552, size: 64, offset: 512)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !837, file: !681, line: 854, baseType: !33, size: 32, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !837, file: !681, line: 855, baseType: !33, size: 32, offset: 608)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "asl", scope: !814, file: !681, line: 894, baseType: !853, size: 1600)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_parse_obj_asl", file: !681, line: 862, size: 1600, elements: !854)
!854 = !{!855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !853, file: !681, line: 863, baseType: !813, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !853, file: !681, line: 863, baseType: !195, size: 8, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !853, file: !681, line: 863, baseType: !195, size: 8, offset: 72)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode", scope: !853, file: !681, line: 863, baseType: !44, size: 16, offset: 80)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !853, file: !681, line: 863, baseType: !552, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !853, file: !681, line: 863, baseType: !813, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !853, file: !681, line: 863, baseType: !679, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !853, file: !681, line: 863, baseType: !827, size: 64, offset: 320)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list_length", scope: !853, file: !681, line: 863, baseType: !195, size: 8, offset: 384)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !853, file: !681, line: 863, baseType: !813, size: 64, offset: 448)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "parent_method", scope: !853, file: !681, line: 864, baseType: !813, size: 64, offset: 512)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !853, file: !681, line: 865, baseType: !718, size: 64, offset: 576)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "file_changed", scope: !853, file: !681, line: 866, baseType: !195, size: 8, offset: 640)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "parent_filename", scope: !853, file: !681, line: 867, baseType: !718, size: 64, offset: 704)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "external_name", scope: !853, file: !681, line: 868, baseType: !718, size: 64, offset: 768)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "namepath", scope: !853, file: !681, line: 869, baseType: !718, size: 64, offset: 832)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "name_seg", scope: !853, file: !681, line: 870, baseType: !872, size: 32, offset: 896)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !873)
!873 = !{!874}
!874 = !DISubrange(count: 4)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "extra_value", scope: !853, file: !681, line: 871, baseType: !33, size: 32, offset: 928)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !853, file: !681, line: 872, baseType: !33, size: 32, offset: 960)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "line_number", scope: !853, file: !681, line: 873, baseType: !33, size: 32, offset: 992)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "logical_line_number", scope: !853, file: !681, line: 874, baseType: !33, size: 32, offset: 1024)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "logical_byte_offset", scope: !853, file: !681, line: 875, baseType: !33, size: 32, offset: 1056)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "end_line", scope: !853, file: !681, line: 876, baseType: !33, size: 32, offset: 1088)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "end_logical_line", scope: !853, file: !681, line: 877, baseType: !33, size: 32, offset: 1120)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_btype", scope: !853, file: !681, line: 878, baseType: !33, size: 32, offset: 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !853, file: !681, line: 879, baseType: !33, size: 32, offset: 1184)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "aml_subtree_length", scope: !853, file: !681, line: 880, baseType: !33, size: 32, offset: 1216)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_length", scope: !853, file: !681, line: 881, baseType: !33, size: 32, offset: 1248)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "final_aml_offset", scope: !853, file: !681, line: 882, baseType: !33, size: 32, offset: 1280)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "compile_flags", scope: !853, file: !681, line: 883, baseType: !33, size: 32, offset: 1312)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "parse_opcode", scope: !853, file: !681, line: 884, baseType: !44, size: 16, offset: 1344)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "aml_opcode_length", scope: !853, file: !681, line: 885, baseType: !195, size: 8, offset: 1360)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "aml_pkg_len_bytes", scope: !853, file: !681, line: 886, baseType: !195, size: 8, offset: 1368)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !853, file: !681, line: 887, baseType: !195, size: 8, offset: 1376)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "parse_op_name", scope: !853, file: !681, line: 888, baseType: !893, size: 160, offset: 1384)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !894)
!894 = !{!895}
!895 = !DISubrange(count: 20)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "start_node", scope: !805, file: !681, line: 916, baseType: !679, size: 64, offset: 384)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !805, file: !681, line: 917, baseType: !898, size: 64, offset: 448)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_generic_state", file: !681, line: 679, size: 640, elements: !900)
!900 = !{!901, !909, !922, !931, !940, !953, !967, !979, !991}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !899, file: !681, line: 680, baseType: !902, size: 128)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_common_state", file: !681, line: 575, size: 128, elements: !903)
!903 = !{!904, !905, !906, !907, !908}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !902, file: !681, line: 576, baseType: !68, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !902, file: !681, line: 576, baseType: !195, size: 8, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !902, file: !681, line: 576, baseType: !195, size: 8, offset: 72)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !902, file: !681, line: 576, baseType: !44, size: 16, offset: 80)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !902, file: !681, line: 576, baseType: !44, size: 16, offset: 96)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !899, file: !681, line: 681, baseType: !910, size: 384)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_control_state", file: !681, line: 604, size: 384, elements: !911)
!911 = !{!912, !913, !914, !915, !916, !917, !918, !919, !920, !921}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !910, file: !681, line: 605, baseType: !68, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !910, file: !681, line: 605, baseType: !195, size: 8, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !910, file: !681, line: 605, baseType: !195, size: 8, offset: 72)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !910, file: !681, line: 605, baseType: !44, size: 16, offset: 80)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !910, file: !681, line: 605, baseType: !44, size: 16, offset: 96)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !910, file: !681, line: 606, baseType: !44, size: 16, offset: 112)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "predicate_op", scope: !910, file: !681, line: 607, baseType: !813, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "aml_predicate_start", scope: !910, file: !681, line: 608, baseType: !552, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "package_end", scope: !910, file: !681, line: 609, baseType: !552, size: 64, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "loop_timeout", scope: !910, file: !681, line: 610, baseType: !38, size: 64, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !899, file: !681, line: 682, baseType: !923, size: 192)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_update_state", file: !681, line: 582, size: 192, elements: !924)
!924 = !{!925, !926, !927, !928, !929, !930}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !923, file: !681, line: 583, baseType: !68, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !923, file: !681, line: 583, baseType: !195, size: 8, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !923, file: !681, line: 583, baseType: !195, size: 8, offset: 72)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !923, file: !681, line: 583, baseType: !44, size: 16, offset: 80)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !923, file: !681, line: 583, baseType: !44, size: 16, offset: 96)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !923, file: !681, line: 584, baseType: !684, size: 64, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !899, file: !681, line: 683, baseType: !932, size: 192)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scope_state", file: !681, line: 616, size: 192, elements: !933)
!933 = !{!934, !935, !936, !937, !938, !939}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !932, file: !681, line: 617, baseType: !68, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !932, file: !681, line: 617, baseType: !195, size: 8, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !932, file: !681, line: 617, baseType: !195, size: 8, offset: 72)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !932, file: !681, line: 617, baseType: !44, size: 16, offset: 80)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !932, file: !681, line: 617, baseType: !44, size: 16, offset: 96)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !932, file: !681, line: 618, baseType: !679, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "parse_scope", scope: !899, file: !681, line: 684, baseType: !941, size: 448)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pscope_state", file: !681, line: 621, size: 448, elements: !942)
!942 = !{!943, !944, !945, !946, !947, !948, !949, !950, !951, !952}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !941, file: !681, line: 622, baseType: !68, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !941, file: !681, line: 622, baseType: !195, size: 8, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !941, file: !681, line: 622, baseType: !195, size: 8, offset: 72)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !941, file: !681, line: 622, baseType: !44, size: 16, offset: 80)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !941, file: !681, line: 622, baseType: !44, size: 16, offset: 96)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !941, file: !681, line: 623, baseType: !33, size: 32, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !941, file: !681, line: 624, baseType: !813, size: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !941, file: !681, line: 625, baseType: !552, size: 64, offset: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_end", scope: !941, file: !681, line: 626, baseType: !552, size: 64, offset: 320)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "arg_list", scope: !941, file: !681, line: 627, baseType: !33, size: 32, offset: 384)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pkg", scope: !899, file: !681, line: 685, baseType: !954, size: 512)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pkg_state", file: !681, line: 590, size: 512, elements: !955)
!955 = !{!956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !954, file: !681, line: 591, baseType: !68, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !954, file: !681, line: 591, baseType: !195, size: 8, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !954, file: !681, line: 591, baseType: !195, size: 8, offset: 72)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !954, file: !681, line: 591, baseType: !44, size: 16, offset: 80)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !954, file: !681, line: 591, baseType: !44, size: 16, offset: 96)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !954, file: !681, line: 592, baseType: !33, size: 32, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "source_object", scope: !954, file: !681, line: 593, baseType: !684, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dest_object", scope: !954, file: !681, line: 594, baseType: !684, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state", scope: !954, file: !681, line: 595, baseType: !778, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "this_target_obj", scope: !954, file: !681, line: 596, baseType: !68, size: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "num_packages", scope: !954, file: !681, line: 597, baseType: !33, size: 32, offset: 448)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !899, file: !681, line: 686, baseType: !968, size: 320)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_thread_state", file: !681, line: 634, size: 320, elements: !969)
!969 = !{!970, !971, !972, !973, !974, !975, !976, !977, !978}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !968, file: !681, line: 635, baseType: !68, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !968, file: !681, line: 635, baseType: !195, size: 8, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !681, line: 635, baseType: !195, size: 8, offset: 72)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !968, file: !681, line: 635, baseType: !44, size: 16, offset: 80)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !968, file: !681, line: 635, baseType: !44, size: 16, offset: 96)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "current_sync_level", scope: !968, file: !681, line: 636, baseType: !195, size: 8, offset: 112)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "walk_state_list", scope: !968, file: !681, line: 637, baseType: !778, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "acquired_mutex_list", scope: !968, file: !681, line: 638, baseType: !684, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !968, file: !681, line: 639, baseType: !38, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !899, file: !681, line: 687, baseType: !980, size: 640)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_result_values", file: !681, line: 646, size: 640, elements: !981)
!981 = !{!982, !983, !984, !985, !986, !987}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !980, file: !681, line: 647, baseType: !68, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !980, file: !681, line: 647, baseType: !195, size: 8, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !980, file: !681, line: 647, baseType: !195, size: 8, offset: 72)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !980, file: !681, line: 647, baseType: !44, size: 16, offset: 80)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !980, file: !681, line: 647, baseType: !44, size: 16, offset: 96)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "obj_desc", scope: !980, file: !681, line: 648, baseType: !988, size: 512, offset: 128)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 512, elements: !989)
!989 = !{!990}
!990 = !DISubrange(count: 8)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !899, file: !681, line: 688, baseType: !992, size: 320)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_notify_info", file: !681, line: 669, size: 320, elements: !993)
!993 = !{!994, !995, !996, !997, !998, !999, !1000, !1001, !1002}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !992, file: !681, line: 670, baseType: !68, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !992, file: !681, line: 670, baseType: !195, size: 8, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !992, file: !681, line: 670, baseType: !195, size: 8, offset: 72)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !992, file: !681, line: 670, baseType: !44, size: 16, offset: 80)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !992, file: !681, line: 670, baseType: !44, size: 16, offset: 96)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_id", scope: !992, file: !681, line: 671, baseType: !195, size: 8, offset: 112)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !992, file: !681, line: 672, baseType: !679, size: 64, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "handler_list_head", scope: !992, file: !681, line: 673, baseType: !684, size: 64, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !992, file: !681, line: 674, baseType: !1003, size: 64, offset: 256)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_global_notify_handler", file: !681, line: 660, size: 128, elements: !1005)
!1005 = !{!1006, !1011}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1004, file: !681, line: 661, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_notify_handler", file: !32, line: 1061, baseType: !1008)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !67, !33, !68}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1004, file: !681, line: 662, baseType: !68, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "start_scope", scope: !805, file: !681, line: 918, baseType: !813, size: 64, offset: 512)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "aml_size", scope: !805, file: !681, line: 919, baseType: !33, size: 32, offset: 576)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "prev_arg_types", scope: !779, file: !780, line: 61, baseType: !33, size: 32, offset: 1088)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "arg_count", scope: !779, file: !780, line: 62, baseType: !33, size: 32, offset: 1120)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "method_nesting_depth", scope: !779, file: !780, line: 63, baseType: !44, size: 16, offset: 1152)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "method_is_nested", scope: !779, file: !780, line: 64, baseType: !195, size: 8, offset: 1168)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !779, file: !780, line: 66, baseType: !1019, size: 2688, offset: 1216)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 2688, elements: !1020)
!1020 = !{!1021}
!1021 = !DISubrange(count: 7)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "local_variables", scope: !779, file: !780, line: 67, baseType: !1023, size: 3072, offset: 3904)
!1023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !680, size: 3072, elements: !989)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !779, file: !780, line: 68, baseType: !1025, size: 576, offset: 6976)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 576, elements: !1026)
!1026 = !{!1027}
!1027 = !DISubrange(count: 9)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !779, file: !780, line: 69, baseType: !743, size: 64, offset: 7552)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "aml_last_while", scope: !779, file: !780, line: 71, baseType: !552, size: 64, offset: 7616)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "caller_return_desc", scope: !779, file: !780, line: 72, baseType: !743, size: 64, offset: 7680)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "control_state", scope: !779, file: !780, line: 73, baseType: !898, size: 64, offset: 7744)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_node", scope: !779, file: !780, line: 74, baseType: !679, size: 64, offset: 7808)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_return_obj", scope: !779, file: !780, line: 75, baseType: !684, size: 64, offset: 7872)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_node", scope: !779, file: !780, line: 76, baseType: !679, size: 64, offset: 7936)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "method_call_op", scope: !779, file: !780, line: 77, baseType: !813, size: 64, offset: 8000)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "method_desc", scope: !779, file: !780, line: 78, baseType: !684, size: 64, offset: 8064)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !779, file: !780, line: 79, baseType: !679, size: 64, offset: 8128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "method_pathname", scope: !779, file: !780, line: 80, baseType: !718, size: 64, offset: 8192)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !779, file: !780, line: 81, baseType: !813, size: 64, offset: 8256)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "op_info", scope: !779, file: !780, line: 82, baseType: !1041, size: 64, offset: 8320)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_opcode_info", file: !681, line: 718, size: 128, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "parse_args", scope: !1043, file: !681, line: 722, baseType: !33, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_args", scope: !1043, file: !681, line: 723, baseType: !33, size: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1043, file: !681, line: 724, baseType: !44, size: 16, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "object_type", scope: !1043, file: !681, line: 725, baseType: !195, size: 8, offset: 80)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1043, file: !681, line: 726, baseType: !195, size: 8, offset: 88)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1043, file: !681, line: 727, baseType: !195, size: 8, offset: 96)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !779, file: !780, line: 83, baseType: !813, size: 64, offset: 8384)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "result_obj", scope: !779, file: !780, line: 84, baseType: !684, size: 64, offset: 8448)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "results", scope: !779, file: !780, line: 85, baseType: !898, size: 64, offset: 8512)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "return_desc", scope: !779, file: !780, line: 86, baseType: !684, size: 64, offset: 8576)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "scope_info", scope: !779, file: !780, line: 87, baseType: !898, size: 64, offset: 8640)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "prev_op", scope: !779, file: !780, line: 88, baseType: !813, size: 64, offset: 8704)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "next_op", scope: !779, file: !780, line: 89, baseType: !813, size: 64, offset: 8768)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !779, file: !780, line: 90, baseType: !1059, size: 64, offset: 8832)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "descending_callback", scope: !779, file: !780, line: 91, baseType: !1061, size: 64, offset: 8896)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_downwards", file: !681, line: 652, baseType: !1062)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!31, !778, !1065}
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "ascending_callback", scope: !779, file: !780, line: 92, baseType: !1067, size: 64, offset: 8960)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_parse_upwards", file: !681, line: 656, baseType: !775)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !771, file: !686, line: 153, baseType: !684, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !757, file: !686, line: 156, baseType: !33, size: 32, offset: 384)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !757, file: !686, line: 157, baseType: !790, size: 16, offset: 416)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "thread_count", scope: !757, file: !686, line: 158, baseType: !195, size: 8, offset: 432)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !685, file: !686, line: 377, baseType: !1073, size: 576)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_mutex", file: !686, line: 122, size: 576, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1073, file: !686, line: 123, baseType: !684, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1073, file: !686, line: 123, baseType: !195, size: 8, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1073, file: !686, line: 123, baseType: !195, size: 8, offset: 72)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1073, file: !686, line: 123, baseType: !44, size: 16, offset: 80)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1073, file: !686, line: 123, baseType: !195, size: 8, offset: 96)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "sync_level", scope: !1073, file: !686, line: 123, baseType: !195, size: 8, offset: 104)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "acquisition_depth", scope: !1073, file: !686, line: 124, baseType: !44, size: 16, offset: 112)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "os_mutex", scope: !1073, file: !686, line: 125, baseType: !68, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !1073, file: !686, line: 126, baseType: !38, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "owner_thread", scope: !1073, file: !686, line: 127, baseType: !1059, size: 64, offset: 256)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1073, file: !686, line: 128, baseType: !684, size: 64, offset: 320)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1073, file: !686, line: 129, baseType: !684, size: 64, offset: 384)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1073, file: !686, line: 130, baseType: !679, size: 64, offset: 448)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "original_sync_level", scope: !1073, file: !686, line: 131, baseType: !195, size: 8, offset: 512)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !685, file: !686, line: 378, baseType: !1090, size: 512)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region", file: !686, line: 134, size: 512, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1103, !1104}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1090, file: !686, line: 135, baseType: !684, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1090, file: !686, line: 135, baseType: !195, size: 8, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1090, file: !686, line: 135, baseType: !195, size: 8, offset: 72)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1090, file: !686, line: 135, baseType: !44, size: 16, offset: 80)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1090, file: !686, line: 135, baseType: !195, size: 8, offset: 96)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1090, file: !686, line: 135, baseType: !195, size: 8, offset: 104)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1090, file: !686, line: 136, baseType: !679, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1090, file: !686, line: 137, baseType: !684, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1090, file: !686, line: 138, baseType: !684, size: 64, offset: 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1090, file: !686, line: 139, baseType: !1102, size: 64, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !32, line: 129, baseType: !38)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1090, file: !686, line: 140, baseType: !33, size: 32, offset: 384)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1090, file: !686, line: 141, baseType: !68, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "common_notify", scope: !685, file: !686, line: 379, baseType: !1106, size: 320)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_common", file: !686, line: 185, size: 320, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1111, !1112, !1113, !1117}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1106, file: !686, line: 186, baseType: !684, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1106, file: !686, line: 186, baseType: !195, size: 8, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1106, file: !686, line: 186, baseType: !195, size: 8, offset: 72)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1106, file: !686, line: 186, baseType: !44, size: 16, offset: 80)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1106, file: !686, line: 186, baseType: !195, size: 8, offset: 96)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1106, file: !686, line: 186, baseType: !1114, size: 128, offset: 128)
!1114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !684, size: 128, elements: !1115)
!1115 = !{!1116}
!1116 = !DISubrange(count: 2)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1106, file: !686, line: 186, baseType: !684, size: 64, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !685, file: !686, line: 380, baseType: !1119, size: 384)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_device", file: !686, line: 188, size: 384, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1119, file: !686, line: 189, baseType: !684, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1119, file: !686, line: 189, baseType: !195, size: 8, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1119, file: !686, line: 189, baseType: !195, size: 8, offset: 72)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1119, file: !686, line: 189, baseType: !44, size: 16, offset: 80)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1119, file: !686, line: 189, baseType: !195, size: 8, offset: 96)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1119, file: !686, line: 190, baseType: !1114, size: 128, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1119, file: !686, line: 190, baseType: !684, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block", scope: !1119, file: !686, line: 190, baseType: !1129, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_block_info", file: !681, line: 480, size: 576, elements: !1131)
!1131 = !{!1132, !1133, !1134, !1135, !1143, !1158, !1190, !1191, !1192, !1193, !1194, !1195}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1130, file: !681, line: 481, baseType: !679, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1130, file: !681, line: 482, baseType: !1129, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1130, file: !681, line: 483, baseType: !1129, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "xrupt_block", scope: !1130, file: !681, line: 484, baseType: !1136, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_xrupt_info", file: !681, line: 497, size: 256, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !1137, file: !681, line: 498, baseType: !1136, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1137, file: !681, line: 499, baseType: !1136, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_block_list_head", scope: !1137, file: !681, line: 500, baseType: !1129, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_number", scope: !1137, file: !681, line: 501, baseType: !33, size: 32, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !1130, file: !681, line: 485, baseType: !1144, size: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_register_info", file: !681, line: 466, size: 320, elements: !1146)
!1146 = !{!1147, !1152, !1153, !1154, !1155, !1156, !1157}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "status_address", scope: !1145, file: !681, line: 467, baseType: !1148, size: 128)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_address", file: !681, line: 459, size: 128, elements: !1149)
!1149 = !{!1150, !1151}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1148, file: !681, line: 460, baseType: !195, size: 8)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1148, file: !681, line: 461, baseType: !38, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "enable_address", scope: !1145, file: !681, line: 468, baseType: !1148, size: 128, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "base_gpe_number", scope: !1145, file: !681, line: 469, baseType: !44, size: 16, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_wake", scope: !1145, file: !681, line: 470, baseType: !195, size: 8, offset: 272)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "enable_for_run", scope: !1145, file: !681, line: 471, baseType: !195, size: 8, offset: 280)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mask_for_run", scope: !1145, file: !681, line: 472, baseType: !195, size: 8, offset: 288)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !1145, file: !681, line: 473, baseType: !195, size: 8, offset: 296)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "event_info", scope: !1130, file: !681, line: 486, baseType: !1159, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_event_info", file: !681, line: 448, size: 192, elements: !1161)
!1161 = !{!1162, !1185, !1186, !1187, !1188, !1189}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1160, file: !681, line: 449, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_gpe_dispatch_info", file: !681, line: 438, size: 64, elements: !1164)
!1164 = !{!1165, !1166, !1179}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1163, file: !681, line: 439, baseType: !679, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1163, file: !681, line: 440, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_handler_info", file: !681, line: 419, size: 256, elements: !1169)
!1169 = !{!1170, !1175, !1176, !1177, !1178}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1168, file: !681, line: 420, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_gpe_handler", file: !32, line: 1058, baseType: !1172)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!33, !67, !33, !68}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1168, file: !681, line: 421, baseType: !68, size: 64, offset: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "method_node", scope: !1168, file: !681, line: 422, baseType: !679, size: 64, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "original_flags", scope: !1168, file: !681, line: 423, baseType: !195, size: 8, offset: 192)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "originally_enabled", scope: !1168, file: !681, line: 424, baseType: !195, size: 8, offset: 200)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1163, file: !681, line: 441, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpe_notify_info", file: !681, line: 429, size: 128, elements: !1182)
!1182 = !{!1183, !1184}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !1181, file: !681, line: 430, baseType: !679, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1181, file: !681, line: 431, baseType: !1180, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "register_info", scope: !1160, file: !681, line: 450, baseType: !1144, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1160, file: !681, line: 451, baseType: !195, size: 8, offset: 128)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1160, file: !681, line: 452, baseType: !195, size: 8, offset: 136)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_count", scope: !1160, file: !681, line: 453, baseType: !195, size: 8, offset: 144)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "disable_for_dispatch", scope: !1160, file: !681, line: 454, baseType: !195, size: 8, offset: 152)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1130, file: !681, line: 487, baseType: !38, size: 64, offset: 384)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "register_count", scope: !1130, file: !681, line: 488, baseType: !33, size: 32, offset: 448)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_count", scope: !1130, file: !681, line: 489, baseType: !44, size: 16, offset: 480)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "block_base_number", scope: !1130, file: !681, line: 490, baseType: !44, size: 16, offset: 496)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1130, file: !681, line: 491, baseType: !195, size: 8, offset: 512)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1130, file: !681, line: 492, baseType: !195, size: 8, offset: 520)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !685, file: !686, line: 381, baseType: !1197, size: 384)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_power_resource", file: !686, line: 193, size: 384, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1197, file: !686, line: 194, baseType: !684, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1197, file: !686, line: 194, baseType: !195, size: 8, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1197, file: !686, line: 194, baseType: !195, size: 8, offset: 72)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1197, file: !686, line: 194, baseType: !44, size: 16, offset: 80)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1197, file: !686, line: 194, baseType: !195, size: 8, offset: 96)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1197, file: !686, line: 194, baseType: !1114, size: 128, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1197, file: !686, line: 194, baseType: !684, size: 64, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1197, file: !686, line: 194, baseType: !33, size: 32, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1197, file: !686, line: 195, baseType: !33, size: 32, offset: 352)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !685, file: !686, line: 382, baseType: !1209, size: 384)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_processor", file: !686, line: 198, size: 384, elements: !1210)
!1210 = !{!1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1209, file: !686, line: 199, baseType: !684, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1209, file: !686, line: 199, baseType: !195, size: 8, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1209, file: !686, line: 199, baseType: !195, size: 8, offset: 72)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1209, file: !686, line: 199, baseType: !44, size: 16, offset: 80)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1209, file: !686, line: 199, baseType: !195, size: 8, offset: 96)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1209, file: !686, line: 201, baseType: !195, size: 8, offset: 104)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1209, file: !686, line: 202, baseType: !195, size: 8, offset: 112)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1209, file: !686, line: 203, baseType: !1114, size: 128, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1209, file: !686, line: 203, baseType: !684, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1209, file: !686, line: 203, baseType: !1221, size: 64, offset: 320)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !32, line: 128, baseType: !38)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_zone", scope: !685, file: !686, line: 383, baseType: !1223, size: 320)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_thermal_zone", file: !686, line: 206, size: 320, elements: !1224)
!1224 = !{!1225, !1226, !1227, !1228, !1229, !1230, !1231}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1223, file: !686, line: 207, baseType: !684, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1223, file: !686, line: 207, baseType: !195, size: 8, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1223, file: !686, line: 207, baseType: !195, size: 8, offset: 72)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1223, file: !686, line: 207, baseType: !44, size: 16, offset: 80)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1223, file: !686, line: 207, baseType: !195, size: 8, offset: 96)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "notify_list", scope: !1223, file: !686, line: 207, baseType: !1114, size: 128, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1223, file: !686, line: 207, baseType: !684, size: 64, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "common_field", scope: !685, file: !686, line: 384, baseType: !1233, size: 384)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_field_common", file: !686, line: 234, size: 384, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1233, file: !686, line: 235, baseType: !684, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1233, file: !686, line: 235, baseType: !195, size: 8, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1233, file: !686, line: 235, baseType: !195, size: 8, offset: 72)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1233, file: !686, line: 235, baseType: !44, size: 16, offset: 80)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1233, file: !686, line: 235, baseType: !195, size: 8, offset: 96)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1233, file: !686, line: 235, baseType: !195, size: 8, offset: 104)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1233, file: !686, line: 235, baseType: !195, size: 8, offset: 112)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1233, file: !686, line: 235, baseType: !195, size: 8, offset: 120)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1233, file: !686, line: 235, baseType: !679, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1233, file: !686, line: 235, baseType: !33, size: 32, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1233, file: !686, line: 235, baseType: !33, size: 32, offset: 224)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1233, file: !686, line: 235, baseType: !33, size: 32, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1233, file: !686, line: 235, baseType: !195, size: 8, offset: 288)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1233, file: !686, line: 235, baseType: !195, size: 8, offset: 296)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1233, file: !686, line: 235, baseType: !684, size: 64, offset: 320)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "field", scope: !685, file: !686, line: 385, baseType: !1251, size: 576)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_region_field", file: !686, line: 238, size: 576, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1251, file: !686, line: 239, baseType: !684, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1251, file: !686, line: 239, baseType: !195, size: 8, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1251, file: !686, line: 239, baseType: !195, size: 8, offset: 72)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1251, file: !686, line: 239, baseType: !44, size: 16, offset: 80)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1251, file: !686, line: 239, baseType: !195, size: 8, offset: 96)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1251, file: !686, line: 239, baseType: !195, size: 8, offset: 104)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1251, file: !686, line: 239, baseType: !195, size: 8, offset: 112)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1251, file: !686, line: 239, baseType: !195, size: 8, offset: 120)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1251, file: !686, line: 239, baseType: !679, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1251, file: !686, line: 239, baseType: !33, size: 32, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1251, file: !686, line: 239, baseType: !33, size: 32, offset: 224)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1251, file: !686, line: 239, baseType: !33, size: 32, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1251, file: !686, line: 239, baseType: !195, size: 8, offset: 288)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1251, file: !686, line: 239, baseType: !195, size: 8, offset: 296)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "resource_length", scope: !1251, file: !686, line: 239, baseType: !44, size: 16, offset: 304)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1251, file: !686, line: 240, baseType: !684, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "resource_buffer", scope: !1251, file: !686, line: 241, baseType: !552, size: 64, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pin_number_index", scope: !1251, file: !686, line: 242, baseType: !44, size: 16, offset: 448)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "internal_pcc_buffer", scope: !1251, file: !686, line: 243, baseType: !552, size: 64, offset: 512)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_field", scope: !685, file: !686, line: 386, baseType: !1273, size: 384)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_buffer_field", file: !686, line: 263, size: 384, elements: !1274)
!1274 = !{!1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1273, file: !686, line: 264, baseType: !684, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1273, file: !686, line: 264, baseType: !195, size: 8, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1273, file: !686, line: 264, baseType: !195, size: 8, offset: 72)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1273, file: !686, line: 264, baseType: !44, size: 16, offset: 80)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1273, file: !686, line: 264, baseType: !195, size: 8, offset: 96)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1273, file: !686, line: 264, baseType: !195, size: 8, offset: 104)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1273, file: !686, line: 264, baseType: !195, size: 8, offset: 112)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1273, file: !686, line: 264, baseType: !195, size: 8, offset: 120)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1273, file: !686, line: 264, baseType: !679, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1273, file: !686, line: 264, baseType: !33, size: 32, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1273, file: !686, line: 264, baseType: !33, size: 32, offset: 224)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1273, file: !686, line: 264, baseType: !33, size: 32, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1273, file: !686, line: 264, baseType: !195, size: 8, offset: 288)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1273, file: !686, line: 264, baseType: !195, size: 8, offset: 296)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "is_create_field", scope: !1273, file: !686, line: 264, baseType: !195, size: 8, offset: 304)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_obj", scope: !1273, file: !686, line: 265, baseType: !684, size: 64, offset: 320)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "bank_field", scope: !685, file: !686, line: 387, baseType: !1292, size: 448)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_bank_field", file: !686, line: 246, size: 448, elements: !1293)
!1293 = !{!1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1292, file: !686, line: 247, baseType: !684, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1292, file: !686, line: 247, baseType: !195, size: 8, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1292, file: !686, line: 247, baseType: !195, size: 8, offset: 72)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1292, file: !686, line: 247, baseType: !44, size: 16, offset: 80)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1292, file: !686, line: 247, baseType: !195, size: 8, offset: 96)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1292, file: !686, line: 247, baseType: !195, size: 8, offset: 104)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1292, file: !686, line: 247, baseType: !195, size: 8, offset: 112)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1292, file: !686, line: 247, baseType: !195, size: 8, offset: 120)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1292, file: !686, line: 247, baseType: !679, size: 64, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1292, file: !686, line: 247, baseType: !33, size: 32, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1292, file: !686, line: 247, baseType: !33, size: 32, offset: 224)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1292, file: !686, line: 247, baseType: !33, size: 32, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1292, file: !686, line: 247, baseType: !195, size: 8, offset: 288)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1292, file: !686, line: 247, baseType: !195, size: 8, offset: 296)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "region_obj", scope: !1292, file: !686, line: 247, baseType: !684, size: 64, offset: 320)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "bank_obj", scope: !1292, file: !686, line: 248, baseType: !684, size: 64, offset: 384)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "index_field", scope: !685, file: !686, line: 388, baseType: !1311, size: 448)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_index_field", file: !686, line: 251, size: 448, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1311, file: !686, line: 252, baseType: !684, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1311, file: !686, line: 252, baseType: !195, size: 8, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1311, file: !686, line: 252, baseType: !195, size: 8, offset: 72)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1311, file: !686, line: 252, baseType: !44, size: 16, offset: 80)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1311, file: !686, line: 252, baseType: !195, size: 8, offset: 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "field_flags", scope: !1311, file: !686, line: 252, baseType: !195, size: 8, offset: 104)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !1311, file: !686, line: 252, baseType: !195, size: 8, offset: 112)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "access_byte_width", scope: !1311, file: !686, line: 252, baseType: !195, size: 8, offset: 120)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1311, file: !686, line: 252, baseType: !679, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "bit_length", scope: !1311, file: !686, line: 252, baseType: !33, size: 32, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "base_byte_offset", scope: !1311, file: !686, line: 252, baseType: !33, size: 32, offset: 224)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1311, file: !686, line: 252, baseType: !33, size: 32, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "start_field_bit_offset", scope: !1311, file: !686, line: 252, baseType: !195, size: 8, offset: 288)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "access_length", scope: !1311, file: !686, line: 252, baseType: !195, size: 8, offset: 296)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "index_obj", scope: !1311, file: !686, line: 257, baseType: !684, size: 64, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "data_obj", scope: !1311, file: !686, line: 258, baseType: !684, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !685, file: !686, line: 389, baseType: !1330, size: 512)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_notify_handler", file: !686, line: 274, size: 512, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1330, file: !686, line: 275, baseType: !684, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1330, file: !686, line: 275, baseType: !195, size: 8, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1330, file: !686, line: 275, baseType: !195, size: 8, offset: 72)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1330, file: !686, line: 275, baseType: !44, size: 16, offset: 80)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1330, file: !686, line: 275, baseType: !195, size: 8, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1330, file: !686, line: 275, baseType: !679, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "handler_type", scope: !1330, file: !686, line: 276, baseType: !33, size: 32, offset: 192)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1330, file: !686, line: 277, baseType: !1007, size: 64, offset: 256)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1330, file: !686, line: 278, baseType: !68, size: 64, offset: 320)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1330, file: !686, line: 279, baseType: !1114, size: 128, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !685, file: !686, line: 390, baseType: !1343, size: 576)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_addr_handler", file: !686, line: 282, size: 576, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1358, !1359, !1360, !1361, !1367, !1368}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1343, file: !686, line: 283, baseType: !684, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1343, file: !686, line: 283, baseType: !195, size: 8, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1343, file: !686, line: 283, baseType: !195, size: 8, offset: 72)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1343, file: !686, line: 283, baseType: !44, size: 16, offset: 80)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1343, file: !686, line: 283, baseType: !195, size: 8, offset: 96)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !1343, file: !686, line: 283, baseType: !195, size: 8, offset: 104)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "handler_flags", scope: !1343, file: !686, line: 284, baseType: !195, size: 8, offset: 112)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1343, file: !686, line: 285, baseType: !1353, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_handler", file: !32, line: 1093, baseType: !1354)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!31, !33, !1102, !33, !1357, !68, !68}
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1343, file: !686, line: 286, baseType: !679, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1343, file: !686, line: 287, baseType: !68, size: 64, offset: 256)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "context_mutex", scope: !1343, file: !686, line: 288, baseType: !68, size: 64, offset: 320)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1343, file: !686, line: 289, baseType: !1362, size: 64, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_adr_space_setup", file: !32, line: 1126, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!31, !67, !33, !68, !1366}
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "region_list", scope: !1343, file: !686, line: 290, baseType: !684, size: 64, offset: 448)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1343, file: !686, line: 291, baseType: !684, size: 64, offset: 512)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !685, file: !686, line: 391, baseType: !1370, size: 512)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_reference", file: !686, line: 309, size: 512, elements: !1371)
!1371 = !{!1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1370, file: !686, line: 310, baseType: !684, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1370, file: !686, line: 310, baseType: !195, size: 8, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1370, file: !686, line: 310, baseType: !195, size: 8, offset: 72)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1370, file: !686, line: 310, baseType: !44, size: 16, offset: 80)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1370, file: !686, line: 310, baseType: !195, size: 8, offset: 96)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1370, file: !686, line: 310, baseType: !195, size: 8, offset: 104)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !1370, file: !686, line: 311, baseType: !195, size: 8, offset: 112)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "resolved", scope: !1370, file: !686, line: 312, baseType: !195, size: 8, offset: 120)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1370, file: !686, line: 313, baseType: !68, size: 64, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1370, file: !686, line: 314, baseType: !679, size: 64, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "where", scope: !1370, file: !686, line: 315, baseType: !743, size: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "index_pointer", scope: !1370, file: !686, line: 316, baseType: !552, size: 64, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "aml", scope: !1370, file: !686, line: 317, baseType: !552, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1370, file: !686, line: 318, baseType: !33, size: 32, offset: 448)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !685, file: !686, line: 392, baseType: !1387, size: 448)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_extra", file: !686, line: 342, size: 448, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1387, file: !686, line: 343, baseType: !684, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1387, file: !686, line: 343, baseType: !195, size: 8, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1387, file: !686, line: 343, baseType: !195, size: 8, offset: 72)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1387, file: !686, line: 343, baseType: !44, size: 16, offset: 80)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1387, file: !686, line: 343, baseType: !195, size: 8, offset: 96)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "method_REG", scope: !1387, file: !686, line: 343, baseType: !679, size: 64, offset: 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "scope_node", scope: !1387, file: !686, line: 344, baseType: !679, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "region_context", scope: !1387, file: !686, line: 345, baseType: !68, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "aml_start", scope: !1387, file: !686, line: 346, baseType: !552, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "aml_length", scope: !1387, file: !686, line: 347, baseType: !33, size: 32, offset: 384)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !685, file: !686, line: 393, baseType: !1400, size: 256)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_data", file: !686, line: 352, size: 256, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1407, !1412}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1400, file: !686, line: 353, baseType: !684, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1400, file: !686, line: 353, baseType: !195, size: 8, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1400, file: !686, line: 353, baseType: !195, size: 8, offset: 72)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1400, file: !686, line: 353, baseType: !44, size: 16, offset: 80)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1400, file: !686, line: 353, baseType: !195, size: 8, offset: 96)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1400, file: !686, line: 353, baseType: !1408, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_handler", file: !32, line: 1064, baseType: !1409)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{null, !67, !68}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1400, file: !686, line: 354, baseType: !68, size: 64, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !685, file: !686, line: 394, baseType: !1414, size: 192)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_cache_list", file: !686, line: 359, size: 192, elements: !1415)
!1415 = !{!1416, !1417, !1418, !1419, !1420, !1421}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "next_object", scope: !1414, file: !686, line: 360, baseType: !684, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !1414, file: !686, line: 360, baseType: !195, size: 8, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1414, file: !686, line: 360, baseType: !195, size: 8, offset: 72)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !1414, file: !686, line: 360, baseType: !44, size: 16, offset: 80)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1414, file: !686, line: 360, baseType: !195, size: 8, offset: 96)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1414, file: !686, line: 360, baseType: !684, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !685, file: !686, line: 401, baseType: !680, size: 384)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_type", scope: !680, file: !681, line: 135, baseType: !195, size: 8, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !680, file: !681, line: 136, baseType: !195, size: 8, offset: 72)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !681, line: 137, baseType: !44, size: 16, offset: 80)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !680, file: !681, line: 138, baseType: !1427, size: 32, offset: 96)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_name_union", file: !1428, line: 328, size: 32, elements: !1429)
!1428 = !DIFile(filename: "./include/acpi/actbl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fcb684a4fba86b09d457169a25e7c678")
!1429 = !{!1430, !1431}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1427, file: !1428, line: 329, baseType: !33, size: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !1427, file: !1428, line: 330, baseType: !872, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !680, file: !681, line: 139, baseType: !679, size: 64, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !680, file: !681, line: 140, baseType: !679, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !680, file: !681, line: 141, baseType: !679, size: 64, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "owner_id", scope: !680, file: !681, line: 142, baseType: !790, size: 16, offset: 320)
!1436 = !DISubprogram(name: "acpi_os_read_pci_configuration", scope: !1437, file: !1437, line: 296, type: !1438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1437 = !DIFile(filename: "./include/acpi/acpiosxf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b137396cee128338f4c1953d0ce739ba")
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!31, !60, !33, !1357, !33}
!1440 = distinct !DISubprogram(name: "acpi_os_free", scope: !267, file: !267, line: 60, type: !1441, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !1443)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !68}
!1443 = !{!1444}
!1444 = !DILocalVariable(name: "memory", arg: 1, scope: !1440, file: !267, line: 60, type: !68)
!1445 = !DILocation(line: 60, column: 39, scope: !1440)
!1446 = !DILocation(line: 62, column: 8, scope: !1440)
!1447 = !DILocation(line: 62, column: 2, scope: !1440)
!1448 = !DILocation(line: 63, column: 1, scope: !1440)
!1449 = !DISubprogram(name: "kfree", scope: !2, file: !2, line: 227, type: !1450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{null, !1452}
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
