; ModuleID = 'drivers/gpu/drm/drm_flip_work.c'
source_filename = "drivers/gpu/drm/drm_flip_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_flip_work_allocate_task: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_flip_work_allocate_task ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_flip_work_queue_task: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_flip_work_queue_task ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_flip_work_queue: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_flip_work_queue ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_flip_work_commit: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_flip_work_commit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_flip_work_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_flip_work_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_flip_work_cleanup: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_flip_work_cleanup ; .previous"

%struct.lock_class_key = type {}
%struct.pcpu_hot = type { %union.anon.2 }
%union.anon.2 = type { %struct.anon.3, [16 x i8] }
%struct.anon.3 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.drm_flip_task = type { %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_flip_work = type { ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__UNIQUE_ID___addressable_drm_flip_work_allocate_task303 = internal global ptr @drm_flip_work_allocate_task, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_drm_flip_work_queue_task304 = internal global ptr @drm_flip_work_queue_task, section ".discard.addressable", align 8, !dbg !146
@.str = private unnamed_addr constant [29 x i8] c"%s could not allocate task!\0A\00", align 1, !dbg !148
@__UNIQUE_ID___addressable_drm_flip_work_queue305 = internal global ptr @drm_flip_work_queue, section ".discard.addressable", align 8, !dbg !153
@__UNIQUE_ID___addressable_drm_flip_work_commit306 = internal global ptr @drm_flip_work_commit, section ".discard.addressable", align 8, !dbg !155
@drm_flip_work_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !157
@__UNIQUE_ID___addressable_drm_flip_work_init307 = internal global ptr @drm_flip_work_init, section ".discard.addressable", align 8, !dbg !169
@.str.1 = private unnamed_addr constant [32 x i8] c"drivers/gpu/drm/drm_flip_work.c\00", align 1, !dbg !171
@__UNIQUE_ID___addressable_drm_flip_work_cleanup308 = internal global ptr @drm_flip_work_cleanup, section ".discard.addressable", align 8, !dbg !176
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !178
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_drm_flip_work_allocate_task303, ptr @__UNIQUE_ID___addressable_drm_flip_work_queue_task304, ptr @__UNIQUE_ID___addressable_drm_flip_work_queue305, ptr @__UNIQUE_ID___addressable_drm_flip_work_commit306, ptr @__UNIQUE_ID___addressable_drm_flip_work_init307, ptr @__UNIQUE_ID___addressable_drm_flip_work_cleanup308], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_flip_work_allocate_task(ptr noundef %data, i32 noundef %flags) #0 align 16 !dbg !192 {
entry:
  %data.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %task = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !196, metadata !DIExpression()), !dbg !199
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !197, metadata !DIExpression()), !dbg !200
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #14, !dbg !201
  call void @llvm.dbg.declare(metadata ptr %task, metadata !198, metadata !DIExpression()), !dbg !202
  %0 = load i32, ptr %flags.addr, align 4, !dbg !203
  %call = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef %0) #15, !dbg !204
  store ptr %call, ptr %task, align 8, !dbg !205
  %1 = load ptr, ptr %task, align 8, !dbg !206
  %tobool = icmp ne ptr %1, null, !dbg !206
  br i1 %tobool, label %if.then, label %if.end, !dbg !208

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %data.addr, align 8, !dbg !209
  %3 = load ptr, ptr %task, align 8, !dbg !210
  %data1 = getelementptr inbounds %struct.drm_flip_task, ptr %3, i32 0, i32 1, !dbg !211
  store ptr %2, ptr %data1, align 8, !dbg !212
  br label %if.end, !dbg !210

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %task, align 8, !dbg !213
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #14, !dbg !214
  ret ptr %4, !dbg !215
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !216 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !224, metadata !DIExpression()), !dbg !226
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !225, metadata !DIExpression()), !dbg !227
  %0 = load i64, ptr %size.addr, align 8, !dbg !228
  %1 = load i32, ptr %flags.addr, align 4, !dbg !229
  %or = or i32 %1, 256, !dbg !230
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !231
  ret ptr %call, !dbg !232
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_flip_work_queue_task(ptr noundef %work, ptr noundef %task) #0 align 16 !dbg !233 {
entry:
  %work.addr = alloca ptr, align 8
  %task.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !237, metadata !DIExpression()), !dbg !245
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !238, metadata !DIExpression()), !dbg !246
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !247
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !239, metadata !DIExpression()), !dbg !248
  br label %do.body, !dbg !249

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !250

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !251
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !240, metadata !DIExpression()), !dbg !251
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !251
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !244, metadata !DIExpression()), !dbg !251
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !251
  %conv = zext i1 %cmp to i32, !dbg !251
  store i32 1, ptr %tmp, align 4, !dbg !251
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !252
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !252
  %0 = load i32, ptr %tmp, align 4, !dbg !251
  %1 = load ptr, ptr %work.addr, align 8, !dbg !252
  %lock = getelementptr inbounds %struct.drm_flip_work, ptr %1, i32 0, i32 5, !dbg !252
  %call = call ptr @spinlock_check(ptr noundef %lock) #16, !dbg !252
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !252
  store i64 %call2, ptr %flags, align 8, !dbg !252
  br label %do.cond, !dbg !252

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !252

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !250

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !250

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %task.addr, align 8, !dbg !253
  %node = getelementptr inbounds %struct.drm_flip_task, ptr %2, i32 0, i32 0, !dbg !254
  %3 = load ptr, ptr %work.addr, align 8, !dbg !255
  %queued = getelementptr inbounds %struct.drm_flip_work, ptr %3, i32 0, i32 3, !dbg !256
  call void @list_add_tail(ptr noundef %node, ptr noundef %queued) #16, !dbg !257
  %4 = load ptr, ptr %work.addr, align 8, !dbg !258
  %lock5 = getelementptr inbounds %struct.drm_flip_work, ptr %4, i32 0, i32 5, !dbg !259
  %5 = load i64, ptr %flags, align 8, !dbg !260
  call void @spin_unlock_irqrestore(ptr noundef %lock5, i64 noundef %5) #16, !dbg !261
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !262
  ret void, !dbg !262
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !263 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !269 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !277
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !278
  ret ptr %1, !dbg !279
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !280 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !285, metadata !DIExpression()), !dbg !287
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !286, metadata !DIExpression()), !dbg !288
  %0 = load ptr, ptr %new.addr, align 8, !dbg !289
  %1 = load ptr, ptr %head.addr, align 8, !dbg !290
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !291
  %2 = load ptr, ptr %prev, align 8, !dbg !291
  %3 = load ptr, ptr %head.addr, align 8, !dbg !292
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #16, !dbg !293
  ret void, !dbg !294
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !295 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !299, metadata !DIExpression()), !dbg !305
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !300, metadata !DIExpression()), !dbg !306
  br label %do.body, !dbg !307

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !308
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !301, metadata !DIExpression()), !dbg !308
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !308
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !304, metadata !DIExpression()), !dbg !308
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !308
  %conv = zext i1 %cmp to i32, !dbg !308
  store i32 1, ptr %tmp, align 4, !dbg !308
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !309
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !309
  %0 = load i32, ptr %tmp, align 4, !dbg !308
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !309
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !309
  %3 = load i64, ptr %flags.addr, align 8, !dbg !309
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #16, !dbg !309
  br label %do.end, !dbg !309

do.end:                                           ; preds = %do.body
  ret void, !dbg !310
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_flip_work_queue(ptr noundef %work, ptr noundef %val) #0 align 16 !dbg !311 {
entry:
  %work.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %task = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !313, metadata !DIExpression()), !dbg !316
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !314, metadata !DIExpression()), !dbg !317
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #14, !dbg !318
  call void @llvm.dbg.declare(metadata ptr %task, metadata !315, metadata !DIExpression()), !dbg !319
  %0 = load ptr, ptr %val.addr, align 8, !dbg !320
  %call = call zeroext i1 @drm_can_sleep() #16, !dbg !321
  %1 = zext i1 %call to i64, !dbg !321
  %cond = select i1 %call, i32 3264, i32 2080, !dbg !321
  %call1 = call ptr @drm_flip_work_allocate_task(ptr noundef %0, i32 noundef %cond) #16, !dbg !322
  store ptr %call1, ptr %task, align 8, !dbg !323
  %2 = load ptr, ptr %task, align 8, !dbg !324
  %tobool = icmp ne ptr %2, null, !dbg !324
  br i1 %tobool, label %if.then, label %if.else, !dbg !326

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %work.addr, align 8, !dbg !327
  %4 = load ptr, ptr %task, align 8, !dbg !329
  call void @drm_flip_work_queue_task(ptr noundef %3, ptr noundef %4) #16, !dbg !330
  br label %if.end, !dbg !331

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %work.addr, align 8, !dbg !332
  %name = getelementptr inbounds %struct.drm_flip_work, ptr %5, i32 0, i32 0, !dbg !332
  %6 = load ptr, ptr %name, align 8, !dbg !332
  call void (ptr, ...) @__drm_err(ptr noundef @.str, ptr noundef %6) #16, !dbg !332
  %7 = load ptr, ptr %work.addr, align 8, !dbg !334
  %func = getelementptr inbounds %struct.drm_flip_work, ptr %7, i32 0, i32 1, !dbg !335
  %8 = load ptr, ptr %func, align 8, !dbg !335
  %9 = load ptr, ptr %work.addr, align 8, !dbg !336
  %10 = load ptr, ptr %val.addr, align 8, !dbg !337
  call void %8(ptr noundef %9, ptr noundef %10) #16, !dbg !334
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #14, !dbg !338
  ret void, !dbg !338
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_can_sleep() #6 align 16 !dbg !339 {
entry:
  %retval = alloca i1, align 1
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %call = call i32 @preempt_count() #16, !dbg !357
  %cmp = icmp ne i32 %call, 0, !dbg !357
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !358

lor.lhs.false:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #14, !dbg !359
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !346, metadata !DIExpression()), !dbg !359
  br label %do.body, !dbg !359

do.body:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !360
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !349, metadata !DIExpression()), !dbg !360
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !360
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !352, metadata !DIExpression()), !dbg !360
  %cmp1 = icmp eq ptr %__dummy, %__dummy2, !dbg !360
  %conv = zext i1 %cmp1 to i32, !dbg !360
  store i32 1, ptr %tmp, align 4, !dbg !360
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !361
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !361
  %0 = load i32, ptr %tmp, align 4, !dbg !360
  %call2 = call i64 @arch_local_save_flags() #16, !dbg !361
  store i64 %call2, ptr %_flags, align 8, !dbg !361
  br label %do.cond, !dbg !361

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !361

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy4) #14, !dbg !362
  call void @llvm.dbg.declare(metadata ptr %__dummy4, metadata !353, metadata !DIExpression()), !dbg !362
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy25) #14, !dbg !362
  call void @llvm.dbg.declare(metadata ptr %__dummy25, metadata !356, metadata !DIExpression()), !dbg !362
  %cmp6 = icmp eq ptr %__dummy4, %__dummy25, !dbg !362
  %conv7 = zext i1 %cmp6 to i32, !dbg !362
  store i32 1, ptr %tmp8, align 4, !dbg !362
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy25) #14, !dbg !363
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy4) #14, !dbg !363
  %1 = load i32, ptr %tmp8, align 4, !dbg !362
  %2 = load i64, ptr %_flags, align 8, !dbg !363
  %call10 = call i32 @arch_irqs_disabled_flags(i64 noundef %2) #16, !dbg !363
  store i32 %call10, ptr %tmp9, align 4, !dbg !363
  %3 = load i32, ptr %tmp9, align 4, !dbg !363
  store i32 %3, ptr %tmp3, align 4, !dbg !361
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #14, !dbg !364
  %4 = load i32, ptr %tmp3, align 4, !dbg !359
  %tobool = icmp ne i32 %4, 0, !dbg !364
  br i1 %tobool, label %if.then, label %if.end, !dbg !365

if.then:                                          ; preds = %do.end, %entry
  store i1 false, ptr %retval, align 1, !dbg !366
  br label %return, !dbg !366

if.end:                                           ; preds = %do.end
  store i1 true, ptr %retval, align 1, !dbg !367
  br label %return, !dbg !367

return:                                           ; preds = %if.end, %if.then
  %5 = load i1, ptr %retval, align 1, !dbg !368
  ret i1 %5, !dbg !368
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !369 dso_local void @__drm_err(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_flip_work_commit(ptr noundef %work, ptr noundef %wq) #0 align 16 !dbg !373 {
entry:
  %work.addr = alloca ptr, align 8
  %wq.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !379, metadata !DIExpression()), !dbg !387
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !380, metadata !DIExpression()), !dbg !388
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !381, metadata !DIExpression()), !dbg !390
  br label %do.body, !dbg !391

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !392

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !382, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !386, metadata !DIExpression()), !dbg !393
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !393
  %conv = zext i1 %cmp to i32, !dbg !393
  store i32 1, ptr %tmp, align 4, !dbg !393
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !394
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !394
  %0 = load i32, ptr %tmp, align 4, !dbg !393
  %1 = load ptr, ptr %work.addr, align 8, !dbg !394
  %lock = getelementptr inbounds %struct.drm_flip_work, ptr %1, i32 0, i32 5, !dbg !394
  %call = call ptr @spinlock_check(ptr noundef %lock) #16, !dbg !394
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !394
  store i64 %call2, ptr %flags, align 8, !dbg !394
  br label %do.cond, !dbg !394

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !394

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !392

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !392

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %work.addr, align 8, !dbg !395
  %queued = getelementptr inbounds %struct.drm_flip_work, ptr %2, i32 0, i32 3, !dbg !396
  %3 = load ptr, ptr %work.addr, align 8, !dbg !397
  %commited = getelementptr inbounds %struct.drm_flip_work, ptr %3, i32 0, i32 4, !dbg !398
  call void @list_splice_tail(ptr noundef %queued, ptr noundef %commited) #16, !dbg !399
  %4 = load ptr, ptr %work.addr, align 8, !dbg !400
  %queued5 = getelementptr inbounds %struct.drm_flip_work, ptr %4, i32 0, i32 3, !dbg !401
  call void @INIT_LIST_HEAD(ptr noundef %queued5) #16, !dbg !402
  %5 = load ptr, ptr %work.addr, align 8, !dbg !403
  %lock6 = getelementptr inbounds %struct.drm_flip_work, ptr %5, i32 0, i32 5, !dbg !404
  %6 = load i64, ptr %flags, align 8, !dbg !405
  call void @spin_unlock_irqrestore(ptr noundef %lock6, i64 noundef %6) #16, !dbg !406
  %7 = load ptr, ptr %wq.addr, align 8, !dbg !407
  %8 = load ptr, ptr %work.addr, align 8, !dbg !408
  %worker = getelementptr inbounds %struct.drm_flip_work, ptr %8, i32 0, i32 2, !dbg !409
  %call7 = call zeroext i1 @queue_work(ptr noundef %7, ptr noundef %worker) #16, !dbg !410
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !411
  ret void, !dbg !411
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_splice_tail(ptr noundef %list, ptr noundef %head) #6 align 16 !dbg !412 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !414, metadata !DIExpression()), !dbg !416
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !415, metadata !DIExpression()), !dbg !417
  %0 = load ptr, ptr %list.addr, align 8, !dbg !418
  %call = call i32 @list_empty(ptr noundef %0) #16, !dbg !420
  %tobool = icmp ne i32 %call, 0, !dbg !420
  br i1 %tobool, label %if.end, label %if.then, !dbg !421

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %list.addr, align 8, !dbg !422
  %2 = load ptr, ptr %head.addr, align 8, !dbg !423
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !424
  %3 = load ptr, ptr %prev, align 8, !dbg !424
  %4 = load ptr, ptr %head.addr, align 8, !dbg !425
  call void @__list_splice(ptr noundef %1, ptr noundef %3, ptr noundef %4) #16, !dbg !426
  br label %if.end, !dbg !426

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !427
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #6 align 16 !dbg !428 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !432, metadata !DIExpression()), !dbg !433
  br label %do.body, !dbg !434

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !435

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !437

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !435

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !439
  %1 = load ptr, ptr %list.addr, align 8, !dbg !439
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !439
  store volatile ptr %0, ptr %next, align 8, !dbg !439
  br label %do.end3, !dbg !439

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !435

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !441

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !442

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !444

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !442

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !446
  %3 = load ptr, ptr %list.addr, align 8, !dbg !446
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !446
  store volatile ptr %2, ptr %prev, align 8, !dbg !446
  br label %do.end9, !dbg !446

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !442

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !448
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #6 align 16 !dbg !449 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !453, metadata !DIExpression()), !dbg !455
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !454, metadata !DIExpression()), !dbg !456
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !457
  %1 = load ptr, ptr %work.addr, align 8, !dbg !458
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #16, !dbg !459
  ret i1 %call, !dbg !460
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_flip_work_init(ptr noundef %work, ptr noundef %name, ptr noundef %func) #0 align 16 !dbg !159 {
entry:
  %work.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  %.compoundliteral7 = alloca %struct.atomic64_t, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !163, metadata !DIExpression()), !dbg !461
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !164, metadata !DIExpression()), !dbg !462
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !165, metadata !DIExpression()), !dbg !463
  %0 = load ptr, ptr %name.addr, align 8, !dbg !464
  %1 = load ptr, ptr %work.addr, align 8, !dbg !465
  %name1 = getelementptr inbounds %struct.drm_flip_work, ptr %1, i32 0, i32 0, !dbg !466
  store ptr %0, ptr %name1, align 8, !dbg !467
  %2 = load ptr, ptr %work.addr, align 8, !dbg !468
  %queued = getelementptr inbounds %struct.drm_flip_work, ptr %2, i32 0, i32 3, !dbg !469
  call void @INIT_LIST_HEAD(ptr noundef %queued) #16, !dbg !470
  %3 = load ptr, ptr %work.addr, align 8, !dbg !471
  %commited = getelementptr inbounds %struct.drm_flip_work, ptr %3, i32 0, i32 4, !dbg !472
  call void @INIT_LIST_HEAD(ptr noundef %commited) #16, !dbg !473
  br label %do.body, !dbg !474

do.body:                                          ; preds = %entry
  %4 = load ptr, ptr %work.addr, align 8, !dbg !475
  %lock = getelementptr inbounds %struct.drm_flip_work, ptr %4, i32 0, i32 5, !dbg !475
  %call = call ptr @spinlock_check(ptr noundef %lock) #16, !dbg !475
  %5 = load ptr, ptr %work.addr, align 8, !dbg !475
  %lock2 = getelementptr inbounds %struct.drm_flip_work, ptr %5, i32 0, i32 5, !dbg !475
  %6 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !475
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %6, i32 0, i32 0, !dbg !475
  %7 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !475
  %counter = getelementptr inbounds %struct.atomic_t, ptr %7, i32 0, i32 0, !dbg !475
  store i32 0, ptr %counter, align 4, !dbg !475
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock2, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !475
  br label %do.end, !dbg !475

do.end:                                           ; preds = %do.body
  %8 = load ptr, ptr %func.addr, align 8, !dbg !477
  %9 = load ptr, ptr %work.addr, align 8, !dbg !478
  %func3 = getelementptr inbounds %struct.drm_flip_work, ptr %9, i32 0, i32 1, !dbg !479
  store ptr %8, ptr %func3, align 8, !dbg !480
  br label %do.body4, !dbg !481

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !482

do.body5:                                         ; preds = %do.body4
  %10 = load ptr, ptr %work.addr, align 8, !dbg !484
  %worker = getelementptr inbounds %struct.drm_flip_work, ptr %10, i32 0, i32 2, !dbg !484
  call void @__init_work(ptr noundef %worker, i32 noundef 0) #16, !dbg !484
  %11 = load ptr, ptr %work.addr, align 8, !dbg !484
  %worker6 = getelementptr inbounds %struct.drm_flip_work, ptr %11, i32 0, i32 2, !dbg !484
  %data = getelementptr inbounds %struct.work_struct, ptr %worker6, i32 0, i32 0, !dbg !484
  %counter8 = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral7, i32 0, i32 0, !dbg !484
  store i64 68719476704, ptr %counter8, align 8, !dbg !484
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral7, i64 8, i1 false), !dbg !484
  %12 = load ptr, ptr %work.addr, align 8, !dbg !484
  %worker9 = getelementptr inbounds %struct.drm_flip_work, ptr %12, i32 0, i32 2, !dbg !484
  %entry10 = getelementptr inbounds %struct.work_struct, ptr %worker9, i32 0, i32 1, !dbg !484
  call void @INIT_LIST_HEAD(ptr noundef %entry10) #16, !dbg !484
  %13 = load ptr, ptr %work.addr, align 8, !dbg !484
  %worker11 = getelementptr inbounds %struct.drm_flip_work, ptr %13, i32 0, i32 2, !dbg !484
  %func12 = getelementptr inbounds %struct.work_struct, ptr %worker11, i32 0, i32 2, !dbg !484
  store ptr @flip_worker, ptr %func12, align 8, !dbg !484
  br label %do.end13, !dbg !484

do.end13:                                         ; preds = %do.body5
  br label %do.end14, !dbg !482

do.end14:                                         ; preds = %do.end13
  ret void, !dbg !486
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #6 align 16 !dbg !487 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !491, metadata !DIExpression()), !dbg !493
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !492, metadata !DIExpression()), !dbg !494
  ret void, !dbg !495
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @flip_worker(ptr noundef %w) #0 align 16 !dbg !496 {
entry:
  %w.addr = alloca ptr, align 8
  %work = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tasks = alloca %struct.list_head, align 8
  %flags = alloca i64, align 8
  %task = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr10 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %__mptr13 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %__mptr20 = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !498, metadata !DIExpression()), !dbg !520
  call void @llvm.lifetime.start.p0(i64 8, ptr %work) #14, !dbg !521
  call void @llvm.dbg.declare(metadata ptr %work, metadata !499, metadata !DIExpression()), !dbg !522
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !523
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !500, metadata !DIExpression()), !dbg !523
  %0 = load ptr, ptr %w.addr, align 8, !dbg !523
  store ptr %0, ptr %__mptr, align 8, !dbg !523
  %1 = load ptr, ptr %__mptr, align 8, !dbg !523
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !523
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !523
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !524
  %2 = load ptr, ptr %tmp, align 8, !dbg !523
  store ptr %2, ptr %work, align 8, !dbg !522
  call void @llvm.lifetime.start.p0(i64 16, ptr %tasks) #14, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %tasks, metadata !502, metadata !DIExpression()), !dbg !526
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !503, metadata !DIExpression()), !dbg !528
  br label %while.cond, !dbg !529

while.cond:                                       ; preds = %cleanup.cont, %entry
  br label %while.body, !dbg !529

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %task) #14, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %task, metadata !504, metadata !DIExpression()), !dbg !531
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp1) #14, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %tmp1, metadata !506, metadata !DIExpression()), !dbg !532
  call void @INIT_LIST_HEAD(ptr noundef %tasks) #16, !dbg !533
  br label %do.body, !dbg !534

do.body:                                          ; preds = %while.body
  br label %do.body2, !dbg !535

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !507, metadata !DIExpression()), !dbg !536
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !511, metadata !DIExpression()), !dbg !536
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !536
  %conv = zext i1 %cmp to i32, !dbg !536
  store i32 1, ptr %tmp3, align 4, !dbg !536
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !537
  %3 = load i32, ptr %tmp3, align 4, !dbg !536
  %4 = load ptr, ptr %work, align 8, !dbg !537
  %lock = getelementptr inbounds %struct.drm_flip_work, ptr %4, i32 0, i32 5, !dbg !537
  %call = call ptr @spinlock_check(ptr noundef %lock) #16, !dbg !537
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !537
  store i64 %call4, ptr %flags, align 8, !dbg !537
  br label %do.cond, !dbg !537

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !537

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !535

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !535

do.end6:                                          ; preds = %do.cond5
  %5 = load ptr, ptr %work, align 8, !dbg !538
  %commited = getelementptr inbounds %struct.drm_flip_work, ptr %5, i32 0, i32 4, !dbg !539
  call void @list_splice_tail(ptr noundef %commited, ptr noundef %tasks) #16, !dbg !540
  %6 = load ptr, ptr %work, align 8, !dbg !541
  %commited7 = getelementptr inbounds %struct.drm_flip_work, ptr %6, i32 0, i32 4, !dbg !542
  call void @INIT_LIST_HEAD(ptr noundef %commited7) #16, !dbg !543
  %7 = load ptr, ptr %work, align 8, !dbg !544
  %lock8 = getelementptr inbounds %struct.drm_flip_work, ptr %7, i32 0, i32 5, !dbg !545
  %8 = load i64, ptr %flags, align 8, !dbg !546
  call void @spin_unlock_irqrestore(ptr noundef %lock8, i64 noundef %8) #16, !dbg !547
  %call9 = call i32 @list_empty(ptr noundef %tasks) #16, !dbg !548
  %tobool = icmp ne i32 %call9, 0, !dbg !548
  br i1 %tobool, label %if.then, label %if.end, !dbg !550

if.then:                                          ; preds = %do.end6
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !551

if.end:                                           ; preds = %do.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr10) #14, !dbg !552
  call void @llvm.dbg.declare(metadata ptr %__mptr10, metadata !512, metadata !DIExpression()), !dbg !552
  %next = getelementptr inbounds %struct.list_head, ptr %tasks, i32 0, i32 0, !dbg !552
  %9 = load ptr, ptr %next, align 8, !dbg !552
  store ptr %9, ptr %__mptr10, align 8, !dbg !552
  %10 = load ptr, ptr %__mptr10, align 8, !dbg !552
  %add.ptr12 = getelementptr i8, ptr %10, i64 0, !dbg !552
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !552
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr10) #14, !dbg !553
  %11 = load ptr, ptr %tmp11, align 8, !dbg !552
  store ptr %11, ptr %task, align 8, !dbg !553
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #14, !dbg !554
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !515, metadata !DIExpression()), !dbg !554
  %12 = load ptr, ptr %task, align 8, !dbg !554
  %node = getelementptr inbounds %struct.drm_flip_task, ptr %12, i32 0, i32 0, !dbg !554
  %next14 = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 0, !dbg !554
  %13 = load ptr, ptr %next14, align 8, !dbg !554
  store ptr %13, ptr %__mptr13, align 8, !dbg !554
  %14 = load ptr, ptr %__mptr13, align 8, !dbg !554
  %add.ptr16 = getelementptr i8, ptr %14, i64 0, !dbg !554
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !554
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #14, !dbg !553
  %15 = load ptr, ptr %tmp15, align 8, !dbg !554
  store ptr %15, ptr %tmp1, align 8, !dbg !553
  br label %for.cond, !dbg !553

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load ptr, ptr %task, align 8, !dbg !555
  %node17 = getelementptr inbounds %struct.drm_flip_task, ptr %16, i32 0, i32 0, !dbg !555
  %cmp18 = icmp eq ptr %node17, %tasks, !dbg !555
  %lnot = xor i1 %cmp18, true, !dbg !555
  br i1 %lnot, label %for.body, label %for.end, !dbg !553

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %work, align 8, !dbg !556
  %func = getelementptr inbounds %struct.drm_flip_work, ptr %17, i32 0, i32 1, !dbg !558
  %18 = load ptr, ptr %func, align 8, !dbg !558
  %19 = load ptr, ptr %work, align 8, !dbg !559
  %20 = load ptr, ptr %task, align 8, !dbg !560
  %data = getelementptr inbounds %struct.drm_flip_task, ptr %20, i32 0, i32 1, !dbg !561
  %21 = load ptr, ptr %data, align 8, !dbg !561
  call void %18(ptr noundef %19, ptr noundef %21) #16, !dbg !556
  %22 = load ptr, ptr %task, align 8, !dbg !562
  call void @kfree(ptr noundef %22) #16, !dbg !563
  br label %for.inc, !dbg !564

for.inc:                                          ; preds = %for.body
  %23 = load ptr, ptr %tmp1, align 8, !dbg !555
  store ptr %23, ptr %task, align 8, !dbg !555
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr20) #14, !dbg !565
  call void @llvm.dbg.declare(metadata ptr %__mptr20, metadata !517, metadata !DIExpression()), !dbg !565
  %24 = load ptr, ptr %tmp1, align 8, !dbg !565
  %node21 = getelementptr inbounds %struct.drm_flip_task, ptr %24, i32 0, i32 0, !dbg !565
  %next22 = getelementptr inbounds %struct.list_head, ptr %node21, i32 0, i32 0, !dbg !565
  %25 = load ptr, ptr %next22, align 8, !dbg !565
  store ptr %25, ptr %__mptr20, align 8, !dbg !565
  %26 = load ptr, ptr %__mptr20, align 8, !dbg !565
  %add.ptr24 = getelementptr i8, ptr %26, i64 0, !dbg !565
  store ptr %add.ptr24, ptr %tmp23, align 8, !dbg !565
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr20) #14, !dbg !555
  %27 = load ptr, ptr %tmp23, align 8, !dbg !565
  store ptr %27, ptr %tmp1, align 8, !dbg !555
  br label %for.cond, !dbg !555, !llvm.loop !566

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !570
  br label %cleanup, !dbg !570

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp1) #14, !dbg !570
  call void @llvm.lifetime.end.p0(i64 8, ptr %task) #14, !dbg !570
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !529, !llvm.loop !571

while.end:                                        ; preds = %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !572
  call void @llvm.lifetime.end.p0(i64 16, ptr %tasks) #14, !dbg !572
  call void @llvm.lifetime.end.p0(i64 8, ptr %work) #14, !dbg !572
  ret void, !dbg !572

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_flip_work_cleanup(ptr noundef %work) #0 align 16 !dbg !573 {
entry:
  %work.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !577, metadata !DIExpression()), !dbg !583
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !578, metadata !DIExpression()), !dbg !584
  %0 = load ptr, ptr %work.addr, align 8, !dbg !584
  %queued = getelementptr inbounds %struct.drm_flip_work, ptr %0, i32 0, i32 3, !dbg !584
  %call = call i32 @list_empty(ptr noundef %queued) #16, !dbg !584
  %tobool = icmp ne i32 %call, 0, !dbg !584
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !584

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %work.addr, align 8, !dbg !584
  %commited = getelementptr inbounds %struct.drm_flip_work, ptr %1, i32 0, i32 4, !dbg !584
  %call1 = call i32 @list_empty(ptr noundef %commited) #16, !dbg !584
  %tobool2 = icmp ne i32 %call1, 0, !dbg !584
  %lnot = xor i1 %tobool2, true, !dbg !584
  br label %lor.end, !dbg !584

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot3 = xor i1 %2, true, !dbg !584
  %lnot4 = xor i1 %lnot3, true, !dbg !584
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !584
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !584
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !585
  %tobool5 = icmp ne i32 %3, 0, !dbg !585
  %lnot6 = xor i1 %tobool5, true, !dbg !585
  %lnot8 = xor i1 %lnot6, true, !dbg !585
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !585
  %conv = sext i32 %lnot.ext9 to i64, !dbg !585
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !585
  %tobool10 = icmp ne i64 %expval, 0, !dbg !585
  br i1 %tobool10, label %if.then, label %if.end, !dbg !584

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !585

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !586
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !580, metadata !DIExpression()), !dbg !586
  store i32 2305, ptr %__flags, align 4, !dbg !586
  br label %do.body11, !dbg !586

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !587

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !587

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !586

do.body12:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !589
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 168, i32 %4, i64 12) #14, !dbg !589, !srcloc !591
  br label %do.cond13, !dbg !589

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !589

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !586

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !592

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !592

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !585
  br label %do.cond18, !dbg !586

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !586

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !586

if.end:                                           ; preds = %do.end19, %lor.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !584
  %tobool20 = icmp ne i32 %5, 0, !dbg !584
  %lnot21 = xor i1 %tobool20, true, !dbg !584
  %lnot23 = xor i1 %lnot21, true, !dbg !584
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !584
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !584
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !584
  store i64 %expval26, ptr %tmp, align 8, !dbg !585
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !594
  %6 = load i64, ptr %tmp, align 8, !dbg !584
  ret void, !dbg !595
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #6 align 16 !dbg !596 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !602, metadata !DIExpression()), !dbg !603
  br label %do.body, !dbg !604

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !606

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !604
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !604
  %1 = load volatile ptr, ptr %next, align 8, !dbg !604
  store ptr %1, ptr %tmp, align 8, !dbg !606
  %2 = load ptr, ptr %tmp, align 8, !dbg !604
  %3 = load ptr, ptr %head.addr, align 8, !dbg !608
  %cmp = icmp eq ptr %2, %3, !dbg !609
  %conv = zext i1 %cmp to i32, !dbg !609
  ret i32 %conv, !dbg !610
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !611 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !613, metadata !DIExpression()), !dbg !618
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !614, metadata !DIExpression()), !dbg !619
  %0 = load i64, ptr %size.addr, align 8, !dbg !620
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !621
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !622

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !623
  %tobool = icmp ne i64 %2, 0, !dbg !623
  br i1 %tobool, label %if.then, label %if.end7, !dbg !624

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !625
  call void @llvm.dbg.declare(metadata ptr %index, metadata !615, metadata !DIExpression()), !dbg !626
  %3 = load i64, ptr %size.addr, align 8, !dbg !627
  %cmp = icmp ugt i64 %3, 8192, !dbg !629
  br i1 %cmp, label %if.then1, label %if.end, !dbg !630

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !631
  %5 = load i32, ptr %flags.addr, align 4, !dbg !632
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !633
  store ptr %call, ptr %retval, align 8, !dbg !634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !634

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !635
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !635
  store i32 %call2, ptr %index, align 4, !dbg !636
  %7 = load i32, ptr %flags.addr, align 4, !dbg !637
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !638
  %9 = ptrtoint ptr %8 to i64, !dbg !638
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !639
  %idxprom = zext i32 %call3 to i64, !dbg !640
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !640
  %10 = load i32, ptr %index, align 4, !dbg !641
  %idxprom4 = zext i32 %10 to i64, !dbg !640
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !640
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !640
  %12 = load i32, ptr %flags.addr, align 4, !dbg !642
  %13 = load i64, ptr %size.addr, align 8, !dbg !643
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !644
  store ptr %call6, ptr %retval, align 8, !dbg !645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !645

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !646
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !647
  %15 = load i32, ptr %flags.addr, align 4, !dbg !648
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !649
  store ptr %call8, ptr %retval, align 8, !dbg !650
  br label %return, !dbg !650

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !651
  ret ptr %16, !dbg !651
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !652 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !653 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !657, metadata !DIExpression()), !dbg !659
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !658, metadata !DIExpression()), !dbg !660
  %0 = load i64, ptr %size.addr, align 8, !dbg !661
  %tobool = icmp ne i64 %0, 0, !dbg !661
  br i1 %tobool, label %if.end, label %if.then, !dbg !663

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !664
  br label %return, !dbg !664

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !665
  %cmp = icmp ule i64 %1, 8, !dbg !667
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !668

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !669
  br label %return, !dbg !669

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !670
  %cmp3 = icmp ugt i64 %2, 64, !dbg !672
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !673

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !674
  %cmp4 = icmp ule i64 %3, 96, !dbg !675
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !676

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !677
  br label %return, !dbg !677

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !678
  %cmp7 = icmp ugt i64 %4, 128, !dbg !680
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !681

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !682
  %cmp9 = icmp ule i64 %5, 192, !dbg !683
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !684

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !685
  br label %return, !dbg !685

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !686
  %cmp12 = icmp ule i64 %6, 8, !dbg !688
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !689

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !690
  br label %return, !dbg !690

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !691
  %cmp15 = icmp ule i64 %7, 16, !dbg !693
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !694

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !695
  br label %return, !dbg !695

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !696
  %cmp18 = icmp ule i64 %8, 32, !dbg !698
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !699

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !700
  br label %return, !dbg !700

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !701
  %cmp21 = icmp ule i64 %9, 64, !dbg !703
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !704

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !705
  br label %return, !dbg !705

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !706
  %cmp24 = icmp ule i64 %10, 128, !dbg !708
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !709

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !710
  br label %return, !dbg !710

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !711
  %cmp27 = icmp ule i64 %11, 256, !dbg !713
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !714

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !715
  br label %return, !dbg !715

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !716
  %cmp30 = icmp ule i64 %12, 512, !dbg !718
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !719

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !720
  br label %return, !dbg !720

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !721
  %cmp33 = icmp ule i64 %13, 1024, !dbg !723
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !724

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !725
  br label %return, !dbg !725

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !726
  %cmp36 = icmp ule i64 %14, 2048, !dbg !728
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !729

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !730
  br label %return, !dbg !730

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !731
  %cmp39 = icmp ule i64 %15, 4096, !dbg !733
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !734

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !735
  br label %return, !dbg !735

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !736
  %cmp42 = icmp ule i64 %16, 8192, !dbg !738
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !739

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !740
  br label %return, !dbg !740

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !741
  %cmp45 = icmp ule i64 %17, 16384, !dbg !743
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !744

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !745
  br label %return, !dbg !745

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !746
  %cmp48 = icmp ule i64 %18, 32768, !dbg !748
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !749

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !750
  br label %return, !dbg !750

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !751
  %cmp51 = icmp ule i64 %19, 65536, !dbg !753
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !754

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !755
  br label %return, !dbg !755

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !756
  %cmp54 = icmp ule i64 %20, 131072, !dbg !758
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !759

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !760
  br label %return, !dbg !760

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !761
  %cmp57 = icmp ule i64 %21, 262144, !dbg !763
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !764

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !765
  br label %return, !dbg !765

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !766
  %cmp60 = icmp ule i64 %22, 524288, !dbg !768
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !769

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !770
  br label %return, !dbg !770

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !771
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !773
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !774

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !775
  br label %return, !dbg !775

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !776
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !778
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !779

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !780
  br label %return, !dbg !780

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !781, !range !783, !noundef !168
  %tobool69 = trunc i8 %25 to i1, !dbg !781
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !784

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !785

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #18, !dbg !786, !srcloc !789
  unreachable, !dbg !786

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !790

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !791

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !792

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !794

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !792

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #14, !dbg !796, !srcloc !798
  br label %do.end75, !dbg !796

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !792

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !799
  br label %return, !dbg !799

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !800
  ret i32 %26, !dbg !800
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !801 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !807 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !811, metadata !DIExpression()), !dbg !813
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !812, metadata !DIExpression()), !dbg !814
  %0 = load i32, ptr %flags.addr, align 4, !dbg !815
  %and = and i32 %0, 17, !dbg !815
  %cmp = icmp eq i32 %and, 0, !dbg !815
  %lnot = xor i1 %cmp, true, !dbg !815
  %lnot1 = xor i1 %lnot, true, !dbg !815
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !815
  %conv = sext i32 %lnot.ext to i64, !dbg !815
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !815
  %tobool = icmp ne i64 %expval, 0, !dbg !815
  br i1 %tobool, label %if.then, label %if.end, !dbg !817

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !818
  br label %return, !dbg !818

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !819
  %and2 = and i32 %1, 1, !dbg !821
  %tobool3 = icmp ne i32 %and2, 0, !dbg !821
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !822

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !823
  br label %return, !dbg !823

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !824
  br label %return, !dbg !824

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !826
  ret i32 %2, !dbg !826
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !827 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !828 dso_local void @__compiletime_assert_117() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !831 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !835, metadata !DIExpression()), !dbg !838
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !836, metadata !DIExpression()), !dbg !839
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !837, metadata !DIExpression()), !dbg !840
  %0 = load ptr, ptr %new.addr, align 8, !dbg !841
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !843
  %2 = load ptr, ptr %next.addr, align 8, !dbg !844
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !845
  br i1 %call, label %if.end, label %if.then, !dbg !846

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !847

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !848
  %4 = load ptr, ptr %next.addr, align 8, !dbg !849
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !850
  store ptr %3, ptr %prev1, align 8, !dbg !851
  %5 = load ptr, ptr %next.addr, align 8, !dbg !852
  %6 = load ptr, ptr %new.addr, align 8, !dbg !853
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !854
  store ptr %5, ptr %next2, align 8, !dbg !855
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !856
  %8 = load ptr, ptr %new.addr, align 8, !dbg !857
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !858
  store ptr %7, ptr %prev3, align 8, !dbg !859
  br label %do.body, !dbg !860

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !861

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !863

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !861

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !865
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !865
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !865
  store volatile ptr %9, ptr %next6, align 8, !dbg !865
  br label %do.end7, !dbg !865

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !861

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !867
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !868 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !872, metadata !DIExpression()), !dbg !875
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !873, metadata !DIExpression()), !dbg !876
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !874, metadata !DIExpression()), !dbg !877
  ret i1 true, !dbg !878
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !879 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #5 align 16 !dbg !882 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !891
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !887, metadata !DIExpression()), !dbg !891
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.3, ptr @pcpu_hot, i32 0, i32 1)) #19, !dbg !891, !srcloc !892
  store i32 %0, ptr %pfo_val__, align 4, !dbg !891
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !891
  %conv = zext i32 %1 to i64, !dbg !891
  %conv1 = trunc i64 %conv to i32, !dbg !891
  store i32 %conv1, ptr %tmp, align 4, !dbg !891
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !893
  %2 = load i32, ptr %tmp, align 4, !dbg !891
  %and = and i32 %2, 2147483647, !dbg !894
  ret i32 %and, !dbg !895
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #5 align 16 !dbg !896 {
entry:
  %call = call i64 @native_save_fl() #16, !dbg !900
  ret i64 %call, !dbg !901
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #5 align 16 !dbg !902 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !906, metadata !DIExpression()), !dbg !907
  %0 = load i64, ptr %flags.addr, align 8, !dbg !908
  %and = and i64 %0, 512, !dbg !909
  %tobool = icmp ne i64 %and, 0, !dbg !910
  %lnot = xor i1 %tobool, true, !dbg !910
  %lnot.ext = zext i1 %lnot to i32, !dbg !910
  ret i32 %lnot.ext, !dbg !911
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #5 align 16 !dbg !912 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !915
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !914, metadata !DIExpression()), !dbg !916
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #14, !dbg !917, !srcloc !918
  %0 = load i64, ptr %flags, align 8, !dbg !919
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !920
  ret i64 %0, !dbg !921
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_splice(ptr noundef %list, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !922 {
entry:
  %list.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %last = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !926, metadata !DIExpression()), !dbg !931
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !927, metadata !DIExpression()), !dbg !932
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !928, metadata !DIExpression()), !dbg !933
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #14, !dbg !934
  call void @llvm.dbg.declare(metadata ptr %first, metadata !929, metadata !DIExpression()), !dbg !935
  %0 = load ptr, ptr %list.addr, align 8, !dbg !936
  %next1 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !937
  %1 = load ptr, ptr %next1, align 8, !dbg !937
  store ptr %1, ptr %first, align 8, !dbg !935
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #14, !dbg !938
  call void @llvm.dbg.declare(metadata ptr %last, metadata !930, metadata !DIExpression()), !dbg !939
  %2 = load ptr, ptr %list.addr, align 8, !dbg !940
  %prev2 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !941
  %3 = load ptr, ptr %prev2, align 8, !dbg !941
  store ptr %3, ptr %last, align 8, !dbg !939
  %4 = load ptr, ptr %prev.addr, align 8, !dbg !942
  %5 = load ptr, ptr %first, align 8, !dbg !943
  %prev3 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1, !dbg !944
  store ptr %4, ptr %prev3, align 8, !dbg !945
  %6 = load ptr, ptr %first, align 8, !dbg !946
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !947
  %next4 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 0, !dbg !948
  store ptr %6, ptr %next4, align 8, !dbg !949
  %8 = load ptr, ptr %next.addr, align 8, !dbg !950
  %9 = load ptr, ptr %last, align 8, !dbg !951
  %next5 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 0, !dbg !952
  store ptr %8, ptr %next5, align 8, !dbg !953
  %10 = load ptr, ptr %last, align 8, !dbg !954
  %11 = load ptr, ptr %next.addr, align 8, !dbg !955
  %prev6 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1, !dbg !956
  store ptr %10, ptr %prev6, align 8, !dbg !957
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #14, !dbg !958
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #14, !dbg !958
  ret void, !dbg !958
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !959 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !962 dso_local void @kfree(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }
attributes #19 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_flip_work_allocate_task303", scope: !2, file: !3, line: 47, type: !48, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_flip_work.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm_kms_helper\22 -D KBUILD_BASENAME=\22drm_flip_work\22 -D KBUILD_MODNAME=\22drm_kms_helper\22 -D __KBUILD_MODNAME=kmod_drm_kms_helper -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_flip_work.ll drivers/gpu/drm/drm_flip_work.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !47, globals: !145, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_flip_work.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c802dfaddc4871a05459099deba26ccd")
!4 = !{!5, !32, !37}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 30, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!9 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!10 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!11 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!12 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!13 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!14 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!15 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!16 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!17 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!18 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!19 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!20 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!21 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!22 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!23 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!24 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!25 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!26 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!27 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!28 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!29 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!30 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!31 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 10, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "false", value: 0)
!36 = !DIEnumerator(name: "true", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !38, line: 364, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!39 = !{!40, !41, !42, !43, !44, !45, !46}
!40 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!41 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!42 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!43 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!44 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!45 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!46 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!47 = !{!48, !49, !51, !52, !59, !60, !138, !143}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !50, line: 154, baseType: !7)
!50 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !50, line: 190, size: 128, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !55, file: !50, line: 191, baseType: !54, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !55, file: !50, line: 191, baseType: !54, size: 64, offset: 64)
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_flip_work", file: !62, line: 73, size: 704, elements: !63)
!62 = !DIFile(filename: "./include/drm/drm_flip_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fed6419acda2fa5b44a6fdae4ebe29b")
!63 = !{!64, !68, !73, !95, !96, !97}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !61, file: !62, line: 74, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !61, file: !62, line: 75, baseType: !69, size: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "drm_flip_func_t", file: !62, line: 52, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !60, !48}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !61, file: !62, line: 76, baseType: !74, size: 256, offset: 128)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !6, line: 98, size: 256, elements: !75)
!75 = !{!76, !88, !89}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !74, file: !6, line: 99, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !78, line: 13, baseType: !79)
!78 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !50, line: 181, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 179, size: 64, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !80, file: !50, line: 180, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !84, line: 22, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !86, line: 30, baseType: !87)
!86 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!87 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !74, file: !6, line: 100, baseType: !55, size: 128, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !74, file: !6, line: 101, baseType: !90, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !6, line: 21, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "queued", scope: !61, file: !62, line: 77, baseType: !55, size: 128, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "commited", scope: !61, file: !62, line: 78, baseType: !55, size: 128, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !61, file: !62, line: 79, baseType: !98, size: 32, offset: 640)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !99, line: 29, baseType: !100)
!99 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !99, line: 17, size: 32, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !99, line: 18, baseType: !103, size: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !100, file: !99, line: 18, size: 32, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !103, file: !99, line: 19, baseType: !106, size: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !107, line: 14, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!108 = !{!109}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !106, file: !107, line: 15, baseType: !110, size: 32)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !111, line: 44, baseType: !112)
!111 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !111, line: 14, size: 32, elements: !113)
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !111, line: 15, baseType: !115, size: 32)
!115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !112, file: !111, line: 15, size: 32, elements: !116)
!116 = !{!117, !122, !130}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !115, file: !111, line: 16, baseType: !118, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !50, line: 174, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 172, size: 32, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !119, file: !50, line: 173, baseType: !59, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !111, line: 24, baseType: !123, size: 16)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !115, file: !111, line: 24, size: 16, elements: !124)
!124 = !{!125, !129}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !123, file: !111, line: 25, baseType: !126, size: 8)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !84, line: 17, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !86, line: 21, baseType: !128)
!128 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !123, file: !111, line: 26, baseType: !126, size: 8, offset: 8)
!130 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !111, line: 28, baseType: !131, size: 32)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !115, file: !111, line: 28, size: 32, elements: !132)
!132 = !{!133, !137}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !131, file: !111, line: 29, baseType: !134, size: 16)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !84, line: 19, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !86, line: 24, baseType: !136)
!136 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !131, file: !111, line: 30, baseType: !134, size: 16, offset: 16)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_flip_task", file: !62, line: 59, size: 192, elements: !140)
!140 = !{!141, !142}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !139, file: !62, line: 60, baseType: !55, size: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !139, file: !62, line: 61, baseType: !48, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!145 = !{!0, !146, !148, !153, !155, !157, !169, !171, !176, !178}
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_flip_work_queue_task304", scope: !2, file: !3, line: 66, type: !48, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 232, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 29)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_flip_work_queue305", scope: !2, file: !3, line: 89, type: !48, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_flip_work_commit306", scope: !2, file: !3, line: 112, type: !48, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "__key", scope: !159, file: !3, line: 156, type: !166, isLocal: true, isDefinition: true)
!159 = distinct !DISubprogram(name: "drm_flip_work_init", scope: !3, file: !3, line: 147, type: !160, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !162)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !60, !65, !69}
!162 = !{!163, !164, !165}
!163 = !DILocalVariable(name: "work", arg: 1, scope: !159, file: !3, line: 147, type: !60)
!164 = !DILocalVariable(name: "name", arg: 2, scope: !159, file: !3, line: 148, type: !65)
!165 = !DILocalVariable(name: "func", arg: 3, scope: !159, file: !3, line: 148, type: !69)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !167, line: 206, elements: !168)
!167 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!168 = !{}
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_flip_work_init307", scope: !2, file: !3, line: 158, type: !48, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !3, line: 168, type: !173, isLocal: true, isDefinition: true)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 256, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 32)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_flip_work_cleanup308", scope: !2, file: !3, line: 170, type: !48, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !38, line: 480, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 168, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 21)
!183 = !{i32 7, !"Dwarf Version", i32 5}
!184 = !{i32 2, !"Debug Info Version", i32 3}
!185 = !{i32 1, !"wchar_size", i32 2}
!186 = !{i32 8, !"cf-protection-branch", i32 1}
!187 = !{i32 4, !"function_return_thunk_extern", i32 1}
!188 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!189 = !{i32 1, !"Code Model", i32 2}
!190 = !{i32 1, !"override-stack-alignment", i32 8}
!191 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!192 = distinct !DISubprogram(name: "drm_flip_work_allocate_task", scope: !3, file: !3, line: 37, type: !193, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !195)
!193 = !DISubroutineType(types: !194)
!194 = !{!138, !48, !49}
!195 = !{!196, !197, !198}
!196 = !DILocalVariable(name: "data", arg: 1, scope: !192, file: !3, line: 37, type: !48)
!197 = !DILocalVariable(name: "flags", arg: 2, scope: !192, file: !3, line: 37, type: !49)
!198 = !DILocalVariable(name: "task", scope: !192, file: !3, line: 39, type: !138)
!199 = !DILocation(line: 37, column: 57, scope: !192)
!200 = !DILocation(line: 37, column: 69, scope: !192)
!201 = !DILocation(line: 39, column: 2, scope: !192)
!202 = !DILocation(line: 39, column: 24, scope: !192)
!203 = !DILocation(line: 41, column: 32, scope: !192)
!204 = !DILocation(line: 41, column: 9, scope: !192)
!205 = !DILocation(line: 41, column: 7, scope: !192)
!206 = !DILocation(line: 42, column: 6, scope: !207)
!207 = distinct !DILexicalBlock(scope: !192, file: !3, line: 42, column: 6)
!208 = !DILocation(line: 42, column: 6, scope: !192)
!209 = !DILocation(line: 43, column: 16, scope: !207)
!210 = !DILocation(line: 43, column: 3, scope: !207)
!211 = !DILocation(line: 43, column: 9, scope: !207)
!212 = !DILocation(line: 43, column: 14, scope: !207)
!213 = !DILocation(line: 45, column: 9, scope: !192)
!214 = !DILocation(line: 46, column: 1, scope: !192)
!215 = !DILocation(line: 45, column: 2, scope: !192)
!216 = distinct !DISubprogram(name: "kzalloc", scope: !38, file: !38, line: 719, type: !217, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !223)
!217 = !DISubroutineType(types: !218)
!218 = !{!48, !219, !49}
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !50, line: 61, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !221, line: 72, baseType: !222)
!221 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !221, line: 16, baseType: !51)
!223 = !{!224, !225}
!224 = !DILocalVariable(name: "size", arg: 1, scope: !216, file: !38, line: 719, type: !219)
!225 = !DILocalVariable(name: "flags", arg: 2, scope: !216, file: !38, line: 719, type: !49)
!226 = !DILocation(line: 719, column: 52, scope: !216)
!227 = !DILocation(line: 719, column: 64, scope: !216)
!228 = !DILocation(line: 721, column: 17, scope: !216)
!229 = !DILocation(line: 721, column: 23, scope: !216)
!230 = !DILocation(line: 721, column: 29, scope: !216)
!231 = !DILocation(line: 721, column: 9, scope: !216)
!232 = !DILocation(line: 721, column: 2, scope: !216)
!233 = distinct !DISubprogram(name: "drm_flip_work_queue_task", scope: !3, file: !3, line: 57, type: !234, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !236)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !60, !138}
!236 = !{!237, !238, !239, !240, !244}
!237 = !DILocalVariable(name: "work", arg: 1, scope: !233, file: !3, line: 57, type: !60)
!238 = !DILocalVariable(name: "task", arg: 2, scope: !233, file: !3, line: 58, type: !138)
!239 = !DILocalVariable(name: "flags", scope: !233, file: !3, line: 60, type: !51)
!240 = !DILocalVariable(name: "__dummy", scope: !241, file: !3, line: 62, type: !51)
!241 = distinct !DILexicalBlock(scope: !242, file: !3, line: 62, column: 2)
!242 = distinct !DILexicalBlock(scope: !243, file: !3, line: 62, column: 2)
!243 = distinct !DILexicalBlock(scope: !233, file: !3, line: 62, column: 2)
!244 = !DILocalVariable(name: "__dummy2", scope: !241, file: !3, line: 62, type: !51)
!245 = !DILocation(line: 57, column: 53, scope: !233)
!246 = !DILocation(line: 58, column: 32, scope: !233)
!247 = !DILocation(line: 60, column: 2, scope: !233)
!248 = !DILocation(line: 60, column: 16, scope: !233)
!249 = !DILocation(line: 62, column: 2, scope: !233)
!250 = !DILocation(line: 62, column: 2, scope: !243)
!251 = !DILocation(line: 62, column: 2, scope: !241)
!252 = !DILocation(line: 62, column: 2, scope: !242)
!253 = !DILocation(line: 63, column: 17, scope: !233)
!254 = !DILocation(line: 63, column: 23, scope: !233)
!255 = !DILocation(line: 63, column: 30, scope: !233)
!256 = !DILocation(line: 63, column: 36, scope: !233)
!257 = !DILocation(line: 63, column: 2, scope: !233)
!258 = !DILocation(line: 64, column: 26, scope: !233)
!259 = !DILocation(line: 64, column: 32, scope: !233)
!260 = !DILocation(line: 64, column: 38, scope: !233)
!261 = !DILocation(line: 64, column: 2, scope: !233)
!262 = !DILocation(line: 65, column: 1, scope: !233)
!263 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !264, file: !264, line: 32, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!265 = !DISubroutineType(types: !266)
!266 = !{!51, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !107, line: 23, baseType: !106)
!269 = distinct !DISubprogram(name: "spinlock_check", scope: !270, file: !270, line: 324, type: !271, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !274)
!270 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!271 = !DISubroutineType(types: !272)
!272 = !{!267, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!274 = !{!275}
!275 = !DILocalVariable(name: "lock", arg: 1, scope: !269, file: !270, line: 324, type: !273)
!276 = !DILocation(line: 324, column: 67, scope: !269)
!277 = !DILocation(line: 326, column: 10, scope: !269)
!278 = !DILocation(line: 326, column: 16, scope: !269)
!279 = !DILocation(line: 326, column: 2, scope: !269)
!280 = distinct !DISubprogram(name: "list_add_tail", scope: !281, file: !281, line: 181, type: !282, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !284)
!281 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!282 = !DISubroutineType(types: !283)
!283 = !{null, !54, !54}
!284 = !{!285, !286}
!285 = !DILocalVariable(name: "new", arg: 1, scope: !280, file: !281, line: 181, type: !54)
!286 = !DILocalVariable(name: "head", arg: 2, scope: !280, file: !281, line: 181, type: !54)
!287 = !DILocation(line: 181, column: 52, scope: !280)
!288 = !DILocation(line: 181, column: 75, scope: !280)
!289 = !DILocation(line: 183, column: 13, scope: !280)
!290 = !DILocation(line: 183, column: 18, scope: !280)
!291 = !DILocation(line: 183, column: 24, scope: !280)
!292 = !DILocation(line: 183, column: 30, scope: !280)
!293 = !DILocation(line: 183, column: 2, scope: !280)
!294 = !DILocation(line: 184, column: 1, scope: !280)
!295 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !270, file: !270, line: 404, type: !296, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !273, !51}
!298 = !{!299, !300, !301, !304}
!299 = !DILocalVariable(name: "lock", arg: 1, scope: !295, file: !270, line: 404, type: !273)
!300 = !DILocalVariable(name: "flags", arg: 2, scope: !295, file: !270, line: 404, type: !51)
!301 = !DILocalVariable(name: "__dummy", scope: !302, file: !270, line: 406, type: !51)
!302 = distinct !DILexicalBlock(scope: !303, file: !270, line: 406, column: 2)
!303 = distinct !DILexicalBlock(scope: !295, file: !270, line: 406, column: 2)
!304 = !DILocalVariable(name: "__dummy2", scope: !302, file: !270, line: 406, type: !51)
!305 = !DILocation(line: 404, column: 64, scope: !295)
!306 = !DILocation(line: 404, column: 84, scope: !295)
!307 = !DILocation(line: 406, column: 2, scope: !295)
!308 = !DILocation(line: 406, column: 2, scope: !302)
!309 = !DILocation(line: 406, column: 2, scope: !303)
!310 = !DILocation(line: 407, column: 1, scope: !295)
!311 = distinct !DISubprogram(name: "drm_flip_work_queue", scope: !3, file: !3, line: 76, type: !71, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!312 = !{!313, !314, !315}
!313 = !DILocalVariable(name: "work", arg: 1, scope: !311, file: !3, line: 76, type: !60)
!314 = !DILocalVariable(name: "val", arg: 2, scope: !311, file: !3, line: 76, type: !48)
!315 = !DILocalVariable(name: "task", scope: !311, file: !3, line: 78, type: !138)
!316 = !DILocation(line: 76, column: 48, scope: !311)
!317 = !DILocation(line: 76, column: 60, scope: !311)
!318 = !DILocation(line: 78, column: 2, scope: !311)
!319 = !DILocation(line: 78, column: 24, scope: !311)
!320 = !DILocation(line: 80, column: 37, scope: !311)
!321 = !DILocation(line: 81, column: 5, scope: !311)
!322 = !DILocation(line: 80, column: 9, scope: !311)
!323 = !DILocation(line: 80, column: 7, scope: !311)
!324 = !DILocation(line: 82, column: 6, scope: !325)
!325 = distinct !DILexicalBlock(scope: !311, file: !3, line: 82, column: 6)
!326 = !DILocation(line: 82, column: 6, scope: !311)
!327 = !DILocation(line: 83, column: 28, scope: !328)
!328 = distinct !DILexicalBlock(scope: !325, file: !3, line: 82, column: 12)
!329 = !DILocation(line: 83, column: 34, scope: !328)
!330 = !DILocation(line: 83, column: 3, scope: !328)
!331 = !DILocation(line: 84, column: 2, scope: !328)
!332 = !DILocation(line: 85, column: 3, scope: !333)
!333 = distinct !DILexicalBlock(scope: !325, file: !3, line: 84, column: 9)
!334 = !DILocation(line: 86, column: 3, scope: !333)
!335 = !DILocation(line: 86, column: 9, scope: !333)
!336 = !DILocation(line: 86, column: 14, scope: !333)
!337 = !DILocation(line: 86, column: 20, scope: !333)
!338 = !DILocation(line: 88, column: 1, scope: !311)
!339 = distinct !DISubprogram(name: "drm_can_sleep", scope: !340, file: !340, line: 76, type: !341, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!340 = !DIFile(filename: "./include/drm/drm_util.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2063403dfbc3b7dde86563e5a9355321")
!341 = !DISubroutineType(types: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !50, line: 35, baseType: !344)
!344 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!345 = !{!346, !349, !352, !353, !356}
!346 = !DILocalVariable(name: "_flags", scope: !347, file: !340, line: 78, type: !51)
!347 = distinct !DILexicalBlock(scope: !348, file: !340, line: 78, column: 40)
!348 = distinct !DILexicalBlock(scope: !339, file: !340, line: 78, column: 6)
!349 = !DILocalVariable(name: "__dummy", scope: !350, file: !340, line: 78, type: !51)
!350 = distinct !DILexicalBlock(scope: !351, file: !340, line: 78, column: 40)
!351 = distinct !DILexicalBlock(scope: !347, file: !340, line: 78, column: 40)
!352 = !DILocalVariable(name: "__dummy2", scope: !350, file: !340, line: 78, type: !51)
!353 = !DILocalVariable(name: "__dummy", scope: !354, file: !340, line: 78, type: !51)
!354 = distinct !DILexicalBlock(scope: !355, file: !340, line: 78, column: 40)
!355 = distinct !DILexicalBlock(scope: !347, file: !340, line: 78, column: 40)
!356 = !DILocalVariable(name: "__dummy2", scope: !354, file: !340, line: 78, type: !51)
!357 = !DILocation(line: 78, column: 6, scope: !348)
!358 = !DILocation(line: 78, column: 37, scope: !348)
!359 = !DILocation(line: 78, column: 40, scope: !347)
!360 = !DILocation(line: 78, column: 40, scope: !350)
!361 = !DILocation(line: 78, column: 40, scope: !351)
!362 = !DILocation(line: 78, column: 40, scope: !354)
!363 = !DILocation(line: 78, column: 40, scope: !355)
!364 = !DILocation(line: 78, column: 40, scope: !348)
!365 = !DILocation(line: 78, column: 6, scope: !339)
!366 = !DILocation(line: 79, column: 3, scope: !348)
!367 = !DILocation(line: 80, column: 2, scope: !339)
!368 = !DILocation(line: 81, column: 1, scope: !339)
!369 = !DISubprogram(name: "__drm_err", scope: !370, file: !370, line: 573, type: !371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!370 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!371 = !DISubroutineType(types: !372)
!372 = !{null, !65, null}
!373 = distinct !DISubprogram(name: "drm_flip_work_commit", scope: !3, file: !3, line: 101, type: !374, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !378)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !60, !376}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !6, line: 18, flags: DIFlagFwdDecl)
!378 = !{!379, !380, !381, !382, !386}
!379 = !DILocalVariable(name: "work", arg: 1, scope: !373, file: !3, line: 101, type: !60)
!380 = !DILocalVariable(name: "wq", arg: 2, scope: !373, file: !3, line: 102, type: !376)
!381 = !DILocalVariable(name: "flags", scope: !373, file: !3, line: 104, type: !51)
!382 = !DILocalVariable(name: "__dummy", scope: !383, file: !3, line: 106, type: !51)
!383 = distinct !DILexicalBlock(scope: !384, file: !3, line: 106, column: 2)
!384 = distinct !DILexicalBlock(scope: !385, file: !3, line: 106, column: 2)
!385 = distinct !DILexicalBlock(scope: !373, file: !3, line: 106, column: 2)
!386 = !DILocalVariable(name: "__dummy2", scope: !383, file: !3, line: 106, type: !51)
!387 = !DILocation(line: 101, column: 49, scope: !373)
!388 = !DILocation(line: 102, column: 28, scope: !373)
!389 = !DILocation(line: 104, column: 2, scope: !373)
!390 = !DILocation(line: 104, column: 16, scope: !373)
!391 = !DILocation(line: 106, column: 2, scope: !373)
!392 = !DILocation(line: 106, column: 2, scope: !385)
!393 = !DILocation(line: 106, column: 2, scope: !383)
!394 = !DILocation(line: 106, column: 2, scope: !384)
!395 = !DILocation(line: 107, column: 20, scope: !373)
!396 = !DILocation(line: 107, column: 26, scope: !373)
!397 = !DILocation(line: 107, column: 35, scope: !373)
!398 = !DILocation(line: 107, column: 41, scope: !373)
!399 = !DILocation(line: 107, column: 2, scope: !373)
!400 = !DILocation(line: 108, column: 18, scope: !373)
!401 = !DILocation(line: 108, column: 24, scope: !373)
!402 = !DILocation(line: 108, column: 2, scope: !373)
!403 = !DILocation(line: 109, column: 26, scope: !373)
!404 = !DILocation(line: 109, column: 32, scope: !373)
!405 = !DILocation(line: 109, column: 38, scope: !373)
!406 = !DILocation(line: 109, column: 2, scope: !373)
!407 = !DILocation(line: 110, column: 13, scope: !373)
!408 = !DILocation(line: 110, column: 18, scope: !373)
!409 = !DILocation(line: 110, column: 24, scope: !373)
!410 = !DILocation(line: 110, column: 2, scope: !373)
!411 = !DILocation(line: 111, column: 1, scope: !373)
!412 = distinct !DISubprogram(name: "list_splice_tail", scope: !281, file: !281, line: 554, type: !282, scopeLine: 556, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !413)
!413 = !{!414, !415}
!414 = !DILocalVariable(name: "list", arg: 1, scope: !412, file: !281, line: 554, type: !54)
!415 = !DILocalVariable(name: "head", arg: 2, scope: !412, file: !281, line: 555, type: !54)
!416 = !DILocation(line: 554, column: 55, scope: !412)
!417 = !DILocation(line: 555, column: 23, scope: !412)
!418 = !DILocation(line: 557, column: 18, scope: !419)
!419 = distinct !DILexicalBlock(scope: !412, file: !281, line: 557, column: 6)
!420 = !DILocation(line: 557, column: 7, scope: !419)
!421 = !DILocation(line: 557, column: 6, scope: !412)
!422 = !DILocation(line: 558, column: 17, scope: !419)
!423 = !DILocation(line: 558, column: 23, scope: !419)
!424 = !DILocation(line: 558, column: 29, scope: !419)
!425 = !DILocation(line: 558, column: 35, scope: !419)
!426 = !DILocation(line: 558, column: 3, scope: !419)
!427 = !DILocation(line: 559, column: 1, scope: !412)
!428 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !281, file: !281, line: 35, type: !429, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !54}
!431 = !{!432}
!432 = !DILocalVariable(name: "list", arg: 1, scope: !428, file: !281, line: 35, type: !54)
!433 = !DILocation(line: 35, column: 53, scope: !428)
!434 = !DILocation(line: 37, column: 2, scope: !428)
!435 = !DILocation(line: 37, column: 2, scope: !436)
!436 = distinct !DILexicalBlock(scope: !428, file: !281, line: 37, column: 2)
!437 = !DILocation(line: 37, column: 2, scope: !438)
!438 = distinct !DILexicalBlock(scope: !436, file: !281, line: 37, column: 2)
!439 = !DILocation(line: 37, column: 2, scope: !440)
!440 = distinct !DILexicalBlock(scope: !436, file: !281, line: 37, column: 2)
!441 = !DILocation(line: 38, column: 2, scope: !428)
!442 = !DILocation(line: 38, column: 2, scope: !443)
!443 = distinct !DILexicalBlock(scope: !428, file: !281, line: 38, column: 2)
!444 = !DILocation(line: 38, column: 2, scope: !445)
!445 = distinct !DILexicalBlock(scope: !443, file: !281, line: 38, column: 2)
!446 = !DILocation(line: 38, column: 2, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !281, line: 38, column: 2)
!448 = !DILocation(line: 39, column: 1, scope: !428)
!449 = distinct !DISubprogram(name: "queue_work", scope: !6, file: !6, line: 559, type: !450, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{!343, !376, !94}
!452 = !{!453, !454}
!453 = !DILocalVariable(name: "wq", arg: 1, scope: !449, file: !6, line: 559, type: !376)
!454 = !DILocalVariable(name: "work", arg: 2, scope: !449, file: !6, line: 560, type: !94)
!455 = !DILocation(line: 559, column: 56, scope: !449)
!456 = !DILocation(line: 560, column: 30, scope: !449)
!457 = !DILocation(line: 562, column: 41, scope: !449)
!458 = !DILocation(line: 562, column: 45, scope: !449)
!459 = !DILocation(line: 562, column: 9, scope: !449)
!460 = !DILocation(line: 562, column: 2, scope: !449)
!461 = !DILocation(line: 147, column: 47, scope: !159)
!462 = !DILocation(line: 148, column: 15, scope: !159)
!463 = !DILocation(line: 148, column: 37, scope: !159)
!464 = !DILocation(line: 150, column: 15, scope: !159)
!465 = !DILocation(line: 150, column: 2, scope: !159)
!466 = !DILocation(line: 150, column: 8, scope: !159)
!467 = !DILocation(line: 150, column: 13, scope: !159)
!468 = !DILocation(line: 151, column: 18, scope: !159)
!469 = !DILocation(line: 151, column: 24, scope: !159)
!470 = !DILocation(line: 151, column: 2, scope: !159)
!471 = !DILocation(line: 152, column: 18, scope: !159)
!472 = !DILocation(line: 152, column: 24, scope: !159)
!473 = !DILocation(line: 152, column: 2, scope: !159)
!474 = !DILocation(line: 153, column: 2, scope: !159)
!475 = !DILocation(line: 153, column: 2, scope: !476)
!476 = distinct !DILexicalBlock(scope: !159, file: !3, line: 153, column: 2)
!477 = !DILocation(line: 154, column: 15, scope: !159)
!478 = !DILocation(line: 154, column: 2, scope: !159)
!479 = !DILocation(line: 154, column: 8, scope: !159)
!480 = !DILocation(line: 154, column: 13, scope: !159)
!481 = !DILocation(line: 156, column: 2, scope: !159)
!482 = !DILocation(line: 156, column: 2, scope: !483)
!483 = distinct !DILexicalBlock(scope: !159, file: !3, line: 156, column: 2)
!484 = !DILocation(line: 156, column: 2, scope: !485)
!485 = distinct !DILexicalBlock(scope: !483, file: !3, line: 156, column: 2)
!486 = !DILocation(line: 157, column: 1, scope: !159)
!487 = distinct !DISubprogram(name: "__init_work", scope: !6, file: !6, line: 263, type: !488, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !490)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !94, !59}
!490 = !{!491, !492}
!491 = !DILocalVariable(name: "work", arg: 1, scope: !487, file: !6, line: 263, type: !94)
!492 = !DILocalVariable(name: "onstack", arg: 2, scope: !487, file: !6, line: 263, type: !59)
!493 = !DILocation(line: 263, column: 52, scope: !487)
!494 = !DILocation(line: 263, column: 62, scope: !487)
!495 = !DILocation(line: 263, column: 73, scope: !487)
!496 = distinct !DISubprogram(name: "flip_worker", scope: !3, file: !3, line: 114, type: !92, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!497 = !{!498, !499, !500, !502, !503, !504, !506, !507, !511, !512, !515, !517}
!498 = !DILocalVariable(name: "w", arg: 1, scope: !496, file: !3, line: 114, type: !94)
!499 = !DILocalVariable(name: "work", scope: !496, file: !3, line: 116, type: !60)
!500 = !DILocalVariable(name: "__mptr", scope: !501, file: !3, line: 116, type: !48)
!501 = distinct !DILexicalBlock(scope: !496, file: !3, line: 116, column: 31)
!502 = !DILocalVariable(name: "tasks", scope: !496, file: !3, line: 117, type: !55)
!503 = !DILocalVariable(name: "flags", scope: !496, file: !3, line: 118, type: !51)
!504 = !DILocalVariable(name: "task", scope: !505, file: !3, line: 121, type: !138)
!505 = distinct !DILexicalBlock(scope: !496, file: !3, line: 120, column: 12)
!506 = !DILocalVariable(name: "tmp", scope: !505, file: !3, line: 121, type: !138)
!507 = !DILocalVariable(name: "__dummy", scope: !508, file: !3, line: 124, type: !51)
!508 = distinct !DILexicalBlock(scope: !509, file: !3, line: 124, column: 3)
!509 = distinct !DILexicalBlock(scope: !510, file: !3, line: 124, column: 3)
!510 = distinct !DILexicalBlock(scope: !505, file: !3, line: 124, column: 3)
!511 = !DILocalVariable(name: "__dummy2", scope: !508, file: !3, line: 124, type: !51)
!512 = !DILocalVariable(name: "__mptr", scope: !513, file: !3, line: 132, type: !48)
!513 = distinct !DILexicalBlock(scope: !514, file: !3, line: 132, column: 3)
!514 = distinct !DILexicalBlock(scope: !505, file: !3, line: 132, column: 3)
!515 = !DILocalVariable(name: "__mptr", scope: !516, file: !3, line: 132, type: !48)
!516 = distinct !DILexicalBlock(scope: !514, file: !3, line: 132, column: 3)
!517 = !DILocalVariable(name: "__mptr", scope: !518, file: !3, line: 132, type: !48)
!518 = distinct !DILexicalBlock(scope: !519, file: !3, line: 132, column: 3)
!519 = distinct !DILexicalBlock(scope: !514, file: !3, line: 132, column: 3)
!520 = !DILocation(line: 114, column: 45, scope: !496)
!521 = !DILocation(line: 116, column: 2, scope: !496)
!522 = !DILocation(line: 116, column: 24, scope: !496)
!523 = !DILocation(line: 116, column: 31, scope: !501)
!524 = !DILocation(line: 116, column: 31, scope: !496)
!525 = !DILocation(line: 117, column: 2, scope: !496)
!526 = !DILocation(line: 117, column: 19, scope: !496)
!527 = !DILocation(line: 118, column: 2, scope: !496)
!528 = !DILocation(line: 118, column: 16, scope: !496)
!529 = !DILocation(line: 120, column: 2, scope: !496)
!530 = !DILocation(line: 121, column: 3, scope: !505)
!531 = !DILocation(line: 121, column: 25, scope: !505)
!532 = !DILocation(line: 121, column: 32, scope: !505)
!533 = !DILocation(line: 123, column: 3, scope: !505)
!534 = !DILocation(line: 124, column: 3, scope: !505)
!535 = !DILocation(line: 124, column: 3, scope: !510)
!536 = !DILocation(line: 124, column: 3, scope: !508)
!537 = !DILocation(line: 124, column: 3, scope: !509)
!538 = !DILocation(line: 125, column: 21, scope: !505)
!539 = !DILocation(line: 125, column: 27, scope: !505)
!540 = !DILocation(line: 125, column: 3, scope: !505)
!541 = !DILocation(line: 126, column: 19, scope: !505)
!542 = !DILocation(line: 126, column: 25, scope: !505)
!543 = !DILocation(line: 126, column: 3, scope: !505)
!544 = !DILocation(line: 127, column: 27, scope: !505)
!545 = !DILocation(line: 127, column: 33, scope: !505)
!546 = !DILocation(line: 127, column: 39, scope: !505)
!547 = !DILocation(line: 127, column: 3, scope: !505)
!548 = !DILocation(line: 129, column: 7, scope: !549)
!549 = distinct !DILexicalBlock(scope: !505, file: !3, line: 129, column: 7)
!550 = !DILocation(line: 129, column: 7, scope: !505)
!551 = !DILocation(line: 130, column: 4, scope: !549)
!552 = !DILocation(line: 132, column: 3, scope: !513)
!553 = !DILocation(line: 132, column: 3, scope: !514)
!554 = !DILocation(line: 132, column: 3, scope: !516)
!555 = !DILocation(line: 132, column: 3, scope: !519)
!556 = !DILocation(line: 133, column: 4, scope: !557)
!557 = distinct !DILexicalBlock(scope: !519, file: !3, line: 132, column: 53)
!558 = !DILocation(line: 133, column: 10, scope: !557)
!559 = !DILocation(line: 133, column: 15, scope: !557)
!560 = !DILocation(line: 133, column: 21, scope: !557)
!561 = !DILocation(line: 133, column: 27, scope: !557)
!562 = !DILocation(line: 134, column: 10, scope: !557)
!563 = !DILocation(line: 134, column: 4, scope: !557)
!564 = !DILocation(line: 135, column: 3, scope: !557)
!565 = !DILocation(line: 132, column: 3, scope: !518)
!566 = distinct !{!566, !553, !567, !568, !569}
!567 = !DILocation(line: 135, column: 3, scope: !514)
!568 = !{!"llvm.loop.mustprogress"}
!569 = !{!"llvm.loop.unroll.disable"}
!570 = !DILocation(line: 136, column: 2, scope: !496)
!571 = distinct !{!571, !529, !570, !569}
!572 = !DILocation(line: 137, column: 1, scope: !496)
!573 = distinct !DISubprogram(name: "drm_flip_work_cleanup", scope: !3, file: !3, line: 166, type: !574, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !60}
!576 = !{!577, !578, !580}
!577 = !DILocalVariable(name: "work", arg: 1, scope: !573, file: !3, line: 166, type: !60)
!578 = !DILocalVariable(name: "__ret_warn_on", scope: !579, file: !3, line: 168, type: !59)
!579 = distinct !DILexicalBlock(scope: !573, file: !3, line: 168, column: 2)
!580 = !DILocalVariable(name: "__flags", scope: !581, file: !3, line: 168, type: !59)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 168, column: 2)
!582 = distinct !DILexicalBlock(scope: !579, file: !3, line: 168, column: 2)
!583 = !DILocation(line: 166, column: 50, scope: !573)
!584 = !DILocation(line: 168, column: 2, scope: !579)
!585 = !DILocation(line: 168, column: 2, scope: !582)
!586 = !DILocation(line: 168, column: 2, scope: !581)
!587 = !DILocation(line: 168, column: 2, scope: !588)
!588 = distinct !DILexicalBlock(scope: !581, file: !3, line: 168, column: 2)
!589 = !DILocation(line: 168, column: 2, scope: !590)
!590 = distinct !DILexicalBlock(scope: !581, file: !3, line: 168, column: 2)
!591 = !{i64 2155147079, i64 2155147108, i64 2155147154, i64 2155147212, i64 2155147266, i64 2155147320, i64 2155147375, i64 2155147406, i64 2155147714, i64 2155147720, i64 2155147767, i64 2155147790, i64 2155147816}
!592 = !DILocation(line: 168, column: 2, scope: !593)
!593 = distinct !DILexicalBlock(scope: !581, file: !3, line: 168, column: 2)
!594 = !DILocation(line: 168, column: 2, scope: !573)
!595 = !DILocation(line: 169, column: 1, scope: !573)
!596 = distinct !DISubprogram(name: "list_empty", scope: !281, file: !281, line: 371, type: !597, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !601)
!597 = !DISubroutineType(types: !598)
!598 = !{!59, !599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!601 = !{!602}
!602 = !DILocalVariable(name: "head", arg: 1, scope: !596, file: !281, line: 371, type: !599)
!603 = !DILocation(line: 371, column: 54, scope: !596)
!604 = !DILocation(line: 373, column: 9, scope: !605)
!605 = distinct !DILexicalBlock(scope: !596, file: !281, line: 373, column: 9)
!606 = !DILocation(line: 373, column: 9, scope: !607)
!607 = distinct !DILexicalBlock(scope: !605, file: !281, line: 373, column: 9)
!608 = !DILocation(line: 373, column: 34, scope: !596)
!609 = !DILocation(line: 373, column: 31, scope: !596)
!610 = !DILocation(line: 373, column: 2, scope: !596)
!611 = distinct !DISubprogram(name: "kmalloc", scope: !38, file: !38, line: 591, type: !217, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !612)
!612 = !{!613, !614, !615}
!613 = !DILocalVariable(name: "size", arg: 1, scope: !611, file: !38, line: 591, type: !219)
!614 = !DILocalVariable(name: "flags", arg: 2, scope: !611, file: !38, line: 591, type: !49)
!615 = !DILocalVariable(name: "index", scope: !616, file: !38, line: 594, type: !7)
!616 = distinct !DILexicalBlock(scope: !617, file: !38, line: 593, column: 42)
!617 = distinct !DILexicalBlock(scope: !611, file: !38, line: 593, column: 6)
!618 = !DILocation(line: 591, column: 61, scope: !611)
!619 = !DILocation(line: 591, column: 73, scope: !611)
!620 = !DILocation(line: 593, column: 27, scope: !617)
!621 = !DILocation(line: 593, column: 6, scope: !617)
!622 = !DILocation(line: 593, column: 33, scope: !617)
!623 = !DILocation(line: 593, column: 36, scope: !617)
!624 = !DILocation(line: 593, column: 6, scope: !611)
!625 = !DILocation(line: 594, column: 3, scope: !616)
!626 = !DILocation(line: 594, column: 16, scope: !616)
!627 = !DILocation(line: 596, column: 7, scope: !628)
!628 = distinct !DILexicalBlock(scope: !616, file: !38, line: 596, column: 7)
!629 = !DILocation(line: 596, column: 12, scope: !628)
!630 = !DILocation(line: 596, column: 7, scope: !616)
!631 = !DILocation(line: 597, column: 25, scope: !628)
!632 = !DILocation(line: 597, column: 31, scope: !628)
!633 = !DILocation(line: 597, column: 11, scope: !628)
!634 = !DILocation(line: 597, column: 4, scope: !628)
!635 = !DILocation(line: 599, column: 11, scope: !616)
!636 = !DILocation(line: 599, column: 9, scope: !616)
!637 = !DILocation(line: 601, column: 33, scope: !616)
!638 = !DILocation(line: 601, column: 40, scope: !616)
!639 = !DILocation(line: 601, column: 20, scope: !616)
!640 = !DILocation(line: 601, column: 5, scope: !616)
!641 = !DILocation(line: 601, column: 51, scope: !616)
!642 = !DILocation(line: 602, column: 5, scope: !616)
!643 = !DILocation(line: 602, column: 12, scope: !616)
!644 = !DILocation(line: 600, column: 10, scope: !616)
!645 = !DILocation(line: 600, column: 3, scope: !616)
!646 = !DILocation(line: 603, column: 2, scope: !617)
!647 = !DILocation(line: 604, column: 19, scope: !611)
!648 = !DILocation(line: 604, column: 25, scope: !611)
!649 = !DILocation(line: 604, column: 9, scope: !611)
!650 = !DILocation(line: 604, column: 2, scope: !611)
!651 = !DILocation(line: 605, column: 1, scope: !611)
!652 = !DISubprogram(name: "kmalloc_large", scope: !38, file: !38, line: 531, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!653 = distinct !DISubprogram(name: "__kmalloc_index", scope: !38, file: !38, line: 444, type: !654, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !656)
!654 = !DISubroutineType(types: !655)
!655 = !{!7, !219, !343}
!656 = !{!657, !658}
!657 = !DILocalVariable(name: "size", arg: 1, scope: !653, file: !38, line: 444, type: !219)
!658 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !653, file: !38, line: 445, type: !343)
!659 = !DILocation(line: 444, column: 60, scope: !653)
!660 = !DILocation(line: 445, column: 16, scope: !653)
!661 = !DILocation(line: 447, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !653, file: !38, line: 447, column: 6)
!663 = !DILocation(line: 447, column: 6, scope: !653)
!664 = !DILocation(line: 448, column: 3, scope: !662)
!665 = !DILocation(line: 450, column: 6, scope: !666)
!666 = distinct !DILexicalBlock(scope: !653, file: !38, line: 450, column: 6)
!667 = !DILocation(line: 450, column: 11, scope: !666)
!668 = !DILocation(line: 450, column: 6, scope: !653)
!669 = !DILocation(line: 451, column: 3, scope: !666)
!670 = !DILocation(line: 453, column: 32, scope: !671)
!671 = distinct !DILexicalBlock(scope: !653, file: !38, line: 453, column: 6)
!672 = !DILocation(line: 453, column: 37, scope: !671)
!673 = !DILocation(line: 453, column: 42, scope: !671)
!674 = !DILocation(line: 453, column: 45, scope: !671)
!675 = !DILocation(line: 453, column: 50, scope: !671)
!676 = !DILocation(line: 453, column: 6, scope: !653)
!677 = !DILocation(line: 454, column: 3, scope: !671)
!678 = !DILocation(line: 455, column: 32, scope: !679)
!679 = distinct !DILexicalBlock(scope: !653, file: !38, line: 455, column: 6)
!680 = !DILocation(line: 455, column: 37, scope: !679)
!681 = !DILocation(line: 455, column: 43, scope: !679)
!682 = !DILocation(line: 455, column: 46, scope: !679)
!683 = !DILocation(line: 455, column: 51, scope: !679)
!684 = !DILocation(line: 455, column: 6, scope: !653)
!685 = !DILocation(line: 456, column: 3, scope: !679)
!686 = !DILocation(line: 457, column: 6, scope: !687)
!687 = distinct !DILexicalBlock(scope: !653, file: !38, line: 457, column: 6)
!688 = !DILocation(line: 457, column: 11, scope: !687)
!689 = !DILocation(line: 457, column: 6, scope: !653)
!690 = !DILocation(line: 457, column: 26, scope: !687)
!691 = !DILocation(line: 458, column: 6, scope: !692)
!692 = distinct !DILexicalBlock(scope: !653, file: !38, line: 458, column: 6)
!693 = !DILocation(line: 458, column: 11, scope: !692)
!694 = !DILocation(line: 458, column: 6, scope: !653)
!695 = !DILocation(line: 458, column: 26, scope: !692)
!696 = !DILocation(line: 459, column: 6, scope: !697)
!697 = distinct !DILexicalBlock(scope: !653, file: !38, line: 459, column: 6)
!698 = !DILocation(line: 459, column: 11, scope: !697)
!699 = !DILocation(line: 459, column: 6, scope: !653)
!700 = !DILocation(line: 459, column: 26, scope: !697)
!701 = !DILocation(line: 460, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !653, file: !38, line: 460, column: 6)
!703 = !DILocation(line: 460, column: 11, scope: !702)
!704 = !DILocation(line: 460, column: 6, scope: !653)
!705 = !DILocation(line: 460, column: 26, scope: !702)
!706 = !DILocation(line: 461, column: 6, scope: !707)
!707 = distinct !DILexicalBlock(scope: !653, file: !38, line: 461, column: 6)
!708 = !DILocation(line: 461, column: 11, scope: !707)
!709 = !DILocation(line: 461, column: 6, scope: !653)
!710 = !DILocation(line: 461, column: 26, scope: !707)
!711 = !DILocation(line: 462, column: 6, scope: !712)
!712 = distinct !DILexicalBlock(scope: !653, file: !38, line: 462, column: 6)
!713 = !DILocation(line: 462, column: 11, scope: !712)
!714 = !DILocation(line: 462, column: 6, scope: !653)
!715 = !DILocation(line: 462, column: 26, scope: !712)
!716 = !DILocation(line: 463, column: 6, scope: !717)
!717 = distinct !DILexicalBlock(scope: !653, file: !38, line: 463, column: 6)
!718 = !DILocation(line: 463, column: 11, scope: !717)
!719 = !DILocation(line: 463, column: 6, scope: !653)
!720 = !DILocation(line: 463, column: 26, scope: !717)
!721 = !DILocation(line: 464, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !653, file: !38, line: 464, column: 6)
!723 = !DILocation(line: 464, column: 11, scope: !722)
!724 = !DILocation(line: 464, column: 6, scope: !653)
!725 = !DILocation(line: 464, column: 26, scope: !722)
!726 = !DILocation(line: 465, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !653, file: !38, line: 465, column: 6)
!728 = !DILocation(line: 465, column: 11, scope: !727)
!729 = !DILocation(line: 465, column: 6, scope: !653)
!730 = !DILocation(line: 465, column: 26, scope: !727)
!731 = !DILocation(line: 466, column: 6, scope: !732)
!732 = distinct !DILexicalBlock(scope: !653, file: !38, line: 466, column: 6)
!733 = !DILocation(line: 466, column: 11, scope: !732)
!734 = !DILocation(line: 466, column: 6, scope: !653)
!735 = !DILocation(line: 466, column: 26, scope: !732)
!736 = !DILocation(line: 467, column: 6, scope: !737)
!737 = distinct !DILexicalBlock(scope: !653, file: !38, line: 467, column: 6)
!738 = !DILocation(line: 467, column: 11, scope: !737)
!739 = !DILocation(line: 467, column: 6, scope: !653)
!740 = !DILocation(line: 467, column: 26, scope: !737)
!741 = !DILocation(line: 468, column: 6, scope: !742)
!742 = distinct !DILexicalBlock(scope: !653, file: !38, line: 468, column: 6)
!743 = !DILocation(line: 468, column: 11, scope: !742)
!744 = !DILocation(line: 468, column: 6, scope: !653)
!745 = !DILocation(line: 468, column: 26, scope: !742)
!746 = !DILocation(line: 469, column: 6, scope: !747)
!747 = distinct !DILexicalBlock(scope: !653, file: !38, line: 469, column: 6)
!748 = !DILocation(line: 469, column: 11, scope: !747)
!749 = !DILocation(line: 469, column: 6, scope: !653)
!750 = !DILocation(line: 469, column: 26, scope: !747)
!751 = !DILocation(line: 470, column: 6, scope: !752)
!752 = distinct !DILexicalBlock(scope: !653, file: !38, line: 470, column: 6)
!753 = !DILocation(line: 470, column: 11, scope: !752)
!754 = !DILocation(line: 470, column: 6, scope: !653)
!755 = !DILocation(line: 470, column: 26, scope: !752)
!756 = !DILocation(line: 471, column: 6, scope: !757)
!757 = distinct !DILexicalBlock(scope: !653, file: !38, line: 471, column: 6)
!758 = !DILocation(line: 471, column: 11, scope: !757)
!759 = !DILocation(line: 471, column: 6, scope: !653)
!760 = !DILocation(line: 471, column: 26, scope: !757)
!761 = !DILocation(line: 472, column: 6, scope: !762)
!762 = distinct !DILexicalBlock(scope: !653, file: !38, line: 472, column: 6)
!763 = !DILocation(line: 472, column: 11, scope: !762)
!764 = !DILocation(line: 472, column: 6, scope: !653)
!765 = !DILocation(line: 472, column: 26, scope: !762)
!766 = !DILocation(line: 473, column: 6, scope: !767)
!767 = distinct !DILexicalBlock(scope: !653, file: !38, line: 473, column: 6)
!768 = !DILocation(line: 473, column: 11, scope: !767)
!769 = !DILocation(line: 473, column: 6, scope: !653)
!770 = !DILocation(line: 473, column: 26, scope: !767)
!771 = !DILocation(line: 474, column: 6, scope: !772)
!772 = distinct !DILexicalBlock(scope: !653, file: !38, line: 474, column: 6)
!773 = !DILocation(line: 474, column: 11, scope: !772)
!774 = !DILocation(line: 474, column: 6, scope: !653)
!775 = !DILocation(line: 474, column: 27, scope: !772)
!776 = !DILocation(line: 475, column: 6, scope: !777)
!777 = distinct !DILexicalBlock(scope: !653, file: !38, line: 475, column: 6)
!778 = !DILocation(line: 475, column: 11, scope: !777)
!779 = !DILocation(line: 475, column: 6, scope: !653)
!780 = !DILocation(line: 475, column: 32, scope: !777)
!781 = !DILocation(line: 477, column: 50, scope: !782)
!782 = distinct !DILexicalBlock(scope: !653, file: !38, line: 477, column: 6)
!783 = !{i8 0, i8 2}
!784 = !DILocation(line: 477, column: 6, scope: !653)
!785 = !DILocation(line: 478, column: 3, scope: !782)
!786 = !DILocation(line: 478, column: 3, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !38, line: 478, column: 3)
!788 = distinct !DILexicalBlock(scope: !782, file: !38, line: 478, column: 3)
!789 = !{i32 -2143558234}
!790 = !DILocation(line: 478, column: 3, scope: !788)
!791 = !DILocation(line: 480, column: 3, scope: !782)
!792 = !DILocation(line: 480, column: 3, scope: !793)
!793 = distinct !DILexicalBlock(scope: !782, file: !38, line: 480, column: 3)
!794 = !DILocation(line: 480, column: 3, scope: !795)
!795 = distinct !DILexicalBlock(scope: !793, file: !38, line: 480, column: 3)
!796 = !DILocation(line: 480, column: 3, scope: !797)
!797 = distinct !DILexicalBlock(scope: !793, file: !38, line: 480, column: 3)
!798 = !{i64 2151409265, i64 2151409294, i64 2151409340, i64 2151409398, i64 2151409452, i64 2151409506, i64 2151409561, i64 2151409592}
!799 = !DILocation(line: 483, column: 2, scope: !653)
!800 = !DILocation(line: 484, column: 1, scope: !653)
!801 = !DISubprogram(name: "kmalloc_trace", scope: !38, file: !38, line: 525, type: !802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!802 = !DISubroutineType(types: !803)
!803 = !{!48, !804, !49, !219}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !806, line: 11, flags: DIFlagFwdDecl)
!806 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!807 = distinct !DISubprogram(name: "kmalloc_type", scope: !38, file: !38, line: 401, type: !808, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !810)
!808 = !DISubroutineType(types: !809)
!809 = !{!37, !49, !51}
!810 = !{!811, !812}
!811 = !DILocalVariable(name: "flags", arg: 1, scope: !807, file: !38, line: 401, type: !49)
!812 = !DILocalVariable(name: "caller", arg: 2, scope: !807, file: !38, line: 401, type: !51)
!813 = !DILocation(line: 401, column: 67, scope: !807)
!814 = !DILocation(line: 401, column: 88, scope: !807)
!815 = !DILocation(line: 407, column: 6, scope: !816)
!816 = distinct !DILexicalBlock(scope: !807, file: !38, line: 407, column: 6)
!817 = !DILocation(line: 407, column: 6, scope: !807)
!818 = !DILocation(line: 413, column: 3, scope: !816)
!819 = !DILocation(line: 423, column: 38, scope: !820)
!820 = distinct !DILexicalBlock(scope: !807, file: !38, line: 423, column: 6)
!821 = !DILocation(line: 423, column: 44, scope: !820)
!822 = !DILocation(line: 423, column: 6, scope: !807)
!823 = !DILocation(line: 424, column: 3, scope: !820)
!824 = !DILocation(line: 426, column: 3, scope: !825)
!825 = distinct !DILexicalBlock(scope: !807, file: !38, line: 425, column: 6)
!826 = !DILocation(line: 429, column: 1, scope: !807)
!827 = !DISubprogram(name: "__kmalloc", scope: !38, file: !38, line: 488, type: !217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!828 = !DISubprogram(name: "__compiletime_assert_117", scope: !38, file: !38, line: 478, type: !829, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!829 = !DISubroutineType(types: !830)
!830 = !{null}
!831 = distinct !DISubprogram(name: "__list_add", scope: !281, file: !281, line: 146, type: !832, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !834)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !54, !54, !54}
!834 = !{!835, !836, !837}
!835 = !DILocalVariable(name: "new", arg: 1, scope: !831, file: !281, line: 146, type: !54)
!836 = !DILocalVariable(name: "prev", arg: 2, scope: !831, file: !281, line: 147, type: !54)
!837 = !DILocalVariable(name: "next", arg: 3, scope: !831, file: !281, line: 148, type: !54)
!838 = !DILocation(line: 146, column: 49, scope: !831)
!839 = !DILocation(line: 147, column: 28, scope: !831)
!840 = !DILocation(line: 148, column: 28, scope: !831)
!841 = !DILocation(line: 150, column: 24, scope: !842)
!842 = distinct !DILexicalBlock(scope: !831, file: !281, line: 150, column: 6)
!843 = !DILocation(line: 150, column: 29, scope: !842)
!844 = !DILocation(line: 150, column: 35, scope: !842)
!845 = !DILocation(line: 150, column: 7, scope: !842)
!846 = !DILocation(line: 150, column: 6, scope: !831)
!847 = !DILocation(line: 151, column: 3, scope: !842)
!848 = !DILocation(line: 153, column: 15, scope: !831)
!849 = !DILocation(line: 153, column: 2, scope: !831)
!850 = !DILocation(line: 153, column: 8, scope: !831)
!851 = !DILocation(line: 153, column: 13, scope: !831)
!852 = !DILocation(line: 154, column: 14, scope: !831)
!853 = !DILocation(line: 154, column: 2, scope: !831)
!854 = !DILocation(line: 154, column: 7, scope: !831)
!855 = !DILocation(line: 154, column: 12, scope: !831)
!856 = !DILocation(line: 155, column: 14, scope: !831)
!857 = !DILocation(line: 155, column: 2, scope: !831)
!858 = !DILocation(line: 155, column: 7, scope: !831)
!859 = !DILocation(line: 155, column: 12, scope: !831)
!860 = !DILocation(line: 156, column: 2, scope: !831)
!861 = !DILocation(line: 156, column: 2, scope: !862)
!862 = distinct !DILexicalBlock(scope: !831, file: !281, line: 156, column: 2)
!863 = !DILocation(line: 156, column: 2, scope: !864)
!864 = distinct !DILexicalBlock(scope: !862, file: !281, line: 156, column: 2)
!865 = !DILocation(line: 156, column: 2, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !281, line: 156, column: 2)
!867 = !DILocation(line: 157, column: 1, scope: !831)
!868 = distinct !DISubprogram(name: "__list_add_valid", scope: !281, file: !281, line: 128, type: !869, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !871)
!869 = !DISubroutineType(types: !870)
!870 = !{!343, !54, !54, !54}
!871 = !{!872, !873, !874}
!872 = !DILocalVariable(name: "new", arg: 1, scope: !868, file: !281, line: 128, type: !54)
!873 = !DILocalVariable(name: "prev", arg: 2, scope: !868, file: !281, line: 129, type: !54)
!874 = !DILocalVariable(name: "next", arg: 3, scope: !868, file: !281, line: 130, type: !54)
!875 = !DILocation(line: 128, column: 55, scope: !868)
!876 = !DILocation(line: 129, column: 23, scope: !868)
!877 = !DILocation(line: 130, column: 23, scope: !868)
!878 = !DILocation(line: 132, column: 2, scope: !868)
!879 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !264, file: !264, line: 43, type: !880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !267, !51}
!882 = distinct !DISubprogram(name: "preempt_count", scope: !883, file: !883, line: 25, type: !884, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !886)
!883 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!884 = !DISubroutineType(types: !885)
!885 = !{!59}
!886 = !{!887}
!887 = !DILocalVariable(name: "pfo_val__", scope: !888, file: !883, line: 27, type: !889)
!888 = distinct !DILexicalBlock(scope: !882, file: !883, line: 27, column: 9)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !7)
!891 = !DILocation(line: 27, column: 9, scope: !888)
!892 = !{i64 2149546749}
!893 = !DILocation(line: 27, column: 9, scope: !882)
!894 = !DILocation(line: 27, column: 48, scope: !882)
!895 = !DILocation(line: 27, column: 2, scope: !882)
!896 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !897, file: !897, line: 65, type: !898, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!897 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!898 = !DISubroutineType(types: !899)
!899 = !{!51}
!900 = !DILocation(line: 67, column: 9, scope: !896)
!901 = !DILocation(line: 67, column: 2, scope: !896)
!902 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !897, file: !897, line: 120, type: !903, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!59, !51}
!905 = !{!906}
!906 = !DILocalVariable(name: "flags", arg: 1, scope: !902, file: !897, line: 120, type: !51)
!907 = !DILocation(line: 120, column: 67, scope: !902)
!908 = !DILocation(line: 122, column: 11, scope: !902)
!909 = !DILocation(line: 122, column: 17, scope: !902)
!910 = !DILocation(line: 122, column: 9, scope: !902)
!911 = !DILocation(line: 122, column: 2, scope: !902)
!912 = distinct !DISubprogram(name: "native_save_fl", scope: !897, file: !897, line: 17, type: !898, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !913)
!913 = !{!914}
!914 = !DILocalVariable(name: "flags", scope: !912, file: !897, line: 19, type: !51)
!915 = !DILocation(line: 19, column: 2, scope: !912)
!916 = !DILocation(line: 19, column: 16, scope: !912)
!917 = !DILocation(line: 26, column: 2, scope: !912)
!918 = !{i64 1983636, i64 1983657}
!919 = !DILocation(line: 32, column: 9, scope: !912)
!920 = !DILocation(line: 33, column: 1, scope: !912)
!921 = !DILocation(line: 32, column: 2, scope: !912)
!922 = distinct !DISubprogram(name: "__list_splice", scope: !281, file: !281, line: 523, type: !923, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !925)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !599, !54, !54}
!925 = !{!926, !927, !928, !929, !930}
!926 = !DILocalVariable(name: "list", arg: 1, scope: !922, file: !281, line: 523, type: !599)
!927 = !DILocalVariable(name: "prev", arg: 2, scope: !922, file: !281, line: 524, type: !54)
!928 = !DILocalVariable(name: "next", arg: 3, scope: !922, file: !281, line: 525, type: !54)
!929 = !DILocalVariable(name: "first", scope: !922, file: !281, line: 527, type: !54)
!930 = !DILocalVariable(name: "last", scope: !922, file: !281, line: 528, type: !54)
!931 = !DILocation(line: 523, column: 58, scope: !922)
!932 = !DILocation(line: 524, column: 24, scope: !922)
!933 = !DILocation(line: 525, column: 24, scope: !922)
!934 = !DILocation(line: 527, column: 2, scope: !922)
!935 = !DILocation(line: 527, column: 20, scope: !922)
!936 = !DILocation(line: 527, column: 28, scope: !922)
!937 = !DILocation(line: 527, column: 34, scope: !922)
!938 = !DILocation(line: 528, column: 2, scope: !922)
!939 = !DILocation(line: 528, column: 20, scope: !922)
!940 = !DILocation(line: 528, column: 27, scope: !922)
!941 = !DILocation(line: 528, column: 33, scope: !922)
!942 = !DILocation(line: 530, column: 16, scope: !922)
!943 = !DILocation(line: 530, column: 2, scope: !922)
!944 = !DILocation(line: 530, column: 9, scope: !922)
!945 = !DILocation(line: 530, column: 14, scope: !922)
!946 = !DILocation(line: 531, column: 15, scope: !922)
!947 = !DILocation(line: 531, column: 2, scope: !922)
!948 = !DILocation(line: 531, column: 8, scope: !922)
!949 = !DILocation(line: 531, column: 13, scope: !922)
!950 = !DILocation(line: 533, column: 15, scope: !922)
!951 = !DILocation(line: 533, column: 2, scope: !922)
!952 = !DILocation(line: 533, column: 8, scope: !922)
!953 = !DILocation(line: 533, column: 13, scope: !922)
!954 = !DILocation(line: 534, column: 15, scope: !922)
!955 = !DILocation(line: 534, column: 2, scope: !922)
!956 = !DILocation(line: 534, column: 8, scope: !922)
!957 = !DILocation(line: 534, column: 13, scope: !922)
!958 = !DILocation(line: 535, column: 1, scope: !922)
!959 = !DISubprogram(name: "queue_work_on", scope: !6, file: !6, line: 496, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!960 = !DISubroutineType(types: !961)
!961 = !{!343, !59, !376, !94}
!962 = !DISubprogram(name: "kfree", scope: !38, file: !38, line: 227, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !965}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
