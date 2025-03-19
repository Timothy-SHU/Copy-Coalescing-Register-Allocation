; ModuleID = 'drivers/acpi/nvs.c'
source_filename = "drivers/acpi/nvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { ptr, ptr }
%struct.nvs_region = type { i64, i64, %struct.list_head }
%struct.nvs_page = type { i64, i32, ptr, ptr, i8, %struct.list_head }

@nvs_region_list = internal global %struct.list_head { ptr @nvs_region_list, ptr @nvs_region_list }, align 8, !dbg !0
@nvs_list = internal global %struct.list_head { ptr @nvs_list, ptr @nvs_list }, align 8, !dbg !75
@.str = private unnamed_addr constant [40 x i8] c"\016ACPI: PM: Saving platform NVS memory\0A\00", align 1, !dbg !54
@.str.1 = private unnamed_addr constant [43 x i8] c"\016ACPI: PM: Restoring platform NVS memory\0A\00", align 1, !dbg !60
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !65
@.str.3 = private unnamed_addr constant [75 x i8] c"\016ACPI: PM: Registering ACPI NVS region [mem %#010lx-%#010lx] (%ld bytes)\0A\00", align 1, !dbg !70

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_nvs_register(i64 noundef %start, i64 noundef %size) #0 align 16 !dbg !86 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %region = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !91, metadata !DIExpression()), !dbg !94
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !92, metadata !DIExpression()), !dbg !95
  call void @llvm.lifetime.start.p0(i64 8, ptr %region) #15, !dbg !96
  call void @llvm.dbg.declare(metadata ptr %region, metadata !93, metadata !DIExpression()), !dbg !97
  %call = call noalias ptr @kmalloc(i64 noundef 32, i32 noundef 3264) #16, !dbg !98
  store ptr %call, ptr %region, align 8, !dbg !99
  %0 = load ptr, ptr %region, align 8, !dbg !100
  %tobool = icmp ne ptr %0, null, !dbg !100
  br i1 %tobool, label %if.end, label %if.then, !dbg !102

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !103

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %start.addr, align 8, !dbg !104
  %2 = load ptr, ptr %region, align 8, !dbg !105
  %phys_start = getelementptr inbounds %struct.nvs_region, ptr %2, i32 0, i32 0, !dbg !106
  store i64 %1, ptr %phys_start, align 8, !dbg !107
  %3 = load i64, ptr %size.addr, align 8, !dbg !108
  %4 = load ptr, ptr %region, align 8, !dbg !109
  %size1 = getelementptr inbounds %struct.nvs_region, ptr %4, i32 0, i32 1, !dbg !110
  store i64 %3, ptr %size1, align 8, !dbg !111
  %5 = load ptr, ptr %region, align 8, !dbg !112
  %node = getelementptr inbounds %struct.nvs_region, ptr %5, i32 0, i32 2, !dbg !113
  call void @list_add_tail(ptr noundef %node, ptr noundef @nvs_region_list) #17, !dbg !114
  %6 = load i64, ptr %start.addr, align 8, !dbg !115
  %7 = load i64, ptr %size.addr, align 8, !dbg !116
  %call2 = call i32 @suspend_nvs_register(i64 noundef %6, i64 noundef %7) #17, !dbg !117
  store i32 %call2, ptr %retval, align 4, !dbg !118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !118

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %region) #15, !dbg !119
  %8 = load i32, ptr %retval, align 4, !dbg !119
  ret i32 %8, !dbg !119
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !120 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !128, metadata !DIExpression()), !dbg !133
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !129, metadata !DIExpression()), !dbg !134
  %0 = load i64, ptr %size.addr, align 8, !dbg !135
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !136
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !137

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !138
  %tobool = icmp ne i64 %2, 0, !dbg !138
  br i1 %tobool, label %if.then, label %if.end7, !dbg !139

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %index, metadata !130, metadata !DIExpression()), !dbg !141
  %3 = load i64, ptr %size.addr, align 8, !dbg !142
  %cmp = icmp ugt i64 %3, 8192, !dbg !144
  br i1 %cmp, label %if.then1, label %if.end, !dbg !145

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !146
  %5 = load i32, ptr %flags.addr, align 4, !dbg !147
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !148
  store ptr %call, ptr %retval, align 8, !dbg !149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !149

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !150
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !150
  store i32 %call2, ptr %index, align 4, !dbg !151
  %7 = load i32, ptr %flags.addr, align 4, !dbg !152
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !153
  %9 = ptrtoint ptr %8 to i64, !dbg !153
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !154
  %idxprom = zext i32 %call3 to i64, !dbg !155
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !155
  %10 = load i32, ptr %index, align 4, !dbg !156
  %idxprom4 = zext i32 %10 to i64, !dbg !155
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !155
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !155
  %12 = load i32, ptr %flags.addr, align 4, !dbg !157
  %13 = load i64, ptr %size.addr, align 8, !dbg !158
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !159
  store ptr %call6, ptr %retval, align 8, !dbg !160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !160

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !161
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !162
  %15 = load i32, ptr %flags.addr, align 4, !dbg !163
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !164
  store ptr %call8, ptr %retval, align 8, !dbg !165
  br label %return, !dbg !165

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !166
  ret ptr %16, !dbg !166
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !167 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !172, metadata !DIExpression()), !dbg !174
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !173, metadata !DIExpression()), !dbg !175
  %0 = load ptr, ptr %new.addr, align 8, !dbg !176
  %1 = load ptr, ptr %head.addr, align 8, !dbg !177
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !178
  %2 = load ptr, ptr %prev, align 8, !dbg !178
  %3 = load ptr, ptr %head.addr, align 8, !dbg !179
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !180
  ret void, !dbg !181
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @suspend_nvs_register(i64 noundef %start, i64 noundef %size) #0 align 16 !dbg !182 {
entry:
  %retval = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %entry1 = alloca ptr, align 8
  %next = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %nr_bytes = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %__mptr17 = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  %__mptr26 = alloca ptr, align 8
  %tmp29 = alloca ptr, align 8
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !186, metadata !DIExpression()), !dbg !201
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !187, metadata !DIExpression()), !dbg !202
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !188, metadata !DIExpression()), !dbg !204
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %next, metadata !189, metadata !DIExpression()), !dbg !205
  br label %do.body, !dbg !206

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !208

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !208

do.end:                                           ; preds = %do.cond
  %0 = load i64, ptr %start.addr, align 8, !dbg !206
  %1 = load i64, ptr %start.addr, align 8, !dbg !206
  %2 = load i64, ptr %size.addr, align 8, !dbg !206
  %add = add i64 %1, %2, !dbg !206
  %sub = sub i64 %add, 1, !dbg !206
  %3 = load i64, ptr %size.addr, align 8, !dbg !206
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i64 noundef %0, i64 noundef %sub, i64 noundef %3) #19, !dbg !206
  store i32 %call, ptr %tmp, align 4, !dbg !208
  %4 = load i32, ptr %tmp, align 4, !dbg !206
  br label %while.cond, !dbg !210

while.cond:                                       ; preds = %cleanup.cont, %do.end
  %5 = load i64, ptr %size.addr, align 8, !dbg !211
  %cmp = icmp ugt i64 %5, 0, !dbg !212
  br i1 %cmp, label %while.body, label %while.end, !dbg !210

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_bytes) #15, !dbg !213
  call void @llvm.dbg.declare(metadata ptr %nr_bytes, metadata !190, metadata !DIExpression()), !dbg !214
  %call2 = call noalias ptr @kzalloc(i64 noundef 56, i32 noundef 3264) #16, !dbg !215
  store ptr %call2, ptr %entry1, align 8, !dbg !216
  %6 = load ptr, ptr %entry1, align 8, !dbg !217
  %tobool = icmp ne ptr %6, null, !dbg !217
  br i1 %tobool, label %if.end, label %if.then, !dbg !219

if.then:                                          ; preds = %while.body
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !220

if.end:                                           ; preds = %while.body
  %7 = load ptr, ptr %entry1, align 8, !dbg !221
  %node = getelementptr inbounds %struct.nvs_page, ptr %7, i32 0, i32 5, !dbg !222
  call void @list_add_tail(ptr noundef %node, ptr noundef @nvs_list) #17, !dbg !223
  %8 = load i64, ptr %start.addr, align 8, !dbg !224
  %9 = load ptr, ptr %entry1, align 8, !dbg !225
  %phys_start = getelementptr inbounds %struct.nvs_page, ptr %9, i32 0, i32 0, !dbg !226
  store i64 %8, ptr %phys_start, align 8, !dbg !227
  %10 = load i64, ptr %start.addr, align 8, !dbg !228
  %and = and i64 %10, 4095, !dbg !229
  %sub3 = sub i64 4096, %and, !dbg !230
  %conv = trunc i64 %sub3 to i32, !dbg !231
  store i32 %conv, ptr %nr_bytes, align 4, !dbg !232
  %11 = load i64, ptr %size.addr, align 8, !dbg !233
  %12 = load i32, ptr %nr_bytes, align 4, !dbg !234
  %conv4 = zext i32 %12 to i64, !dbg !234
  %cmp5 = icmp ult i64 %11, %conv4, !dbg !235
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !236

cond.true:                                        ; preds = %if.end
  %13 = load i64, ptr %size.addr, align 8, !dbg !237
  br label %cond.end, !dbg !236

cond.false:                                       ; preds = %if.end
  %14 = load i32, ptr %nr_bytes, align 4, !dbg !238
  %conv7 = zext i32 %14 to i64, !dbg !238
  br label %cond.end, !dbg !236

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %conv7, %cond.false ], !dbg !236
  %conv8 = trunc i64 %cond to i32, !dbg !236
  %15 = load ptr, ptr %entry1, align 8, !dbg !239
  %size9 = getelementptr inbounds %struct.nvs_page, ptr %15, i32 0, i32 1, !dbg !240
  store i32 %conv8, ptr %size9, align 8, !dbg !241
  %16 = load ptr, ptr %entry1, align 8, !dbg !242
  %size10 = getelementptr inbounds %struct.nvs_page, ptr %16, i32 0, i32 1, !dbg !243
  %17 = load i32, ptr %size10, align 8, !dbg !243
  %conv11 = zext i32 %17 to i64, !dbg !242
  %18 = load i64, ptr %start.addr, align 8, !dbg !244
  %add12 = add i64 %18, %conv11, !dbg !244
  store i64 %add12, ptr %start.addr, align 8, !dbg !244
  %19 = load ptr, ptr %entry1, align 8, !dbg !245
  %size13 = getelementptr inbounds %struct.nvs_page, ptr %19, i32 0, i32 1, !dbg !246
  %20 = load i32, ptr %size13, align 8, !dbg !246
  %conv14 = zext i32 %20 to i64, !dbg !245
  %21 = load i64, ptr %size.addr, align 8, !dbg !247
  %sub15 = sub i64 %21, %conv14, !dbg !247
  store i64 %sub15, ptr %size.addr, align 8, !dbg !247
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !248
  br label %cleanup, !dbg !248

cleanup:                                          ; preds = %if.then, %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_bytes) #15, !dbg !248
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup31 [
    i32 0, label %cleanup.cont
    i32 6, label %Error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !210, !llvm.loop !249

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !252

Error:                                            ; preds = %cleanup
  call void @llvm.dbg.label(metadata !192), !dbg !253
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !254
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !193, metadata !DIExpression()), !dbg !254
  %22 = load ptr, ptr @nvs_list, align 8, !dbg !254
  store ptr %22, ptr %__mptr, align 8, !dbg !254
  %23 = load ptr, ptr %__mptr, align 8, !dbg !254
  %add.ptr = getelementptr i8, ptr %23, i64 -40, !dbg !254
  store ptr %add.ptr, ptr %tmp16, align 8, !dbg !254
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !255
  %24 = load ptr, ptr %tmp16, align 8, !dbg !254
  store ptr %24, ptr %entry1, align 8, !dbg !255
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr17) #15, !dbg !256
  call void @llvm.dbg.declare(metadata ptr %__mptr17, metadata !196, metadata !DIExpression()), !dbg !256
  %25 = load ptr, ptr %entry1, align 8, !dbg !256
  %node18 = getelementptr inbounds %struct.nvs_page, ptr %25, i32 0, i32 5, !dbg !256
  %next19 = getelementptr inbounds %struct.list_head, ptr %node18, i32 0, i32 0, !dbg !256
  %26 = load ptr, ptr %next19, align 8, !dbg !256
  store ptr %26, ptr %__mptr17, align 8, !dbg !256
  %27 = load ptr, ptr %__mptr17, align 8, !dbg !256
  %add.ptr21 = getelementptr i8, ptr %27, i64 -40, !dbg !256
  store ptr %add.ptr21, ptr %tmp20, align 8, !dbg !256
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr17) #15, !dbg !255
  %28 = load ptr, ptr %tmp20, align 8, !dbg !256
  store ptr %28, ptr %next, align 8, !dbg !255
  br label %for.cond, !dbg !255

for.cond:                                         ; preds = %for.inc, %Error
  %29 = load ptr, ptr %entry1, align 8, !dbg !257
  %node22 = getelementptr inbounds %struct.nvs_page, ptr %29, i32 0, i32 5, !dbg !257
  %cmp23 = icmp eq ptr %node22, @nvs_list, !dbg !257
  %lnot = xor i1 %cmp23, true, !dbg !257
  br i1 %lnot, label %for.body, label %for.end, !dbg !255

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %entry1, align 8, !dbg !258
  %node25 = getelementptr inbounds %struct.nvs_page, ptr %30, i32 0, i32 5, !dbg !260
  call void @list_del(ptr noundef %node25) #17, !dbg !261
  %31 = load ptr, ptr %entry1, align 8, !dbg !262
  call void @kfree(ptr noundef %31) #17, !dbg !263
  br label %for.inc, !dbg !264

for.inc:                                          ; preds = %for.body
  %32 = load ptr, ptr %next, align 8, !dbg !257
  store ptr %32, ptr %entry1, align 8, !dbg !257
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr26) #15, !dbg !265
  call void @llvm.dbg.declare(metadata ptr %__mptr26, metadata !198, metadata !DIExpression()), !dbg !265
  %33 = load ptr, ptr %next, align 8, !dbg !265
  %node27 = getelementptr inbounds %struct.nvs_page, ptr %33, i32 0, i32 5, !dbg !265
  %next28 = getelementptr inbounds %struct.list_head, ptr %node27, i32 0, i32 0, !dbg !265
  %34 = load ptr, ptr %next28, align 8, !dbg !265
  store ptr %34, ptr %__mptr26, align 8, !dbg !265
  %35 = load ptr, ptr %__mptr26, align 8, !dbg !265
  %add.ptr30 = getelementptr i8, ptr %35, i64 -40, !dbg !265
  store ptr %add.ptr30, ptr %tmp29, align 8, !dbg !265
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr26) #15, !dbg !257
  %36 = load ptr, ptr %tmp29, align 8, !dbg !265
  store ptr %36, ptr %next, align 8, !dbg !257
  br label %for.cond, !dbg !257, !llvm.loop !266

for.end:                                          ; preds = %for.cond
  store i32 -12, ptr %retval, align 4, !dbg !268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !268

cleanup31:                                        ; preds = %for.end, %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !269
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !269
  %37 = load i32, ptr %retval, align 4, !dbg !269
  ret i32 %37, !dbg !269
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_nvs_for_each_region(ptr noundef %func, ptr noundef %data) #0 align 16 !dbg !270 {
entry:
  %retval = alloca i32, align 4
  %func.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %region = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !277, metadata !DIExpression()), !dbg !287
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !278, metadata !DIExpression()), !dbg !288
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !289
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !279, metadata !DIExpression()), !dbg !290
  call void @llvm.lifetime.start.p0(i64 8, ptr %region) #15, !dbg !291
  call void @llvm.dbg.declare(metadata ptr %region, metadata !280, metadata !DIExpression()), !dbg !292
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !293
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !281, metadata !DIExpression()), !dbg !293
  %0 = load ptr, ptr @nvs_region_list, align 8, !dbg !293
  store ptr %0, ptr %__mptr, align 8, !dbg !293
  %1 = load ptr, ptr %__mptr, align 8, !dbg !293
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !293
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !293
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !294
  %2 = load ptr, ptr %tmp, align 8, !dbg !293
  store ptr %2, ptr %region, align 8, !dbg !294
  br label %for.cond, !dbg !294

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %region, align 8, !dbg !295
  %node = getelementptr inbounds %struct.nvs_region, ptr %3, i32 0, i32 2, !dbg !295
  %cmp = icmp eq ptr %node, @nvs_region_list, !dbg !295
  %lnot = xor i1 %cmp, true, !dbg !295
  br i1 %lnot, label %for.body, label %for.end, !dbg !294

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %func.addr, align 8, !dbg !296
  %5 = load ptr, ptr %region, align 8, !dbg !298
  %phys_start = getelementptr inbounds %struct.nvs_region, ptr %5, i32 0, i32 0, !dbg !299
  %6 = load i64, ptr %phys_start, align 8, !dbg !299
  %7 = load ptr, ptr %region, align 8, !dbg !300
  %size = getelementptr inbounds %struct.nvs_region, ptr %7, i32 0, i32 1, !dbg !301
  %8 = load i64, ptr %size, align 8, !dbg !301
  %9 = load ptr, ptr %data.addr, align 8, !dbg !302
  %call = call i32 %4(i64 noundef %6, i64 noundef %8, ptr noundef %9) #17, !dbg !296
  store i32 %call, ptr %rc, align 4, !dbg !303
  %10 = load i32, ptr %rc, align 4, !dbg !304
  %tobool = icmp ne i32 %10, 0, !dbg !304
  br i1 %tobool, label %if.then, label %if.end, !dbg !306

if.then:                                          ; preds = %for.body
  %11 = load i32, ptr %rc, align 4, !dbg !307
  store i32 %11, ptr %retval, align 4, !dbg !308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !308

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !309

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !310
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !284, metadata !DIExpression()), !dbg !310
  %12 = load ptr, ptr %region, align 8, !dbg !310
  %node2 = getelementptr inbounds %struct.nvs_region, ptr %12, i32 0, i32 2, !dbg !310
  %next = getelementptr inbounds %struct.list_head, ptr %node2, i32 0, i32 0, !dbg !310
  %13 = load ptr, ptr %next, align 8, !dbg !310
  store ptr %13, ptr %__mptr1, align 8, !dbg !310
  %14 = load ptr, ptr %__mptr1, align 8, !dbg !310
  %add.ptr4 = getelementptr i8, ptr %14, i64 -16, !dbg !310
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !310
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !295
  %15 = load ptr, ptr %tmp3, align 8, !dbg !310
  store ptr %15, ptr %region, align 8, !dbg !295
  br label %for.cond, !dbg !295, !llvm.loop !311

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !313

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %region) #15, !dbg !314
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !314
  %16 = load i32, ptr %retval, align 4, !dbg !314
  ret i32 %16, !dbg !314
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @suspend_nvs_free() #0 align 16 !dbg !315 {
entry:
  %entry1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr14 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !326
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !319, metadata !DIExpression()), !dbg !327
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !328
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !320, metadata !DIExpression()), !dbg !328
  %0 = load ptr, ptr @nvs_list, align 8, !dbg !328
  store ptr %0, ptr %__mptr, align 8, !dbg !328
  %1 = load ptr, ptr %__mptr, align 8, !dbg !328
  %add.ptr = getelementptr i8, ptr %1, i64 -40, !dbg !328
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !328
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !329
  %2 = load ptr, ptr %tmp, align 8, !dbg !328
  store ptr %2, ptr %entry1, align 8, !dbg !329
  br label %for.cond, !dbg !329

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %entry1, align 8, !dbg !330
  %node = getelementptr inbounds %struct.nvs_page, ptr %3, i32 0, i32 5, !dbg !330
  %cmp = icmp eq ptr %node, @nvs_list, !dbg !330
  %lnot = xor i1 %cmp, true, !dbg !330
  br i1 %lnot, label %for.body, label %for.end, !dbg !329

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %entry1, align 8, !dbg !331
  %data = getelementptr inbounds %struct.nvs_page, ptr %4, i32 0, i32 3, !dbg !333
  %5 = load ptr, ptr %data, align 8, !dbg !333
  %tobool = icmp ne ptr %5, null, !dbg !331
  br i1 %tobool, label %if.then, label %if.end13, !dbg !334

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %entry1, align 8, !dbg !335
  %data2 = getelementptr inbounds %struct.nvs_page, ptr %6, i32 0, i32 3, !dbg !335
  %7 = load ptr, ptr %data2, align 8, !dbg !335
  %8 = ptrtoint ptr %7 to i64, !dbg !335
  call void @free_pages(i64 noundef %8, i32 noundef 0) #17, !dbg !335
  %9 = load ptr, ptr %entry1, align 8, !dbg !337
  %data3 = getelementptr inbounds %struct.nvs_page, ptr %9, i32 0, i32 3, !dbg !338
  store ptr null, ptr %data3, align 8, !dbg !339
  %10 = load ptr, ptr %entry1, align 8, !dbg !340
  %kaddr = getelementptr inbounds %struct.nvs_page, ptr %10, i32 0, i32 2, !dbg !342
  %11 = load ptr, ptr %kaddr, align 8, !dbg !342
  %tobool4 = icmp ne ptr %11, null, !dbg !340
  br i1 %tobool4, label %if.then5, label %if.end12, !dbg !343

if.then5:                                         ; preds = %if.then
  %12 = load ptr, ptr %entry1, align 8, !dbg !344
  %unmap = getelementptr inbounds %struct.nvs_page, ptr %12, i32 0, i32 4, !dbg !347
  %13 = load i8, ptr %unmap, align 8, !dbg !347, !range !348, !noundef !349
  %tobool6 = trunc i8 %13 to i1, !dbg !347
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !350

if.then7:                                         ; preds = %if.then5
  %14 = load ptr, ptr %entry1, align 8, !dbg !351
  %kaddr8 = getelementptr inbounds %struct.nvs_page, ptr %14, i32 0, i32 2, !dbg !353
  %15 = load ptr, ptr %kaddr8, align 8, !dbg !353
  call void @iounmap(ptr noundef %15) #17, !dbg !354
  %16 = load ptr, ptr %entry1, align 8, !dbg !355
  %unmap9 = getelementptr inbounds %struct.nvs_page, ptr %16, i32 0, i32 4, !dbg !356
  store i8 0, ptr %unmap9, align 8, !dbg !357
  br label %if.end, !dbg !358

if.else:                                          ; preds = %if.then5
  %17 = load ptr, ptr %entry1, align 8, !dbg !359
  %kaddr10 = getelementptr inbounds %struct.nvs_page, ptr %17, i32 0, i32 2, !dbg !361
  %18 = load ptr, ptr %kaddr10, align 8, !dbg !361
  %19 = load ptr, ptr %entry1, align 8, !dbg !362
  %size = getelementptr inbounds %struct.nvs_page, ptr %19, i32 0, i32 1, !dbg !363
  %20 = load i32, ptr %size, align 8, !dbg !363
  %conv = zext i32 %20 to i64, !dbg !362
  call void @acpi_os_unmap_iomem(ptr noundef %18, i64 noundef %conv) #17, !dbg !364
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %21 = load ptr, ptr %entry1, align 8, !dbg !365
  %kaddr11 = getelementptr inbounds %struct.nvs_page, ptr %21, i32 0, i32 2, !dbg !366
  store ptr null, ptr %kaddr11, align 8, !dbg !367
  br label %if.end12, !dbg !368

if.end12:                                         ; preds = %if.end, %if.then
  br label %if.end13, !dbg !369

if.end13:                                         ; preds = %if.end12, %for.body
  br label %for.inc, !dbg !333

for.inc:                                          ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #15, !dbg !370
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !323, metadata !DIExpression()), !dbg !370
  %22 = load ptr, ptr %entry1, align 8, !dbg !370
  %node15 = getelementptr inbounds %struct.nvs_page, ptr %22, i32 0, i32 5, !dbg !370
  %next = getelementptr inbounds %struct.list_head, ptr %node15, i32 0, i32 0, !dbg !370
  %23 = load ptr, ptr %next, align 8, !dbg !370
  store ptr %23, ptr %__mptr14, align 8, !dbg !370
  %24 = load ptr, ptr %__mptr14, align 8, !dbg !370
  %add.ptr17 = getelementptr i8, ptr %24, i64 -40, !dbg !370
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !370
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #15, !dbg !330
  %25 = load ptr, ptr %tmp16, align 8, !dbg !370
  store ptr %25, ptr %entry1, align 8, !dbg !330
  br label %for.cond, !dbg !330, !llvm.loop !371

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !373
  ret void, !dbg !373
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !374 dso_local void @free_pages(i64 noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !378 dso_local void @iounmap(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !384 dso_local void @acpi_os_unmap_iomem(ptr noundef, i64 noundef) #5 section ".ref.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @suspend_nvs_alloc() #0 align 16 !dbg !392 {
entry:
  %retval = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !403
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !396, metadata !DIExpression()), !dbg !404
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !405
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !397, metadata !DIExpression()), !dbg !405
  %0 = load ptr, ptr @nvs_list, align 8, !dbg !405
  store ptr %0, ptr %__mptr, align 8, !dbg !405
  %1 = load ptr, ptr %__mptr, align 8, !dbg !405
  %add.ptr = getelementptr i8, ptr %1, i64 -40, !dbg !405
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !405
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !406
  %2 = load ptr, ptr %tmp, align 8, !dbg !405
  store ptr %2, ptr %entry1, align 8, !dbg !406
  br label %for.cond, !dbg !406

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %entry1, align 8, !dbg !407
  %node = getelementptr inbounds %struct.nvs_page, ptr %3, i32 0, i32 5, !dbg !407
  %cmp = icmp eq ptr %node, @nvs_list, !dbg !407
  %lnot = xor i1 %cmp, true, !dbg !407
  br i1 %lnot, label %for.body, label %for.end, !dbg !406

for.body:                                         ; preds = %for.cond
  %call = call i64 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #17, !dbg !408
  %4 = inttoptr i64 %call to ptr, !dbg !410
  %5 = load ptr, ptr %entry1, align 8, !dbg !411
  %data = getelementptr inbounds %struct.nvs_page, ptr %5, i32 0, i32 3, !dbg !412
  store ptr %4, ptr %data, align 8, !dbg !413
  %6 = load ptr, ptr %entry1, align 8, !dbg !414
  %data2 = getelementptr inbounds %struct.nvs_page, ptr %6, i32 0, i32 3, !dbg !416
  %7 = load ptr, ptr %data2, align 8, !dbg !416
  %tobool = icmp ne ptr %7, null, !dbg !414
  br i1 %tobool, label %if.end, label %if.then, !dbg !417

if.then:                                          ; preds = %for.body
  call void @suspend_nvs_free() #17, !dbg !418
  store i32 -12, ptr %retval, align 4, !dbg !420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !420

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !421

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #15, !dbg !422
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !400, metadata !DIExpression()), !dbg !422
  %8 = load ptr, ptr %entry1, align 8, !dbg !422
  %node4 = getelementptr inbounds %struct.nvs_page, ptr %8, i32 0, i32 5, !dbg !422
  %next = getelementptr inbounds %struct.list_head, ptr %node4, i32 0, i32 0, !dbg !422
  %9 = load ptr, ptr %next, align 8, !dbg !422
  store ptr %9, ptr %__mptr3, align 8, !dbg !422
  %10 = load ptr, ptr %__mptr3, align 8, !dbg !422
  %add.ptr6 = getelementptr i8, ptr %10, i64 -40, !dbg !422
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !422
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #15, !dbg !407
  %11 = load ptr, ptr %tmp5, align 8, !dbg !422
  store ptr %11, ptr %entry1, align 8, !dbg !407
  br label %for.cond, !dbg !407, !llvm.loop !423

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !425

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !426
  %12 = load i32, ptr %retval, align 4, !dbg !426
  ret i32 %12, !dbg !426
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !427 dso_local i64 @__get_free_pages(i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @suspend_nvs_save() #0 align 16 !dbg !430 {
entry:
  %retval = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %phys = alloca i64, align 8
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr24 = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !443
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !432, metadata !DIExpression()), !dbg !444
  br label %do.body, !dbg !445

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !447

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !447

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str) #19, !dbg !445
  store i32 %call, ptr %tmp, align 4, !dbg !447
  %0 = load i32, ptr %tmp, align 4, !dbg !445
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !449
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !433, metadata !DIExpression()), !dbg !449
  %1 = load ptr, ptr @nvs_list, align 8, !dbg !449
  store ptr %1, ptr %__mptr, align 8, !dbg !449
  %2 = load ptr, ptr %__mptr, align 8, !dbg !449
  %add.ptr = getelementptr i8, ptr %2, i64 -40, !dbg !449
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !449
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !450
  %3 = load ptr, ptr %tmp2, align 8, !dbg !449
  store ptr %3, ptr %entry1, align 8, !dbg !450
  br label %for.cond, !dbg !450

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load ptr, ptr %entry1, align 8, !dbg !451
  %node = getelementptr inbounds %struct.nvs_page, ptr %4, i32 0, i32 5, !dbg !451
  %cmp = icmp eq ptr %node, @nvs_list, !dbg !451
  %lnot = xor i1 %cmp, true, !dbg !451
  br i1 %lnot, label %for.body, label %for.end, !dbg !450

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %entry1, align 8, !dbg !452
  %data = getelementptr inbounds %struct.nvs_page, ptr %5, i32 0, i32 3, !dbg !453
  %6 = load ptr, ptr %data, align 8, !dbg !453
  %tobool = icmp ne ptr %6, null, !dbg !452
  br i1 %tobool, label %if.then, label %if.end23, !dbg !454

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %phys) #15, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %phys, metadata !436, metadata !DIExpression()), !dbg !456
  %7 = load ptr, ptr %entry1, align 8, !dbg !457
  %phys_start = getelementptr inbounds %struct.nvs_page, ptr %7, i32 0, i32 0, !dbg !458
  %8 = load i64, ptr %phys_start, align 8, !dbg !458
  store i64 %8, ptr %phys, align 8, !dbg !456
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #15, !dbg !459
  call void @llvm.dbg.declare(metadata ptr %size, metadata !440, metadata !DIExpression()), !dbg !460
  %9 = load ptr, ptr %entry1, align 8, !dbg !461
  %size3 = getelementptr inbounds %struct.nvs_page, ptr %9, i32 0, i32 1, !dbg !462
  %10 = load i32, ptr %size3, align 8, !dbg !462
  store i32 %10, ptr %size, align 4, !dbg !460
  %11 = load i64, ptr %phys, align 8, !dbg !463
  %12 = load i32, ptr %size, align 4, !dbg !464
  %call4 = call ptr @acpi_os_get_iomem(i64 noundef %11, i32 noundef %12) #17, !dbg !465
  %13 = load ptr, ptr %entry1, align 8, !dbg !466
  %kaddr = getelementptr inbounds %struct.nvs_page, ptr %13, i32 0, i32 2, !dbg !467
  store ptr %call4, ptr %kaddr, align 8, !dbg !468
  %14 = load ptr, ptr %entry1, align 8, !dbg !469
  %kaddr5 = getelementptr inbounds %struct.nvs_page, ptr %14, i32 0, i32 2, !dbg !471
  %15 = load ptr, ptr %kaddr5, align 8, !dbg !471
  %tobool6 = icmp ne ptr %15, null, !dbg !469
  br i1 %tobool6, label %if.end, label %if.then7, !dbg !472

if.then7:                                         ; preds = %if.then
  %16 = load i64, ptr %phys, align 8, !dbg !473
  %17 = load i32, ptr %size, align 4, !dbg !475
  %conv = zext i32 %17 to i64, !dbg !475
  %call8 = call ptr @acpi_os_ioremap(i64 noundef %16, i64 noundef %conv) #17, !dbg !476
  %18 = load ptr, ptr %entry1, align 8, !dbg !477
  %kaddr9 = getelementptr inbounds %struct.nvs_page, ptr %18, i32 0, i32 2, !dbg !478
  store ptr %call8, ptr %kaddr9, align 8, !dbg !479
  %19 = load ptr, ptr %entry1, align 8, !dbg !480
  %kaddr10 = getelementptr inbounds %struct.nvs_page, ptr %19, i32 0, i32 2, !dbg !481
  %20 = load ptr, ptr %kaddr10, align 8, !dbg !481
  %tobool11 = icmp ne ptr %20, null, !dbg !482
  %lnot12 = xor i1 %tobool11, true, !dbg !482
  %lnot13 = xor i1 %lnot12, true, !dbg !483
  %21 = load ptr, ptr %entry1, align 8, !dbg !484
  %unmap = getelementptr inbounds %struct.nvs_page, ptr %21, i32 0, i32 4, !dbg !485
  %frombool = zext i1 %lnot13 to i8, !dbg !486
  store i8 %frombool, ptr %unmap, align 8, !dbg !486
  br label %if.end, !dbg !487

if.end:                                           ; preds = %if.then7, %if.then
  %22 = load ptr, ptr %entry1, align 8, !dbg !488
  %kaddr14 = getelementptr inbounds %struct.nvs_page, ptr %22, i32 0, i32 2, !dbg !490
  %23 = load ptr, ptr %kaddr14, align 8, !dbg !490
  %tobool15 = icmp ne ptr %23, null, !dbg !488
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !491

if.then16:                                        ; preds = %if.end
  call void @suspend_nvs_free() #17, !dbg !492
  store i32 -12, ptr %retval, align 4, !dbg !494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !494

if.end17:                                         ; preds = %if.end
  %24 = load ptr, ptr %entry1, align 8, !dbg !495
  %data18 = getelementptr inbounds %struct.nvs_page, ptr %24, i32 0, i32 3, !dbg !496
  %25 = load ptr, ptr %data18, align 8, !dbg !496
  %26 = load ptr, ptr %entry1, align 8, !dbg !497
  %kaddr19 = getelementptr inbounds %struct.nvs_page, ptr %26, i32 0, i32 2, !dbg !498
  %27 = load ptr, ptr %kaddr19, align 8, !dbg !498
  %28 = load ptr, ptr %entry1, align 8, !dbg !499
  %size20 = getelementptr inbounds %struct.nvs_page, ptr %28, i32 0, i32 1, !dbg !500
  %29 = load i32, ptr %size20, align 8, !dbg !500
  %conv21 = zext i32 %29 to i64, !dbg !499
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %27, i64 %conv21, i1 false), !dbg !501
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !502
  br label %cleanup, !dbg !502

cleanup:                                          ; preds = %if.end17, %if.then16
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #15, !dbg !502
  call void @llvm.lifetime.end.p0(i64 8, ptr %phys) #15, !dbg !502
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup28 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end23, !dbg !503

if.end23:                                         ; preds = %cleanup.cont, %for.body
  br label %for.inc, !dbg !453

for.inc:                                          ; preds = %if.end23
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr24) #15, !dbg !504
  call void @llvm.dbg.declare(metadata ptr %__mptr24, metadata !441, metadata !DIExpression()), !dbg !504
  %30 = load ptr, ptr %entry1, align 8, !dbg !504
  %node25 = getelementptr inbounds %struct.nvs_page, ptr %30, i32 0, i32 5, !dbg !504
  %next = getelementptr inbounds %struct.list_head, ptr %node25, i32 0, i32 0, !dbg !504
  %31 = load ptr, ptr %next, align 8, !dbg !504
  store ptr %31, ptr %__mptr24, align 8, !dbg !504
  %32 = load ptr, ptr %__mptr24, align 8, !dbg !504
  %add.ptr27 = getelementptr i8, ptr %32, i64 -40, !dbg !504
  store ptr %add.ptr27, ptr %tmp26, align 8, !dbg !504
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr24) #15, !dbg !451
  %33 = load ptr, ptr %tmp26, align 8, !dbg !504
  store ptr %33, ptr %entry1, align 8, !dbg !451
  br label %for.cond, !dbg !451, !llvm.loop !505

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !507
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup28, !dbg !507

cleanup28:                                        ; preds = %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !508
  %34 = load i32, ptr %retval, align 4, !dbg !508
  ret i32 %34, !dbg !508
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !509 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !515 dso_local ptr @acpi_os_get_iomem(i64 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_os_ioremap(i64 noundef %phys, i64 noundef %size) #4 align 16 !dbg !519 {
entry:
  %phys.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i64 %phys, ptr %phys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %phys.addr, metadata !523, metadata !DIExpression()), !dbg !525
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !524, metadata !DIExpression()), !dbg !526
  %0 = load i64, ptr %phys.addr, align 8, !dbg !527
  %1 = load i64, ptr %size.addr, align 8, !dbg !528
  %call = call ptr @ioremap_cache(i64 noundef %0, i64 noundef %1) #17, !dbg !529
  ret ptr %call, !dbg !530
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @suspend_nvs_restore() #0 align 16 !dbg !531 {
entry:
  %entry1 = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #15, !dbg !540
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !533, metadata !DIExpression()), !dbg !541
  br label %do.body, !dbg !542

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !544

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !544

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #19, !dbg !542
  store i32 %call, ptr %tmp, align 4, !dbg !544
  %0 = load i32, ptr %tmp, align 4, !dbg !542
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !546
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !534, metadata !DIExpression()), !dbg !546
  %1 = load ptr, ptr @nvs_list, align 8, !dbg !546
  store ptr %1, ptr %__mptr, align 8, !dbg !546
  %2 = load ptr, ptr %__mptr, align 8, !dbg !546
  %add.ptr = getelementptr i8, ptr %2, i64 -40, !dbg !546
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !546
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !547
  %3 = load ptr, ptr %tmp2, align 8, !dbg !546
  store ptr %3, ptr %entry1, align 8, !dbg !547
  br label %for.cond, !dbg !547

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load ptr, ptr %entry1, align 8, !dbg !548
  %node = getelementptr inbounds %struct.nvs_page, ptr %4, i32 0, i32 5, !dbg !548
  %cmp = icmp eq ptr %node, @nvs_list, !dbg !548
  %lnot = xor i1 %cmp, true, !dbg !548
  br i1 %lnot, label %for.body, label %for.end, !dbg !547

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %entry1, align 8, !dbg !549
  %data = getelementptr inbounds %struct.nvs_page, ptr %5, i32 0, i32 3, !dbg !551
  %6 = load ptr, ptr %data, align 8, !dbg !551
  %tobool = icmp ne ptr %6, null, !dbg !549
  br i1 %tobool, label %if.then, label %if.end, !dbg !552

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %entry1, align 8, !dbg !553
  %kaddr = getelementptr inbounds %struct.nvs_page, ptr %7, i32 0, i32 2, !dbg !554
  %8 = load ptr, ptr %kaddr, align 8, !dbg !554
  %9 = load ptr, ptr %entry1, align 8, !dbg !555
  %data3 = getelementptr inbounds %struct.nvs_page, ptr %9, i32 0, i32 3, !dbg !556
  %10 = load ptr, ptr %data3, align 8, !dbg !556
  %11 = load ptr, ptr %entry1, align 8, !dbg !557
  %size = getelementptr inbounds %struct.nvs_page, ptr %11, i32 0, i32 1, !dbg !558
  %12 = load i32, ptr %size, align 8, !dbg !558
  %conv = zext i32 %12 to i64, !dbg !557
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %10, i64 %conv, i1 false), !dbg !559
  br label %if.end, !dbg !559

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !551

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #15, !dbg !560
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !537, metadata !DIExpression()), !dbg !560
  %13 = load ptr, ptr %entry1, align 8, !dbg !560
  %node5 = getelementptr inbounds %struct.nvs_page, ptr %13, i32 0, i32 5, !dbg !560
  %next = getelementptr inbounds %struct.list_head, ptr %node5, i32 0, i32 0, !dbg !560
  %14 = load ptr, ptr %next, align 8, !dbg !560
  store ptr %14, ptr %__mptr4, align 8, !dbg !560
  %15 = load ptr, ptr %__mptr4, align 8, !dbg !560
  %add.ptr7 = getelementptr i8, ptr %15, i64 -40, !dbg !560
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !560
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #15, !dbg !548
  %16 = load ptr, ptr %tmp6, align 8, !dbg !560
  store ptr %16, ptr %entry1, align 8, !dbg !548
  br label %for.cond, !dbg !548, !llvm.loop !561

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #15, !dbg !563
  ret void, !dbg !563
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !564 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !565 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !569, metadata !DIExpression()), !dbg !571
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !570, metadata !DIExpression()), !dbg !572
  %0 = load i64, ptr %size.addr, align 8, !dbg !573
  %tobool = icmp ne i64 %0, 0, !dbg !573
  br i1 %tobool, label %if.end, label %if.then, !dbg !575

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !576
  br label %return, !dbg !576

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !577
  %cmp = icmp ule i64 %1, 8, !dbg !579
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !580

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !581
  br label %return, !dbg !581

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !582
  %cmp3 = icmp ugt i64 %2, 64, !dbg !584
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !585

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !586
  %cmp4 = icmp ule i64 %3, 96, !dbg !587
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !588

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !589
  br label %return, !dbg !589

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !590
  %cmp7 = icmp ugt i64 %4, 128, !dbg !592
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !593

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !594
  %cmp9 = icmp ule i64 %5, 192, !dbg !595
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !596

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !597
  br label %return, !dbg !597

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !598
  %cmp12 = icmp ule i64 %6, 8, !dbg !600
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !601

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !602
  br label %return, !dbg !602

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !603
  %cmp15 = icmp ule i64 %7, 16, !dbg !605
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !606

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !607
  br label %return, !dbg !607

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !608
  %cmp18 = icmp ule i64 %8, 32, !dbg !610
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !611

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !612
  br label %return, !dbg !612

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !613
  %cmp21 = icmp ule i64 %9, 64, !dbg !615
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !616

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !617
  br label %return, !dbg !617

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !618
  %cmp24 = icmp ule i64 %10, 128, !dbg !620
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !621

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !622
  br label %return, !dbg !622

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !623
  %cmp27 = icmp ule i64 %11, 256, !dbg !625
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !626

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !627
  br label %return, !dbg !627

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !628
  %cmp30 = icmp ule i64 %12, 512, !dbg !630
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !631

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !632
  br label %return, !dbg !632

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !633
  %cmp33 = icmp ule i64 %13, 1024, !dbg !635
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !636

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !637
  br label %return, !dbg !637

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !638
  %cmp36 = icmp ule i64 %14, 2048, !dbg !640
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !641

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !642
  br label %return, !dbg !642

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !643
  %cmp39 = icmp ule i64 %15, 4096, !dbg !645
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !646

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !647
  br label %return, !dbg !647

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !648
  %cmp42 = icmp ule i64 %16, 8192, !dbg !650
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !651

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !652
  br label %return, !dbg !652

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !653
  %cmp45 = icmp ule i64 %17, 16384, !dbg !655
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !656

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !657
  br label %return, !dbg !657

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !658
  %cmp48 = icmp ule i64 %18, 32768, !dbg !660
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !661

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !662
  br label %return, !dbg !662

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !663
  %cmp51 = icmp ule i64 %19, 65536, !dbg !665
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !666

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !667
  br label %return, !dbg !667

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !668
  %cmp54 = icmp ule i64 %20, 131072, !dbg !670
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !671

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !672
  br label %return, !dbg !672

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !673
  %cmp57 = icmp ule i64 %21, 262144, !dbg !675
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !676

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !677
  br label %return, !dbg !677

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !678
  %cmp60 = icmp ule i64 %22, 524288, !dbg !680
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !681

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !682
  br label %return, !dbg !682

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !683
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !685
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !686

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !687
  br label %return, !dbg !687

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !688
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !690
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !691

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !692
  br label %return, !dbg !692

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !693, !range !348, !noundef !349
  %tobool69 = trunc i8 %25 to i1, !dbg !693
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !695

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !696

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_206() #20, !dbg !697, !srcloc !700
  unreachable, !dbg !697

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !701

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !702

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !703

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !705

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !703

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #15, !dbg !707, !srcloc !709
  br label %do.end75, !dbg !707

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !703

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !710
  br label %return, !dbg !710

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !711
  ret i32 %26, !dbg !711
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !712 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !718 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !722, metadata !DIExpression()), !dbg !724
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !723, metadata !DIExpression()), !dbg !725
  %0 = load i32, ptr %flags.addr, align 4, !dbg !726
  %and = and i32 %0, 17, !dbg !726
  %cmp = icmp eq i32 %and, 0, !dbg !726
  %lnot = xor i1 %cmp, true, !dbg !726
  %lnot1 = xor i1 %lnot, true, !dbg !726
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !726
  %conv = sext i32 %lnot.ext to i64, !dbg !726
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !726
  %tobool = icmp ne i64 %expval, 0, !dbg !726
  br i1 %tobool, label %if.then, label %if.end, !dbg !728

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !729
  br label %return, !dbg !729

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !730
  %and2 = and i32 %1, 1, !dbg !732
  %tobool3 = icmp ne i32 %and2, 0, !dbg !732
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !733

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !734
  br label %return, !dbg !734

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !735
  br label %return, !dbg !735

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !737
  ret i32 %2, !dbg !737
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !738 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !739 dso_local void @__compiletime_assert_206() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !740 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !744, metadata !DIExpression()), !dbg !747
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !745, metadata !DIExpression()), !dbg !748
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !746, metadata !DIExpression()), !dbg !749
  %0 = load ptr, ptr %new.addr, align 8, !dbg !750
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !752
  %2 = load ptr, ptr %next.addr, align 8, !dbg !753
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !754
  br i1 %call, label %if.end, label %if.then, !dbg !755

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !756

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !757
  %4 = load ptr, ptr %next.addr, align 8, !dbg !758
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !759
  store ptr %3, ptr %prev1, align 8, !dbg !760
  %5 = load ptr, ptr %next.addr, align 8, !dbg !761
  %6 = load ptr, ptr %new.addr, align 8, !dbg !762
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !763
  store ptr %5, ptr %next2, align 8, !dbg !764
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !765
  %8 = load ptr, ptr %new.addr, align 8, !dbg !766
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !767
  store ptr %7, ptr %prev3, align 8, !dbg !768
  br label %do.body, !dbg !769

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !770

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !772

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !770

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !774
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !774
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !774
  store volatile ptr %9, ptr %next6, align 8, !dbg !774
  br label %do.end7, !dbg !774

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !770

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !776
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !777 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !781, metadata !DIExpression()), !dbg !784
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !782, metadata !DIExpression()), !dbg !785
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !783, metadata !DIExpression()), !dbg !786
  ret i1 true, !dbg !787
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #14 align 16 !dbg !788 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !790, metadata !DIExpression()), !dbg !792
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !791, metadata !DIExpression()), !dbg !793
  %0 = load i64, ptr %size.addr, align 8, !dbg !794
  %1 = load i32, ptr %flags.addr, align 4, !dbg !795
  %or = or i32 %1, 256, !dbg !796
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !797
  ret ptr %call, !dbg !798
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !799 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !803, metadata !DIExpression()), !dbg !804
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !805
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !806
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !807
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !808
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !809
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !810
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !811
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !812
  ret void, !dbg !813
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !814 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !819 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !821, metadata !DIExpression()), !dbg !822
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !823
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !825
  br i1 %call, label %if.end, label %if.then, !dbg !826

if.then:                                          ; preds = %entry
  br label %return, !dbg !827

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !828
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !829
  %2 = load ptr, ptr %prev, align 8, !dbg !829
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !830
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !831
  %4 = load ptr, ptr %next, align 8, !dbg !831
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !832
  br label %return, !dbg !833

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !833
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !834 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !838, metadata !DIExpression()), !dbg !839
  ret i1 true, !dbg !840
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !841 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !843, metadata !DIExpression()), !dbg !845
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !844, metadata !DIExpression()), !dbg !846
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !847
  %1 = load ptr, ptr %next.addr, align 8, !dbg !848
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !849
  store ptr %0, ptr %prev1, align 8, !dbg !850
  br label %do.body, !dbg !851

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !852

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !854

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !852

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !856
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !856
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !856
  store volatile ptr %2, ptr %next4, align 8, !dbg !856
  br label %do.end5, !dbg !856

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !852

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !858
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !859 dso_local ptr @ioremap_cache(i64 noundef, i64 noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nvs_region_list", scope: !2, file: !3, line: 27, type: !34, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.nvs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22nvs\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/nvs.ll drivers/acpi/nvs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !53, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/nvs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "794806ad5f2245a13e0268da0678bb2d")
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
!21 = !{!22, !24, !25, !39, !43, !51}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !23, line: 154, baseType: !7)
!23 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nvs_region", file: !3, line: 21, size: 256, elements: !27)
!27 = !{!28, !32, !33}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "phys_start", scope: !26, file: !3, line: 22, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !30, line: 31, baseType: !31)
!30 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!31 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !26, file: !3, line: 23, baseType: !29, size: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !26, file: !3, line: 24, baseType: !34, size: 128, offset: 128)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !23, line: 190, size: 128, elements: !35)
!35 = !{!36, !38}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !34, file: !23, line: 191, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !34, file: !23, line: 191, baseType: !37, size: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nvs_page", file: !3, line: 75, size: 448, elements: !41)
!41 = !{!42, !44, !45, !46, !47, !50}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "phys_start", scope: !40, file: !3, line: 76, baseType: !43, size: 64)
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !40, file: !3, line: 77, baseType: !7, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "kaddr", scope: !40, file: !3, line: 78, baseType: !24, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !40, file: !3, line: 79, baseType: !24, size: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !40, file: !3, line: 80, baseType: !48, size: 8, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !23, line: 35, baseType: !49)
!49 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !40, file: !3, line: 81, baseType: !34, size: 128, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!53 = !{!54, !60, !65, !0, !70, !75}
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 320, elements: !58)
!57 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!58 = !{!59}
!59 = !DISubrange(count: 40)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !3, line: 207, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 344, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 43)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 168, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 21)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 600, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 75)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "nvs_list", scope: !2, file: !3, line: 84, type: !34, isLocal: true, isDefinition: true)
!77 = !{i32 7, !"Dwarf Version", i32 5}
!78 = !{i32 2, !"Debug Info Version", i32 3}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 8, !"cf-protection-branch", i32 1}
!81 = !{i32 4, !"function_return_thunk_extern", i32 1}
!82 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!83 = !{i32 1, !"Code Model", i32 2}
!84 = !{i32 1, !"override-stack-alignment", i32 8}
!85 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!86 = distinct !DISubprogram(name: "acpi_nvs_register", scope: !3, file: !3, line: 38, type: !87, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !90)
!87 = !DISubroutineType(types: !88)
!88 = !{!89, !29, !29}
!89 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!90 = !{!91, !92, !93}
!91 = !DILocalVariable(name: "start", arg: 1, scope: !86, file: !3, line: 38, type: !29)
!92 = !DILocalVariable(name: "size", arg: 2, scope: !86, file: !3, line: 38, type: !29)
!93 = !DILocalVariable(name: "region", scope: !86, file: !3, line: 40, type: !25)
!94 = !DILocation(line: 38, column: 29, scope: !86)
!95 = !DILocation(line: 38, column: 42, scope: !86)
!96 = !DILocation(line: 40, column: 2, scope: !86)
!97 = !DILocation(line: 40, column: 21, scope: !86)
!98 = !DILocation(line: 42, column: 11, scope: !86)
!99 = !DILocation(line: 42, column: 9, scope: !86)
!100 = !DILocation(line: 43, column: 7, scope: !101)
!101 = distinct !DILexicalBlock(scope: !86, file: !3, line: 43, column: 6)
!102 = !DILocation(line: 43, column: 6, scope: !86)
!103 = !DILocation(line: 44, column: 3, scope: !101)
!104 = !DILocation(line: 45, column: 23, scope: !86)
!105 = !DILocation(line: 45, column: 2, scope: !86)
!106 = !DILocation(line: 45, column: 10, scope: !86)
!107 = !DILocation(line: 45, column: 21, scope: !86)
!108 = !DILocation(line: 46, column: 17, scope: !86)
!109 = !DILocation(line: 46, column: 2, scope: !86)
!110 = !DILocation(line: 46, column: 10, scope: !86)
!111 = !DILocation(line: 46, column: 15, scope: !86)
!112 = !DILocation(line: 47, column: 17, scope: !86)
!113 = !DILocation(line: 47, column: 25, scope: !86)
!114 = !DILocation(line: 47, column: 2, scope: !86)
!115 = !DILocation(line: 49, column: 30, scope: !86)
!116 = !DILocation(line: 49, column: 37, scope: !86)
!117 = !DILocation(line: 49, column: 9, scope: !86)
!118 = !DILocation(line: 49, column: 2, scope: !86)
!119 = !DILocation(line: 50, column: 1, scope: !86)
!120 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !121, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !127)
!121 = !DISubroutineType(types: !122)
!122 = !{!24, !123, !22}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 61, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !125, line: 72, baseType: !126)
!125 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !125, line: 16, baseType: !43)
!127 = !{!128, !129, !130}
!128 = !DILocalVariable(name: "size", arg: 1, scope: !120, file: !12, line: 591, type: !123)
!129 = !DILocalVariable(name: "flags", arg: 2, scope: !120, file: !12, line: 591, type: !22)
!130 = !DILocalVariable(name: "index", scope: !131, file: !12, line: 594, type: !7)
!131 = distinct !DILexicalBlock(scope: !132, file: !12, line: 593, column: 42)
!132 = distinct !DILexicalBlock(scope: !120, file: !12, line: 593, column: 6)
!133 = !DILocation(line: 591, column: 61, scope: !120)
!134 = !DILocation(line: 591, column: 73, scope: !120)
!135 = !DILocation(line: 593, column: 27, scope: !132)
!136 = !DILocation(line: 593, column: 6, scope: !132)
!137 = !DILocation(line: 593, column: 33, scope: !132)
!138 = !DILocation(line: 593, column: 36, scope: !132)
!139 = !DILocation(line: 593, column: 6, scope: !120)
!140 = !DILocation(line: 594, column: 3, scope: !131)
!141 = !DILocation(line: 594, column: 16, scope: !131)
!142 = !DILocation(line: 596, column: 7, scope: !143)
!143 = distinct !DILexicalBlock(scope: !131, file: !12, line: 596, column: 7)
!144 = !DILocation(line: 596, column: 12, scope: !143)
!145 = !DILocation(line: 596, column: 7, scope: !131)
!146 = !DILocation(line: 597, column: 25, scope: !143)
!147 = !DILocation(line: 597, column: 31, scope: !143)
!148 = !DILocation(line: 597, column: 11, scope: !143)
!149 = !DILocation(line: 597, column: 4, scope: !143)
!150 = !DILocation(line: 599, column: 11, scope: !131)
!151 = !DILocation(line: 599, column: 9, scope: !131)
!152 = !DILocation(line: 601, column: 33, scope: !131)
!153 = !DILocation(line: 601, column: 40, scope: !131)
!154 = !DILocation(line: 601, column: 20, scope: !131)
!155 = !DILocation(line: 601, column: 5, scope: !131)
!156 = !DILocation(line: 601, column: 51, scope: !131)
!157 = !DILocation(line: 602, column: 5, scope: !131)
!158 = !DILocation(line: 602, column: 12, scope: !131)
!159 = !DILocation(line: 600, column: 10, scope: !131)
!160 = !DILocation(line: 600, column: 3, scope: !131)
!161 = !DILocation(line: 603, column: 2, scope: !132)
!162 = !DILocation(line: 604, column: 19, scope: !120)
!163 = !DILocation(line: 604, column: 25, scope: !120)
!164 = !DILocation(line: 604, column: 9, scope: !120)
!165 = !DILocation(line: 604, column: 2, scope: !120)
!166 = !DILocation(line: 605, column: 1, scope: !120)
!167 = distinct !DISubprogram(name: "list_add_tail", scope: !168, file: !168, line: 181, type: !169, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !171)
!168 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!169 = !DISubroutineType(types: !170)
!170 = !{null, !37, !37}
!171 = !{!172, !173}
!172 = !DILocalVariable(name: "new", arg: 1, scope: !167, file: !168, line: 181, type: !37)
!173 = !DILocalVariable(name: "head", arg: 2, scope: !167, file: !168, line: 181, type: !37)
!174 = !DILocation(line: 181, column: 52, scope: !167)
!175 = !DILocation(line: 181, column: 75, scope: !167)
!176 = !DILocation(line: 183, column: 13, scope: !167)
!177 = !DILocation(line: 183, column: 18, scope: !167)
!178 = !DILocation(line: 183, column: 24, scope: !167)
!179 = !DILocation(line: 183, column: 30, scope: !167)
!180 = !DILocation(line: 183, column: 2, scope: !167)
!181 = !DILocation(line: 184, column: 1, scope: !167)
!182 = distinct !DISubprogram(name: "suspend_nvs_register", scope: !3, file: !3, line: 95, type: !183, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !185)
!183 = !DISubroutineType(types: !184)
!184 = !{!89, !43, !43}
!185 = !{!186, !187, !188, !189, !190, !192, !193, !196, !198}
!186 = !DILocalVariable(name: "start", arg: 1, scope: !182, file: !3, line: 95, type: !43)
!187 = !DILocalVariable(name: "size", arg: 2, scope: !182, file: !3, line: 95, type: !43)
!188 = !DILocalVariable(name: "entry", scope: !182, file: !3, line: 97, type: !39)
!189 = !DILocalVariable(name: "next", scope: !182, file: !3, line: 97, type: !39)
!190 = !DILocalVariable(name: "nr_bytes", scope: !191, file: !3, line: 103, type: !7)
!191 = distinct !DILexicalBlock(scope: !182, file: !3, line: 102, column: 19)
!192 = !DILabel(scope: !182, name: "Error", file: !3, line: 119)
!193 = !DILocalVariable(name: "__mptr", scope: !194, file: !3, line: 120, type: !24)
!194 = distinct !DILexicalBlock(scope: !195, file: !3, line: 120, column: 2)
!195 = distinct !DILexicalBlock(scope: !182, file: !3, line: 120, column: 2)
!196 = !DILocalVariable(name: "__mptr", scope: !197, file: !3, line: 120, type: !24)
!197 = distinct !DILexicalBlock(scope: !195, file: !3, line: 120, column: 2)
!198 = !DILocalVariable(name: "__mptr", scope: !199, file: !3, line: 120, type: !24)
!199 = distinct !DILexicalBlock(scope: !200, file: !3, line: 120, column: 2)
!200 = distinct !DILexicalBlock(scope: !195, file: !3, line: 120, column: 2)
!201 = !DILocation(line: 95, column: 47, scope: !182)
!202 = !DILocation(line: 95, column: 68, scope: !182)
!203 = !DILocation(line: 97, column: 2, scope: !182)
!204 = !DILocation(line: 97, column: 19, scope: !182)
!205 = !DILocation(line: 97, column: 27, scope: !182)
!206 = !DILocation(line: 99, column: 2, scope: !207)
!207 = distinct !DILexicalBlock(scope: !182, file: !3, line: 99, column: 2)
!208 = !DILocation(line: 99, column: 2, scope: !209)
!209 = distinct !DILexicalBlock(scope: !207, file: !3, line: 99, column: 2)
!210 = !DILocation(line: 102, column: 2, scope: !182)
!211 = !DILocation(line: 102, column: 9, scope: !182)
!212 = !DILocation(line: 102, column: 14, scope: !182)
!213 = !DILocation(line: 103, column: 3, scope: !191)
!214 = !DILocation(line: 103, column: 16, scope: !191)
!215 = !DILocation(line: 105, column: 11, scope: !191)
!216 = !DILocation(line: 105, column: 9, scope: !191)
!217 = !DILocation(line: 106, column: 8, scope: !218)
!218 = distinct !DILexicalBlock(scope: !191, file: !3, line: 106, column: 7)
!219 = !DILocation(line: 106, column: 7, scope: !191)
!220 = !DILocation(line: 107, column: 4, scope: !218)
!221 = !DILocation(line: 109, column: 18, scope: !191)
!222 = !DILocation(line: 109, column: 25, scope: !191)
!223 = !DILocation(line: 109, column: 3, scope: !191)
!224 = !DILocation(line: 110, column: 23, scope: !191)
!225 = !DILocation(line: 110, column: 3, scope: !191)
!226 = !DILocation(line: 110, column: 10, scope: !191)
!227 = !DILocation(line: 110, column: 21, scope: !191)
!228 = !DILocation(line: 111, column: 27, scope: !191)
!229 = !DILocation(line: 111, column: 33, scope: !191)
!230 = !DILocation(line: 111, column: 24, scope: !191)
!231 = !DILocation(line: 111, column: 14, scope: !191)
!232 = !DILocation(line: 111, column: 12, scope: !191)
!233 = !DILocation(line: 112, column: 18, scope: !191)
!234 = !DILocation(line: 112, column: 25, scope: !191)
!235 = !DILocation(line: 112, column: 23, scope: !191)
!236 = !DILocation(line: 112, column: 17, scope: !191)
!237 = !DILocation(line: 112, column: 37, scope: !191)
!238 = !DILocation(line: 112, column: 44, scope: !191)
!239 = !DILocation(line: 112, column: 3, scope: !191)
!240 = !DILocation(line: 112, column: 10, scope: !191)
!241 = !DILocation(line: 112, column: 15, scope: !191)
!242 = !DILocation(line: 114, column: 12, scope: !191)
!243 = !DILocation(line: 114, column: 19, scope: !191)
!244 = !DILocation(line: 114, column: 9, scope: !191)
!245 = !DILocation(line: 115, column: 11, scope: !191)
!246 = !DILocation(line: 115, column: 18, scope: !191)
!247 = !DILocation(line: 115, column: 8, scope: !191)
!248 = !DILocation(line: 116, column: 2, scope: !182)
!249 = distinct !{!249, !210, !248, !250, !251}
!250 = !{!"llvm.loop.mustprogress"}
!251 = !{!"llvm.loop.unroll.disable"}
!252 = !DILocation(line: 117, column: 2, scope: !182)
!253 = !DILocation(line: 119, column: 2, scope: !182)
!254 = !DILocation(line: 120, column: 2, scope: !194)
!255 = !DILocation(line: 120, column: 2, scope: !195)
!256 = !DILocation(line: 120, column: 2, scope: !197)
!257 = !DILocation(line: 120, column: 2, scope: !200)
!258 = !DILocation(line: 121, column: 13, scope: !259)
!259 = distinct !DILexicalBlock(scope: !200, file: !3, line: 120, column: 57)
!260 = !DILocation(line: 121, column: 20, scope: !259)
!261 = !DILocation(line: 121, column: 3, scope: !259)
!262 = !DILocation(line: 122, column: 9, scope: !259)
!263 = !DILocation(line: 122, column: 3, scope: !259)
!264 = !DILocation(line: 123, column: 2, scope: !259)
!265 = !DILocation(line: 120, column: 2, scope: !199)
!266 = distinct !{!266, !255, !267, !250, !251}
!267 = !DILocation(line: 123, column: 2, scope: !195)
!268 = !DILocation(line: 124, column: 2, scope: !182)
!269 = !DILocation(line: 125, column: 1, scope: !182)
!270 = distinct !DISubprogram(name: "acpi_nvs_for_each_region", scope: !3, file: !3, line: 52, type: !271, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !276)
!271 = !DISubroutineType(types: !272)
!272 = !{!89, !273, !24}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!89, !29, !29, !24}
!276 = !{!277, !278, !279, !280, !281, !284}
!277 = !DILocalVariable(name: "func", arg: 1, scope: !270, file: !3, line: 52, type: !273)
!278 = !DILocalVariable(name: "data", arg: 2, scope: !270, file: !3, line: 53, type: !24)
!279 = !DILocalVariable(name: "rc", scope: !270, file: !3, line: 55, type: !89)
!280 = !DILocalVariable(name: "region", scope: !270, file: !3, line: 56, type: !25)
!281 = !DILocalVariable(name: "__mptr", scope: !282, file: !3, line: 58, type: !24)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 58, column: 2)
!283 = distinct !DILexicalBlock(scope: !270, file: !3, line: 58, column: 2)
!284 = !DILocalVariable(name: "__mptr", scope: !285, file: !3, line: 58, type: !24)
!285 = distinct !DILexicalBlock(scope: !286, file: !3, line: 58, column: 2)
!286 = distinct !DILexicalBlock(scope: !283, file: !3, line: 58, column: 2)
!287 = !DILocation(line: 52, column: 36, scope: !270)
!288 = !DILocation(line: 53, column: 15, scope: !270)
!289 = !DILocation(line: 55, column: 2, scope: !270)
!290 = !DILocation(line: 55, column: 6, scope: !270)
!291 = !DILocation(line: 56, column: 2, scope: !270)
!292 = !DILocation(line: 56, column: 21, scope: !270)
!293 = !DILocation(line: 58, column: 2, scope: !282)
!294 = !DILocation(line: 58, column: 2, scope: !283)
!295 = !DILocation(line: 58, column: 2, scope: !286)
!296 = !DILocation(line: 59, column: 8, scope: !297)
!297 = distinct !DILexicalBlock(scope: !286, file: !3, line: 58, column: 54)
!298 = !DILocation(line: 59, column: 13, scope: !297)
!299 = !DILocation(line: 59, column: 21, scope: !297)
!300 = !DILocation(line: 59, column: 33, scope: !297)
!301 = !DILocation(line: 59, column: 41, scope: !297)
!302 = !DILocation(line: 59, column: 47, scope: !297)
!303 = !DILocation(line: 59, column: 6, scope: !297)
!304 = !DILocation(line: 60, column: 7, scope: !305)
!305 = distinct !DILexicalBlock(scope: !297, file: !3, line: 60, column: 7)
!306 = !DILocation(line: 60, column: 7, scope: !297)
!307 = !DILocation(line: 61, column: 11, scope: !305)
!308 = !DILocation(line: 61, column: 4, scope: !305)
!309 = !DILocation(line: 62, column: 2, scope: !297)
!310 = !DILocation(line: 58, column: 2, scope: !285)
!311 = distinct !{!311, !294, !312, !250, !251}
!312 = !DILocation(line: 62, column: 2, scope: !283)
!313 = !DILocation(line: 64, column: 2, scope: !270)
!314 = !DILocation(line: 65, column: 1, scope: !270)
!315 = distinct !DISubprogram(name: "suspend_nvs_free", scope: !3, file: !3, line: 130, type: !316, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !318)
!316 = !DISubroutineType(types: !317)
!317 = !{null}
!318 = !{!319, !320, !323}
!319 = !DILocalVariable(name: "entry", scope: !315, file: !3, line: 132, type: !39)
!320 = !DILocalVariable(name: "__mptr", scope: !321, file: !3, line: 134, type: !24)
!321 = distinct !DILexicalBlock(scope: !322, file: !3, line: 134, column: 2)
!322 = distinct !DILexicalBlock(scope: !315, file: !3, line: 134, column: 2)
!323 = !DILocalVariable(name: "__mptr", scope: !324, file: !3, line: 134, type: !24)
!324 = distinct !DILexicalBlock(scope: !325, file: !3, line: 134, column: 2)
!325 = distinct !DILexicalBlock(scope: !322, file: !3, line: 134, column: 2)
!326 = !DILocation(line: 132, column: 2, scope: !315)
!327 = !DILocation(line: 132, column: 19, scope: !315)
!328 = !DILocation(line: 134, column: 2, scope: !321)
!329 = !DILocation(line: 134, column: 2, scope: !322)
!330 = !DILocation(line: 134, column: 2, scope: !325)
!331 = !DILocation(line: 135, column: 7, scope: !332)
!332 = distinct !DILexicalBlock(scope: !325, file: !3, line: 135, column: 7)
!333 = !DILocation(line: 135, column: 14, scope: !332)
!334 = !DILocation(line: 135, column: 7, scope: !325)
!335 = !DILocation(line: 136, column: 4, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !3, line: 135, column: 20)
!337 = !DILocation(line: 137, column: 4, scope: !336)
!338 = !DILocation(line: 137, column: 11, scope: !336)
!339 = !DILocation(line: 137, column: 16, scope: !336)
!340 = !DILocation(line: 138, column: 8, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !3, line: 138, column: 8)
!342 = !DILocation(line: 138, column: 15, scope: !341)
!343 = !DILocation(line: 138, column: 8, scope: !336)
!344 = !DILocation(line: 139, column: 9, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 139, column: 9)
!346 = distinct !DILexicalBlock(scope: !341, file: !3, line: 138, column: 22)
!347 = !DILocation(line: 139, column: 16, scope: !345)
!348 = !{i8 0, i8 2}
!349 = !{}
!350 = !DILocation(line: 139, column: 9, scope: !346)
!351 = !DILocation(line: 140, column: 14, scope: !352)
!352 = distinct !DILexicalBlock(scope: !345, file: !3, line: 139, column: 23)
!353 = !DILocation(line: 140, column: 21, scope: !352)
!354 = !DILocation(line: 140, column: 6, scope: !352)
!355 = !DILocation(line: 141, column: 6, scope: !352)
!356 = !DILocation(line: 141, column: 13, scope: !352)
!357 = !DILocation(line: 141, column: 19, scope: !352)
!358 = !DILocation(line: 142, column: 5, scope: !352)
!359 = !DILocation(line: 143, column: 26, scope: !360)
!360 = distinct !DILexicalBlock(scope: !345, file: !3, line: 142, column: 12)
!361 = !DILocation(line: 143, column: 33, scope: !360)
!362 = !DILocation(line: 144, column: 12, scope: !360)
!363 = !DILocation(line: 144, column: 19, scope: !360)
!364 = !DILocation(line: 143, column: 6, scope: !360)
!365 = !DILocation(line: 146, column: 5, scope: !346)
!366 = !DILocation(line: 146, column: 12, scope: !346)
!367 = !DILocation(line: 146, column: 18, scope: !346)
!368 = !DILocation(line: 147, column: 4, scope: !346)
!369 = !DILocation(line: 148, column: 3, scope: !336)
!370 = !DILocation(line: 134, column: 2, scope: !324)
!371 = distinct !{!371, !329, !372, !250, !251}
!372 = !DILocation(line: 148, column: 3, scope: !322)
!373 = !DILocation(line: 149, column: 1, scope: !315)
!374 = !DISubprogram(name: "free_pages", scope: !375, file: !375, line: 303, type: !376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9839e6e1390b3a0e2df74dd95101fbc5")
!376 = !DISubroutineType(types: !377)
!377 = !{null, !43, !7}
!378 = !DISubprogram(name: "iounmap", scope: !379, file: !379, line: 199, type: !380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!379 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!380 = !DISubroutineType(types: !381)
!381 = !{null, !382}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!384 = !DISubprogram(name: "acpi_os_unmap_iomem", scope: !385, file: !385, line: 21, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DIFile(filename: "./include/acpi/acpi_io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "15c88ad459b9755ee19dd3f691b85d66")
!386 = !DISubroutineType(types: !387)
!387 = !{null, !24, !388}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !389, line: 127, baseType: !390)
!389 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !391, line: 23, baseType: !29)
!391 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!392 = distinct !DISubprogram(name: "suspend_nvs_alloc", scope: !3, file: !3, line: 154, type: !393, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !395)
!393 = !DISubroutineType(types: !394)
!394 = !{!89}
!395 = !{!396, !397, !400}
!396 = !DILocalVariable(name: "entry", scope: !392, file: !3, line: 156, type: !39)
!397 = !DILocalVariable(name: "__mptr", scope: !398, file: !3, line: 158, type: !24)
!398 = distinct !DILexicalBlock(scope: !399, file: !3, line: 158, column: 2)
!399 = distinct !DILexicalBlock(scope: !392, file: !3, line: 158, column: 2)
!400 = !DILocalVariable(name: "__mptr", scope: !401, file: !3, line: 158, type: !24)
!401 = distinct !DILexicalBlock(scope: !402, file: !3, line: 158, column: 2)
!402 = distinct !DILexicalBlock(scope: !399, file: !3, line: 158, column: 2)
!403 = !DILocation(line: 156, column: 2, scope: !392)
!404 = !DILocation(line: 156, column: 19, scope: !392)
!405 = !DILocation(line: 158, column: 2, scope: !398)
!406 = !DILocation(line: 158, column: 2, scope: !399)
!407 = !DILocation(line: 158, column: 2, scope: !402)
!408 = !DILocation(line: 159, column: 25, scope: !409)
!409 = distinct !DILexicalBlock(scope: !402, file: !3, line: 158, column: 46)
!410 = !DILocation(line: 159, column: 17, scope: !409)
!411 = !DILocation(line: 159, column: 3, scope: !409)
!412 = !DILocation(line: 159, column: 10, scope: !409)
!413 = !DILocation(line: 159, column: 15, scope: !409)
!414 = !DILocation(line: 160, column: 8, scope: !415)
!415 = distinct !DILexicalBlock(scope: !409, file: !3, line: 160, column: 7)
!416 = !DILocation(line: 160, column: 15, scope: !415)
!417 = !DILocation(line: 160, column: 7, scope: !409)
!418 = !DILocation(line: 161, column: 4, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !3, line: 160, column: 21)
!420 = !DILocation(line: 162, column: 4, scope: !419)
!421 = !DILocation(line: 164, column: 2, scope: !409)
!422 = !DILocation(line: 158, column: 2, scope: !401)
!423 = distinct !{!423, !406, !424, !250, !251}
!424 = !DILocation(line: 164, column: 2, scope: !399)
!425 = !DILocation(line: 165, column: 2, scope: !392)
!426 = !DILocation(line: 166, column: 1, scope: !392)
!427 = !DISubprogram(name: "__get_free_pages", scope: !375, file: !375, line: 289, type: !428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!428 = !DISubroutineType(types: !429)
!429 = !{!43, !22, !7}
!430 = distinct !DISubprogram(name: "suspend_nvs_save", scope: !3, file: !3, line: 171, type: !393, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !431)
!431 = !{!432, !433, !436, !440, !441}
!432 = !DILocalVariable(name: "entry", scope: !430, file: !3, line: 173, type: !39)
!433 = !DILocalVariable(name: "__mptr", scope: !434, file: !3, line: 177, type: !24)
!434 = distinct !DILexicalBlock(scope: !435, file: !3, line: 177, column: 2)
!435 = distinct !DILexicalBlock(scope: !430, file: !3, line: 177, column: 2)
!436 = !DILocalVariable(name: "phys", scope: !437, file: !3, line: 179, type: !43)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 178, column: 20)
!438 = distinct !DILexicalBlock(scope: !439, file: !3, line: 178, column: 7)
!439 = distinct !DILexicalBlock(scope: !435, file: !3, line: 177, column: 2)
!440 = !DILocalVariable(name: "size", scope: !437, file: !3, line: 180, type: !7)
!441 = !DILocalVariable(name: "__mptr", scope: !442, file: !3, line: 177, type: !24)
!442 = distinct !DILexicalBlock(scope: !439, file: !3, line: 177, column: 2)
!443 = !DILocation(line: 173, column: 2, scope: !430)
!444 = !DILocation(line: 173, column: 19, scope: !430)
!445 = !DILocation(line: 175, column: 2, scope: !446)
!446 = distinct !DILexicalBlock(scope: !430, file: !3, line: 175, column: 2)
!447 = !DILocation(line: 175, column: 2, scope: !448)
!448 = distinct !DILexicalBlock(scope: !446, file: !3, line: 175, column: 2)
!449 = !DILocation(line: 177, column: 2, scope: !434)
!450 = !DILocation(line: 177, column: 2, scope: !435)
!451 = !DILocation(line: 177, column: 2, scope: !439)
!452 = !DILocation(line: 178, column: 7, scope: !438)
!453 = !DILocation(line: 178, column: 14, scope: !438)
!454 = !DILocation(line: 178, column: 7, scope: !439)
!455 = !DILocation(line: 179, column: 4, scope: !437)
!456 = !DILocation(line: 179, column: 18, scope: !437)
!457 = !DILocation(line: 179, column: 25, scope: !437)
!458 = !DILocation(line: 179, column: 32, scope: !437)
!459 = !DILocation(line: 180, column: 4, scope: !437)
!460 = !DILocation(line: 180, column: 17, scope: !437)
!461 = !DILocation(line: 180, column: 24, scope: !437)
!462 = !DILocation(line: 180, column: 31, scope: !437)
!463 = !DILocation(line: 182, column: 37, scope: !437)
!464 = !DILocation(line: 182, column: 43, scope: !437)
!465 = !DILocation(line: 182, column: 19, scope: !437)
!466 = !DILocation(line: 182, column: 4, scope: !437)
!467 = !DILocation(line: 182, column: 11, scope: !437)
!468 = !DILocation(line: 182, column: 17, scope: !437)
!469 = !DILocation(line: 183, column: 9, scope: !470)
!470 = distinct !DILexicalBlock(scope: !437, file: !3, line: 183, column: 8)
!471 = !DILocation(line: 183, column: 16, scope: !470)
!472 = !DILocation(line: 183, column: 8, scope: !437)
!473 = !DILocation(line: 184, column: 36, scope: !474)
!474 = distinct !DILexicalBlock(scope: !470, file: !3, line: 183, column: 23)
!475 = !DILocation(line: 184, column: 42, scope: !474)
!476 = !DILocation(line: 184, column: 20, scope: !474)
!477 = !DILocation(line: 184, column: 5, scope: !474)
!478 = !DILocation(line: 184, column: 12, scope: !474)
!479 = !DILocation(line: 184, column: 18, scope: !474)
!480 = !DILocation(line: 185, column: 22, scope: !474)
!481 = !DILocation(line: 185, column: 29, scope: !474)
!482 = !DILocation(line: 185, column: 21, scope: !474)
!483 = !DILocation(line: 185, column: 20, scope: !474)
!484 = !DILocation(line: 185, column: 5, scope: !474)
!485 = !DILocation(line: 185, column: 12, scope: !474)
!486 = !DILocation(line: 185, column: 18, scope: !474)
!487 = !DILocation(line: 186, column: 4, scope: !474)
!488 = !DILocation(line: 187, column: 9, scope: !489)
!489 = distinct !DILexicalBlock(scope: !437, file: !3, line: 187, column: 8)
!490 = !DILocation(line: 187, column: 16, scope: !489)
!491 = !DILocation(line: 187, column: 8, scope: !437)
!492 = !DILocation(line: 188, column: 5, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !3, line: 187, column: 23)
!494 = !DILocation(line: 189, column: 5, scope: !493)
!495 = !DILocation(line: 191, column: 11, scope: !437)
!496 = !DILocation(line: 191, column: 18, scope: !437)
!497 = !DILocation(line: 191, column: 24, scope: !437)
!498 = !DILocation(line: 191, column: 31, scope: !437)
!499 = !DILocation(line: 191, column: 38, scope: !437)
!500 = !DILocation(line: 191, column: 45, scope: !437)
!501 = !DILocation(line: 191, column: 4, scope: !437)
!502 = !DILocation(line: 192, column: 3, scope: !438)
!503 = !DILocation(line: 192, column: 3, scope: !437)
!504 = !DILocation(line: 177, column: 2, scope: !442)
!505 = distinct !{!505, !450, !506, !250, !251}
!506 = !DILocation(line: 192, column: 3, scope: !435)
!507 = !DILocation(line: 194, column: 2, scope: !430)
!508 = !DILocation(line: 195, column: 1, scope: !430)
!509 = !DISubprogram(name: "_printk", scope: !510, file: !510, line: 153, type: !511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!510 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!511 = !DISubroutineType(types: !512)
!512 = !{!89, !513, null}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!515 = !DISubprogram(name: "acpi_os_get_iomem", scope: !385, file: !385, line: 22, type: !516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!516 = !DISubroutineType(types: !517)
!517 = !{!24, !518, !7}
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_physical_address", file: !389, line: 129, baseType: !390)
!519 = distinct !DISubprogram(name: "acpi_os_ioremap", scope: !385, file: !385, line: 10, type: !520, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{!24, !518, !388}
!522 = !{!523, !524}
!523 = !DILocalVariable(name: "phys", arg: 1, scope: !519, file: !385, line: 10, type: !518)
!524 = !DILocalVariable(name: "size", arg: 2, scope: !519, file: !385, line: 11, type: !388)
!525 = !DILocation(line: 10, column: 67, scope: !519)
!526 = !DILocation(line: 11, column: 20, scope: !519)
!527 = !DILocation(line: 13, column: 29, scope: !519)
!528 = !DILocation(line: 13, column: 35, scope: !519)
!529 = !DILocation(line: 13, column: 15, scope: !519)
!530 = !DILocation(line: 13, column: 8, scope: !519)
!531 = distinct !DISubprogram(name: "suspend_nvs_restore", scope: !3, file: !3, line: 203, type: !316, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !532)
!532 = !{!533, !534, !537}
!533 = !DILocalVariable(name: "entry", scope: !531, file: !3, line: 205, type: !39)
!534 = !DILocalVariable(name: "__mptr", scope: !535, file: !3, line: 209, type: !24)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 209, column: 2)
!536 = distinct !DILexicalBlock(scope: !531, file: !3, line: 209, column: 2)
!537 = !DILocalVariable(name: "__mptr", scope: !538, file: !3, line: 209, type: !24)
!538 = distinct !DILexicalBlock(scope: !539, file: !3, line: 209, column: 2)
!539 = distinct !DILexicalBlock(scope: !536, file: !3, line: 209, column: 2)
!540 = !DILocation(line: 205, column: 2, scope: !531)
!541 = !DILocation(line: 205, column: 19, scope: !531)
!542 = !DILocation(line: 207, column: 2, scope: !543)
!543 = distinct !DILexicalBlock(scope: !531, file: !3, line: 207, column: 2)
!544 = !DILocation(line: 207, column: 2, scope: !545)
!545 = distinct !DILexicalBlock(scope: !543, file: !3, line: 207, column: 2)
!546 = !DILocation(line: 209, column: 2, scope: !535)
!547 = !DILocation(line: 209, column: 2, scope: !536)
!548 = !DILocation(line: 209, column: 2, scope: !539)
!549 = !DILocation(line: 210, column: 7, scope: !550)
!550 = distinct !DILexicalBlock(scope: !539, file: !3, line: 210, column: 7)
!551 = !DILocation(line: 210, column: 14, scope: !550)
!552 = !DILocation(line: 210, column: 7, scope: !539)
!553 = !DILocation(line: 211, column: 11, scope: !550)
!554 = !DILocation(line: 211, column: 18, scope: !550)
!555 = !DILocation(line: 211, column: 25, scope: !550)
!556 = !DILocation(line: 211, column: 32, scope: !550)
!557 = !DILocation(line: 211, column: 38, scope: !550)
!558 = !DILocation(line: 211, column: 45, scope: !550)
!559 = !DILocation(line: 211, column: 4, scope: !550)
!560 = !DILocation(line: 209, column: 2, scope: !538)
!561 = distinct !{!561, !547, !562, !250, !251}
!562 = !DILocation(line: 211, column: 49, scope: !536)
!563 = !DILocation(line: 212, column: 1, scope: !531)
!564 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!565 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !566, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !568)
!566 = !DISubroutineType(types: !567)
!567 = !{!7, !123, !48}
!568 = !{!569, !570}
!569 = !DILocalVariable(name: "size", arg: 1, scope: !565, file: !12, line: 444, type: !123)
!570 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !565, file: !12, line: 445, type: !48)
!571 = !DILocation(line: 444, column: 60, scope: !565)
!572 = !DILocation(line: 445, column: 16, scope: !565)
!573 = !DILocation(line: 447, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !565, file: !12, line: 447, column: 6)
!575 = !DILocation(line: 447, column: 6, scope: !565)
!576 = !DILocation(line: 448, column: 3, scope: !574)
!577 = !DILocation(line: 450, column: 6, scope: !578)
!578 = distinct !DILexicalBlock(scope: !565, file: !12, line: 450, column: 6)
!579 = !DILocation(line: 450, column: 11, scope: !578)
!580 = !DILocation(line: 450, column: 6, scope: !565)
!581 = !DILocation(line: 451, column: 3, scope: !578)
!582 = !DILocation(line: 453, column: 32, scope: !583)
!583 = distinct !DILexicalBlock(scope: !565, file: !12, line: 453, column: 6)
!584 = !DILocation(line: 453, column: 37, scope: !583)
!585 = !DILocation(line: 453, column: 42, scope: !583)
!586 = !DILocation(line: 453, column: 45, scope: !583)
!587 = !DILocation(line: 453, column: 50, scope: !583)
!588 = !DILocation(line: 453, column: 6, scope: !565)
!589 = !DILocation(line: 454, column: 3, scope: !583)
!590 = !DILocation(line: 455, column: 32, scope: !591)
!591 = distinct !DILexicalBlock(scope: !565, file: !12, line: 455, column: 6)
!592 = !DILocation(line: 455, column: 37, scope: !591)
!593 = !DILocation(line: 455, column: 43, scope: !591)
!594 = !DILocation(line: 455, column: 46, scope: !591)
!595 = !DILocation(line: 455, column: 51, scope: !591)
!596 = !DILocation(line: 455, column: 6, scope: !565)
!597 = !DILocation(line: 456, column: 3, scope: !591)
!598 = !DILocation(line: 457, column: 6, scope: !599)
!599 = distinct !DILexicalBlock(scope: !565, file: !12, line: 457, column: 6)
!600 = !DILocation(line: 457, column: 11, scope: !599)
!601 = !DILocation(line: 457, column: 6, scope: !565)
!602 = !DILocation(line: 457, column: 26, scope: !599)
!603 = !DILocation(line: 458, column: 6, scope: !604)
!604 = distinct !DILexicalBlock(scope: !565, file: !12, line: 458, column: 6)
!605 = !DILocation(line: 458, column: 11, scope: !604)
!606 = !DILocation(line: 458, column: 6, scope: !565)
!607 = !DILocation(line: 458, column: 26, scope: !604)
!608 = !DILocation(line: 459, column: 6, scope: !609)
!609 = distinct !DILexicalBlock(scope: !565, file: !12, line: 459, column: 6)
!610 = !DILocation(line: 459, column: 11, scope: !609)
!611 = !DILocation(line: 459, column: 6, scope: !565)
!612 = !DILocation(line: 459, column: 26, scope: !609)
!613 = !DILocation(line: 460, column: 6, scope: !614)
!614 = distinct !DILexicalBlock(scope: !565, file: !12, line: 460, column: 6)
!615 = !DILocation(line: 460, column: 11, scope: !614)
!616 = !DILocation(line: 460, column: 6, scope: !565)
!617 = !DILocation(line: 460, column: 26, scope: !614)
!618 = !DILocation(line: 461, column: 6, scope: !619)
!619 = distinct !DILexicalBlock(scope: !565, file: !12, line: 461, column: 6)
!620 = !DILocation(line: 461, column: 11, scope: !619)
!621 = !DILocation(line: 461, column: 6, scope: !565)
!622 = !DILocation(line: 461, column: 26, scope: !619)
!623 = !DILocation(line: 462, column: 6, scope: !624)
!624 = distinct !DILexicalBlock(scope: !565, file: !12, line: 462, column: 6)
!625 = !DILocation(line: 462, column: 11, scope: !624)
!626 = !DILocation(line: 462, column: 6, scope: !565)
!627 = !DILocation(line: 462, column: 26, scope: !624)
!628 = !DILocation(line: 463, column: 6, scope: !629)
!629 = distinct !DILexicalBlock(scope: !565, file: !12, line: 463, column: 6)
!630 = !DILocation(line: 463, column: 11, scope: !629)
!631 = !DILocation(line: 463, column: 6, scope: !565)
!632 = !DILocation(line: 463, column: 26, scope: !629)
!633 = !DILocation(line: 464, column: 6, scope: !634)
!634 = distinct !DILexicalBlock(scope: !565, file: !12, line: 464, column: 6)
!635 = !DILocation(line: 464, column: 11, scope: !634)
!636 = !DILocation(line: 464, column: 6, scope: !565)
!637 = !DILocation(line: 464, column: 26, scope: !634)
!638 = !DILocation(line: 465, column: 6, scope: !639)
!639 = distinct !DILexicalBlock(scope: !565, file: !12, line: 465, column: 6)
!640 = !DILocation(line: 465, column: 11, scope: !639)
!641 = !DILocation(line: 465, column: 6, scope: !565)
!642 = !DILocation(line: 465, column: 26, scope: !639)
!643 = !DILocation(line: 466, column: 6, scope: !644)
!644 = distinct !DILexicalBlock(scope: !565, file: !12, line: 466, column: 6)
!645 = !DILocation(line: 466, column: 11, scope: !644)
!646 = !DILocation(line: 466, column: 6, scope: !565)
!647 = !DILocation(line: 466, column: 26, scope: !644)
!648 = !DILocation(line: 467, column: 6, scope: !649)
!649 = distinct !DILexicalBlock(scope: !565, file: !12, line: 467, column: 6)
!650 = !DILocation(line: 467, column: 11, scope: !649)
!651 = !DILocation(line: 467, column: 6, scope: !565)
!652 = !DILocation(line: 467, column: 26, scope: !649)
!653 = !DILocation(line: 468, column: 6, scope: !654)
!654 = distinct !DILexicalBlock(scope: !565, file: !12, line: 468, column: 6)
!655 = !DILocation(line: 468, column: 11, scope: !654)
!656 = !DILocation(line: 468, column: 6, scope: !565)
!657 = !DILocation(line: 468, column: 26, scope: !654)
!658 = !DILocation(line: 469, column: 6, scope: !659)
!659 = distinct !DILexicalBlock(scope: !565, file: !12, line: 469, column: 6)
!660 = !DILocation(line: 469, column: 11, scope: !659)
!661 = !DILocation(line: 469, column: 6, scope: !565)
!662 = !DILocation(line: 469, column: 26, scope: !659)
!663 = !DILocation(line: 470, column: 6, scope: !664)
!664 = distinct !DILexicalBlock(scope: !565, file: !12, line: 470, column: 6)
!665 = !DILocation(line: 470, column: 11, scope: !664)
!666 = !DILocation(line: 470, column: 6, scope: !565)
!667 = !DILocation(line: 470, column: 26, scope: !664)
!668 = !DILocation(line: 471, column: 6, scope: !669)
!669 = distinct !DILexicalBlock(scope: !565, file: !12, line: 471, column: 6)
!670 = !DILocation(line: 471, column: 11, scope: !669)
!671 = !DILocation(line: 471, column: 6, scope: !565)
!672 = !DILocation(line: 471, column: 26, scope: !669)
!673 = !DILocation(line: 472, column: 6, scope: !674)
!674 = distinct !DILexicalBlock(scope: !565, file: !12, line: 472, column: 6)
!675 = !DILocation(line: 472, column: 11, scope: !674)
!676 = !DILocation(line: 472, column: 6, scope: !565)
!677 = !DILocation(line: 472, column: 26, scope: !674)
!678 = !DILocation(line: 473, column: 6, scope: !679)
!679 = distinct !DILexicalBlock(scope: !565, file: !12, line: 473, column: 6)
!680 = !DILocation(line: 473, column: 11, scope: !679)
!681 = !DILocation(line: 473, column: 6, scope: !565)
!682 = !DILocation(line: 473, column: 26, scope: !679)
!683 = !DILocation(line: 474, column: 6, scope: !684)
!684 = distinct !DILexicalBlock(scope: !565, file: !12, line: 474, column: 6)
!685 = !DILocation(line: 474, column: 11, scope: !684)
!686 = !DILocation(line: 474, column: 6, scope: !565)
!687 = !DILocation(line: 474, column: 27, scope: !684)
!688 = !DILocation(line: 475, column: 6, scope: !689)
!689 = distinct !DILexicalBlock(scope: !565, file: !12, line: 475, column: 6)
!690 = !DILocation(line: 475, column: 11, scope: !689)
!691 = !DILocation(line: 475, column: 6, scope: !565)
!692 = !DILocation(line: 475, column: 32, scope: !689)
!693 = !DILocation(line: 477, column: 50, scope: !694)
!694 = distinct !DILexicalBlock(scope: !565, file: !12, line: 477, column: 6)
!695 = !DILocation(line: 477, column: 6, scope: !565)
!696 = !DILocation(line: 478, column: 3, scope: !694)
!697 = !DILocation(line: 478, column: 3, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !12, line: 478, column: 3)
!699 = distinct !DILexicalBlock(scope: !694, file: !12, line: 478, column: 3)
!700 = !{i32 -2142218495}
!701 = !DILocation(line: 478, column: 3, scope: !699)
!702 = !DILocation(line: 480, column: 3, scope: !694)
!703 = !DILocation(line: 480, column: 3, scope: !704)
!704 = distinct !DILexicalBlock(scope: !694, file: !12, line: 480, column: 3)
!705 = !DILocation(line: 480, column: 3, scope: !706)
!706 = distinct !DILexicalBlock(scope: !704, file: !12, line: 480, column: 3)
!707 = !DILocation(line: 480, column: 3, scope: !708)
!708 = distinct !DILexicalBlock(scope: !704, file: !12, line: 480, column: 3)
!709 = !{i64 2152749004, i64 2152749033, i64 2152749079, i64 2152749137, i64 2152749191, i64 2152749245, i64 2152749300, i64 2152749331}
!710 = !DILocation(line: 483, column: 2, scope: !565)
!711 = !DILocation(line: 484, column: 1, scope: !565)
!712 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!713 = !DISubroutineType(types: !714)
!714 = !{!24, !715, !22, !123}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !717, line: 11, flags: DIFlagFwdDecl)
!717 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!718 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !719, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !721)
!719 = !DISubroutineType(types: !720)
!720 = !{!11, !22, !43}
!721 = !{!722, !723}
!722 = !DILocalVariable(name: "flags", arg: 1, scope: !718, file: !12, line: 401, type: !22)
!723 = !DILocalVariable(name: "caller", arg: 2, scope: !718, file: !12, line: 401, type: !43)
!724 = !DILocation(line: 401, column: 67, scope: !718)
!725 = !DILocation(line: 401, column: 88, scope: !718)
!726 = !DILocation(line: 407, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !718, file: !12, line: 407, column: 6)
!728 = !DILocation(line: 407, column: 6, scope: !718)
!729 = !DILocation(line: 413, column: 3, scope: !727)
!730 = !DILocation(line: 423, column: 38, scope: !731)
!731 = distinct !DILexicalBlock(scope: !718, file: !12, line: 423, column: 6)
!732 = !DILocation(line: 423, column: 44, scope: !731)
!733 = !DILocation(line: 423, column: 6, scope: !718)
!734 = !DILocation(line: 424, column: 3, scope: !731)
!735 = !DILocation(line: 426, column: 3, scope: !736)
!736 = distinct !DILexicalBlock(scope: !718, file: !12, line: 425, column: 6)
!737 = !DILocation(line: 429, column: 1, scope: !718)
!738 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!739 = !DISubprogram(name: "__compiletime_assert_206", scope: !12, file: !12, line: 478, type: !316, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!740 = distinct !DISubprogram(name: "__list_add", scope: !168, file: !168, line: 146, type: !741, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !743)
!741 = !DISubroutineType(types: !742)
!742 = !{null, !37, !37, !37}
!743 = !{!744, !745, !746}
!744 = !DILocalVariable(name: "new", arg: 1, scope: !740, file: !168, line: 146, type: !37)
!745 = !DILocalVariable(name: "prev", arg: 2, scope: !740, file: !168, line: 147, type: !37)
!746 = !DILocalVariable(name: "next", arg: 3, scope: !740, file: !168, line: 148, type: !37)
!747 = !DILocation(line: 146, column: 49, scope: !740)
!748 = !DILocation(line: 147, column: 28, scope: !740)
!749 = !DILocation(line: 148, column: 28, scope: !740)
!750 = !DILocation(line: 150, column: 24, scope: !751)
!751 = distinct !DILexicalBlock(scope: !740, file: !168, line: 150, column: 6)
!752 = !DILocation(line: 150, column: 29, scope: !751)
!753 = !DILocation(line: 150, column: 35, scope: !751)
!754 = !DILocation(line: 150, column: 7, scope: !751)
!755 = !DILocation(line: 150, column: 6, scope: !740)
!756 = !DILocation(line: 151, column: 3, scope: !751)
!757 = !DILocation(line: 153, column: 15, scope: !740)
!758 = !DILocation(line: 153, column: 2, scope: !740)
!759 = !DILocation(line: 153, column: 8, scope: !740)
!760 = !DILocation(line: 153, column: 13, scope: !740)
!761 = !DILocation(line: 154, column: 14, scope: !740)
!762 = !DILocation(line: 154, column: 2, scope: !740)
!763 = !DILocation(line: 154, column: 7, scope: !740)
!764 = !DILocation(line: 154, column: 12, scope: !740)
!765 = !DILocation(line: 155, column: 14, scope: !740)
!766 = !DILocation(line: 155, column: 2, scope: !740)
!767 = !DILocation(line: 155, column: 7, scope: !740)
!768 = !DILocation(line: 155, column: 12, scope: !740)
!769 = !DILocation(line: 156, column: 2, scope: !740)
!770 = !DILocation(line: 156, column: 2, scope: !771)
!771 = distinct !DILexicalBlock(scope: !740, file: !168, line: 156, column: 2)
!772 = !DILocation(line: 156, column: 2, scope: !773)
!773 = distinct !DILexicalBlock(scope: !771, file: !168, line: 156, column: 2)
!774 = !DILocation(line: 156, column: 2, scope: !775)
!775 = distinct !DILexicalBlock(scope: !771, file: !168, line: 156, column: 2)
!776 = !DILocation(line: 157, column: 1, scope: !740)
!777 = distinct !DISubprogram(name: "__list_add_valid", scope: !168, file: !168, line: 128, type: !778, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !780)
!778 = !DISubroutineType(types: !779)
!779 = !{!48, !37, !37, !37}
!780 = !{!781, !782, !783}
!781 = !DILocalVariable(name: "new", arg: 1, scope: !777, file: !168, line: 128, type: !37)
!782 = !DILocalVariable(name: "prev", arg: 2, scope: !777, file: !168, line: 129, type: !37)
!783 = !DILocalVariable(name: "next", arg: 3, scope: !777, file: !168, line: 130, type: !37)
!784 = !DILocation(line: 128, column: 55, scope: !777)
!785 = !DILocation(line: 129, column: 23, scope: !777)
!786 = !DILocation(line: 130, column: 23, scope: !777)
!787 = !DILocation(line: 132, column: 2, scope: !777)
!788 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !121, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !789)
!789 = !{!790, !791}
!790 = !DILocalVariable(name: "size", arg: 1, scope: !788, file: !12, line: 719, type: !123)
!791 = !DILocalVariable(name: "flags", arg: 2, scope: !788, file: !12, line: 719, type: !22)
!792 = !DILocation(line: 719, column: 52, scope: !788)
!793 = !DILocation(line: 719, column: 64, scope: !788)
!794 = !DILocation(line: 721, column: 17, scope: !788)
!795 = !DILocation(line: 721, column: 23, scope: !788)
!796 = !DILocation(line: 721, column: 29, scope: !788)
!797 = !DILocation(line: 721, column: 9, scope: !788)
!798 = !DILocation(line: 721, column: 2, scope: !788)
!799 = distinct !DISubprogram(name: "list_del", scope: !168, file: !168, line: 227, type: !800, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !802)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !37}
!802 = !{!803}
!803 = !DILocalVariable(name: "entry", arg: 1, scope: !799, file: !168, line: 227, type: !37)
!804 = !DILocation(line: 227, column: 47, scope: !799)
!805 = !DILocation(line: 229, column: 19, scope: !799)
!806 = !DILocation(line: 229, column: 2, scope: !799)
!807 = !DILocation(line: 230, column: 2, scope: !799)
!808 = !DILocation(line: 230, column: 9, scope: !799)
!809 = !DILocation(line: 230, column: 14, scope: !799)
!810 = !DILocation(line: 231, column: 2, scope: !799)
!811 = !DILocation(line: 231, column: 9, scope: !799)
!812 = !DILocation(line: 231, column: 14, scope: !799)
!813 = !DILocation(line: 232, column: 1, scope: !799)
!814 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !817}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!819 = distinct !DISubprogram(name: "__list_del_entry", scope: !168, file: !168, line: 213, type: !800, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !820)
!820 = !{!821}
!821 = !DILocalVariable(name: "entry", arg: 1, scope: !819, file: !168, line: 213, type: !37)
!822 = !DILocation(line: 213, column: 55, scope: !819)
!823 = !DILocation(line: 215, column: 30, scope: !824)
!824 = distinct !DILexicalBlock(scope: !819, file: !168, line: 215, column: 6)
!825 = !DILocation(line: 215, column: 7, scope: !824)
!826 = !DILocation(line: 215, column: 6, scope: !819)
!827 = !DILocation(line: 216, column: 3, scope: !824)
!828 = !DILocation(line: 218, column: 13, scope: !819)
!829 = !DILocation(line: 218, column: 20, scope: !819)
!830 = !DILocation(line: 218, column: 26, scope: !819)
!831 = !DILocation(line: 218, column: 33, scope: !819)
!832 = !DILocation(line: 218, column: 2, scope: !819)
!833 = !DILocation(line: 219, column: 1, scope: !819)
!834 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !168, file: !168, line: 134, type: !835, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !837)
!835 = !DISubroutineType(types: !836)
!836 = !{!48, !37}
!837 = !{!838}
!838 = !DILocalVariable(name: "entry", arg: 1, scope: !834, file: !168, line: 134, type: !37)
!839 = !DILocation(line: 134, column: 61, scope: !834)
!840 = !DILocation(line: 136, column: 2, scope: !834)
!841 = distinct !DISubprogram(name: "__list_del", scope: !168, file: !168, line: 193, type: !169, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !842)
!842 = !{!843, !844}
!843 = !DILocalVariable(name: "prev", arg: 1, scope: !841, file: !168, line: 193, type: !37)
!844 = !DILocalVariable(name: "next", arg: 2, scope: !841, file: !168, line: 193, type: !37)
!845 = !DILocation(line: 193, column: 50, scope: !841)
!846 = !DILocation(line: 193, column: 75, scope: !841)
!847 = !DILocation(line: 195, column: 15, scope: !841)
!848 = !DILocation(line: 195, column: 2, scope: !841)
!849 = !DILocation(line: 195, column: 8, scope: !841)
!850 = !DILocation(line: 195, column: 13, scope: !841)
!851 = !DILocation(line: 196, column: 2, scope: !841)
!852 = !DILocation(line: 196, column: 2, scope: !853)
!853 = distinct !DILexicalBlock(scope: !841, file: !168, line: 196, column: 2)
!854 = !DILocation(line: 196, column: 2, scope: !855)
!855 = distinct !DILexicalBlock(scope: !853, file: !168, line: 196, column: 2)
!856 = !DILocation(line: 196, column: 2, scope: !857)
!857 = distinct !DILexicalBlock(scope: !853, file: !168, line: 196, column: 2)
!858 = !DILocation(line: 197, column: 1, scope: !841)
!859 = !DISubprogram(name: "ioremap_cache", scope: !379, file: !379, line: 175, type: !860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!860 = !DISubroutineType(types: !861)
!861 = !{!24, !862, !43}
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !23, line: 164, baseType: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !23, line: 159, baseType: !390)
