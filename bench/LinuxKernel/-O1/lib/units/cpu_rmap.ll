; ModuleID = 'lib/cpu_rmap.c'
source_filename = "lib/cpu_rmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_alloc_cpu_rmap: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad alloc_cpu_rmap ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpu_rmap_put: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cpu_rmap_put ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpu_rmap_add: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cpu_rmap_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cpu_rmap_update: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cpu_rmap_update ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_free_irq_cpu_rmap: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad free_irq_cpu_rmap ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_irq_cpu_rmap_remove: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad irq_cpu_rmap_remove ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_irq_cpu_rmap_add: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad irq_cpu_rmap_add ; .previous"

%struct.cpumask = type { [1 x i64] }
%struct.cpu_rmap = type { %struct.kref, i16, ptr, [0 x %struct.anon] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.anon = type { i16, i16 }
%struct.irq_glue = type { %struct.irq_affinity_notify, ptr, i16 }
%struct.irq_affinity_notify = type { i32, %struct.kref, %struct.work_struct, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }

@nr_cpu_ids = external dso_local global i32, align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__UNIQUE_ID___addressable_alloc_cpu_rmap174 = internal global ptr @alloc_cpu_rmap, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_cpu_rmap_put175 = internal global ptr @cpu_rmap_put, section ".discard.addressable", align 8, !dbg !141
@__UNIQUE_ID___addressable_cpu_rmap_add176 = internal global ptr @cpu_rmap_add, section ".discard.addressable", align 8, !dbg !143
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@.str = private unnamed_addr constant [33 x i8] c"after invalidating old distances\00", align 1, !dbg !145
@.str.1 = private unnamed_addr constant [26 x i8] c"after updating neighbours\00", align 1, !dbg !150
@cpu_sibling_map = external dso_local global [1 x %struct.cpumask], section ".data..percpu..read_mostly", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@cpu_core_map = external dso_local global [1 x %struct.cpumask], section ".data..percpu..read_mostly", align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"after copying neighbours\00", align 1, !dbg !155
@__UNIQUE_ID___addressable_cpu_rmap_update177 = internal global ptr @cpu_rmap_update, section ".discard.addressable", align 8, !dbg !160
@__UNIQUE_ID___addressable_free_irq_cpu_rmap178 = internal global ptr @free_irq_cpu_rmap, section ".discard.addressable", align 8, !dbg !162
@__UNIQUE_ID___addressable_irq_cpu_rmap_remove179 = internal global ptr @irq_cpu_rmap_remove, section ".discard.addressable", align 8, !dbg !164
@__UNIQUE_ID___addressable_irq_cpu_rmap_add180 = internal global ptr @irq_cpu_rmap_add, section ".discard.addressable", align 8, !dbg !166
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !168
@node_to_cpumask_map = external dso_local global [64 x [1 x %struct.cpumask]], align 16
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"\014irq_cpu_rmap_notify: update failed: %d\0A\00", align 1, !dbg !173
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_alloc_cpu_rmap174, ptr @__UNIQUE_ID___addressable_cpu_rmap_put175, ptr @__UNIQUE_ID___addressable_cpu_rmap_add176, ptr @__UNIQUE_ID___addressable_cpu_rmap_update177, ptr @__UNIQUE_ID___addressable_free_irq_cpu_rmap178, ptr @__UNIQUE_ID___addressable_irq_cpu_rmap_remove179, ptr @__UNIQUE_ID___addressable_irq_cpu_rmap_add180], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @alloc_cpu_rmap(i32 noundef %size, i32 noundef %flags) #0 align 16 !dbg !187 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %rmap = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %obj_offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !191, metadata !DIExpression()), !dbg !200
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !192, metadata !DIExpression()), !dbg !201
  call void @llvm.lifetime.start.p0(i64 8, ptr %rmap) #15, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %rmap, metadata !193, metadata !DIExpression()), !dbg !203
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !194, metadata !DIExpression()), !dbg !205
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj_offset) #15, !dbg !206
  call void @llvm.dbg.declare(metadata ptr %obj_offset, metadata !195, metadata !DIExpression()), !dbg !207
  %0 = load i32, ptr %size.addr, align 4, !dbg !208
  %cmp = icmp ugt i32 %0, 65535, !dbg !210
  br i1 %cmp, label %if.then, label %if.end, !dbg !211

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !212

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @nr_cpu_ids, align 4, !dbg !213
  %conv = zext i32 %1 to i64, !dbg !213
  %2 = mul i64 %conv, 4, !dbg !213
  %3 = add i64 16, %2, !dbg !213
  %add = add i64 %3, 7, !dbg !213
  %and = and i64 %add, -8, !dbg !213
  store i64 %and, ptr %obj_offset, align 8, !dbg !214
  %4 = load i64, ptr %obj_offset, align 8, !dbg !215
  %5 = load i32, ptr %size.addr, align 4, !dbg !216
  %conv1 = zext i32 %5 to i64, !dbg !216
  %mul = mul i64 %conv1, 8, !dbg !217
  %add2 = add i64 %4, %mul, !dbg !218
  %6 = load i32, ptr %flags.addr, align 4, !dbg !219
  %call = call noalias ptr @kzalloc(i64 noundef %add2, i32 noundef %6) #16, !dbg !220
  store ptr %call, ptr %rmap, align 8, !dbg !221
  %7 = load ptr, ptr %rmap, align 8, !dbg !222
  %tobool = icmp ne ptr %7, null, !dbg !222
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !224

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !225

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %rmap, align 8, !dbg !226
  %refcount = getelementptr inbounds %struct.cpu_rmap, ptr %8, i32 0, i32 0, !dbg !227
  call void @kref_init(ptr noundef %refcount) #17, !dbg !228
  %9 = load ptr, ptr %rmap, align 8, !dbg !229
  %10 = load i64, ptr %obj_offset, align 8, !dbg !230
  %add.ptr = getelementptr i8, ptr %9, i64 %10, !dbg !231
  %11 = load ptr, ptr %rmap, align 8, !dbg !232
  %obj = getelementptr inbounds %struct.cpu_rmap, ptr %11, i32 0, i32 2, !dbg !233
  store ptr %add.ptr, ptr %obj, align 8, !dbg !234
  store i32 0, ptr %cpu, align 4, !dbg !235
  br label %for.cond, !dbg !235

for.cond:                                         ; preds = %for.inc, %if.end4
  %12 = load i32, ptr %cpu, align 4, !dbg !237
  %conv5 = zext i32 %12 to i64, !dbg !237
  %call6 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv5) #17, !dbg !237
  %conv7 = trunc i64 %call6 to i32, !dbg !237
  store i32 %conv7, ptr %cpu, align 4, !dbg !237
  %13 = load i32, ptr %cpu, align 4, !dbg !237
  %cmp8 = icmp ult i32 %13, 64, !dbg !237
  br i1 %cmp8, label %for.body, label %for.end, !dbg !235

for.body:                                         ; preds = %for.cond
  %14 = load i32, ptr %cpu, align 4, !dbg !239
  %15 = load i32, ptr %size.addr, align 4, !dbg !241
  %rem = urem i32 %14, %15, !dbg !242
  %conv10 = trunc i32 %rem to i16, !dbg !239
  %16 = load ptr, ptr %rmap, align 8, !dbg !243
  %near = getelementptr inbounds %struct.cpu_rmap, ptr %16, i32 0, i32 3, !dbg !244
  %17 = load i32, ptr %cpu, align 4, !dbg !245
  %idxprom = zext i32 %17 to i64, !dbg !243
  %arrayidx = getelementptr [0 x %struct.anon], ptr %near, i64 0, i64 %idxprom, !dbg !243
  %index = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0, !dbg !246
  store i16 %conv10, ptr %index, align 4, !dbg !247
  %18 = load ptr, ptr %rmap, align 8, !dbg !248
  %near11 = getelementptr inbounds %struct.cpu_rmap, ptr %18, i32 0, i32 3, !dbg !249
  %19 = load i32, ptr %cpu, align 4, !dbg !250
  %idxprom12 = zext i32 %19 to i64, !dbg !248
  %arrayidx13 = getelementptr [0 x %struct.anon], ptr %near11, i64 0, i64 %idxprom12, !dbg !248
  %dist = getelementptr inbounds %struct.anon, ptr %arrayidx13, i32 0, i32 1, !dbg !251
  store i16 -1, ptr %dist, align 2, !dbg !252
  br label %for.inc, !dbg !253

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %cpu, align 4, !dbg !237
  %inc = add i32 %20, 1, !dbg !237
  store i32 %inc, ptr %cpu, align 4, !dbg !237
  br label %for.cond, !dbg !237, !llvm.loop !254

for.end:                                          ; preds = %for.cond
  %21 = load i32, ptr %size.addr, align 4, !dbg !258
  %conv14 = trunc i32 %21 to i16, !dbg !258
  %22 = load ptr, ptr %rmap, align 8, !dbg !259
  %size15 = getelementptr inbounds %struct.cpu_rmap, ptr %22, i32 0, i32 1, !dbg !260
  store i16 %conv14, ptr %size15, align 4, !dbg !261
  %23 = load ptr, ptr %rmap, align 8, !dbg !262
  store ptr %23, ptr %retval, align 8, !dbg !263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !263

cleanup:                                          ; preds = %for.end, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj_offset) #15, !dbg !264
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !264
  call void @llvm.lifetime.end.p0(i64 8, ptr %rmap) #15, !dbg !264
  %24 = load ptr, ptr %retval, align 8, !dbg !264
  ret ptr %24, !dbg !264
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !265 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !269, metadata !DIExpression()), !dbg !271
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !270, metadata !DIExpression()), !dbg !272
  %0 = load i64, ptr %size.addr, align 8, !dbg !273
  %1 = load i32, ptr %flags.addr, align 4, !dbg !274
  %or = or i32 %1, 256, !dbg !275
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !276
  ret ptr %call, !dbg !277
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_init(ptr noundef %kref) #4 align 16 !dbg !278 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !282
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !283
  call void @refcount_set(ptr noundef %refcount, i32 noundef 1) #17, !dbg !284
  ret void, !dbg !285
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !286 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !293, metadata !DIExpression()), !dbg !299
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !294, metadata !DIExpression()), !dbg !300
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !295, metadata !DIExpression()), !dbg !301
  %0 = load i64, ptr %size.addr, align 8, !dbg !302
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !302
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !302

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !302
  %cmp = icmp ule i64 %2, 64, !dbg !302
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !302

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !302
  %cmp2 = icmp ugt i64 %3, 0, !dbg !302
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !303

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !304
  call void @llvm.dbg.declare(metadata ptr %val, metadata !296, metadata !DIExpression()), !dbg !305
  %4 = load i64, ptr %offset.addr, align 8, !dbg !306
  %5 = load i64, ptr %size.addr, align 8, !dbg !306
  %cmp3 = icmp uge i64 %4, %5, !dbg !306
  %lnot = xor i1 %cmp3, true, !dbg !306
  %lnot4 = xor i1 %lnot, true, !dbg !306
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !306
  %conv = sext i32 %lnot.ext to i64, !dbg !306
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !306
  %tobool = icmp ne i64 %expval, 0, !dbg !306
  br i1 %tobool, label %if.then5, label %if.end, !dbg !308

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !309
  store i64 %6, ptr %retval, align 8, !dbg !310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !310

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !311
  %8 = load i64, ptr %7, align 8, !dbg !312
  %9 = load i64, ptr %offset.addr, align 8, !dbg !313
  %shl = shl i64 1, %9, !dbg !313
  %sub = sub i64 -1, %shl, !dbg !313
  %add = add i64 %sub, 1, !dbg !313
  %10 = load i64, ptr %size.addr, align 8, !dbg !313
  %sub6 = sub i64 %10, 1, !dbg !313
  %sub7 = sub i64 63, %sub6, !dbg !313
  %shr = lshr i64 -1, %sub7, !dbg !313
  %and = and i64 %add, %shr, !dbg !313
  %add8 = add i64 0, %and, !dbg !313
  %and9 = and i64 %8, %add8, !dbg !314
  store i64 %and9, ptr %val, align 8, !dbg !315
  %11 = load i64, ptr %val, align 8, !dbg !316
  %tobool10 = icmp ne i64 %11, 0, !dbg !316
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !316

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !317
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !317
  br i1 %13, label %cond.true11, label %cond.false, !dbg !317

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !317
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !317
  %cast = trunc i64 %15 to i32, !dbg !317
  %conv12 = sext i32 %cast to i64, !dbg !317
  br label %cond.end, !dbg !317

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !317
  %call = call i64 @variable__ffs(i64 noundef %16) #17, !dbg !317
  br label %cond.end, !dbg !317

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !317
  br label %cond.end14, !dbg !316

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !318
  br label %cond.end14, !dbg !316

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !316
  store i64 %cond15, ptr %retval, align 8, !dbg !319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !319

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !320
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !321
  %19 = load i64, ptr %size.addr, align 8, !dbg !322
  %20 = load i64, ptr %offset.addr, align 8, !dbg !323
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #17, !dbg !324
  store i64 %call17, ptr %retval, align 8, !dbg !325
  br label %return, !dbg !325

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !326
  ret i64 %21, !dbg !326
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpu_rmap_put(ptr noundef %rmap) #0 align 16 !dbg !327 {
entry:
  %rmap.addr = alloca ptr, align 8
  store ptr %rmap, ptr %rmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rmap.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load ptr, ptr %rmap.addr, align 8, !dbg !333
  %refcount = getelementptr inbounds %struct.cpu_rmap, ptr %0, i32 0, i32 0, !dbg !334
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @cpu_rmap_release) #17, !dbg !335
  ret i32 %call, !dbg !336
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #4 align 16 !dbg !337 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !341, metadata !DIExpression()), !dbg !343
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !342, metadata !DIExpression()), !dbg !344
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !345
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !347
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #17, !dbg !348
  br i1 %call, label %if.then, label %if.end, !dbg !349

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !350
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !352
  call void %1(ptr noundef %2) #17, !dbg !350
  store i32 1, ptr %retval, align 4, !dbg !353
  br label %return, !dbg !353

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !354
  br label %return, !dbg !354

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !355
  ret i32 %3, !dbg !355
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_rmap_release(ptr noundef %ref) #0 align 16 !dbg !356 {
entry:
  %ref.addr = alloca ptr, align 8
  %rmap = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !358, metadata !DIExpression()), !dbg !362
  call void @llvm.lifetime.start.p0(i64 8, ptr %rmap) #15, !dbg !363
  call void @llvm.dbg.declare(metadata ptr %rmap, metadata !359, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !365
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !360, metadata !DIExpression()), !dbg !365
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !365
  store ptr %0, ptr %__mptr, align 8, !dbg !365
  %1 = load ptr, ptr %__mptr, align 8, !dbg !365
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !365
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !365
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !366
  %2 = load ptr, ptr %tmp, align 8, !dbg !365
  store ptr %2, ptr %rmap, align 8, !dbg !364
  %3 = load ptr, ptr %rmap, align 8, !dbg !367
  call void @kfree(ptr noundef %3) #17, !dbg !368
  call void @llvm.lifetime.end.p0(i64 8, ptr %rmap) #15, !dbg !369
  ret void, !dbg !369
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpu_rmap_add(ptr noundef %rmap, ptr noundef %obj) #0 align 16 !dbg !370 {
entry:
  %retval = alloca i32, align 4
  %rmap.addr = alloca ptr, align 8
  %obj.addr = alloca ptr, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rmap, ptr %rmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rmap.addr, metadata !374, metadata !DIExpression()), !dbg !377
  store ptr %obj, ptr %obj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %obj.addr, metadata !375, metadata !DIExpression()), !dbg !378
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !379
  call void @llvm.dbg.declare(metadata ptr %index, metadata !376, metadata !DIExpression()), !dbg !380
  %0 = load ptr, ptr %rmap.addr, align 8, !dbg !381
  %call = call i32 @get_free_index(ptr noundef %0) #17, !dbg !382
  store i32 %call, ptr %index, align 4, !dbg !380
  %1 = load i32, ptr %index, align 4, !dbg !383
  %cmp = icmp slt i32 %1, 0, !dbg !385
  br i1 %cmp, label %if.then, label %if.end, !dbg !386

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %index, align 4, !dbg !387
  store i32 %2, ptr %retval, align 4, !dbg !388
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !388

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %obj.addr, align 8, !dbg !389
  %4 = load ptr, ptr %rmap.addr, align 8, !dbg !390
  %obj1 = getelementptr inbounds %struct.cpu_rmap, ptr %4, i32 0, i32 2, !dbg !391
  %5 = load ptr, ptr %obj1, align 8, !dbg !391
  %6 = load i32, ptr %index, align 4, !dbg !392
  %idxprom = sext i32 %6 to i64, !dbg !390
  %arrayidx = getelementptr ptr, ptr %5, i64 %idxprom, !dbg !390
  store ptr %3, ptr %arrayidx, align 8, !dbg !393
  %7 = load i32, ptr %index, align 4, !dbg !394
  store i32 %7, ptr %retval, align 4, !dbg !395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !395

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !396
  %8 = load i32, ptr %retval, align 4, !dbg !396
  ret i32 %8, !dbg !396
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_free_index(ptr noundef %rmap) #0 align 16 !dbg !397 {
entry:
  %retval = alloca i32, align 4
  %rmap.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rmap, ptr %rmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rmap.addr, metadata !399, metadata !DIExpression()), !dbg !401
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !402
  call void @llvm.dbg.declare(metadata ptr %i, metadata !400, metadata !DIExpression()), !dbg !403
  store i32 0, ptr %i, align 4, !dbg !404
  br label %for.cond, !dbg !406

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !407
  %1 = load ptr, ptr %rmap.addr, align 8, !dbg !409
  %size = getelementptr inbounds %struct.cpu_rmap, ptr %1, i32 0, i32 1, !dbg !410
  %2 = load i16, ptr %size, align 4, !dbg !410
  %conv = zext i16 %2 to i32, !dbg !409
  %cmp = icmp slt i32 %0, %conv, !dbg !411
  br i1 %cmp, label %for.body, label %for.end, !dbg !412

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %rmap.addr, align 8, !dbg !413
  %obj = getelementptr inbounds %struct.cpu_rmap, ptr %3, i32 0, i32 2, !dbg !415
  %4 = load ptr, ptr %obj, align 8, !dbg !415
  %5 = load i32, ptr %i, align 4, !dbg !416
  %idxprom = sext i32 %5 to i64, !dbg !413
  %arrayidx = getelementptr ptr, ptr %4, i64 %idxprom, !dbg !413
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !413
  %tobool = icmp ne ptr %6, null, !dbg !413
  br i1 %tobool, label %if.end, label %if.then, !dbg !417

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !418
  store i32 %7, ptr %retval, align 4, !dbg !419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !419

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !420

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !dbg !421
  %inc = add i32 %8, 1, !dbg !421
  store i32 %inc, ptr %i, align 4, !dbg !421
  br label %for.cond, !dbg !422, !llvm.loop !423

for.end:                                          ; preds = %for.cond
  store i32 -28, ptr %retval, align 4, !dbg !425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !425

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !426
  %9 = load i32, ptr %retval, align 4, !dbg !426
  ret i32 %9, !dbg !426
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpu_rmap_update(ptr noundef %rmap, i16 noundef zeroext %index, ptr noundef %affinity) #0 align 16 !dbg !427 {
entry:
  %retval = alloca i32, align 4
  %rmap.addr = alloca ptr, align 8
  %index.addr = alloca i16, align 2
  %affinity.addr = alloca ptr, align 8
  %update_mask = alloca [1 x %struct.cpumask], align 8
  %cpu = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp50 = alloca ptr, align 8
  %__vpp_verify58 = alloca ptr, align 8
  %tmp61 = alloca ptr, align 8
  %__ptr62 = alloca i64, align 8
  %tmp63 = alloca ptr, align 8
  store ptr %rmap, ptr %rmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rmap.addr, metadata !431, metadata !DIExpression()), !dbg !453
  store i16 %index, ptr %index.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !432, metadata !DIExpression()), !dbg !454
  store ptr %affinity, ptr %affinity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %affinity.addr, metadata !433, metadata !DIExpression()), !dbg !455
  call void @llvm.lifetime.start.p0(i64 8, ptr %update_mask) #15, !dbg !456
  call void @llvm.dbg.declare(metadata ptr %update_mask, metadata !434, metadata !DIExpression()), !dbg !457
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !458
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !435, metadata !DIExpression()), !dbg !459
  %call = call zeroext i1 @zalloc_cpumask_var(ptr noundef %update_mask, i32 noundef 3264) #17, !dbg !460
  %lnot = xor i1 %call, true, !dbg !460
  %lnot1 = xor i1 %lnot, true, !dbg !460
  %lnot2 = xor i1 %lnot1, true, !dbg !460
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !460
  %conv = sext i32 %lnot.ext to i64, !dbg !460
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !460
  %tobool = icmp ne i64 %expval, 0, !dbg !460
  br i1 %tobool, label %if.then, label %if.end, !dbg !462

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !463

if.end:                                           ; preds = %entry
  store i32 0, ptr %cpu, align 4, !dbg !464
  br label %for.cond, !dbg !464

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, ptr %cpu, align 4, !dbg !466
  %conv3 = zext i32 %0 to i64, !dbg !466
  %call4 = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv3) #17, !dbg !466
  %conv5 = trunc i64 %call4 to i32, !dbg !466
  store i32 %conv5, ptr %cpu, align 4, !dbg !466
  %1 = load i32, ptr %cpu, align 4, !dbg !466
  %cmp = icmp ult i32 %1, 64, !dbg !466
  br i1 %cmp, label %for.body, label %for.end, !dbg !464

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %rmap.addr, align 8, !dbg !468
  %near = getelementptr inbounds %struct.cpu_rmap, ptr %2, i32 0, i32 3, !dbg !471
  %3 = load i32, ptr %cpu, align 4, !dbg !472
  %idxprom = zext i32 %3 to i64, !dbg !468
  %arrayidx = getelementptr [0 x %struct.anon], ptr %near, i64 0, i64 %idxprom, !dbg !468
  %index7 = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0, !dbg !473
  %4 = load i16, ptr %index7, align 4, !dbg !473
  %conv8 = zext i16 %4 to i32, !dbg !468
  %5 = load i16, ptr %index.addr, align 2, !dbg !474
  %conv9 = zext i16 %5 to i32, !dbg !474
  %cmp10 = icmp eq i32 %conv8, %conv9, !dbg !475
  br i1 %cmp10, label %if.then12, label %if.end16, !dbg !476

if.then12:                                        ; preds = %for.body
  %6 = load ptr, ptr %rmap.addr, align 8, !dbg !477
  %near13 = getelementptr inbounds %struct.cpu_rmap, ptr %6, i32 0, i32 3, !dbg !479
  %7 = load i32, ptr %cpu, align 4, !dbg !480
  %idxprom14 = zext i32 %7 to i64, !dbg !477
  %arrayidx15 = getelementptr [0 x %struct.anon], ptr %near13, i64 0, i64 %idxprom14, !dbg !477
  %dist = getelementptr inbounds %struct.anon, ptr %arrayidx15, i32 0, i32 1, !dbg !481
  store i16 -1, ptr %dist, align 2, !dbg !482
  %8 = load i32, ptr %cpu, align 4, !dbg !483
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %update_mask, i64 0, i64 0, !dbg !484
  call void @cpumask_set_cpu(i32 noundef %8, ptr noundef %arraydecay) #17, !dbg !485
  br label %if.end16, !dbg !486

if.end16:                                         ; preds = %if.then12, %for.body
  br label %for.inc, !dbg !487

for.inc:                                          ; preds = %if.end16
  %9 = load i32, ptr %cpu, align 4, !dbg !466
  %inc = add i32 %9, 1, !dbg !466
  store i32 %inc, ptr %cpu, align 4, !dbg !466
  br label %for.cond, !dbg !466, !llvm.loop !488

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %rmap.addr, align 8, !dbg !490
  call void @debug_print_rmap(ptr noundef %10, ptr noundef @.str) #17, !dbg !491
  store i32 0, ptr %cpu, align 4, !dbg !492
  br label %for.cond17, !dbg !492

for.cond17:                                       ; preds = %for.inc37, %for.end
  %11 = load ptr, ptr %affinity.addr, align 8, !dbg !494
  %bits = getelementptr inbounds %struct.cpumask, ptr %11, i32 0, i32 0, !dbg !494
  %arraydecay18 = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !494
  %12 = load i32, ptr %cpu, align 4, !dbg !494
  %conv19 = zext i32 %12 to i64, !dbg !494
  %call20 = call i64 @find_next_bit(ptr noundef %arraydecay18, i64 noundef 64, i64 noundef %conv19) #17, !dbg !494
  %conv21 = trunc i64 %call20 to i32, !dbg !494
  store i32 %conv21, ptr %cpu, align 4, !dbg !494
  %13 = load i32, ptr %cpu, align 4, !dbg !494
  %cmp22 = icmp ult i32 %13, 64, !dbg !494
  br i1 %cmp22, label %for.body24, label %for.end39, !dbg !492

for.body24:                                       ; preds = %for.cond17
  %14 = load i16, ptr %index.addr, align 2, !dbg !496
  %15 = load ptr, ptr %rmap.addr, align 8, !dbg !498
  %near25 = getelementptr inbounds %struct.cpu_rmap, ptr %15, i32 0, i32 3, !dbg !499
  %16 = load i32, ptr %cpu, align 4, !dbg !500
  %idxprom26 = zext i32 %16 to i64, !dbg !498
  %arrayidx27 = getelementptr [0 x %struct.anon], ptr %near25, i64 0, i64 %idxprom26, !dbg !498
  %index28 = getelementptr inbounds %struct.anon, ptr %arrayidx27, i32 0, i32 0, !dbg !501
  store i16 %14, ptr %index28, align 4, !dbg !502
  %17 = load ptr, ptr %rmap.addr, align 8, !dbg !503
  %near29 = getelementptr inbounds %struct.cpu_rmap, ptr %17, i32 0, i32 3, !dbg !504
  %18 = load i32, ptr %cpu, align 4, !dbg !505
  %idxprom30 = zext i32 %18 to i64, !dbg !503
  %arrayidx31 = getelementptr [0 x %struct.anon], ptr %near29, i64 0, i64 %idxprom30, !dbg !503
  %dist32 = getelementptr inbounds %struct.anon, ptr %arrayidx31, i32 0, i32 1, !dbg !506
  store i16 0, ptr %dist32, align 2, !dbg !507
  %arraydecay33 = getelementptr inbounds [1 x %struct.cpumask], ptr %update_mask, i64 0, i64 0, !dbg !508
  %arraydecay34 = getelementptr inbounds [1 x %struct.cpumask], ptr %update_mask, i64 0, i64 0, !dbg !509
  %19 = load i32, ptr %cpu, align 4, !dbg !510
  %call35 = call i32 @cpu_to_node(i32 noundef %19) #17, !dbg !511
  %call36 = call ptr @cpumask_of_node(i32 noundef %call35) #17, !dbg !512
  call void @cpumask_or(ptr noundef %arraydecay33, ptr noundef %arraydecay34, ptr noundef %call36) #17, !dbg !513
  br label %for.inc37, !dbg !514

for.inc37:                                        ; preds = %for.body24
  %20 = load i32, ptr %cpu, align 4, !dbg !494
  %inc38 = add i32 %20, 1, !dbg !494
  store i32 %inc38, ptr %cpu, align 4, !dbg !494
  br label %for.cond17, !dbg !494, !llvm.loop !515

for.end39:                                        ; preds = %for.cond17
  %21 = load ptr, ptr %rmap.addr, align 8, !dbg !517
  call void @debug_print_rmap(ptr noundef %21, ptr noundef @.str.1) #17, !dbg !518
  store i32 0, ptr %cpu, align 4, !dbg !519
  br label %for.cond40, !dbg !519

for.cond40:                                       ; preds = %for.inc76, %for.end39
  %arraydecay41 = getelementptr inbounds [1 x %struct.cpumask], ptr %update_mask, i64 0, i64 0, !dbg !520
  %bits42 = getelementptr inbounds %struct.cpumask, ptr %arraydecay41, i32 0, i32 0, !dbg !520
  %arraydecay43 = getelementptr inbounds [1 x i64], ptr %bits42, i64 0, i64 0, !dbg !520
  %22 = load i32, ptr %cpu, align 4, !dbg !520
  %conv44 = zext i32 %22 to i64, !dbg !520
  %call45 = call i64 @find_next_bit(ptr noundef %arraydecay43, i64 noundef 64, i64 noundef %conv44) #17, !dbg !520
  %conv46 = trunc i64 %call45 to i32, !dbg !520
  store i32 %conv46, ptr %cpu, align 4, !dbg !520
  %23 = load i32, ptr %cpu, align 4, !dbg !520
  %cmp47 = icmp ult i32 %23, 64, !dbg !520
  br i1 %cmp47, label %for.body49, label %for.end78, !dbg !519

for.body49:                                       ; preds = %for.cond40
  %24 = load ptr, ptr %rmap.addr, align 8, !dbg !521
  %25 = load i32, ptr %cpu, align 4, !dbg !522
  br label %do.body, !dbg !523

do.body:                                          ; preds = %for.body49
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !524
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !436, metadata !DIExpression()), !dbg !524
  store ptr null, ptr %__vpp_verify, align 8, !dbg !524
  %26 = load ptr, ptr %__vpp_verify, align 8, !dbg !524
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !523
  br label %do.cond, !dbg !524

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !524

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !445, metadata !DIExpression()), !dbg !525
  store i64 ptrtoint (ptr @cpu_sibling_map to i64), ptr %__ptr, align 8, !dbg !525
  %27 = load i64, ptr %__ptr, align 8, !dbg !525
  %28 = load i32, ptr %cpu, align 4, !dbg !525
  %idxprom51 = zext i32 %28 to i64, !dbg !525
  %arrayidx52 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom51, !dbg !525
  %29 = load i64, ptr %arrayidx52, align 8, !dbg !525
  %add = add i64 %27, %29, !dbg !525
  %30 = inttoptr i64 %add to ptr, !dbg !525
  store ptr %30, ptr %tmp50, align 8, !dbg !525
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !523
  %31 = load ptr, ptr %tmp50, align 8, !dbg !525
  store ptr %31, ptr %tmp, align 8, !dbg !524
  %32 = load ptr, ptr %tmp, align 8, !dbg !523
  %arraydecay53 = getelementptr inbounds [1 x %struct.cpumask], ptr %32, i64 0, i64 0, !dbg !526
  %call54 = call zeroext i1 @cpu_rmap_copy_neigh(ptr noundef %24, i32 noundef %25, ptr noundef %arraydecay53, i16 noundef zeroext 1) #17, !dbg !527
  br i1 %call54, label %if.then55, label %if.end56, !dbg !528

if.then55:                                        ; preds = %do.end
  br label %for.inc76, !dbg !529

if.end56:                                         ; preds = %do.end
  %33 = load ptr, ptr %rmap.addr, align 8, !dbg !530
  %34 = load i32, ptr %cpu, align 4, !dbg !531
  br label %do.body57, !dbg !532

do.body57:                                        ; preds = %if.end56
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify58) #15, !dbg !533
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify58, metadata !447, metadata !DIExpression()), !dbg !533
  store ptr null, ptr %__vpp_verify58, align 8, !dbg !533
  %35 = load ptr, ptr %__vpp_verify58, align 8, !dbg !533
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify58) #15, !dbg !532
  br label %do.cond59, !dbg !533

do.cond59:                                        ; preds = %do.body57
  br label %do.end60, !dbg !533

do.end60:                                         ; preds = %do.cond59
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr62) #15, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %__ptr62, metadata !451, metadata !DIExpression()), !dbg !534
  store i64 ptrtoint (ptr @cpu_core_map to i64), ptr %__ptr62, align 8, !dbg !534
  %36 = load i64, ptr %__ptr62, align 8, !dbg !534
  %37 = load i32, ptr %cpu, align 4, !dbg !534
  %idxprom64 = zext i32 %37 to i64, !dbg !534
  %arrayidx65 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom64, !dbg !534
  %38 = load i64, ptr %arrayidx65, align 8, !dbg !534
  %add66 = add i64 %36, %38, !dbg !534
  %39 = inttoptr i64 %add66 to ptr, !dbg !534
  store ptr %39, ptr %tmp63, align 8, !dbg !534
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr62) #15, !dbg !532
  %40 = load ptr, ptr %tmp63, align 8, !dbg !534
  store ptr %40, ptr %tmp61, align 8, !dbg !533
  %41 = load ptr, ptr %tmp61, align 8, !dbg !532
  %arraydecay67 = getelementptr inbounds [1 x %struct.cpumask], ptr %41, i64 0, i64 0, !dbg !535
  %call68 = call zeroext i1 @cpu_rmap_copy_neigh(ptr noundef %33, i32 noundef %34, ptr noundef %arraydecay67, i16 noundef zeroext 2) #17, !dbg !536
  br i1 %call68, label %if.then69, label %if.end70, !dbg !537

if.then69:                                        ; preds = %do.end60
  br label %for.inc76, !dbg !538

if.end70:                                         ; preds = %do.end60
  %42 = load ptr, ptr %rmap.addr, align 8, !dbg !539
  %43 = load i32, ptr %cpu, align 4, !dbg !541
  %44 = load i32, ptr %cpu, align 4, !dbg !542
  %call71 = call i32 @cpu_to_node(i32 noundef %44) #17, !dbg !543
  %call72 = call ptr @cpumask_of_node(i32 noundef %call71) #17, !dbg !544
  %call73 = call zeroext i1 @cpu_rmap_copy_neigh(ptr noundef %42, i32 noundef %43, ptr noundef %call72, i16 noundef zeroext 3) #17, !dbg !545
  br i1 %call73, label %if.then74, label %if.end75, !dbg !546

if.then74:                                        ; preds = %if.end70
  br label %for.inc76, !dbg !547

if.end75:                                         ; preds = %if.end70
  br label %for.inc76, !dbg !548

for.inc76:                                        ; preds = %if.end75, %if.then74, %if.then69, %if.then55
  %45 = load i32, ptr %cpu, align 4, !dbg !520
  %inc77 = add i32 %45, 1, !dbg !520
  store i32 %inc77, ptr %cpu, align 4, !dbg !520
  br label %for.cond40, !dbg !520, !llvm.loop !549

for.end78:                                        ; preds = %for.cond40
  %46 = load ptr, ptr %rmap.addr, align 8, !dbg !551
  call void @debug_print_rmap(ptr noundef %46, ptr noundef @.str.2) #17, !dbg !552
  %arraydecay79 = getelementptr inbounds [1 x %struct.cpumask], ptr %update_mask, i64 0, i64 0, !dbg !553
  call void @free_cpumask_var(ptr noundef %arraydecay79) #17, !dbg !554
  store i32 0, ptr %retval, align 4, !dbg !555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !555

cleanup:                                          ; preds = %for.end78, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !556
  call void @llvm.lifetime.end.p0(i64 8, ptr %update_mask) #15, !dbg !556
  %47 = load i32, ptr %retval, align 4, !dbg !556
  ret i32 %47, !dbg !556
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @zalloc_cpumask_var(ptr noundef %mask, i32 noundef %flags) #4 align 16 !dbg !557 {
entry:
  %mask.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !563, metadata !DIExpression()), !dbg !565
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !564, metadata !DIExpression()), !dbg !566
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !567
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %0, i64 0, i64 0, !dbg !568
  call void @cpumask_clear(ptr noundef %arraydecay) #17, !dbg !569
  ret i1 true, !dbg !570
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_set_cpu(i32 noundef %cpu, ptr noundef %dstp) #6 align 16 !dbg !571 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !576, metadata !DIExpression()), !dbg !578
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !577, metadata !DIExpression()), !dbg !579
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !580
  %call = call i32 @cpumask_check(i32 noundef %0) #17, !dbg !581
  %conv = zext i32 %call to i64, !dbg !581
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !582
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !582
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !582
  call void @set_bit(i64 noundef %conv, ptr noundef %arraydecay) #17, !dbg !583
  ret void, !dbg !584
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_print_rmap(ptr noundef %rmap, ptr noundef %prefix) #4 align 16 !dbg !585 {
entry:
  %rmap.addr = alloca ptr, align 8
  %prefix.addr = alloca ptr, align 8
  store ptr %rmap, ptr %rmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rmap.addr, metadata !593, metadata !DIExpression()), !dbg !595
  store ptr %prefix, ptr %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !594, metadata !DIExpression()), !dbg !596
  ret void, !dbg !597
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_or(ptr noundef %dstp, ptr noundef %src1p, ptr noundef %src2p) #4 align 16 !dbg !598 {
entry:
  %dstp.addr = alloca ptr, align 8
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !602, metadata !DIExpression()), !dbg !605
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !603, metadata !DIExpression()), !dbg !606
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !604, metadata !DIExpression()), !dbg !607
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !608
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !608
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !608
  %1 = load ptr, ptr %src1p.addr, align 8, !dbg !609
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !609
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !609
  %2 = load ptr, ptr %src2p.addr, align 8, !dbg !610
  %bits3 = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !610
  %arraydecay4 = getelementptr inbounds [1 x i64], ptr %bits3, i64 0, i64 0, !dbg !610
  call void @bitmap_or(ptr noundef %arraydecay, ptr noundef %arraydecay2, ptr noundef %arraydecay4, i32 noundef 64) #17, !dbg !611
  ret void, !dbg !612
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cpumask_of_node(i32 noundef %node) #4 align 16 !dbg !613 {
entry:
  %node.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !618, metadata !DIExpression()), !dbg !619
  %0 = load i32, ptr %node.addr, align 4, !dbg !620
  %idxprom = sext i32 %0 to i64, !dbg !621
  %arrayidx = getelementptr [64 x [1 x %struct.cpumask]], ptr @node_to_cpumask_map, i64 0, i64 %idxprom, !dbg !621
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %arrayidx, i64 0, i64 0, !dbg !621
  ret ptr %arraydecay, !dbg !622
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpu_to_node(i32 noundef %cpu) #4 align 16 !dbg !623 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !628, metadata !DIExpression()), !dbg !634
  br label %do.body, !dbg !635

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !636
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !629, metadata !DIExpression()), !dbg !636
  store ptr null, ptr %__vpp_verify, align 8, !dbg !636
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !636
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !635
  br label %do.end, !dbg !636

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !632, metadata !DIExpression()), !dbg !637
  store i64 ptrtoint (ptr @numa_node to i64), ptr %__ptr, align 8, !dbg !637
  %1 = load i64, ptr %__ptr, align 8, !dbg !637
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !637
  %idxprom = sext i32 %2 to i64, !dbg !637
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !637
  %3 = load i64, ptr %arrayidx, align 8, !dbg !637
  %add = add i64 %1, %3, !dbg !637
  %4 = inttoptr i64 %add to ptr, !dbg !637
  store ptr %4, ptr %tmp1, align 8, !dbg !637
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !635
  %5 = load ptr, ptr %tmp1, align 8, !dbg !637
  store ptr %5, ptr %tmp, align 8, !dbg !636
  %6 = load ptr, ptr %tmp, align 8, !dbg !635
  %7 = load i32, ptr %6, align 4, !dbg !638
  ret i32 %7, !dbg !639
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_rmap_copy_neigh(ptr noundef %rmap, i32 noundef %cpu, ptr noundef %mask, i16 noundef zeroext %dist) #0 align 16 !dbg !640 {
entry:
  %retval = alloca i1, align 1
  %rmap.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %mask.addr = alloca ptr, align 8
  %dist.addr = alloca i16, align 2
  %neigh = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rmap, ptr %rmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rmap.addr, metadata !644, metadata !DIExpression()), !dbg !649
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !645, metadata !DIExpression()), !dbg !650
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !646, metadata !DIExpression()), !dbg !651
  store i16 %dist, ptr %dist.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %dist.addr, metadata !647, metadata !DIExpression()), !dbg !652
  call void @llvm.lifetime.start.p0(i64 4, ptr %neigh) #15, !dbg !653
  call void @llvm.dbg.declare(metadata ptr %neigh, metadata !648, metadata !DIExpression()), !dbg !654
  store i32 0, ptr %neigh, align 4, !dbg !655
  br label %for.cond, !dbg !655

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !657
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !657
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !657
  %1 = load i32, ptr %neigh, align 4, !dbg !657
  %conv = sext i32 %1 to i64, !dbg !657
  %call = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #17, !dbg !657
  %conv1 = trunc i64 %call to i32, !dbg !657
  store i32 %conv1, ptr %neigh, align 4, !dbg !657
  %2 = load i32, ptr %neigh, align 4, !dbg !657
  %cmp = icmp ult i32 %2, 64, !dbg !657
  br i1 %cmp, label %for.body, label %for.end, !dbg !655

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %rmap.addr, align 8, !dbg !659
  %near = getelementptr inbounds %struct.cpu_rmap, ptr %3, i32 0, i32 3, !dbg !662
  %4 = load i32, ptr %cpu.addr, align 4, !dbg !663
  %idxprom = zext i32 %4 to i64, !dbg !659
  %arrayidx = getelementptr [0 x %struct.anon], ptr %near, i64 0, i64 %idxprom, !dbg !659
  %dist3 = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 1, !dbg !664
  %5 = load i16, ptr %dist3, align 2, !dbg !664
  %conv4 = zext i16 %5 to i32, !dbg !659
  %6 = load i16, ptr %dist.addr, align 2, !dbg !665
  %conv5 = zext i16 %6 to i32, !dbg !665
  %cmp6 = icmp sgt i32 %conv4, %conv5, !dbg !666
  br i1 %cmp6, label %land.lhs.true, label %if.end, !dbg !667

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %rmap.addr, align 8, !dbg !668
  %near8 = getelementptr inbounds %struct.cpu_rmap, ptr %7, i32 0, i32 3, !dbg !669
  %8 = load i32, ptr %neigh, align 4, !dbg !670
  %idxprom9 = sext i32 %8 to i64, !dbg !668
  %arrayidx10 = getelementptr [0 x %struct.anon], ptr %near8, i64 0, i64 %idxprom9, !dbg !668
  %dist11 = getelementptr inbounds %struct.anon, ptr %arrayidx10, i32 0, i32 1, !dbg !671
  %9 = load i16, ptr %dist11, align 2, !dbg !671
  %conv12 = zext i16 %9 to i32, !dbg !668
  %10 = load i16, ptr %dist.addr, align 2, !dbg !672
  %conv13 = zext i16 %10 to i32, !dbg !672
  %cmp14 = icmp sle i32 %conv12, %conv13, !dbg !673
  br i1 %cmp14, label %if.then, label %if.end, !dbg !674

if.then:                                          ; preds = %land.lhs.true
  %11 = load ptr, ptr %rmap.addr, align 8, !dbg !675
  %near16 = getelementptr inbounds %struct.cpu_rmap, ptr %11, i32 0, i32 3, !dbg !677
  %12 = load i32, ptr %neigh, align 4, !dbg !678
  %idxprom17 = sext i32 %12 to i64, !dbg !675
  %arrayidx18 = getelementptr [0 x %struct.anon], ptr %near16, i64 0, i64 %idxprom17, !dbg !675
  %index = getelementptr inbounds %struct.anon, ptr %arrayidx18, i32 0, i32 0, !dbg !679
  %13 = load i16, ptr %index, align 4, !dbg !679
  %14 = load ptr, ptr %rmap.addr, align 8, !dbg !680
  %near19 = getelementptr inbounds %struct.cpu_rmap, ptr %14, i32 0, i32 3, !dbg !681
  %15 = load i32, ptr %cpu.addr, align 4, !dbg !682
  %idxprom20 = zext i32 %15 to i64, !dbg !680
  %arrayidx21 = getelementptr [0 x %struct.anon], ptr %near19, i64 0, i64 %idxprom20, !dbg !680
  %index22 = getelementptr inbounds %struct.anon, ptr %arrayidx21, i32 0, i32 0, !dbg !683
  store i16 %13, ptr %index22, align 4, !dbg !684
  %16 = load i16, ptr %dist.addr, align 2, !dbg !685
  %17 = load ptr, ptr %rmap.addr, align 8, !dbg !686
  %near23 = getelementptr inbounds %struct.cpu_rmap, ptr %17, i32 0, i32 3, !dbg !687
  %18 = load i32, ptr %cpu.addr, align 4, !dbg !688
  %idxprom24 = zext i32 %18 to i64, !dbg !686
  %arrayidx25 = getelementptr [0 x %struct.anon], ptr %near23, i64 0, i64 %idxprom24, !dbg !686
  %dist26 = getelementptr inbounds %struct.anon, ptr %arrayidx25, i32 0, i32 1, !dbg !689
  store i16 %16, ptr %dist26, align 2, !dbg !690
  store i1 true, ptr %retval, align 1, !dbg !691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !691

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !692

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %neigh, align 4, !dbg !657
  %inc = add i32 %19, 1, !dbg !657
  store i32 %inc, ptr %neigh, align 4, !dbg !657
  br label %for.cond, !dbg !657, !llvm.loop !693

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !695

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %neigh) #15, !dbg !696
  %20 = load i1, ptr %retval, align 1, !dbg !696
  ret i1 %20, !dbg !696
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_cpumask_var(ptr noundef %mask) #4 align 16 !dbg !697 {
entry:
  %mask.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !701, metadata !DIExpression()), !dbg !702
  ret void, !dbg !703
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @free_irq_cpu_rmap(ptr noundef %rmap) #0 align 16 !dbg !704 {
entry:
  %rmap.addr = alloca ptr, align 8
  %glue = alloca ptr, align 8
  %index = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rmap, ptr %rmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rmap.addr, metadata !708, metadata !DIExpression()), !dbg !711
  call void @llvm.lifetime.start.p0(i64 8, ptr %glue) #15, !dbg !712
  call void @llvm.dbg.declare(metadata ptr %glue, metadata !709, metadata !DIExpression()), !dbg !713
  call void @llvm.lifetime.start.p0(i64 2, ptr %index) #15, !dbg !714
  call void @llvm.dbg.declare(metadata ptr %index, metadata !710, metadata !DIExpression()), !dbg !715
  %0 = load ptr, ptr %rmap.addr, align 8, !dbg !716
  %tobool = icmp ne ptr %0, null, !dbg !716
  br i1 %tobool, label %if.end, label %if.then, !dbg !718

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !719

if.end:                                           ; preds = %entry
  store i16 0, ptr %index, align 2, !dbg !720
  br label %for.cond, !dbg !722

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i16, ptr %index, align 2, !dbg !723
  %conv = zext i16 %1 to i32, !dbg !723
  %2 = load ptr, ptr %rmap.addr, align 8, !dbg !725
  %size = getelementptr inbounds %struct.cpu_rmap, ptr %2, i32 0, i32 1, !dbg !726
  %3 = load i16, ptr %size, align 4, !dbg !726
  %conv1 = zext i16 %3 to i32, !dbg !725
  %cmp = icmp slt i32 %conv, %conv1, !dbg !727
  br i1 %cmp, label %for.body, label %for.end, !dbg !728

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %rmap.addr, align 8, !dbg !729
  %obj = getelementptr inbounds %struct.cpu_rmap, ptr %4, i32 0, i32 2, !dbg !731
  %5 = load ptr, ptr %obj, align 8, !dbg !731
  %6 = load i16, ptr %index, align 2, !dbg !732
  %idxprom = zext i16 %6 to i64, !dbg !729
  %arrayidx = getelementptr ptr, ptr %5, i64 %idxprom, !dbg !729
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !729
  store ptr %7, ptr %glue, align 8, !dbg !733
  %8 = load ptr, ptr %glue, align 8, !dbg !734
  %tobool3 = icmp ne ptr %8, null, !dbg !734
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !736

if.then4:                                         ; preds = %for.body
  %9 = load ptr, ptr %glue, align 8, !dbg !737
  %notify = getelementptr inbounds %struct.irq_glue, ptr %9, i32 0, i32 0, !dbg !738
  %irq = getelementptr inbounds %struct.irq_affinity_notify, ptr %notify, i32 0, i32 0, !dbg !739
  %10 = load i32, ptr %irq, align 8, !dbg !739
  %call = call i32 @irq_set_affinity_notifier(i32 noundef %10, ptr noundef null) #17, !dbg !740
  br label %if.end5, !dbg !740

if.end5:                                          ; preds = %if.then4, %for.body
  br label %for.inc, !dbg !741

for.inc:                                          ; preds = %if.end5
  %11 = load i16, ptr %index, align 2, !dbg !742
  %inc = add i16 %11, 1, !dbg !742
  store i16 %inc, ptr %index, align 2, !dbg !742
  br label %for.cond, !dbg !743, !llvm.loop !744

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %rmap.addr, align 8, !dbg !746
  %call6 = call i32 @cpu_rmap_put(ptr noundef %12) #17, !dbg !747
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !748
  br label %cleanup, !dbg !748

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %index) #15, !dbg !748
  call void @llvm.lifetime.end.p0(i64 8, ptr %glue) #15, !dbg !748
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !748

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !749 dso_local i32 @irq_set_affinity_notifier(i32 noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @irq_cpu_rmap_remove(ptr noundef %rmap, i32 noundef %irq) #0 align 16 !dbg !752 {
entry:
  %rmap.addr = alloca ptr, align 8
  %irq.addr = alloca i32, align 4
  store ptr %rmap, ptr %rmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rmap.addr, metadata !756, metadata !DIExpression()), !dbg !758
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !757, metadata !DIExpression()), !dbg !759
  %0 = load i32, ptr %irq.addr, align 4, !dbg !760
  %call = call i32 @irq_set_affinity_notifier(i32 noundef %0, ptr noundef null) #17, !dbg !761
  ret i32 %call, !dbg !762
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @irq_cpu_rmap_add(ptr noundef %rmap, i32 noundef %irq) #0 align 16 !dbg !763 {
entry:
  %retval = alloca i32, align 4
  %rmap.addr = alloca ptr, align 8
  %irq.addr = alloca i32, align 4
  %glue = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rmap, ptr %rmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rmap.addr, metadata !765, metadata !DIExpression()), !dbg !771
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !766, metadata !DIExpression()), !dbg !772
  call void @llvm.lifetime.start.p0(i64 8, ptr %glue) #15, !dbg !773
  call void @llvm.dbg.declare(metadata ptr %glue, metadata !767, metadata !DIExpression()), !dbg !774
  %call = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #16, !dbg !775
  store ptr %call, ptr %glue, align 8, !dbg !774
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !776
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !768, metadata !DIExpression()), !dbg !777
  %0 = load ptr, ptr %glue, align 8, !dbg !778
  %tobool = icmp ne ptr %0, null, !dbg !778
  br i1 %tobool, label %if.end, label %if.then, !dbg !780

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !781

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %glue, align 8, !dbg !782
  %notify = getelementptr inbounds %struct.irq_glue, ptr %1, i32 0, i32 0, !dbg !783
  %notify1 = getelementptr inbounds %struct.irq_affinity_notify, ptr %notify, i32 0, i32 3, !dbg !784
  store ptr @irq_cpu_rmap_notify, ptr %notify1, align 8, !dbg !785
  %2 = load ptr, ptr %glue, align 8, !dbg !786
  %notify2 = getelementptr inbounds %struct.irq_glue, ptr %2, i32 0, i32 0, !dbg !787
  %release = getelementptr inbounds %struct.irq_affinity_notify, ptr %notify2, i32 0, i32 4, !dbg !788
  store ptr @irq_cpu_rmap_release, ptr %release, align 8, !dbg !789
  %3 = load ptr, ptr %rmap.addr, align 8, !dbg !790
  %4 = load ptr, ptr %glue, align 8, !dbg !791
  %rmap3 = getelementptr inbounds %struct.irq_glue, ptr %4, i32 0, i32 1, !dbg !792
  store ptr %3, ptr %rmap3, align 8, !dbg !793
  %5 = load ptr, ptr %rmap.addr, align 8, !dbg !794
  call void @cpu_rmap_get(ptr noundef %5) #17, !dbg !795
  %6 = load ptr, ptr %rmap.addr, align 8, !dbg !796
  %7 = load ptr, ptr %glue, align 8, !dbg !797
  %call4 = call i32 @cpu_rmap_add(ptr noundef %6, ptr noundef %7) #17, !dbg !798
  store i32 %call4, ptr %rc, align 4, !dbg !799
  %8 = load i32, ptr %rc, align 4, !dbg !800
  %cmp = icmp slt i32 %8, 0, !dbg !802
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !803

if.then5:                                         ; preds = %if.end
  br label %err_add, !dbg !804

if.end6:                                          ; preds = %if.end
  %9 = load i32, ptr %rc, align 4, !dbg !805
  %conv = trunc i32 %9 to i16, !dbg !805
  %10 = load ptr, ptr %glue, align 8, !dbg !806
  %index = getelementptr inbounds %struct.irq_glue, ptr %10, i32 0, i32 2, !dbg !807
  store i16 %conv, ptr %index, align 8, !dbg !808
  %11 = load i32, ptr %irq.addr, align 4, !dbg !809
  %12 = load ptr, ptr %glue, align 8, !dbg !810
  %notify7 = getelementptr inbounds %struct.irq_glue, ptr %12, i32 0, i32 0, !dbg !811
  %call8 = call i32 @irq_set_affinity_notifier(i32 noundef %11, ptr noundef %notify7) #17, !dbg !812
  store i32 %call8, ptr %rc, align 4, !dbg !813
  %13 = load i32, ptr %rc, align 4, !dbg !814
  %tobool9 = icmp ne i32 %13, 0, !dbg !814
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !816

if.then10:                                        ; preds = %if.end6
  br label %err_set, !dbg !817

if.end11:                                         ; preds = %if.end6
  %14 = load i32, ptr %rc, align 4, !dbg !818
  store i32 %14, ptr %retval, align 4, !dbg !819
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !819

err_set:                                          ; preds = %if.then10
  call void @llvm.dbg.label(metadata !769), !dbg !820
  %15 = load ptr, ptr %rmap.addr, align 8, !dbg !821
  %obj = getelementptr inbounds %struct.cpu_rmap, ptr %15, i32 0, i32 2, !dbg !822
  %16 = load ptr, ptr %obj, align 8, !dbg !822
  %17 = load ptr, ptr %glue, align 8, !dbg !823
  %index12 = getelementptr inbounds %struct.irq_glue, ptr %17, i32 0, i32 2, !dbg !824
  %18 = load i16, ptr %index12, align 8, !dbg !824
  %idxprom = zext i16 %18 to i64, !dbg !821
  %arrayidx = getelementptr ptr, ptr %16, i64 %idxprom, !dbg !821
  store ptr null, ptr %arrayidx, align 8, !dbg !825
  br label %err_add, !dbg !821

err_add:                                          ; preds = %err_set, %if.then5
  call void @llvm.dbg.label(metadata !770), !dbg !826
  %19 = load ptr, ptr %glue, align 8, !dbg !827
  %rmap13 = getelementptr inbounds %struct.irq_glue, ptr %19, i32 0, i32 1, !dbg !828
  %20 = load ptr, ptr %rmap13, align 8, !dbg !828
  %call14 = call i32 @cpu_rmap_put(ptr noundef %20) #17, !dbg !829
  %21 = load ptr, ptr %glue, align 8, !dbg !830
  call void @kfree(ptr noundef %21) #17, !dbg !831
  %22 = load i32, ptr %rc, align 4, !dbg !832
  store i32 %22, ptr %retval, align 4, !dbg !833
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !833

cleanup:                                          ; preds = %err_add, %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !834
  call void @llvm.lifetime.end.p0(i64 8, ptr %glue) #15, !dbg !834
  %23 = load i32, ptr %retval, align 4, !dbg !834
  ret i32 %23, !dbg !834
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_cpu_rmap_notify(ptr noundef %notify, ptr noundef %mask) #0 align 16 !dbg !835 {
entry:
  %notify.addr = alloca ptr, align 8
  %mask.addr = alloca ptr, align 8
  %glue = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %rc = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  store ptr %notify, ptr %notify.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %notify.addr, metadata !837, metadata !DIExpression()), !dbg !843
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !838, metadata !DIExpression()), !dbg !844
  call void @llvm.lifetime.start.p0(i64 8, ptr %glue) #15, !dbg !845
  call void @llvm.dbg.declare(metadata ptr %glue, metadata !839, metadata !DIExpression()), !dbg !846
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !840, metadata !DIExpression()), !dbg !847
  %0 = load ptr, ptr %notify.addr, align 8, !dbg !847
  store ptr %0, ptr %__mptr, align 8, !dbg !847
  %1 = load ptr, ptr %__mptr, align 8, !dbg !847
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !847
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !847
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !848
  %2 = load ptr, ptr %tmp, align 8, !dbg !847
  store ptr %2, ptr %glue, align 8, !dbg !846
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #15, !dbg !849
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !842, metadata !DIExpression()), !dbg !850
  %3 = load ptr, ptr %glue, align 8, !dbg !851
  %rmap = getelementptr inbounds %struct.irq_glue, ptr %3, i32 0, i32 1, !dbg !852
  %4 = load ptr, ptr %rmap, align 8, !dbg !852
  %5 = load ptr, ptr %glue, align 8, !dbg !853
  %index = getelementptr inbounds %struct.irq_glue, ptr %5, i32 0, i32 2, !dbg !854
  %6 = load i16, ptr %index, align 8, !dbg !854
  %7 = load ptr, ptr %mask.addr, align 8, !dbg !855
  %call = call i32 @cpu_rmap_update(ptr noundef %4, i16 noundef zeroext %6, ptr noundef %7) #17, !dbg !856
  store i32 %call, ptr %rc, align 4, !dbg !857
  %8 = load i32, ptr %rc, align 4, !dbg !858
  %tobool = icmp ne i32 %8, 0, !dbg !858
  br i1 %tobool, label %if.then, label %if.end, !dbg !860

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !861

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !863

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !863

do.end:                                           ; preds = %do.cond
  %9 = load i32, ptr %rc, align 4, !dbg !861
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, i32 noundef %9) #18, !dbg !861
  store i32 %call2, ptr %tmp1, align 4, !dbg !863
  %10 = load i32, ptr %tmp1, align 4, !dbg !861
  br label %if.end, !dbg !865

if.end:                                           ; preds = %do.end, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #15, !dbg !866
  call void @llvm.lifetime.end.p0(i64 8, ptr %glue) #15, !dbg !866
  ret void, !dbg !866
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @irq_cpu_rmap_release(ptr noundef %ref) #0 align 16 !dbg !867 {
entry:
  %ref.addr = alloca ptr, align 8
  %glue = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !869, metadata !DIExpression()), !dbg !873
  call void @llvm.lifetime.start.p0(i64 8, ptr %glue) #15, !dbg !874
  call void @llvm.dbg.declare(metadata ptr %glue, metadata !870, metadata !DIExpression()), !dbg !875
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !876
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !871, metadata !DIExpression()), !dbg !876
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !876
  store ptr %0, ptr %__mptr, align 8, !dbg !876
  %1 = load ptr, ptr %__mptr, align 8, !dbg !876
  %add.ptr = getelementptr i8, ptr %1, i64 -4, !dbg !876
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !876
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !877
  %2 = load ptr, ptr %tmp, align 8, !dbg !876
  store ptr %2, ptr %glue, align 8, !dbg !875
  %3 = load ptr, ptr %glue, align 8, !dbg !878
  %rmap = getelementptr inbounds %struct.irq_glue, ptr %3, i32 0, i32 1, !dbg !879
  %4 = load ptr, ptr %rmap, align 8, !dbg !879
  %obj = getelementptr inbounds %struct.cpu_rmap, ptr %4, i32 0, i32 2, !dbg !880
  %5 = load ptr, ptr %obj, align 8, !dbg !880
  %6 = load ptr, ptr %glue, align 8, !dbg !881
  %index = getelementptr inbounds %struct.irq_glue, ptr %6, i32 0, i32 2, !dbg !882
  %7 = load i16, ptr %index, align 8, !dbg !882
  %idxprom = zext i16 %7 to i64, !dbg !878
  %arrayidx = getelementptr ptr, ptr %5, i64 %idxprom, !dbg !878
  store ptr null, ptr %arrayidx, align 8, !dbg !883
  %8 = load ptr, ptr %glue, align 8, !dbg !884
  %rmap1 = getelementptr inbounds %struct.irq_glue, ptr %8, i32 0, i32 1, !dbg !885
  %9 = load ptr, ptr %rmap1, align 8, !dbg !885
  %call = call i32 @cpu_rmap_put(ptr noundef %9) #17, !dbg !886
  %10 = load ptr, ptr %glue, align 8, !dbg !887
  call void @kfree(ptr noundef %10) #17, !dbg !888
  call void @llvm.lifetime.end.p0(i64 8, ptr %glue) #15, !dbg !889
  ret void, !dbg !889
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_rmap_get(ptr noundef %rmap) #4 align 16 !dbg !890 {
entry:
  %rmap.addr = alloca ptr, align 8
  store ptr %rmap, ptr %rmap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rmap.addr, metadata !892, metadata !DIExpression()), !dbg !893
  %0 = load ptr, ptr %rmap.addr, align 8, !dbg !894
  %refcount = getelementptr inbounds %struct.cpu_rmap, ptr %0, i32 0, i32 0, !dbg !895
  call void @kref_get(ptr noundef %refcount) #17, !dbg !896
  ret void, !dbg !897
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !898 dso_local void @kfree(ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !901 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !903, metadata !DIExpression()), !dbg !908
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !904, metadata !DIExpression()), !dbg !909
  %0 = load i64, ptr %size.addr, align 8, !dbg !910
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !911
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !912

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !913
  %tobool = icmp ne i64 %2, 0, !dbg !913
  br i1 %tobool, label %if.then, label %if.end7, !dbg !914

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !915
  call void @llvm.dbg.declare(metadata ptr %index, metadata !905, metadata !DIExpression()), !dbg !916
  %3 = load i64, ptr %size.addr, align 8, !dbg !917
  %cmp = icmp ugt i64 %3, 8192, !dbg !919
  br i1 %cmp, label %if.then1, label %if.end, !dbg !920

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !921
  %5 = load i32, ptr %flags.addr, align 4, !dbg !922
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !923
  store ptr %call, ptr %retval, align 8, !dbg !924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !924

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !925
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !925
  store i32 %call2, ptr %index, align 4, !dbg !926
  %7 = load i32, ptr %flags.addr, align 4, !dbg !927
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !928
  %9 = ptrtoint ptr %8 to i64, !dbg !928
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !929
  %idxprom = zext i32 %call3 to i64, !dbg !930
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !930
  %10 = load i32, ptr %index, align 4, !dbg !931
  %idxprom4 = zext i32 %10 to i64, !dbg !930
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !930
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !930
  %12 = load i32, ptr %flags.addr, align 4, !dbg !932
  %13 = load i64, ptr %size.addr, align 8, !dbg !933
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !934
  store ptr %call6, ptr %retval, align 8, !dbg !935
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !935

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !936
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !937
  %15 = load i32, ptr %flags.addr, align 4, !dbg !938
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !939
  store ptr %call8, ptr %retval, align 8, !dbg !940
  br label %return, !dbg !940

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !941
  ret ptr %16, !dbg !941
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !942 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !943 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !947, metadata !DIExpression()), !dbg !949
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !948, metadata !DIExpression()), !dbg !950
  %0 = load i64, ptr %size.addr, align 8, !dbg !951
  %tobool = icmp ne i64 %0, 0, !dbg !951
  br i1 %tobool, label %if.end, label %if.then, !dbg !953

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !954
  br label %return, !dbg !954

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !955
  %cmp = icmp ule i64 %1, 8, !dbg !957
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !958

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !959
  br label %return, !dbg !959

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !960
  %cmp3 = icmp ugt i64 %2, 64, !dbg !962
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !963

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !964
  %cmp4 = icmp ule i64 %3, 96, !dbg !965
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !966

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !967
  br label %return, !dbg !967

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !968
  %cmp7 = icmp ugt i64 %4, 128, !dbg !970
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !971

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !972
  %cmp9 = icmp ule i64 %5, 192, !dbg !973
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !974

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !975
  br label %return, !dbg !975

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !976
  %cmp12 = icmp ule i64 %6, 8, !dbg !978
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !979

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !980
  br label %return, !dbg !980

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !981
  %cmp15 = icmp ule i64 %7, 16, !dbg !983
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !984

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !985
  br label %return, !dbg !985

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !986
  %cmp18 = icmp ule i64 %8, 32, !dbg !988
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !989

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !990
  br label %return, !dbg !990

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !991
  %cmp21 = icmp ule i64 %9, 64, !dbg !993
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !994

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !995
  br label %return, !dbg !995

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !996
  %cmp24 = icmp ule i64 %10, 128, !dbg !998
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !999

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1000
  br label %return, !dbg !1000

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1001
  %cmp27 = icmp ule i64 %11, 256, !dbg !1003
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1004

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1005
  br label %return, !dbg !1005

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1006
  %cmp30 = icmp ule i64 %12, 512, !dbg !1008
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1009

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1010
  br label %return, !dbg !1010

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1011
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1013
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1014

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1015
  br label %return, !dbg !1015

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1016
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1018
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1019

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1020
  br label %return, !dbg !1020

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1021
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1023
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1024

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1025
  br label %return, !dbg !1025

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1026
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1028
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1029

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1030
  br label %return, !dbg !1030

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1031
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1033
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1034

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1035
  br label %return, !dbg !1035

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1036
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1038
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1039

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1040
  br label %return, !dbg !1040

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1041
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1043
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1044

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1045
  br label %return, !dbg !1045

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1046
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1048
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1049

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1050
  br label %return, !dbg !1050

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1051
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1053
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1054

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1055
  br label %return, !dbg !1055

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1056
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1058
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1059

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1060
  br label %return, !dbg !1060

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1061
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1063
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1064

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1065
  br label %return, !dbg !1065

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1066
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1068
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1069

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1070
  br label %return, !dbg !1070

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1071, !range !1073, !noundef !1074
  %tobool69 = trunc i8 %25 to i1, !dbg !1071
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1075

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1076

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #20, !dbg !1077, !srcloc !1080
  unreachable, !dbg !1077

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1081

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1082

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1083

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1085

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1083

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #15, !dbg !1087, !srcloc !1089
  br label %do.end75, !dbg !1087

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1083

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1090
  br label %return, !dbg !1090

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1091
  ret i32 %26, !dbg !1091
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1092 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !1098 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1102, metadata !DIExpression()), !dbg !1104
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1103, metadata !DIExpression()), !dbg !1105
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1106
  %and = and i32 %0, 17, !dbg !1106
  %cmp = icmp eq i32 %and, 0, !dbg !1106
  %lnot = xor i1 %cmp, true, !dbg !1106
  %lnot1 = xor i1 %lnot, true, !dbg !1106
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1106
  %conv = sext i32 %lnot.ext to i64, !dbg !1106
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1106
  %tobool = icmp ne i64 %expval, 0, !dbg !1106
  br i1 %tobool, label %if.then, label %if.end, !dbg !1108

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1109
  br label %return, !dbg !1109

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1110
  %and2 = and i32 %1, 1, !dbg !1112
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1112
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1113

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1114
  br label %return, !dbg !1114

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1115
  br label %return, !dbg !1115

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1117
  ret i32 %2, !dbg !1117
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1118 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1119 dso_local void @__compiletime_assert_117() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #4 align 16 !dbg !1122 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1127, metadata !DIExpression()), !dbg !1129
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1128, metadata !DIExpression()), !dbg !1130
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1131
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !1132
  %1 = load i32, ptr %n.addr, align 4, !dbg !1133
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #17, !dbg !1134
  ret void, !dbg !1135
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !1136 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1142, metadata !DIExpression()), !dbg !1144
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1143, metadata !DIExpression()), !dbg !1145
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1146
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #17, !dbg !1147
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1148
  %2 = load i32, ptr %i.addr, align 4, !dbg !1149
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #17, !dbg !1150
  ret void, !dbg !1151
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !1152 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1160, metadata !DIExpression()), !dbg !1162
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1161, metadata !DIExpression()), !dbg !1163
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1164
  %1 = load i64, ptr %size.addr, align 8, !dbg !1165
  %conv = trunc i64 %1 to i32, !dbg !1165
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !1166
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1167
  %3 = load i64, ptr %size.addr, align 8, !dbg !1167
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !1167
  ret void, !dbg !1168
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !1169 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1172, metadata !DIExpression()), !dbg !1174
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1173, metadata !DIExpression()), !dbg !1175
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1176
  %1 = load i32, ptr %i.addr, align 4, !dbg !1177
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #17, !dbg !1178
  ret void, !dbg !1179
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !1180 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1185, metadata !DIExpression()), !dbg !1187
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1186, metadata !DIExpression()), !dbg !1188
  ret i1 true, !dbg !1189
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !1190 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1195, metadata !DIExpression()), !dbg !1198
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1196, metadata !DIExpression()), !dbg !1199
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1197, metadata !DIExpression()), !dbg !1200
  ret void, !dbg !1201
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !1202 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1205, metadata !DIExpression()), !dbg !1207
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1206, metadata !DIExpression()), !dbg !1208
  br label %do.body, !dbg !1209

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !1210
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1210
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !1210
  store volatile i32 %0, ptr %counter, align 4, !dbg !1210
  br label %do.end, !dbg !1210

do.end:                                           ; preds = %do.body
  ret void, !dbg !1212
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !1213 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1218, metadata !DIExpression()), !dbg !1219
  %0 = load i64, ptr %word.addr, align 8, !dbg !1220
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #21, !dbg !1221, !srcloc !1222
  store i64 %1, ptr %word.addr, align 8, !dbg !1221
  %2 = load i64, ptr %word.addr, align 8, !dbg !1223
  ret i64 %2, !dbg !1224
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1225 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #4 align 16 !dbg !1226 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1230, metadata !DIExpression()), !dbg !1231
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1232
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #17, !dbg !1233
  ret i1 %call, !dbg !1234
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !1235 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1239, metadata !DIExpression()), !dbg !1241
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !1240, metadata !DIExpression()), !dbg !1242
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1243
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !1244
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !1245
  ret i1 %call, !dbg !1246
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !1247 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1251, metadata !DIExpression()), !dbg !1255
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1252, metadata !DIExpression()), !dbg !1256
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !1253, metadata !DIExpression()), !dbg !1257
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !1258
  call void @llvm.dbg.declare(metadata ptr %old, metadata !1254, metadata !DIExpression()), !dbg !1259
  %0 = load i32, ptr %i.addr, align 4, !dbg !1260
  %1 = load ptr, ptr %r.addr, align 8, !dbg !1261
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !1262
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #17, !dbg !1263
  store i32 %call, ptr %old, align 4, !dbg !1259
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !1264
  %tobool = icmp ne ptr %2, null, !dbg !1264
  br i1 %tobool, label %if.then, label %if.end, !dbg !1266

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !1267
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !1268
  store i32 %3, ptr %4, align 4, !dbg !1269
  br label %if.end, !dbg !1270

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !1271
  %6 = load i32, ptr %i.addr, align 4, !dbg !1273
  %cmp = icmp eq i32 %5, %6, !dbg !1274
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !1275

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !1276

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !1278

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !1280

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !1280

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !1278

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !1282

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !1284

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1284

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !1282, !srcloc !1286
  br label %do.cond7, !dbg !1282

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !1282

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !1278

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !1278

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !1287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1287

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !1288
  %cmp12 = icmp slt i32 %7, 0, !dbg !1288
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !1288

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !1288
  %9 = load i32, ptr %i.addr, align 4, !dbg !1288
  %sub = sub i32 %8, %9, !dbg !1288
  %cmp13 = icmp slt i32 %sub, 0, !dbg !1288
  br label %lor.end, !dbg !1288

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !1288
  %lnot14 = xor i1 %lnot, true, !dbg !1288
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !1288
  %conv = sext i32 %lnot.ext to i64, !dbg !1288
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1288
  %tobool15 = icmp ne i64 %expval, 0, !dbg !1288
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1290

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !1291
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #17, !dbg !1292
  br label %if.end17, !dbg !1292

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !1293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1293

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !1294
  %12 = load i1, ptr %retval, align 1, !dbg !1294
  ret i1 %12, !dbg !1294
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !1295 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1299, metadata !DIExpression()), !dbg !1301
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1300, metadata !DIExpression()), !dbg !1302
  br label %do.body, !dbg !1303

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1304

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1306
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !1307
  %1 = load i32, ptr %i.addr, align 4, !dbg !1308
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1309
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #17, !dbg !1310
  ret i32 %call, !dbg !1311
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1312 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !1315 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1317, metadata !DIExpression()), !dbg !1319
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1318, metadata !DIExpression()), !dbg !1320
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1321
  %1 = load i64, ptr %size.addr, align 8, !dbg !1322
  %conv = trunc i64 %1 to i32, !dbg !1322
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !1323
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1324
  %3 = load i64, ptr %size.addr, align 8, !dbg !1324
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !1324
  ret void, !dbg !1325
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !1326 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1328, metadata !DIExpression()), !dbg !1330
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1329, metadata !DIExpression()), !dbg !1331
  %0 = load i32, ptr %i.addr, align 4, !dbg !1332
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1333
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #17, !dbg !1334
  ret i32 %call, !dbg !1335
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !1336 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1338, metadata !DIExpression()), !dbg !1342
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1339, metadata !DIExpression()), !dbg !1343
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !1344
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1340, metadata !DIExpression()), !dbg !1344
  %0 = load i32, ptr %i.addr, align 4, !dbg !1344
  %sub = sub i32 0, %0, !dbg !1344
  store i32 %sub, ptr %__ret, align 4, !dbg !1344
  %1 = load i32, ptr %__ret, align 4, !dbg !1344
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1344
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !1344
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !1344, !srcloc !1345
  store i32 %3, ptr %__ret, align 4, !dbg !1344
  %4 = load i32, ptr %__ret, align 4, !dbg !1344
  store i32 %4, ptr %tmp, align 4, !dbg !1344
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !1346
  %5 = load i32, ptr %tmp, align 4, !dbg !1344
  ret i32 %5, !dbg !1347
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear(ptr noundef %dstp) #4 align 16 !dbg !1348 {
entry:
  %dstp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !1350, metadata !DIExpression()), !dbg !1351
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !1352
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !1352
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1352
  call void @bitmap_zero(ptr noundef %arraydecay, i32 noundef 64) #17, !dbg !1353
  ret void, !dbg !1354
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_zero(ptr noundef %dst, i32 noundef %nbits) #4 align 16 !dbg !1355 {
entry:
  %dst.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1361, metadata !DIExpression()), !dbg !1364
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !1362, metadata !DIExpression()), !dbg !1365
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !1366
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1363, metadata !DIExpression()), !dbg !1367
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !1368
  %add = add i32 %0, 63, !dbg !1368
  %and = and i32 %add, -64, !dbg !1368
  %div = udiv i32 %and, 8, !dbg !1368
  store i32 %div, ptr %len, align 4, !dbg !1367
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !1369
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !1369
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !1369

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !1369
  %cmp = icmp ule i32 %3, 64, !dbg !1369
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !1369

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !1369
  %cmp2 = icmp ugt i32 %4, 0, !dbg !1369
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1371

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !1372
  store i64 0, ptr %5, align 8, !dbg !1373
  br label %if.end, !dbg !1374

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %6 = load ptr, ptr %dst.addr, align 8, !dbg !1375
  %7 = load i32, ptr %len, align 4, !dbg !1376
  %conv = zext i32 %7 to i64, !dbg !1376
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %conv, i1 false), !dbg !1377
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !1378
  ret void, !dbg !1378
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !1379 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1386, metadata !DIExpression()), !dbg !1388
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1387, metadata !DIExpression()), !dbg !1389
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1390
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1391
  %div = sdiv i64 %1, 64, !dbg !1391
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1392
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !1393
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1394
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1395
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !1396
  ret void, !dbg !1397
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #6 align 16 !dbg !1398 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1402, metadata !DIExpression()), !dbg !1403
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1404
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #17, !dbg !1405
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !1406
  ret i32 %1, !dbg !1407
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !1408 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1410, metadata !DIExpression()), !dbg !1412
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1411, metadata !DIExpression()), !dbg !1413
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1414
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1416
  br i1 %1, label %if.then, label %if.else, !dbg !1417

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !1418
  %3 = load i64, ptr %nr.addr, align 8, !dbg !1418
  %shr = ashr i64 %3, 3, !dbg !1418
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !1418
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1420
  %and = and i64 %4, 7, !dbg !1420
  %sh_prom = trunc i64 %and to i32, !dbg !1420
  %shl = shl i32 1, %sh_prom, !dbg !1420
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #15, !dbg !1421, !srcloc !1422
  br label %if.end, !dbg !1423

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1424
  %6 = load i64, ptr %nr.addr, align 8, !dbg !1426
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #15, !dbg !1427, !srcloc !1428
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1429
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #6 align 16 !dbg !1430 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1434, metadata !DIExpression()), !dbg !1436
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1435, metadata !DIExpression()), !dbg !1437
  ret void, !dbg !1438
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_or(ptr noundef %dst, ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #4 align 16 !dbg !1439 {
entry:
  %dst.addr = alloca ptr, align 8
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1443, metadata !DIExpression()), !dbg !1447
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !1444, metadata !DIExpression()), !dbg !1448
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !1445, metadata !DIExpression()), !dbg !1449
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !1446, metadata !DIExpression()), !dbg !1450
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !1451
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1451
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !1451

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !1451
  %cmp = icmp ule i32 %2, 64, !dbg !1451
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !1451

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !1451
  %cmp2 = icmp ugt i32 %3, 0, !dbg !1451
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1453

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !1454
  %5 = load i64, ptr %4, align 8, !dbg !1455
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !1456
  %7 = load i64, ptr %6, align 8, !dbg !1457
  %or = or i64 %5, %7, !dbg !1458
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !1459
  store i64 %or, ptr %8, align 8, !dbg !1460
  br label %if.end, !dbg !1461

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !1462
  %10 = load ptr, ptr %src1.addr, align 8, !dbg !1463
  %11 = load ptr, ptr %src2.addr, align 8, !dbg !1464
  %12 = load i32, ptr %nbits.addr, align 4, !dbg !1465
  call void @__bitmap_or(ptr noundef %9, ptr noundef %10, ptr noundef %11, i32 noundef %12) #17, !dbg !1466
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1467
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1468 dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #7

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1469 dso_local i32 @_printk(ptr noundef, ...) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kref_get(ptr noundef %kref) #4 align 16 !dbg !1473 {
entry:
  %kref.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !1475, metadata !DIExpression()), !dbg !1476
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !1477
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !1478
  call void @refcount_inc(ptr noundef %refcount) #17, !dbg !1479
  ret void, !dbg !1480
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_inc(ptr noundef %r) #4 align 16 !dbg !1481 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1485, metadata !DIExpression()), !dbg !1486
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1487
  call void @__refcount_inc(ptr noundef %0, ptr noundef null) #17, !dbg !1488
  ret void, !dbg !1489
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_inc(ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !1490 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1494, metadata !DIExpression()), !dbg !1496
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !1495, metadata !DIExpression()), !dbg !1497
  %0 = load ptr, ptr %r.addr, align 8, !dbg !1498
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !1499
  call void @__refcount_add(i32 noundef 1, ptr noundef %0, ptr noundef %1) #17, !dbg !1500
  ret void, !dbg !1501
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__refcount_add(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #4 align 16 !dbg !1502 {
entry:
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1506, metadata !DIExpression()), !dbg !1510
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1507, metadata !DIExpression()), !dbg !1511
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !1508, metadata !DIExpression()), !dbg !1512
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15, !dbg !1513
  call void @llvm.dbg.declare(metadata ptr %old, metadata !1509, metadata !DIExpression()), !dbg !1514
  %0 = load i32, ptr %i.addr, align 4, !dbg !1515
  %1 = load ptr, ptr %r.addr, align 8, !dbg !1516
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !1517
  %call = call i32 @atomic_fetch_add_relaxed(i32 noundef %0, ptr noundef %refs) #17, !dbg !1518
  store i32 %call, ptr %old, align 4, !dbg !1514
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !1519
  %tobool = icmp ne ptr %2, null, !dbg !1519
  br i1 %tobool, label %if.then, label %if.end, !dbg !1521

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !1522
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !1523
  store i32 %3, ptr %4, align 4, !dbg !1524
  br label %if.end, !dbg !1525

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !1526
  %tobool1 = icmp ne i32 %5, 0, !dbg !1526
  %lnot = xor i1 %tobool1, true, !dbg !1526
  %lnot2 = xor i1 %lnot, true, !dbg !1526
  %lnot3 = xor i1 %lnot2, true, !dbg !1526
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1526
  %conv = sext i32 %lnot.ext to i64, !dbg !1526
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1526
  %tobool4 = icmp ne i64 %expval, 0, !dbg !1526
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !1528

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %r.addr, align 8, !dbg !1529
  call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 2) #17, !dbg !1530
  br label %if.end18, !dbg !1530

if.else:                                          ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !1531
  %cmp = icmp slt i32 %7, 0, !dbg !1531
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !1531

lor.rhs:                                          ; preds = %if.else
  %8 = load i32, ptr %old, align 4, !dbg !1531
  %9 = load i32, ptr %i.addr, align 4, !dbg !1531
  %add = add i32 %8, %9, !dbg !1531
  %cmp7 = icmp slt i32 %add, 0, !dbg !1531
  br label %lor.end, !dbg !1531

lor.end:                                          ; preds = %lor.rhs, %if.else
  %10 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %10, true, !dbg !1531
  %lnot11 = xor i1 %lnot9, true, !dbg !1531
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !1531
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !1531
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !1531
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !1531
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !1533

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !1534
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 1) #17, !dbg !1535
  br label %if.end17, !dbg !1535

if.end17:                                         ; preds = %if.then16, %lor.end
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15, !dbg !1536
  ret void, !dbg !1536
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !1537 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1539, metadata !DIExpression()), !dbg !1541
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1540, metadata !DIExpression()), !dbg !1542
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1543
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !1544
  %1 = load i32, ptr %i.addr, align 4, !dbg !1545
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1546
  %call = call i32 @raw_atomic_fetch_add_relaxed(i32 noundef %1, ptr noundef %2) #17, !dbg !1547
  ret i32 %call, !dbg !1548
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_add_relaxed(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !1549 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1551, metadata !DIExpression()), !dbg !1553
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1552, metadata !DIExpression()), !dbg !1554
  %0 = load i32, ptr %i.addr, align 4, !dbg !1555
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1556
  %call = call i32 @arch_atomic_fetch_add(i32 noundef %0, ptr noundef %1) #17, !dbg !1557
  ret i32 %call, !dbg !1558
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_add(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !1559 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1561, metadata !DIExpression()), !dbg !1565
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1562, metadata !DIExpression()), !dbg !1566
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !1567
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1563, metadata !DIExpression()), !dbg !1567
  %0 = load i32, ptr %i.addr, align 4, !dbg !1567
  store i32 %0, ptr %__ret, align 4, !dbg !1567
  %1 = load i32, ptr %__ret, align 4, !dbg !1567
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1567
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !1567
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #15, !dbg !1567, !srcloc !1568
  store i32 %3, ptr %__ret, align 4, !dbg !1567
  %4 = load i32, ptr %__ret, align 4, !dbg !1567
  store i32 %4, ptr %tmp, align 4, !dbg !1567
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !1569
  %5 = load i32, ptr %tmp, align 4, !dbg !1567
  ret i32 %5, !dbg !1570
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }
attributes #21 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_alloc_cpu_rmap174", scope: !2, file: !3, line: 60, type: !32, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.cpu_rmap.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/cpu_rmap\22 -D KBUILD_BASENAME=\22cpu_rmap\22 -D KBUILD_MODNAME=\22cpu_rmap\22 -D __KBUILD_MODNAME=kmod_cpu_rmap -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/cpu_rmap.ll lib/cpu_rmap.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !140, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/cpu_rmap.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bd1974278511b7f2b30025047565b1c9")
!4 = !{!5, !11, !21}
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
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !22, line: 119, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!25 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!26 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!27 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!28 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!29 = !{!30, !31, !33, !35, !7, !32, !44, !46, !49, !51, !52, !84, !86, !89, !90}
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !38, line: 19, size: 64, elements: !39)
!38 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!39 = !{!40}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !37, file: !38, line: 19, baseType: !41, size: 64)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 64, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 1)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !45, line: 154, baseType: !7)
!45 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !38, line: 913, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 64, elements: !42)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_rmap", file: !54, line: 23, size: 128, elements: !55)
!54 = !DIFile(filename: "./include/linux/cpu_rmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ea75dabca00e7bacfc24bbf17ff0b3b9")
!55 = !{!56, !69, !75, !76}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !53, file: !54, line: 24, baseType: !57, size: 32)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !58, line: 19, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !57, file: !58, line: 20, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !22, line: 113, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !22, line: 111, size: 32, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !62, file: !22, line: 112, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !45, line: 174, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 172, size: 32, elements: !67)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !66, file: !45, line: 173, baseType: !51, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !53, file: !54, line: 25, baseType: !70, size: 16, offset: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !71, line: 19, baseType: !72)
!71 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !73, line: 24, baseType: !74)
!73 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!74 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !53, file: !54, line: 26, baseType: !31, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "near", scope: !53, file: !54, line: 30, baseType: !77, offset: 128)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, elements: !82)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !53, file: !54, line: 27, size: 32, elements: !79)
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !78, file: !54, line: 28, baseType: !70, size: 16)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "dist", scope: !78, file: !54, line: 29, baseType: !70, size: 16, offset: 16)
!82 = !{!83}
!83 = !DISubrange(count: -1)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !34)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !88)
!88 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_glue", file: !3, line: 225, size: 576, elements: !92)
!92 = !{!93, !138, !139}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !91, file: !3, line: 226, baseType: !94, size: 448)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_notify", file: !95, line: 261, size: 448, elements: !96)
!95 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!96 = !{!97, !98, !99, !125, !133}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !94, file: !95, line: 262, baseType: !7, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !94, file: !95, line: 263, baseType: !57, size: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !94, file: !95, line: 264, baseType: !100, size: 256, offset: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !101, line: 98, size: 256, elements: !102)
!101 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!102 = !{!103, !113, !119}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !100, file: !101, line: 99, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !105, line: 13, baseType: !106)
!105 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !45, line: 181, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 179, size: 64, elements: !108)
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !107, file: !45, line: 180, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !71, line: 22, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !73, line: 30, baseType: !112)
!112 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !100, file: !101, line: 100, baseType: !114, size: 128, offset: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !45, line: 190, size: 128, elements: !115)
!115 = !{!116, !118}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !114, file: !45, line: 191, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !114, file: !45, line: 191, baseType: !117, size: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !100, file: !101, line: 101, baseType: !120, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !101, line: 21, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !94, file: !95, line: 265, baseType: !126, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, !130}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !38, line: 19, baseType: !37)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !94, file: !95, line: 266, baseType: !134, size: 64, offset: 384)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !137}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "rmap", scope: !91, file: !3, line: 227, baseType: !52, size: 64, offset: 448)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !91, file: !3, line: 228, baseType: !70, size: 16, offset: 512)
!140 = !{!0, !141, !143, !145, !150, !155, !160, !162, !164, !166, !168, !173}
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpu_rmap_put175", scope: !2, file: !3, line: 89, type: !32, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpu_rmap_add176", scope: !2, file: !3, line: 159, type: !32, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 186, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 264, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 33)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !152, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 208, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 26)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 216, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 200, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 25)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cpu_rmap_update177", scope: !2, file: !3, line: 221, type: !32, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_free_irq_cpu_rmap178", scope: !2, file: !3, line: 253, type: !32, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_irq_cpu_rmap_remove179", scope: !2, file: !3, line: 297, type: !32, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_irq_cpu_rmap_add180", scope: !2, file: !3, line: 339, type: !32, isLocal: true, isDefinition: true)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 168, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 21)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 271, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 336, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 42)
!178 = !{i32 7, !"Dwarf Version", i32 5}
!179 = !{i32 2, !"Debug Info Version", i32 3}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 8, !"cf-protection-branch", i32 1}
!182 = !{i32 4, !"function_return_thunk_extern", i32 1}
!183 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!184 = !{i32 1, !"Code Model", i32 2}
!185 = !{i32 1, !"override-stack-alignment", i32 8}
!186 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!187 = distinct !DISubprogram(name: "alloc_cpu_rmap", scope: !3, file: !3, line: 25, type: !188, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !190)
!188 = !DISubroutineType(types: !189)
!189 = !{!52, !7, !44}
!190 = !{!191, !192, !193, !194, !195}
!191 = !DILocalVariable(name: "size", arg: 1, scope: !187, file: !3, line: 25, type: !7)
!192 = !DILocalVariable(name: "flags", arg: 2, scope: !187, file: !3, line: 25, type: !44)
!193 = !DILocalVariable(name: "rmap", scope: !187, file: !3, line: 27, type: !52)
!194 = !DILocalVariable(name: "cpu", scope: !187, file: !3, line: 28, type: !7)
!195 = !DILocalVariable(name: "obj_offset", scope: !187, file: !3, line: 29, type: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 61, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !198, line: 72, baseType: !199)
!198 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !198, line: 16, baseType: !30)
!200 = !DILocation(line: 25, column: 46, scope: !187)
!201 = !DILocation(line: 25, column: 58, scope: !187)
!202 = !DILocation(line: 27, column: 2, scope: !187)
!203 = !DILocation(line: 27, column: 19, scope: !187)
!204 = !DILocation(line: 28, column: 2, scope: !187)
!205 = !DILocation(line: 28, column: 15, scope: !187)
!206 = !DILocation(line: 29, column: 2, scope: !187)
!207 = !DILocation(line: 29, column: 9, scope: !187)
!208 = !DILocation(line: 32, column: 6, scope: !209)
!209 = distinct !DILexicalBlock(scope: !187, file: !3, line: 32, column: 6)
!210 = !DILocation(line: 32, column: 11, scope: !209)
!211 = !DILocation(line: 32, column: 6, scope: !187)
!212 = !DILocation(line: 33, column: 3, scope: !209)
!213 = !DILocation(line: 36, column: 15, scope: !187)
!214 = !DILocation(line: 36, column: 13, scope: !187)
!215 = !DILocation(line: 39, column: 17, scope: !187)
!216 = !DILocation(line: 39, column: 30, scope: !187)
!217 = !DILocation(line: 39, column: 35, scope: !187)
!218 = !DILocation(line: 39, column: 28, scope: !187)
!219 = !DILocation(line: 39, column: 59, scope: !187)
!220 = !DILocation(line: 39, column: 9, scope: !187)
!221 = !DILocation(line: 39, column: 7, scope: !187)
!222 = !DILocation(line: 40, column: 7, scope: !223)
!223 = distinct !DILexicalBlock(scope: !187, file: !3, line: 40, column: 6)
!224 = !DILocation(line: 40, column: 6, scope: !187)
!225 = !DILocation(line: 41, column: 3, scope: !223)
!226 = !DILocation(line: 43, column: 13, scope: !187)
!227 = !DILocation(line: 43, column: 19, scope: !187)
!228 = !DILocation(line: 43, column: 2, scope: !187)
!229 = !DILocation(line: 44, column: 32, scope: !187)
!230 = !DILocation(line: 44, column: 39, scope: !187)
!231 = !DILocation(line: 44, column: 37, scope: !187)
!232 = !DILocation(line: 44, column: 2, scope: !187)
!233 = !DILocation(line: 44, column: 8, scope: !187)
!234 = !DILocation(line: 44, column: 12, scope: !187)
!235 = !DILocation(line: 52, column: 2, scope: !236)
!236 = distinct !DILexicalBlock(scope: !187, file: !3, line: 52, column: 2)
!237 = !DILocation(line: 52, column: 2, scope: !238)
!238 = distinct !DILexicalBlock(scope: !236, file: !3, line: 52, column: 2)
!239 = !DILocation(line: 53, column: 27, scope: !240)
!240 = distinct !DILexicalBlock(scope: !238, file: !3, line: 52, column: 29)
!241 = !DILocation(line: 53, column: 33, scope: !240)
!242 = !DILocation(line: 53, column: 31, scope: !240)
!243 = !DILocation(line: 53, column: 3, scope: !240)
!244 = !DILocation(line: 53, column: 9, scope: !240)
!245 = !DILocation(line: 53, column: 14, scope: !240)
!246 = !DILocation(line: 53, column: 19, scope: !240)
!247 = !DILocation(line: 53, column: 25, scope: !240)
!248 = !DILocation(line: 54, column: 3, scope: !240)
!249 = !DILocation(line: 54, column: 9, scope: !240)
!250 = !DILocation(line: 54, column: 14, scope: !240)
!251 = !DILocation(line: 54, column: 19, scope: !240)
!252 = !DILocation(line: 54, column: 24, scope: !240)
!253 = !DILocation(line: 55, column: 2, scope: !240)
!254 = distinct !{!254, !235, !255, !256, !257}
!255 = !DILocation(line: 55, column: 2, scope: !236)
!256 = !{!"llvm.loop.mustprogress"}
!257 = !{!"llvm.loop.unroll.disable"}
!258 = !DILocation(line: 57, column: 15, scope: !187)
!259 = !DILocation(line: 57, column: 2, scope: !187)
!260 = !DILocation(line: 57, column: 8, scope: !187)
!261 = !DILocation(line: 57, column: 13, scope: !187)
!262 = !DILocation(line: 58, column: 9, scope: !187)
!263 = !DILocation(line: 58, column: 2, scope: !187)
!264 = !DILocation(line: 59, column: 1, scope: !187)
!265 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !266, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!266 = !DISubroutineType(types: !267)
!267 = !{!32, !196, !44}
!268 = !{!269, !270}
!269 = !DILocalVariable(name: "size", arg: 1, scope: !265, file: !12, line: 719, type: !196)
!270 = !DILocalVariable(name: "flags", arg: 2, scope: !265, file: !12, line: 719, type: !44)
!271 = !DILocation(line: 719, column: 52, scope: !265)
!272 = !DILocation(line: 719, column: 64, scope: !265)
!273 = !DILocation(line: 721, column: 17, scope: !265)
!274 = !DILocation(line: 721, column: 23, scope: !265)
!275 = !DILocation(line: 721, column: 29, scope: !265)
!276 = !DILocation(line: 721, column: 9, scope: !265)
!277 = !DILocation(line: 721, column: 2, scope: !265)
!278 = distinct !DISubprogram(name: "kref_init", scope: !58, file: !58, line: 29, type: !135, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !279)
!279 = !{!280}
!280 = !DILocalVariable(name: "kref", arg: 1, scope: !278, file: !58, line: 29, type: !137)
!281 = !DILocation(line: 29, column: 43, scope: !278)
!282 = !DILocation(line: 31, column: 16, scope: !278)
!283 = !DILocation(line: 31, column: 22, scope: !278)
!284 = !DILocation(line: 31, column: 2, scope: !278)
!285 = !DILocation(line: 32, column: 1, scope: !278)
!286 = distinct !DISubprogram(name: "find_next_bit", scope: !287, file: !287, line: 54, type: !288, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !292)
!287 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!288 = !DISubroutineType(types: !289)
!289 = !{!30, !290, !30, !30}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!292 = !{!293, !294, !295, !296}
!293 = !DILocalVariable(name: "addr", arg: 1, scope: !286, file: !287, line: 54, type: !290)
!294 = !DILocalVariable(name: "size", arg: 2, scope: !286, file: !287, line: 54, type: !30)
!295 = !DILocalVariable(name: "offset", arg: 3, scope: !286, file: !287, line: 55, type: !30)
!296 = !DILocalVariable(name: "val", scope: !297, file: !287, line: 58, type: !30)
!297 = distinct !DILexicalBlock(scope: !298, file: !287, line: 57, column: 31)
!298 = distinct !DILexicalBlock(scope: !286, file: !287, line: 57, column: 6)
!299 = !DILocation(line: 54, column: 50, scope: !286)
!300 = !DILocation(line: 54, column: 70, scope: !286)
!301 = !DILocation(line: 55, column: 22, scope: !286)
!302 = !DILocation(line: 57, column: 6, scope: !298)
!303 = !DILocation(line: 57, column: 6, scope: !286)
!304 = !DILocation(line: 58, column: 3, scope: !297)
!305 = !DILocation(line: 58, column: 17, scope: !297)
!306 = !DILocation(line: 60, column: 7, scope: !307)
!307 = distinct !DILexicalBlock(scope: !297, file: !287, line: 60, column: 7)
!308 = !DILocation(line: 60, column: 7, scope: !297)
!309 = !DILocation(line: 61, column: 11, scope: !307)
!310 = !DILocation(line: 61, column: 4, scope: !307)
!311 = !DILocation(line: 63, column: 10, scope: !297)
!312 = !DILocation(line: 63, column: 9, scope: !297)
!313 = !DILocation(line: 63, column: 17, scope: !297)
!314 = !DILocation(line: 63, column: 15, scope: !297)
!315 = !DILocation(line: 63, column: 7, scope: !297)
!316 = !DILocation(line: 64, column: 10, scope: !297)
!317 = !DILocation(line: 64, column: 16, scope: !297)
!318 = !DILocation(line: 64, column: 29, scope: !297)
!319 = !DILocation(line: 64, column: 3, scope: !297)
!320 = !DILocation(line: 65, column: 2, scope: !298)
!321 = !DILocation(line: 67, column: 24, scope: !286)
!322 = !DILocation(line: 67, column: 30, scope: !286)
!323 = !DILocation(line: 67, column: 36, scope: !286)
!324 = !DILocation(line: 67, column: 9, scope: !286)
!325 = !DILocation(line: 67, column: 2, scope: !286)
!326 = !DILocation(line: 68, column: 1, scope: !286)
!327 = distinct !DISubprogram(name: "cpu_rmap_put", scope: !3, file: !3, line: 85, type: !328, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !330)
!328 = !DISubroutineType(types: !329)
!329 = !{!51, !52}
!330 = !{!331}
!331 = !DILocalVariable(name: "rmap", arg: 1, scope: !327, file: !3, line: 85, type: !52)
!332 = !DILocation(line: 85, column: 35, scope: !327)
!333 = !DILocation(line: 87, column: 19, scope: !327)
!334 = !DILocation(line: 87, column: 25, scope: !327)
!335 = !DILocation(line: 87, column: 9, scope: !327)
!336 = !DILocation(line: 87, column: 2, scope: !327)
!337 = distinct !DISubprogram(name: "kref_put", scope: !58, file: !58, line: 62, type: !338, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{!51, !137, !134}
!340 = !{!341, !342}
!341 = !DILocalVariable(name: "kref", arg: 1, scope: !337, file: !58, line: 62, type: !137)
!342 = !DILocalVariable(name: "release", arg: 2, scope: !337, file: !58, line: 62, type: !134)
!343 = !DILocation(line: 62, column: 41, scope: !337)
!344 = !DILocation(line: 62, column: 54, scope: !337)
!345 = !DILocation(line: 64, column: 29, scope: !346)
!346 = distinct !DILexicalBlock(scope: !337, file: !58, line: 64, column: 6)
!347 = !DILocation(line: 64, column: 35, scope: !346)
!348 = !DILocation(line: 64, column: 6, scope: !346)
!349 = !DILocation(line: 64, column: 6, scope: !337)
!350 = !DILocation(line: 65, column: 3, scope: !351)
!351 = distinct !DILexicalBlock(scope: !346, file: !58, line: 64, column: 46)
!352 = !DILocation(line: 65, column: 11, scope: !351)
!353 = !DILocation(line: 66, column: 3, scope: !351)
!354 = !DILocation(line: 68, column: 2, scope: !337)
!355 = !DILocation(line: 69, column: 1, scope: !337)
!356 = distinct !DISubprogram(name: "cpu_rmap_release", scope: !3, file: !3, line: 66, type: !135, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !357)
!357 = !{!358, !359, !360}
!358 = !DILocalVariable(name: "ref", arg: 1, scope: !356, file: !3, line: 66, type: !137)
!359 = !DILocalVariable(name: "rmap", scope: !356, file: !3, line: 68, type: !52)
!360 = !DILocalVariable(name: "__mptr", scope: !361, file: !3, line: 68, type: !32)
!361 = distinct !DILexicalBlock(scope: !356, file: !3, line: 68, column: 26)
!362 = !DILocation(line: 66, column: 43, scope: !356)
!363 = !DILocation(line: 68, column: 2, scope: !356)
!364 = !DILocation(line: 68, column: 19, scope: !356)
!365 = !DILocation(line: 68, column: 26, scope: !361)
!366 = !DILocation(line: 68, column: 26, scope: !356)
!367 = !DILocation(line: 69, column: 8, scope: !356)
!368 = !DILocation(line: 69, column: 2, scope: !356)
!369 = !DILocation(line: 70, column: 1, scope: !356)
!370 = distinct !DISubprogram(name: "cpu_rmap_add", scope: !3, file: !3, line: 149, type: !371, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !373)
!371 = !DISubroutineType(types: !372)
!372 = !{!51, !52, !32}
!373 = !{!374, !375, !376}
!374 = !DILocalVariable(name: "rmap", arg: 1, scope: !370, file: !3, line: 149, type: !52)
!375 = !DILocalVariable(name: "obj", arg: 2, scope: !370, file: !3, line: 149, type: !32)
!376 = !DILocalVariable(name: "index", scope: !370, file: !3, line: 151, type: !51)
!377 = !DILocation(line: 149, column: 35, scope: !370)
!378 = !DILocation(line: 149, column: 47, scope: !370)
!379 = !DILocation(line: 151, column: 2, scope: !370)
!380 = !DILocation(line: 151, column: 6, scope: !370)
!381 = !DILocation(line: 151, column: 29, scope: !370)
!382 = !DILocation(line: 151, column: 14, scope: !370)
!383 = !DILocation(line: 153, column: 6, scope: !384)
!384 = distinct !DILexicalBlock(scope: !370, file: !3, line: 153, column: 6)
!385 = !DILocation(line: 153, column: 12, scope: !384)
!386 = !DILocation(line: 153, column: 6, scope: !370)
!387 = !DILocation(line: 154, column: 10, scope: !384)
!388 = !DILocation(line: 154, column: 3, scope: !384)
!389 = !DILocation(line: 156, column: 21, scope: !370)
!390 = !DILocation(line: 156, column: 2, scope: !370)
!391 = !DILocation(line: 156, column: 8, scope: !370)
!392 = !DILocation(line: 156, column: 12, scope: !370)
!393 = !DILocation(line: 156, column: 19, scope: !370)
!394 = !DILocation(line: 157, column: 9, scope: !370)
!395 = !DILocation(line: 157, column: 2, scope: !370)
!396 = !DILocation(line: 158, column: 1, scope: !370)
!397 = distinct !DISubprogram(name: "get_free_index", scope: !3, file: !3, line: 131, type: !328, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !398)
!398 = !{!399, !400}
!399 = !DILocalVariable(name: "rmap", arg: 1, scope: !397, file: !3, line: 131, type: !52)
!400 = !DILocalVariable(name: "i", scope: !397, file: !3, line: 133, type: !51)
!401 = !DILocation(line: 131, column: 44, scope: !397)
!402 = !DILocation(line: 133, column: 2, scope: !397)
!403 = !DILocation(line: 133, column: 6, scope: !397)
!404 = !DILocation(line: 135, column: 9, scope: !405)
!405 = distinct !DILexicalBlock(scope: !397, file: !3, line: 135, column: 2)
!406 = !DILocation(line: 135, column: 7, scope: !405)
!407 = !DILocation(line: 135, column: 14, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !3, line: 135, column: 2)
!409 = !DILocation(line: 135, column: 18, scope: !408)
!410 = !DILocation(line: 135, column: 24, scope: !408)
!411 = !DILocation(line: 135, column: 16, scope: !408)
!412 = !DILocation(line: 135, column: 2, scope: !405)
!413 = !DILocation(line: 136, column: 8, scope: !414)
!414 = distinct !DILexicalBlock(scope: !408, file: !3, line: 136, column: 7)
!415 = !DILocation(line: 136, column: 14, scope: !414)
!416 = !DILocation(line: 136, column: 18, scope: !414)
!417 = !DILocation(line: 136, column: 7, scope: !408)
!418 = !DILocation(line: 137, column: 11, scope: !414)
!419 = !DILocation(line: 137, column: 4, scope: !414)
!420 = !DILocation(line: 136, column: 19, scope: !414)
!421 = !DILocation(line: 135, column: 31, scope: !408)
!422 = !DILocation(line: 135, column: 2, scope: !408)
!423 = distinct !{!423, !412, !424, !256, !257}
!424 = !DILocation(line: 137, column: 11, scope: !405)
!425 = !DILocation(line: 139, column: 2, scope: !397)
!426 = !DILocation(line: 140, column: 1, scope: !397)
!427 = distinct !DISubprogram(name: "cpu_rmap_update", scope: !3, file: !3, line: 167, type: !428, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !430)
!428 = !DISubroutineType(types: !429)
!429 = !{!51, !52, !70, !35}
!430 = !{!431, !432, !433, !434, !435, !436, !445, !447, !451}
!431 = !DILocalVariable(name: "rmap", arg: 1, scope: !427, file: !3, line: 167, type: !52)
!432 = !DILocalVariable(name: "index", arg: 2, scope: !427, file: !3, line: 167, type: !70)
!433 = !DILocalVariable(name: "affinity", arg: 3, scope: !427, file: !3, line: 168, type: !35)
!434 = !DILocalVariable(name: "update_mask", scope: !427, file: !3, line: 170, type: !47)
!435 = !DILocalVariable(name: "cpu", scope: !427, file: !3, line: 171, type: !7)
!436 = !DILocalVariable(name: "__vpp_verify", scope: !437, file: !3, line: 203, type: !443)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 203, column: 6)
!438 = distinct !DILexicalBlock(scope: !439, file: !3, line: 203, column: 6)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 202, column: 7)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 201, column: 33)
!441 = distinct !DILexicalBlock(scope: !442, file: !3, line: 201, column: 2)
!442 = distinct !DILexicalBlock(scope: !427, file: !3, line: 201, column: 2)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!445 = !DILocalVariable(name: "__ptr", scope: !446, file: !3, line: 203, type: !30)
!446 = distinct !DILexicalBlock(scope: !438, file: !3, line: 203, column: 6)
!447 = !DILocalVariable(name: "__vpp_verify", scope: !448, file: !3, line: 206, type: !443)
!448 = distinct !DILexicalBlock(scope: !449, file: !3, line: 206, column: 6)
!449 = distinct !DILexicalBlock(scope: !450, file: !3, line: 206, column: 6)
!450 = distinct !DILexicalBlock(scope: !440, file: !3, line: 205, column: 7)
!451 = !DILocalVariable(name: "__ptr", scope: !452, file: !3, line: 206, type: !30)
!452 = distinct !DILexicalBlock(scope: !449, file: !3, line: 206, column: 6)
!453 = !DILocation(line: 167, column: 38, scope: !427)
!454 = !DILocation(line: 167, column: 48, scope: !427)
!455 = !DILocation(line: 168, column: 29, scope: !427)
!456 = !DILocation(line: 170, column: 2, scope: !427)
!457 = !DILocation(line: 170, column: 16, scope: !427)
!458 = !DILocation(line: 171, column: 2, scope: !427)
!459 = !DILocation(line: 171, column: 15, scope: !427)
!460 = !DILocation(line: 173, column: 6, scope: !461)
!461 = distinct !DILexicalBlock(scope: !427, file: !3, line: 173, column: 6)
!462 = !DILocation(line: 173, column: 6, scope: !427)
!463 = !DILocation(line: 174, column: 3, scope: !461)
!464 = !DILocation(line: 179, column: 2, scope: !465)
!465 = distinct !DILexicalBlock(scope: !427, file: !3, line: 179, column: 2)
!466 = !DILocation(line: 179, column: 2, scope: !467)
!467 = distinct !DILexicalBlock(scope: !465, file: !3, line: 179, column: 2)
!468 = !DILocation(line: 180, column: 7, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 180, column: 7)
!470 = distinct !DILexicalBlock(scope: !467, file: !3, line: 179, column: 27)
!471 = !DILocation(line: 180, column: 13, scope: !469)
!472 = !DILocation(line: 180, column: 18, scope: !469)
!473 = !DILocation(line: 180, column: 23, scope: !469)
!474 = !DILocation(line: 180, column: 32, scope: !469)
!475 = !DILocation(line: 180, column: 29, scope: !469)
!476 = !DILocation(line: 180, column: 7, scope: !470)
!477 = !DILocation(line: 181, column: 4, scope: !478)
!478 = distinct !DILexicalBlock(scope: !469, file: !3, line: 180, column: 39)
!479 = !DILocation(line: 181, column: 10, scope: !478)
!480 = !DILocation(line: 181, column: 15, scope: !478)
!481 = !DILocation(line: 181, column: 20, scope: !478)
!482 = !DILocation(line: 181, column: 25, scope: !478)
!483 = !DILocation(line: 182, column: 20, scope: !478)
!484 = !DILocation(line: 182, column: 25, scope: !478)
!485 = !DILocation(line: 182, column: 4, scope: !478)
!486 = !DILocation(line: 183, column: 3, scope: !478)
!487 = !DILocation(line: 184, column: 2, scope: !470)
!488 = distinct !{!488, !464, !489, !256, !257}
!489 = !DILocation(line: 184, column: 2, scope: !465)
!490 = !DILocation(line: 186, column: 19, scope: !427)
!491 = !DILocation(line: 186, column: 2, scope: !427)
!492 = !DILocation(line: 191, column: 2, scope: !493)
!493 = distinct !DILexicalBlock(scope: !427, file: !3, line: 191, column: 2)
!494 = !DILocation(line: 191, column: 2, scope: !495)
!495 = distinct !DILexicalBlock(scope: !493, file: !3, line: 191, column: 2)
!496 = !DILocation(line: 192, column: 27, scope: !497)
!497 = distinct !DILexicalBlock(scope: !495, file: !3, line: 191, column: 30)
!498 = !DILocation(line: 192, column: 3, scope: !497)
!499 = !DILocation(line: 192, column: 9, scope: !497)
!500 = !DILocation(line: 192, column: 14, scope: !497)
!501 = !DILocation(line: 192, column: 19, scope: !497)
!502 = !DILocation(line: 192, column: 25, scope: !497)
!503 = !DILocation(line: 193, column: 3, scope: !497)
!504 = !DILocation(line: 193, column: 9, scope: !497)
!505 = !DILocation(line: 193, column: 14, scope: !497)
!506 = !DILocation(line: 193, column: 19, scope: !497)
!507 = !DILocation(line: 193, column: 24, scope: !497)
!508 = !DILocation(line: 194, column: 14, scope: !497)
!509 = !DILocation(line: 194, column: 27, scope: !497)
!510 = !DILocation(line: 195, column: 35, scope: !497)
!511 = !DILocation(line: 195, column: 23, scope: !497)
!512 = !DILocation(line: 195, column: 7, scope: !497)
!513 = !DILocation(line: 194, column: 3, scope: !497)
!514 = !DILocation(line: 196, column: 2, scope: !497)
!515 = distinct !{!515, !492, !516, !256, !257}
!516 = !DILocation(line: 196, column: 2, scope: !493)
!517 = !DILocation(line: 198, column: 19, scope: !427)
!518 = !DILocation(line: 198, column: 2, scope: !427)
!519 = !DILocation(line: 201, column: 2, scope: !442)
!520 = !DILocation(line: 201, column: 2, scope: !441)
!521 = !DILocation(line: 202, column: 27, scope: !439)
!522 = !DILocation(line: 202, column: 33, scope: !439)
!523 = !DILocation(line: 203, column: 6, scope: !438)
!524 = !DILocation(line: 203, column: 6, scope: !437)
!525 = !DILocation(line: 203, column: 6, scope: !446)
!526 = !DILocation(line: 203, column: 6, scope: !439)
!527 = !DILocation(line: 202, column: 7, scope: !439)
!528 = !DILocation(line: 202, column: 7, scope: !440)
!529 = !DILocation(line: 204, column: 4, scope: !439)
!530 = !DILocation(line: 205, column: 27, scope: !450)
!531 = !DILocation(line: 205, column: 33, scope: !450)
!532 = !DILocation(line: 206, column: 6, scope: !449)
!533 = !DILocation(line: 206, column: 6, scope: !448)
!534 = !DILocation(line: 206, column: 6, scope: !452)
!535 = !DILocation(line: 206, column: 6, scope: !450)
!536 = !DILocation(line: 205, column: 7, scope: !450)
!537 = !DILocation(line: 205, column: 7, scope: !440)
!538 = !DILocation(line: 207, column: 4, scope: !450)
!539 = !DILocation(line: 208, column: 27, scope: !540)
!540 = distinct !DILexicalBlock(scope: !440, file: !3, line: 208, column: 7)
!541 = !DILocation(line: 208, column: 33, scope: !540)
!542 = !DILocation(line: 209, column: 34, scope: !540)
!543 = !DILocation(line: 209, column: 22, scope: !540)
!544 = !DILocation(line: 209, column: 6, scope: !540)
!545 = !DILocation(line: 208, column: 7, scope: !540)
!546 = !DILocation(line: 208, column: 7, scope: !440)
!547 = !DILocation(line: 210, column: 4, scope: !540)
!548 = !DILocation(line: 214, column: 2, scope: !440)
!549 = distinct !{!549, !519, !550, !256, !257}
!550 = !DILocation(line: 214, column: 2, scope: !442)
!551 = !DILocation(line: 216, column: 19, scope: !427)
!552 = !DILocation(line: 216, column: 2, scope: !427)
!553 = !DILocation(line: 218, column: 19, scope: !427)
!554 = !DILocation(line: 218, column: 2, scope: !427)
!555 = !DILocation(line: 219, column: 2, scope: !427)
!556 = !DILocation(line: 220, column: 1, scope: !427)
!557 = distinct !DISubprogram(name: "zalloc_cpumask_var", scope: !38, file: !38, line: 929, type: !558, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !562)
!558 = !DISubroutineType(types: !559)
!559 = !{!560, !46, !44}
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !45, line: 35, baseType: !561)
!561 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!562 = !{!563, !564}
!563 = !DILocalVariable(name: "mask", arg: 1, scope: !557, file: !38, line: 929, type: !46)
!564 = !DILocalVariable(name: "flags", arg: 2, scope: !557, file: !38, line: 929, type: !44)
!565 = !DILocation(line: 929, column: 54, scope: !557)
!566 = !DILocation(line: 929, column: 66, scope: !557)
!567 = !DILocation(line: 931, column: 17, scope: !557)
!568 = !DILocation(line: 931, column: 16, scope: !557)
!569 = !DILocation(line: 931, column: 2, scope: !557)
!570 = !DILocation(line: 932, column: 2, scope: !557)
!571 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !38, file: !38, line: 469, type: !572, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !575)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !7, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!575 = !{!576, !577}
!576 = !DILocalVariable(name: "cpu", arg: 1, scope: !571, file: !38, line: 469, type: !7)
!577 = !DILocalVariable(name: "dstp", arg: 2, scope: !571, file: !38, line: 469, type: !574)
!578 = !DILocation(line: 469, column: 58, scope: !571)
!579 = !DILocation(line: 469, column: 79, scope: !571)
!580 = !DILocation(line: 471, column: 24, scope: !571)
!581 = !DILocation(line: 471, column: 10, scope: !571)
!582 = !DILocation(line: 471, column: 30, scope: !571)
!583 = !DILocation(line: 471, column: 2, scope: !571)
!584 = !DILocation(line: 472, column: 1, scope: !571)
!585 = distinct !DISubprogram(name: "debug_print_rmap", scope: !3, file: !3, line: 126, type: !586, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !592)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !588, !590}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!592 = !{!593, !594}
!593 = !DILocalVariable(name: "rmap", arg: 1, scope: !585, file: !3, line: 126, type: !588)
!594 = !DILocalVariable(name: "prefix", arg: 2, scope: !585, file: !3, line: 126, type: !590)
!595 = !DILocation(line: 126, column: 41, scope: !585)
!596 = !DILocation(line: 126, column: 59, scope: !585)
!597 = !DILocation(line: 128, column: 1, scope: !585)
!598 = distinct !DISubprogram(name: "cpumask_or", scope: !38, file: !38, line: 579, type: !599, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !601)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !574, !35, !35}
!601 = !{!602, !603, !604}
!602 = !DILocalVariable(name: "dstp", arg: 1, scope: !598, file: !38, line: 579, type: !574)
!603 = !DILocalVariable(name: "src1p", arg: 2, scope: !598, file: !38, line: 579, type: !35)
!604 = !DILocalVariable(name: "src2p", arg: 3, scope: !598, file: !38, line: 580, type: !35)
!605 = !DILocation(line: 579, column: 47, scope: !598)
!606 = !DILocation(line: 579, column: 75, scope: !598)
!607 = !DILocation(line: 580, column: 32, scope: !598)
!608 = !DILocation(line: 582, column: 12, scope: !598)
!609 = !DILocation(line: 582, column: 32, scope: !598)
!610 = !DILocation(line: 583, column: 11, scope: !598)
!611 = !DILocation(line: 582, column: 2, scope: !598)
!612 = !DILocation(line: 584, column: 1, scope: !598)
!613 = distinct !DISubprogram(name: "cpumask_of_node", scope: !614, file: !614, line: 70, type: !615, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !617)
!614 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "120eda241c1b2b25166ee71f2a584d2d")
!615 = !DISubroutineType(types: !616)
!616 = !{!35, !51}
!617 = !{!618}
!618 = !DILocalVariable(name: "node", arg: 1, scope: !613, file: !614, line: 70, type: !51)
!619 = !DILocation(line: 70, column: 57, scope: !613)
!620 = !DILocation(line: 72, column: 29, scope: !613)
!621 = !DILocation(line: 72, column: 9, scope: !613)
!622 = !DILocation(line: 72, column: 2, scope: !613)
!623 = distinct !DISubprogram(name: "cpu_to_node", scope: !624, file: !624, line: 94, type: !625, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !627)
!624 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!625 = !DISubroutineType(types: !626)
!626 = !{!51, !51}
!627 = !{!628, !629, !632}
!628 = !DILocalVariable(name: "cpu", arg: 1, scope: !623, file: !624, line: 94, type: !51)
!629 = !DILocalVariable(name: "__vpp_verify", scope: !630, file: !624, line: 96, type: !443)
!630 = distinct !DILexicalBlock(scope: !631, file: !624, line: 96, column: 9)
!631 = distinct !DILexicalBlock(scope: !623, file: !624, line: 96, column: 9)
!632 = !DILocalVariable(name: "__ptr", scope: !633, file: !624, line: 96, type: !30)
!633 = distinct !DILexicalBlock(scope: !631, file: !624, line: 96, column: 9)
!634 = !DILocation(line: 94, column: 35, scope: !623)
!635 = !DILocation(line: 96, column: 9, scope: !631)
!636 = !DILocation(line: 96, column: 9, scope: !630)
!637 = !DILocation(line: 96, column: 9, scope: !633)
!638 = !DILocation(line: 96, column: 9, scope: !623)
!639 = !DILocation(line: 96, column: 2, scope: !623)
!640 = distinct !DISubprogram(name: "cpu_rmap_copy_neigh", scope: !3, file: !3, line: 94, type: !641, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{!560, !52, !7, !35, !70}
!643 = !{!644, !645, !646, !647, !648}
!644 = !DILocalVariable(name: "rmap", arg: 1, scope: !640, file: !3, line: 94, type: !52)
!645 = !DILocalVariable(name: "cpu", arg: 2, scope: !640, file: !3, line: 94, type: !7)
!646 = !DILocalVariable(name: "mask", arg: 3, scope: !640, file: !3, line: 95, type: !35)
!647 = !DILocalVariable(name: "dist", arg: 4, scope: !640, file: !3, line: 95, type: !70)
!648 = !DILocalVariable(name: "neigh", scope: !640, file: !3, line: 97, type: !51)
!649 = !DILocation(line: 94, column: 50, scope: !640)
!650 = !DILocation(line: 94, column: 69, scope: !640)
!651 = !DILocation(line: 95, column: 27, scope: !640)
!652 = !DILocation(line: 95, column: 37, scope: !640)
!653 = !DILocation(line: 97, column: 2, scope: !640)
!654 = !DILocation(line: 97, column: 6, scope: !640)
!655 = !DILocation(line: 99, column: 2, scope: !656)
!656 = distinct !DILexicalBlock(scope: !640, file: !3, line: 99, column: 2)
!657 = !DILocation(line: 99, column: 2, scope: !658)
!658 = distinct !DILexicalBlock(scope: !656, file: !3, line: 99, column: 2)
!659 = !DILocation(line: 100, column: 7, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 100, column: 7)
!661 = distinct !DILexicalBlock(scope: !658, file: !3, line: 99, column: 28)
!662 = !DILocation(line: 100, column: 13, scope: !660)
!663 = !DILocation(line: 100, column: 18, scope: !660)
!664 = !DILocation(line: 100, column: 23, scope: !660)
!665 = !DILocation(line: 100, column: 30, scope: !660)
!666 = !DILocation(line: 100, column: 28, scope: !660)
!667 = !DILocation(line: 100, column: 35, scope: !660)
!668 = !DILocation(line: 101, column: 7, scope: !660)
!669 = !DILocation(line: 101, column: 13, scope: !660)
!670 = !DILocation(line: 101, column: 18, scope: !660)
!671 = !DILocation(line: 101, column: 25, scope: !660)
!672 = !DILocation(line: 101, column: 33, scope: !660)
!673 = !DILocation(line: 101, column: 30, scope: !660)
!674 = !DILocation(line: 100, column: 7, scope: !661)
!675 = !DILocation(line: 102, column: 28, scope: !676)
!676 = distinct !DILexicalBlock(scope: !660, file: !3, line: 101, column: 39)
!677 = !DILocation(line: 102, column: 34, scope: !676)
!678 = !DILocation(line: 102, column: 39, scope: !676)
!679 = !DILocation(line: 102, column: 46, scope: !676)
!680 = !DILocation(line: 102, column: 4, scope: !676)
!681 = !DILocation(line: 102, column: 10, scope: !676)
!682 = !DILocation(line: 102, column: 15, scope: !676)
!683 = !DILocation(line: 102, column: 20, scope: !676)
!684 = !DILocation(line: 102, column: 26, scope: !676)
!685 = !DILocation(line: 103, column: 27, scope: !676)
!686 = !DILocation(line: 103, column: 4, scope: !676)
!687 = !DILocation(line: 103, column: 10, scope: !676)
!688 = !DILocation(line: 103, column: 15, scope: !676)
!689 = !DILocation(line: 103, column: 20, scope: !676)
!690 = !DILocation(line: 103, column: 25, scope: !676)
!691 = !DILocation(line: 104, column: 4, scope: !676)
!692 = !DILocation(line: 106, column: 2, scope: !661)
!693 = distinct !{!693, !655, !694, !256, !257}
!694 = !DILocation(line: 106, column: 2, scope: !656)
!695 = !DILocation(line: 107, column: 2, scope: !640)
!696 = !DILocation(line: 108, column: 1, scope: !640)
!697 = distinct !DISubprogram(name: "free_cpumask_var", scope: !38, file: !38, line: 946, type: !698, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !574}
!700 = !{!701}
!701 = !DILocalVariable(name: "mask", arg: 1, scope: !697, file: !38, line: 946, type: !574)
!702 = !DILocation(line: 946, column: 51, scope: !697)
!703 = !DILocation(line: 948, column: 1, scope: !697)
!704 = distinct !DISubprogram(name: "free_irq_cpu_rmap", scope: !3, file: !3, line: 237, type: !705, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !707)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !52}
!707 = !{!708, !709, !710}
!708 = !DILocalVariable(name: "rmap", arg: 1, scope: !704, file: !3, line: 237, type: !52)
!709 = !DILocalVariable(name: "glue", scope: !704, file: !3, line: 239, type: !90)
!710 = !DILocalVariable(name: "index", scope: !704, file: !3, line: 240, type: !70)
!711 = !DILocation(line: 237, column: 41, scope: !704)
!712 = !DILocation(line: 239, column: 2, scope: !704)
!713 = !DILocation(line: 239, column: 19, scope: !704)
!714 = !DILocation(line: 240, column: 2, scope: !704)
!715 = !DILocation(line: 240, column: 6, scope: !704)
!716 = !DILocation(line: 242, column: 7, scope: !717)
!717 = distinct !DILexicalBlock(scope: !704, file: !3, line: 242, column: 6)
!718 = !DILocation(line: 242, column: 6, scope: !704)
!719 = !DILocation(line: 243, column: 3, scope: !717)
!720 = !DILocation(line: 245, column: 13, scope: !721)
!721 = distinct !DILexicalBlock(scope: !704, file: !3, line: 245, column: 2)
!722 = !DILocation(line: 245, column: 7, scope: !721)
!723 = !DILocation(line: 245, column: 18, scope: !724)
!724 = distinct !DILexicalBlock(scope: !721, file: !3, line: 245, column: 2)
!725 = !DILocation(line: 245, column: 26, scope: !724)
!726 = !DILocation(line: 245, column: 32, scope: !724)
!727 = !DILocation(line: 245, column: 24, scope: !724)
!728 = !DILocation(line: 245, column: 2, scope: !721)
!729 = !DILocation(line: 246, column: 10, scope: !730)
!730 = distinct !DILexicalBlock(scope: !724, file: !3, line: 245, column: 47)
!731 = !DILocation(line: 246, column: 16, scope: !730)
!732 = !DILocation(line: 246, column: 20, scope: !730)
!733 = !DILocation(line: 246, column: 8, scope: !730)
!734 = !DILocation(line: 247, column: 7, scope: !735)
!735 = distinct !DILexicalBlock(scope: !730, file: !3, line: 247, column: 7)
!736 = !DILocation(line: 247, column: 7, scope: !730)
!737 = !DILocation(line: 248, column: 30, scope: !735)
!738 = !DILocation(line: 248, column: 36, scope: !735)
!739 = !DILocation(line: 248, column: 43, scope: !735)
!740 = !DILocation(line: 248, column: 4, scope: !735)
!741 = !DILocation(line: 249, column: 2, scope: !730)
!742 = !DILocation(line: 245, column: 43, scope: !724)
!743 = !DILocation(line: 245, column: 2, scope: !724)
!744 = distinct !{!744, !728, !745, !256, !257}
!745 = !DILocation(line: 249, column: 2, scope: !721)
!746 = !DILocation(line: 251, column: 15, scope: !704)
!747 = !DILocation(line: 251, column: 2, scope: !704)
!748 = !DILocation(line: 252, column: 1, scope: !704)
!749 = !DISubprogram(name: "irq_set_affinity_notifier", scope: !95, file: !95, line: 358, type: !750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!750 = !DISubroutineType(types: !751)
!751 = !{!51, !7, !129}
!752 = distinct !DISubprogram(name: "irq_cpu_rmap_remove", scope: !3, file: !3, line: 293, type: !753, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !755)
!753 = !DISubroutineType(types: !754)
!754 = !{!51, !52, !51}
!755 = !{!756, !757}
!756 = !DILocalVariable(name: "rmap", arg: 1, scope: !752, file: !3, line: 293, type: !52)
!757 = !DILocalVariable(name: "irq", arg: 2, scope: !752, file: !3, line: 293, type: !51)
!758 = !DILocation(line: 293, column: 42, scope: !752)
!759 = !DILocation(line: 293, column: 52, scope: !752)
!760 = !DILocation(line: 295, column: 35, scope: !752)
!761 = !DILocation(line: 295, column: 9, scope: !752)
!762 = !DILocation(line: 295, column: 2, scope: !752)
!763 = distinct !DISubprogram(name: "irq_cpu_rmap_add", scope: !3, file: !3, line: 310, type: !753, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !764)
!764 = !{!765, !766, !767, !768, !769, !770}
!765 = !DILocalVariable(name: "rmap", arg: 1, scope: !763, file: !3, line: 310, type: !52)
!766 = !DILocalVariable(name: "irq", arg: 2, scope: !763, file: !3, line: 310, type: !51)
!767 = !DILocalVariable(name: "glue", scope: !763, file: !3, line: 312, type: !90)
!768 = !DILocalVariable(name: "rc", scope: !763, file: !3, line: 313, type: !51)
!769 = !DILabel(scope: !763, name: "err_set", file: !3, line: 332)
!770 = !DILabel(scope: !763, name: "err_add", file: !3, line: 334)
!771 = !DILocation(line: 310, column: 39, scope: !763)
!772 = !DILocation(line: 310, column: 49, scope: !763)
!773 = !DILocation(line: 312, column: 2, scope: !763)
!774 = !DILocation(line: 312, column: 19, scope: !763)
!775 = !DILocation(line: 312, column: 26, scope: !763)
!776 = !DILocation(line: 313, column: 2, scope: !763)
!777 = !DILocation(line: 313, column: 6, scope: !763)
!778 = !DILocation(line: 315, column: 7, scope: !779)
!779 = distinct !DILexicalBlock(scope: !763, file: !3, line: 315, column: 6)
!780 = !DILocation(line: 315, column: 6, scope: !763)
!781 = !DILocation(line: 316, column: 3, scope: !779)
!782 = !DILocation(line: 317, column: 2, scope: !763)
!783 = !DILocation(line: 317, column: 8, scope: !763)
!784 = !DILocation(line: 317, column: 15, scope: !763)
!785 = !DILocation(line: 317, column: 22, scope: !763)
!786 = !DILocation(line: 318, column: 2, scope: !763)
!787 = !DILocation(line: 318, column: 8, scope: !763)
!788 = !DILocation(line: 318, column: 15, scope: !763)
!789 = !DILocation(line: 318, column: 23, scope: !763)
!790 = !DILocation(line: 319, column: 15, scope: !763)
!791 = !DILocation(line: 319, column: 2, scope: !763)
!792 = !DILocation(line: 319, column: 8, scope: !763)
!793 = !DILocation(line: 319, column: 13, scope: !763)
!794 = !DILocation(line: 320, column: 15, scope: !763)
!795 = !DILocation(line: 320, column: 2, scope: !763)
!796 = !DILocation(line: 321, column: 20, scope: !763)
!797 = !DILocation(line: 321, column: 26, scope: !763)
!798 = !DILocation(line: 321, column: 7, scope: !763)
!799 = !DILocation(line: 321, column: 5, scope: !763)
!800 = !DILocation(line: 322, column: 6, scope: !801)
!801 = distinct !DILexicalBlock(scope: !763, file: !3, line: 322, column: 6)
!802 = !DILocation(line: 322, column: 9, scope: !801)
!803 = !DILocation(line: 322, column: 6, scope: !763)
!804 = !DILocation(line: 323, column: 3, scope: !801)
!805 = !DILocation(line: 325, column: 16, scope: !763)
!806 = !DILocation(line: 325, column: 2, scope: !763)
!807 = !DILocation(line: 325, column: 8, scope: !763)
!808 = !DILocation(line: 325, column: 14, scope: !763)
!809 = !DILocation(line: 326, column: 33, scope: !763)
!810 = !DILocation(line: 326, column: 39, scope: !763)
!811 = !DILocation(line: 326, column: 45, scope: !763)
!812 = !DILocation(line: 326, column: 7, scope: !763)
!813 = !DILocation(line: 326, column: 5, scope: !763)
!814 = !DILocation(line: 327, column: 6, scope: !815)
!815 = distinct !DILexicalBlock(scope: !763, file: !3, line: 327, column: 6)
!816 = !DILocation(line: 327, column: 6, scope: !763)
!817 = !DILocation(line: 328, column: 3, scope: !815)
!818 = !DILocation(line: 330, column: 9, scope: !763)
!819 = !DILocation(line: 330, column: 2, scope: !763)
!820 = !DILocation(line: 332, column: 1, scope: !763)
!821 = !DILocation(line: 333, column: 2, scope: !763)
!822 = !DILocation(line: 333, column: 8, scope: !763)
!823 = !DILocation(line: 333, column: 12, scope: !763)
!824 = !DILocation(line: 333, column: 18, scope: !763)
!825 = !DILocation(line: 333, column: 25, scope: !763)
!826 = !DILocation(line: 334, column: 1, scope: !763)
!827 = !DILocation(line: 335, column: 15, scope: !763)
!828 = !DILocation(line: 335, column: 21, scope: !763)
!829 = !DILocation(line: 335, column: 2, scope: !763)
!830 = !DILocation(line: 336, column: 8, scope: !763)
!831 = !DILocation(line: 336, column: 2, scope: !763)
!832 = !DILocation(line: 337, column: 9, scope: !763)
!833 = !DILocation(line: 337, column: 2, scope: !763)
!834 = !DILocation(line: 338, column: 1, scope: !763)
!835 = distinct !DISubprogram(name: "irq_cpu_rmap_notify", scope: !3, file: !3, line: 263, type: !127, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !836)
!836 = !{!837, !838, !839, !840, !842}
!837 = !DILocalVariable(name: "notify", arg: 1, scope: !835, file: !3, line: 263, type: !129)
!838 = !DILocalVariable(name: "mask", arg: 2, scope: !835, file: !3, line: 263, type: !130)
!839 = !DILocalVariable(name: "glue", scope: !835, file: !3, line: 265, type: !90)
!840 = !DILocalVariable(name: "__mptr", scope: !841, file: !3, line: 266, type: !32)
!841 = distinct !DILexicalBlock(scope: !835, file: !3, line: 266, column: 3)
!842 = !DILocalVariable(name: "rc", scope: !835, file: !3, line: 267, type: !51)
!843 = !DILocation(line: 263, column: 49, scope: !835)
!844 = !DILocation(line: 263, column: 74, scope: !835)
!845 = !DILocation(line: 265, column: 2, scope: !835)
!846 = !DILocation(line: 265, column: 19, scope: !835)
!847 = !DILocation(line: 266, column: 3, scope: !841)
!848 = !DILocation(line: 266, column: 3, scope: !835)
!849 = !DILocation(line: 267, column: 2, scope: !835)
!850 = !DILocation(line: 267, column: 6, scope: !835)
!851 = !DILocation(line: 269, column: 23, scope: !835)
!852 = !DILocation(line: 269, column: 29, scope: !835)
!853 = !DILocation(line: 269, column: 35, scope: !835)
!854 = !DILocation(line: 269, column: 41, scope: !835)
!855 = !DILocation(line: 269, column: 48, scope: !835)
!856 = !DILocation(line: 269, column: 7, scope: !835)
!857 = !DILocation(line: 269, column: 5, scope: !835)
!858 = !DILocation(line: 270, column: 6, scope: !859)
!859 = distinct !DILexicalBlock(scope: !835, file: !3, line: 270, column: 6)
!860 = !DILocation(line: 270, column: 6, scope: !835)
!861 = !DILocation(line: 271, column: 3, scope: !862)
!862 = distinct !DILexicalBlock(scope: !859, file: !3, line: 271, column: 3)
!863 = !DILocation(line: 271, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !862, file: !3, line: 271, column: 3)
!865 = !DILocation(line: 271, column: 3, scope: !859)
!866 = !DILocation(line: 272, column: 1, scope: !835)
!867 = distinct !DISubprogram(name: "irq_cpu_rmap_release", scope: !3, file: !3, line: 278, type: !135, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !868)
!868 = !{!869, !870, !871}
!869 = !DILocalVariable(name: "ref", arg: 1, scope: !867, file: !3, line: 278, type: !137)
!870 = !DILocalVariable(name: "glue", scope: !867, file: !3, line: 280, type: !90)
!871 = !DILocalVariable(name: "__mptr", scope: !872, file: !3, line: 281, type: !32)
!872 = distinct !DILexicalBlock(scope: !867, file: !3, line: 281, column: 3)
!873 = !DILocation(line: 278, column: 47, scope: !867)
!874 = !DILocation(line: 280, column: 2, scope: !867)
!875 = !DILocation(line: 280, column: 19, scope: !867)
!876 = !DILocation(line: 281, column: 3, scope: !872)
!877 = !DILocation(line: 281, column: 3, scope: !867)
!878 = !DILocation(line: 283, column: 2, scope: !867)
!879 = !DILocation(line: 283, column: 8, scope: !867)
!880 = !DILocation(line: 283, column: 14, scope: !867)
!881 = !DILocation(line: 283, column: 18, scope: !867)
!882 = !DILocation(line: 283, column: 24, scope: !867)
!883 = !DILocation(line: 283, column: 31, scope: !867)
!884 = !DILocation(line: 284, column: 15, scope: !867)
!885 = !DILocation(line: 284, column: 21, scope: !867)
!886 = !DILocation(line: 284, column: 2, scope: !867)
!887 = !DILocation(line: 285, column: 8, scope: !867)
!888 = !DILocation(line: 285, column: 2, scope: !867)
!889 = !DILocation(line: 286, column: 1, scope: !867)
!890 = distinct !DISubprogram(name: "cpu_rmap_get", scope: !3, file: !3, line: 76, type: !705, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !891)
!891 = !{!892}
!892 = !DILocalVariable(name: "rmap", arg: 1, scope: !890, file: !3, line: 76, type: !52)
!893 = !DILocation(line: 76, column: 50, scope: !890)
!894 = !DILocation(line: 78, column: 12, scope: !890)
!895 = !DILocation(line: 78, column: 18, scope: !890)
!896 = !DILocation(line: 78, column: 2, scope: !890)
!897 = !DILocation(line: 79, column: 1, scope: !890)
!898 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !443}
!901 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !266, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !902)
!902 = !{!903, !904, !905}
!903 = !DILocalVariable(name: "size", arg: 1, scope: !901, file: !12, line: 591, type: !196)
!904 = !DILocalVariable(name: "flags", arg: 2, scope: !901, file: !12, line: 591, type: !44)
!905 = !DILocalVariable(name: "index", scope: !906, file: !12, line: 594, type: !7)
!906 = distinct !DILexicalBlock(scope: !907, file: !12, line: 593, column: 42)
!907 = distinct !DILexicalBlock(scope: !901, file: !12, line: 593, column: 6)
!908 = !DILocation(line: 591, column: 61, scope: !901)
!909 = !DILocation(line: 591, column: 73, scope: !901)
!910 = !DILocation(line: 593, column: 27, scope: !907)
!911 = !DILocation(line: 593, column: 6, scope: !907)
!912 = !DILocation(line: 593, column: 33, scope: !907)
!913 = !DILocation(line: 593, column: 36, scope: !907)
!914 = !DILocation(line: 593, column: 6, scope: !901)
!915 = !DILocation(line: 594, column: 3, scope: !906)
!916 = !DILocation(line: 594, column: 16, scope: !906)
!917 = !DILocation(line: 596, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !906, file: !12, line: 596, column: 7)
!919 = !DILocation(line: 596, column: 12, scope: !918)
!920 = !DILocation(line: 596, column: 7, scope: !906)
!921 = !DILocation(line: 597, column: 25, scope: !918)
!922 = !DILocation(line: 597, column: 31, scope: !918)
!923 = !DILocation(line: 597, column: 11, scope: !918)
!924 = !DILocation(line: 597, column: 4, scope: !918)
!925 = !DILocation(line: 599, column: 11, scope: !906)
!926 = !DILocation(line: 599, column: 9, scope: !906)
!927 = !DILocation(line: 601, column: 33, scope: !906)
!928 = !DILocation(line: 601, column: 40, scope: !906)
!929 = !DILocation(line: 601, column: 20, scope: !906)
!930 = !DILocation(line: 601, column: 5, scope: !906)
!931 = !DILocation(line: 601, column: 51, scope: !906)
!932 = !DILocation(line: 602, column: 5, scope: !906)
!933 = !DILocation(line: 602, column: 12, scope: !906)
!934 = !DILocation(line: 600, column: 10, scope: !906)
!935 = !DILocation(line: 600, column: 3, scope: !906)
!936 = !DILocation(line: 603, column: 2, scope: !907)
!937 = !DILocation(line: 604, column: 19, scope: !901)
!938 = !DILocation(line: 604, column: 25, scope: !901)
!939 = !DILocation(line: 604, column: 9, scope: !901)
!940 = !DILocation(line: 604, column: 2, scope: !901)
!941 = !DILocation(line: 605, column: 1, scope: !901)
!942 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!943 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !944, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !946)
!944 = !DISubroutineType(types: !945)
!945 = !{!7, !196, !560}
!946 = !{!947, !948}
!947 = !DILocalVariable(name: "size", arg: 1, scope: !943, file: !12, line: 444, type: !196)
!948 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !943, file: !12, line: 445, type: !560)
!949 = !DILocation(line: 444, column: 60, scope: !943)
!950 = !DILocation(line: 445, column: 16, scope: !943)
!951 = !DILocation(line: 447, column: 7, scope: !952)
!952 = distinct !DILexicalBlock(scope: !943, file: !12, line: 447, column: 6)
!953 = !DILocation(line: 447, column: 6, scope: !943)
!954 = !DILocation(line: 448, column: 3, scope: !952)
!955 = !DILocation(line: 450, column: 6, scope: !956)
!956 = distinct !DILexicalBlock(scope: !943, file: !12, line: 450, column: 6)
!957 = !DILocation(line: 450, column: 11, scope: !956)
!958 = !DILocation(line: 450, column: 6, scope: !943)
!959 = !DILocation(line: 451, column: 3, scope: !956)
!960 = !DILocation(line: 453, column: 32, scope: !961)
!961 = distinct !DILexicalBlock(scope: !943, file: !12, line: 453, column: 6)
!962 = !DILocation(line: 453, column: 37, scope: !961)
!963 = !DILocation(line: 453, column: 42, scope: !961)
!964 = !DILocation(line: 453, column: 45, scope: !961)
!965 = !DILocation(line: 453, column: 50, scope: !961)
!966 = !DILocation(line: 453, column: 6, scope: !943)
!967 = !DILocation(line: 454, column: 3, scope: !961)
!968 = !DILocation(line: 455, column: 32, scope: !969)
!969 = distinct !DILexicalBlock(scope: !943, file: !12, line: 455, column: 6)
!970 = !DILocation(line: 455, column: 37, scope: !969)
!971 = !DILocation(line: 455, column: 43, scope: !969)
!972 = !DILocation(line: 455, column: 46, scope: !969)
!973 = !DILocation(line: 455, column: 51, scope: !969)
!974 = !DILocation(line: 455, column: 6, scope: !943)
!975 = !DILocation(line: 456, column: 3, scope: !969)
!976 = !DILocation(line: 457, column: 6, scope: !977)
!977 = distinct !DILexicalBlock(scope: !943, file: !12, line: 457, column: 6)
!978 = !DILocation(line: 457, column: 11, scope: !977)
!979 = !DILocation(line: 457, column: 6, scope: !943)
!980 = !DILocation(line: 457, column: 26, scope: !977)
!981 = !DILocation(line: 458, column: 6, scope: !982)
!982 = distinct !DILexicalBlock(scope: !943, file: !12, line: 458, column: 6)
!983 = !DILocation(line: 458, column: 11, scope: !982)
!984 = !DILocation(line: 458, column: 6, scope: !943)
!985 = !DILocation(line: 458, column: 26, scope: !982)
!986 = !DILocation(line: 459, column: 6, scope: !987)
!987 = distinct !DILexicalBlock(scope: !943, file: !12, line: 459, column: 6)
!988 = !DILocation(line: 459, column: 11, scope: !987)
!989 = !DILocation(line: 459, column: 6, scope: !943)
!990 = !DILocation(line: 459, column: 26, scope: !987)
!991 = !DILocation(line: 460, column: 6, scope: !992)
!992 = distinct !DILexicalBlock(scope: !943, file: !12, line: 460, column: 6)
!993 = !DILocation(line: 460, column: 11, scope: !992)
!994 = !DILocation(line: 460, column: 6, scope: !943)
!995 = !DILocation(line: 460, column: 26, scope: !992)
!996 = !DILocation(line: 461, column: 6, scope: !997)
!997 = distinct !DILexicalBlock(scope: !943, file: !12, line: 461, column: 6)
!998 = !DILocation(line: 461, column: 11, scope: !997)
!999 = !DILocation(line: 461, column: 6, scope: !943)
!1000 = !DILocation(line: 461, column: 26, scope: !997)
!1001 = !DILocation(line: 462, column: 6, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !943, file: !12, line: 462, column: 6)
!1003 = !DILocation(line: 462, column: 11, scope: !1002)
!1004 = !DILocation(line: 462, column: 6, scope: !943)
!1005 = !DILocation(line: 462, column: 26, scope: !1002)
!1006 = !DILocation(line: 463, column: 6, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !943, file: !12, line: 463, column: 6)
!1008 = !DILocation(line: 463, column: 11, scope: !1007)
!1009 = !DILocation(line: 463, column: 6, scope: !943)
!1010 = !DILocation(line: 463, column: 26, scope: !1007)
!1011 = !DILocation(line: 464, column: 6, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !943, file: !12, line: 464, column: 6)
!1013 = !DILocation(line: 464, column: 11, scope: !1012)
!1014 = !DILocation(line: 464, column: 6, scope: !943)
!1015 = !DILocation(line: 464, column: 26, scope: !1012)
!1016 = !DILocation(line: 465, column: 6, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !943, file: !12, line: 465, column: 6)
!1018 = !DILocation(line: 465, column: 11, scope: !1017)
!1019 = !DILocation(line: 465, column: 6, scope: !943)
!1020 = !DILocation(line: 465, column: 26, scope: !1017)
!1021 = !DILocation(line: 466, column: 6, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !943, file: !12, line: 466, column: 6)
!1023 = !DILocation(line: 466, column: 11, scope: !1022)
!1024 = !DILocation(line: 466, column: 6, scope: !943)
!1025 = !DILocation(line: 466, column: 26, scope: !1022)
!1026 = !DILocation(line: 467, column: 6, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !943, file: !12, line: 467, column: 6)
!1028 = !DILocation(line: 467, column: 11, scope: !1027)
!1029 = !DILocation(line: 467, column: 6, scope: !943)
!1030 = !DILocation(line: 467, column: 26, scope: !1027)
!1031 = !DILocation(line: 468, column: 6, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !943, file: !12, line: 468, column: 6)
!1033 = !DILocation(line: 468, column: 11, scope: !1032)
!1034 = !DILocation(line: 468, column: 6, scope: !943)
!1035 = !DILocation(line: 468, column: 26, scope: !1032)
!1036 = !DILocation(line: 469, column: 6, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !943, file: !12, line: 469, column: 6)
!1038 = !DILocation(line: 469, column: 11, scope: !1037)
!1039 = !DILocation(line: 469, column: 6, scope: !943)
!1040 = !DILocation(line: 469, column: 26, scope: !1037)
!1041 = !DILocation(line: 470, column: 6, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !943, file: !12, line: 470, column: 6)
!1043 = !DILocation(line: 470, column: 11, scope: !1042)
!1044 = !DILocation(line: 470, column: 6, scope: !943)
!1045 = !DILocation(line: 470, column: 26, scope: !1042)
!1046 = !DILocation(line: 471, column: 6, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !943, file: !12, line: 471, column: 6)
!1048 = !DILocation(line: 471, column: 11, scope: !1047)
!1049 = !DILocation(line: 471, column: 6, scope: !943)
!1050 = !DILocation(line: 471, column: 26, scope: !1047)
!1051 = !DILocation(line: 472, column: 6, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !943, file: !12, line: 472, column: 6)
!1053 = !DILocation(line: 472, column: 11, scope: !1052)
!1054 = !DILocation(line: 472, column: 6, scope: !943)
!1055 = !DILocation(line: 472, column: 26, scope: !1052)
!1056 = !DILocation(line: 473, column: 6, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !943, file: !12, line: 473, column: 6)
!1058 = !DILocation(line: 473, column: 11, scope: !1057)
!1059 = !DILocation(line: 473, column: 6, scope: !943)
!1060 = !DILocation(line: 473, column: 26, scope: !1057)
!1061 = !DILocation(line: 474, column: 6, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !943, file: !12, line: 474, column: 6)
!1063 = !DILocation(line: 474, column: 11, scope: !1062)
!1064 = !DILocation(line: 474, column: 6, scope: !943)
!1065 = !DILocation(line: 474, column: 27, scope: !1062)
!1066 = !DILocation(line: 475, column: 6, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !943, file: !12, line: 475, column: 6)
!1068 = !DILocation(line: 475, column: 11, scope: !1067)
!1069 = !DILocation(line: 475, column: 6, scope: !943)
!1070 = !DILocation(line: 475, column: 32, scope: !1067)
!1071 = !DILocation(line: 477, column: 50, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !943, file: !12, line: 477, column: 6)
!1073 = !{i8 0, i8 2}
!1074 = !{}
!1075 = !DILocation(line: 477, column: 6, scope: !943)
!1076 = !DILocation(line: 478, column: 3, scope: !1072)
!1077 = !DILocation(line: 478, column: 3, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !12, line: 478, column: 3)
!1079 = distinct !DILexicalBlock(scope: !1072, file: !12, line: 478, column: 3)
!1080 = !{i32 -2143553121}
!1081 = !DILocation(line: 478, column: 3, scope: !1079)
!1082 = !DILocation(line: 480, column: 3, scope: !1072)
!1083 = !DILocation(line: 480, column: 3, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1072, file: !12, line: 480, column: 3)
!1085 = !DILocation(line: 480, column: 3, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1084, file: !12, line: 480, column: 3)
!1087 = !DILocation(line: 480, column: 3, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !12, line: 480, column: 3)
!1089 = !{i64 2151414378, i64 2151414407, i64 2151414453, i64 2151414511, i64 2151414565, i64 2151414619, i64 2151414674, i64 2151414705}
!1090 = !DILocation(line: 483, column: 2, scope: !943)
!1091 = !DILocation(line: 484, column: 1, scope: !943)
!1092 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!32, !1095, !44, !196}
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1097, line: 11, flags: DIFlagFwdDecl)
!1097 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1098 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !1099, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1101)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!11, !44, !30}
!1101 = !{!1102, !1103}
!1102 = !DILocalVariable(name: "flags", arg: 1, scope: !1098, file: !12, line: 401, type: !44)
!1103 = !DILocalVariable(name: "caller", arg: 2, scope: !1098, file: !12, line: 401, type: !30)
!1104 = !DILocation(line: 401, column: 67, scope: !1098)
!1105 = !DILocation(line: 401, column: 88, scope: !1098)
!1106 = !DILocation(line: 407, column: 6, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1098, file: !12, line: 407, column: 6)
!1108 = !DILocation(line: 407, column: 6, scope: !1098)
!1109 = !DILocation(line: 413, column: 3, scope: !1107)
!1110 = !DILocation(line: 423, column: 38, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1098, file: !12, line: 423, column: 6)
!1112 = !DILocation(line: 423, column: 44, scope: !1111)
!1113 = !DILocation(line: 423, column: 6, scope: !1098)
!1114 = !DILocation(line: 424, column: 3, scope: !1111)
!1115 = !DILocation(line: 426, column: 3, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1098, file: !12, line: 425, column: 6)
!1117 = !DILocation(line: 429, column: 1, scope: !1098)
!1118 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1119 = !DISubprogram(name: "__compiletime_assert_117", scope: !12, file: !12, line: 478, type: !1120, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null}
!1122 = distinct !DISubprogram(name: "refcount_set", scope: !22, file: !22, line: 134, type: !1123, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1126)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{null, !1125, !51}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!1126 = !{!1127, !1128}
!1127 = !DILocalVariable(name: "r", arg: 1, scope: !1122, file: !22, line: 134, type: !1125)
!1128 = !DILocalVariable(name: "n", arg: 2, scope: !1122, file: !22, line: 134, type: !51)
!1129 = !DILocation(line: 134, column: 45, scope: !1122)
!1130 = !DILocation(line: 134, column: 52, scope: !1122)
!1131 = !DILocation(line: 136, column: 14, scope: !1122)
!1132 = !DILocation(line: 136, column: 17, scope: !1122)
!1133 = !DILocation(line: 136, column: 23, scope: !1122)
!1134 = !DILocation(line: 136, column: 2, scope: !1122)
!1135 = !DILocation(line: 137, column: 1, scope: !1122)
!1136 = distinct !DISubprogram(name: "atomic_set", scope: !1137, file: !1137, line: 65, type: !1138, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1141)
!1137 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!1138 = !DISubroutineType(types: !1139)
!1139 = !{null, !1140, !51}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!1141 = !{!1142, !1143}
!1142 = !DILocalVariable(name: "v", arg: 1, scope: !1136, file: !1137, line: 65, type: !1140)
!1143 = !DILocalVariable(name: "i", arg: 2, scope: !1136, file: !1137, line: 65, type: !51)
!1144 = !DILocation(line: 65, column: 22, scope: !1136)
!1145 = !DILocation(line: 65, column: 29, scope: !1136)
!1146 = !DILocation(line: 67, column: 26, scope: !1136)
!1147 = !DILocation(line: 67, column: 2, scope: !1136)
!1148 = !DILocation(line: 68, column: 17, scope: !1136)
!1149 = !DILocation(line: 68, column: 20, scope: !1136)
!1150 = !DILocation(line: 68, column: 2, scope: !1136)
!1151 = !DILocation(line: 69, column: 1, scope: !1136)
!1152 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1153, file: !1153, line: 80, type: !1154, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1159)
!1153 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !1156, !196}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1159 = !{!1160, !1161}
!1160 = !DILocalVariable(name: "v", arg: 1, scope: !1152, file: !1153, line: 80, type: !1156)
!1161 = !DILocalVariable(name: "size", arg: 2, scope: !1152, file: !1153, line: 80, type: !196)
!1162 = !DILocation(line: 80, column: 74, scope: !1152)
!1163 = !DILocation(line: 80, column: 84, scope: !1152)
!1164 = !DILocation(line: 82, column: 20, scope: !1152)
!1165 = !DILocation(line: 82, column: 23, scope: !1152)
!1166 = !DILocation(line: 82, column: 2, scope: !1152)
!1167 = !DILocation(line: 83, column: 2, scope: !1152)
!1168 = !DILocation(line: 84, column: 1, scope: !1152)
!1169 = distinct !DISubprogram(name: "raw_atomic_set", scope: !1170, file: !1170, line: 488, type: !1138, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1171)
!1170 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1171 = !{!1172, !1173}
!1172 = !DILocalVariable(name: "v", arg: 1, scope: !1169, file: !1170, line: 488, type: !1140)
!1173 = !DILocalVariable(name: "i", arg: 2, scope: !1169, file: !1170, line: 488, type: !51)
!1174 = !DILocation(line: 488, column: 26, scope: !1169)
!1175 = !DILocation(line: 488, column: 33, scope: !1169)
!1176 = !DILocation(line: 490, column: 18, scope: !1169)
!1177 = !DILocation(line: 490, column: 21, scope: !1169)
!1178 = !DILocation(line: 490, column: 2, scope: !1169)
!1179 = !DILocation(line: 491, column: 1, scope: !1169)
!1180 = distinct !DISubprogram(name: "kasan_check_write", scope: !1181, file: !1181, line: 44, type: !1182, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1184)
!1181 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!560, !1156, !7}
!1184 = !{!1185, !1186}
!1185 = !DILocalVariable(name: "p", arg: 1, scope: !1180, file: !1181, line: 44, type: !1156)
!1186 = !DILocalVariable(name: "size", arg: 2, scope: !1180, file: !1181, line: 44, type: !7)
!1187 = !DILocation(line: 44, column: 59, scope: !1180)
!1188 = !DILocation(line: 44, column: 75, scope: !1180)
!1189 = !DILocation(line: 46, column: 2, scope: !1180)
!1190 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1191, file: !1191, line: 229, type: !1192, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1194)
!1191 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !1156, !196, !51}
!1194 = !{!1195, !1196, !1197}
!1195 = !DILocalVariable(name: "ptr", arg: 1, scope: !1190, file: !1191, line: 229, type: !1156)
!1196 = !DILocalVariable(name: "size", arg: 2, scope: !1190, file: !1191, line: 229, type: !196)
!1197 = !DILocalVariable(name: "type", arg: 3, scope: !1190, file: !1191, line: 230, type: !51)
!1198 = !DILocation(line: 229, column: 60, scope: !1190)
!1199 = !DILocation(line: 229, column: 72, scope: !1190)
!1200 = !DILocation(line: 230, column: 15, scope: !1190)
!1201 = !DILocation(line: 230, column: 23, scope: !1190)
!1202 = distinct !DISubprogram(name: "arch_atomic_set", scope: !1203, file: !1203, line: 26, type: !1138, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1204)
!1203 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!1204 = !{!1205, !1206}
!1205 = !DILocalVariable(name: "v", arg: 1, scope: !1202, file: !1203, line: 26, type: !1140)
!1206 = !DILocalVariable(name: "i", arg: 2, scope: !1202, file: !1203, line: 26, type: !51)
!1207 = !DILocation(line: 26, column: 55, scope: !1202)
!1208 = !DILocation(line: 26, column: 62, scope: !1202)
!1209 = !DILocation(line: 28, column: 2, scope: !1202)
!1210 = !DILocation(line: 28, column: 2, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1202, file: !1203, line: 28, column: 2)
!1212 = !DILocation(line: 29, column: 1, scope: !1202)
!1213 = distinct !DISubprogram(name: "variable__ffs", scope: !1214, file: !1214, line: 250, type: !1215, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1217)
!1214 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!30, !30}
!1217 = !{!1218}
!1218 = !DILocalVariable(name: "word", arg: 1, scope: !1213, file: !1214, line: 250, type: !30)
!1219 = !DILocation(line: 250, column: 66, scope: !1213)
!1220 = !DILocation(line: 254, column: 11, scope: !1213)
!1221 = !DILocation(line: 252, column: 2, scope: !1213)
!1222 = !{i64 339398}
!1223 = !DILocation(line: 255, column: 9, scope: !1213)
!1224 = !DILocation(line: 255, column: 2, scope: !1213)
!1225 = !DISubprogram(name: "_find_next_bit", scope: !287, file: !287, line: 11, type: !288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1226 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !22, file: !22, line: 331, type: !1227, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1229)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!560, !1125}
!1229 = !{!1230}
!1230 = !DILocalVariable(name: "r", arg: 1, scope: !1226, file: !22, line: 331, type: !1125)
!1231 = !DILocation(line: 331, column: 67, scope: !1226)
!1232 = !DILocation(line: 333, column: 33, scope: !1226)
!1233 = !DILocation(line: 333, column: 9, scope: !1226)
!1234 = !DILocation(line: 333, column: 2, scope: !1226)
!1235 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !22, file: !22, line: 313, type: !1236, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1238)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!560, !1125, !89}
!1238 = !{!1239, !1240}
!1239 = !DILocalVariable(name: "r", arg: 1, scope: !1235, file: !22, line: 313, type: !1125)
!1240 = !DILocalVariable(name: "oldp", arg: 2, scope: !1235, file: !22, line: 313, type: !89)
!1241 = !DILocation(line: 313, column: 69, scope: !1235)
!1242 = !DILocation(line: 313, column: 77, scope: !1235)
!1243 = !DILocation(line: 315, column: 36, scope: !1235)
!1244 = !DILocation(line: 315, column: 39, scope: !1235)
!1245 = !DILocation(line: 315, column: 9, scope: !1235)
!1246 = !DILocation(line: 315, column: 2, scope: !1235)
!1247 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !22, file: !22, line: 270, type: !1248, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1250)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!560, !51, !1125, !89}
!1250 = !{!1251, !1252, !1253, !1254}
!1251 = !DILocalVariable(name: "i", arg: 1, scope: !1247, file: !22, line: 270, type: !51)
!1252 = !DILocalVariable(name: "r", arg: 2, scope: !1247, file: !22, line: 270, type: !1125)
!1253 = !DILocalVariable(name: "oldp", arg: 3, scope: !1247, file: !22, line: 270, type: !89)
!1254 = !DILocalVariable(name: "old", scope: !1247, file: !22, line: 272, type: !51)
!1255 = !DILocation(line: 270, column: 61, scope: !1247)
!1256 = !DILocation(line: 270, column: 76, scope: !1247)
!1257 = !DILocation(line: 270, column: 84, scope: !1247)
!1258 = !DILocation(line: 272, column: 2, scope: !1247)
!1259 = !DILocation(line: 272, column: 6, scope: !1247)
!1260 = !DILocation(line: 272, column: 37, scope: !1247)
!1261 = !DILocation(line: 272, column: 41, scope: !1247)
!1262 = !DILocation(line: 272, column: 44, scope: !1247)
!1263 = !DILocation(line: 272, column: 12, scope: !1247)
!1264 = !DILocation(line: 274, column: 6, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1247, file: !22, line: 274, column: 6)
!1266 = !DILocation(line: 274, column: 6, scope: !1247)
!1267 = !DILocation(line: 275, column: 11, scope: !1265)
!1268 = !DILocation(line: 275, column: 4, scope: !1265)
!1269 = !DILocation(line: 275, column: 9, scope: !1265)
!1270 = !DILocation(line: 275, column: 3, scope: !1265)
!1271 = !DILocation(line: 277, column: 6, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1247, file: !22, line: 277, column: 6)
!1273 = !DILocation(line: 277, column: 13, scope: !1272)
!1274 = !DILocation(line: 277, column: 10, scope: !1272)
!1275 = !DILocation(line: 277, column: 6, scope: !1247)
!1276 = !DILocation(line: 278, column: 3, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1272, file: !22, line: 277, column: 16)
!1278 = !DILocation(line: 278, column: 3, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1277, file: !22, line: 278, column: 3)
!1280 = !DILocation(line: 278, column: 3, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1279, file: !22, line: 278, column: 3)
!1282 = !DILocation(line: 278, column: 3, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !22, line: 278, column: 3)
!1284 = !DILocation(line: 278, column: 3, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1283, file: !22, line: 278, column: 3)
!1286 = !{i64 2150205471}
!1287 = !DILocation(line: 279, column: 3, scope: !1277)
!1288 = !DILocation(line: 282, column: 6, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1247, file: !22, line: 282, column: 6)
!1290 = !DILocation(line: 282, column: 6, scope: !1247)
!1291 = !DILocation(line: 283, column: 26, scope: !1289)
!1292 = !DILocation(line: 283, column: 3, scope: !1289)
!1293 = !DILocation(line: 285, column: 2, scope: !1247)
!1294 = !DILocation(line: 286, column: 1, scope: !1247)
!1295 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !1137, file: !1137, line: 397, type: !1296, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1298)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!51, !51, !1140}
!1298 = !{!1299, !1300}
!1299 = !DILocalVariable(name: "i", arg: 1, scope: !1295, file: !1137, line: 397, type: !51)
!1300 = !DILocalVariable(name: "v", arg: 2, scope: !1295, file: !1137, line: 397, type: !1140)
!1301 = !DILocation(line: 397, column: 30, scope: !1295)
!1302 = !DILocation(line: 397, column: 43, scope: !1295)
!1303 = !DILocation(line: 399, column: 2, scope: !1295)
!1304 = !DILocation(line: 399, column: 2, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1295, file: !1137, line: 399, column: 2)
!1306 = !DILocation(line: 400, column: 31, scope: !1295)
!1307 = !DILocation(line: 400, column: 2, scope: !1295)
!1308 = !DILocation(line: 401, column: 38, scope: !1295)
!1309 = !DILocation(line: 401, column: 41, scope: !1295)
!1310 = !DILocation(line: 401, column: 9, scope: !1295)
!1311 = !DILocation(line: 401, column: 2, scope: !1295)
!1312 = !DISubprogram(name: "refcount_warn_saturate", scope: !22, file: !22, line: 127, type: !1313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !1125, !21}
!1315 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1153, file: !1153, line: 94, type: !1154, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1316)
!1316 = !{!1317, !1318}
!1317 = !DILocalVariable(name: "v", arg: 1, scope: !1315, file: !1153, line: 94, type: !1156)
!1318 = !DILocalVariable(name: "size", arg: 2, scope: !1315, file: !1153, line: 94, type: !196)
!1319 = !DILocation(line: 94, column: 79, scope: !1315)
!1320 = !DILocation(line: 94, column: 89, scope: !1315)
!1321 = !DILocation(line: 96, column: 20, scope: !1315)
!1322 = !DILocation(line: 96, column: 23, scope: !1315)
!1323 = !DILocation(line: 96, column: 2, scope: !1315)
!1324 = !DILocation(line: 97, column: 2, scope: !1315)
!1325 = !DILocation(line: 98, column: 1, scope: !1315)
!1326 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !1170, file: !1170, line: 928, type: !1296, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1327)
!1327 = !{!1328, !1329}
!1328 = !DILocalVariable(name: "i", arg: 1, scope: !1326, file: !1170, line: 928, type: !51)
!1329 = !DILocalVariable(name: "v", arg: 2, scope: !1326, file: !1170, line: 928, type: !1140)
!1330 = !DILocation(line: 928, column: 34, scope: !1326)
!1331 = !DILocation(line: 928, column: 47, scope: !1326)
!1332 = !DILocation(line: 936, column: 31, scope: !1326)
!1333 = !DILocation(line: 936, column: 34, scope: !1326)
!1334 = !DILocation(line: 936, column: 9, scope: !1326)
!1335 = !DILocation(line: 936, column: 2, scope: !1326)
!1336 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !1203, file: !1203, line: 101, type: !1296, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1337)
!1337 = !{!1338, !1339, !1340}
!1338 = !DILocalVariable(name: "i", arg: 1, scope: !1336, file: !1203, line: 101, type: !51)
!1339 = !DILocalVariable(name: "v", arg: 2, scope: !1336, file: !1203, line: 101, type: !1140)
!1340 = !DILocalVariable(name: "__ret", scope: !1341, file: !1203, line: 103, type: !51)
!1341 = distinct !DILexicalBlock(scope: !1336, file: !1203, line: 103, column: 9)
!1342 = !DILocation(line: 101, column: 54, scope: !1336)
!1343 = !DILocation(line: 101, column: 67, scope: !1336)
!1344 = !DILocation(line: 103, column: 9, scope: !1341)
!1345 = !{i64 2148273067, i64 2148273106, i64 2148273127, i64 2148273164, i64 2148273187, i64 2148273196}
!1346 = !DILocation(line: 103, column: 9, scope: !1336)
!1347 = !DILocation(line: 103, column: 2, scope: !1336)
!1348 = distinct !DISubprogram(name: "cpumask_clear", scope: !38, file: !38, line: 552, type: !698, scopeLine: 553, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1349)
!1349 = !{!1350}
!1350 = !DILocalVariable(name: "dstp", arg: 1, scope: !1348, file: !38, line: 552, type: !574)
!1351 = !DILocation(line: 552, column: 50, scope: !1348)
!1352 = !DILocation(line: 554, column: 14, scope: !1348)
!1353 = !DILocation(line: 554, column: 2, scope: !1348)
!1354 = !DILocation(line: 555, column: 1, scope: !1348)
!1355 = distinct !DISubprogram(name: "bitmap_zero", scope: !1356, file: !1356, line: 246, type: !1357, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1360)
!1356 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !1359, !7}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!1360 = !{!1361, !1362, !1363}
!1361 = !DILocalVariable(name: "dst", arg: 1, scope: !1355, file: !1356, line: 246, type: !1359)
!1362 = !DILocalVariable(name: "nbits", arg: 2, scope: !1355, file: !1356, line: 246, type: !7)
!1363 = !DILocalVariable(name: "len", scope: !1355, file: !1356, line: 248, type: !7)
!1364 = !DILocation(line: 246, column: 47, scope: !1355)
!1365 = !DILocation(line: 246, column: 65, scope: !1355)
!1366 = !DILocation(line: 248, column: 2, scope: !1355)
!1367 = !DILocation(line: 248, column: 15, scope: !1355)
!1368 = !DILocation(line: 248, column: 21, scope: !1355)
!1369 = !DILocation(line: 250, column: 6, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1355, file: !1356, line: 250, column: 6)
!1371 = !DILocation(line: 250, column: 6, scope: !1355)
!1372 = !DILocation(line: 251, column: 4, scope: !1370)
!1373 = !DILocation(line: 251, column: 8, scope: !1370)
!1374 = !DILocation(line: 251, column: 3, scope: !1370)
!1375 = !DILocation(line: 253, column: 10, scope: !1370)
!1376 = !DILocation(line: 253, column: 18, scope: !1370)
!1377 = !DILocation(line: 253, column: 3, scope: !1370)
!1378 = !DILocation(line: 254, column: 1, scope: !1355)
!1379 = distinct !DISubprogram(name: "set_bit", scope: !1380, file: !1380, line: 26, type: !1381, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1385)
!1380 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !88, !1383}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!1385 = !{!1386, !1387}
!1386 = !DILocalVariable(name: "nr", arg: 1, scope: !1379, file: !1380, line: 26, type: !88)
!1387 = !DILocalVariable(name: "addr", arg: 2, scope: !1379, file: !1380, line: 26, type: !1383)
!1388 = !DILocation(line: 26, column: 42, scope: !1379)
!1389 = !DILocation(line: 26, column: 70, scope: !1379)
!1390 = !DILocation(line: 28, column: 26, scope: !1379)
!1391 = !DILocation(line: 28, column: 33, scope: !1379)
!1392 = !DILocation(line: 28, column: 31, scope: !1379)
!1393 = !DILocation(line: 28, column: 2, scope: !1379)
!1394 = !DILocation(line: 29, column: 15, scope: !1379)
!1395 = !DILocation(line: 29, column: 19, scope: !1379)
!1396 = !DILocation(line: 29, column: 2, scope: !1379)
!1397 = !DILocation(line: 30, column: 1, scope: !1379)
!1398 = distinct !DISubprogram(name: "cpumask_check", scope: !38, file: !38, line: 148, type: !1399, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1401)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!7, !7}
!1401 = !{!1402}
!1402 = !DILocalVariable(name: "cpu", arg: 1, scope: !1398, file: !38, line: 148, type: !7)
!1403 = !DILocation(line: 148, column: 64, scope: !1398)
!1404 = !DILocation(line: 150, column: 20, scope: !1398)
!1405 = !DILocation(line: 150, column: 2, scope: !1398)
!1406 = !DILocation(line: 151, column: 9, scope: !1398)
!1407 = !DILocation(line: 151, column: 2, scope: !1398)
!1408 = distinct !DISubprogram(name: "arch_set_bit", scope: !1214, file: !1214, line: 52, type: !1381, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1409)
!1409 = !{!1410, !1411}
!1410 = !DILocalVariable(name: "nr", arg: 1, scope: !1408, file: !1214, line: 52, type: !88)
!1411 = !DILocalVariable(name: "addr", arg: 2, scope: !1408, file: !1214, line: 52, type: !1383)
!1412 = !DILocation(line: 52, column: 19, scope: !1408)
!1413 = !DILocation(line: 52, column: 47, scope: !1408)
!1414 = !DILocation(line: 54, column: 27, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1408, file: !1214, line: 54, column: 6)
!1416 = !DILocation(line: 54, column: 6, scope: !1415)
!1417 = !DILocation(line: 54, column: 6, scope: !1408)
!1418 = !DILocation(line: 56, column: 6, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !1214, line: 54, column: 32)
!1420 = !DILocation(line: 57, column: 12, scope: !1419)
!1421 = !DILocation(line: 55, column: 3, scope: !1419)
!1422 = !{i64 2147830711, i64 2147830750, i64 2147830771, i64 2147830808, i64 2147830831, i64 2147830701}
!1423 = !DILocation(line: 59, column: 2, scope: !1419)
!1424 = !DILocation(line: 61, column: 8, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1415, file: !1214, line: 59, column: 9)
!1426 = !DILocation(line: 61, column: 32, scope: !1425)
!1427 = !DILocation(line: 60, column: 3, scope: !1425)
!1428 = !{i64 2147830996, i64 2147831035, i64 2147831056, i64 2147831093, i64 2147831116, i64 2147830986}
!1429 = !DILocation(line: 63, column: 1, scope: !1408)
!1430 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !38, file: !38, line: 140, type: !1431, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !7, !7}
!1433 = !{!1434, !1435}
!1434 = !DILocalVariable(name: "cpu", arg: 1, scope: !1430, file: !38, line: 140, type: !7)
!1435 = !DILocalVariable(name: "bits", arg: 2, scope: !1430, file: !38, line: 140, type: !7)
!1436 = !DILocation(line: 140, column: 60, scope: !1430)
!1437 = !DILocation(line: 140, column: 78, scope: !1430)
!1438 = !DILocation(line: 145, column: 1, scope: !1430)
!1439 = distinct !DISubprogram(name: "bitmap_or", scope: !1356, file: !1356, line: 344, type: !1440, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1442)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !1359, !290, !290, !7}
!1442 = !{!1443, !1444, !1445, !1446}
!1443 = !DILocalVariable(name: "dst", arg: 1, scope: !1439, file: !1356, line: 344, type: !1359)
!1444 = !DILocalVariable(name: "src1", arg: 2, scope: !1439, file: !1356, line: 344, type: !290)
!1445 = !DILocalVariable(name: "src2", arg: 3, scope: !1439, file: !1356, line: 345, type: !290)
!1446 = !DILocalVariable(name: "nbits", arg: 4, scope: !1439, file: !1356, line: 345, type: !7)
!1447 = !DILocation(line: 344, column: 45, scope: !1439)
!1448 = !DILocation(line: 344, column: 71, scope: !1439)
!1449 = !DILocation(line: 345, column: 25, scope: !1439)
!1450 = !DILocation(line: 345, column: 44, scope: !1439)
!1451 = !DILocation(line: 347, column: 6, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1439, file: !1356, line: 347, column: 6)
!1453 = !DILocation(line: 347, column: 6, scope: !1439)
!1454 = !DILocation(line: 348, column: 11, scope: !1452)
!1455 = !DILocation(line: 348, column: 10, scope: !1452)
!1456 = !DILocation(line: 348, column: 19, scope: !1452)
!1457 = !DILocation(line: 348, column: 18, scope: !1452)
!1458 = !DILocation(line: 348, column: 16, scope: !1452)
!1459 = !DILocation(line: 348, column: 4, scope: !1452)
!1460 = !DILocation(line: 348, column: 8, scope: !1452)
!1461 = !DILocation(line: 348, column: 3, scope: !1452)
!1462 = !DILocation(line: 350, column: 15, scope: !1452)
!1463 = !DILocation(line: 350, column: 20, scope: !1452)
!1464 = !DILocation(line: 350, column: 26, scope: !1452)
!1465 = !DILocation(line: 350, column: 32, scope: !1452)
!1466 = !DILocation(line: 350, column: 3, scope: !1452)
!1467 = !DILocation(line: 351, column: 1, scope: !1439)
!1468 = !DISubprogram(name: "__bitmap_or", scope: !1356, file: !1356, line: 158, type: !1440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1469 = !DISubprogram(name: "_printk", scope: !1470, file: !1470, line: 153, type: !1471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1470 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!51, !590, null}
!1473 = distinct !DISubprogram(name: "kref_get", scope: !58, file: !58, line: 43, type: !135, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1474)
!1474 = !{!1475}
!1475 = !DILocalVariable(name: "kref", arg: 1, scope: !1473, file: !58, line: 43, type: !137)
!1476 = !DILocation(line: 43, column: 42, scope: !1473)
!1477 = !DILocation(line: 45, column: 16, scope: !1473)
!1478 = !DILocation(line: 45, column: 22, scope: !1473)
!1479 = !DILocation(line: 45, column: 2, scope: !1473)
!1480 = !DILocation(line: 46, column: 1, scope: !1473)
!1481 = distinct !DISubprogram(name: "refcount_inc", scope: !22, file: !22, line: 265, type: !1482, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1484)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{null, !1125}
!1484 = !{!1485}
!1485 = !DILocalVariable(name: "r", arg: 1, scope: !1481, file: !22, line: 265, type: !1125)
!1486 = !DILocation(line: 265, column: 45, scope: !1481)
!1487 = !DILocation(line: 267, column: 17, scope: !1481)
!1488 = !DILocation(line: 267, column: 2, scope: !1481)
!1489 = !DILocation(line: 268, column: 1, scope: !1481)
!1490 = distinct !DISubprogram(name: "__refcount_inc", scope: !22, file: !22, line: 248, type: !1491, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !1125, !89}
!1493 = !{!1494, !1495}
!1494 = !DILocalVariable(name: "r", arg: 1, scope: !1490, file: !22, line: 248, type: !1125)
!1495 = !DILocalVariable(name: "oldp", arg: 2, scope: !1490, file: !22, line: 248, type: !89)
!1496 = !DILocation(line: 248, column: 47, scope: !1490)
!1497 = !DILocation(line: 248, column: 55, scope: !1490)
!1498 = !DILocation(line: 250, column: 20, scope: !1490)
!1499 = !DILocation(line: 250, column: 23, scope: !1490)
!1500 = !DILocation(line: 250, column: 2, scope: !1490)
!1501 = !DILocation(line: 251, column: 1, scope: !1490)
!1502 = distinct !DISubprogram(name: "__refcount_add", scope: !22, file: !22, line: 191, type: !1503, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1505)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{null, !51, !1125, !89}
!1505 = !{!1506, !1507, !1508, !1509}
!1506 = !DILocalVariable(name: "i", arg: 1, scope: !1502, file: !22, line: 191, type: !51)
!1507 = !DILocalVariable(name: "r", arg: 2, scope: !1502, file: !22, line: 191, type: !1125)
!1508 = !DILocalVariable(name: "oldp", arg: 3, scope: !1502, file: !22, line: 191, type: !89)
!1509 = !DILocalVariable(name: "old", scope: !1502, file: !22, line: 193, type: !51)
!1510 = !DILocation(line: 191, column: 39, scope: !1502)
!1511 = !DILocation(line: 191, column: 54, scope: !1502)
!1512 = !DILocation(line: 191, column: 62, scope: !1502)
!1513 = !DILocation(line: 193, column: 2, scope: !1502)
!1514 = !DILocation(line: 193, column: 6, scope: !1502)
!1515 = !DILocation(line: 193, column: 37, scope: !1502)
!1516 = !DILocation(line: 193, column: 41, scope: !1502)
!1517 = !DILocation(line: 193, column: 44, scope: !1502)
!1518 = !DILocation(line: 193, column: 12, scope: !1502)
!1519 = !DILocation(line: 195, column: 6, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1502, file: !22, line: 195, column: 6)
!1521 = !DILocation(line: 195, column: 6, scope: !1502)
!1522 = !DILocation(line: 196, column: 11, scope: !1520)
!1523 = !DILocation(line: 196, column: 4, scope: !1520)
!1524 = !DILocation(line: 196, column: 9, scope: !1520)
!1525 = !DILocation(line: 196, column: 3, scope: !1520)
!1526 = !DILocation(line: 198, column: 6, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1502, file: !22, line: 198, column: 6)
!1528 = !DILocation(line: 198, column: 6, scope: !1502)
!1529 = !DILocation(line: 199, column: 26, scope: !1527)
!1530 = !DILocation(line: 199, column: 3, scope: !1527)
!1531 = !DILocation(line: 200, column: 11, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1527, file: !22, line: 200, column: 11)
!1533 = !DILocation(line: 200, column: 11, scope: !1527)
!1534 = !DILocation(line: 201, column: 26, scope: !1532)
!1535 = !DILocation(line: 201, column: 3, scope: !1532)
!1536 = !DILocation(line: 202, column: 1, scope: !1502)
!1537 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !1137, file: !1137, line: 250, type: !1296, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1538)
!1538 = !{!1539, !1540}
!1539 = !DILocalVariable(name: "i", arg: 1, scope: !1537, file: !1137, line: 250, type: !51)
!1540 = !DILocalVariable(name: "v", arg: 2, scope: !1537, file: !1137, line: 250, type: !1140)
!1541 = !DILocation(line: 250, column: 30, scope: !1537)
!1542 = !DILocation(line: 250, column: 43, scope: !1537)
!1543 = !DILocation(line: 252, column: 31, scope: !1537)
!1544 = !DILocation(line: 252, column: 2, scope: !1537)
!1545 = !DILocation(line: 253, column: 38, scope: !1537)
!1546 = !DILocation(line: 253, column: 41, scope: !1537)
!1547 = !DILocation(line: 253, column: 9, scope: !1537)
!1548 = !DILocation(line: 253, column: 2, scope: !1537)
!1549 = distinct !DISubprogram(name: "raw_atomic_fetch_add_relaxed", scope: !1170, file: !1170, line: 731, type: !1296, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1550)
!1550 = !{!1551, !1552}
!1551 = !DILocalVariable(name: "i", arg: 1, scope: !1549, file: !1170, line: 731, type: !51)
!1552 = !DILocalVariable(name: "v", arg: 2, scope: !1549, file: !1170, line: 731, type: !1140)
!1553 = !DILocation(line: 731, column: 34, scope: !1549)
!1554 = !DILocation(line: 731, column: 47, scope: !1549)
!1555 = !DILocation(line: 736, column: 31, scope: !1549)
!1556 = !DILocation(line: 736, column: 34, scope: !1549)
!1557 = !DILocation(line: 736, column: 9, scope: !1549)
!1558 = !DILocation(line: 736, column: 2, scope: !1549)
!1559 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !1203, file: !1203, line: 95, type: !1296, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1560)
!1560 = !{!1561, !1562, !1563}
!1561 = !DILocalVariable(name: "i", arg: 1, scope: !1559, file: !1203, line: 95, type: !51)
!1562 = !DILocalVariable(name: "v", arg: 2, scope: !1559, file: !1203, line: 95, type: !1140)
!1563 = !DILocalVariable(name: "__ret", scope: !1564, file: !1203, line: 97, type: !51)
!1564 = distinct !DILexicalBlock(scope: !1559, file: !1203, line: 97, column: 9)
!1565 = !DILocation(line: 95, column: 54, scope: !1559)
!1566 = !DILocation(line: 95, column: 67, scope: !1559)
!1567 = !DILocation(line: 97, column: 9, scope: !1564)
!1568 = !{i64 2148270882, i64 2148270921, i64 2148270942, i64 2148270979, i64 2148271002, i64 2148271011}
!1569 = !DILocation(line: 97, column: 9, scope: !1559)
!1570 = !DILocation(line: 97, column: 2, scope: !1559)
