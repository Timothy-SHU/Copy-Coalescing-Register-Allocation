; ModuleID = 'arch/x86/pci/bus_numa.c'
source_filename = "arch/x86/pci/bus_numa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { ptr, ptr }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.pci_root_info = type { %struct.list_head, [12 x i8], %struct.list_head, %struct.resource, i32, i32 }
%struct.resource_entry = type { %struct.list_head, ptr, i64, %struct.resource }
%struct.pci_root_res = type { %struct.list_head, %struct.resource }

@pci_root_infos = hidden global %struct.list_head { ptr @pci_root_infos, ptr @pci_root_infos }, align 8, !dbg !0
@.str = private unnamed_addr constant [49 x i8] c"\017PCI: root bus %02x: hardware-probed resources\0A\00", align 1, !dbg !83
@.str.1 = private unnamed_addr constant [47 x i8] c"\017PCI: root bus %02x: using default resources\0A\00", align 1, !dbg !88
@ioport_resource = external dso_local global %struct.resource, align 8
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"PCI Bus #%02x\00", align 1, !dbg !93
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !98

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x86_pci_root_bus_node(i32 noundef %bus) #0 align 16 !dbg !112 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !116, metadata !DIExpression()), !dbg !118
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #15, !dbg !119
  call void @llvm.dbg.declare(metadata ptr %info, metadata !117, metadata !DIExpression()), !dbg !120
  %0 = load i32, ptr %bus.addr, align 4, !dbg !121
  %call = call ptr @x86_find_pci_root_info(i32 noundef %0) #16, !dbg !122
  store ptr %call, ptr %info, align 8, !dbg !120
  %1 = load ptr, ptr %info, align 8, !dbg !123
  %tobool = icmp ne ptr %1, null, !dbg !123
  br i1 %tobool, label %if.end, label %if.then, !dbg !125

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !126

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %info, align 8, !dbg !127
  %node = getelementptr inbounds %struct.pci_root_info, ptr %2, i32 0, i32 4, !dbg !128
  %3 = load i32, ptr %node, align 8, !dbg !128
  store i32 %3, ptr %retval, align 4, !dbg !129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !129

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #15, !dbg !130
  %4 = load i32, ptr %retval, align 4, !dbg !130
  ret i32 %4, !dbg !130
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @x86_find_pci_root_info(i32 noundef %bus) #0 align 16 !dbg !131 {
entry:
  %retval = alloca ptr, align 8
  %bus.addr = alloca i32, align 4
  %info = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !135, metadata !DIExpression()), !dbg !143
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #15, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %info, metadata !136, metadata !DIExpression()), !dbg !145
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !146
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !137, metadata !DIExpression()), !dbg !146
  %0 = load ptr, ptr @pci_root_infos, align 8, !dbg !146
  store ptr %0, ptr %__mptr, align 8, !dbg !146
  %1 = load ptr, ptr %__mptr, align 8, !dbg !146
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !146
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !146
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !147
  %2 = load ptr, ptr %tmp, align 8, !dbg !146
  store ptr %2, ptr %info, align 8, !dbg !147
  br label %for.cond, !dbg !147

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %info, align 8, !dbg !148
  %list = getelementptr inbounds %struct.pci_root_info, ptr %3, i32 0, i32 0, !dbg !148
  %cmp = icmp eq ptr %list, @pci_root_infos, !dbg !148
  %lnot = xor i1 %cmp, true, !dbg !148
  br i1 %lnot, label %for.body, label %for.end, !dbg !147

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %info, align 8, !dbg !149
  %busn = getelementptr inbounds %struct.pci_root_info, ptr %4, i32 0, i32 3, !dbg !151
  %start = getelementptr inbounds %struct.resource, ptr %busn, i32 0, i32 0, !dbg !152
  %5 = load i64, ptr %start, align 8, !dbg !152
  %6 = load i32, ptr %bus.addr, align 4, !dbg !153
  %conv = sext i32 %6 to i64, !dbg !153
  %cmp1 = icmp eq i64 %5, %conv, !dbg !154
  br i1 %cmp1, label %if.then, label %if.end, !dbg !155

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %info, align 8, !dbg !156
  store ptr %7, ptr %retval, align 8, !dbg !157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !157

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !153

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #15, !dbg !158
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !140, metadata !DIExpression()), !dbg !158
  %8 = load ptr, ptr %info, align 8, !dbg !158
  %list4 = getelementptr inbounds %struct.pci_root_info, ptr %8, i32 0, i32 0, !dbg !158
  %next = getelementptr inbounds %struct.list_head, ptr %list4, i32 0, i32 0, !dbg !158
  %9 = load ptr, ptr %next, align 8, !dbg !158
  store ptr %9, ptr %__mptr3, align 8, !dbg !158
  %10 = load ptr, ptr %__mptr3, align 8, !dbg !158
  %add.ptr6 = getelementptr i8, ptr %10, i64 0, !dbg !158
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !158
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #15, !dbg !148
  %11 = load ptr, ptr %tmp5, align 8, !dbg !158
  store ptr %11, ptr %info, align 8, !dbg !148
  br label %for.cond, !dbg !148, !llvm.loop !159

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !163
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !163

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #15, !dbg !164
  %12 = load ptr, ptr %retval, align 8, !dbg !164
  ret ptr %12, !dbg !164
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @x86_pci_root_bus_resources(i32 noundef %bus, ptr noundef %resources) #0 align 16 !dbg !165 {
entry:
  %bus.addr = alloca i32, align 4
  %resources.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %root_res = alloca ptr, align 8
  %window = alloca ptr, align 8
  %found = alloca i8, align 1
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__mptr14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__mptr26 = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !169, metadata !DIExpression()), !dbg !190
  store ptr %resources, ptr %resources.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resources.addr, metadata !170, metadata !DIExpression()), !dbg !191
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #15, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %info, metadata !171, metadata !DIExpression()), !dbg !193
  %0 = load i32, ptr %bus.addr, align 4, !dbg !194
  %call = call ptr @x86_find_pci_root_info(i32 noundef %0) #16, !dbg !195
  store ptr %call, ptr %info, align 8, !dbg !193
  call void @llvm.lifetime.start.p0(i64 8, ptr %root_res) #15, !dbg !196
  call void @llvm.dbg.declare(metadata ptr %root_res, metadata !172, metadata !DIExpression()), !dbg !197
  call void @llvm.lifetime.start.p0(i64 8, ptr %window) #15, !dbg !198
  call void @llvm.dbg.declare(metadata ptr %window, metadata !173, metadata !DIExpression()), !dbg !199
  call void @llvm.lifetime.start.p0(i64 1, ptr %found) #15, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %found, metadata !174, metadata !DIExpression()), !dbg !201
  store i8 0, ptr %found, align 1, !dbg !201
  %1 = load ptr, ptr %info, align 8, !dbg !202
  %tobool = icmp ne ptr %1, null, !dbg !202
  br i1 %tobool, label %if.end, label %if.then, !dbg !204

if.then:                                          ; preds = %entry
  br label %default_resources, !dbg !205

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !206

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !208

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !208

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %bus.addr, align 4, !dbg !206
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %2) #17, !dbg !206
  store i32 %call1, ptr %tmp, align 4, !dbg !208
  %3 = load i32, ptr %tmp, align 4, !dbg !206
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !210
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !177, metadata !DIExpression()), !dbg !210
  %4 = load ptr, ptr %resources.addr, align 8, !dbg !210
  %next = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !210
  %5 = load ptr, ptr %next, align 8, !dbg !210
  store ptr %5, ptr %__mptr, align 8, !dbg !210
  %6 = load ptr, ptr %__mptr, align 8, !dbg !210
  %add.ptr = getelementptr i8, ptr %6, i64 0, !dbg !210
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !210
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !211
  %7 = load ptr, ptr %tmp2, align 8, !dbg !210
  store ptr %7, ptr %window, align 8, !dbg !211
  br label %for.cond, !dbg !211

for.cond:                                         ; preds = %for.inc, %do.end
  %8 = load ptr, ptr %window, align 8, !dbg !212
  %node = getelementptr inbounds %struct.resource_entry, ptr %8, i32 0, i32 0, !dbg !212
  %9 = load ptr, ptr %resources.addr, align 8, !dbg !212
  %cmp = icmp eq ptr %node, %9, !dbg !212
  %lnot = xor i1 %cmp, true, !dbg !212
  br i1 %lnot, label %for.body, label %for.end, !dbg !211

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %window, align 8, !dbg !213
  %res = getelementptr inbounds %struct.resource_entry, ptr %10, i32 0, i32 1, !dbg !215
  %11 = load ptr, ptr %res, align 8, !dbg !215
  %flags = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 3, !dbg !216
  %12 = load i64, ptr %flags, align 8, !dbg !216
  %and = and i64 %12, 4096, !dbg !217
  %tobool3 = icmp ne i64 %and, 0, !dbg !217
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !218

if.then4:                                         ; preds = %for.body
  store i8 1, ptr %found, align 1, !dbg !219
  br label %for.end, !dbg !221

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !222

for.inc:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #15, !dbg !223
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !180, metadata !DIExpression()), !dbg !223
  %13 = load ptr, ptr %window, align 8, !dbg !223
  %node7 = getelementptr inbounds %struct.resource_entry, ptr %13, i32 0, i32 0, !dbg !223
  %next8 = getelementptr inbounds %struct.list_head, ptr %node7, i32 0, i32 0, !dbg !223
  %14 = load ptr, ptr %next8, align 8, !dbg !223
  store ptr %14, ptr %__mptr6, align 8, !dbg !223
  %15 = load ptr, ptr %__mptr6, align 8, !dbg !223
  %add.ptr10 = getelementptr i8, ptr %15, i64 0, !dbg !223
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #15, !dbg !212
  %16 = load ptr, ptr %tmp9, align 8, !dbg !223
  store ptr %16, ptr %window, align 8, !dbg !212
  br label %for.cond, !dbg !212, !llvm.loop !224

for.end:                                          ; preds = %if.then4, %for.cond
  %17 = load i8, ptr %found, align 1, !dbg !226, !range !228, !noundef !229
  %tobool11 = trunc i8 %17 to i1, !dbg !226
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !230

if.then12:                                        ; preds = %for.end
  %18 = load ptr, ptr %resources.addr, align 8, !dbg !231
  %19 = load ptr, ptr %info, align 8, !dbg !232
  %busn = getelementptr inbounds %struct.pci_root_info, ptr %19, i32 0, i32 3, !dbg !233
  call void @pci_add_resource(ptr noundef %18, ptr noundef %busn) #16, !dbg !234
  br label %if.end13, !dbg !234

if.end13:                                         ; preds = %if.then12, %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #15, !dbg !235
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !183, metadata !DIExpression()), !dbg !235
  %20 = load ptr, ptr %info, align 8, !dbg !235
  %resources15 = getelementptr inbounds %struct.pci_root_info, ptr %20, i32 0, i32 2, !dbg !235
  %next16 = getelementptr inbounds %struct.list_head, ptr %resources15, i32 0, i32 0, !dbg !235
  %21 = load ptr, ptr %next16, align 8, !dbg !235
  store ptr %21, ptr %__mptr14, align 8, !dbg !235
  %22 = load ptr, ptr %__mptr14, align 8, !dbg !235
  %add.ptr18 = getelementptr i8, ptr %22, i64 0, !dbg !235
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !235
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #15, !dbg !236
  %23 = load ptr, ptr %tmp17, align 8, !dbg !235
  store ptr %23, ptr %root_res, align 8, !dbg !236
  br label %for.cond19, !dbg !236

for.cond19:                                       ; preds = %for.inc25, %if.end13
  %24 = load ptr, ptr %root_res, align 8, !dbg !237
  %list = getelementptr inbounds %struct.pci_root_res, ptr %24, i32 0, i32 0, !dbg !237
  %25 = load ptr, ptr %info, align 8, !dbg !237
  %resources20 = getelementptr inbounds %struct.pci_root_info, ptr %25, i32 0, i32 2, !dbg !237
  %cmp21 = icmp eq ptr %list, %resources20, !dbg !237
  %lnot22 = xor i1 %cmp21, true, !dbg !237
  br i1 %lnot22, label %for.body23, label %for.end31, !dbg !236

for.body23:                                       ; preds = %for.cond19
  %26 = load ptr, ptr %resources.addr, align 8, !dbg !238
  %27 = load ptr, ptr %root_res, align 8, !dbg !239
  %res24 = getelementptr inbounds %struct.pci_root_res, ptr %27, i32 0, i32 1, !dbg !240
  call void @pci_add_resource(ptr noundef %26, ptr noundef %res24) #16, !dbg !241
  br label %for.inc25, !dbg !241

for.inc25:                                        ; preds = %for.body23
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr26) #15, !dbg !242
  call void @llvm.dbg.declare(metadata ptr %__mptr26, metadata !186, metadata !DIExpression()), !dbg !242
  %28 = load ptr, ptr %root_res, align 8, !dbg !242
  %list27 = getelementptr inbounds %struct.pci_root_res, ptr %28, i32 0, i32 0, !dbg !242
  %next28 = getelementptr inbounds %struct.list_head, ptr %list27, i32 0, i32 0, !dbg !242
  %29 = load ptr, ptr %next28, align 8, !dbg !242
  store ptr %29, ptr %__mptr26, align 8, !dbg !242
  %30 = load ptr, ptr %__mptr26, align 8, !dbg !242
  %add.ptr30 = getelementptr i8, ptr %30, i64 0, !dbg !242
  store ptr %add.ptr30, ptr %tmp29, align 8, !dbg !242
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr26) #15, !dbg !237
  %31 = load ptr, ptr %tmp29, align 8, !dbg !242
  store ptr %31, ptr %root_res, align 8, !dbg !237
  br label %for.cond19, !dbg !237, !llvm.loop !243

for.end31:                                        ; preds = %for.cond19
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !245

default_resources:                                ; preds = %if.then
  call void @llvm.dbg.label(metadata !189), !dbg !246
  br label %do.body32, !dbg !247

do.body32:                                        ; preds = %default_resources
  br label %do.cond33, !dbg !249

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !249

do.end34:                                         ; preds = %do.cond33
  %32 = load i32, ptr %bus.addr, align 4, !dbg !247
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %32) #17, !dbg !247
  store i32 %call36, ptr %tmp35, align 4, !dbg !249
  %33 = load i32, ptr %tmp35, align 4, !dbg !247
  %34 = load ptr, ptr %resources.addr, align 8, !dbg !251
  call void @pci_add_resource(ptr noundef %34, ptr noundef @ioport_resource) #16, !dbg !252
  %35 = load ptr, ptr %resources.addr, align 8, !dbg !253
  call void @pci_add_resource(ptr noundef %35, ptr noundef @iomem_resource) #16, !dbg !254
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !255
  br label %cleanup, !dbg !255

cleanup:                                          ; preds = %do.end34, %for.end31
  call void @llvm.lifetime.end.p0(i64 1, ptr %found) #15, !dbg !255
  call void @llvm.lifetime.end.p0(i64 8, ptr %window) #15, !dbg !255
  call void @llvm.lifetime.end.p0(i64 8, ptr %root_res) #15, !dbg !255
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #15, !dbg !255
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !255

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !256 dso_local i32 @_printk(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !260 dso_local void @pci_add_resource(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden ptr @alloc_pci_root_info(i32 noundef %bus_min, i32 noundef %bus_max, i32 noundef %node, i32 noundef %link) #5 section ".init.text" align 16 !dbg !264 {
entry:
  %retval = alloca ptr, align 8
  %bus_min.addr = alloca i32, align 4
  %bus_max.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %link.addr = alloca i32, align 4
  %info = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %bus_min, ptr %bus_min.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus_min.addr, metadata !268, metadata !DIExpression()), !dbg !273
  store i32 %bus_max, ptr %bus_max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus_max.addr, metadata !269, metadata !DIExpression()), !dbg !274
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !270, metadata !DIExpression()), !dbg !275
  store i32 %link, ptr %link.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %link.addr, metadata !271, metadata !DIExpression()), !dbg !276
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #15, !dbg !277
  call void @llvm.dbg.declare(metadata ptr %info, metadata !272, metadata !DIExpression()), !dbg !278
  %call = call noalias ptr @kzalloc(i64 noundef 120, i32 noundef 3264) #18, !dbg !279
  store ptr %call, ptr %info, align 8, !dbg !280
  %0 = load ptr, ptr %info, align 8, !dbg !281
  %tobool = icmp ne ptr %0, null, !dbg !281
  br i1 %tobool, label %if.end, label %if.then, !dbg !283

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %info, align 8, !dbg !284
  store ptr %1, ptr %retval, align 8, !dbg !285
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !285

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %info, align 8, !dbg !286
  %name = getelementptr inbounds %struct.pci_root_info, ptr %2, i32 0, i32 1, !dbg !287
  %arraydecay = getelementptr inbounds [12 x i8], ptr %name, i64 0, i64 0, !dbg !286
  %3 = load i32, ptr %bus_min.addr, align 4, !dbg !288
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.2, i32 noundef %3) #16, !dbg !289
  %4 = load ptr, ptr %info, align 8, !dbg !290
  %resources = getelementptr inbounds %struct.pci_root_info, ptr %4, i32 0, i32 2, !dbg !291
  call void @INIT_LIST_HEAD(ptr noundef %resources) #16, !dbg !292
  %5 = load ptr, ptr %info, align 8, !dbg !293
  %name2 = getelementptr inbounds %struct.pci_root_info, ptr %5, i32 0, i32 1, !dbg !294
  %arraydecay3 = getelementptr inbounds [12 x i8], ptr %name2, i64 0, i64 0, !dbg !293
  %6 = load ptr, ptr %info, align 8, !dbg !295
  %busn = getelementptr inbounds %struct.pci_root_info, ptr %6, i32 0, i32 3, !dbg !296
  %name4 = getelementptr inbounds %struct.resource, ptr %busn, i32 0, i32 2, !dbg !297
  store ptr %arraydecay3, ptr %name4, align 8, !dbg !298
  %7 = load i32, ptr %bus_min.addr, align 4, !dbg !299
  %conv = sext i32 %7 to i64, !dbg !299
  %8 = load ptr, ptr %info, align 8, !dbg !300
  %busn5 = getelementptr inbounds %struct.pci_root_info, ptr %8, i32 0, i32 3, !dbg !301
  %start = getelementptr inbounds %struct.resource, ptr %busn5, i32 0, i32 0, !dbg !302
  store i64 %conv, ptr %start, align 8, !dbg !303
  %9 = load i32, ptr %bus_max.addr, align 4, !dbg !304
  %conv6 = sext i32 %9 to i64, !dbg !304
  %10 = load ptr, ptr %info, align 8, !dbg !305
  %busn7 = getelementptr inbounds %struct.pci_root_info, ptr %10, i32 0, i32 3, !dbg !306
  %end = getelementptr inbounds %struct.resource, ptr %busn7, i32 0, i32 1, !dbg !307
  store i64 %conv6, ptr %end, align 8, !dbg !308
  %11 = load ptr, ptr %info, align 8, !dbg !309
  %busn8 = getelementptr inbounds %struct.pci_root_info, ptr %11, i32 0, i32 3, !dbg !310
  %flags = getelementptr inbounds %struct.resource, ptr %busn8, i32 0, i32 3, !dbg !311
  store i64 4096, ptr %flags, align 8, !dbg !312
  %12 = load i32, ptr %node.addr, align 4, !dbg !313
  %13 = load ptr, ptr %info, align 8, !dbg !314
  %node9 = getelementptr inbounds %struct.pci_root_info, ptr %13, i32 0, i32 4, !dbg !315
  store i32 %12, ptr %node9, align 8, !dbg !316
  %14 = load i32, ptr %link.addr, align 4, !dbg !317
  %15 = load ptr, ptr %info, align 8, !dbg !318
  %link10 = getelementptr inbounds %struct.pci_root_info, ptr %15, i32 0, i32 5, !dbg !319
  store i32 %14, ptr %link10, align 4, !dbg !320
  %16 = load ptr, ptr %info, align 8, !dbg !321
  %list = getelementptr inbounds %struct.pci_root_info, ptr %16, i32 0, i32 0, !dbg !322
  call void @list_add_tail(ptr noundef %list, ptr noundef @pci_root_infos) #16, !dbg !323
  %17 = load ptr, ptr %info, align 8, !dbg !324
  store ptr %17, ptr %retval, align 8, !dbg !325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !325

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #15, !dbg !326
  %18 = load ptr, ptr %retval, align 8, !dbg !326
  ret ptr %18, !dbg !326
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !327 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !335, metadata !DIExpression()), !dbg !337
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !336, metadata !DIExpression()), !dbg !338
  %0 = load i64, ptr %size.addr, align 8, !dbg !339
  %1 = load i32, ptr %flags.addr, align 4, !dbg !340
  %or = or i32 %1, 256, !dbg !341
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !342
  ret ptr %call, !dbg !343
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !344 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #7 align 16 !dbg !349 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !354, metadata !DIExpression()), !dbg !355
  br label %do.body, !dbg !356

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !357

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !359

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !357

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !361
  %1 = load ptr, ptr %list.addr, align 8, !dbg !361
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !361
  store volatile ptr %0, ptr %next, align 8, !dbg !361
  br label %do.end3, !dbg !361

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !357

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !363

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !364

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !366

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !364

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !368
  %3 = load ptr, ptr %list.addr, align 8, !dbg !368
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !368
  store volatile ptr %2, ptr %prev, align 8, !dbg !368
  br label %do.end9, !dbg !368

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !364

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !370
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #7 align 16 !dbg !371 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !375, metadata !DIExpression()), !dbg !377
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !376, metadata !DIExpression()), !dbg !378
  %0 = load ptr, ptr %new.addr, align 8, !dbg !379
  %1 = load ptr, ptr %head.addr, align 8, !dbg !380
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !381
  %2 = load ptr, ptr %prev, align 8, !dbg !381
  %3 = load ptr, ptr %head.addr, align 8, !dbg !382
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #16, !dbg !383
  ret void, !dbg !384
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @update_res(ptr noundef %info, i64 noundef %start, i64 noundef %end, i64 noundef %flags, i32 noundef %merge) #0 align 16 !dbg !385 {
entry:
  %info.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %flags.addr = alloca i64, align 8
  %merge.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %root_res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %final_start = alloca i64, align 8
  %final_end = alloca i64, align 8
  %common_start = alloca i64, align 8
  %common_end = alloca i64, align 8
  %__UNIQUE_ID___x292 = alloca i64, align 8
  %__UNIQUE_ID___y293 = alloca i64, align 8
  %tmp14 = alloca i64, align 8
  %__UNIQUE_ID___x294 = alloca i64, align 8
  %__UNIQUE_ID___y295 = alloca i64, align 8
  %tmp17 = alloca i64, align 8
  %__UNIQUE_ID___x296 = alloca i64, align 8
  %__UNIQUE_ID___y297 = alloca i64, align 8
  %tmp27 = alloca i64, align 8
  %__UNIQUE_ID___x298 = alloca i64, align 8
  %__UNIQUE_ID___y299 = alloca i64, align 8
  %tmp34 = alloca i64, align 8
  %__mptr45 = alloca ptr, align 8
  %tmp48 = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !389, metadata !DIExpression()), !dbg !420
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !390, metadata !DIExpression()), !dbg !421
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !391, metadata !DIExpression()), !dbg !422
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !392, metadata !DIExpression()), !dbg !423
  store i32 %merge, ptr %merge.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %merge.addr, metadata !393, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #15, !dbg !425
  call void @llvm.dbg.declare(metadata ptr %res, metadata !394, metadata !DIExpression()), !dbg !426
  call void @llvm.lifetime.start.p0(i64 8, ptr %root_res) #15, !dbg !427
  call void @llvm.dbg.declare(metadata ptr %root_res, metadata !395, metadata !DIExpression()), !dbg !428
  %0 = load i64, ptr %start.addr, align 8, !dbg !429
  %1 = load i64, ptr %end.addr, align 8, !dbg !431
  %cmp = icmp ugt i64 %0, %1, !dbg !432
  br i1 %cmp, label %if.then, label %if.end, !dbg !433

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60, !dbg !434

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %start.addr, align 8, !dbg !435
  %cmp1 = icmp eq i64 %2, -1, !dbg !437
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !438

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60, !dbg !439

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %merge.addr, align 4, !dbg !440
  %tobool = icmp ne i32 %3, 0, !dbg !440
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !442

if.then4:                                         ; preds = %if.end3
  br label %addit, !dbg !443

if.end5:                                          ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !444
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !396, metadata !DIExpression()), !dbg !444
  %4 = load ptr, ptr %info.addr, align 8, !dbg !444
  %resources = getelementptr inbounds %struct.pci_root_info, ptr %4, i32 0, i32 2, !dbg !444
  %next = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 0, !dbg !444
  %5 = load ptr, ptr %next, align 8, !dbg !444
  store ptr %5, ptr %__mptr, align 8, !dbg !444
  %6 = load ptr, ptr %__mptr, align 8, !dbg !444
  %add.ptr = getelementptr i8, ptr %6, i64 0, !dbg !444
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !444
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !445
  %7 = load ptr, ptr %tmp, align 8, !dbg !444
  store ptr %7, ptr %root_res, align 8, !dbg !445
  br label %for.cond, !dbg !445

for.cond:                                         ; preds = %for.inc, %if.end5
  %8 = load ptr, ptr %root_res, align 8, !dbg !446
  %list = getelementptr inbounds %struct.pci_root_res, ptr %8, i32 0, i32 0, !dbg !446
  %9 = load ptr, ptr %info.addr, align 8, !dbg !446
  %resources6 = getelementptr inbounds %struct.pci_root_info, ptr %9, i32 0, i32 2, !dbg !446
  %cmp7 = icmp eq ptr %list, %resources6, !dbg !446
  %lnot = xor i1 %cmp7, true, !dbg !446
  br i1 %lnot, label %for.body, label %for.end, !dbg !445

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %final_start) #15, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %final_start, metadata !399, metadata !DIExpression()), !dbg !448
  call void @llvm.lifetime.start.p0(i64 8, ptr %final_end) #15, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %final_end, metadata !402, metadata !DIExpression()), !dbg !449
  call void @llvm.lifetime.start.p0(i64 8, ptr %common_start) #15, !dbg !450
  call void @llvm.dbg.declare(metadata ptr %common_start, metadata !403, metadata !DIExpression()), !dbg !451
  call void @llvm.lifetime.start.p0(i64 8, ptr %common_end) #15, !dbg !450
  call void @llvm.dbg.declare(metadata ptr %common_end, metadata !404, metadata !DIExpression()), !dbg !452
  %10 = load ptr, ptr %root_res, align 8, !dbg !453
  %res8 = getelementptr inbounds %struct.pci_root_res, ptr %10, i32 0, i32 1, !dbg !454
  store ptr %res8, ptr %res, align 8, !dbg !455
  %11 = load ptr, ptr %res, align 8, !dbg !456
  %flags9 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 3, !dbg !458
  %12 = load i64, ptr %flags9, align 8, !dbg !458
  %13 = load i64, ptr %flags.addr, align 8, !dbg !459
  %cmp10 = icmp ne i64 %12, %13, !dbg !460
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !461

if.then11:                                        ; preds = %for.body
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !462

if.end12:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x292) #15, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x292, metadata !405, metadata !DIExpression()), !dbg !463
  %14 = load ptr, ptr %res, align 8, !dbg !463
  %start13 = getelementptr inbounds %struct.resource, ptr %14, i32 0, i32 0, !dbg !463
  %15 = load i64, ptr %start13, align 8, !dbg !463
  store i64 %15, ptr %__UNIQUE_ID___x292, align 8, !dbg !463
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y293) #15, !dbg !463
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y293, metadata !407, metadata !DIExpression()), !dbg !463
  %16 = load i64, ptr %start.addr, align 8, !dbg !463
  store i64 %16, ptr %__UNIQUE_ID___y293, align 8, !dbg !463
  %17 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !463
  %18 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !463
  %cmp15 = icmp ugt i64 %17, %18, !dbg !463
  br i1 %cmp15, label %cond.true, label %cond.false, !dbg !463

cond.true:                                        ; preds = %if.end12
  %19 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !463
  br label %cond.end, !dbg !463

cond.false:                                       ; preds = %if.end12
  %20 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !463
  br label %cond.end, !dbg !463

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !463
  store i64 %cond, ptr %tmp14, align 8, !dbg !463
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y293) #15, !dbg !464
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x292) #15, !dbg !464
  %21 = load i64, ptr %tmp14, align 8, !dbg !463
  store i64 %21, ptr %common_start, align 8, !dbg !465
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x294) #15, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x294, metadata !408, metadata !DIExpression()), !dbg !466
  %22 = load ptr, ptr %res, align 8, !dbg !466
  %end16 = getelementptr inbounds %struct.resource, ptr %22, i32 0, i32 1, !dbg !466
  %23 = load i64, ptr %end16, align 8, !dbg !466
  store i64 %23, ptr %__UNIQUE_ID___x294, align 8, !dbg !466
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y295) #15, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y295, metadata !410, metadata !DIExpression()), !dbg !466
  %24 = load i64, ptr %end.addr, align 8, !dbg !466
  store i64 %24, ptr %__UNIQUE_ID___y295, align 8, !dbg !466
  %25 = load i64, ptr %__UNIQUE_ID___x294, align 8, !dbg !466
  %26 = load i64, ptr %__UNIQUE_ID___y295, align 8, !dbg !466
  %cmp18 = icmp ult i64 %25, %26, !dbg !466
  br i1 %cmp18, label %cond.true19, label %cond.false20, !dbg !466

cond.true19:                                      ; preds = %cond.end
  %27 = load i64, ptr %__UNIQUE_ID___x294, align 8, !dbg !466
  br label %cond.end21, !dbg !466

cond.false20:                                     ; preds = %cond.end
  %28 = load i64, ptr %__UNIQUE_ID___y295, align 8, !dbg !466
  br label %cond.end21, !dbg !466

cond.end21:                                       ; preds = %cond.false20, %cond.true19
  %cond22 = phi i64 [ %27, %cond.true19 ], [ %28, %cond.false20 ], !dbg !466
  store i64 %cond22, ptr %tmp17, align 8, !dbg !466
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y295) #15, !dbg !467
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x294) #15, !dbg !467
  %29 = load i64, ptr %tmp17, align 8, !dbg !466
  store i64 %29, ptr %common_end, align 8, !dbg !468
  %30 = load i64, ptr %common_start, align 8, !dbg !469
  %31 = load i64, ptr %common_end, align 8, !dbg !471
  %add = add i64 %31, 1, !dbg !472
  %cmp23 = icmp ugt i64 %30, %add, !dbg !473
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !474

if.then24:                                        ; preds = %cond.end21
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !475

if.end25:                                         ; preds = %cond.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x296) #15, !dbg !476
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x296, metadata !411, metadata !DIExpression()), !dbg !476
  %32 = load ptr, ptr %res, align 8, !dbg !476
  %start26 = getelementptr inbounds %struct.resource, ptr %32, i32 0, i32 0, !dbg !476
  %33 = load i64, ptr %start26, align 8, !dbg !476
  store i64 %33, ptr %__UNIQUE_ID___x296, align 8, !dbg !476
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y297) #15, !dbg !476
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y297, metadata !413, metadata !DIExpression()), !dbg !476
  %34 = load i64, ptr %start.addr, align 8, !dbg !476
  store i64 %34, ptr %__UNIQUE_ID___y297, align 8, !dbg !476
  %35 = load i64, ptr %__UNIQUE_ID___x296, align 8, !dbg !476
  %36 = load i64, ptr %__UNIQUE_ID___y297, align 8, !dbg !476
  %cmp28 = icmp ult i64 %35, %36, !dbg !476
  br i1 %cmp28, label %cond.true29, label %cond.false30, !dbg !476

cond.true29:                                      ; preds = %if.end25
  %37 = load i64, ptr %__UNIQUE_ID___x296, align 8, !dbg !476
  br label %cond.end31, !dbg !476

cond.false30:                                     ; preds = %if.end25
  %38 = load i64, ptr %__UNIQUE_ID___y297, align 8, !dbg !476
  br label %cond.end31, !dbg !476

cond.end31:                                       ; preds = %cond.false30, %cond.true29
  %cond32 = phi i64 [ %37, %cond.true29 ], [ %38, %cond.false30 ], !dbg !476
  store i64 %cond32, ptr %tmp27, align 8, !dbg !476
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y297) #15, !dbg !477
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x296) #15, !dbg !477
  %39 = load i64, ptr %tmp27, align 8, !dbg !476
  store i64 %39, ptr %final_start, align 8, !dbg !478
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x298) #15, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x298, metadata !414, metadata !DIExpression()), !dbg !479
  %40 = load ptr, ptr %res, align 8, !dbg !479
  %end33 = getelementptr inbounds %struct.resource, ptr %40, i32 0, i32 1, !dbg !479
  %41 = load i64, ptr %end33, align 8, !dbg !479
  store i64 %41, ptr %__UNIQUE_ID___x298, align 8, !dbg !479
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y299) #15, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y299, metadata !416, metadata !DIExpression()), !dbg !479
  %42 = load i64, ptr %end.addr, align 8, !dbg !479
  store i64 %42, ptr %__UNIQUE_ID___y299, align 8, !dbg !479
  %43 = load i64, ptr %__UNIQUE_ID___x298, align 8, !dbg !479
  %44 = load i64, ptr %__UNIQUE_ID___y299, align 8, !dbg !479
  %cmp35 = icmp ugt i64 %43, %44, !dbg !479
  br i1 %cmp35, label %cond.true36, label %cond.false37, !dbg !479

cond.true36:                                      ; preds = %cond.end31
  %45 = load i64, ptr %__UNIQUE_ID___x298, align 8, !dbg !479
  br label %cond.end38, !dbg !479

cond.false37:                                     ; preds = %cond.end31
  %46 = load i64, ptr %__UNIQUE_ID___y299, align 8, !dbg !479
  br label %cond.end38, !dbg !479

cond.end38:                                       ; preds = %cond.false37, %cond.true36
  %cond39 = phi i64 [ %45, %cond.true36 ], [ %46, %cond.false37 ], !dbg !479
  store i64 %cond39, ptr %tmp34, align 8, !dbg !479
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y299) #15, !dbg !480
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x298) #15, !dbg !480
  %47 = load i64, ptr %tmp34, align 8, !dbg !479
  store i64 %47, ptr %final_end, align 8, !dbg !481
  %48 = load i64, ptr %final_start, align 8, !dbg !482
  %49 = load ptr, ptr %res, align 8, !dbg !483
  %start40 = getelementptr inbounds %struct.resource, ptr %49, i32 0, i32 0, !dbg !484
  store i64 %48, ptr %start40, align 8, !dbg !485
  %50 = load i64, ptr %final_end, align 8, !dbg !486
  %51 = load ptr, ptr %res, align 8, !dbg !487
  %end41 = getelementptr inbounds %struct.resource, ptr %51, i32 0, i32 1, !dbg !488
  store i64 %50, ptr %end41, align 8, !dbg !489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !490

cleanup:                                          ; preds = %cond.end38, %if.then24, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %common_end) #15, !dbg !491
  call void @llvm.lifetime.end.p0(i64 8, ptr %common_start) #15, !dbg !491
  call void @llvm.lifetime.end.p0(i64 8, ptr %final_end) #15, !dbg !491
  call void @llvm.lifetime.end.p0(i64 8, ptr %final_start) #15, !dbg !491
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup60 [
    i32 5, label %for.inc
  ]

for.inc:                                          ; preds = %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr45) #15, !dbg !492
  call void @llvm.dbg.declare(metadata ptr %__mptr45, metadata !417, metadata !DIExpression()), !dbg !492
  %52 = load ptr, ptr %root_res, align 8, !dbg !492
  %list46 = getelementptr inbounds %struct.pci_root_res, ptr %52, i32 0, i32 0, !dbg !492
  %next47 = getelementptr inbounds %struct.list_head, ptr %list46, i32 0, i32 0, !dbg !492
  %53 = load ptr, ptr %next47, align 8, !dbg !492
  store ptr %53, ptr %__mptr45, align 8, !dbg !492
  %54 = load ptr, ptr %__mptr45, align 8, !dbg !492
  %add.ptr49 = getelementptr i8, ptr %54, i64 0, !dbg !492
  store ptr %add.ptr49, ptr %tmp48, align 8, !dbg !492
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr45) #15, !dbg !446
  %55 = load ptr, ptr %tmp48, align 8, !dbg !492
  store ptr %55, ptr %root_res, align 8, !dbg !446
  br label %for.cond, !dbg !446, !llvm.loop !493

for.end:                                          ; preds = %for.cond
  br label %addit, !dbg !494

addit:                                            ; preds = %for.end, %if.then4
  call void @llvm.dbg.label(metadata !419), !dbg !495
  %call = call noalias ptr @kzalloc(i64 noundef 80, i32 noundef 3264) #18, !dbg !496
  store ptr %call, ptr %root_res, align 8, !dbg !497
  %56 = load ptr, ptr %root_res, align 8, !dbg !498
  %tobool50 = icmp ne ptr %56, null, !dbg !498
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !500

if.then51:                                        ; preds = %addit
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup60, !dbg !501

if.end52:                                         ; preds = %addit
  %57 = load ptr, ptr %root_res, align 8, !dbg !502
  %res53 = getelementptr inbounds %struct.pci_root_res, ptr %57, i32 0, i32 1, !dbg !503
  store ptr %res53, ptr %res, align 8, !dbg !504
  %58 = load ptr, ptr %info.addr, align 8, !dbg !505
  %name = getelementptr inbounds %struct.pci_root_info, ptr %58, i32 0, i32 1, !dbg !506
  %arraydecay = getelementptr inbounds [12 x i8], ptr %name, i64 0, i64 0, !dbg !505
  %59 = load ptr, ptr %res, align 8, !dbg !507
  %name54 = getelementptr inbounds %struct.resource, ptr %59, i32 0, i32 2, !dbg !508
  store ptr %arraydecay, ptr %name54, align 8, !dbg !509
  %60 = load i64, ptr %flags.addr, align 8, !dbg !510
  %61 = load ptr, ptr %res, align 8, !dbg !511
  %flags55 = getelementptr inbounds %struct.resource, ptr %61, i32 0, i32 3, !dbg !512
  store i64 %60, ptr %flags55, align 8, !dbg !513
  %62 = load i64, ptr %start.addr, align 8, !dbg !514
  %63 = load ptr, ptr %res, align 8, !dbg !515
  %start56 = getelementptr inbounds %struct.resource, ptr %63, i32 0, i32 0, !dbg !516
  store i64 %62, ptr %start56, align 8, !dbg !517
  %64 = load i64, ptr %end.addr, align 8, !dbg !518
  %65 = load ptr, ptr %res, align 8, !dbg !519
  %end57 = getelementptr inbounds %struct.resource, ptr %65, i32 0, i32 1, !dbg !520
  store i64 %64, ptr %end57, align 8, !dbg !521
  %66 = load ptr, ptr %root_res, align 8, !dbg !522
  %list58 = getelementptr inbounds %struct.pci_root_res, ptr %66, i32 0, i32 0, !dbg !523
  %67 = load ptr, ptr %info.addr, align 8, !dbg !524
  %resources59 = getelementptr inbounds %struct.pci_root_info, ptr %67, i32 0, i32 2, !dbg !525
  call void @list_add_tail(ptr noundef %list58, ptr noundef %resources59) #16, !dbg !526
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !527
  br label %cleanup60, !dbg !527

cleanup60:                                        ; preds = %if.end52, %if.then51, %cleanup, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %root_res) #15, !dbg !527
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #15, !dbg !527
  %cleanup.dest62 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest62, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup60, %cleanup60
  ret void, !dbg !527

unreachable:                                      ; preds = %cleanup60
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !528 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !530, metadata !DIExpression()), !dbg !535
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !531, metadata !DIExpression()), !dbg !536
  %0 = load i64, ptr %size.addr, align 8, !dbg !537
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !538
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !539

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !540
  %tobool = icmp ne i64 %2, 0, !dbg !540
  br i1 %tobool, label %if.then, label %if.end7, !dbg !541

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !542
  call void @llvm.dbg.declare(metadata ptr %index, metadata !532, metadata !DIExpression()), !dbg !543
  %3 = load i64, ptr %size.addr, align 8, !dbg !544
  %cmp = icmp ugt i64 %3, 8192, !dbg !546
  br i1 %cmp, label %if.then1, label %if.end, !dbg !547

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !548
  %5 = load i32, ptr %flags.addr, align 4, !dbg !549
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !550
  store ptr %call, ptr %retval, align 8, !dbg !551
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !551

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !552
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !552
  store i32 %call2, ptr %index, align 4, !dbg !553
  %7 = load i32, ptr %flags.addr, align 4, !dbg !554
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !555
  %9 = ptrtoint ptr %8 to i64, !dbg !555
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !556
  %idxprom = zext i32 %call3 to i64, !dbg !557
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !557
  %10 = load i32, ptr %index, align 4, !dbg !558
  %idxprom4 = zext i32 %10 to i64, !dbg !557
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !557
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !557
  %12 = load i32, ptr %flags.addr, align 4, !dbg !559
  %13 = load i64, ptr %size.addr, align 8, !dbg !560
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !561
  store ptr %call6, ptr %retval, align 8, !dbg !562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !562

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !563
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !564
  %15 = load i32, ptr %flags.addr, align 4, !dbg !565
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !566
  store ptr %call8, ptr %retval, align 8, !dbg !567
  br label %return, !dbg !567

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !568
  ret ptr %16, !dbg !568
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !569 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !570 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !574, metadata !DIExpression()), !dbg !576
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !575, metadata !DIExpression()), !dbg !577
  %0 = load i64, ptr %size.addr, align 8, !dbg !578
  %tobool = icmp ne i64 %0, 0, !dbg !578
  br i1 %tobool, label %if.end, label %if.then, !dbg !580

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !581
  br label %return, !dbg !581

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !582
  %cmp = icmp ule i64 %1, 8, !dbg !584
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !585

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !586
  br label %return, !dbg !586

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !587
  %cmp3 = icmp ugt i64 %2, 64, !dbg !589
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !590

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !591
  %cmp4 = icmp ule i64 %3, 96, !dbg !592
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !593

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !594
  br label %return, !dbg !594

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !595
  %cmp7 = icmp ugt i64 %4, 128, !dbg !597
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !598

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !599
  %cmp9 = icmp ule i64 %5, 192, !dbg !600
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !601

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !602
  br label %return, !dbg !602

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !603
  %cmp12 = icmp ule i64 %6, 8, !dbg !605
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !606

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !607
  br label %return, !dbg !607

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !608
  %cmp15 = icmp ule i64 %7, 16, !dbg !610
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !611

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !612
  br label %return, !dbg !612

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !613
  %cmp18 = icmp ule i64 %8, 32, !dbg !615
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !616

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !617
  br label %return, !dbg !617

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !618
  %cmp21 = icmp ule i64 %9, 64, !dbg !620
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !621

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !622
  br label %return, !dbg !622

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !623
  %cmp24 = icmp ule i64 %10, 128, !dbg !625
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !626

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !627
  br label %return, !dbg !627

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !628
  %cmp27 = icmp ule i64 %11, 256, !dbg !630
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !631

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !632
  br label %return, !dbg !632

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !633
  %cmp30 = icmp ule i64 %12, 512, !dbg !635
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !636

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !637
  br label %return, !dbg !637

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !638
  %cmp33 = icmp ule i64 %13, 1024, !dbg !640
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !641

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !642
  br label %return, !dbg !642

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !643
  %cmp36 = icmp ule i64 %14, 2048, !dbg !645
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !646

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !647
  br label %return, !dbg !647

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !648
  %cmp39 = icmp ule i64 %15, 4096, !dbg !650
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !651

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !652
  br label %return, !dbg !652

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !653
  %cmp42 = icmp ule i64 %16, 8192, !dbg !655
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !656

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !657
  br label %return, !dbg !657

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !658
  %cmp45 = icmp ule i64 %17, 16384, !dbg !660
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !661

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !662
  br label %return, !dbg !662

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !663
  %cmp48 = icmp ule i64 %18, 32768, !dbg !665
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !666

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !667
  br label %return, !dbg !667

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !668
  %cmp51 = icmp ule i64 %19, 65536, !dbg !670
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !671

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !672
  br label %return, !dbg !672

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !673
  %cmp54 = icmp ule i64 %20, 131072, !dbg !675
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !676

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !677
  br label %return, !dbg !677

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !678
  %cmp57 = icmp ule i64 %21, 262144, !dbg !680
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !681

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !682
  br label %return, !dbg !682

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !683
  %cmp60 = icmp ule i64 %22, 524288, !dbg !685
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !686

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !687
  br label %return, !dbg !687

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !688
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !690
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !691

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !692
  br label %return, !dbg !692

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !693
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !695
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !696

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !697
  br label %return, !dbg !697

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !698, !range !228, !noundef !229
  %tobool69 = trunc i8 %25 to i1, !dbg !698
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !700

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !701

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #20, !dbg !702, !srcloc !705
  unreachable, !dbg !702

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !706

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !707

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !708

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !710

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !708

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #15, !dbg !712, !srcloc !714
  br label %do.end75, !dbg !712

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !708

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !715
  br label %return, !dbg !715

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !716
  ret i32 %26, !dbg !716
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !717 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !723 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !727, metadata !DIExpression()), !dbg !729
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !728, metadata !DIExpression()), !dbg !730
  %0 = load i32, ptr %flags.addr, align 4, !dbg !731
  %and = and i32 %0, 17, !dbg !731
  %cmp = icmp eq i32 %and, 0, !dbg !731
  %lnot = xor i1 %cmp, true, !dbg !731
  %lnot1 = xor i1 %lnot, true, !dbg !731
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !731
  %conv = sext i32 %lnot.ext to i64, !dbg !731
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !731
  %tobool = icmp ne i64 %expval, 0, !dbg !731
  br i1 %tobool, label %if.then, label %if.end, !dbg !733

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !734
  br label %return, !dbg !734

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !735
  %and2 = and i32 %1, 1, !dbg !737
  %tobool3 = icmp ne i32 %and2, 0, !dbg !737
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !738

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !739
  br label %return, !dbg !739

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !740
  br label %return, !dbg !740

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !742
  ret i32 %2, !dbg !742
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !743 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !744 dso_local void @__compiletime_assert_204() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !747 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !751, metadata !DIExpression()), !dbg !754
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !752, metadata !DIExpression()), !dbg !755
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !753, metadata !DIExpression()), !dbg !756
  %0 = load ptr, ptr %new.addr, align 8, !dbg !757
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !759
  %2 = load ptr, ptr %next.addr, align 8, !dbg !760
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !761
  br i1 %call, label %if.end, label %if.then, !dbg !762

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !763

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !764
  %4 = load ptr, ptr %next.addr, align 8, !dbg !765
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !766
  store ptr %3, ptr %prev1, align 8, !dbg !767
  %5 = load ptr, ptr %next.addr, align 8, !dbg !768
  %6 = load ptr, ptr %new.addr, align 8, !dbg !769
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !770
  store ptr %5, ptr %next2, align 8, !dbg !771
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !772
  %8 = load ptr, ptr %new.addr, align 8, !dbg !773
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !774
  store ptr %7, ptr %prev3, align 8, !dbg !775
  br label %do.body, !dbg !776

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !777

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !779

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !777

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !781
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !781
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !781
  store volatile ptr %9, ptr %next6, align 8, !dbg !781
  br label %do.end7, !dbg !781

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !777

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !783
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !784 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !788, metadata !DIExpression()), !dbg !791
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !789, metadata !DIExpression()), !dbg !792
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !790, metadata !DIExpression()), !dbg !793
  ret i1 true, !dbg !794
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pci_root_infos", scope: !2, file: !3, line: 8, type: !28, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/pci/.bus_numa.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/pci/bus_numa\22 -D KBUILD_BASENAME=\22bus_numa\22 -D KBUILD_MODNAME=\22bus_numa\22 -D __KBUILD_MODNAME=kmod_bus_numa -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/pci/bus_numa.ll arch/x86/pci/bus_numa.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !82, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/pci/bus_numa.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc72e6777fe5172d43abd637aa6619fa")
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
!21 = !{!22, !23, !60, !66, !40, !67, !53, !80}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_entry", file: !25, line: 23, size: 768, elements: !26)
!25 = !DIFile(filename: "./include/linux/resource_ext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38257f3d7ebf1230f659bba39b1a0b6a")
!26 = !{!27, !34, !58, !59}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !24, file: !25, line: 24, baseType: !28, size: 128)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !29, line: 190, size: 128, elements: !30)
!29 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!30 = !{!31, !33}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !28, file: !29, line: 191, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !28, file: !29, line: 191, baseType: !32, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !24, file: !25, line: 25, baseType: !35, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !37, line: 21, size: 512, elements: !38)
!37 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!38 = !{!39, !47, !48, !52, !54, !55, !56, !57}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !36, file: !37, line: 22, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !29, line: 164, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !29, line: 159, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !43, line: 23, baseType: !44)
!43 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !45, line: 31, baseType: !46)
!45 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!46 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !36, file: !37, line: 23, baseType: !40, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !36, file: !37, line: 24, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !37, line: 25, baseType: !53, size: 64, offset: 192)
!53 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !36, file: !37, line: 26, baseType: !53, size: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !36, file: !37, line: 27, baseType: !35, size: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !36, file: !37, line: 27, baseType: !35, size: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !36, file: !37, line: 27, baseType: !35, size: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !24, file: !25, line: 26, baseType: !40, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "__res", scope: !24, file: !25, line: 27, baseType: !36, size: 512, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_root_res", file: !62, line: 8, size: 640, elements: !63)
!62 = !DIFile(filename: "arch/x86/pci/bus_numa.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98c55662bf9c994a894581bc63b2712f")
!63 = !{!64, !65}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !61, file: !62, line: 9, baseType: !28, size: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !61, file: !62, line: 10, baseType: !36, size: 512, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !29, line: 154, baseType: !7)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_root_info", file: !62, line: 13, size: 960, elements: !69)
!69 = !{!70, !71, !75, !76, !77, !79}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !68, file: !62, line: 14, baseType: !28, size: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !68, file: !62, line: 15, baseType: !72, size: 96, offset: 128)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 96, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 12)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !68, file: !62, line: 16, baseType: !28, size: 128, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "busn", scope: !68, file: !62, line: 17, baseType: !36, size: 512, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !68, file: !62, line: 18, baseType: !78, size: 32, offset: 896)
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !68, file: !62, line: 19, baseType: !78, size: 32, offset: 928)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!82 = !{!0, !83, !88, !93, !98}
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !3, line: 41, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 392, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 49)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 376, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 47)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 112, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 14)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 168, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 21)
!103 = !{i32 7, !"Dwarf Version", i32 5}
!104 = !{i32 2, !"Debug Info Version", i32 3}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 8, !"cf-protection-branch", i32 1}
!107 = !{i32 4, !"function_return_thunk_extern", i32 1}
!108 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!109 = !{i32 1, !"Code Model", i32 2}
!110 = !{i32 1, !"override-stack-alignment", i32 8}
!111 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!112 = distinct !DISubprogram(name: "x86_pci_root_bus_node", scope: !3, file: !3, line: 21, type: !113, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !115)
!113 = !DISubroutineType(types: !114)
!114 = !{!78, !78}
!115 = !{!116, !117}
!116 = !DILocalVariable(name: "bus", arg: 1, scope: !112, file: !3, line: 21, type: !78)
!117 = !DILocalVariable(name: "info", scope: !112, file: !3, line: 23, type: !67)
!118 = !DILocation(line: 21, column: 31, scope: !112)
!119 = !DILocation(line: 23, column: 2, scope: !112)
!120 = !DILocation(line: 23, column: 24, scope: !112)
!121 = !DILocation(line: 23, column: 54, scope: !112)
!122 = !DILocation(line: 23, column: 31, scope: !112)
!123 = !DILocation(line: 25, column: 7, scope: !124)
!124 = distinct !DILexicalBlock(scope: !112, file: !3, line: 25, column: 6)
!125 = !DILocation(line: 25, column: 6, scope: !112)
!126 = !DILocation(line: 26, column: 3, scope: !124)
!127 = !DILocation(line: 28, column: 9, scope: !112)
!128 = !DILocation(line: 28, column: 15, scope: !112)
!129 = !DILocation(line: 28, column: 2, scope: !112)
!130 = !DILocation(line: 29, column: 1, scope: !112)
!131 = distinct !DISubprogram(name: "x86_find_pci_root_info", scope: !3, file: !3, line: 10, type: !132, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{!67, !78}
!134 = !{!135, !136, !137, !140}
!135 = !DILocalVariable(name: "bus", arg: 1, scope: !131, file: !3, line: 10, type: !78)
!136 = !DILocalVariable(name: "info", scope: !131, file: !3, line: 12, type: !67)
!137 = !DILocalVariable(name: "__mptr", scope: !138, file: !3, line: 14, type: !22)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 14, column: 2)
!139 = distinct !DILexicalBlock(scope: !131, file: !3, line: 14, column: 2)
!140 = !DILocalVariable(name: "__mptr", scope: !141, file: !3, line: 14, type: !22)
!141 = distinct !DILexicalBlock(scope: !142, file: !3, line: 14, column: 2)
!142 = distinct !DILexicalBlock(scope: !139, file: !3, line: 14, column: 2)
!143 = !DILocation(line: 10, column: 57, scope: !131)
!144 = !DILocation(line: 12, column: 2, scope: !131)
!145 = !DILocation(line: 12, column: 24, scope: !131)
!146 = !DILocation(line: 14, column: 2, scope: !138)
!147 = !DILocation(line: 14, column: 2, scope: !139)
!148 = !DILocation(line: 14, column: 2, scope: !142)
!149 = !DILocation(line: 15, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !142, file: !3, line: 15, column: 7)
!151 = !DILocation(line: 15, column: 13, scope: !150)
!152 = !DILocation(line: 15, column: 18, scope: !150)
!153 = !DILocation(line: 15, column: 27, scope: !150)
!154 = !DILocation(line: 15, column: 24, scope: !150)
!155 = !DILocation(line: 15, column: 7, scope: !142)
!156 = !DILocation(line: 16, column: 11, scope: !150)
!157 = !DILocation(line: 16, column: 4, scope: !150)
!158 = !DILocation(line: 14, column: 2, scope: !141)
!159 = distinct !{!159, !147, !160, !161, !162}
!160 = !DILocation(line: 16, column: 11, scope: !139)
!161 = !{!"llvm.loop.mustprogress"}
!162 = !{!"llvm.loop.unroll.disable"}
!163 = !DILocation(line: 18, column: 2, scope: !131)
!164 = !DILocation(line: 19, column: 1, scope: !131)
!165 = distinct !DISubprogram(name: "x86_pci_root_bus_resources", scope: !3, file: !3, line: 31, type: !166, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !168)
!166 = !DISubroutineType(types: !167)
!167 = !{null, !78, !32}
!168 = !{!169, !170, !171, !172, !173, !174, !177, !180, !183, !186, !189}
!169 = !DILocalVariable(name: "bus", arg: 1, scope: !165, file: !3, line: 31, type: !78)
!170 = !DILocalVariable(name: "resources", arg: 2, scope: !165, file: !3, line: 31, type: !32)
!171 = !DILocalVariable(name: "info", scope: !165, file: !3, line: 33, type: !67)
!172 = !DILocalVariable(name: "root_res", scope: !165, file: !3, line: 34, type: !60)
!173 = !DILocalVariable(name: "window", scope: !165, file: !3, line: 35, type: !23)
!174 = !DILocalVariable(name: "found", scope: !165, file: !3, line: 36, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !29, line: 35, baseType: !176)
!176 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!177 = !DILocalVariable(name: "__mptr", scope: !178, file: !3, line: 45, type: !22)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 45, column: 2)
!179 = distinct !DILexicalBlock(scope: !165, file: !3, line: 45, column: 2)
!180 = !DILocalVariable(name: "__mptr", scope: !181, file: !3, line: 45, type: !22)
!181 = distinct !DILexicalBlock(scope: !182, file: !3, line: 45, column: 2)
!182 = distinct !DILexicalBlock(scope: !179, file: !3, line: 45, column: 2)
!183 = !DILocalVariable(name: "__mptr", scope: !184, file: !3, line: 54, type: !22)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 54, column: 2)
!185 = distinct !DILexicalBlock(scope: !165, file: !3, line: 54, column: 2)
!186 = !DILocalVariable(name: "__mptr", scope: !187, file: !3, line: 54, type: !22)
!187 = distinct !DILexicalBlock(scope: !188, file: !3, line: 54, column: 2)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 54, column: 2)
!189 = !DILabel(scope: !165, name: "default_resources", file: !3, line: 59)
!190 = !DILocation(line: 31, column: 37, scope: !165)
!191 = !DILocation(line: 31, column: 60, scope: !165)
!192 = !DILocation(line: 33, column: 2, scope: !165)
!193 = !DILocation(line: 33, column: 24, scope: !165)
!194 = !DILocation(line: 33, column: 54, scope: !165)
!195 = !DILocation(line: 33, column: 31, scope: !165)
!196 = !DILocation(line: 34, column: 2, scope: !165)
!197 = !DILocation(line: 34, column: 23, scope: !165)
!198 = !DILocation(line: 35, column: 2, scope: !165)
!199 = !DILocation(line: 35, column: 25, scope: !165)
!200 = !DILocation(line: 36, column: 2, scope: !165)
!201 = !DILocation(line: 36, column: 7, scope: !165)
!202 = !DILocation(line: 38, column: 7, scope: !203)
!203 = distinct !DILexicalBlock(scope: !165, file: !3, line: 38, column: 6)
!204 = !DILocation(line: 38, column: 6, scope: !165)
!205 = !DILocation(line: 39, column: 3, scope: !203)
!206 = !DILocation(line: 41, column: 2, scope: !207)
!207 = distinct !DILexicalBlock(scope: !165, file: !3, line: 41, column: 2)
!208 = !DILocation(line: 41, column: 2, scope: !209)
!209 = distinct !DILexicalBlock(scope: !207, file: !3, line: 41, column: 2)
!210 = !DILocation(line: 45, column: 2, scope: !178)
!211 = !DILocation(line: 45, column: 2, scope: !179)
!212 = !DILocation(line: 45, column: 2, scope: !182)
!213 = !DILocation(line: 46, column: 7, scope: !214)
!214 = distinct !DILexicalBlock(scope: !182, file: !3, line: 46, column: 7)
!215 = !DILocation(line: 46, column: 15, scope: !214)
!216 = !DILocation(line: 46, column: 20, scope: !214)
!217 = !DILocation(line: 46, column: 26, scope: !214)
!218 = !DILocation(line: 46, column: 7, scope: !182)
!219 = !DILocation(line: 47, column: 10, scope: !220)
!220 = distinct !DILexicalBlock(scope: !214, file: !3, line: 46, column: 44)
!221 = !DILocation(line: 48, column: 4, scope: !220)
!222 = !DILocation(line: 46, column: 28, scope: !214)
!223 = !DILocation(line: 45, column: 2, scope: !181)
!224 = distinct !{!224, !211, !225, !161, !162}
!225 = !DILocation(line: 49, column: 3, scope: !179)
!226 = !DILocation(line: 51, column: 7, scope: !227)
!227 = distinct !DILexicalBlock(scope: !165, file: !3, line: 51, column: 6)
!228 = !{i8 0, i8 2}
!229 = !{}
!230 = !DILocation(line: 51, column: 6, scope: !165)
!231 = !DILocation(line: 52, column: 20, scope: !227)
!232 = !DILocation(line: 52, column: 32, scope: !227)
!233 = !DILocation(line: 52, column: 38, scope: !227)
!234 = !DILocation(line: 52, column: 3, scope: !227)
!235 = !DILocation(line: 54, column: 2, scope: !184)
!236 = !DILocation(line: 54, column: 2, scope: !185)
!237 = !DILocation(line: 54, column: 2, scope: !188)
!238 = !DILocation(line: 55, column: 20, scope: !188)
!239 = !DILocation(line: 55, column: 32, scope: !188)
!240 = !DILocation(line: 55, column: 42, scope: !188)
!241 = !DILocation(line: 55, column: 3, scope: !188)
!242 = !DILocation(line: 54, column: 2, scope: !187)
!243 = distinct !{!243, !236, !244, !161, !162}
!244 = !DILocation(line: 55, column: 45, scope: !185)
!245 = !DILocation(line: 57, column: 2, scope: !165)
!246 = !DILocation(line: 59, column: 1, scope: !165)
!247 = !DILocation(line: 65, column: 2, scope: !248)
!248 = distinct !DILexicalBlock(scope: !165, file: !3, line: 65, column: 2)
!249 = !DILocation(line: 65, column: 2, scope: !250)
!250 = distinct !DILexicalBlock(scope: !248, file: !3, line: 65, column: 2)
!251 = !DILocation(line: 66, column: 19, scope: !165)
!252 = !DILocation(line: 66, column: 2, scope: !165)
!253 = !DILocation(line: 67, column: 19, scope: !165)
!254 = !DILocation(line: 67, column: 2, scope: !165)
!255 = !DILocation(line: 68, column: 1, scope: !165)
!256 = !DISubprogram(name: "_printk", scope: !257, file: !257, line: 153, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!258 = !DISubroutineType(types: !259)
!259 = !{!78, !49, null}
!260 = !DISubprogram(name: "pci_add_resource", scope: !261, file: !261, line: 1469, type: !262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!261 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!262 = !DISubroutineType(types: !263)
!263 = !{null, !32, !35}
!264 = distinct !DISubprogram(name: "alloc_pci_root_info", scope: !3, file: !3, line: 70, type: !265, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{!67, !78, !78, !78, !78}
!267 = !{!268, !269, !270, !271, !272}
!268 = !DILocalVariable(name: "bus_min", arg: 1, scope: !264, file: !3, line: 70, type: !78)
!269 = !DILocalVariable(name: "bus_max", arg: 2, scope: !264, file: !3, line: 70, type: !78)
!270 = !DILocalVariable(name: "node", arg: 3, scope: !264, file: !3, line: 71, type: !78)
!271 = !DILocalVariable(name: "link", arg: 4, scope: !264, file: !3, line: 71, type: !78)
!272 = !DILocalVariable(name: "info", scope: !264, file: !3, line: 73, type: !67)
!273 = !DILocation(line: 70, column: 54, scope: !264)
!274 = !DILocation(line: 70, column: 67, scope: !264)
!275 = !DILocation(line: 71, column: 12, scope: !264)
!276 = !DILocation(line: 71, column: 22, scope: !264)
!277 = !DILocation(line: 73, column: 2, scope: !264)
!278 = !DILocation(line: 73, column: 24, scope: !264)
!279 = !DILocation(line: 75, column: 9, scope: !264)
!280 = !DILocation(line: 75, column: 7, scope: !264)
!281 = !DILocation(line: 77, column: 7, scope: !282)
!282 = distinct !DILexicalBlock(scope: !264, file: !3, line: 77, column: 6)
!283 = !DILocation(line: 77, column: 6, scope: !264)
!284 = !DILocation(line: 78, column: 10, scope: !282)
!285 = !DILocation(line: 78, column: 3, scope: !282)
!286 = !DILocation(line: 80, column: 10, scope: !264)
!287 = !DILocation(line: 80, column: 16, scope: !264)
!288 = !DILocation(line: 80, column: 39, scope: !264)
!289 = !DILocation(line: 80, column: 2, scope: !264)
!290 = !DILocation(line: 82, column: 18, scope: !264)
!291 = !DILocation(line: 82, column: 24, scope: !264)
!292 = !DILocation(line: 82, column: 2, scope: !264)
!293 = !DILocation(line: 83, column: 21, scope: !264)
!294 = !DILocation(line: 83, column: 27, scope: !264)
!295 = !DILocation(line: 83, column: 2, scope: !264)
!296 = !DILocation(line: 83, column: 8, scope: !264)
!297 = !DILocation(line: 83, column: 13, scope: !264)
!298 = !DILocation(line: 83, column: 19, scope: !264)
!299 = !DILocation(line: 84, column: 21, scope: !264)
!300 = !DILocation(line: 84, column: 2, scope: !264)
!301 = !DILocation(line: 84, column: 8, scope: !264)
!302 = !DILocation(line: 84, column: 13, scope: !264)
!303 = !DILocation(line: 84, column: 19, scope: !264)
!304 = !DILocation(line: 85, column: 21, scope: !264)
!305 = !DILocation(line: 85, column: 2, scope: !264)
!306 = !DILocation(line: 85, column: 8, scope: !264)
!307 = !DILocation(line: 85, column: 13, scope: !264)
!308 = !DILocation(line: 85, column: 19, scope: !264)
!309 = !DILocation(line: 86, column: 2, scope: !264)
!310 = !DILocation(line: 86, column: 8, scope: !264)
!311 = !DILocation(line: 86, column: 13, scope: !264)
!312 = !DILocation(line: 86, column: 19, scope: !264)
!313 = !DILocation(line: 87, column: 15, scope: !264)
!314 = !DILocation(line: 87, column: 2, scope: !264)
!315 = !DILocation(line: 87, column: 8, scope: !264)
!316 = !DILocation(line: 87, column: 13, scope: !264)
!317 = !DILocation(line: 88, column: 15, scope: !264)
!318 = !DILocation(line: 88, column: 2, scope: !264)
!319 = !DILocation(line: 88, column: 8, scope: !264)
!320 = !DILocation(line: 88, column: 13, scope: !264)
!321 = !DILocation(line: 90, column: 17, scope: !264)
!322 = !DILocation(line: 90, column: 23, scope: !264)
!323 = !DILocation(line: 90, column: 2, scope: !264)
!324 = !DILocation(line: 92, column: 9, scope: !264)
!325 = !DILocation(line: 92, column: 2, scope: !264)
!326 = !DILocation(line: 93, column: 1, scope: !264)
!327 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !328, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !334)
!328 = !DISubroutineType(types: !329)
!329 = !{!22, !330, !66}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 61, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !332, line: 72, baseType: !333)
!332 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !332, line: 16, baseType: !53)
!334 = !{!335, !336}
!335 = !DILocalVariable(name: "size", arg: 1, scope: !327, file: !12, line: 719, type: !330)
!336 = !DILocalVariable(name: "flags", arg: 2, scope: !327, file: !12, line: 719, type: !66)
!337 = !DILocation(line: 719, column: 52, scope: !327)
!338 = !DILocation(line: 719, column: 64, scope: !327)
!339 = !DILocation(line: 721, column: 17, scope: !327)
!340 = !DILocation(line: 721, column: 23, scope: !327)
!341 = !DILocation(line: 721, column: 29, scope: !327)
!342 = !DILocation(line: 721, column: 9, scope: !327)
!343 = !DILocation(line: 721, column: 2, scope: !327)
!344 = !DISubprogram(name: "sprintf", scope: !345, file: !345, line: 10, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!346 = !DISubroutineType(types: !347)
!347 = !{!78, !348, !49, null}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!349 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !350, file: !350, line: 35, type: !351, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !353)
!350 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!351 = !DISubroutineType(types: !352)
!352 = !{null, !32}
!353 = !{!354}
!354 = !DILocalVariable(name: "list", arg: 1, scope: !349, file: !350, line: 35, type: !32)
!355 = !DILocation(line: 35, column: 53, scope: !349)
!356 = !DILocation(line: 37, column: 2, scope: !349)
!357 = !DILocation(line: 37, column: 2, scope: !358)
!358 = distinct !DILexicalBlock(scope: !349, file: !350, line: 37, column: 2)
!359 = !DILocation(line: 37, column: 2, scope: !360)
!360 = distinct !DILexicalBlock(scope: !358, file: !350, line: 37, column: 2)
!361 = !DILocation(line: 37, column: 2, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !350, line: 37, column: 2)
!363 = !DILocation(line: 38, column: 2, scope: !349)
!364 = !DILocation(line: 38, column: 2, scope: !365)
!365 = distinct !DILexicalBlock(scope: !349, file: !350, line: 38, column: 2)
!366 = !DILocation(line: 38, column: 2, scope: !367)
!367 = distinct !DILexicalBlock(scope: !365, file: !350, line: 38, column: 2)
!368 = !DILocation(line: 38, column: 2, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !350, line: 38, column: 2)
!370 = !DILocation(line: 39, column: 1, scope: !349)
!371 = distinct !DISubprogram(name: "list_add_tail", scope: !350, file: !350, line: 181, type: !372, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !374)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !32, !32}
!374 = !{!375, !376}
!375 = !DILocalVariable(name: "new", arg: 1, scope: !371, file: !350, line: 181, type: !32)
!376 = !DILocalVariable(name: "head", arg: 2, scope: !371, file: !350, line: 181, type: !32)
!377 = !DILocation(line: 181, column: 52, scope: !371)
!378 = !DILocation(line: 181, column: 75, scope: !371)
!379 = !DILocation(line: 183, column: 13, scope: !371)
!380 = !DILocation(line: 183, column: 18, scope: !371)
!381 = !DILocation(line: 183, column: 24, scope: !371)
!382 = !DILocation(line: 183, column: 30, scope: !371)
!383 = !DILocation(line: 183, column: 2, scope: !371)
!384 = !DILocation(line: 184, column: 1, scope: !371)
!385 = distinct !DISubprogram(name: "update_res", scope: !3, file: !3, line: 95, type: !386, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !67, !40, !40, !53, !78}
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !399, !402, !403, !404, !405, !407, !408, !410, !411, !413, !414, !416, !417, !419}
!389 = !DILocalVariable(name: "info", arg: 1, scope: !385, file: !3, line: 95, type: !67)
!390 = !DILocalVariable(name: "start", arg: 2, scope: !385, file: !3, line: 95, type: !40)
!391 = !DILocalVariable(name: "end", arg: 3, scope: !385, file: !3, line: 96, type: !40)
!392 = !DILocalVariable(name: "flags", arg: 4, scope: !385, file: !3, line: 96, type: !53)
!393 = !DILocalVariable(name: "merge", arg: 5, scope: !385, file: !3, line: 96, type: !78)
!394 = !DILocalVariable(name: "res", scope: !385, file: !3, line: 98, type: !35)
!395 = !DILocalVariable(name: "root_res", scope: !385, file: !3, line: 99, type: !60)
!396 = !DILocalVariable(name: "__mptr", scope: !397, file: !3, line: 111, type: !22)
!397 = distinct !DILexicalBlock(scope: !398, file: !3, line: 111, column: 2)
!398 = distinct !DILexicalBlock(scope: !385, file: !3, line: 111, column: 2)
!399 = !DILocalVariable(name: "final_start", scope: !400, file: !3, line: 112, type: !40)
!400 = distinct !DILexicalBlock(scope: !401, file: !3, line: 111, column: 56)
!401 = distinct !DILexicalBlock(scope: !398, file: !3, line: 111, column: 2)
!402 = !DILocalVariable(name: "final_end", scope: !400, file: !3, line: 112, type: !40)
!403 = !DILocalVariable(name: "common_start", scope: !400, file: !3, line: 113, type: !40)
!404 = !DILocalVariable(name: "common_end", scope: !400, file: !3, line: 113, type: !40)
!405 = !DILocalVariable(name: "__UNIQUE_ID___x292", scope: !406, file: !3, line: 119, type: !40)
!406 = distinct !DILexicalBlock(scope: !400, file: !3, line: 119, column: 18)
!407 = !DILocalVariable(name: "__UNIQUE_ID___y293", scope: !406, file: !3, line: 119, type: !40)
!408 = !DILocalVariable(name: "__UNIQUE_ID___x294", scope: !409, file: !3, line: 120, type: !40)
!409 = distinct !DILexicalBlock(scope: !400, file: !3, line: 120, column: 16)
!410 = !DILocalVariable(name: "__UNIQUE_ID___y295", scope: !409, file: !3, line: 120, type: !40)
!411 = !DILocalVariable(name: "__UNIQUE_ID___x296", scope: !412, file: !3, line: 124, type: !40)
!412 = distinct !DILexicalBlock(scope: !400, file: !3, line: 124, column: 17)
!413 = !DILocalVariable(name: "__UNIQUE_ID___y297", scope: !412, file: !3, line: 124, type: !40)
!414 = !DILocalVariable(name: "__UNIQUE_ID___x298", scope: !415, file: !3, line: 125, type: !40)
!415 = distinct !DILexicalBlock(scope: !400, file: !3, line: 125, column: 15)
!416 = !DILocalVariable(name: "__UNIQUE_ID___y299", scope: !415, file: !3, line: 125, type: !40)
!417 = !DILocalVariable(name: "__mptr", scope: !418, file: !3, line: 111, type: !22)
!418 = distinct !DILexicalBlock(scope: !401, file: !3, line: 111, column: 2)
!419 = !DILabel(scope: !385, name: "addit", file: !3, line: 132)
!420 = !DILocation(line: 95, column: 39, scope: !385)
!421 = !DILocation(line: 95, column: 61, scope: !385)
!422 = !DILocation(line: 96, column: 19, scope: !385)
!423 = !DILocation(line: 96, column: 38, scope: !385)
!424 = !DILocation(line: 96, column: 49, scope: !385)
!425 = !DILocation(line: 98, column: 2, scope: !385)
!426 = !DILocation(line: 98, column: 19, scope: !385)
!427 = !DILocation(line: 99, column: 2, scope: !385)
!428 = !DILocation(line: 99, column: 23, scope: !385)
!429 = !DILocation(line: 101, column: 6, scope: !430)
!430 = distinct !DILexicalBlock(scope: !385, file: !3, line: 101, column: 6)
!431 = !DILocation(line: 101, column: 14, scope: !430)
!432 = !DILocation(line: 101, column: 12, scope: !430)
!433 = !DILocation(line: 101, column: 6, scope: !385)
!434 = !DILocation(line: 102, column: 3, scope: !430)
!435 = !DILocation(line: 104, column: 6, scope: !436)
!436 = distinct !DILexicalBlock(scope: !385, file: !3, line: 104, column: 6)
!437 = !DILocation(line: 104, column: 12, scope: !436)
!438 = !DILocation(line: 104, column: 6, scope: !385)
!439 = !DILocation(line: 105, column: 3, scope: !436)
!440 = !DILocation(line: 107, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !385, file: !3, line: 107, column: 6)
!442 = !DILocation(line: 107, column: 6, scope: !385)
!443 = !DILocation(line: 108, column: 3, scope: !441)
!444 = !DILocation(line: 111, column: 2, scope: !397)
!445 = !DILocation(line: 111, column: 2, scope: !398)
!446 = !DILocation(line: 111, column: 2, scope: !401)
!447 = !DILocation(line: 112, column: 3, scope: !400)
!448 = !DILocation(line: 112, column: 19, scope: !400)
!449 = !DILocation(line: 112, column: 32, scope: !400)
!450 = !DILocation(line: 113, column: 3, scope: !400)
!451 = !DILocation(line: 113, column: 19, scope: !400)
!452 = !DILocation(line: 113, column: 33, scope: !400)
!453 = !DILocation(line: 115, column: 10, scope: !400)
!454 = !DILocation(line: 115, column: 20, scope: !400)
!455 = !DILocation(line: 115, column: 7, scope: !400)
!456 = !DILocation(line: 116, column: 7, scope: !457)
!457 = distinct !DILexicalBlock(scope: !400, file: !3, line: 116, column: 7)
!458 = !DILocation(line: 116, column: 12, scope: !457)
!459 = !DILocation(line: 116, column: 21, scope: !457)
!460 = !DILocation(line: 116, column: 18, scope: !457)
!461 = !DILocation(line: 116, column: 7, scope: !400)
!462 = !DILocation(line: 117, column: 4, scope: !457)
!463 = !DILocation(line: 119, column: 18, scope: !406)
!464 = !DILocation(line: 119, column: 18, scope: !400)
!465 = !DILocation(line: 119, column: 16, scope: !400)
!466 = !DILocation(line: 120, column: 16, scope: !409)
!467 = !DILocation(line: 120, column: 16, scope: !400)
!468 = !DILocation(line: 120, column: 14, scope: !400)
!469 = !DILocation(line: 121, column: 7, scope: !470)
!470 = distinct !DILexicalBlock(scope: !400, file: !3, line: 121, column: 7)
!471 = !DILocation(line: 121, column: 22, scope: !470)
!472 = !DILocation(line: 121, column: 33, scope: !470)
!473 = !DILocation(line: 121, column: 20, scope: !470)
!474 = !DILocation(line: 121, column: 7, scope: !400)
!475 = !DILocation(line: 122, column: 4, scope: !470)
!476 = !DILocation(line: 124, column: 17, scope: !412)
!477 = !DILocation(line: 124, column: 17, scope: !400)
!478 = !DILocation(line: 124, column: 15, scope: !400)
!479 = !DILocation(line: 125, column: 15, scope: !415)
!480 = !DILocation(line: 125, column: 15, scope: !400)
!481 = !DILocation(line: 125, column: 13, scope: !400)
!482 = !DILocation(line: 127, column: 16, scope: !400)
!483 = !DILocation(line: 127, column: 3, scope: !400)
!484 = !DILocation(line: 127, column: 8, scope: !400)
!485 = !DILocation(line: 127, column: 14, scope: !400)
!486 = !DILocation(line: 128, column: 14, scope: !400)
!487 = !DILocation(line: 128, column: 3, scope: !400)
!488 = !DILocation(line: 128, column: 8, scope: !400)
!489 = !DILocation(line: 128, column: 12, scope: !400)
!490 = !DILocation(line: 129, column: 3, scope: !400)
!491 = !DILocation(line: 130, column: 2, scope: !401)
!492 = !DILocation(line: 111, column: 2, scope: !418)
!493 = distinct !{!493, !445, !494, !161, !162}
!494 = !DILocation(line: 130, column: 2, scope: !398)
!495 = !DILocation(line: 132, column: 1, scope: !385)
!496 = !DILocation(line: 135, column: 13, scope: !385)
!497 = !DILocation(line: 135, column: 11, scope: !385)
!498 = !DILocation(line: 136, column: 7, scope: !499)
!499 = distinct !DILexicalBlock(scope: !385, file: !3, line: 136, column: 6)
!500 = !DILocation(line: 136, column: 6, scope: !385)
!501 = !DILocation(line: 137, column: 3, scope: !499)
!502 = !DILocation(line: 139, column: 9, scope: !385)
!503 = !DILocation(line: 139, column: 19, scope: !385)
!504 = !DILocation(line: 139, column: 6, scope: !385)
!505 = !DILocation(line: 140, column: 14, scope: !385)
!506 = !DILocation(line: 140, column: 20, scope: !385)
!507 = !DILocation(line: 140, column: 2, scope: !385)
!508 = !DILocation(line: 140, column: 7, scope: !385)
!509 = !DILocation(line: 140, column: 12, scope: !385)
!510 = !DILocation(line: 141, column: 15, scope: !385)
!511 = !DILocation(line: 141, column: 2, scope: !385)
!512 = !DILocation(line: 141, column: 7, scope: !385)
!513 = !DILocation(line: 141, column: 13, scope: !385)
!514 = !DILocation(line: 142, column: 15, scope: !385)
!515 = !DILocation(line: 142, column: 2, scope: !385)
!516 = !DILocation(line: 142, column: 7, scope: !385)
!517 = !DILocation(line: 142, column: 13, scope: !385)
!518 = !DILocation(line: 143, column: 13, scope: !385)
!519 = !DILocation(line: 143, column: 2, scope: !385)
!520 = !DILocation(line: 143, column: 7, scope: !385)
!521 = !DILocation(line: 143, column: 11, scope: !385)
!522 = !DILocation(line: 145, column: 17, scope: !385)
!523 = !DILocation(line: 145, column: 27, scope: !385)
!524 = !DILocation(line: 145, column: 34, scope: !385)
!525 = !DILocation(line: 145, column: 40, scope: !385)
!526 = !DILocation(line: 145, column: 2, scope: !385)
!527 = !DILocation(line: 146, column: 1, scope: !385)
!528 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !328, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !529)
!529 = !{!530, !531, !532}
!530 = !DILocalVariable(name: "size", arg: 1, scope: !528, file: !12, line: 591, type: !330)
!531 = !DILocalVariable(name: "flags", arg: 2, scope: !528, file: !12, line: 591, type: !66)
!532 = !DILocalVariable(name: "index", scope: !533, file: !12, line: 594, type: !7)
!533 = distinct !DILexicalBlock(scope: !534, file: !12, line: 593, column: 42)
!534 = distinct !DILexicalBlock(scope: !528, file: !12, line: 593, column: 6)
!535 = !DILocation(line: 591, column: 61, scope: !528)
!536 = !DILocation(line: 591, column: 73, scope: !528)
!537 = !DILocation(line: 593, column: 27, scope: !534)
!538 = !DILocation(line: 593, column: 6, scope: !534)
!539 = !DILocation(line: 593, column: 33, scope: !534)
!540 = !DILocation(line: 593, column: 36, scope: !534)
!541 = !DILocation(line: 593, column: 6, scope: !528)
!542 = !DILocation(line: 594, column: 3, scope: !533)
!543 = !DILocation(line: 594, column: 16, scope: !533)
!544 = !DILocation(line: 596, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !533, file: !12, line: 596, column: 7)
!546 = !DILocation(line: 596, column: 12, scope: !545)
!547 = !DILocation(line: 596, column: 7, scope: !533)
!548 = !DILocation(line: 597, column: 25, scope: !545)
!549 = !DILocation(line: 597, column: 31, scope: !545)
!550 = !DILocation(line: 597, column: 11, scope: !545)
!551 = !DILocation(line: 597, column: 4, scope: !545)
!552 = !DILocation(line: 599, column: 11, scope: !533)
!553 = !DILocation(line: 599, column: 9, scope: !533)
!554 = !DILocation(line: 601, column: 33, scope: !533)
!555 = !DILocation(line: 601, column: 40, scope: !533)
!556 = !DILocation(line: 601, column: 20, scope: !533)
!557 = !DILocation(line: 601, column: 5, scope: !533)
!558 = !DILocation(line: 601, column: 51, scope: !533)
!559 = !DILocation(line: 602, column: 5, scope: !533)
!560 = !DILocation(line: 602, column: 12, scope: !533)
!561 = !DILocation(line: 600, column: 10, scope: !533)
!562 = !DILocation(line: 600, column: 3, scope: !533)
!563 = !DILocation(line: 603, column: 2, scope: !534)
!564 = !DILocation(line: 604, column: 19, scope: !528)
!565 = !DILocation(line: 604, column: 25, scope: !528)
!566 = !DILocation(line: 604, column: 9, scope: !528)
!567 = !DILocation(line: 604, column: 2, scope: !528)
!568 = !DILocation(line: 605, column: 1, scope: !528)
!569 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!570 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !571, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{!7, !330, !175}
!573 = !{!574, !575}
!574 = !DILocalVariable(name: "size", arg: 1, scope: !570, file: !12, line: 444, type: !330)
!575 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !570, file: !12, line: 445, type: !175)
!576 = !DILocation(line: 444, column: 60, scope: !570)
!577 = !DILocation(line: 445, column: 16, scope: !570)
!578 = !DILocation(line: 447, column: 7, scope: !579)
!579 = distinct !DILexicalBlock(scope: !570, file: !12, line: 447, column: 6)
!580 = !DILocation(line: 447, column: 6, scope: !570)
!581 = !DILocation(line: 448, column: 3, scope: !579)
!582 = !DILocation(line: 450, column: 6, scope: !583)
!583 = distinct !DILexicalBlock(scope: !570, file: !12, line: 450, column: 6)
!584 = !DILocation(line: 450, column: 11, scope: !583)
!585 = !DILocation(line: 450, column: 6, scope: !570)
!586 = !DILocation(line: 451, column: 3, scope: !583)
!587 = !DILocation(line: 453, column: 32, scope: !588)
!588 = distinct !DILexicalBlock(scope: !570, file: !12, line: 453, column: 6)
!589 = !DILocation(line: 453, column: 37, scope: !588)
!590 = !DILocation(line: 453, column: 42, scope: !588)
!591 = !DILocation(line: 453, column: 45, scope: !588)
!592 = !DILocation(line: 453, column: 50, scope: !588)
!593 = !DILocation(line: 453, column: 6, scope: !570)
!594 = !DILocation(line: 454, column: 3, scope: !588)
!595 = !DILocation(line: 455, column: 32, scope: !596)
!596 = distinct !DILexicalBlock(scope: !570, file: !12, line: 455, column: 6)
!597 = !DILocation(line: 455, column: 37, scope: !596)
!598 = !DILocation(line: 455, column: 43, scope: !596)
!599 = !DILocation(line: 455, column: 46, scope: !596)
!600 = !DILocation(line: 455, column: 51, scope: !596)
!601 = !DILocation(line: 455, column: 6, scope: !570)
!602 = !DILocation(line: 456, column: 3, scope: !596)
!603 = !DILocation(line: 457, column: 6, scope: !604)
!604 = distinct !DILexicalBlock(scope: !570, file: !12, line: 457, column: 6)
!605 = !DILocation(line: 457, column: 11, scope: !604)
!606 = !DILocation(line: 457, column: 6, scope: !570)
!607 = !DILocation(line: 457, column: 26, scope: !604)
!608 = !DILocation(line: 458, column: 6, scope: !609)
!609 = distinct !DILexicalBlock(scope: !570, file: !12, line: 458, column: 6)
!610 = !DILocation(line: 458, column: 11, scope: !609)
!611 = !DILocation(line: 458, column: 6, scope: !570)
!612 = !DILocation(line: 458, column: 26, scope: !609)
!613 = !DILocation(line: 459, column: 6, scope: !614)
!614 = distinct !DILexicalBlock(scope: !570, file: !12, line: 459, column: 6)
!615 = !DILocation(line: 459, column: 11, scope: !614)
!616 = !DILocation(line: 459, column: 6, scope: !570)
!617 = !DILocation(line: 459, column: 26, scope: !614)
!618 = !DILocation(line: 460, column: 6, scope: !619)
!619 = distinct !DILexicalBlock(scope: !570, file: !12, line: 460, column: 6)
!620 = !DILocation(line: 460, column: 11, scope: !619)
!621 = !DILocation(line: 460, column: 6, scope: !570)
!622 = !DILocation(line: 460, column: 26, scope: !619)
!623 = !DILocation(line: 461, column: 6, scope: !624)
!624 = distinct !DILexicalBlock(scope: !570, file: !12, line: 461, column: 6)
!625 = !DILocation(line: 461, column: 11, scope: !624)
!626 = !DILocation(line: 461, column: 6, scope: !570)
!627 = !DILocation(line: 461, column: 26, scope: !624)
!628 = !DILocation(line: 462, column: 6, scope: !629)
!629 = distinct !DILexicalBlock(scope: !570, file: !12, line: 462, column: 6)
!630 = !DILocation(line: 462, column: 11, scope: !629)
!631 = !DILocation(line: 462, column: 6, scope: !570)
!632 = !DILocation(line: 462, column: 26, scope: !629)
!633 = !DILocation(line: 463, column: 6, scope: !634)
!634 = distinct !DILexicalBlock(scope: !570, file: !12, line: 463, column: 6)
!635 = !DILocation(line: 463, column: 11, scope: !634)
!636 = !DILocation(line: 463, column: 6, scope: !570)
!637 = !DILocation(line: 463, column: 26, scope: !634)
!638 = !DILocation(line: 464, column: 6, scope: !639)
!639 = distinct !DILexicalBlock(scope: !570, file: !12, line: 464, column: 6)
!640 = !DILocation(line: 464, column: 11, scope: !639)
!641 = !DILocation(line: 464, column: 6, scope: !570)
!642 = !DILocation(line: 464, column: 26, scope: !639)
!643 = !DILocation(line: 465, column: 6, scope: !644)
!644 = distinct !DILexicalBlock(scope: !570, file: !12, line: 465, column: 6)
!645 = !DILocation(line: 465, column: 11, scope: !644)
!646 = !DILocation(line: 465, column: 6, scope: !570)
!647 = !DILocation(line: 465, column: 26, scope: !644)
!648 = !DILocation(line: 466, column: 6, scope: !649)
!649 = distinct !DILexicalBlock(scope: !570, file: !12, line: 466, column: 6)
!650 = !DILocation(line: 466, column: 11, scope: !649)
!651 = !DILocation(line: 466, column: 6, scope: !570)
!652 = !DILocation(line: 466, column: 26, scope: !649)
!653 = !DILocation(line: 467, column: 6, scope: !654)
!654 = distinct !DILexicalBlock(scope: !570, file: !12, line: 467, column: 6)
!655 = !DILocation(line: 467, column: 11, scope: !654)
!656 = !DILocation(line: 467, column: 6, scope: !570)
!657 = !DILocation(line: 467, column: 26, scope: !654)
!658 = !DILocation(line: 468, column: 6, scope: !659)
!659 = distinct !DILexicalBlock(scope: !570, file: !12, line: 468, column: 6)
!660 = !DILocation(line: 468, column: 11, scope: !659)
!661 = !DILocation(line: 468, column: 6, scope: !570)
!662 = !DILocation(line: 468, column: 26, scope: !659)
!663 = !DILocation(line: 469, column: 6, scope: !664)
!664 = distinct !DILexicalBlock(scope: !570, file: !12, line: 469, column: 6)
!665 = !DILocation(line: 469, column: 11, scope: !664)
!666 = !DILocation(line: 469, column: 6, scope: !570)
!667 = !DILocation(line: 469, column: 26, scope: !664)
!668 = !DILocation(line: 470, column: 6, scope: !669)
!669 = distinct !DILexicalBlock(scope: !570, file: !12, line: 470, column: 6)
!670 = !DILocation(line: 470, column: 11, scope: !669)
!671 = !DILocation(line: 470, column: 6, scope: !570)
!672 = !DILocation(line: 470, column: 26, scope: !669)
!673 = !DILocation(line: 471, column: 6, scope: !674)
!674 = distinct !DILexicalBlock(scope: !570, file: !12, line: 471, column: 6)
!675 = !DILocation(line: 471, column: 11, scope: !674)
!676 = !DILocation(line: 471, column: 6, scope: !570)
!677 = !DILocation(line: 471, column: 26, scope: !674)
!678 = !DILocation(line: 472, column: 6, scope: !679)
!679 = distinct !DILexicalBlock(scope: !570, file: !12, line: 472, column: 6)
!680 = !DILocation(line: 472, column: 11, scope: !679)
!681 = !DILocation(line: 472, column: 6, scope: !570)
!682 = !DILocation(line: 472, column: 26, scope: !679)
!683 = !DILocation(line: 473, column: 6, scope: !684)
!684 = distinct !DILexicalBlock(scope: !570, file: !12, line: 473, column: 6)
!685 = !DILocation(line: 473, column: 11, scope: !684)
!686 = !DILocation(line: 473, column: 6, scope: !570)
!687 = !DILocation(line: 473, column: 26, scope: !684)
!688 = !DILocation(line: 474, column: 6, scope: !689)
!689 = distinct !DILexicalBlock(scope: !570, file: !12, line: 474, column: 6)
!690 = !DILocation(line: 474, column: 11, scope: !689)
!691 = !DILocation(line: 474, column: 6, scope: !570)
!692 = !DILocation(line: 474, column: 27, scope: !689)
!693 = !DILocation(line: 475, column: 6, scope: !694)
!694 = distinct !DILexicalBlock(scope: !570, file: !12, line: 475, column: 6)
!695 = !DILocation(line: 475, column: 11, scope: !694)
!696 = !DILocation(line: 475, column: 6, scope: !570)
!697 = !DILocation(line: 475, column: 32, scope: !694)
!698 = !DILocation(line: 477, column: 50, scope: !699)
!699 = distinct !DILexicalBlock(scope: !570, file: !12, line: 477, column: 6)
!700 = !DILocation(line: 477, column: 6, scope: !570)
!701 = !DILocation(line: 478, column: 3, scope: !699)
!702 = !DILocation(line: 478, column: 3, scope: !703)
!703 = distinct !DILexicalBlock(scope: !704, file: !12, line: 478, column: 3)
!704 = distinct !DILexicalBlock(scope: !699, file: !12, line: 478, column: 3)
!705 = !{i32 -2141985159}
!706 = !DILocation(line: 478, column: 3, scope: !704)
!707 = !DILocation(line: 480, column: 3, scope: !699)
!708 = !DILocation(line: 480, column: 3, scope: !709)
!709 = distinct !DILexicalBlock(scope: !699, file: !12, line: 480, column: 3)
!710 = !DILocation(line: 480, column: 3, scope: !711)
!711 = distinct !DILexicalBlock(scope: !709, file: !12, line: 480, column: 3)
!712 = !DILocation(line: 480, column: 3, scope: !713)
!713 = distinct !DILexicalBlock(scope: !709, file: !12, line: 480, column: 3)
!714 = !{i64 2152982340, i64 2152982369, i64 2152982415, i64 2152982473, i64 2152982527, i64 2152982581, i64 2152982636, i64 2152982667}
!715 = !DILocation(line: 483, column: 2, scope: !570)
!716 = !DILocation(line: 484, column: 1, scope: !570)
!717 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!718 = !DISubroutineType(types: !719)
!719 = !{!22, !720, !66, !330}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !722, line: 11, flags: DIFlagFwdDecl)
!722 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!723 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !724, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{!11, !66, !53}
!726 = !{!727, !728}
!727 = !DILocalVariable(name: "flags", arg: 1, scope: !723, file: !12, line: 401, type: !66)
!728 = !DILocalVariable(name: "caller", arg: 2, scope: !723, file: !12, line: 401, type: !53)
!729 = !DILocation(line: 401, column: 67, scope: !723)
!730 = !DILocation(line: 401, column: 88, scope: !723)
!731 = !DILocation(line: 407, column: 6, scope: !732)
!732 = distinct !DILexicalBlock(scope: !723, file: !12, line: 407, column: 6)
!733 = !DILocation(line: 407, column: 6, scope: !723)
!734 = !DILocation(line: 413, column: 3, scope: !732)
!735 = !DILocation(line: 423, column: 38, scope: !736)
!736 = distinct !DILexicalBlock(scope: !723, file: !12, line: 423, column: 6)
!737 = !DILocation(line: 423, column: 44, scope: !736)
!738 = !DILocation(line: 423, column: 6, scope: !723)
!739 = !DILocation(line: 424, column: 3, scope: !736)
!740 = !DILocation(line: 426, column: 3, scope: !741)
!741 = distinct !DILexicalBlock(scope: !723, file: !12, line: 425, column: 6)
!742 = !DILocation(line: 429, column: 1, scope: !723)
!743 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!744 = !DISubprogram(name: "__compiletime_assert_204", scope: !12, file: !12, line: 478, type: !745, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!745 = !DISubroutineType(types: !746)
!746 = !{null}
!747 = distinct !DISubprogram(name: "__list_add", scope: !350, file: !350, line: 146, type: !748, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !32, !32, !32}
!750 = !{!751, !752, !753}
!751 = !DILocalVariable(name: "new", arg: 1, scope: !747, file: !350, line: 146, type: !32)
!752 = !DILocalVariable(name: "prev", arg: 2, scope: !747, file: !350, line: 147, type: !32)
!753 = !DILocalVariable(name: "next", arg: 3, scope: !747, file: !350, line: 148, type: !32)
!754 = !DILocation(line: 146, column: 49, scope: !747)
!755 = !DILocation(line: 147, column: 28, scope: !747)
!756 = !DILocation(line: 148, column: 28, scope: !747)
!757 = !DILocation(line: 150, column: 24, scope: !758)
!758 = distinct !DILexicalBlock(scope: !747, file: !350, line: 150, column: 6)
!759 = !DILocation(line: 150, column: 29, scope: !758)
!760 = !DILocation(line: 150, column: 35, scope: !758)
!761 = !DILocation(line: 150, column: 7, scope: !758)
!762 = !DILocation(line: 150, column: 6, scope: !747)
!763 = !DILocation(line: 151, column: 3, scope: !758)
!764 = !DILocation(line: 153, column: 15, scope: !747)
!765 = !DILocation(line: 153, column: 2, scope: !747)
!766 = !DILocation(line: 153, column: 8, scope: !747)
!767 = !DILocation(line: 153, column: 13, scope: !747)
!768 = !DILocation(line: 154, column: 14, scope: !747)
!769 = !DILocation(line: 154, column: 2, scope: !747)
!770 = !DILocation(line: 154, column: 7, scope: !747)
!771 = !DILocation(line: 154, column: 12, scope: !747)
!772 = !DILocation(line: 155, column: 14, scope: !747)
!773 = !DILocation(line: 155, column: 2, scope: !747)
!774 = !DILocation(line: 155, column: 7, scope: !747)
!775 = !DILocation(line: 155, column: 12, scope: !747)
!776 = !DILocation(line: 156, column: 2, scope: !747)
!777 = !DILocation(line: 156, column: 2, scope: !778)
!778 = distinct !DILexicalBlock(scope: !747, file: !350, line: 156, column: 2)
!779 = !DILocation(line: 156, column: 2, scope: !780)
!780 = distinct !DILexicalBlock(scope: !778, file: !350, line: 156, column: 2)
!781 = !DILocation(line: 156, column: 2, scope: !782)
!782 = distinct !DILexicalBlock(scope: !778, file: !350, line: 156, column: 2)
!783 = !DILocation(line: 157, column: 1, scope: !747)
!784 = distinct !DISubprogram(name: "__list_add_valid", scope: !350, file: !350, line: 128, type: !785, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !787)
!785 = !DISubroutineType(types: !786)
!786 = !{!175, !32, !32, !32}
!787 = !{!788, !789, !790}
!788 = !DILocalVariable(name: "new", arg: 1, scope: !784, file: !350, line: 128, type: !32)
!789 = !DILocalVariable(name: "prev", arg: 2, scope: !784, file: !350, line: 129, type: !32)
!790 = !DILocalVariable(name: "next", arg: 3, scope: !784, file: !350, line: 130, type: !32)
!791 = !DILocation(line: 128, column: 55, scope: !784)
!792 = !DILocation(line: 129, column: 23, scope: !784)
!793 = !DILocation(line: 130, column: 23, scope: !784)
!794 = !DILocation(line: 132, column: 2, scope: !784)
