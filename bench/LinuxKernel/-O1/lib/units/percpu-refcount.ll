; ModuleID = 'lib/percpu-refcount.c'
source_filename = "lib/percpu-refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_ref_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_ref_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_ref_exit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_ref_exit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_ref_switch_to_atomic: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_ref_switch_to_atomic ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_ref_switch_to_atomic_sync: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_ref_switch_to_atomic_sync ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_ref_switch_to_percpu: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_ref_switch_to_percpu ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_ref_kill_and_confirm: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_ref_kill_and_confirm ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_ref_is_zero: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_ref_is_zero ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_ref_reinit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_ref_reinit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_ref_resurrect: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_ref_resurrect ; .previous"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.static_call_key = type { ptr, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.percpu_ref = type { i64, ptr }
%struct.percpu_ref_data = type { %struct.atomic64_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__UNIQUE_ID___addressable_percpu_ref_init279 = internal global ptr @percpu_ref_init, section ".discard.addressable", align 8, !dbg !0
@percpu_ref_switch_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !171
@__UNIQUE_ID___addressable_percpu_ref_exit280 = internal global ptr @percpu_ref_exit, section ".discard.addressable", align 8, !dbg !107
@__UNIQUE_ID___addressable_percpu_ref_switch_to_atomic283 = internal global ptr @percpu_ref_switch_to_atomic, section ".discard.addressable", align 8, !dbg !109
@percpu_ref_switch_waitq = internal global %struct.wait_queue_head { %struct.spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @percpu_ref_switch_waitq, i64 8), ptr getelementptr (i8, ptr @percpu_ref_switch_waitq, i64 8) } }, align 8, !dbg !267
@__UNIQUE_ID___addressable_percpu_ref_switch_to_atomic_sync284 = internal global ptr @percpu_ref_switch_to_atomic_sync, section ".discard.addressable", align 8, !dbg !111
@__UNIQUE_ID___addressable_percpu_ref_switch_to_percpu285 = internal global ptr @percpu_ref_switch_to_percpu, section ".discard.addressable", align 8, !dbg !113
@percpu_ref_kill_and_confirm.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !115
@.str = private unnamed_addr constant [33 x i8] c"%s called more than once on %ps!\00", align 1, !dbg !141
@__func__.percpu_ref_kill_and_confirm = private unnamed_addr constant [28 x i8] c"percpu_ref_kill_and_confirm\00", align 1, !dbg !147
@.str.1 = private unnamed_addr constant [22 x i8] c"lib/percpu-refcount.c\00", align 1, !dbg !153
@__UNIQUE_ID___addressable_percpu_ref_kill_and_confirm286 = internal global ptr @percpu_ref_kill_and_confirm, section ".discard.addressable", align 8, !dbg !158
@__UNIQUE_ID___addressable_percpu_ref_is_zero287 = internal global ptr @percpu_ref_is_zero, section ".discard.addressable", align 8, !dbg !160
@__UNIQUE_ID___addressable_percpu_ref_reinit288 = internal global ptr @percpu_ref_reinit, section ".discard.addressable", align 8, !dbg !162
@__UNIQUE_ID___addressable_percpu_ref_resurrect289 = internal global ptr @percpu_ref_resurrect, section ".discard.addressable", align 8, !dbg !164
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !166
@percpu_ref_switch_to_atomic_rcu.underflows = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !213
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@percpu_ref_switch_to_atomic_rcu.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !247
@.str.3 = private unnamed_addr constant [54 x i8] c"percpu ref (%ps) <= 0 (%ld) after switching to atomic\00", align 1, !dbg !249
@.str.4 = private unnamed_addr constant [33 x i8] c"\013%s: %s(): percpu_ref underflow\00", align 1, !dbg !254
@__func__.percpu_ref_switch_to_atomic_rcu = private unnamed_addr constant [32 x i8] c"percpu_ref_switch_to_atomic_rcu\00", align 1, !dbg !256
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !261
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID___addressable_percpu_ref_init279, ptr @__UNIQUE_ID___addressable_percpu_ref_exit280, ptr @__UNIQUE_ID___addressable_percpu_ref_switch_to_atomic283, ptr @__UNIQUE_ID___addressable_percpu_ref_switch_to_atomic_sync284, ptr @__UNIQUE_ID___addressable_percpu_ref_switch_to_percpu285, ptr @__UNIQUE_ID___addressable_percpu_ref_kill_and_confirm286, ptr @__UNIQUE_ID___addressable_percpu_ref_is_zero287, ptr @__UNIQUE_ID___addressable_percpu_ref_reinit288, ptr @__UNIQUE_ID___addressable_percpu_ref_resurrect289, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @percpu_ref_init(ptr noundef %ref, ptr noundef %release, i32 noundef %flags, i32 noundef %gfp) #0 align 16 !dbg !288 {
entry:
  %retval = alloca i32, align 4
  %ref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %gfp.addr = alloca i32, align 4
  %align = alloca i64, align 8
  %start_count = alloca i64, align 8
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !292, metadata !DIExpression()), !dbg !299
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !293, metadata !DIExpression()), !dbg !300
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !294, metadata !DIExpression()), !dbg !301
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !295, metadata !DIExpression()), !dbg !302
  call void @llvm.lifetime.start.p0(i64 8, ptr %align) #15, !dbg !303
  call void @llvm.dbg.declare(metadata ptr %align, metadata !296, metadata !DIExpression()), !dbg !304
  store i64 8, ptr %align, align 8, !dbg !304
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_count) #15, !dbg !305
  call void @llvm.dbg.declare(metadata ptr %start_count, metadata !297, metadata !DIExpression()), !dbg !306
  store i64 0, ptr %start_count, align 8, !dbg !306
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !307
  call void @llvm.dbg.declare(metadata ptr %data, metadata !298, metadata !DIExpression()), !dbg !308
  %0 = load i64, ptr %align, align 8, !dbg !309
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !310
  %call = call noalias ptr @__alloc_percpu_gfp(i64 noundef 8, i64 noundef %0, i32 noundef %1) #16, !dbg !311
  %2 = ptrtoint ptr %call to i64, !dbg !312
  %3 = load ptr, ptr %ref.addr, align 8, !dbg !313
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, ptr %3, i32 0, i32 0, !dbg !314
  store i64 %2, ptr %percpu_count_ptr, align 8, !dbg !315
  %4 = load ptr, ptr %ref.addr, align 8, !dbg !316
  %percpu_count_ptr1 = getelementptr inbounds %struct.percpu_ref, ptr %4, i32 0, i32 0, !dbg !318
  %5 = load i64, ptr %percpu_count_ptr1, align 8, !dbg !318
  %tobool = icmp ne i64 %5, 0, !dbg !316
  br i1 %tobool, label %if.end, label %if.then, !dbg !319

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !320
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !320

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %gfp.addr, align 4, !dbg !321
  %call2 = call noalias ptr @kzalloc(i64 noundef 56, i32 noundef %6) #16, !dbg !322
  store ptr %call2, ptr %data, align 8, !dbg !323
  %7 = load ptr, ptr %data, align 8, !dbg !324
  %tobool3 = icmp ne ptr %7, null, !dbg !324
  br i1 %tobool3, label %if.end7, label %if.then4, !dbg !326

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %ref.addr, align 8, !dbg !327
  %percpu_count_ptr5 = getelementptr inbounds %struct.percpu_ref, ptr %8, i32 0, i32 0, !dbg !329
  %9 = load i64, ptr %percpu_count_ptr5, align 8, !dbg !329
  %10 = inttoptr i64 %9 to ptr, !dbg !330
  call void @free_percpu(ptr noundef %10) #17, !dbg !331
  %11 = load ptr, ptr %ref.addr, align 8, !dbg !332
  %percpu_count_ptr6 = getelementptr inbounds %struct.percpu_ref, ptr %11, i32 0, i32 0, !dbg !333
  store i64 0, ptr %percpu_count_ptr6, align 8, !dbg !334
  store i32 -12, ptr %retval, align 4, !dbg !335
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !335

if.end7:                                          ; preds = %if.end
  %12 = load i32, ptr %flags.addr, align 4, !dbg !336
  %and = and i32 %12, 1, !dbg !337
  %tobool8 = icmp ne i32 %and, 0, !dbg !336
  %13 = load ptr, ptr %data, align 8, !dbg !338
  %force_atomic = getelementptr inbounds %struct.percpu_ref_data, ptr %13, i32 0, i32 3, !dbg !339
  %14 = zext i1 %tobool8 to i8, !dbg !340
  %bf.load = load i8, ptr %force_atomic, align 8, !dbg !340
  %bf.clear = and i8 %bf.load, -2, !dbg !340
  %bf.set = or i8 %bf.clear, %14, !dbg !340
  store i8 %bf.set, ptr %force_atomic, align 8, !dbg !340
  %tobool9 = trunc i8 %14 to i1, !dbg !340
  %15 = load i32, ptr %flags.addr, align 4, !dbg !341
  %and10 = and i32 %15, 4, !dbg !342
  %tobool11 = icmp ne i32 %and10, 0, !dbg !341
  %16 = load ptr, ptr %data, align 8, !dbg !343
  %allow_reinit = getelementptr inbounds %struct.percpu_ref_data, ptr %16, i32 0, i32 3, !dbg !344
  %17 = zext i1 %tobool11 to i8, !dbg !345
  %bf.load12 = load i8, ptr %allow_reinit, align 8, !dbg !345
  %bf.shl = shl i8 %17, 1, !dbg !345
  %bf.clear13 = and i8 %bf.load12, -3, !dbg !345
  %bf.set14 = or i8 %bf.clear13, %bf.shl, !dbg !345
  store i8 %bf.set14, ptr %allow_reinit, align 8, !dbg !345
  %tobool15 = trunc i8 %17 to i1, !dbg !345
  %18 = load i32, ptr %flags.addr, align 4, !dbg !346
  %and16 = and i32 %18, 3, !dbg !348
  %tobool17 = icmp ne i32 %and16, 0, !dbg !348
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !349

if.then18:                                        ; preds = %if.end7
  %19 = load ptr, ptr %ref.addr, align 8, !dbg !350
  %percpu_count_ptr19 = getelementptr inbounds %struct.percpu_ref, ptr %19, i32 0, i32 0, !dbg !352
  %20 = load i64, ptr %percpu_count_ptr19, align 8, !dbg !353
  %or = or i64 %20, 1, !dbg !353
  store i64 %or, ptr %percpu_count_ptr19, align 8, !dbg !353
  %21 = load ptr, ptr %data, align 8, !dbg !354
  %allow_reinit20 = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 3, !dbg !355
  %bf.load21 = load i8, ptr %allow_reinit20, align 8, !dbg !356
  %bf.clear22 = and i8 %bf.load21, -3, !dbg !356
  %bf.set23 = or i8 %bf.clear22, 2, !dbg !356
  store i8 %bf.set23, ptr %allow_reinit20, align 8, !dbg !356
  br label %if.end24, !dbg !357

if.else:                                          ; preds = %if.end7
  %22 = load i64, ptr %start_count, align 8, !dbg !358
  %add = add i64 %22, -9223372036854775808, !dbg !358
  store i64 %add, ptr %start_count, align 8, !dbg !358
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then18
  %23 = load i32, ptr %flags.addr, align 4, !dbg !360
  %and25 = and i32 %23, 2, !dbg !362
  %tobool26 = icmp ne i32 %and25, 0, !dbg !362
  br i1 %tobool26, label %if.then27, label %if.else30, !dbg !363

if.then27:                                        ; preds = %if.end24
  %24 = load ptr, ptr %ref.addr, align 8, !dbg !364
  %percpu_count_ptr28 = getelementptr inbounds %struct.percpu_ref, ptr %24, i32 0, i32 0, !dbg !365
  %25 = load i64, ptr %percpu_count_ptr28, align 8, !dbg !366
  %or29 = or i64 %25, 2, !dbg !366
  store i64 %or29, ptr %percpu_count_ptr28, align 8, !dbg !366
  br label %if.end31, !dbg !364

if.else30:                                        ; preds = %if.end24
  %26 = load i64, ptr %start_count, align 8, !dbg !367
  %inc = add i64 %26, 1, !dbg !367
  store i64 %inc, ptr %start_count, align 8, !dbg !367
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %if.then27
  %27 = load ptr, ptr %data, align 8, !dbg !368
  %count = getelementptr inbounds %struct.percpu_ref_data, ptr %27, i32 0, i32 0, !dbg !369
  %28 = load i64, ptr %start_count, align 8, !dbg !370
  call void @atomic_long_set(ptr noundef %count, i64 noundef %28) #17, !dbg !371
  %29 = load ptr, ptr %release.addr, align 8, !dbg !372
  %30 = load ptr, ptr %data, align 8, !dbg !373
  %release32 = getelementptr inbounds %struct.percpu_ref_data, ptr %30, i32 0, i32 1, !dbg !374
  store ptr %29, ptr %release32, align 8, !dbg !375
  %31 = load ptr, ptr %data, align 8, !dbg !376
  %confirm_switch = getelementptr inbounds %struct.percpu_ref_data, ptr %31, i32 0, i32 2, !dbg !377
  store ptr null, ptr %confirm_switch, align 8, !dbg !378
  %32 = load ptr, ptr %ref.addr, align 8, !dbg !379
  %33 = load ptr, ptr %data, align 8, !dbg !380
  %ref33 = getelementptr inbounds %struct.percpu_ref_data, ptr %33, i32 0, i32 5, !dbg !381
  store ptr %32, ptr %ref33, align 8, !dbg !382
  %34 = load ptr, ptr %data, align 8, !dbg !383
  %35 = load ptr, ptr %ref.addr, align 8, !dbg !384
  %data34 = getelementptr inbounds %struct.percpu_ref, ptr %35, i32 0, i32 1, !dbg !385
  store ptr %34, ptr %data34, align 8, !dbg !386
  store i32 0, ptr %retval, align 4, !dbg !387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !387

cleanup:                                          ; preds = %if.end31, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !388
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_count) #15, !dbg !388
  call void @llvm.lifetime.end.p0(i64 8, ptr %align) #15, !dbg !388
  %36 = load i32, ptr %retval, align 4, !dbg !388
  ret i32 %36, !dbg !388
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !389 dso_local noalias ptr @__alloc_percpu_gfp(i64 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !393 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !397, metadata !DIExpression()), !dbg !399
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !398, metadata !DIExpression()), !dbg !400
  %0 = load i64, ptr %size.addr, align 8, !dbg !401
  %1 = load i32, ptr %flags.addr, align 4, !dbg !402
  %or = or i32 %1, 256, !dbg !403
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !404
  ret ptr %call, !dbg !405
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !406 dso_local void @free_percpu(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #6 align 16 !dbg !409 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !415, metadata !DIExpression()), !dbg !417
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !416, metadata !DIExpression()), !dbg !418
  %0 = load ptr, ptr %v.addr, align 8, !dbg !419
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #17, !dbg !420
  %1 = load ptr, ptr %v.addr, align 8, !dbg !421
  %2 = load i64, ptr %i.addr, align 8, !dbg !422
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #17, !dbg !423
  ret void, !dbg !424
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @percpu_ref_exit(ptr noundef %ref) #0 align 16 !dbg !425 {
entry:
  %ref.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !427, metadata !DIExpression()), !dbg !435
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !436
  call void @llvm.dbg.declare(metadata ptr %data, metadata !428, metadata !DIExpression()), !dbg !437
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !438
  %data1 = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 1, !dbg !439
  %1 = load ptr, ptr %data1, align 8, !dbg !439
  store ptr %1, ptr %data, align 8, !dbg !437
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !440
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !429, metadata !DIExpression()), !dbg !441
  %2 = load ptr, ptr %ref.addr, align 8, !dbg !442
  call void @__percpu_ref_exit(ptr noundef %2) #17, !dbg !443
  %3 = load ptr, ptr %data, align 8, !dbg !444
  %tobool = icmp ne ptr %3, null, !dbg !444
  br i1 %tobool, label %if.end, label %if.then, !dbg !446

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !447

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !448

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !449

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !450
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !430, metadata !DIExpression()), !dbg !450
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !450
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !434, metadata !DIExpression()), !dbg !450
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !450
  %conv = zext i1 %cmp to i32, !dbg !450
  store i32 1, ptr %tmp, align 4, !dbg !450
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !451
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !451
  %4 = load i32, ptr %tmp, align 4, !dbg !450
  %call = call ptr @spinlock_check(ptr noundef @percpu_ref_switch_lock) #17, !dbg !451
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !451
  store i64 %call3, ptr %flags, align 8, !dbg !451
  br label %do.cond, !dbg !451

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !451

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !449

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !449

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %ref.addr, align 8, !dbg !452
  %data6 = getelementptr inbounds %struct.percpu_ref, ptr %5, i32 0, i32 1, !dbg !453
  %6 = load ptr, ptr %data6, align 8, !dbg !453
  %count = getelementptr inbounds %struct.percpu_ref_data, ptr %6, i32 0, i32 0, !dbg !454
  %call7 = call i64 @atomic_long_read(ptr noundef %count) #17, !dbg !455
  %shl = shl i64 %call7, 2, !dbg !456
  %7 = load ptr, ptr %ref.addr, align 8, !dbg !457
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, ptr %7, i32 0, i32 0, !dbg !458
  %8 = load i64, ptr %percpu_count_ptr, align 8, !dbg !459
  %or = or i64 %8, %shl, !dbg !459
  store i64 %or, ptr %percpu_count_ptr, align 8, !dbg !459
  %9 = load ptr, ptr %ref.addr, align 8, !dbg !460
  %data8 = getelementptr inbounds %struct.percpu_ref, ptr %9, i32 0, i32 1, !dbg !461
  store ptr null, ptr %data8, align 8, !dbg !462
  %10 = load i64, ptr %flags, align 8, !dbg !463
  call void @spin_unlock_irqrestore(ptr noundef @percpu_ref_switch_lock, i64 noundef %10) #17, !dbg !464
  %11 = load ptr, ptr %data, align 8, !dbg !465
  call void @kfree(ptr noundef %11) #17, !dbg !466
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !467
  br label %cleanup, !dbg !467

cleanup:                                          ; preds = %do.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !467
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !467
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !467

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__percpu_ref_exit(ptr noundef %ref) #0 align 16 !dbg !468 {
entry:
  %ref.addr = alloca ptr, align 8
  %percpu_count = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !470, metadata !DIExpression()), !dbg !479
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_count) #15, !dbg !480
  call void @llvm.dbg.declare(metadata ptr %percpu_count, metadata !471, metadata !DIExpression()), !dbg !481
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !482
  %call = call ptr @percpu_count_ptr(ptr noundef %0) #17, !dbg !483
  store ptr %call, ptr %percpu_count, align 8, !dbg !481
  %1 = load ptr, ptr %percpu_count, align 8, !dbg !484
  %tobool = icmp ne ptr %1, null, !dbg !484
  br i1 %tobool, label %if.then, label %if.end28, !dbg !485

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !486
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !472, metadata !DIExpression()), !dbg !486
  %2 = load ptr, ptr %ref.addr, align 8, !dbg !486
  %data = getelementptr inbounds %struct.percpu_ref, ptr %2, i32 0, i32 1, !dbg !486
  %3 = load ptr, ptr %data, align 8, !dbg !486
  %tobool1 = icmp ne ptr %3, null, !dbg !486
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !486

land.rhs:                                         ; preds = %if.then
  %4 = load ptr, ptr %ref.addr, align 8, !dbg !486
  %data2 = getelementptr inbounds %struct.percpu_ref, ptr %4, i32 0, i32 1, !dbg !486
  %5 = load ptr, ptr %data2, align 8, !dbg !486
  %confirm_switch = getelementptr inbounds %struct.percpu_ref_data, ptr %5, i32 0, i32 2, !dbg !486
  %6 = load ptr, ptr %confirm_switch, align 8, !dbg !486
  %tobool3 = icmp ne ptr %6, null, !dbg !486
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %7 = phi i1 [ false, %if.then ], [ %tobool3, %land.rhs ], !dbg !487
  %lnot = xor i1 %7, true, !dbg !486
  %lnot4 = xor i1 %lnot, true, !dbg !486
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !486
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !486
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !488
  %tobool5 = icmp ne i32 %8, 0, !dbg !488
  %lnot6 = xor i1 %tobool5, true, !dbg !488
  %lnot8 = xor i1 %lnot6, true, !dbg !488
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !488
  %conv = sext i32 %lnot.ext9 to i64, !dbg !488
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !488
  %tobool10 = icmp ne i64 %expval, 0, !dbg !488
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !486

if.then11:                                        ; preds = %land.end
  br label %do.body, !dbg !488

do.body:                                          ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !489
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !476, metadata !DIExpression()), !dbg !489
  store i32 2307, ptr %__flags, align 4, !dbg !489
  br label %do.body12, !dbg !489

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !490

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !490

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !489

do.body13:                                        ; preds = %do.end
  %9 = load i32, ptr %__flags, align 4, !dbg !492
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 114, i32 %9, i64 12) #15, !dbg !492, !srcloc !494
  br label %do.cond14, !dbg !492

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !492

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !489

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !495

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !495

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !488
  br label %do.cond19, !dbg !489

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !489

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !489

if.end:                                           ; preds = %do.end20, %land.end
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !486
  %tobool21 = icmp ne i32 %10, 0, !dbg !486
  %lnot22 = xor i1 %tobool21, true, !dbg !486
  %lnot24 = xor i1 %lnot22, true, !dbg !486
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !486
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !486
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !486
  store i64 %expval27, ptr %tmp, align 8, !dbg !488
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !497
  %11 = load i64, ptr %tmp, align 8, !dbg !486
  %12 = load ptr, ptr %percpu_count, align 8, !dbg !498
  call void @free_percpu(ptr noundef %12) #17, !dbg !499
  %13 = load ptr, ptr %ref.addr, align 8, !dbg !500
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, ptr %13, i32 0, i32 0, !dbg !501
  store i64 3, ptr %percpu_count_ptr, align 8, !dbg !502
  br label %if.end28, !dbg !503

if.end28:                                         ; preds = %if.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_count) #15, !dbg !504
  ret void, !dbg !504
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !505 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !511 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !517, metadata !DIExpression()), !dbg !518
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !519
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !520
  ret ptr %1, !dbg !521
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #6 align 16 !dbg !522 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !528, metadata !DIExpression()), !dbg !529
  %0 = load ptr, ptr %v.addr, align 8, !dbg !530
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #17, !dbg !531
  %1 = load ptr, ptr %v.addr, align 8, !dbg !532
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #17, !dbg !533
  ret i64 %call, !dbg !534
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !535 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !539, metadata !DIExpression()), !dbg !545
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !540, metadata !DIExpression()), !dbg !546
  br label %do.body, !dbg !547

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !548
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !541, metadata !DIExpression()), !dbg !548
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !548
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !544, metadata !DIExpression()), !dbg !548
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !548
  %conv = zext i1 %cmp to i32, !dbg !548
  store i32 1, ptr %tmp, align 4, !dbg !548
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !549
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !549
  %0 = load i32, ptr %tmp, align 4, !dbg !548
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !549
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !549
  %3 = load i64, ptr %flags.addr, align 8, !dbg !549
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #17, !dbg !549
  br label %do.end, !dbg !549

do.end:                                           ; preds = %do.body
  ret void, !dbg !550
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !551 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @percpu_ref_switch_to_atomic(ptr noundef %ref, ptr noundef %confirm_switch) #0 align 16 !dbg !554 {
entry:
  %ref.addr = alloca ptr, align 8
  %confirm_switch.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !556, metadata !DIExpression()), !dbg !564
  store ptr %confirm_switch, ptr %confirm_switch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %confirm_switch.addr, metadata !557, metadata !DIExpression()), !dbg !565
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !566
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !558, metadata !DIExpression()), !dbg !567
  br label %do.body, !dbg !568

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !569

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !570
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !559, metadata !DIExpression()), !dbg !570
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !570
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !563, metadata !DIExpression()), !dbg !570
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !570
  %conv = zext i1 %cmp to i32, !dbg !570
  store i32 1, ptr %tmp, align 4, !dbg !570
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !571
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !571
  %0 = load i32, ptr %tmp, align 4, !dbg !570
  %call = call ptr @spinlock_check(ptr noundef @percpu_ref_switch_lock) #17, !dbg !571
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !571
  store i64 %call2, ptr %flags, align 8, !dbg !571
  br label %do.cond, !dbg !571

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !571

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !569

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !569

do.end4:                                          ; preds = %do.cond3
  %1 = load ptr, ptr %ref.addr, align 8, !dbg !572
  %data = getelementptr inbounds %struct.percpu_ref, ptr %1, i32 0, i32 1, !dbg !573
  %2 = load ptr, ptr %data, align 8, !dbg !573
  %force_atomic = getelementptr inbounds %struct.percpu_ref_data, ptr %2, i32 0, i32 3, !dbg !574
  %bf.load = load i8, ptr %force_atomic, align 8, !dbg !575
  %bf.clear = and i8 %bf.load, -2, !dbg !575
  %bf.set = or i8 %bf.clear, 1, !dbg !575
  store i8 %bf.set, ptr %force_atomic, align 8, !dbg !575
  %3 = load ptr, ptr %ref.addr, align 8, !dbg !576
  %4 = load ptr, ptr %confirm_switch.addr, align 8, !dbg !577
  call void @__percpu_ref_switch_mode(ptr noundef %3, ptr noundef %4) #17, !dbg !578
  %5 = load i64, ptr %flags, align 8, !dbg !579
  call void @spin_unlock_irqrestore(ptr noundef @percpu_ref_switch_lock, i64 noundef %5) #17, !dbg !580
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !581
  ret void, !dbg !581
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__percpu_ref_switch_mode(ptr noundef %ref, ptr noundef %confirm_switch) #0 align 16 !dbg !582 {
entry:
  %ref.addr = alloca ptr, align 8
  %confirm_switch.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !584, metadata !DIExpression()), !dbg !607
  store ptr %confirm_switch, ptr %confirm_switch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %confirm_switch.addr, metadata !585, metadata !DIExpression()), !dbg !608
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !609
  call void @llvm.dbg.declare(metadata ptr %data, metadata !586, metadata !DIExpression()), !dbg !610
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !611
  %data1 = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 1, !dbg !612
  %1 = load ptr, ptr %data1, align 8, !dbg !612
  store ptr %1, ptr %data, align 8, !dbg !610
  br label %do.body, !dbg !613

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !614

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !614

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !616

do.body2:                                         ; preds = %do.end
  %2 = load ptr, ptr %data, align 8, !dbg !617
  %confirm_switch3 = getelementptr inbounds %struct.percpu_ref_data, ptr %2, i32 0, i32 2, !dbg !617
  %3 = load ptr, ptr %confirm_switch3, align 8, !dbg !617
  %tobool = icmp ne ptr %3, null, !dbg !617
  br i1 %tobool, label %if.end, label %if.then, !dbg !619

if.then:                                          ; preds = %do.body2
  br label %do.end9, !dbg !617

if.end:                                           ; preds = %do.body2
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #15, !dbg !620
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !587, metadata !DIExpression()), !dbg !620
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #15, !dbg !620
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !601, metadata !DIExpression()), !dbg !620
  store i64 0, ptr %__ret, align 8, !dbg !620
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #17, !dbg !620
  br label %for.cond, !dbg !620

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #15, !dbg !621
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !602, metadata !DIExpression()), !dbg !621
  %call = call i64 @prepare_to_wait_event(ptr noundef @percpu_ref_switch_waitq, ptr noundef %__wq_entry, i32 noundef 2) #17, !dbg !621
  store i64 %call, ptr %__int, align 8, !dbg !621
  %4 = load ptr, ptr %data, align 8, !dbg !622
  %confirm_switch4 = getelementptr inbounds %struct.percpu_ref_data, ptr %4, i32 0, i32 2, !dbg !622
  %5 = load ptr, ptr %confirm_switch4, align 8, !dbg !622
  %tobool5 = icmp ne ptr %5, null, !dbg !622
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !621

if.then6:                                         ; preds = %for.cond
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !622

if.end7:                                          ; preds = %for.cond
  call void @spin_unlock_irq(ptr noundef @percpu_ref_switch_lock) #17, !dbg !621
  call void @schedule() #17, !dbg !621
  call void @spin_lock_irq(ptr noundef @percpu_ref_switch_lock) #17, !dbg !621
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !624
  br label %cleanup, !dbg !624

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #15, !dbg !624
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !624, !llvm.loop !625

for.end:                                          ; preds = %cleanup
  call void @finish_wait(ptr noundef @percpu_ref_switch_waitq, ptr noundef %__wq_entry) #17, !dbg !620
  br label %__out, !dbg !620

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !606), !dbg !620
  %6 = load i64, ptr %__ret, align 8, !dbg !620
  store i64 %6, ptr %tmp, align 8, !dbg !620
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #15, !dbg !619
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #15, !dbg !619
  %7 = load i64, ptr %tmp, align 8, !dbg !620
  br label %do.cond8, !dbg !619

do.cond8:                                         ; preds = %__out
  br label %do.end9, !dbg !619

do.end9:                                          ; preds = %do.cond8, %if.then
  %8 = load ptr, ptr %data, align 8, !dbg !628
  %force_atomic = getelementptr inbounds %struct.percpu_ref_data, ptr %8, i32 0, i32 3, !dbg !630
  %bf.load = load i8, ptr %force_atomic, align 8, !dbg !630
  %bf.clear = and i8 %bf.load, 1, !dbg !630
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !630
  br i1 %bf.cast, label %if.then11, label %lor.lhs.false, !dbg !631

lor.lhs.false:                                    ; preds = %do.end9
  %9 = load ptr, ptr %ref.addr, align 8, !dbg !632
  %call10 = call zeroext i1 @percpu_ref_is_dying(ptr noundef %9) #17, !dbg !633
  br i1 %call10, label %if.then11, label %if.else, !dbg !634

if.then11:                                        ; preds = %lor.lhs.false, %do.end9
  %10 = load ptr, ptr %ref.addr, align 8, !dbg !635
  %11 = load ptr, ptr %confirm_switch.addr, align 8, !dbg !636
  call void @__percpu_ref_switch_to_atomic(ptr noundef %10, ptr noundef %11) #17, !dbg !637
  br label %if.end12, !dbg !637

if.else:                                          ; preds = %lor.lhs.false
  %12 = load ptr, ptr %ref.addr, align 8, !dbg !638
  call void @__percpu_ref_switch_to_percpu(ptr noundef %12) #17, !dbg !639
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !640
  ret void, !dbg !640

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @percpu_ref_switch_to_atomic_sync(ptr noundef %ref) #0 align 16 !dbg !641 {
entry:
  %ref.addr = alloca ptr, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret = alloca i64, align 8
  %__int = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !643, metadata !DIExpression()), !dbg !653
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !654
  call void @percpu_ref_switch_to_atomic(ptr noundef %0, ptr noundef null) #17, !dbg !655
  br label %do.body, !dbg !656

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !657

do.body1:                                         ; preds = %do.body
  call void @might_resched() #17, !dbg !658
  br label %do.end, !dbg !658

do.end:                                           ; preds = %do.body1
  %1 = load ptr, ptr %ref.addr, align 8, !dbg !660
  %data = getelementptr inbounds %struct.percpu_ref, ptr %1, i32 0, i32 1, !dbg !660
  %2 = load ptr, ptr %data, align 8, !dbg !660
  %confirm_switch = getelementptr inbounds %struct.percpu_ref_data, ptr %2, i32 0, i32 2, !dbg !660
  %3 = load ptr, ptr %confirm_switch, align 8, !dbg !660
  %tobool = icmp ne ptr %3, null, !dbg !660
  br i1 %tobool, label %if.end, label %if.then, !dbg !657

if.then:                                          ; preds = %do.end
  br label %do.end7, !dbg !660

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #15, !dbg !662
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !644, metadata !DIExpression()), !dbg !662
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #15, !dbg !662
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !647, metadata !DIExpression()), !dbg !662
  store i64 0, ptr %__ret, align 8, !dbg !662
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #17, !dbg !662
  br label %for.cond, !dbg !662

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #15, !dbg !663
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !648, metadata !DIExpression()), !dbg !663
  %call = call i64 @prepare_to_wait_event(ptr noundef @percpu_ref_switch_waitq, ptr noundef %__wq_entry, i32 noundef 2) #17, !dbg !663
  store i64 %call, ptr %__int, align 8, !dbg !663
  %4 = load ptr, ptr %ref.addr, align 8, !dbg !664
  %data2 = getelementptr inbounds %struct.percpu_ref, ptr %4, i32 0, i32 1, !dbg !664
  %5 = load ptr, ptr %data2, align 8, !dbg !664
  %confirm_switch3 = getelementptr inbounds %struct.percpu_ref_data, ptr %5, i32 0, i32 2, !dbg !664
  %6 = load ptr, ptr %confirm_switch3, align 8, !dbg !664
  %tobool4 = icmp ne ptr %6, null, !dbg !664
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !663

if.then5:                                         ; preds = %for.cond
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !664

if.end6:                                          ; preds = %for.cond
  call void @schedule() #17, !dbg !663
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !666
  br label %cleanup, !dbg !666

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #15, !dbg !666
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 6, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !666, !llvm.loop !667

for.end:                                          ; preds = %cleanup
  call void @finish_wait(ptr noundef @percpu_ref_switch_waitq, ptr noundef %__wq_entry) #17, !dbg !662
  br label %__out, !dbg !662

__out:                                            ; preds = %for.end
  call void @llvm.dbg.label(metadata !652), !dbg !662
  %7 = load i64, ptr %__ret, align 8, !dbg !662
  store i64 %7, ptr %tmp, align 8, !dbg !662
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #15, !dbg !657
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #15, !dbg !657
  %8 = load i64, ptr %tmp, align 8, !dbg !662
  br label %do.end7, !dbg !657

do.end7:                                          ; preds = %__out, %if.then
  ret void, !dbg !669

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #6 align 16 !dbg !263 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !670
  %0 = load ptr, ptr %tmp, align 8, !dbg !670
  %call = call i32 %0() #17, !dbg !672
  ret void, !dbg !673
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !674 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !677 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !681 dso_local void @schedule() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !683 dso_local void @finish_wait(ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @percpu_ref_switch_to_percpu(ptr noundef %ref) #0 align 16 !dbg !686 {
entry:
  %ref.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !688, metadata !DIExpression()), !dbg !695
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !696
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !689, metadata !DIExpression()), !dbg !697
  br label %do.body, !dbg !698

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !699

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !700
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !690, metadata !DIExpression()), !dbg !700
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !700
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !694, metadata !DIExpression()), !dbg !700
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !700
  %conv = zext i1 %cmp to i32, !dbg !700
  store i32 1, ptr %tmp, align 4, !dbg !700
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !701
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !701
  %0 = load i32, ptr %tmp, align 4, !dbg !700
  %call = call ptr @spinlock_check(ptr noundef @percpu_ref_switch_lock) #17, !dbg !701
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !701
  store i64 %call2, ptr %flags, align 8, !dbg !701
  br label %do.cond, !dbg !701

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !701

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !699

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !699

do.end4:                                          ; preds = %do.cond3
  %1 = load ptr, ptr %ref.addr, align 8, !dbg !702
  %data = getelementptr inbounds %struct.percpu_ref, ptr %1, i32 0, i32 1, !dbg !703
  %2 = load ptr, ptr %data, align 8, !dbg !703
  %force_atomic = getelementptr inbounds %struct.percpu_ref_data, ptr %2, i32 0, i32 3, !dbg !704
  %bf.load = load i8, ptr %force_atomic, align 8, !dbg !705
  %bf.clear = and i8 %bf.load, -2, !dbg !705
  %bf.set = or i8 %bf.clear, 0, !dbg !705
  store i8 %bf.set, ptr %force_atomic, align 8, !dbg !705
  %3 = load ptr, ptr %ref.addr, align 8, !dbg !706
  call void @__percpu_ref_switch_mode(ptr noundef %3, ptr noundef null) #17, !dbg !707
  %4 = load i64, ptr %flags, align 8, !dbg !708
  call void @spin_unlock_irqrestore(ptr noundef @percpu_ref_switch_lock, i64 noundef %4) #17, !dbg !709
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !710
  ret void, !dbg !710
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @percpu_ref_kill_and_confirm(ptr noundef %ref, ptr noundef %confirm_kill) #0 align 16 !dbg !117 {
entry:
  %ref.addr = alloca ptr, align 8
  %confirm_kill.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp18 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp59 = alloca i64, align 8
  %tmp68 = alloca i64, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !121, metadata !DIExpression()), !dbg !711
  store ptr %confirm_kill, ptr %confirm_kill.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %confirm_kill.addr, metadata !122, metadata !DIExpression()), !dbg !712
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !123, metadata !DIExpression()), !dbg !714
  br label %do.body, !dbg !715

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !716

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !717
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !124, metadata !DIExpression()), !dbg !717
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !717
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !128, metadata !DIExpression()), !dbg !717
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !717
  %conv = zext i1 %cmp to i32, !dbg !717
  store i32 1, ptr %tmp, align 4, !dbg !717
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !718
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !718
  %0 = load i32, ptr %tmp, align 4, !dbg !717
  %call = call ptr @spinlock_check(ptr noundef @percpu_ref_switch_lock) #17, !dbg !718
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !718
  store i64 %call2, ptr %flags, align 8, !dbg !718
  br label %do.cond, !dbg !718

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !718

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !716

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !716

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #15, !dbg !719
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !129, metadata !DIExpression()), !dbg !719
  %1 = load ptr, ptr %ref.addr, align 8, !dbg !719
  %call5 = call zeroext i1 @percpu_ref_is_dying(ptr noundef %1) #17, !dbg !719
  %lnot = xor i1 %call5, true, !dbg !719
  %lnot6 = xor i1 %lnot, true, !dbg !719
  %frombool = zext i1 %lnot6 to i8, !dbg !719
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !719
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #15, !dbg !720
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !131, metadata !DIExpression()), !dbg !720
  %2 = load i8, ptr %__ret_do_once, align 1, !dbg !720, !range !721, !noundef !722
  %tobool = trunc i8 %2 to i1, !dbg !720
  %lnot7 = xor i1 %tobool, true, !dbg !720
  %lnot8 = xor i1 %lnot7, true, !dbg !720
  %frombool9 = zext i1 %lnot8 to i8, !dbg !720
  store i8 %frombool9, ptr %__ret_cond, align 1, !dbg !720
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #15, !dbg !720
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !134, metadata !DIExpression()), !dbg !720
  store i8 0, ptr %__ret_once, align 1, !dbg !720
  %3 = load i8, ptr %__ret_cond, align 1, !dbg !723, !range !721, !noundef !722
  %tobool10 = trunc i8 %3 to i1, !dbg !723
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !723

land.rhs:                                         ; preds = %do.end4
  %4 = load i8, ptr @percpu_ref_kill_and_confirm.__already_done, align 1, !dbg !723, !range !721, !noundef !722
  %tobool12 = trunc i8 %4 to i1, !dbg !723
  %lnot13 = xor i1 %tobool12, true, !dbg !723
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end4
  %5 = phi i1 [ false, %do.end4 ], [ %lnot13, %land.rhs ], !dbg !725
  %lnot14 = xor i1 %5, true, !dbg !723
  %lnot15 = xor i1 %lnot14, true, !dbg !723
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !723
  %conv16 = sext i32 %lnot.ext to i64, !dbg !723
  %expval = call i64 @llvm.expect.i64(i64 %conv16, i64 0), !dbg !723
  %tobool17 = icmp ne i64 %expval, 0, !dbg !723
  br i1 %tobool17, label %if.then, label %if.end, !dbg !720

if.then:                                          ; preds = %land.end
  store i8 1, ptr @percpu_ref_kill_and_confirm.__already_done, align 1, !dbg !726
  store i8 1, ptr %__ret_once, align 1, !dbg !726
  br label %if.end, !dbg !726

if.end:                                           ; preds = %if.then, %land.end
  %6 = load i8, ptr %__ret_once, align 1, !dbg !720, !range !721, !noundef !722
  %tobool19 = trunc i8 %6 to i1, !dbg !720
  %lnot20 = xor i1 %tobool19, true, !dbg !720
  %lnot22 = xor i1 %lnot20, true, !dbg !720
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !720
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !720
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !720
  store i64 %expval25, ptr %tmp18, align 8, !dbg !723
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #15, !dbg !728
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #15, !dbg !728
  %7 = load i64, ptr %tmp18, align 8, !dbg !720
  %tobool26 = icmp ne i64 %7, 0, !dbg !728
  br i1 %tobool26, label %if.then27, label %if.end67, !dbg !719

if.then27:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !729
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !135, metadata !DIExpression()), !dbg !729
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !729
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !730
  %tobool28 = icmp ne i32 %8, 0, !dbg !730
  %lnot29 = xor i1 %tobool28, true, !dbg !730
  %lnot31 = xor i1 %lnot29, true, !dbg !730
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !730
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !730
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !730
  %tobool35 = icmp ne i64 %expval34, 0, !dbg !730
  br i1 %tobool35, label %if.then36, label %if.end58, !dbg !729

if.then36:                                        ; preds = %if.then27
  br label %do.body37, !dbg !730

do.body37:                                        ; preds = %if.then36
  br label %do.body38, !dbg !731

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !732

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !732

do.end40:                                         ; preds = %do.cond39
  %9 = load ptr, ptr %ref.addr, align 8, !dbg !731
  %data = getelementptr inbounds %struct.percpu_ref, ptr %9, i32 0, i32 1, !dbg !731
  %10 = load ptr, ptr %data, align 8, !dbg !731
  %release = getelementptr inbounds %struct.percpu_ref_data, ptr %10, i32 0, i32 1, !dbg !731
  %11 = load ptr, ptr %release, align 8, !dbg !731
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, ptr noundef @__func__.percpu_ref_kill_and_confirm, ptr noundef %11) #17, !dbg !731
  br label %do.body41, !dbg !731

do.body41:                                        ; preds = %do.end40
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !734
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !137, metadata !DIExpression()), !dbg !734
  store i32 2313, ptr %__flags, align 4, !dbg !734
  br label %do.body42, !dbg !734

do.body42:                                        ; preds = %do.body41
  br label %do.cond43, !dbg !735

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !735

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !734

do.body45:                                        ; preds = %do.end44
  %12 = load i32, ptr %__flags, align 4, !dbg !737
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 392, i32 %12, i64 12) #15, !dbg !737, !srcloc !739
  br label %do.cond46, !dbg !737

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !737

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !734

do.body48:                                        ; preds = %do.end47
  br label %do.cond49, !dbg !740

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !740

do.end50:                                         ; preds = %do.cond49
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !731
  br label %do.cond51, !dbg !734

do.cond51:                                        ; preds = %do.end50
  br label %do.end52, !dbg !734

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !731

do.body53:                                        ; preds = %do.end52
  br label %do.cond54, !dbg !742

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !742

do.end55:                                         ; preds = %do.cond54
  br label %do.cond56, !dbg !731

do.cond56:                                        ; preds = %do.end55
  br label %do.end57, !dbg !731

do.end57:                                         ; preds = %do.cond56
  br label %if.end58, !dbg !731

if.end58:                                         ; preds = %do.end57, %if.then27
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !729
  %tobool60 = icmp ne i32 %13, 0, !dbg !729
  %lnot61 = xor i1 %tobool60, true, !dbg !729
  %lnot63 = xor i1 %lnot61, true, !dbg !729
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !729
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !729
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !729
  store i64 %expval66, ptr %tmp59, align 8, !dbg !730
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !728
  %14 = load i64, ptr %tmp59, align 8, !dbg !729
  br label %if.end67, !dbg !728

if.end67:                                         ; preds = %if.end58, %if.end
  %15 = load i8, ptr %__ret_do_once, align 1, !dbg !719, !range !721, !noundef !722
  %tobool69 = trunc i8 %15 to i1, !dbg !719
  %lnot70 = xor i1 %tobool69, true, !dbg !719
  %lnot72 = xor i1 %lnot70, true, !dbg !719
  %lnot.ext73 = zext i1 %lnot72 to i32, !dbg !719
  %conv74 = sext i32 %lnot.ext73 to i64, !dbg !719
  %expval75 = call i64 @llvm.expect.i64(i64 %conv74, i64 0), !dbg !719
  store i64 %expval75, ptr %tmp68, align 8, !dbg !728
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #15, !dbg !744
  %16 = load i64, ptr %tmp68, align 8, !dbg !719
  %17 = load ptr, ptr %ref.addr, align 8, !dbg !745
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, ptr %17, i32 0, i32 0, !dbg !746
  %18 = load i64, ptr %percpu_count_ptr, align 8, !dbg !747
  %or = or i64 %18, 2, !dbg !747
  store i64 %or, ptr %percpu_count_ptr, align 8, !dbg !747
  %19 = load ptr, ptr %ref.addr, align 8, !dbg !748
  %20 = load ptr, ptr %confirm_kill.addr, align 8, !dbg !749
  call void @__percpu_ref_switch_mode(ptr noundef %19, ptr noundef %20) #17, !dbg !750
  %21 = load ptr, ptr %ref.addr, align 8, !dbg !751
  call void @percpu_ref_put(ptr noundef %21) #17, !dbg !752
  %22 = load i64, ptr %flags, align 8, !dbg !753
  call void @spin_unlock_irqrestore(ptr noundef @percpu_ref_switch_lock, i64 noundef %22) #17, !dbg !754
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !755
  ret void, !dbg !755
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @percpu_ref_is_dying(ptr noundef %ref) #7 align 16 !dbg !756 {
entry:
  %ref.addr = alloca ptr, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !760, metadata !DIExpression()), !dbg !761
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !762
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 0, !dbg !763
  %1 = load i64, ptr %percpu_count_ptr, align 8, !dbg !763
  %and = and i64 %1, 2, !dbg !764
  %tobool = icmp ne i64 %and, 0, !dbg !762
  ret i1 %tobool, !dbg !765
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !766 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_ref_put(ptr noundef %ref) #7 align 16 !dbg !771 {
entry:
  %ref.addr = alloca ptr, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !773, metadata !DIExpression()), !dbg !774
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !775
  call void @percpu_ref_put_many(ptr noundef %0, i64 noundef 1) #17, !dbg !776
  ret void, !dbg !777
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @percpu_ref_is_zero(ptr noundef %ref) #0 align 16 !dbg !778 {
entry:
  %retval = alloca i1, align 1
  %ref.addr = alloca ptr, align 8
  %percpu_count = alloca ptr, align 8
  %count = alloca i64, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !780, metadata !DIExpression()), !dbg !789
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_count) #15, !dbg !790
  call void @llvm.dbg.declare(metadata ptr %percpu_count, metadata !781, metadata !DIExpression()), !dbg !791
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #15, !dbg !792
  call void @llvm.dbg.declare(metadata ptr %count, metadata !782, metadata !DIExpression()), !dbg !793
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !792
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !783, metadata !DIExpression()), !dbg !794
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !795
  %call = call zeroext i1 @__ref_is_percpu(ptr noundef %0, ptr noundef %percpu_count) #17, !dbg !797
  br i1 %call, label %if.then, label %if.end, !dbg !798

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !799
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !799

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !800

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !801

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !802
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !784, metadata !DIExpression()), !dbg !802
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !802
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !788, metadata !DIExpression()), !dbg !802
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !802
  %conv = zext i1 %cmp to i32, !dbg !802
  store i32 1, ptr %tmp, align 4, !dbg !802
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !803
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !803
  %1 = load i32, ptr %tmp, align 4, !dbg !802
  %call2 = call ptr @spinlock_check(ptr noundef @percpu_ref_switch_lock) #17, !dbg !803
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #17, !dbg !803
  store i64 %call3, ptr %flags, align 8, !dbg !803
  br label %do.cond, !dbg !803

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !803

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !801

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !801

do.end5:                                          ; preds = %do.cond4
  %2 = load ptr, ptr %ref.addr, align 8, !dbg !804
  %data = getelementptr inbounds %struct.percpu_ref, ptr %2, i32 0, i32 1, !dbg !806
  %3 = load ptr, ptr %data, align 8, !dbg !806
  %tobool = icmp ne ptr %3, null, !dbg !804
  br i1 %tobool, label %if.then6, label %if.else, !dbg !807

if.then6:                                         ; preds = %do.end5
  %4 = load ptr, ptr %ref.addr, align 8, !dbg !808
  %data7 = getelementptr inbounds %struct.percpu_ref, ptr %4, i32 0, i32 1, !dbg !809
  %5 = load ptr, ptr %data7, align 8, !dbg !809
  %count8 = getelementptr inbounds %struct.percpu_ref_data, ptr %5, i32 0, i32 0, !dbg !810
  %call9 = call i64 @atomic_long_read(ptr noundef %count8) #17, !dbg !811
  store i64 %call9, ptr %count, align 8, !dbg !812
  br label %if.end10, !dbg !813

if.else:                                          ; preds = %do.end5
  %6 = load ptr, ptr %ref.addr, align 8, !dbg !814
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, ptr %6, i32 0, i32 0, !dbg !815
  %7 = load i64, ptr %percpu_count_ptr, align 8, !dbg !815
  %shr = lshr i64 %7, 2, !dbg !816
  store i64 %shr, ptr %count, align 8, !dbg !817
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  %8 = load i64, ptr %flags, align 8, !dbg !818
  call void @spin_unlock_irqrestore(ptr noundef @percpu_ref_switch_lock, i64 noundef %8) #17, !dbg !819
  %9 = load i64, ptr %count, align 8, !dbg !820
  %cmp11 = icmp eq i64 %9, 0, !dbg !821
  store i1 %cmp11, ptr %retval, align 1, !dbg !822
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !822

cleanup:                                          ; preds = %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !823
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #15, !dbg !823
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_count) #15, !dbg !823
  %10 = load i1, ptr %retval, align 1, !dbg !823
  ret i1 %10, !dbg !823
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__ref_is_percpu(ptr noundef %ref, ptr noundef %percpu_countp) #7 align 16 !dbg !824 {
entry:
  %retval = alloca i1, align 1
  %ref.addr = alloca ptr, align 8
  %percpu_countp.addr = alloca ptr, align 8
  %percpu_ptr = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !829, metadata !DIExpression()), !dbg !832
  store ptr %percpu_countp, ptr %percpu_countp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %percpu_countp.addr, metadata !830, metadata !DIExpression()), !dbg !833
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_ptr) #15, !dbg !834
  call void @llvm.dbg.declare(metadata ptr %percpu_ptr, metadata !831, metadata !DIExpression()), !dbg !835
  br label %do.body, !dbg !836

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !838

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !838

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !836
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 0, !dbg !836
  %1 = load volatile i64, ptr %percpu_count_ptr, align 8, !dbg !836
  store i64 %1, ptr %tmp, align 8, !dbg !838
  %2 = load i64, ptr %tmp, align 8, !dbg !836
  store i64 %2, ptr %percpu_ptr, align 8, !dbg !840
  %3 = load i64, ptr %percpu_ptr, align 8, !dbg !841
  %and = and i64 %3, 3, !dbg !841
  %tobool = icmp ne i64 %and, 0, !dbg !841
  %lnot = xor i1 %tobool, true, !dbg !841
  %lnot1 = xor i1 %lnot, true, !dbg !841
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !841
  %conv = sext i32 %lnot.ext to i64, !dbg !841
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !841
  %tobool2 = icmp ne i64 %expval, 0, !dbg !841
  br i1 %tobool2, label %if.then, label %if.end, !dbg !843

if.then:                                          ; preds = %do.end
  store i1 false, ptr %retval, align 1, !dbg !844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !844

if.end:                                           ; preds = %do.end
  %4 = load i64, ptr %percpu_ptr, align 8, !dbg !845
  %5 = inttoptr i64 %4 to ptr, !dbg !846
  %6 = load ptr, ptr %percpu_countp.addr, align 8, !dbg !847
  store ptr %5, ptr %6, align 8, !dbg !848
  store i1 true, ptr %retval, align 1, !dbg !849
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !849

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_ptr) #15, !dbg !850
  %7 = load i1, ptr %retval, align 1, !dbg !850
  ret i1 %7, !dbg !850
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @percpu_ref_reinit(ptr noundef %ref) #0 align 16 !dbg !851 {
entry:
  %ref.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !853, metadata !DIExpression()), !dbg !859
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !860
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !854, metadata !DIExpression()), !dbg !860
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !860
  %call = call zeroext i1 @percpu_ref_is_zero(ptr noundef %0) #17, !dbg !860
  %lnot = xor i1 %call, true, !dbg !860
  %lnot1 = xor i1 %lnot, true, !dbg !860
  %lnot2 = xor i1 %lnot1, true, !dbg !860
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !860
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !860
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !861
  %tobool = icmp ne i32 %1, 0, !dbg !861
  %lnot3 = xor i1 %tobool, true, !dbg !861
  %lnot5 = xor i1 %lnot3, true, !dbg !861
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !861
  %conv = sext i32 %lnot.ext6 to i64, !dbg !861
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !861
  %tobool7 = icmp ne i64 %expval, 0, !dbg !861
  br i1 %tobool7, label %if.then, label %if.end, !dbg !860

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !861

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !862
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !856, metadata !DIExpression()), !dbg !862
  store i32 2307, ptr %__flags, align 4, !dbg !862
  br label %do.body8, !dbg !862

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !863

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !863

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !862

do.body9:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !865
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 443, i32 %2, i64 12) #15, !dbg !865, !srcloc !867
  br label %do.cond10, !dbg !865

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !865

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !862

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !868

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !868

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !861
  br label %do.cond15, !dbg !862

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !862

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !862

if.end:                                           ; preds = %do.end16, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !860
  %tobool17 = icmp ne i32 %3, 0, !dbg !860
  %lnot18 = xor i1 %tobool17, true, !dbg !860
  %lnot20 = xor i1 %lnot18, true, !dbg !860
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !860
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !860
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !860
  store i64 %expval23, ptr %tmp, align 8, !dbg !861
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !870
  %4 = load i64, ptr %tmp, align 8, !dbg !860
  %5 = load ptr, ptr %ref.addr, align 8, !dbg !871
  call void @percpu_ref_resurrect(ptr noundef %5) #17, !dbg !872
  ret void, !dbg !873
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @percpu_ref_resurrect(ptr noundef %ref) #0 align 16 !dbg !874 {
entry:
  %ref.addr = alloca ptr, align 8
  %percpu_count = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp26 = alloca i64, align 8
  %__ret_warn_on34 = alloca i32, align 4
  %__flags50 = alloca i32, align 4
  %tmp63 = alloca i64, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !876, metadata !DIExpression()), !dbg !894
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_count) #15, !dbg !895
  call void @llvm.dbg.declare(metadata ptr %percpu_count, metadata !877, metadata !DIExpression()), !dbg !896
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !897
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !878, metadata !DIExpression()), !dbg !898
  br label %do.body, !dbg !899

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !900

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !901
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !879, metadata !DIExpression()), !dbg !901
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !901
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !883, metadata !DIExpression()), !dbg !901
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !901
  %conv = zext i1 %cmp to i32, !dbg !901
  store i32 1, ptr %tmp, align 4, !dbg !901
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !902
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !902
  %0 = load i32, ptr %tmp, align 4, !dbg !901
  %call = call ptr @spinlock_check(ptr noundef @percpu_ref_switch_lock) #17, !dbg !902
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !902
  store i64 %call2, ptr %flags, align 8, !dbg !902
  br label %do.cond, !dbg !902

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !902

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !900

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !900

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !903
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !884, metadata !DIExpression()), !dbg !903
  %1 = load ptr, ptr %ref.addr, align 8, !dbg !903
  %call5 = call zeroext i1 @percpu_ref_is_dying(ptr noundef %1) #17, !dbg !903
  %lnot = xor i1 %call5, true, !dbg !903
  %lnot6 = xor i1 %lnot, true, !dbg !903
  %lnot7 = xor i1 %lnot6, true, !dbg !903
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !903
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !903
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !904
  %tobool = icmp ne i32 %2, 0, !dbg !904
  %lnot8 = xor i1 %tobool, true, !dbg !904
  %lnot10 = xor i1 %lnot8, true, !dbg !904
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !904
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !904
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !904
  %tobool13 = icmp ne i64 %expval, 0, !dbg !904
  br i1 %tobool13, label %if.then, label %if.end, !dbg !903

if.then:                                          ; preds = %do.end4
  br label %do.body14, !dbg !904

do.body14:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !905
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !886, metadata !DIExpression()), !dbg !905
  store i32 2307, ptr %__flags, align 4, !dbg !905
  br label %do.body15, !dbg !905

do.body15:                                        ; preds = %do.body14
  br label %do.cond16, !dbg !906

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !906

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !905

do.body18:                                        ; preds = %do.end17
  %3 = load i32, ptr %__flags, align 4, !dbg !908
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 470, i32 %3, i64 12) #15, !dbg !908, !srcloc !910
  br label %do.cond19, !dbg !908

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !908

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !905

do.body21:                                        ; preds = %do.end20
  br label %do.cond22, !dbg !911

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !911

do.end23:                                         ; preds = %do.cond22
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !904
  br label %do.cond24, !dbg !905

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !905

do.end25:                                         ; preds = %do.cond24
  br label %if.end, !dbg !905

if.end:                                           ; preds = %do.end25, %do.end4
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !903
  %tobool27 = icmp ne i32 %4, 0, !dbg !903
  %lnot28 = xor i1 %tobool27, true, !dbg !903
  %lnot30 = xor i1 %lnot28, true, !dbg !903
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !903
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !903
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !903
  store i64 %expval33, ptr %tmp26, align 8, !dbg !904
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !913
  %5 = load i64, ptr %tmp26, align 8, !dbg !903
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on34) #15, !dbg !914
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on34, metadata !889, metadata !DIExpression()), !dbg !914
  %6 = load ptr, ptr %ref.addr, align 8, !dbg !914
  %call35 = call zeroext i1 @__ref_is_percpu(ptr noundef %6, ptr noundef %percpu_count) #17, !dbg !914
  %lnot36 = xor i1 %call35, true, !dbg !914
  %lnot38 = xor i1 %lnot36, true, !dbg !914
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !914
  store i32 %lnot.ext39, ptr %__ret_warn_on34, align 4, !dbg !914
  %7 = load i32, ptr %__ret_warn_on34, align 4, !dbg !915
  %tobool40 = icmp ne i32 %7, 0, !dbg !915
  %lnot41 = xor i1 %tobool40, true, !dbg !915
  %lnot43 = xor i1 %lnot41, true, !dbg !915
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !915
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !915
  %expval46 = call i64 @llvm.expect.i64(i64 %conv45, i64 0), !dbg !915
  %tobool47 = icmp ne i64 %expval46, 0, !dbg !915
  br i1 %tobool47, label %if.then48, label %if.end62, !dbg !914

if.then48:                                        ; preds = %if.end
  br label %do.body49, !dbg !915

do.body49:                                        ; preds = %if.then48
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags50) #15, !dbg !916
  call void @llvm.dbg.declare(metadata ptr %__flags50, metadata !891, metadata !DIExpression()), !dbg !916
  store i32 2307, ptr %__flags50, align 4, !dbg !916
  br label %do.body51, !dbg !916

do.body51:                                        ; preds = %do.body49
  br label %do.cond52, !dbg !917

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !917

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !916

do.body54:                                        ; preds = %do.end53
  %8 = load i32, ptr %__flags50, align 4, !dbg !919
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 471, i32 %8, i64 12) #15, !dbg !919, !srcloc !921
  br label %do.cond55, !dbg !919

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !919

do.end56:                                         ; preds = %do.cond55
  br label %do.body57, !dbg !916

do.body57:                                        ; preds = %do.end56
  br label %do.cond58, !dbg !922

do.cond58:                                        ; preds = %do.body57
  br label %do.end59, !dbg !922

do.end59:                                         ; preds = %do.cond58
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags50) #15, !dbg !915
  br label %do.cond60, !dbg !916

do.cond60:                                        ; preds = %do.end59
  br label %do.end61, !dbg !916

do.end61:                                         ; preds = %do.cond60
  br label %if.end62, !dbg !916

if.end62:                                         ; preds = %do.end61, %if.end
  %9 = load i32, ptr %__ret_warn_on34, align 4, !dbg !914
  %tobool64 = icmp ne i32 %9, 0, !dbg !914
  %lnot65 = xor i1 %tobool64, true, !dbg !914
  %lnot67 = xor i1 %lnot65, true, !dbg !914
  %lnot.ext68 = zext i1 %lnot67 to i32, !dbg !914
  %conv69 = sext i32 %lnot.ext68 to i64, !dbg !914
  %expval70 = call i64 @llvm.expect.i64(i64 %conv69, i64 0), !dbg !914
  store i64 %expval70, ptr %tmp63, align 8, !dbg !915
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on34) #15, !dbg !924
  %10 = load i64, ptr %tmp63, align 8, !dbg !914
  %11 = load ptr, ptr %ref.addr, align 8, !dbg !925
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, ptr %11, i32 0, i32 0, !dbg !926
  %12 = load i64, ptr %percpu_count_ptr, align 8, !dbg !927
  %and = and i64 %12, -3, !dbg !927
  store i64 %and, ptr %percpu_count_ptr, align 8, !dbg !927
  %13 = load ptr, ptr %ref.addr, align 8, !dbg !928
  call void @percpu_ref_get(ptr noundef %13) #17, !dbg !929
  %14 = load ptr, ptr %ref.addr, align 8, !dbg !930
  call void @__percpu_ref_switch_mode(ptr noundef %14, ptr noundef null) #17, !dbg !931
  %15 = load i64, ptr %flags, align 8, !dbg !932
  call void @spin_unlock_irqrestore(ptr noundef @percpu_ref_switch_lock, i64 noundef %15) #17, !dbg !933
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !934
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_count) #15, !dbg !934
  ret void, !dbg !934
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_ref_get(ptr noundef %ref) #7 align 16 !dbg !935 {
entry:
  %ref.addr = alloca ptr, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !937, metadata !DIExpression()), !dbg !938
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !939
  call void @percpu_ref_get_many(ptr noundef %0, i64 noundef 1) #17, !dbg !940
  ret void, !dbg !941
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !942 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !944, metadata !DIExpression()), !dbg !949
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !945, metadata !DIExpression()), !dbg !950
  %0 = load i64, ptr %size.addr, align 8, !dbg !951
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !952
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !953

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !954
  %tobool = icmp ne i64 %2, 0, !dbg !954
  br i1 %tobool, label %if.then, label %if.end7, !dbg !955

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !956
  call void @llvm.dbg.declare(metadata ptr %index, metadata !946, metadata !DIExpression()), !dbg !957
  %3 = load i64, ptr %size.addr, align 8, !dbg !958
  %cmp = icmp ugt i64 %3, 8192, !dbg !960
  br i1 %cmp, label %if.then1, label %if.end, !dbg !961

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !962
  %5 = load i32, ptr %flags.addr, align 4, !dbg !963
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !964
  store ptr %call, ptr %retval, align 8, !dbg !965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !965

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !966
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !966
  store i32 %call2, ptr %index, align 4, !dbg !967
  %7 = load i32, ptr %flags.addr, align 4, !dbg !968
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !969
  %9 = ptrtoint ptr %8 to i64, !dbg !969
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !970
  %idxprom = zext i32 %call3 to i64, !dbg !971
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !971
  %10 = load i32, ptr %index, align 4, !dbg !972
  %idxprom4 = zext i32 %10 to i64, !dbg !971
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !971
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !971
  %12 = load i32, ptr %flags.addr, align 4, !dbg !973
  %13 = load i64, ptr %size.addr, align 8, !dbg !974
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !975
  store ptr %call6, ptr %retval, align 8, !dbg !976
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !976

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !977
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !978
  %15 = load i32, ptr %flags.addr, align 4, !dbg !979
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !980
  store ptr %call8, ptr %retval, align 8, !dbg !981
  br label %return, !dbg !981

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !982
  ret ptr %16, !dbg !982
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !983 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !984 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !988, metadata !DIExpression()), !dbg !990
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !989, metadata !DIExpression()), !dbg !991
  %0 = load i64, ptr %size.addr, align 8, !dbg !992
  %tobool = icmp ne i64 %0, 0, !dbg !992
  br i1 %tobool, label %if.end, label %if.then, !dbg !994

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !995
  br label %return, !dbg !995

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !996
  %cmp = icmp ule i64 %1, 8, !dbg !998
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !999

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1000
  br label %return, !dbg !1000

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1001
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1003
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1004

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1005
  %cmp4 = icmp ule i64 %3, 96, !dbg !1006
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1007

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1008
  br label %return, !dbg !1008

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1009
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1011
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1012

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1013
  %cmp9 = icmp ule i64 %5, 192, !dbg !1014
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1015

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1016
  br label %return, !dbg !1016

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1017
  %cmp12 = icmp ule i64 %6, 8, !dbg !1019
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1020

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1021
  br label %return, !dbg !1021

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1022
  %cmp15 = icmp ule i64 %7, 16, !dbg !1024
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1025

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1026
  br label %return, !dbg !1026

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1027
  %cmp18 = icmp ule i64 %8, 32, !dbg !1029
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1030

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1031
  br label %return, !dbg !1031

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1032
  %cmp21 = icmp ule i64 %9, 64, !dbg !1034
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1035

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1036
  br label %return, !dbg !1036

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1037
  %cmp24 = icmp ule i64 %10, 128, !dbg !1039
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1040

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1041
  br label %return, !dbg !1041

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1042
  %cmp27 = icmp ule i64 %11, 256, !dbg !1044
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1045

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1046
  br label %return, !dbg !1046

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1047
  %cmp30 = icmp ule i64 %12, 512, !dbg !1049
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1050

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1051
  br label %return, !dbg !1051

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1052
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1054
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1055

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1056
  br label %return, !dbg !1056

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1057
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1059
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1060

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1061
  br label %return, !dbg !1061

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1062
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1064
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1065

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1066
  br label %return, !dbg !1066

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1067
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1069
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1070

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1071
  br label %return, !dbg !1071

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1072
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1074
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1075

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1076
  br label %return, !dbg !1076

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1077
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1079
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1080

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1081
  br label %return, !dbg !1081

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1082
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1084
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1085

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1086
  br label %return, !dbg !1086

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1087
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1089
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1090

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1091
  br label %return, !dbg !1091

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1092
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1094
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1095

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1096
  br label %return, !dbg !1096

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1097
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1099
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1100

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1101
  br label %return, !dbg !1101

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1102
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1104
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1105

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1106
  br label %return, !dbg !1106

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1107
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1109
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1110

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1111
  br label %return, !dbg !1111

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1112, !range !721, !noundef !722
  %tobool69 = trunc i8 %25 to i1, !dbg !1112
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1114

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1115

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_173() #19, !dbg !1116, !srcloc !1119
  unreachable, !dbg !1116

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1120

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1121

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1122

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1124

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1122

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #15, !dbg !1126, !srcloc !1128
  br label %do.end75, !dbg !1126

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1122

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1129
  br label %return, !dbg !1129

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1130
  ret i32 %26, !dbg !1130
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1131 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !1137 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1141, metadata !DIExpression()), !dbg !1143
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1142, metadata !DIExpression()), !dbg !1144
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1145
  %and = and i32 %0, 17, !dbg !1145
  %cmp = icmp eq i32 %and, 0, !dbg !1145
  %lnot = xor i1 %cmp, true, !dbg !1145
  %lnot1 = xor i1 %lnot, true, !dbg !1145
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1145
  %conv = sext i32 %lnot.ext to i64, !dbg !1145
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1145
  %tobool = icmp ne i64 %expval, 0, !dbg !1145
  br i1 %tobool, label %if.then, label %if.end, !dbg !1147

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1148
  br label %return, !dbg !1148

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1149
  %and2 = and i32 %1, 1, !dbg !1151
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1151
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1152

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1153
  br label %return, !dbg !1153

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1154
  br label %return, !dbg !1154

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1156
  ret i32 %2, !dbg !1156
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1157 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #3

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1158 dso_local void @__compiletime_assert_173() #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !1159 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1167, metadata !DIExpression()), !dbg !1169
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1168, metadata !DIExpression()), !dbg !1170
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1171
  %1 = load i64, ptr %size.addr, align 8, !dbg !1172
  %conv = trunc i64 %1 to i32, !dbg !1172
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !1173
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1174
  %3 = load i64, ptr %size.addr, align 8, !dbg !1174
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !1174
  ret void, !dbg !1175
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #6 align 16 !dbg !1176 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1178, metadata !DIExpression()), !dbg !1180
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1179, metadata !DIExpression()), !dbg !1181
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1182
  %1 = load i64, ptr %i.addr, align 8, !dbg !1183
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #17, !dbg !1184
  ret void, !dbg !1185
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !1186 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1191, metadata !DIExpression()), !dbg !1193
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1192, metadata !DIExpression()), !dbg !1194
  ret i1 true, !dbg !1195
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !1196 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1201, metadata !DIExpression()), !dbg !1204
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1202, metadata !DIExpression()), !dbg !1205
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1203, metadata !DIExpression()), !dbg !1206
  ret void, !dbg !1207
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #6 align 16 !dbg !1208 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1214, metadata !DIExpression()), !dbg !1216
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1215, metadata !DIExpression()), !dbg !1217
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1218
  %1 = load i64, ptr %i.addr, align 8, !dbg !1219
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #17, !dbg !1220
  ret void, !dbg !1221
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #6 align 16 !dbg !1222 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1225, metadata !DIExpression()), !dbg !1227
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1226, metadata !DIExpression()), !dbg !1228
  br label %do.body, !dbg !1229

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !1230
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1230
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !1230
  store volatile i64 %0, ptr %counter, align 8, !dbg !1230
  br label %do.end, !dbg !1230

do.end:                                           ; preds = %do.body
  ret void, !dbg !1232
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @percpu_count_ptr(ptr noundef %ref) #0 align 16 !dbg !1233 {
entry:
  %ref.addr = alloca ptr, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !1237, metadata !DIExpression()), !dbg !1238
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !1239
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 0, !dbg !1240
  %1 = load i64, ptr %percpu_count_ptr, align 8, !dbg !1240
  %and = and i64 %1, -4, !dbg !1241
  %2 = inttoptr i64 %and to ptr, !dbg !1242
  ret ptr %2, !dbg !1243
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !1244 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1246, metadata !DIExpression()), !dbg !1248
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1247, metadata !DIExpression()), !dbg !1249
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1250
  %1 = load i64, ptr %size.addr, align 8, !dbg !1251
  %conv = trunc i64 %1 to i32, !dbg !1251
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !1252
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1253
  %3 = load i64, ptr %size.addr, align 8, !dbg !1253
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !1253
  ret void, !dbg !1254
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #6 align 16 !dbg !1255 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1257, metadata !DIExpression()), !dbg !1258
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1259
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #17, !dbg !1260
  ret i64 %call, !dbg !1261
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !1262 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1264, metadata !DIExpression()), !dbg !1266
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1265, metadata !DIExpression()), !dbg !1267
  ret i1 true, !dbg !1268
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #6 align 16 !dbg !1269 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1275, metadata !DIExpression()), !dbg !1276
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1277
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #17, !dbg !1278
  ret i64 %call, !dbg !1279
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #6 align 16 !dbg !1280 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1282, metadata !DIExpression()), !dbg !1283
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1284
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !1284
  %1 = load volatile i64, ptr %counter, align 8, !dbg !1284
  ret i64 %1, !dbg !1285
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1286 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #6 align 16 !dbg !1289 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1293, metadata !DIExpression()), !dbg !1294
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1295
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1295
  call void @_raw_spin_unlock_irq(ptr noundef %1) #17, !dbg !1295
  ret void, !dbg !1296
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #6 align 16 !dbg !1297 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1299, metadata !DIExpression()), !dbg !1300
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1301
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1301
  call void @_raw_spin_lock_irq(ptr noundef %1) #17, !dbg !1301
  ret void, !dbg !1302
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__percpu_ref_switch_to_atomic(ptr noundef %ref, ptr noundef %confirm_switch) #0 align 16 !dbg !1303 {
entry:
  %ref.addr = alloca ptr, align 8
  %confirm_switch.addr = alloca ptr, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !1305, metadata !DIExpression()), !dbg !1307
  store ptr %confirm_switch, ptr %confirm_switch.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %confirm_switch.addr, metadata !1306, metadata !DIExpression()), !dbg !1308
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !1309
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, ptr %0, i32 0, i32 0, !dbg !1311
  %1 = load i64, ptr %percpu_count_ptr, align 8, !dbg !1311
  %and = and i64 %1, 1, !dbg !1312
  %tobool = icmp ne i64 %and, 0, !dbg !1312
  br i1 %tobool, label %if.then, label %if.end3, !dbg !1313

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %confirm_switch.addr, align 8, !dbg !1314
  %tobool1 = icmp ne ptr %2, null, !dbg !1314
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !1317

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %confirm_switch.addr, align 8, !dbg !1318
  %4 = load ptr, ptr %ref.addr, align 8, !dbg !1319
  call void %3(ptr noundef %4) #17, !dbg !1318
  br label %if.end, !dbg !1318

if.end:                                           ; preds = %if.then2, %if.then
  br label %return, !dbg !1320

if.end3:                                          ; preds = %entry
  %5 = load ptr, ptr %ref.addr, align 8, !dbg !1321
  %percpu_count_ptr4 = getelementptr inbounds %struct.percpu_ref, ptr %5, i32 0, i32 0, !dbg !1322
  %6 = load i64, ptr %percpu_count_ptr4, align 8, !dbg !1323
  %or = or i64 %6, 1, !dbg !1323
  store i64 %or, ptr %percpu_count_ptr4, align 8, !dbg !1323
  %7 = load ptr, ptr %confirm_switch.addr, align 8, !dbg !1324
  %tobool5 = icmp ne ptr %7, null, !dbg !1324
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !1324

cond.true:                                        ; preds = %if.end3
  br label %cond.end, !dbg !1324

cond.false:                                       ; preds = %if.end3
  br label %cond.end, !dbg !1324

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ @percpu_ref_noop_confirm_switch, %cond.false ], !dbg !1324
  %8 = load ptr, ptr %ref.addr, align 8, !dbg !1325
  %data = getelementptr inbounds %struct.percpu_ref, ptr %8, i32 0, i32 1, !dbg !1326
  %9 = load ptr, ptr %data, align 8, !dbg !1326
  %confirm_switch6 = getelementptr inbounds %struct.percpu_ref_data, ptr %9, i32 0, i32 2, !dbg !1327
  store ptr %cond, ptr %confirm_switch6, align 8, !dbg !1328
  %10 = load ptr, ptr %ref.addr, align 8, !dbg !1329
  call void @percpu_ref_get(ptr noundef %10) #17, !dbg !1330
  %11 = load ptr, ptr %ref.addr, align 8, !dbg !1331
  %data7 = getelementptr inbounds %struct.percpu_ref, ptr %11, i32 0, i32 1, !dbg !1332
  %12 = load ptr, ptr %data7, align 8, !dbg !1332
  %rcu = getelementptr inbounds %struct.percpu_ref_data, ptr %12, i32 0, i32 4, !dbg !1333
  call void @call_rcu_hurry(ptr noundef %rcu, ptr noundef @percpu_ref_switch_to_atomic_rcu) #17, !dbg !1334
  br label %return, !dbg !1335

return:                                           ; preds = %cond.end, %if.end
  ret void, !dbg !1335
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__percpu_ref_switch_to_percpu(ptr noundef %ref) #0 align 16 !dbg !1336 {
entry:
  %ref.addr = alloca ptr, align 8
  %percpu_count = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp62 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp63 = alloca ptr, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !1338, metadata !DIExpression()), !dbg !1354
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_count) #15, !dbg !1355
  call void @llvm.dbg.declare(metadata ptr %percpu_count, metadata !1339, metadata !DIExpression()), !dbg !1356
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !1357
  %call = call ptr @percpu_count_ptr(ptr noundef %0) #17, !dbg !1358
  store ptr %call, ptr %percpu_count, align 8, !dbg !1356
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !1359
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !1340, metadata !DIExpression()), !dbg !1360
  br label %do.body, !dbg !1361

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %percpu_count, align 8, !dbg !1362
  %tobool = icmp ne ptr %1, null, !dbg !1362
  %lnot = xor i1 %tobool, true, !dbg !1362
  %lnot1 = xor i1 %lnot, true, !dbg !1362
  %lnot2 = xor i1 %lnot1, true, !dbg !1362
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1362
  %conv = sext i32 %lnot.ext to i64, !dbg !1362
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1362
  %tobool3 = icmp ne i64 %expval, 0, !dbg !1362
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1365

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !1362

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !1366

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !1368

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !1368

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !1366

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 242, i32 0, i64 12) #15, !dbg !1370, !srcloc !1372
  br label %do.cond7, !dbg !1370

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !1370

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !1366

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !1366

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !1366

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !1365

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !1365

do.end12:                                         ; preds = %do.cond11
  %2 = load ptr, ptr %ref.addr, align 8, !dbg !1373
  %percpu_count_ptr = getelementptr inbounds %struct.percpu_ref, ptr %2, i32 0, i32 0, !dbg !1375
  %3 = load i64, ptr %percpu_count_ptr, align 8, !dbg !1375
  %and = and i64 %3, 1, !dbg !1376
  %tobool13 = icmp ne i64 %and, 0, !dbg !1376
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !1377

if.then14:                                        ; preds = %do.end12
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1378

if.end15:                                         ; preds = %do.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !1379
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1341, metadata !DIExpression()), !dbg !1379
  %4 = load ptr, ptr %ref.addr, align 8, !dbg !1379
  %data = getelementptr inbounds %struct.percpu_ref, ptr %4, i32 0, i32 1, !dbg !1379
  %5 = load ptr, ptr %data, align 8, !dbg !1379
  %allow_reinit = getelementptr inbounds %struct.percpu_ref_data, ptr %5, i32 0, i32 3, !dbg !1379
  %bf.load = load i8, ptr %allow_reinit, align 8, !dbg !1379
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !1379
  %bf.clear = and i8 %bf.lshr, 1, !dbg !1379
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !1379
  %lnot16 = xor i1 %bf.cast, true, !dbg !1379
  %lnot18 = xor i1 %lnot16, true, !dbg !1379
  %lnot20 = xor i1 %lnot18, true, !dbg !1379
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !1379
  store i32 %lnot.ext21, ptr %__ret_warn_on, align 4, !dbg !1379
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !1380
  %tobool22 = icmp ne i32 %6, 0, !dbg !1380
  %lnot23 = xor i1 %tobool22, true, !dbg !1380
  %lnot25 = xor i1 %lnot23, true, !dbg !1380
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !1380
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !1380
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !1380
  %tobool29 = icmp ne i64 %expval28, 0, !dbg !1380
  br i1 %tobool29, label %if.then30, label %if.end43, !dbg !1379

if.then30:                                        ; preds = %if.end15
  br label %do.body31, !dbg !1380

do.body31:                                        ; preds = %if.then30
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !1381
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1344, metadata !DIExpression()), !dbg !1381
  store i32 2307, ptr %__flags, align 4, !dbg !1381
  br label %do.body32, !dbg !1381

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !1382

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !1382

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !1381

do.body35:                                        ; preds = %do.end34
  %7 = load i32, ptr %__flags, align 4, !dbg !1384
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 247, i32 %7, i64 12) #15, !dbg !1384, !srcloc !1386
  br label %do.cond36, !dbg !1384

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !1384

do.end37:                                         ; preds = %do.cond36
  br label %do.body38, !dbg !1381

do.body38:                                        ; preds = %do.end37
  br label %do.cond39, !dbg !1387

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !1387

do.end40:                                         ; preds = %do.cond39
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !1380
  br label %do.cond41, !dbg !1381

do.cond41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !1381

do.end42:                                         ; preds = %do.cond41
  br label %if.end43, !dbg !1381

if.end43:                                         ; preds = %do.end42, %if.end15
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !1379
  %tobool44 = icmp ne i32 %8, 0, !dbg !1379
  %lnot45 = xor i1 %tobool44, true, !dbg !1379
  %lnot47 = xor i1 %lnot45, true, !dbg !1379
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !1379
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !1379
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0), !dbg !1379
  store i64 %expval50, ptr %tmp, align 8, !dbg !1380
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !1389
  %9 = load i64, ptr %tmp, align 8, !dbg !1379
  %tobool51 = icmp ne i64 %9, 0, !dbg !1389
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !1390

if.then52:                                        ; preds = %if.end43
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1391

if.end53:                                         ; preds = %if.end43
  %10 = load ptr, ptr %ref.addr, align 8, !dbg !1392
  %data54 = getelementptr inbounds %struct.percpu_ref, ptr %10, i32 0, i32 1, !dbg !1393
  %11 = load ptr, ptr %data54, align 8, !dbg !1393
  %count = getelementptr inbounds %struct.percpu_ref_data, ptr %11, i32 0, i32 0, !dbg !1394
  call void @atomic_long_add(i64 noundef -9223372036854775808, ptr noundef %count) #17, !dbg !1395
  store i32 0, ptr %cpu, align 4, !dbg !1396
  br label %for.cond, !dbg !1396

for.cond:                                         ; preds = %for.inc, %if.end53
  %12 = load i32, ptr %cpu, align 4, !dbg !1397
  %conv55 = sext i32 %12 to i64, !dbg !1397
  %call56 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv55) #17, !dbg !1397
  %conv57 = trunc i64 %call56 to i32, !dbg !1397
  store i32 %conv57, ptr %cpu, align 4, !dbg !1397
  %13 = load i32, ptr %cpu, align 4, !dbg !1397
  %cmp = icmp ult i32 %13, 64, !dbg !1397
  br i1 %cmp, label %for.body, label %for.end, !dbg !1396

for.body:                                         ; preds = %for.cond
  br label %do.body59, !dbg !1398

do.body59:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1399
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1347, metadata !DIExpression()), !dbg !1399
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1399
  %14 = load ptr, ptr %__vpp_verify, align 8, !dbg !1399
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1398
  br label %do.cond60, !dbg !1399

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !1399

do.end61:                                         ; preds = %do.cond60
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !1400
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1352, metadata !DIExpression()), !dbg !1400
  %15 = load ptr, ptr %percpu_count, align 8, !dbg !1400
  %16 = ptrtoint ptr %15 to i64, !dbg !1400
  store i64 %16, ptr %__ptr, align 8, !dbg !1400
  %17 = load i64, ptr %__ptr, align 8, !dbg !1400
  %18 = load i32, ptr %cpu, align 4, !dbg !1400
  %idxprom = sext i32 %18 to i64, !dbg !1400
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1400
  %19 = load i64, ptr %arrayidx, align 8, !dbg !1400
  %add = add i64 %17, %19, !dbg !1400
  %20 = inttoptr i64 %add to ptr, !dbg !1400
  store ptr %20, ptr %tmp63, align 8, !dbg !1400
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !1398
  %21 = load ptr, ptr %tmp63, align 8, !dbg !1400
  store ptr %21, ptr %tmp62, align 8, !dbg !1399
  %22 = load ptr, ptr %tmp62, align 8, !dbg !1398
  store i64 0, ptr %22, align 8, !dbg !1401
  br label %for.inc, !dbg !1402

for.inc:                                          ; preds = %do.end61
  %23 = load i32, ptr %cpu, align 4, !dbg !1397
  %inc = add i32 %23, 1, !dbg !1397
  store i32 %inc, ptr %cpu, align 4, !dbg !1397
  br label %for.cond, !dbg !1397, !llvm.loop !1403

for.end:                                          ; preds = %for.cond
  br label %do.body64, !dbg !1406

do.body64:                                        ; preds = %for.end
  br label %do.body65, !dbg !1407

do.body65:                                        ; preds = %do.body64
  br label %do.cond66, !dbg !1409

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !1409

do.end67:                                         ; preds = %do.cond66
  br label %do.body68, !dbg !1407

do.body68:                                        ; preds = %do.end67
  br label %do.body69, !dbg !1411

do.body69:                                        ; preds = %do.body68
  br label %do.cond70, !dbg !1413

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !1413

do.end71:                                         ; preds = %do.cond70
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !1411, !srcloc !1415
  br label %do.body72, !dbg !1411

do.body72:                                        ; preds = %do.end71
  br label %do.body73, !dbg !1416

do.body73:                                        ; preds = %do.body72
  br label %do.cond74, !dbg !1418

do.cond74:                                        ; preds = %do.body73
  br label %do.end75, !dbg !1418

do.end75:                                         ; preds = %do.cond74
  br label %do.body76, !dbg !1416

do.body76:                                        ; preds = %do.end75
  %24 = load ptr, ptr %ref.addr, align 8, !dbg !1420
  %percpu_count_ptr77 = getelementptr inbounds %struct.percpu_ref, ptr %24, i32 0, i32 0, !dbg !1420
  %25 = load i64, ptr %percpu_count_ptr77, align 8, !dbg !1420
  %and78 = and i64 %25, -2, !dbg !1420
  %26 = load ptr, ptr %ref.addr, align 8, !dbg !1420
  %percpu_count_ptr79 = getelementptr inbounds %struct.percpu_ref, ptr %26, i32 0, i32 0, !dbg !1420
  store volatile i64 %and78, ptr %percpu_count_ptr79, align 8, !dbg !1420
  br label %do.cond80, !dbg !1420

do.cond80:                                        ; preds = %do.body76
  br label %do.end81, !dbg !1420

do.end81:                                         ; preds = %do.cond80
  br label %do.cond82, !dbg !1416

do.cond82:                                        ; preds = %do.end81
  br label %do.end83, !dbg !1416

do.end83:                                         ; preds = %do.cond82
  br label %do.cond84, !dbg !1411

do.cond84:                                        ; preds = %do.end83
  br label %do.end85, !dbg !1411

do.end85:                                         ; preds = %do.cond84
  br label %do.cond86, !dbg !1407

do.cond86:                                        ; preds = %do.end85
  br label %do.end87, !dbg !1407

do.end87:                                         ; preds = %do.cond86
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1422
  br label %cleanup, !dbg !1422

cleanup:                                          ; preds = %do.end87, %if.then52, %if.then14
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !1422
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_count) #15, !dbg !1422
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1422

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1423 dso_local void @_raw_spin_unlock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1426 dso_local void @_raw_spin_lock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_ref_noop_confirm_switch(ptr noundef %ref) #0 align 16 !dbg !1427 {
entry:
  %ref.addr = alloca ptr, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !1429, metadata !DIExpression()), !dbg !1430
  ret void, !dbg !1431
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @call_rcu_hurry(ptr noundef %head, ptr noundef %func) #7 align 16 !dbg !1432 {
entry:
  %head.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !1438, metadata !DIExpression()), !dbg !1440
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !1439, metadata !DIExpression()), !dbg !1441
  %0 = load ptr, ptr %head.addr, align 8, !dbg !1442
  %1 = load ptr, ptr %func.addr, align 8, !dbg !1443
  call void @call_rcu(ptr noundef %0, ptr noundef %1) #17, !dbg !1444
  ret void, !dbg !1445
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_ref_switch_to_atomic_rcu(ptr noundef %rcu) #0 align 16 !dbg !215 {
entry:
  %rcu.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ref = alloca ptr, align 8
  %percpu_count = alloca ptr, align 8
  %count = alloca i64, align 8
  %cpu = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp6 = alloca ptr, align 8
  %tmp8 = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp26 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp69 = alloca i64, align 8
  %tmp78 = alloca i64, align 8
  %tmp94 = alloca i32, align 4
  store ptr %rcu, ptr %rcu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rcu.addr, metadata !217, metadata !DIExpression()), !dbg !1446
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !1447
  call void @llvm.dbg.declare(metadata ptr %data, metadata !218, metadata !DIExpression()), !dbg !1448
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !1449
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !219, metadata !DIExpression()), !dbg !1449
  %0 = load ptr, ptr %rcu.addr, align 8, !dbg !1449
  store ptr %0, ptr %__mptr, align 8, !dbg !1449
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1449
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !1449
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1449
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !1450
  %2 = load ptr, ptr %tmp, align 8, !dbg !1449
  store ptr %2, ptr %data, align 8, !dbg !1448
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref) #15, !dbg !1451
  call void @llvm.dbg.declare(metadata ptr %ref, metadata !221, metadata !DIExpression()), !dbg !1452
  %3 = load ptr, ptr %data, align 8, !dbg !1453
  %ref1 = getelementptr inbounds %struct.percpu_ref_data, ptr %3, i32 0, i32 5, !dbg !1454
  %4 = load ptr, ptr %ref1, align 8, !dbg !1454
  store ptr %4, ptr %ref, align 8, !dbg !1452
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_count) #15, !dbg !1455
  call void @llvm.dbg.declare(metadata ptr %percpu_count, metadata !222, metadata !DIExpression()), !dbg !1456
  %5 = load ptr, ptr %ref, align 8, !dbg !1457
  %call = call ptr @percpu_count_ptr(ptr noundef %5) #17, !dbg !1458
  store ptr %call, ptr %percpu_count, align 8, !dbg !1456
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #15, !dbg !1459
  call void @llvm.dbg.declare(metadata ptr %count, metadata !223, metadata !DIExpression()), !dbg !1460
  store i64 0, ptr %count, align 8, !dbg !1460
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #15, !dbg !1461
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !224, metadata !DIExpression()), !dbg !1462
  store i32 0, ptr %cpu, align 4, !dbg !1463
  br label %for.cond, !dbg !1463

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %cpu, align 4, !dbg !1464
  %conv = sext i32 %6 to i64, !dbg !1464
  %call2 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #17, !dbg !1464
  %conv3 = trunc i64 %call2 to i32, !dbg !1464
  store i32 %conv3, ptr %cpu, align 4, !dbg !1464
  %7 = load i32, ptr %cpu, align 4, !dbg !1464
  %cmp = icmp ult i32 %7, 64, !dbg !1464
  br i1 %cmp, label %for.body, label %for.end, !dbg !1463

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !1465

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1466
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !225, metadata !DIExpression()), !dbg !1466
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1466
  %8 = load ptr, ptr %__vpp_verify, align 8, !dbg !1466
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1465
  br label %do.cond, !dbg !1466

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1466

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !1467
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !232, metadata !DIExpression()), !dbg !1467
  %9 = load ptr, ptr %percpu_count, align 8, !dbg !1467
  %10 = ptrtoint ptr %9 to i64, !dbg !1467
  store i64 %10, ptr %__ptr, align 8, !dbg !1467
  %11 = load i64, ptr %__ptr, align 8, !dbg !1467
  %12 = load i32, ptr %cpu, align 4, !dbg !1467
  %idxprom = sext i32 %12 to i64, !dbg !1467
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1467
  %13 = load i64, ptr %arrayidx, align 8, !dbg !1467
  %add = add i64 %11, %13, !dbg !1467
  %14 = inttoptr i64 %add to ptr, !dbg !1467
  store ptr %14, ptr %tmp6, align 8, !dbg !1467
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !1465
  %15 = load ptr, ptr %tmp6, align 8, !dbg !1467
  store ptr %15, ptr %tmp5, align 8, !dbg !1466
  %16 = load ptr, ptr %tmp5, align 8, !dbg !1465
  %17 = load i64, ptr %16, align 8, !dbg !1468
  %18 = load i64, ptr %count, align 8, !dbg !1469
  %add7 = add i64 %18, %17, !dbg !1469
  store i64 %add7, ptr %count, align 8, !dbg !1469
  br label %for.inc, !dbg !1470

for.inc:                                          ; preds = %do.end
  %19 = load i32, ptr %cpu, align 4, !dbg !1464
  %inc = add i32 %19, 1, !dbg !1464
  store i32 %inc, ptr %cpu, align 4, !dbg !1464
  br label %for.cond, !dbg !1464, !llvm.loop !1471

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %tmp8, align 4, !dbg !1473
  %20 = load i32, ptr %tmp8, align 4, !dbg !1476
  %21 = load i64, ptr %count, align 8, !dbg !1477
  %sub = sub i64 %21, -9223372036854775808, !dbg !1478
  %22 = load ptr, ptr %data, align 8, !dbg !1479
  %count9 = getelementptr inbounds %struct.percpu_ref_data, ptr %22, i32 0, i32 0, !dbg !1480
  call void @atomic_long_add(i64 noundef %sub, ptr noundef %count9) #17, !dbg !1481
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #15, !dbg !1482
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !234, metadata !DIExpression()), !dbg !1482
  %23 = load ptr, ptr %data, align 8, !dbg !1482
  %count10 = getelementptr inbounds %struct.percpu_ref_data, ptr %23, i32 0, i32 0, !dbg !1482
  %call11 = call i64 @atomic_long_read(ptr noundef %count10) #17, !dbg !1482
  %cmp12 = icmp sle i64 %call11, 0, !dbg !1482
  %lnot = xor i1 %cmp12, true, !dbg !1482
  %lnot14 = xor i1 %lnot, true, !dbg !1482
  %frombool = zext i1 %lnot14 to i8, !dbg !1482
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !1482
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #15, !dbg !1483
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !237, metadata !DIExpression()), !dbg !1483
  %24 = load i8, ptr %__ret_do_once, align 1, !dbg !1483, !range !721, !noundef !722
  %tobool = trunc i8 %24 to i1, !dbg !1483
  %lnot15 = xor i1 %tobool, true, !dbg !1483
  %lnot16 = xor i1 %lnot15, true, !dbg !1483
  %frombool17 = zext i1 %lnot16 to i8, !dbg !1483
  store i8 %frombool17, ptr %__ret_cond, align 1, !dbg !1483
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #15, !dbg !1483
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !240, metadata !DIExpression()), !dbg !1483
  store i8 0, ptr %__ret_once, align 1, !dbg !1483
  %25 = load i8, ptr %__ret_cond, align 1, !dbg !1484, !range !721, !noundef !722
  %tobool18 = trunc i8 %25 to i1, !dbg !1484
  br i1 %tobool18, label %land.rhs, label %land.end, !dbg !1484

land.rhs:                                         ; preds = %for.end
  %26 = load i8, ptr @percpu_ref_switch_to_atomic_rcu.__already_done, align 1, !dbg !1484, !range !721, !noundef !722
  %tobool20 = trunc i8 %26 to i1, !dbg !1484
  %lnot21 = xor i1 %tobool20, true, !dbg !1484
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end
  %27 = phi i1 [ false, %for.end ], [ %lnot21, %land.rhs ], !dbg !1486
  %lnot22 = xor i1 %27, true, !dbg !1484
  %lnot23 = xor i1 %lnot22, true, !dbg !1484
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !1484
  %conv24 = sext i32 %lnot.ext to i64, !dbg !1484
  %expval = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !1484
  %tobool25 = icmp ne i64 %expval, 0, !dbg !1484
  br i1 %tobool25, label %if.then, label %if.end, !dbg !1483

if.then:                                          ; preds = %land.end
  store i8 1, ptr @percpu_ref_switch_to_atomic_rcu.__already_done, align 1, !dbg !1487
  store i8 1, ptr %__ret_once, align 1, !dbg !1487
  br label %if.end, !dbg !1487

if.end:                                           ; preds = %if.then, %land.end
  %28 = load i8, ptr %__ret_once, align 1, !dbg !1483, !range !721, !noundef !722
  %tobool27 = trunc i8 %28 to i1, !dbg !1483
  %lnot28 = xor i1 %tobool27, true, !dbg !1483
  %lnot30 = xor i1 %lnot28, true, !dbg !1483
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !1483
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !1483
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !1483
  store i64 %expval33, ptr %tmp26, align 8, !dbg !1484
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #15, !dbg !1489
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #15, !dbg !1489
  %29 = load i64, ptr %tmp26, align 8, !dbg !1483
  %tobool34 = icmp ne i64 %29, 0, !dbg !1489
  br i1 %tobool34, label %if.then35, label %if.end77, !dbg !1482

if.then35:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !1490
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !241, metadata !DIExpression()), !dbg !1490
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1490
  %30 = load i32, ptr %__ret_warn_on, align 4, !dbg !1491
  %tobool36 = icmp ne i32 %30, 0, !dbg !1491
  %lnot37 = xor i1 %tobool36, true, !dbg !1491
  %lnot39 = xor i1 %lnot37, true, !dbg !1491
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !1491
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !1491
  %expval42 = call i64 @llvm.expect.i64(i64 %conv41, i64 0), !dbg !1491
  %tobool43 = icmp ne i64 %expval42, 0, !dbg !1491
  br i1 %tobool43, label %if.then44, label %if.end68, !dbg !1490

if.then44:                                        ; preds = %if.then35
  br label %do.body45, !dbg !1491

do.body45:                                        ; preds = %if.then44
  br label %do.body46, !dbg !1492

do.body46:                                        ; preds = %do.body45
  br label %do.cond47, !dbg !1493

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !1493

do.end48:                                         ; preds = %do.cond47
  %31 = load ptr, ptr %data, align 8, !dbg !1492
  %release = getelementptr inbounds %struct.percpu_ref_data, ptr %31, i32 0, i32 1, !dbg !1492
  %32 = load ptr, ptr %release, align 8, !dbg !1492
  %33 = load ptr, ptr %data, align 8, !dbg !1492
  %count49 = getelementptr inbounds %struct.percpu_ref_data, ptr %33, i32 0, i32 0, !dbg !1492
  %call50 = call i64 @atomic_long_read(ptr noundef %count49) #17, !dbg !1492
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.3, ptr noundef %32, i64 noundef %call50) #17, !dbg !1492
  br label %do.body51, !dbg !1492

do.body51:                                        ; preds = %do.end48
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !1495
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !243, metadata !DIExpression()), !dbg !1495
  store i32 2313, ptr %__flags, align 4, !dbg !1495
  br label %do.body52, !dbg !1495

do.body52:                                        ; preds = %do.body51
  br label %do.cond53, !dbg !1496

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !1496

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !1495

do.body55:                                        ; preds = %do.end54
  %34 = load i32, ptr %__flags, align 4, !dbg !1498
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 199, i32 %34, i64 12) #15, !dbg !1498, !srcloc !1500
  br label %do.cond56, !dbg !1498

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !1498

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !1495

do.body58:                                        ; preds = %do.end57
  br label %do.cond59, !dbg !1501

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !1501

do.end60:                                         ; preds = %do.cond59
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !1492
  br label %do.cond61, !dbg !1495

do.cond61:                                        ; preds = %do.end60
  br label %do.end62, !dbg !1495

do.end62:                                         ; preds = %do.cond61
  br label %do.body63, !dbg !1492

do.body63:                                        ; preds = %do.end62
  br label %do.cond64, !dbg !1503

do.cond64:                                        ; preds = %do.body63
  br label %do.end65, !dbg !1503

do.end65:                                         ; preds = %do.cond64
  br label %do.cond66, !dbg !1492

do.cond66:                                        ; preds = %do.end65
  br label %do.end67, !dbg !1492

do.end67:                                         ; preds = %do.cond66
  br label %if.end68, !dbg !1492

if.end68:                                         ; preds = %do.end67, %if.then35
  %35 = load i32, ptr %__ret_warn_on, align 4, !dbg !1490
  %tobool70 = icmp ne i32 %35, 0, !dbg !1490
  %lnot71 = xor i1 %tobool70, true, !dbg !1490
  %lnot73 = xor i1 %lnot71, true, !dbg !1490
  %lnot.ext74 = zext i1 %lnot73 to i32, !dbg !1490
  %conv75 = sext i32 %lnot.ext74 to i64, !dbg !1490
  %expval76 = call i64 @llvm.expect.i64(i64 %conv75, i64 0), !dbg !1490
  store i64 %expval76, ptr %tmp69, align 8, !dbg !1491
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !1489
  %36 = load i64, ptr %tmp69, align 8, !dbg !1490
  br label %if.end77, !dbg !1489

if.end77:                                         ; preds = %if.end68, %if.end
  %37 = load i8, ptr %__ret_do_once, align 1, !dbg !1482, !range !721, !noundef !722
  %tobool79 = trunc i8 %37 to i1, !dbg !1482
  %lnot80 = xor i1 %tobool79, true, !dbg !1482
  %lnot82 = xor i1 %lnot80, true, !dbg !1482
  %lnot.ext83 = zext i1 %lnot82 to i32, !dbg !1482
  %conv84 = sext i32 %lnot.ext83 to i64, !dbg !1482
  %expval85 = call i64 @llvm.expect.i64(i64 %conv84, i64 0), !dbg !1482
  store i64 %expval85, ptr %tmp78, align 8, !dbg !1489
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #15, !dbg !1505
  %38 = load i64, ptr %tmp78, align 8, !dbg !1482
  %tobool86 = icmp ne i64 %38, 0, !dbg !1505
  br i1 %tobool86, label %land.lhs.true, label %if.end96, !dbg !1506

land.lhs.true:                                    ; preds = %if.end77
  %call87 = call i32 @atomic_inc_return(ptr noundef @percpu_ref_switch_to_atomic_rcu.underflows) #17, !dbg !1507
  %cmp88 = icmp slt i32 %call87, 4, !dbg !1508
  br i1 %cmp88, label %if.then90, label %if.end96, !dbg !1509

if.then90:                                        ; preds = %land.lhs.true
  br label %do.body91, !dbg !1510

do.body91:                                        ; preds = %if.then90
  br label %do.cond92, !dbg !1513

do.cond92:                                        ; preds = %do.body91
  br label %do.end93, !dbg !1513

do.end93:                                         ; preds = %do.cond92
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef @__func__.percpu_ref_switch_to_atomic_rcu, ptr noundef @__func__.percpu_ref_switch_to_atomic_rcu) #20, !dbg !1510
  store i32 %call95, ptr %tmp94, align 4, !dbg !1513
  %39 = load i32, ptr %tmp94, align 4, !dbg !1510
  %40 = load ptr, ptr %data, align 8, !dbg !1515
  call void @mem_dump_obj(ptr noundef %40) #17, !dbg !1516
  br label %if.end96, !dbg !1517

if.end96:                                         ; preds = %do.end93, %land.lhs.true, %if.end77
  %41 = load ptr, ptr %rcu.addr, align 8, !dbg !1518
  call void @percpu_ref_call_confirm_rcu(ptr noundef %41) #17, !dbg !1519
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #15, !dbg !1520
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #15, !dbg !1520
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_count) #15, !dbg !1520
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref) #15, !dbg !1520
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !1520
  ret void, !dbg !1520
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1521 dso_local void @call_rcu(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #7 align 16 !dbg !1522 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1529, metadata !DIExpression()), !dbg !1535
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1530, metadata !DIExpression()), !dbg !1536
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !1531, metadata !DIExpression()), !dbg !1537
  %0 = load i64, ptr %size.addr, align 8, !dbg !1538
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1538
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !1538

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1538
  %cmp = icmp ule i64 %2, 64, !dbg !1538
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !1538

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !1538
  %cmp2 = icmp ugt i64 %3, 0, !dbg !1538
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !1539

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !1540
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1532, metadata !DIExpression()), !dbg !1541
  %4 = load i64, ptr %offset.addr, align 8, !dbg !1542
  %5 = load i64, ptr %size.addr, align 8, !dbg !1542
  %cmp3 = icmp uge i64 %4, %5, !dbg !1542
  %lnot = xor i1 %cmp3, true, !dbg !1542
  %lnot4 = xor i1 %lnot, true, !dbg !1542
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !1542
  %conv = sext i32 %lnot.ext to i64, !dbg !1542
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1542
  %tobool = icmp ne i64 %expval, 0, !dbg !1542
  br i1 %tobool, label %if.then5, label %if.end, !dbg !1544

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1545
  store i64 %6, ptr %retval, align 8, !dbg !1546
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1546

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !1547
  %8 = load i64, ptr %7, align 8, !dbg !1548
  %9 = load i64, ptr %offset.addr, align 8, !dbg !1549
  %shl = shl i64 1, %9, !dbg !1549
  %sub = sub i64 -1, %shl, !dbg !1549
  %add = add i64 %sub, 1, !dbg !1549
  %10 = load i64, ptr %size.addr, align 8, !dbg !1549
  %sub6 = sub i64 %10, 1, !dbg !1549
  %sub7 = sub i64 63, %sub6, !dbg !1549
  %shr = lshr i64 -1, %sub7, !dbg !1549
  %and = and i64 %add, %shr, !dbg !1549
  %add8 = add i64 0, %and, !dbg !1549
  %and9 = and i64 %8, %add8, !dbg !1550
  store i64 %and9, ptr %val, align 8, !dbg !1551
  %11 = load i64, ptr %val, align 8, !dbg !1552
  %tobool10 = icmp ne i64 %11, 0, !dbg !1552
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !1552

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !1553
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !1553
  br i1 %13, label %cond.true11, label %cond.false, !dbg !1553

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !1553
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !1553
  %cast = trunc i64 %15 to i32, !dbg !1553
  %conv12 = sext i32 %cast to i64, !dbg !1553
  br label %cond.end, !dbg !1553

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !1553
  %call = call i64 @variable__ffs(i64 noundef %16) #17, !dbg !1553
  br label %cond.end, !dbg !1553

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !1553
  br label %cond.end14, !dbg !1552

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !1554
  br label %cond.end14, !dbg !1552

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !1552
  store i64 %cond15, ptr %retval, align 8, !dbg !1555
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1555

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !1556
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !1557
  %19 = load i64, ptr %size.addr, align 8, !dbg !1558
  %20 = load i64, ptr %offset.addr, align 8, !dbg !1559
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #17, !dbg !1560
  store i64 %call17, ptr %retval, align 8, !dbg !1561
  br label %return, !dbg !1561

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !1562
  ret i64 %21, !dbg !1562
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_add(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !1563 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1567, metadata !DIExpression()), !dbg !1569
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1568, metadata !DIExpression()), !dbg !1570
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1571
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #17, !dbg !1572
  %1 = load i64, ptr %i.addr, align 8, !dbg !1573
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1574
  call void @raw_atomic_long_add(i64 noundef %1, ptr noundef %2) #17, !dbg !1575
  ret void, !dbg !1576
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_inc_return(ptr noundef %v) #6 align 16 !dbg !1577 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1582, metadata !DIExpression()), !dbg !1583
  br label %do.body, !dbg !1584

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1585

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1587
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !1588
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1589
  %call = call i32 @raw_atomic_inc_return(ptr noundef %1) #17, !dbg !1590
  ret i32 %call, !dbg !1591
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1592 dso_local i32 @_printk(ptr noundef, ...) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1596 dso_local void @mem_dump_obj(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_ref_call_confirm_rcu(ptr noundef %rcu) #0 align 16 !dbg !1598 {
entry:
  %rcu.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ref = alloca ptr, align 8
  store ptr %rcu, ptr %rcu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rcu.addr, metadata !1600, metadata !DIExpression()), !dbg !1605
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #15, !dbg !1606
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1601, metadata !DIExpression()), !dbg !1607
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !1608
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1602, metadata !DIExpression()), !dbg !1608
  %0 = load ptr, ptr %rcu.addr, align 8, !dbg !1608
  store ptr %0, ptr %__mptr, align 8, !dbg !1608
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1608
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !1608
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1608
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !1609
  %2 = load ptr, ptr %tmp, align 8, !dbg !1608
  store ptr %2, ptr %data, align 8, !dbg !1607
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref) #15, !dbg !1610
  call void @llvm.dbg.declare(metadata ptr %ref, metadata !1604, metadata !DIExpression()), !dbg !1611
  %3 = load ptr, ptr %data, align 8, !dbg !1612
  %ref1 = getelementptr inbounds %struct.percpu_ref_data, ptr %3, i32 0, i32 5, !dbg !1613
  %4 = load ptr, ptr %ref1, align 8, !dbg !1613
  store ptr %4, ptr %ref, align 8, !dbg !1611
  %5 = load ptr, ptr %data, align 8, !dbg !1614
  %confirm_switch = getelementptr inbounds %struct.percpu_ref_data, ptr %5, i32 0, i32 2, !dbg !1615
  %6 = load ptr, ptr %confirm_switch, align 8, !dbg !1615
  %7 = load ptr, ptr %ref, align 8, !dbg !1616
  call void %6(ptr noundef %7) #17, !dbg !1614
  %8 = load ptr, ptr %data, align 8, !dbg !1617
  %confirm_switch2 = getelementptr inbounds %struct.percpu_ref_data, ptr %8, i32 0, i32 2, !dbg !1618
  store ptr null, ptr %confirm_switch2, align 8, !dbg !1619
  %call = call i32 @__wake_up(ptr noundef @percpu_ref_switch_waitq, i32 noundef 3, i32 noundef 0, ptr noundef null) #17, !dbg !1620
  %9 = load ptr, ptr %data, align 8, !dbg !1621
  %allow_reinit = getelementptr inbounds %struct.percpu_ref_data, ptr %9, i32 0, i32 3, !dbg !1623
  %bf.load = load i8, ptr %allow_reinit, align 8, !dbg !1623
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !1623
  %bf.clear = and i8 %bf.lshr, 1, !dbg !1623
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !1623
  br i1 %bf.cast, label %if.end, label %if.then, !dbg !1624

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %ref, align 8, !dbg !1625
  call void @__percpu_ref_exit(ptr noundef %10) #17, !dbg !1626
  br label %if.end, !dbg !1626

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %ref, align 8, !dbg !1627
  call void @percpu_ref_put(ptr noundef %11) #17, !dbg !1628
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref) #15, !dbg !1629
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #15, !dbg !1629
  ret void, !dbg !1629
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !1630 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1635, metadata !DIExpression()), !dbg !1636
  %0 = load i64, ptr %word.addr, align 8, !dbg !1637
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #21, !dbg !1638, !srcloc !1639
  store i64 %1, ptr %word.addr, align 8, !dbg !1638
  %2 = load i64, ptr %word.addr, align 8, !dbg !1640
  ret i64 %2, !dbg !1641
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1642 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !1643 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1645, metadata !DIExpression()), !dbg !1647
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1646, metadata !DIExpression()), !dbg !1648
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1649
  %1 = load i64, ptr %size.addr, align 8, !dbg !1650
  %conv = trunc i64 %1 to i32, !dbg !1650
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !1651
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1652
  %3 = load i64, ptr %size.addr, align 8, !dbg !1652
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !1652
  ret void, !dbg !1653
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_add(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !1654 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1656, metadata !DIExpression()), !dbg !1658
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1657, metadata !DIExpression()), !dbg !1659
  %0 = load i64, ptr %i.addr, align 8, !dbg !1660
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1661
  call void @raw_atomic64_add(i64 noundef %0, ptr noundef %1) #17, !dbg !1662
  ret void, !dbg !1663
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_add(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !1664 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1668, metadata !DIExpression()), !dbg !1670
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1669, metadata !DIExpression()), !dbg !1671
  %0 = load i64, ptr %i.addr, align 8, !dbg !1672
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1673
  call void @arch_atomic64_add(i64 noundef %0, ptr noundef %1) #17, !dbg !1674
  ret void, !dbg !1675
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_add(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !1676 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1678, metadata !DIExpression()), !dbg !1680
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1679, metadata !DIExpression()), !dbg !1681
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1682
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !1683
  %1 = load i64, ptr %i.addr, align 8, !dbg !1684
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1685
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !1686
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; addq $1,$0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter1) #15, !dbg !1687, !srcloc !1688
  ret void, !dbg !1689
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_inc_return(ptr noundef %v) #6 align 16 !dbg !1690 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1692, metadata !DIExpression()), !dbg !1693
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1694
  %call = call i32 @raw_atomic_add_return(i32 noundef 1, ptr noundef %0) #17, !dbg !1695
  ret i32 %call, !dbg !1696
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !1697 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1701, metadata !DIExpression()), !dbg !1703
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1702, metadata !DIExpression()), !dbg !1704
  %0 = load i32, ptr %i.addr, align 4, !dbg !1705
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1706
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #17, !dbg !1707
  ret i32 %call, !dbg !1708
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !1709 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1712, metadata !DIExpression()), !dbg !1716
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1713, metadata !DIExpression()), !dbg !1717
  %0 = load i32, ptr %i.addr, align 4, !dbg !1718
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !1719
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1714, metadata !DIExpression()), !dbg !1719
  %1 = load i32, ptr %i.addr, align 4, !dbg !1719
  store i32 %1, ptr %__ret, align 4, !dbg !1719
  %2 = load i32, ptr %__ret, align 4, !dbg !1719
  %3 = load ptr, ptr %v.addr, align 8, !dbg !1719
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !1719
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #15, !dbg !1719, !srcloc !1720
  store i32 %4, ptr %__ret, align 4, !dbg !1719
  %5 = load i32, ptr %__ret, align 4, !dbg !1719
  store i32 %5, ptr %tmp, align 4, !dbg !1719
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !1721
  %6 = load i32, ptr %tmp, align 4, !dbg !1719
  %add = add i32 %0, %6, !dbg !1722
  ret i32 %add, !dbg !1723
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1724 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_ref_put_many(ptr noundef %ref, i64 noundef %nr) #7 align 16 !dbg !1727 {
entry:
  %ref.addr = alloca ptr, align 8
  %nr.addr = alloca i64, align 8
  %percpu_count = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i64, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !1731, metadata !DIExpression()), !dbg !1745
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1732, metadata !DIExpression()), !dbg !1746
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_count) #15, !dbg !1747
  call void @llvm.dbg.declare(metadata ptr %percpu_count, metadata !1733, metadata !DIExpression()), !dbg !1748
  call void @rcu_read_lock() #17, !dbg !1749
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !1750
  %call = call zeroext i1 @__ref_is_percpu(ptr noundef %0, ptr noundef %percpu_count) #17, !dbg !1751
  br i1 %call, label %if.then, label %if.else23, !dbg !1752

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1753

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !1754

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1755
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1734, metadata !DIExpression()), !dbg !1755
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1755
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !1755
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1754
  br label %do.cond, !dbg !1755

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1755

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !1754

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #15, !dbg !1756
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !1738, metadata !DIExpression()), !dbg !1756
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1756
  %sub = sub i64 0, %2, !dbg !1756
  %3 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !1756
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !1756

land.lhs.true:                                    ; preds = %do.body2
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1756
  %sub3 = sub i64 0, %4, !dbg !1756
  %cmp = icmp eq i64 %sub3, 1, !dbg !1756
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !1756

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i64, ptr %nr.addr, align 8, !dbg !1756
  %sub4 = sub i64 0, %5, !dbg !1756
  %cmp5 = icmp eq i64 %sub4, -1, !dbg !1756
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !1756

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load i64, ptr %nr.addr, align 8, !dbg !1756
  %sub6 = sub i64 0, %6, !dbg !1756
  %conv = trunc i64 %sub6 to i32, !dbg !1756
  br label %cond.end, !dbg !1756

cond.false:                                       ; preds = %lor.lhs.false, %do.body2
  br label %cond.end, !dbg !1756

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ], !dbg !1756
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !1756
  %7 = load i32, ptr %pao_ID__, align 4, !dbg !1757
  %cmp7 = icmp eq i32 %7, 1, !dbg !1757
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !1756

if.then9:                                         ; preds = %cond.end
  %8 = load ptr, ptr %percpu_count, align 8, !dbg !1758
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %8, ptr elementtype(i64) %8) #15, !dbg !1758, !srcloc !1760
  br label %if.end18, !dbg !1757

if.else:                                          ; preds = %cond.end
  %9 = load i32, ptr %pao_ID__, align 4, !dbg !1761
  %cmp10 = icmp eq i32 %9, -1, !dbg !1761
  br i1 %cmp10, label %if.then12, label %if.else13, !dbg !1757

if.then12:                                        ; preds = %if.else
  %10 = load ptr, ptr %percpu_count, align 8, !dbg !1762
  call void asm sideeffect "decq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %10, ptr elementtype(i64) %10) #15, !dbg !1762, !srcloc !1764
  br label %if.end, !dbg !1761

if.else13:                                        ; preds = %if.else
  br label %do.body14, !dbg !1761

do.body14:                                        ; preds = %if.else13
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #15, !dbg !1765
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1741, metadata !DIExpression()), !dbg !1765
  %11 = load i64, ptr %nr.addr, align 8, !dbg !1765
  %sub15 = sub i64 0, %11, !dbg !1765
  store i64 %sub15, ptr %pto_val__, align 8, !dbg !1765
  %12 = load ptr, ptr %percpu_count, align 8, !dbg !1765
  %13 = load i64, ptr %pto_val__, align 8, !dbg !1765
  call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %12, i64 %13, ptr elementtype(i64) %12) #15, !dbg !1765, !srcloc !1766
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #15, !dbg !1761
  br label %do.cond16, !dbg !1765

do.cond16:                                        ; preds = %do.body14
  br label %do.end17, !dbg !1765

do.end17:                                         ; preds = %do.cond16
  br label %if.end

if.end:                                           ; preds = %do.end17, %if.then12
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #15, !dbg !1754
  br label %do.cond19, !dbg !1756

do.cond19:                                        ; preds = %if.end18
  br label %do.end20, !dbg !1756

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !1754

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !1754

do.end22:                                         ; preds = %do.cond21
  br label %if.end30, !dbg !1754

if.else23:                                        ; preds = %entry
  %14 = load i64, ptr %nr.addr, align 8, !dbg !1767
  %15 = load ptr, ptr %ref.addr, align 8, !dbg !1767
  %data = getelementptr inbounds %struct.percpu_ref, ptr %15, i32 0, i32 1, !dbg !1767
  %16 = load ptr, ptr %data, align 8, !dbg !1767
  %count = getelementptr inbounds %struct.percpu_ref_data, ptr %16, i32 0, i32 0, !dbg !1767
  %call24 = call zeroext i1 @atomic_long_sub_and_test(i64 noundef %14, ptr noundef %count) #17, !dbg !1767
  %lnot = xor i1 %call24, true, !dbg !1767
  %lnot25 = xor i1 %lnot, true, !dbg !1767
  %lnot.ext = zext i1 %lnot25 to i32, !dbg !1767
  %conv26 = sext i32 %lnot.ext to i64, !dbg !1767
  %expval = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !1767
  %tobool = icmp ne i64 %expval, 0, !dbg !1767
  br i1 %tobool, label %if.then27, label %if.end29, !dbg !1769

if.then27:                                        ; preds = %if.else23
  %17 = load ptr, ptr %ref.addr, align 8, !dbg !1770
  %data28 = getelementptr inbounds %struct.percpu_ref, ptr %17, i32 0, i32 1, !dbg !1771
  %18 = load ptr, ptr %data28, align 8, !dbg !1771
  %release = getelementptr inbounds %struct.percpu_ref_data, ptr %18, i32 0, i32 1, !dbg !1772
  %19 = load ptr, ptr %release, align 8, !dbg !1772
  %20 = load ptr, ptr %ref.addr, align 8, !dbg !1773
  call void %19(ptr noundef %20) #17, !dbg !1770
  br label %if.end29, !dbg !1770

if.end29:                                         ; preds = %if.then27, %if.else23
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %do.end22
  call void @rcu_read_unlock() #17, !dbg !1774
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_count) #15, !dbg !1775
  ret void, !dbg !1775
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #6 align 16 !dbg !1776 {
entry:
  call void @__rcu_read_lock() #17, !dbg !1777
  br label %do.body, !dbg !1778

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1779

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !1781

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !1782

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !1784
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_long_sub_and_test(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !1785 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1789, metadata !DIExpression()), !dbg !1791
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1790, metadata !DIExpression()), !dbg !1792
  br label %do.body, !dbg !1793

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1794

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1796
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #17, !dbg !1797
  %1 = load i64, ptr %i.addr, align 8, !dbg !1798
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1799
  %call = call zeroext i1 @raw_atomic_long_sub_and_test(i64 noundef %1, ptr noundef %2) #17, !dbg !1800
  ret i1 %call, !dbg !1801
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #7 align 16 !dbg !1802 {
entry:
  br label %do.body, !dbg !1803

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1804

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #17, !dbg !1806
  br label %do.body1, !dbg !1807

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !1808

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !1810
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1811 dso_local void @__rcu_read_lock() #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_long_sub_and_test(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !1812 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1814, metadata !DIExpression()), !dbg !1816
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1815, metadata !DIExpression()), !dbg !1817
  %0 = load i64, ptr %i.addr, align 8, !dbg !1818
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1819
  %call = call zeroext i1 @raw_atomic64_sub_and_test(i64 noundef %0, ptr noundef %1) #17, !dbg !1820
  ret i1 %call, !dbg !1821
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_sub_and_test(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !1822 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1826, metadata !DIExpression()), !dbg !1828
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1827, metadata !DIExpression()), !dbg !1829
  %0 = load i64, ptr %i.addr, align 8, !dbg !1830
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1831
  %call = call zeroext i1 @arch_atomic64_sub_and_test(i64 noundef %0, ptr noundef %1) #17, !dbg !1832
  ret i1 %call, !dbg !1833
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_sub_and_test(i64 noundef %i, ptr noundef %v) #6 align 16 !dbg !1834 {
entry:
  %i.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1836, metadata !DIExpression()), !dbg !1840
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1837, metadata !DIExpression()), !dbg !1841
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !1842
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1838, metadata !DIExpression()), !dbg !1842
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1842
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !1842
  %1 = load i64, ptr %i.addr, align 8, !dbg !1842
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; subq $2, $0\0A\09/* output condition code e*/\0A", "=*m,={@cce},er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, i64 %1, ptr elementtype(i64) %counter) #15, !dbg !1842, !srcloc !1843
  %3 = icmp ult i8 %2, 2, !dbg !1842
  call void @llvm.assume(i1 %3), !dbg !1842
  store i8 %2, ptr %c, align 1, !dbg !1842
  %4 = load i8, ptr %c, align 1, !dbg !1842, !range !721, !noundef !722
  %tobool = trunc i8 %4 to i1, !dbg !1842
  %frombool = zext i1 %tobool to i8, !dbg !1842
  store i8 %frombool, ptr %tmp, align 1, !dbg !1842
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !1844
  %5 = load i8, ptr %tmp, align 1, !dbg !1842, !range !721, !noundef !722
  %tobool1 = trunc i8 %5 to i1, !dbg !1842
  ret i1 %tobool1, !dbg !1845
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1846 dso_local void @__rcu_read_unlock() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_ref_get_many(ptr noundef %ref, i64 noundef %nr) #7 align 16 !dbg !1847 {
entry:
  %ref.addr = alloca ptr, align 8
  %nr.addr = alloca i64, align 8
  %percpu_count = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i64, align 8
  store ptr %ref, ptr %ref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ref.addr, metadata !1849, metadata !DIExpression()), !dbg !1862
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1850, metadata !DIExpression()), !dbg !1863
  call void @llvm.lifetime.start.p0(i64 8, ptr %percpu_count) #15, !dbg !1864
  call void @llvm.dbg.declare(metadata ptr %percpu_count, metadata !1851, metadata !DIExpression()), !dbg !1865
  call void @rcu_read_lock() #17, !dbg !1866
  %0 = load ptr, ptr %ref.addr, align 8, !dbg !1867
  %call = call zeroext i1 @__ref_is_percpu(ptr noundef %0, ptr noundef %percpu_count) #17, !dbg !1868
  br i1 %call, label %if.then, label %if.else19, !dbg !1869

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1870

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !1871

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1872
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1852, metadata !DIExpression()), !dbg !1872
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1872
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !1872
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !1871
  br label %do.cond, !dbg !1872

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1872

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !1871

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #15, !dbg !1873
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !1856, metadata !DIExpression()), !dbg !1873
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1873
  %3 = call i1 @llvm.is.constant.i64(i64 %2), !dbg !1873
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !1873

land.lhs.true:                                    ; preds = %do.body2
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1873
  %cmp = icmp eq i64 %4, 1, !dbg !1873
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !1873

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i64, ptr %nr.addr, align 8, !dbg !1873
  %cmp3 = icmp eq i64 %5, -1, !dbg !1873
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !1873

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %6 = load i64, ptr %nr.addr, align 8, !dbg !1873
  %conv = trunc i64 %6 to i32, !dbg !1873
  br label %cond.end, !dbg !1873

cond.false:                                       ; preds = %lor.lhs.false, %do.body2
  br label %cond.end, !dbg !1873

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ], !dbg !1873
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !1873
  %7 = load i32, ptr %pao_ID__, align 4, !dbg !1874
  %cmp4 = icmp eq i32 %7, 1, !dbg !1874
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !1873

if.then6:                                         ; preds = %cond.end
  %8 = load ptr, ptr %percpu_count, align 8, !dbg !1875
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %8, ptr elementtype(i64) %8) #15, !dbg !1875, !srcloc !1877
  br label %if.end14, !dbg !1874

if.else:                                          ; preds = %cond.end
  %9 = load i32, ptr %pao_ID__, align 4, !dbg !1878
  %cmp7 = icmp eq i32 %9, -1, !dbg !1878
  br i1 %cmp7, label %if.then9, label %if.else10, !dbg !1874

if.then9:                                         ; preds = %if.else
  %10 = load ptr, ptr %percpu_count, align 8, !dbg !1879
  call void asm sideeffect "decq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %10, ptr elementtype(i64) %10) #15, !dbg !1879, !srcloc !1881
  br label %if.end, !dbg !1878

if.else10:                                        ; preds = %if.else
  br label %do.body11, !dbg !1878

do.body11:                                        ; preds = %if.else10
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #15, !dbg !1882
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1858, metadata !DIExpression()), !dbg !1882
  %11 = load i64, ptr %nr.addr, align 8, !dbg !1882
  store i64 %11, ptr %pto_val__, align 8, !dbg !1882
  %12 = load ptr, ptr %percpu_count, align 8, !dbg !1882
  %13 = load i64, ptr %pto_val__, align 8, !dbg !1882
  call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %12, i64 %13, ptr elementtype(i64) %12) #15, !dbg !1882, !srcloc !1883
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #15, !dbg !1878
  br label %do.cond12, !dbg !1882

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1882

do.end13:                                         ; preds = %do.cond12
  br label %if.end

if.end:                                           ; preds = %do.end13, %if.then9
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #15, !dbg !1871
  br label %do.cond15, !dbg !1873

do.cond15:                                        ; preds = %if.end14
  br label %do.end16, !dbg !1873

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !1871

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !1871

do.end18:                                         ; preds = %do.cond17
  br label %if.end20, !dbg !1871

if.else19:                                        ; preds = %entry
  %14 = load i64, ptr %nr.addr, align 8, !dbg !1884
  %15 = load ptr, ptr %ref.addr, align 8, !dbg !1885
  %data = getelementptr inbounds %struct.percpu_ref, ptr %15, i32 0, i32 1, !dbg !1886
  %16 = load ptr, ptr %data, align 8, !dbg !1886
  %count = getelementptr inbounds %struct.percpu_ref_data, ptr %16, i32 0, i32 0, !dbg !1887
  call void @atomic_long_add(i64 noundef %14, ptr noundef %count) #17, !dbg !1888
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %do.end18
  call void @rcu_read_unlock() #17, !dbg !1889
  call void @llvm.lifetime.end.p0(i64 8, ptr %percpu_count) #15, !dbg !1890
  ret void, !dbg !1890
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }
attributes #20 = { cold noredzone }
attributes #21 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!279, !280, !281, !282, !283, !284, !285, !286}
!llvm.ident = !{!287}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_ref_init279", scope: !2, file: !3, line: 106, type: !40, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.percpu-refcount.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/percpu-refcount\22 -D KBUILD_BASENAME=\22percpu_refcount\22 -D KBUILD_MODNAME=\22percpu_refcount\22 -D __KBUILD_MODNAME=kmod_percpu_refcount -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/percpu-refcount.ll lib/percpu-refcount.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !33, globals: !106, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/percpu-refcount.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33211f19b17f3786be238d2685c0b184")
!4 = !{!5, !12, !18, !23}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 72, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "PERCPU_REF_INIT_ATOMIC", value: 1)
!10 = !DIEnumerator(name: "PERCPU_REF_INIT_DEAD", value: 2)
!11 = !DIEnumerator(name: "PERCPU_REF_ALLOW_REINIT", value: 4)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 63, baseType: !7, size: 32, elements: !13)
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "__PERCPU_REF_ATOMIC", value: 1)
!15 = !DIEnumerator(name: "__PERCPU_REF_DEAD", value: 2)
!16 = !DIEnumerator(name: "__PERCPU_REF_ATOMIC_DEAD", value: 3)
!17 = !DIEnumerator(name: "__PERCPU_REF_FLAG_BITS", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 10, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "false", value: 0)
!22 = !DIEnumerator(name: "true", value: 1)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !24, line: 364, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!25 = !{!26, !27, !28, !29, !30, !31, !32}
!26 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!27 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!28 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!29 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!30 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!31 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!32 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!33 = !{!34, !39, !40, !41, !42, !49, !50, !53, !88, !7, !97, !98, !99, !101, !104}
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 61, baseType: !36)
!35 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !37, line: 72, baseType: !38)
!37 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !37, line: 16, baseType: !39)
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !35, line: 154, baseType: !7)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !45, line: 22, baseType: !46)
!45 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !47, line: 30, baseType: !48)
!47 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!48 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !6, line: 95, size: 448, elements: !55)
!55 = !{!56, !63, !73, !74, !77, !78, !87}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !54, file: !6, line: 96, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !58, line: 13, baseType: !59)
!58 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !35, line: 181, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 179, size: 64, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !60, file: !35, line: 180, baseType: !44, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !54, file: !6, line: 97, baseType: !64, size: 64, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !6, line: 60, baseType: !66)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !6, line: 105, size: 128, elements: !70)
!70 = !{!71, !72}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !69, file: !6, line: 110, baseType: !39, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !69, file: !6, line: 118, baseType: !53, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !54, file: !6, line: 98, baseType: !64, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !54, file: !6, line: 99, baseType: !75, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !35, line: 35, baseType: !76)
!76 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !54, file: !6, line: 100, baseType: !75, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !54, file: !6, line: 101, baseType: !79, size: 128, align: 64, offset: 256)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !35, line: 232, size: 128, align: 64, elements: !80)
!80 = !{!81, !83}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !79, file: !35, line: 233, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !79, file: !35, line: 234, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !82}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !54, file: !6, line: 102, baseType: !68, size: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !91, line: 19, size: 64, elements: !92)
!91 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !90, file: !91, line: 19, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 1)
!97 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !45, line: 23, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !47, line: 31, baseType: !103)
!103 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!106 = !{!0, !107, !109, !111, !113, !115, !141, !147, !153, !158, !160, !162, !164, !166, !171, !213, !247, !249, !254, !256, !261, !267}
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_ref_exit280", scope: !2, file: !3, line: 148, type: !40, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_ref_switch_to_atomic283", scope: !2, file: !3, line: 318, type: !40, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_ref_switch_to_atomic_sync284", scope: !2, file: !3, line: 333, type: !40, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_ref_switch_to_percpu285", scope: !2, file: !3, line: 364, type: !40, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "__already_done", scope: !117, file: !3, line: 390, type: !75, isLocal: true, isDefinition: true)
!117 = distinct !DISubprogram(name: "percpu_ref_kill_and_confirm", scope: !3, file: !3, line: 383, type: !118, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !120)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !68, !64}
!120 = !{!121, !122, !123, !124, !128, !129, !131, !134, !135, !137}
!121 = !DILocalVariable(name: "ref", arg: 1, scope: !117, file: !3, line: 383, type: !68)
!122 = !DILocalVariable(name: "confirm_kill", arg: 2, scope: !117, file: !3, line: 384, type: !64)
!123 = !DILocalVariable(name: "flags", scope: !117, file: !3, line: 386, type: !39)
!124 = !DILocalVariable(name: "__dummy", scope: !125, file: !3, line: 388, type: !39)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 388, column: 2)
!126 = distinct !DILexicalBlock(scope: !127, file: !3, line: 388, column: 2)
!127 = distinct !DILexicalBlock(scope: !117, file: !3, line: 388, column: 2)
!128 = !DILocalVariable(name: "__dummy2", scope: !125, file: !3, line: 388, type: !39)
!129 = !DILocalVariable(name: "__ret_do_once", scope: !130, file: !3, line: 390, type: !75)
!130 = distinct !DILexicalBlock(scope: !117, file: !3, line: 390, column: 2)
!131 = !DILocalVariable(name: "__ret_cond", scope: !132, file: !3, line: 390, type: !75)
!132 = distinct !DILexicalBlock(scope: !133, file: !3, line: 390, column: 2)
!133 = distinct !DILexicalBlock(scope: !130, file: !3, line: 390, column: 2)
!134 = !DILocalVariable(name: "__ret_once", scope: !132, file: !3, line: 390, type: !75)
!135 = !DILocalVariable(name: "__ret_warn_on", scope: !136, file: !3, line: 390, type: !98)
!136 = distinct !DILexicalBlock(scope: !133, file: !3, line: 390, column: 2)
!137 = !DILocalVariable(name: "__flags", scope: !138, file: !3, line: 390, type: !98)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 390, column: 2)
!139 = distinct !DILexicalBlock(scope: !140, file: !3, line: 390, column: 2)
!140 = distinct !DILexicalBlock(scope: !136, file: !3, line: 390, column: 2)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !3, line: 390, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 264, elements: !145)
!144 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!145 = !{!146}
!146 = !DISubrange(count: 33)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !3, line: 390, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 224, elements: !151)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!151 = !{!152}
!152 = !DISubrange(count: 28)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !3, line: 390, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 176, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 22)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_ref_kill_and_confirm286", scope: !2, file: !3, line: 400, type: !40, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_ref_is_zero287", scope: !2, file: !3, line: 428, type: !40, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_ref_reinit288", scope: !2, file: !3, line: 447, type: !40, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_ref_resurrect289", scope: !2, file: !3, line: 479, type: !40, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(scope: null, file: !24, line: 480, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 168, elements: !169)
!169 = !{!170}
!170 = !DISubrange(count: 21)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "percpu_ref_switch_lock", scope: !2, file: !3, line: 39, type: !173, isLocal: true, isDefinition: true)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !174, line: 29, baseType: !175)
!174 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !174, line: 17, size: 32, elements: !176)
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !174, line: 18, baseType: !178, size: 32)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !175, file: !174, line: 18, size: 32, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !178, file: !174, line: 19, baseType: !181, size: 32)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !182, line: 14, size: 32, elements: !183)
!182 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !181, file: !182, line: 15, baseType: !185, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !186, line: 44, baseType: !187)
!186 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !186, line: 14, size: 32, elements: !188)
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, scope: !187, file: !186, line: 15, baseType: !190, size: 32)
!190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !187, file: !186, line: 15, size: 32, elements: !191)
!191 = !{!192, !197, !205}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !190, file: !186, line: 16, baseType: !193, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !35, line: 174, baseType: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 172, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !194, file: !35, line: 173, baseType: !98, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !186, line: 24, baseType: !198, size: 16)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !190, file: !186, line: 24, size: 16, elements: !199)
!199 = !{!200, !204}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !198, file: !186, line: 25, baseType: !201, size: 8)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !45, line: 17, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !47, line: 21, baseType: !203)
!203 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !198, file: !186, line: 26, baseType: !201, size: 8, offset: 8)
!205 = !DIDerivedType(tag: DW_TAG_member, scope: !190, file: !186, line: 28, baseType: !206, size: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !190, file: !186, line: 28, size: 32, elements: !207)
!207 = !{!208, !212}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !206, file: !186, line: 29, baseType: !209, size: 16)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !45, line: 19, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !47, line: 24, baseType: !211)
!211 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !206, file: !186, line: 30, baseType: !209, size: 16, offset: 16)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "underflows", scope: !215, file: !3, line: 173, type: !193, isLocal: true, isDefinition: true)
!215 = distinct !DISubprogram(name: "percpu_ref_switch_to_atomic_rcu", scope: !3, file: !3, line: 167, type: !85, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !216)
!216 = !{!217, !218, !219, !221, !222, !223, !224, !225, !232, !234, !237, !240, !241, !243}
!217 = !DILocalVariable(name: "rcu", arg: 1, scope: !215, file: !3, line: 167, type: !82)
!218 = !DILocalVariable(name: "data", scope: !215, file: !3, line: 169, type: !53)
!219 = !DILocalVariable(name: "__mptr", scope: !220, file: !3, line: 169, type: !40)
!220 = distinct !DILexicalBlock(scope: !215, file: !3, line: 169, column: 33)
!221 = !DILocalVariable(name: "ref", scope: !215, file: !3, line: 171, type: !68)
!222 = !DILocalVariable(name: "percpu_count", scope: !215, file: !3, line: 172, type: !49)
!223 = !DILocalVariable(name: "count", scope: !215, file: !3, line: 174, type: !39)
!224 = !DILocalVariable(name: "cpu", scope: !215, file: !3, line: 175, type: !98)
!225 = !DILocalVariable(name: "__vpp_verify", scope: !226, file: !3, line: 178, type: !230)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 178, column: 13)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 178, column: 13)
!228 = distinct !DILexicalBlock(scope: !229, file: !3, line: 177, column: 2)
!229 = distinct !DILexicalBlock(scope: !215, file: !3, line: 177, column: 2)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!232 = !DILocalVariable(name: "__ptr", scope: !233, file: !3, line: 178, type: !39)
!233 = distinct !DILexicalBlock(scope: !227, file: !3, line: 178, column: 13)
!234 = !DILocalVariable(name: "__ret_do_once", scope: !235, file: !3, line: 197, type: !75)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 197, column: 6)
!236 = distinct !DILexicalBlock(scope: !215, file: !3, line: 197, column: 6)
!237 = !DILocalVariable(name: "__ret_cond", scope: !238, file: !3, line: 197, type: !75)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 197, column: 6)
!239 = distinct !DILexicalBlock(scope: !235, file: !3, line: 197, column: 6)
!240 = !DILocalVariable(name: "__ret_once", scope: !238, file: !3, line: 197, type: !75)
!241 = !DILocalVariable(name: "__ret_warn_on", scope: !242, file: !3, line: 197, type: !98)
!242 = distinct !DILexicalBlock(scope: !239, file: !3, line: 197, column: 6)
!243 = !DILocalVariable(name: "__flags", scope: !244, file: !3, line: 197, type: !98)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 197, column: 6)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 197, column: 6)
!246 = distinct !DILexicalBlock(scope: !242, file: !3, line: 197, column: 6)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "__already_done", scope: !215, file: !3, line: 197, type: !75, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !251, isLocal: true, isDefinition: true)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 432, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 54)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !3, line: 201, type: !143, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !3, line: 201, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 256, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 32)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !263, file: !264, line: 112, type: !40, isLocal: true, isDefinition: true)
!263 = distinct !DISubprogram(name: "might_resched", scope: !264, file: !264, line: 110, type: !265, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!264 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!265 = !DISubroutineType(types: !266)
!266 = !{null}
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "percpu_ref_switch_waitq", scope: !2, file: !3, line: 40, type: !269, isLocal: true, isDefinition: true)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !270, line: 37, size: 192, elements: !271)
!270 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!271 = !{!272, !273}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !269, file: !270, line: 38, baseType: !173, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !269, file: !270, line: 39, baseType: !274, size: 128, offset: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !35, line: 190, size: 128, elements: !275)
!275 = !{!276, !278}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !35, line: 191, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !274, file: !35, line: 191, baseType: !277, size: 64, offset: 64)
!279 = !{i32 7, !"Dwarf Version", i32 5}
!280 = !{i32 2, !"Debug Info Version", i32 3}
!281 = !{i32 1, !"wchar_size", i32 2}
!282 = !{i32 8, !"cf-protection-branch", i32 1}
!283 = !{i32 4, !"function_return_thunk_extern", i32 1}
!284 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!285 = !{i32 1, !"Code Model", i32 2}
!286 = !{i32 1, !"override-stack-alignment", i32 8}
!287 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!288 = distinct !DISubprogram(name: "percpu_ref_init", scope: !3, file: !3, line: 63, type: !289, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !291)
!289 = !DISubroutineType(types: !290)
!290 = !{!98, !68, !64, !7, !41}
!291 = !{!292, !293, !294, !295, !296, !297, !298}
!292 = !DILocalVariable(name: "ref", arg: 1, scope: !288, file: !3, line: 63, type: !68)
!293 = !DILocalVariable(name: "release", arg: 2, scope: !288, file: !3, line: 63, type: !64)
!294 = !DILocalVariable(name: "flags", arg: 3, scope: !288, file: !3, line: 64, type: !7)
!295 = !DILocalVariable(name: "gfp", arg: 4, scope: !288, file: !3, line: 64, type: !41)
!296 = !DILocalVariable(name: "align", scope: !288, file: !3, line: 66, type: !34)
!297 = !DILocalVariable(name: "start_count", scope: !288, file: !3, line: 68, type: !39)
!298 = !DILocalVariable(name: "data", scope: !288, file: !3, line: 69, type: !53)
!299 = !DILocation(line: 63, column: 40, scope: !288)
!300 = !DILocation(line: 63, column: 64, scope: !288)
!301 = !DILocation(line: 64, column: 20, scope: !288)
!302 = !DILocation(line: 64, column: 33, scope: !288)
!303 = !DILocation(line: 66, column: 2, scope: !288)
!304 = !DILocation(line: 66, column: 9, scope: !288)
!305 = !DILocation(line: 68, column: 2, scope: !288)
!306 = !DILocation(line: 68, column: 16, scope: !288)
!307 = !DILocation(line: 69, column: 2, scope: !288)
!308 = !DILocation(line: 69, column: 26, scope: !288)
!309 = !DILocation(line: 72, column: 45, scope: !288)
!310 = !DILocation(line: 72, column: 52, scope: !288)
!311 = !DILocation(line: 72, column: 3, scope: !288)
!312 = !DILocation(line: 71, column: 26, scope: !288)
!313 = !DILocation(line: 71, column: 2, scope: !288)
!314 = !DILocation(line: 71, column: 7, scope: !288)
!315 = !DILocation(line: 71, column: 24, scope: !288)
!316 = !DILocation(line: 73, column: 7, scope: !317)
!317 = distinct !DILexicalBlock(scope: !288, file: !3, line: 73, column: 6)
!318 = !DILocation(line: 73, column: 12, scope: !317)
!319 = !DILocation(line: 73, column: 6, scope: !288)
!320 = !DILocation(line: 74, column: 3, scope: !317)
!321 = !DILocation(line: 76, column: 37, scope: !288)
!322 = !DILocation(line: 76, column: 9, scope: !288)
!323 = !DILocation(line: 76, column: 7, scope: !288)
!324 = !DILocation(line: 77, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !288, file: !3, line: 77, column: 6)
!326 = !DILocation(line: 77, column: 6, scope: !288)
!327 = !DILocation(line: 78, column: 32, scope: !328)
!328 = distinct !DILexicalBlock(scope: !325, file: !3, line: 77, column: 13)
!329 = !DILocation(line: 78, column: 37, scope: !328)
!330 = !DILocation(line: 78, column: 15, scope: !328)
!331 = !DILocation(line: 78, column: 3, scope: !328)
!332 = !DILocation(line: 79, column: 3, scope: !328)
!333 = !DILocation(line: 79, column: 8, scope: !328)
!334 = !DILocation(line: 79, column: 25, scope: !328)
!335 = !DILocation(line: 80, column: 3, scope: !328)
!336 = !DILocation(line: 83, column: 23, scope: !288)
!337 = !DILocation(line: 83, column: 29, scope: !288)
!338 = !DILocation(line: 83, column: 2, scope: !288)
!339 = !DILocation(line: 83, column: 8, scope: !288)
!340 = !DILocation(line: 83, column: 21, scope: !288)
!341 = !DILocation(line: 84, column: 23, scope: !288)
!342 = !DILocation(line: 84, column: 29, scope: !288)
!343 = !DILocation(line: 84, column: 2, scope: !288)
!344 = !DILocation(line: 84, column: 8, scope: !288)
!345 = !DILocation(line: 84, column: 21, scope: !288)
!346 = !DILocation(line: 86, column: 6, scope: !347)
!347 = distinct !DILexicalBlock(scope: !288, file: !3, line: 86, column: 6)
!348 = !DILocation(line: 86, column: 12, scope: !347)
!349 = !DILocation(line: 86, column: 6, scope: !288)
!350 = !DILocation(line: 87, column: 3, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !3, line: 86, column: 63)
!352 = !DILocation(line: 87, column: 8, scope: !351)
!353 = !DILocation(line: 87, column: 25, scope: !351)
!354 = !DILocation(line: 88, column: 3, scope: !351)
!355 = !DILocation(line: 88, column: 9, scope: !351)
!356 = !DILocation(line: 88, column: 22, scope: !351)
!357 = !DILocation(line: 89, column: 2, scope: !351)
!358 = !DILocation(line: 90, column: 15, scope: !359)
!359 = distinct !DILexicalBlock(scope: !347, file: !3, line: 89, column: 9)
!360 = !DILocation(line: 93, column: 6, scope: !361)
!361 = distinct !DILexicalBlock(scope: !288, file: !3, line: 93, column: 6)
!362 = !DILocation(line: 93, column: 12, scope: !361)
!363 = !DILocation(line: 93, column: 6, scope: !288)
!364 = !DILocation(line: 94, column: 3, scope: !361)
!365 = !DILocation(line: 94, column: 8, scope: !361)
!366 = !DILocation(line: 94, column: 25, scope: !361)
!367 = !DILocation(line: 96, column: 14, scope: !361)
!368 = !DILocation(line: 98, column: 19, scope: !288)
!369 = !DILocation(line: 98, column: 25, scope: !288)
!370 = !DILocation(line: 98, column: 32, scope: !288)
!371 = !DILocation(line: 98, column: 2, scope: !288)
!372 = !DILocation(line: 100, column: 18, scope: !288)
!373 = !DILocation(line: 100, column: 2, scope: !288)
!374 = !DILocation(line: 100, column: 8, scope: !288)
!375 = !DILocation(line: 100, column: 16, scope: !288)
!376 = !DILocation(line: 101, column: 2, scope: !288)
!377 = !DILocation(line: 101, column: 8, scope: !288)
!378 = !DILocation(line: 101, column: 23, scope: !288)
!379 = !DILocation(line: 102, column: 14, scope: !288)
!380 = !DILocation(line: 102, column: 2, scope: !288)
!381 = !DILocation(line: 102, column: 8, scope: !288)
!382 = !DILocation(line: 102, column: 12, scope: !288)
!383 = !DILocation(line: 103, column: 14, scope: !288)
!384 = !DILocation(line: 103, column: 2, scope: !288)
!385 = !DILocation(line: 103, column: 7, scope: !288)
!386 = !DILocation(line: 103, column: 12, scope: !288)
!387 = !DILocation(line: 104, column: 2, scope: !288)
!388 = !DILocation(line: 105, column: 1, scope: !288)
!389 = !DISubprogram(name: "__alloc_percpu_gfp", scope: !390, file: !390, line: 132, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!390 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!391 = !DISubroutineType(types: !392)
!392 = !{!40, !34, !34, !41}
!393 = distinct !DISubprogram(name: "kzalloc", scope: !24, file: !24, line: 719, type: !394, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !396)
!394 = !DISubroutineType(types: !395)
!395 = !{!40, !34, !41}
!396 = !{!397, !398}
!397 = !DILocalVariable(name: "size", arg: 1, scope: !393, file: !24, line: 719, type: !34)
!398 = !DILocalVariable(name: "flags", arg: 2, scope: !393, file: !24, line: 719, type: !41)
!399 = !DILocation(line: 719, column: 52, scope: !393)
!400 = !DILocation(line: 719, column: 64, scope: !393)
!401 = !DILocation(line: 721, column: 17, scope: !393)
!402 = !DILocation(line: 721, column: 23, scope: !393)
!403 = !DILocation(line: 721, column: 29, scope: !393)
!404 = !DILocation(line: 721, column: 9, scope: !393)
!405 = !DILocation(line: 721, column: 2, scope: !393)
!406 = !DISubprogram(name: "free_percpu", scope: !390, file: !390, line: 134, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !40}
!409 = distinct !DISubprogram(name: "atomic_long_set", scope: !410, file: !410, line: 3193, type: !411, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !414)
!410 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!411 = !DISubroutineType(types: !412)
!412 = !{null, !413, !97}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!414 = !{!415, !416}
!415 = !DILocalVariable(name: "v", arg: 1, scope: !409, file: !410, line: 3193, type: !413)
!416 = !DILocalVariable(name: "i", arg: 2, scope: !409, file: !410, line: 3193, type: !97)
!417 = !DILocation(line: 3193, column: 32, scope: !409)
!418 = !DILocation(line: 3193, column: 40, scope: !409)
!419 = !DILocation(line: 3195, column: 26, scope: !409)
!420 = !DILocation(line: 3195, column: 2, scope: !409)
!421 = !DILocation(line: 3196, column: 22, scope: !409)
!422 = !DILocation(line: 3196, column: 25, scope: !409)
!423 = !DILocation(line: 3196, column: 2, scope: !409)
!424 = !DILocation(line: 3197, column: 1, scope: !409)
!425 = distinct !DISubprogram(name: "percpu_ref_exit", scope: !3, file: !3, line: 130, type: !66, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !426)
!426 = !{!427, !428, !429, !430, !434}
!427 = !DILocalVariable(name: "ref", arg: 1, scope: !425, file: !3, line: 130, type: !68)
!428 = !DILocalVariable(name: "data", scope: !425, file: !3, line: 132, type: !53)
!429 = !DILocalVariable(name: "flags", scope: !425, file: !3, line: 133, type: !39)
!430 = !DILocalVariable(name: "__dummy", scope: !431, file: !3, line: 140, type: !39)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 140, column: 2)
!432 = distinct !DILexicalBlock(scope: !433, file: !3, line: 140, column: 2)
!433 = distinct !DILexicalBlock(scope: !425, file: !3, line: 140, column: 2)
!434 = !DILocalVariable(name: "__dummy2", scope: !431, file: !3, line: 140, type: !39)
!435 = !DILocation(line: 130, column: 41, scope: !425)
!436 = !DILocation(line: 132, column: 2, scope: !425)
!437 = !DILocation(line: 132, column: 26, scope: !425)
!438 = !DILocation(line: 132, column: 33, scope: !425)
!439 = !DILocation(line: 132, column: 38, scope: !425)
!440 = !DILocation(line: 133, column: 2, scope: !425)
!441 = !DILocation(line: 133, column: 16, scope: !425)
!442 = !DILocation(line: 135, column: 20, scope: !425)
!443 = !DILocation(line: 135, column: 2, scope: !425)
!444 = !DILocation(line: 137, column: 7, scope: !445)
!445 = distinct !DILexicalBlock(scope: !425, file: !3, line: 137, column: 6)
!446 = !DILocation(line: 137, column: 6, scope: !425)
!447 = !DILocation(line: 138, column: 3, scope: !445)
!448 = !DILocation(line: 140, column: 2, scope: !425)
!449 = !DILocation(line: 140, column: 2, scope: !433)
!450 = !DILocation(line: 140, column: 2, scope: !431)
!451 = !DILocation(line: 140, column: 2, scope: !432)
!452 = !DILocation(line: 141, column: 45, scope: !425)
!453 = !DILocation(line: 141, column: 50, scope: !425)
!454 = !DILocation(line: 141, column: 56, scope: !425)
!455 = !DILocation(line: 141, column: 27, scope: !425)
!456 = !DILocation(line: 141, column: 63, scope: !425)
!457 = !DILocation(line: 141, column: 2, scope: !425)
!458 = !DILocation(line: 141, column: 7, scope: !425)
!459 = !DILocation(line: 141, column: 24, scope: !425)
!460 = !DILocation(line: 143, column: 2, scope: !425)
!461 = !DILocation(line: 143, column: 7, scope: !425)
!462 = !DILocation(line: 143, column: 12, scope: !425)
!463 = !DILocation(line: 144, column: 50, scope: !425)
!464 = !DILocation(line: 144, column: 2, scope: !425)
!465 = !DILocation(line: 146, column: 8, scope: !425)
!466 = !DILocation(line: 146, column: 2, scope: !425)
!467 = !DILocation(line: 147, column: 1, scope: !425)
!468 = distinct !DISubprogram(name: "__percpu_ref_exit", scope: !3, file: !3, line: 108, type: !66, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !469)
!469 = !{!470, !471, !472, !476}
!470 = !DILocalVariable(name: "ref", arg: 1, scope: !468, file: !3, line: 108, type: !68)
!471 = !DILocalVariable(name: "percpu_count", scope: !468, file: !3, line: 110, type: !49)
!472 = !DILocalVariable(name: "__ret_warn_on", scope: !473, file: !3, line: 114, type: !98)
!473 = distinct !DILexicalBlock(scope: !474, file: !3, line: 114, column: 3)
!474 = distinct !DILexicalBlock(scope: !475, file: !3, line: 112, column: 20)
!475 = distinct !DILexicalBlock(scope: !468, file: !3, line: 112, column: 6)
!476 = !DILocalVariable(name: "__flags", scope: !477, file: !3, line: 114, type: !98)
!477 = distinct !DILexicalBlock(scope: !478, file: !3, line: 114, column: 3)
!478 = distinct !DILexicalBlock(scope: !473, file: !3, line: 114, column: 3)
!479 = !DILocation(line: 108, column: 50, scope: !468)
!480 = !DILocation(line: 110, column: 2, scope: !468)
!481 = !DILocation(line: 110, column: 26, scope: !468)
!482 = !DILocation(line: 110, column: 58, scope: !468)
!483 = !DILocation(line: 110, column: 41, scope: !468)
!484 = !DILocation(line: 112, column: 6, scope: !475)
!485 = !DILocation(line: 112, column: 6, scope: !468)
!486 = !DILocation(line: 114, column: 3, scope: !473)
!487 = !DILocation(line: 0, scope: !473)
!488 = !DILocation(line: 114, column: 3, scope: !478)
!489 = !DILocation(line: 114, column: 3, scope: !477)
!490 = !DILocation(line: 114, column: 3, scope: !491)
!491 = distinct !DILexicalBlock(scope: !477, file: !3, line: 114, column: 3)
!492 = !DILocation(line: 114, column: 3, scope: !493)
!493 = distinct !DILexicalBlock(scope: !477, file: !3, line: 114, column: 3)
!494 = !{i64 2153909007, i64 2153909036, i64 2153909082, i64 2153909140, i64 2153909194, i64 2153909248, i64 2153909303, i64 2153909334, i64 2153909642, i64 2153909648, i64 2153909695, i64 2153909718, i64 2153909744}
!495 = !DILocation(line: 114, column: 3, scope: !496)
!496 = distinct !DILexicalBlock(scope: !477, file: !3, line: 114, column: 3)
!497 = !DILocation(line: 114, column: 3, scope: !474)
!498 = !DILocation(line: 115, column: 15, scope: !474)
!499 = !DILocation(line: 115, column: 3, scope: !474)
!500 = !DILocation(line: 116, column: 3, scope: !474)
!501 = !DILocation(line: 116, column: 8, scope: !474)
!502 = !DILocation(line: 116, column: 25, scope: !474)
!503 = !DILocation(line: 117, column: 2, scope: !474)
!504 = !DILocation(line: 118, column: 1, scope: !468)
!505 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !506, file: !506, line: 32, type: !507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!506 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!507 = !DISubroutineType(types: !508)
!508 = !{!39, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !182, line: 23, baseType: !181)
!511 = distinct !DISubprogram(name: "spinlock_check", scope: !512, file: !512, line: 324, type: !513, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !516)
!512 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!513 = !DISubroutineType(types: !514)
!514 = !{!509, !515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!516 = !{!517}
!517 = !DILocalVariable(name: "lock", arg: 1, scope: !511, file: !512, line: 324, type: !515)
!518 = !DILocation(line: 324, column: 67, scope: !511)
!519 = !DILocation(line: 326, column: 10, scope: !511)
!520 = !DILocation(line: 326, column: 16, scope: !511)
!521 = !DILocation(line: 326, column: 2, scope: !511)
!522 = distinct !DISubprogram(name: "atomic_long_read", scope: !410, file: !410, line: 3158, type: !523, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !527)
!523 = !DISubroutineType(types: !524)
!524 = !{!97, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!527 = !{!528}
!528 = !DILocalVariable(name: "v", arg: 1, scope: !522, file: !410, line: 3158, type: !525)
!529 = !DILocation(line: 3158, column: 39, scope: !522)
!530 = !DILocation(line: 3160, column: 25, scope: !522)
!531 = !DILocation(line: 3160, column: 2, scope: !522)
!532 = !DILocation(line: 3161, column: 30, scope: !522)
!533 = !DILocation(line: 3161, column: 9, scope: !522)
!534 = !DILocation(line: 3161, column: 2, scope: !522)
!535 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !512, file: !512, line: 404, type: !536, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !538)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !515, !39}
!538 = !{!539, !540, !541, !544}
!539 = !DILocalVariable(name: "lock", arg: 1, scope: !535, file: !512, line: 404, type: !515)
!540 = !DILocalVariable(name: "flags", arg: 2, scope: !535, file: !512, line: 404, type: !39)
!541 = !DILocalVariable(name: "__dummy", scope: !542, file: !512, line: 406, type: !39)
!542 = distinct !DILexicalBlock(scope: !543, file: !512, line: 406, column: 2)
!543 = distinct !DILexicalBlock(scope: !535, file: !512, line: 406, column: 2)
!544 = !DILocalVariable(name: "__dummy2", scope: !542, file: !512, line: 406, type: !39)
!545 = !DILocation(line: 404, column: 64, scope: !535)
!546 = !DILocation(line: 404, column: 84, scope: !535)
!547 = !DILocation(line: 406, column: 2, scope: !535)
!548 = !DILocation(line: 406, column: 2, scope: !542)
!549 = !DILocation(line: 406, column: 2, scope: !543)
!550 = !DILocation(line: 407, column: 1, scope: !535)
!551 = !DISubprogram(name: "kfree", scope: !24, file: !24, line: 227, type: !552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !230}
!554 = distinct !DISubprogram(name: "percpu_ref_switch_to_atomic", scope: !3, file: !3, line: 306, type: !118, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !555)
!555 = !{!556, !557, !558, !559, !563}
!556 = !DILocalVariable(name: "ref", arg: 1, scope: !554, file: !3, line: 306, type: !68)
!557 = !DILocalVariable(name: "confirm_switch", arg: 2, scope: !554, file: !3, line: 307, type: !64)
!558 = !DILocalVariable(name: "flags", scope: !554, file: !3, line: 309, type: !39)
!559 = !DILocalVariable(name: "__dummy", scope: !560, file: !3, line: 311, type: !39)
!560 = distinct !DILexicalBlock(scope: !561, file: !3, line: 311, column: 2)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 311, column: 2)
!562 = distinct !DILexicalBlock(scope: !554, file: !3, line: 311, column: 2)
!563 = !DILocalVariable(name: "__dummy2", scope: !560, file: !3, line: 311, type: !39)
!564 = !DILocation(line: 306, column: 53, scope: !554)
!565 = !DILocation(line: 307, column: 25, scope: !554)
!566 = !DILocation(line: 309, column: 2, scope: !554)
!567 = !DILocation(line: 309, column: 16, scope: !554)
!568 = !DILocation(line: 311, column: 2, scope: !554)
!569 = !DILocation(line: 311, column: 2, scope: !562)
!570 = !DILocation(line: 311, column: 2, scope: !560)
!571 = !DILocation(line: 311, column: 2, scope: !561)
!572 = !DILocation(line: 313, column: 2, scope: !554)
!573 = !DILocation(line: 313, column: 7, scope: !554)
!574 = !DILocation(line: 313, column: 13, scope: !554)
!575 = !DILocation(line: 313, column: 26, scope: !554)
!576 = !DILocation(line: 314, column: 27, scope: !554)
!577 = !DILocation(line: 314, column: 32, scope: !554)
!578 = !DILocation(line: 314, column: 2, scope: !554)
!579 = !DILocation(line: 316, column: 50, scope: !554)
!580 = !DILocation(line: 316, column: 2, scope: !554)
!581 = !DILocation(line: 317, column: 1, scope: !554)
!582 = distinct !DISubprogram(name: "__percpu_ref_switch_mode", scope: !3, file: !3, line: 265, type: !118, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !583)
!583 = !{!584, !585, !586, !587, !601, !602, !606}
!584 = !DILocalVariable(name: "ref", arg: 1, scope: !582, file: !3, line: 265, type: !68)
!585 = !DILocalVariable(name: "confirm_switch", arg: 2, scope: !582, file: !3, line: 266, type: !64)
!586 = !DILocalVariable(name: "data", scope: !582, file: !3, line: 268, type: !53)
!587 = !DILocalVariable(name: "__wq_entry", scope: !588, file: !3, line: 277, type: !590)
!588 = distinct !DILexicalBlock(scope: !589, file: !3, line: 277, column: 2)
!589 = distinct !DILexicalBlock(scope: !582, file: !3, line: 277, column: 2)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !270, line: 30, size: 320, elements: !591)
!591 = !{!592, !593, !594, !600}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !590, file: !270, line: 31, baseType: !7, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !590, file: !270, line: 32, baseType: !40, size: 64, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !590, file: !270, line: 33, baseType: !595, size: 64, offset: 128)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !270, line: 16, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!98, !599, !7, !98, !40}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !590, file: !270, line: 34, baseType: !274, size: 128, offset: 192)
!601 = !DILocalVariable(name: "__ret", scope: !588, file: !3, line: 277, type: !97)
!602 = !DILocalVariable(name: "__int", scope: !603, file: !3, line: 277, type: !97)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 277, column: 2)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 277, column: 2)
!605 = distinct !DILexicalBlock(scope: !588, file: !3, line: 277, column: 2)
!606 = !DILabel(scope: !588, name: "__out", file: !3, line: 277)
!607 = !DILocation(line: 265, column: 57, scope: !582)
!608 = !DILocation(line: 266, column: 29, scope: !582)
!609 = !DILocation(line: 268, column: 2, scope: !582)
!610 = !DILocation(line: 268, column: 26, scope: !582)
!611 = !DILocation(line: 268, column: 33, scope: !582)
!612 = !DILocation(line: 268, column: 38, scope: !582)
!613 = !DILocation(line: 270, column: 2, scope: !582)
!614 = !DILocation(line: 270, column: 2, scope: !615)
!615 = distinct !DILexicalBlock(scope: !582, file: !3, line: 270, column: 2)
!616 = !DILocation(line: 277, column: 2, scope: !582)
!617 = !DILocation(line: 277, column: 2, scope: !618)
!618 = distinct !DILexicalBlock(scope: !589, file: !3, line: 277, column: 2)
!619 = !DILocation(line: 277, column: 2, scope: !589)
!620 = !DILocation(line: 277, column: 2, scope: !588)
!621 = !DILocation(line: 277, column: 2, scope: !603)
!622 = !DILocation(line: 277, column: 2, scope: !623)
!623 = distinct !DILexicalBlock(scope: !603, file: !3, line: 277, column: 2)
!624 = !DILocation(line: 277, column: 2, scope: !604)
!625 = distinct !{!625, !626, !626, !627}
!626 = !DILocation(line: 277, column: 2, scope: !605)
!627 = !{!"llvm.loop.unroll.disable"}
!628 = !DILocation(line: 280, column: 6, scope: !629)
!629 = distinct !DILexicalBlock(scope: !582, file: !3, line: 280, column: 6)
!630 = !DILocation(line: 280, column: 12, scope: !629)
!631 = !DILocation(line: 280, column: 25, scope: !629)
!632 = !DILocation(line: 280, column: 48, scope: !629)
!633 = !DILocation(line: 280, column: 28, scope: !629)
!634 = !DILocation(line: 280, column: 6, scope: !582)
!635 = !DILocation(line: 281, column: 33, scope: !629)
!636 = !DILocation(line: 281, column: 38, scope: !629)
!637 = !DILocation(line: 281, column: 3, scope: !629)
!638 = !DILocation(line: 283, column: 33, scope: !629)
!639 = !DILocation(line: 283, column: 3, scope: !629)
!640 = !DILocation(line: 284, column: 1, scope: !582)
!641 = distinct !DISubprogram(name: "percpu_ref_switch_to_atomic_sync", scope: !3, file: !3, line: 328, type: !66, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !642)
!642 = !{!643, !644, !647, !648, !652}
!643 = !DILocalVariable(name: "ref", arg: 1, scope: !641, file: !3, line: 328, type: !68)
!644 = !DILocalVariable(name: "__wq_entry", scope: !645, file: !3, line: 331, type: !590)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 331, column: 2)
!646 = distinct !DILexicalBlock(scope: !641, file: !3, line: 331, column: 2)
!647 = !DILocalVariable(name: "__ret", scope: !645, file: !3, line: 331, type: !97)
!648 = !DILocalVariable(name: "__int", scope: !649, file: !3, line: 331, type: !97)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 331, column: 2)
!650 = distinct !DILexicalBlock(scope: !651, file: !3, line: 331, column: 2)
!651 = distinct !DILexicalBlock(scope: !645, file: !3, line: 331, column: 2)
!652 = !DILabel(scope: !645, name: "__out", file: !3, line: 331)
!653 = !DILocation(line: 328, column: 58, scope: !641)
!654 = !DILocation(line: 330, column: 30, scope: !641)
!655 = !DILocation(line: 330, column: 2, scope: !641)
!656 = !DILocation(line: 331, column: 2, scope: !641)
!657 = !DILocation(line: 331, column: 2, scope: !646)
!658 = !DILocation(line: 331, column: 2, scope: !659)
!659 = distinct !DILexicalBlock(scope: !646, file: !3, line: 331, column: 2)
!660 = !DILocation(line: 331, column: 2, scope: !661)
!661 = distinct !DILexicalBlock(scope: !646, file: !3, line: 331, column: 2)
!662 = !DILocation(line: 331, column: 2, scope: !645)
!663 = !DILocation(line: 331, column: 2, scope: !649)
!664 = !DILocation(line: 331, column: 2, scope: !665)
!665 = distinct !DILexicalBlock(scope: !649, file: !3, line: 331, column: 2)
!666 = !DILocation(line: 331, column: 2, scope: !650)
!667 = distinct !{!667, !668, !668, !627}
!668 = !DILocation(line: 331, column: 2, scope: !651)
!669 = !DILocation(line: 332, column: 1, scope: !641)
!670 = !DILocation(line: 112, column: 2, scope: !671)
!671 = distinct !DILexicalBlock(scope: !263, file: !264, line: 112, column: 2)
!672 = !DILocation(line: 112, column: 2, scope: !263)
!673 = !DILocation(line: 113, column: 1, scope: !263)
!674 = !DISubprogram(name: "init_wait_entry", scope: !270, file: !270, line: 290, type: !675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !599, !98}
!677 = !DISubprogram(name: "prepare_to_wait_event", scope: !270, file: !270, line: 1199, type: !678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!678 = !DISubroutineType(types: !679)
!679 = !{!97, !680, !599, !98}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!681 = !DISubprogram(name: "schedule", scope: !682, file: !682, line: 303, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!682 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!683 = !DISubprogram(name: "finish_wait", scope: !270, file: !270, line: 1200, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !680, !599}
!686 = distinct !DISubprogram(name: "percpu_ref_switch_to_percpu", scope: !3, file: !3, line: 353, type: !66, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !687)
!687 = !{!688, !689, !690, !694}
!688 = !DILocalVariable(name: "ref", arg: 1, scope: !686, file: !3, line: 353, type: !68)
!689 = !DILocalVariable(name: "flags", scope: !686, file: !3, line: 355, type: !39)
!690 = !DILocalVariable(name: "__dummy", scope: !691, file: !3, line: 357, type: !39)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 357, column: 2)
!692 = distinct !DILexicalBlock(scope: !693, file: !3, line: 357, column: 2)
!693 = distinct !DILexicalBlock(scope: !686, file: !3, line: 357, column: 2)
!694 = !DILocalVariable(name: "__dummy2", scope: !691, file: !3, line: 357, type: !39)
!695 = !DILocation(line: 353, column: 53, scope: !686)
!696 = !DILocation(line: 355, column: 2, scope: !686)
!697 = !DILocation(line: 355, column: 16, scope: !686)
!698 = !DILocation(line: 357, column: 2, scope: !686)
!699 = !DILocation(line: 357, column: 2, scope: !693)
!700 = !DILocation(line: 357, column: 2, scope: !691)
!701 = !DILocation(line: 357, column: 2, scope: !692)
!702 = !DILocation(line: 359, column: 2, scope: !686)
!703 = !DILocation(line: 359, column: 7, scope: !686)
!704 = !DILocation(line: 359, column: 13, scope: !686)
!705 = !DILocation(line: 359, column: 26, scope: !686)
!706 = !DILocation(line: 360, column: 27, scope: !686)
!707 = !DILocation(line: 360, column: 2, scope: !686)
!708 = !DILocation(line: 362, column: 50, scope: !686)
!709 = !DILocation(line: 362, column: 2, scope: !686)
!710 = !DILocation(line: 363, column: 1, scope: !686)
!711 = !DILocation(line: 383, column: 53, scope: !117)
!712 = !DILocation(line: 384, column: 25, scope: !117)
!713 = !DILocation(line: 386, column: 2, scope: !117)
!714 = !DILocation(line: 386, column: 16, scope: !117)
!715 = !DILocation(line: 388, column: 2, scope: !117)
!716 = !DILocation(line: 388, column: 2, scope: !127)
!717 = !DILocation(line: 388, column: 2, scope: !125)
!718 = !DILocation(line: 388, column: 2, scope: !126)
!719 = !DILocation(line: 390, column: 2, scope: !130)
!720 = !DILocation(line: 390, column: 2, scope: !132)
!721 = !{i8 0, i8 2}
!722 = !{}
!723 = !DILocation(line: 390, column: 2, scope: !724)
!724 = distinct !DILexicalBlock(scope: !132, file: !3, line: 390, column: 2)
!725 = !DILocation(line: 0, scope: !724)
!726 = !DILocation(line: 390, column: 2, scope: !727)
!727 = distinct !DILexicalBlock(scope: !724, file: !3, line: 390, column: 2)
!728 = !DILocation(line: 390, column: 2, scope: !133)
!729 = !DILocation(line: 390, column: 2, scope: !136)
!730 = !DILocation(line: 390, column: 2, scope: !140)
!731 = !DILocation(line: 390, column: 2, scope: !139)
!732 = !DILocation(line: 390, column: 2, scope: !733)
!733 = distinct !DILexicalBlock(scope: !139, file: !3, line: 390, column: 2)
!734 = !DILocation(line: 390, column: 2, scope: !138)
!735 = !DILocation(line: 390, column: 2, scope: !736)
!736 = distinct !DILexicalBlock(scope: !138, file: !3, line: 390, column: 2)
!737 = !DILocation(line: 390, column: 2, scope: !738)
!738 = distinct !DILexicalBlock(scope: !138, file: !3, line: 390, column: 2)
!739 = !{i64 2153940296, i64 2153940325, i64 2153940371, i64 2153940429, i64 2153940483, i64 2153940537, i64 2153940592, i64 2153940623, i64 2153940931, i64 2153940937, i64 2153940984, i64 2153941007, i64 2153941033}
!740 = !DILocation(line: 390, column: 2, scope: !741)
!741 = distinct !DILexicalBlock(scope: !138, file: !3, line: 390, column: 2)
!742 = !DILocation(line: 390, column: 2, scope: !743)
!743 = distinct !DILexicalBlock(scope: !139, file: !3, line: 390, column: 2)
!744 = !DILocation(line: 390, column: 2, scope: !117)
!745 = !DILocation(line: 394, column: 2, scope: !117)
!746 = !DILocation(line: 394, column: 7, scope: !117)
!747 = !DILocation(line: 394, column: 24, scope: !117)
!748 = !DILocation(line: 395, column: 27, scope: !117)
!749 = !DILocation(line: 395, column: 32, scope: !117)
!750 = !DILocation(line: 395, column: 2, scope: !117)
!751 = !DILocation(line: 396, column: 17, scope: !117)
!752 = !DILocation(line: 396, column: 2, scope: !117)
!753 = !DILocation(line: 398, column: 50, scope: !117)
!754 = !DILocation(line: 398, column: 2, scope: !117)
!755 = !DILocation(line: 399, column: 1, scope: !117)
!756 = distinct !DISubprogram(name: "percpu_ref_is_dying", scope: !6, file: !6, line: 363, type: !757, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !759)
!757 = !DISubroutineType(types: !758)
!758 = !{!75, !68}
!759 = !{!760}
!760 = !DILocalVariable(name: "ref", arg: 1, scope: !756, file: !6, line: 363, type: !68)
!761 = !DILocation(line: 363, column: 59, scope: !756)
!762 = !DILocation(line: 365, column: 9, scope: !756)
!763 = !DILocation(line: 365, column: 14, scope: !756)
!764 = !DILocation(line: 365, column: 31, scope: !756)
!765 = !DILocation(line: 365, column: 2, scope: !756)
!766 = !DISubprogram(name: "__warn_printk", scope: !767, file: !767, line: 93, type: !768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!767 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!768 = !DISubroutineType(types: !769)
!769 = !{null, !770, null}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!771 = distinct !DISubprogram(name: "percpu_ref_put", scope: !6, file: !6, line: 349, type: !66, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !772)
!772 = !{!773}
!773 = !DILocalVariable(name: "ref", arg: 1, scope: !771, file: !6, line: 349, type: !68)
!774 = !DILocation(line: 349, column: 54, scope: !771)
!775 = !DILocation(line: 351, column: 22, scope: !771)
!776 = !DILocation(line: 351, column: 2, scope: !771)
!777 = !DILocation(line: 352, column: 1, scope: !771)
!778 = distinct !DISubprogram(name: "percpu_ref_is_zero", scope: !3, file: !3, line: 410, type: !757, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !779)
!779 = !{!780, !781, !782, !783, !784, !788}
!780 = !DILocalVariable(name: "ref", arg: 1, scope: !778, file: !3, line: 410, type: !68)
!781 = !DILocalVariable(name: "percpu_count", scope: !778, file: !3, line: 412, type: !49)
!782 = !DILocalVariable(name: "count", scope: !778, file: !3, line: 413, type: !39)
!783 = !DILocalVariable(name: "flags", scope: !778, file: !3, line: 413, type: !39)
!784 = !DILocalVariable(name: "__dummy", scope: !785, file: !3, line: 419, type: !39)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 419, column: 2)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 419, column: 2)
!787 = distinct !DILexicalBlock(scope: !778, file: !3, line: 419, column: 2)
!788 = !DILocalVariable(name: "__dummy2", scope: !785, file: !3, line: 419, type: !39)
!789 = !DILocation(line: 410, column: 44, scope: !778)
!790 = !DILocation(line: 412, column: 2, scope: !778)
!791 = !DILocation(line: 412, column: 26, scope: !778)
!792 = !DILocation(line: 413, column: 2, scope: !778)
!793 = !DILocation(line: 413, column: 16, scope: !778)
!794 = !DILocation(line: 413, column: 23, scope: !778)
!795 = !DILocation(line: 415, column: 22, scope: !796)
!796 = distinct !DILexicalBlock(scope: !778, file: !3, line: 415, column: 6)
!797 = !DILocation(line: 415, column: 6, scope: !796)
!798 = !DILocation(line: 415, column: 6, scope: !778)
!799 = !DILocation(line: 416, column: 3, scope: !796)
!800 = !DILocation(line: 419, column: 2, scope: !778)
!801 = !DILocation(line: 419, column: 2, scope: !787)
!802 = !DILocation(line: 419, column: 2, scope: !785)
!803 = !DILocation(line: 419, column: 2, scope: !786)
!804 = !DILocation(line: 420, column: 6, scope: !805)
!805 = distinct !DILexicalBlock(scope: !778, file: !3, line: 420, column: 6)
!806 = !DILocation(line: 420, column: 11, scope: !805)
!807 = !DILocation(line: 420, column: 6, scope: !778)
!808 = !DILocation(line: 421, column: 29, scope: !805)
!809 = !DILocation(line: 421, column: 34, scope: !805)
!810 = !DILocation(line: 421, column: 40, scope: !805)
!811 = !DILocation(line: 421, column: 11, scope: !805)
!812 = !DILocation(line: 421, column: 9, scope: !805)
!813 = !DILocation(line: 421, column: 3, scope: !805)
!814 = !DILocation(line: 423, column: 11, scope: !805)
!815 = !DILocation(line: 423, column: 16, scope: !805)
!816 = !DILocation(line: 423, column: 33, scope: !805)
!817 = !DILocation(line: 423, column: 9, scope: !805)
!818 = !DILocation(line: 424, column: 50, scope: !778)
!819 = !DILocation(line: 424, column: 2, scope: !778)
!820 = !DILocation(line: 426, column: 9, scope: !778)
!821 = !DILocation(line: 426, column: 15, scope: !778)
!822 = !DILocation(line: 426, column: 2, scope: !778)
!823 = !DILocation(line: 427, column: 1, scope: !778)
!824 = distinct !DISubprogram(name: "__ref_is_percpu", scope: !6, file: !6, line: 158, type: !825, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !828)
!825 = !DISubroutineType(types: !826)
!826 = !{!75, !68, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!828 = !{!829, !830, !831}
!829 = !DILocalVariable(name: "ref", arg: 1, scope: !824, file: !6, line: 158, type: !68)
!830 = !DILocalVariable(name: "percpu_countp", arg: 2, scope: !824, file: !6, line: 159, type: !827)
!831 = !DILocalVariable(name: "percpu_ptr", scope: !824, file: !6, line: 161, type: !39)
!832 = !DILocation(line: 158, column: 55, scope: !824)
!833 = !DILocation(line: 159, column: 33, scope: !824)
!834 = !DILocation(line: 161, column: 2, scope: !824)
!835 = !DILocation(line: 161, column: 16, scope: !824)
!836 = !DILocation(line: 174, column: 15, scope: !837)
!837 = distinct !DILexicalBlock(scope: !824, file: !6, line: 174, column: 15)
!838 = !DILocation(line: 174, column: 15, scope: !839)
!839 = distinct !DILexicalBlock(scope: !837, file: !6, line: 174, column: 15)
!840 = !DILocation(line: 174, column: 13, scope: !824)
!841 = !DILocation(line: 182, column: 6, scope: !842)
!842 = distinct !DILexicalBlock(scope: !824, file: !6, line: 182, column: 6)
!843 = !DILocation(line: 182, column: 6, scope: !824)
!844 = !DILocation(line: 183, column: 3, scope: !842)
!845 = !DILocation(line: 185, column: 45, scope: !824)
!846 = !DILocation(line: 185, column: 19, scope: !824)
!847 = !DILocation(line: 185, column: 3, scope: !824)
!848 = !DILocation(line: 185, column: 17, scope: !824)
!849 = !DILocation(line: 186, column: 2, scope: !824)
!850 = !DILocation(line: 187, column: 1, scope: !824)
!851 = distinct !DISubprogram(name: "percpu_ref_reinit", scope: !3, file: !3, line: 441, type: !66, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !852)
!852 = !{!853, !854, !856}
!853 = !DILocalVariable(name: "ref", arg: 1, scope: !851, file: !3, line: 441, type: !68)
!854 = !DILocalVariable(name: "__ret_warn_on", scope: !855, file: !3, line: 443, type: !98)
!855 = distinct !DILexicalBlock(scope: !851, file: !3, line: 443, column: 2)
!856 = !DILocalVariable(name: "__flags", scope: !857, file: !3, line: 443, type: !98)
!857 = distinct !DILexicalBlock(scope: !858, file: !3, line: 443, column: 2)
!858 = distinct !DILexicalBlock(scope: !855, file: !3, line: 443, column: 2)
!859 = !DILocation(line: 441, column: 43, scope: !851)
!860 = !DILocation(line: 443, column: 2, scope: !855)
!861 = !DILocation(line: 443, column: 2, scope: !858)
!862 = !DILocation(line: 443, column: 2, scope: !857)
!863 = !DILocation(line: 443, column: 2, scope: !864)
!864 = distinct !DILexicalBlock(scope: !857, file: !3, line: 443, column: 2)
!865 = !DILocation(line: 443, column: 2, scope: !866)
!866 = distinct !DILexicalBlock(scope: !857, file: !3, line: 443, column: 2)
!867 = !{i64 2153946174, i64 2153946203, i64 2153946249, i64 2153946307, i64 2153946361, i64 2153946415, i64 2153946470, i64 2153946501, i64 2153946809, i64 2153946815, i64 2153946862, i64 2153946885, i64 2153946911}
!868 = !DILocation(line: 443, column: 2, scope: !869)
!869 = distinct !DILexicalBlock(scope: !857, file: !3, line: 443, column: 2)
!870 = !DILocation(line: 443, column: 2, scope: !851)
!871 = !DILocation(line: 445, column: 23, scope: !851)
!872 = !DILocation(line: 445, column: 2, scope: !851)
!873 = !DILocation(line: 446, column: 1, scope: !851)
!874 = distinct !DISubprogram(name: "percpu_ref_resurrect", scope: !3, file: !3, line: 463, type: !66, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !875)
!875 = !{!876, !877, !878, !879, !883, !884, !886, !889, !891}
!876 = !DILocalVariable(name: "ref", arg: 1, scope: !874, file: !3, line: 463, type: !68)
!877 = !DILocalVariable(name: "percpu_count", scope: !874, file: !3, line: 465, type: !49)
!878 = !DILocalVariable(name: "flags", scope: !874, file: !3, line: 466, type: !39)
!879 = !DILocalVariable(name: "__dummy", scope: !880, file: !3, line: 468, type: !39)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 468, column: 2)
!881 = distinct !DILexicalBlock(scope: !882, file: !3, line: 468, column: 2)
!882 = distinct !DILexicalBlock(scope: !874, file: !3, line: 468, column: 2)
!883 = !DILocalVariable(name: "__dummy2", scope: !880, file: !3, line: 468, type: !39)
!884 = !DILocalVariable(name: "__ret_warn_on", scope: !885, file: !3, line: 470, type: !98)
!885 = distinct !DILexicalBlock(scope: !874, file: !3, line: 470, column: 2)
!886 = !DILocalVariable(name: "__flags", scope: !887, file: !3, line: 470, type: !98)
!887 = distinct !DILexicalBlock(scope: !888, file: !3, line: 470, column: 2)
!888 = distinct !DILexicalBlock(scope: !885, file: !3, line: 470, column: 2)
!889 = !DILocalVariable(name: "__ret_warn_on", scope: !890, file: !3, line: 471, type: !98)
!890 = distinct !DILexicalBlock(scope: !874, file: !3, line: 471, column: 2)
!891 = !DILocalVariable(name: "__flags", scope: !892, file: !3, line: 471, type: !98)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 471, column: 2)
!893 = distinct !DILexicalBlock(scope: !890, file: !3, line: 471, column: 2)
!894 = !DILocation(line: 463, column: 46, scope: !874)
!895 = !DILocation(line: 465, column: 2, scope: !874)
!896 = !DILocation(line: 465, column: 26, scope: !874)
!897 = !DILocation(line: 466, column: 2, scope: !874)
!898 = !DILocation(line: 466, column: 16, scope: !874)
!899 = !DILocation(line: 468, column: 2, scope: !874)
!900 = !DILocation(line: 468, column: 2, scope: !882)
!901 = !DILocation(line: 468, column: 2, scope: !880)
!902 = !DILocation(line: 468, column: 2, scope: !881)
!903 = !DILocation(line: 470, column: 2, scope: !885)
!904 = !DILocation(line: 470, column: 2, scope: !888)
!905 = !DILocation(line: 470, column: 2, scope: !887)
!906 = !DILocation(line: 470, column: 2, scope: !907)
!907 = distinct !DILexicalBlock(scope: !887, file: !3, line: 470, column: 2)
!908 = !DILocation(line: 470, column: 2, scope: !909)
!909 = distinct !DILexicalBlock(scope: !887, file: !3, line: 470, column: 2)
!910 = !{i64 2153953966, i64 2153953995, i64 2153954041, i64 2153954099, i64 2153954153, i64 2153954207, i64 2153954262, i64 2153954293, i64 2153954601, i64 2153954607, i64 2153954654, i64 2153954677, i64 2153954703}
!911 = !DILocation(line: 470, column: 2, scope: !912)
!912 = distinct !DILexicalBlock(scope: !887, file: !3, line: 470, column: 2)
!913 = !DILocation(line: 470, column: 2, scope: !874)
!914 = !DILocation(line: 471, column: 2, scope: !890)
!915 = !DILocation(line: 471, column: 2, scope: !893)
!916 = !DILocation(line: 471, column: 2, scope: !892)
!917 = !DILocation(line: 471, column: 2, scope: !918)
!918 = distinct !DILexicalBlock(scope: !892, file: !3, line: 471, column: 2)
!919 = !DILocation(line: 471, column: 2, scope: !920)
!920 = distinct !DILexicalBlock(scope: !892, file: !3, line: 471, column: 2)
!921 = !{i64 2153955514, i64 2153955543, i64 2153955589, i64 2153955647, i64 2153955701, i64 2153955755, i64 2153955810, i64 2153955841, i64 2153956149, i64 2153956155, i64 2153956202, i64 2153956225, i64 2153956251}
!922 = !DILocation(line: 471, column: 2, scope: !923)
!923 = distinct !DILexicalBlock(scope: !892, file: !3, line: 471, column: 2)
!924 = !DILocation(line: 471, column: 2, scope: !874)
!925 = !DILocation(line: 473, column: 2, scope: !874)
!926 = !DILocation(line: 473, column: 7, scope: !874)
!927 = !DILocation(line: 473, column: 24, scope: !874)
!928 = !DILocation(line: 474, column: 17, scope: !874)
!929 = !DILocation(line: 474, column: 2, scope: !874)
!930 = !DILocation(line: 475, column: 27, scope: !874)
!931 = !DILocation(line: 475, column: 2, scope: !874)
!932 = !DILocation(line: 477, column: 50, scope: !874)
!933 = !DILocation(line: 477, column: 2, scope: !874)
!934 = !DILocation(line: 478, column: 1, scope: !874)
!935 = distinct !DISubprogram(name: "percpu_ref_get", scope: !6, file: !6, line: 220, type: !66, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !936)
!936 = !{!937}
!937 = !DILocalVariable(name: "ref", arg: 1, scope: !935, file: !6, line: 220, type: !68)
!938 = !DILocation(line: 220, column: 54, scope: !935)
!939 = !DILocation(line: 222, column: 22, scope: !935)
!940 = !DILocation(line: 222, column: 2, scope: !935)
!941 = !DILocation(line: 223, column: 1, scope: !935)
!942 = distinct !DISubprogram(name: "kmalloc", scope: !24, file: !24, line: 591, type: !394, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !943)
!943 = !{!944, !945, !946}
!944 = !DILocalVariable(name: "size", arg: 1, scope: !942, file: !24, line: 591, type: !34)
!945 = !DILocalVariable(name: "flags", arg: 2, scope: !942, file: !24, line: 591, type: !41)
!946 = !DILocalVariable(name: "index", scope: !947, file: !24, line: 594, type: !7)
!947 = distinct !DILexicalBlock(scope: !948, file: !24, line: 593, column: 42)
!948 = distinct !DILexicalBlock(scope: !942, file: !24, line: 593, column: 6)
!949 = !DILocation(line: 591, column: 61, scope: !942)
!950 = !DILocation(line: 591, column: 73, scope: !942)
!951 = !DILocation(line: 593, column: 27, scope: !948)
!952 = !DILocation(line: 593, column: 6, scope: !948)
!953 = !DILocation(line: 593, column: 33, scope: !948)
!954 = !DILocation(line: 593, column: 36, scope: !948)
!955 = !DILocation(line: 593, column: 6, scope: !942)
!956 = !DILocation(line: 594, column: 3, scope: !947)
!957 = !DILocation(line: 594, column: 16, scope: !947)
!958 = !DILocation(line: 596, column: 7, scope: !959)
!959 = distinct !DILexicalBlock(scope: !947, file: !24, line: 596, column: 7)
!960 = !DILocation(line: 596, column: 12, scope: !959)
!961 = !DILocation(line: 596, column: 7, scope: !947)
!962 = !DILocation(line: 597, column: 25, scope: !959)
!963 = !DILocation(line: 597, column: 31, scope: !959)
!964 = !DILocation(line: 597, column: 11, scope: !959)
!965 = !DILocation(line: 597, column: 4, scope: !959)
!966 = !DILocation(line: 599, column: 11, scope: !947)
!967 = !DILocation(line: 599, column: 9, scope: !947)
!968 = !DILocation(line: 601, column: 33, scope: !947)
!969 = !DILocation(line: 601, column: 40, scope: !947)
!970 = !DILocation(line: 601, column: 20, scope: !947)
!971 = !DILocation(line: 601, column: 5, scope: !947)
!972 = !DILocation(line: 601, column: 51, scope: !947)
!973 = !DILocation(line: 602, column: 5, scope: !947)
!974 = !DILocation(line: 602, column: 12, scope: !947)
!975 = !DILocation(line: 600, column: 10, scope: !947)
!976 = !DILocation(line: 600, column: 3, scope: !947)
!977 = !DILocation(line: 603, column: 2, scope: !948)
!978 = !DILocation(line: 604, column: 19, scope: !942)
!979 = !DILocation(line: 604, column: 25, scope: !942)
!980 = !DILocation(line: 604, column: 9, scope: !942)
!981 = !DILocation(line: 604, column: 2, scope: !942)
!982 = !DILocation(line: 605, column: 1, scope: !942)
!983 = !DISubprogram(name: "kmalloc_large", scope: !24, file: !24, line: 531, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!984 = distinct !DISubprogram(name: "__kmalloc_index", scope: !24, file: !24, line: 444, type: !985, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !987)
!985 = !DISubroutineType(types: !986)
!986 = !{!7, !34, !75}
!987 = !{!988, !989}
!988 = !DILocalVariable(name: "size", arg: 1, scope: !984, file: !24, line: 444, type: !34)
!989 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !984, file: !24, line: 445, type: !75)
!990 = !DILocation(line: 444, column: 60, scope: !984)
!991 = !DILocation(line: 445, column: 16, scope: !984)
!992 = !DILocation(line: 447, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !984, file: !24, line: 447, column: 6)
!994 = !DILocation(line: 447, column: 6, scope: !984)
!995 = !DILocation(line: 448, column: 3, scope: !993)
!996 = !DILocation(line: 450, column: 6, scope: !997)
!997 = distinct !DILexicalBlock(scope: !984, file: !24, line: 450, column: 6)
!998 = !DILocation(line: 450, column: 11, scope: !997)
!999 = !DILocation(line: 450, column: 6, scope: !984)
!1000 = !DILocation(line: 451, column: 3, scope: !997)
!1001 = !DILocation(line: 453, column: 32, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !984, file: !24, line: 453, column: 6)
!1003 = !DILocation(line: 453, column: 37, scope: !1002)
!1004 = !DILocation(line: 453, column: 42, scope: !1002)
!1005 = !DILocation(line: 453, column: 45, scope: !1002)
!1006 = !DILocation(line: 453, column: 50, scope: !1002)
!1007 = !DILocation(line: 453, column: 6, scope: !984)
!1008 = !DILocation(line: 454, column: 3, scope: !1002)
!1009 = !DILocation(line: 455, column: 32, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !984, file: !24, line: 455, column: 6)
!1011 = !DILocation(line: 455, column: 37, scope: !1010)
!1012 = !DILocation(line: 455, column: 43, scope: !1010)
!1013 = !DILocation(line: 455, column: 46, scope: !1010)
!1014 = !DILocation(line: 455, column: 51, scope: !1010)
!1015 = !DILocation(line: 455, column: 6, scope: !984)
!1016 = !DILocation(line: 456, column: 3, scope: !1010)
!1017 = !DILocation(line: 457, column: 6, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !984, file: !24, line: 457, column: 6)
!1019 = !DILocation(line: 457, column: 11, scope: !1018)
!1020 = !DILocation(line: 457, column: 6, scope: !984)
!1021 = !DILocation(line: 457, column: 26, scope: !1018)
!1022 = !DILocation(line: 458, column: 6, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !984, file: !24, line: 458, column: 6)
!1024 = !DILocation(line: 458, column: 11, scope: !1023)
!1025 = !DILocation(line: 458, column: 6, scope: !984)
!1026 = !DILocation(line: 458, column: 26, scope: !1023)
!1027 = !DILocation(line: 459, column: 6, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !984, file: !24, line: 459, column: 6)
!1029 = !DILocation(line: 459, column: 11, scope: !1028)
!1030 = !DILocation(line: 459, column: 6, scope: !984)
!1031 = !DILocation(line: 459, column: 26, scope: !1028)
!1032 = !DILocation(line: 460, column: 6, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !984, file: !24, line: 460, column: 6)
!1034 = !DILocation(line: 460, column: 11, scope: !1033)
!1035 = !DILocation(line: 460, column: 6, scope: !984)
!1036 = !DILocation(line: 460, column: 26, scope: !1033)
!1037 = !DILocation(line: 461, column: 6, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !984, file: !24, line: 461, column: 6)
!1039 = !DILocation(line: 461, column: 11, scope: !1038)
!1040 = !DILocation(line: 461, column: 6, scope: !984)
!1041 = !DILocation(line: 461, column: 26, scope: !1038)
!1042 = !DILocation(line: 462, column: 6, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !984, file: !24, line: 462, column: 6)
!1044 = !DILocation(line: 462, column: 11, scope: !1043)
!1045 = !DILocation(line: 462, column: 6, scope: !984)
!1046 = !DILocation(line: 462, column: 26, scope: !1043)
!1047 = !DILocation(line: 463, column: 6, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !984, file: !24, line: 463, column: 6)
!1049 = !DILocation(line: 463, column: 11, scope: !1048)
!1050 = !DILocation(line: 463, column: 6, scope: !984)
!1051 = !DILocation(line: 463, column: 26, scope: !1048)
!1052 = !DILocation(line: 464, column: 6, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !984, file: !24, line: 464, column: 6)
!1054 = !DILocation(line: 464, column: 11, scope: !1053)
!1055 = !DILocation(line: 464, column: 6, scope: !984)
!1056 = !DILocation(line: 464, column: 26, scope: !1053)
!1057 = !DILocation(line: 465, column: 6, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !984, file: !24, line: 465, column: 6)
!1059 = !DILocation(line: 465, column: 11, scope: !1058)
!1060 = !DILocation(line: 465, column: 6, scope: !984)
!1061 = !DILocation(line: 465, column: 26, scope: !1058)
!1062 = !DILocation(line: 466, column: 6, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !984, file: !24, line: 466, column: 6)
!1064 = !DILocation(line: 466, column: 11, scope: !1063)
!1065 = !DILocation(line: 466, column: 6, scope: !984)
!1066 = !DILocation(line: 466, column: 26, scope: !1063)
!1067 = !DILocation(line: 467, column: 6, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !984, file: !24, line: 467, column: 6)
!1069 = !DILocation(line: 467, column: 11, scope: !1068)
!1070 = !DILocation(line: 467, column: 6, scope: !984)
!1071 = !DILocation(line: 467, column: 26, scope: !1068)
!1072 = !DILocation(line: 468, column: 6, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !984, file: !24, line: 468, column: 6)
!1074 = !DILocation(line: 468, column: 11, scope: !1073)
!1075 = !DILocation(line: 468, column: 6, scope: !984)
!1076 = !DILocation(line: 468, column: 26, scope: !1073)
!1077 = !DILocation(line: 469, column: 6, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !984, file: !24, line: 469, column: 6)
!1079 = !DILocation(line: 469, column: 11, scope: !1078)
!1080 = !DILocation(line: 469, column: 6, scope: !984)
!1081 = !DILocation(line: 469, column: 26, scope: !1078)
!1082 = !DILocation(line: 470, column: 6, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !984, file: !24, line: 470, column: 6)
!1084 = !DILocation(line: 470, column: 11, scope: !1083)
!1085 = !DILocation(line: 470, column: 6, scope: !984)
!1086 = !DILocation(line: 470, column: 26, scope: !1083)
!1087 = !DILocation(line: 471, column: 6, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !984, file: !24, line: 471, column: 6)
!1089 = !DILocation(line: 471, column: 11, scope: !1088)
!1090 = !DILocation(line: 471, column: 6, scope: !984)
!1091 = !DILocation(line: 471, column: 26, scope: !1088)
!1092 = !DILocation(line: 472, column: 6, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !984, file: !24, line: 472, column: 6)
!1094 = !DILocation(line: 472, column: 11, scope: !1093)
!1095 = !DILocation(line: 472, column: 6, scope: !984)
!1096 = !DILocation(line: 472, column: 26, scope: !1093)
!1097 = !DILocation(line: 473, column: 6, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !984, file: !24, line: 473, column: 6)
!1099 = !DILocation(line: 473, column: 11, scope: !1098)
!1100 = !DILocation(line: 473, column: 6, scope: !984)
!1101 = !DILocation(line: 473, column: 26, scope: !1098)
!1102 = !DILocation(line: 474, column: 6, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !984, file: !24, line: 474, column: 6)
!1104 = !DILocation(line: 474, column: 11, scope: !1103)
!1105 = !DILocation(line: 474, column: 6, scope: !984)
!1106 = !DILocation(line: 474, column: 27, scope: !1103)
!1107 = !DILocation(line: 475, column: 6, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !984, file: !24, line: 475, column: 6)
!1109 = !DILocation(line: 475, column: 11, scope: !1108)
!1110 = !DILocation(line: 475, column: 6, scope: !984)
!1111 = !DILocation(line: 475, column: 32, scope: !1108)
!1112 = !DILocation(line: 477, column: 50, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !984, file: !24, line: 477, column: 6)
!1114 = !DILocation(line: 477, column: 6, scope: !984)
!1115 = !DILocation(line: 478, column: 3, scope: !1113)
!1116 = !DILocation(line: 478, column: 3, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !24, line: 478, column: 3)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !24, line: 478, column: 3)
!1119 = !{i32 -2143056377}
!1120 = !DILocation(line: 478, column: 3, scope: !1118)
!1121 = !DILocation(line: 480, column: 3, scope: !1113)
!1122 = !DILocation(line: 480, column: 3, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1113, file: !24, line: 480, column: 3)
!1124 = !DILocation(line: 480, column: 3, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1123, file: !24, line: 480, column: 3)
!1126 = !DILocation(line: 480, column: 3, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !24, line: 480, column: 3)
!1128 = !{i64 2151911122, i64 2151911151, i64 2151911197, i64 2151911255, i64 2151911309, i64 2151911363, i64 2151911418, i64 2151911449}
!1129 = !DILocation(line: 483, column: 2, scope: !984)
!1130 = !DILocation(line: 484, column: 1, scope: !984)
!1131 = !DISubprogram(name: "kmalloc_trace", scope: !24, file: !24, line: 525, type: !1132, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!40, !1134, !41, !34}
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1136, line: 11, flags: DIFlagFwdDecl)
!1136 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1137 = distinct !DISubprogram(name: "kmalloc_type", scope: !24, file: !24, line: 401, type: !1138, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1140)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!23, !41, !39}
!1140 = !{!1141, !1142}
!1141 = !DILocalVariable(name: "flags", arg: 1, scope: !1137, file: !24, line: 401, type: !41)
!1142 = !DILocalVariable(name: "caller", arg: 2, scope: !1137, file: !24, line: 401, type: !39)
!1143 = !DILocation(line: 401, column: 67, scope: !1137)
!1144 = !DILocation(line: 401, column: 88, scope: !1137)
!1145 = !DILocation(line: 407, column: 6, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1137, file: !24, line: 407, column: 6)
!1147 = !DILocation(line: 407, column: 6, scope: !1137)
!1148 = !DILocation(line: 413, column: 3, scope: !1146)
!1149 = !DILocation(line: 423, column: 38, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1137, file: !24, line: 423, column: 6)
!1151 = !DILocation(line: 423, column: 44, scope: !1150)
!1152 = !DILocation(line: 423, column: 6, scope: !1137)
!1153 = !DILocation(line: 424, column: 3, scope: !1150)
!1154 = !DILocation(line: 426, column: 3, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1137, file: !24, line: 425, column: 6)
!1156 = !DILocation(line: 429, column: 1, scope: !1137)
!1157 = !DISubprogram(name: "__kmalloc", scope: !24, file: !24, line: 488, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1158 = !DISubprogram(name: "__compiletime_assert_173", scope: !24, file: !24, line: 478, type: !265, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1159 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1160, file: !1160, line: 80, type: !1161, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1166)
!1160 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !1163, !34}
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!1165 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1166 = !{!1167, !1168}
!1167 = !DILocalVariable(name: "v", arg: 1, scope: !1159, file: !1160, line: 80, type: !1163)
!1168 = !DILocalVariable(name: "size", arg: 2, scope: !1159, file: !1160, line: 80, type: !34)
!1169 = !DILocation(line: 80, column: 74, scope: !1159)
!1170 = !DILocation(line: 80, column: 84, scope: !1159)
!1171 = !DILocation(line: 82, column: 20, scope: !1159)
!1172 = !DILocation(line: 82, column: 23, scope: !1159)
!1173 = !DILocation(line: 82, column: 2, scope: !1159)
!1174 = !DILocation(line: 83, column: 2, scope: !1159)
!1175 = !DILocation(line: 84, column: 1, scope: !1159)
!1176 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !58, file: !58, line: 76, type: !411, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1177)
!1177 = !{!1178, !1179}
!1178 = !DILocalVariable(name: "v", arg: 1, scope: !1176, file: !58, line: 76, type: !413)
!1179 = !DILocalVariable(name: "i", arg: 2, scope: !1176, file: !58, line: 76, type: !97)
!1180 = !DILocation(line: 76, column: 36, scope: !1176)
!1181 = !DILocation(line: 76, column: 44, scope: !1176)
!1182 = !DILocation(line: 79, column: 19, scope: !1176)
!1183 = !DILocation(line: 79, column: 22, scope: !1176)
!1184 = !DILocation(line: 79, column: 2, scope: !1176)
!1185 = !DILocation(line: 83, column: 1, scope: !1176)
!1186 = distinct !DISubprogram(name: "kasan_check_write", scope: !1187, file: !1187, line: 44, type: !1188, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1190)
!1187 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!75, !1163, !7}
!1190 = !{!1191, !1192}
!1191 = !DILocalVariable(name: "p", arg: 1, scope: !1186, file: !1187, line: 44, type: !1163)
!1192 = !DILocalVariable(name: "size", arg: 2, scope: !1186, file: !1187, line: 44, type: !7)
!1193 = !DILocation(line: 44, column: 59, scope: !1186)
!1194 = !DILocation(line: 44, column: 75, scope: !1186)
!1195 = !DILocation(line: 46, column: 2, scope: !1186)
!1196 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1197, file: !1197, line: 229, type: !1198, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1200)
!1197 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !1163, !34, !98}
!1200 = !{!1201, !1202, !1203}
!1201 = !DILocalVariable(name: "ptr", arg: 1, scope: !1196, file: !1197, line: 229, type: !1163)
!1202 = !DILocalVariable(name: "size", arg: 2, scope: !1196, file: !1197, line: 229, type: !34)
!1203 = !DILocalVariable(name: "type", arg: 3, scope: !1196, file: !1197, line: 230, type: !98)
!1204 = !DILocation(line: 229, column: 60, scope: !1196)
!1205 = !DILocation(line: 229, column: 72, scope: !1196)
!1206 = !DILocation(line: 230, column: 15, scope: !1196)
!1207 = !DILocation(line: 230, column: 23, scope: !1196)
!1208 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !1209, file: !1209, line: 2600, type: !1210, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1213)
!1209 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1210 = !DISubroutineType(types: !1211)
!1211 = !{null, !1212, !44}
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1213 = !{!1214, !1215}
!1214 = !DILocalVariable(name: "v", arg: 1, scope: !1208, file: !1209, line: 2600, type: !1212)
!1215 = !DILocalVariable(name: "i", arg: 2, scope: !1208, file: !1209, line: 2600, type: !44)
!1216 = !DILocation(line: 2600, column: 30, scope: !1208)
!1217 = !DILocation(line: 2600, column: 37, scope: !1208)
!1218 = !DILocation(line: 2602, column: 20, scope: !1208)
!1219 = !DILocation(line: 2602, column: 23, scope: !1208)
!1220 = !DILocation(line: 2602, column: 2, scope: !1208)
!1221 = !DILocation(line: 2603, column: 1, scope: !1208)
!1222 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !1223, file: !1223, line: 18, type: !1210, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1224)
!1223 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!1224 = !{!1225, !1226}
!1225 = !DILocalVariable(name: "v", arg: 1, scope: !1222, file: !1223, line: 18, type: !1212)
!1226 = !DILocalVariable(name: "i", arg: 2, scope: !1222, file: !1223, line: 18, type: !44)
!1227 = !DILocation(line: 18, column: 59, scope: !1222)
!1228 = !DILocation(line: 18, column: 66, scope: !1222)
!1229 = !DILocation(line: 20, column: 2, scope: !1222)
!1230 = !DILocation(line: 20, column: 2, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1222, file: !1223, line: 20, column: 2)
!1232 = !DILocation(line: 21, column: 1, scope: !1222)
!1233 = distinct !DISubprogram(name: "percpu_count_ptr", scope: !3, file: !3, line: 42, type: !1234, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1236)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!49, !68}
!1236 = !{!1237}
!1237 = !DILocalVariable(name: "ref", arg: 1, scope: !1233, file: !3, line: 42, type: !68)
!1238 = !DILocation(line: 42, column: 68, scope: !1233)
!1239 = !DILocation(line: 45, column: 4, scope: !1233)
!1240 = !DILocation(line: 45, column: 9, scope: !1233)
!1241 = !DILocation(line: 45, column: 26, scope: !1233)
!1242 = !DILocation(line: 44, column: 9, scope: !1233)
!1243 = !DILocation(line: 44, column: 2, scope: !1233)
!1244 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1160, file: !1160, line: 66, type: !1161, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1245)
!1245 = !{!1246, !1247}
!1246 = !DILocalVariable(name: "v", arg: 1, scope: !1244, file: !1160, line: 66, type: !1163)
!1247 = !DILocalVariable(name: "size", arg: 2, scope: !1244, file: !1160, line: 66, type: !34)
!1248 = !DILocation(line: 66, column: 73, scope: !1244)
!1249 = !DILocation(line: 66, column: 83, scope: !1244)
!1250 = !DILocation(line: 68, column: 19, scope: !1244)
!1251 = !DILocation(line: 68, column: 22, scope: !1244)
!1252 = !DILocation(line: 68, column: 2, scope: !1244)
!1253 = !DILocation(line: 69, column: 2, scope: !1244)
!1254 = !DILocation(line: 70, column: 1, scope: !1244)
!1255 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !58, file: !58, line: 35, type: !523, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1256)
!1256 = !{!1257}
!1257 = !DILocalVariable(name: "v", arg: 1, scope: !1255, file: !58, line: 35, type: !525)
!1258 = !DILocation(line: 35, column: 43, scope: !1255)
!1259 = !DILocation(line: 38, column: 27, scope: !1255)
!1260 = !DILocation(line: 38, column: 9, scope: !1255)
!1261 = !DILocation(line: 38, column: 2, scope: !1255)
!1262 = distinct !DISubprogram(name: "kasan_check_read", scope: !1187, file: !1187, line: 40, type: !1188, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1263)
!1263 = !{!1264, !1265}
!1264 = !DILocalVariable(name: "p", arg: 1, scope: !1262, file: !1187, line: 40, type: !1163)
!1265 = !DILocalVariable(name: "size", arg: 2, scope: !1262, file: !1187, line: 40, type: !7)
!1266 = !DILocation(line: 40, column: 58, scope: !1262)
!1267 = !DILocation(line: 40, column: 74, scope: !1262)
!1268 = !DILocation(line: 42, column: 2, scope: !1262)
!1269 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !1209, file: !1209, line: 2554, type: !1270, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1274)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!44, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1274 = !{!1275}
!1275 = !DILocalVariable(name: "v", arg: 1, scope: !1269, file: !1209, line: 2554, type: !1272)
!1276 = !DILocation(line: 2554, column: 37, scope: !1269)
!1277 = !DILocation(line: 2556, column: 28, scope: !1269)
!1278 = !DILocation(line: 2556, column: 9, scope: !1269)
!1279 = !DILocation(line: 2556, column: 2, scope: !1269)
!1280 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !1223, file: !1223, line: 13, type: !1270, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1281)
!1281 = !{!1282}
!1282 = !DILocalVariable(name: "v", arg: 1, scope: !1280, file: !1223, line: 13, type: !1272)
!1283 = !DILocation(line: 13, column: 65, scope: !1280)
!1284 = !DILocation(line: 15, column: 9, scope: !1280)
!1285 = !DILocation(line: 15, column: 2, scope: !1280)
!1286 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !506, file: !506, line: 43, type: !1287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !509, !39}
!1289 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !512, file: !512, line: 399, type: !1290, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1292)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !515}
!1292 = !{!1293}
!1293 = !DILocalVariable(name: "lock", arg: 1, scope: !1289, file: !512, line: 399, type: !515)
!1294 = !DILocation(line: 399, column: 57, scope: !1289)
!1295 = !DILocation(line: 401, column: 2, scope: !1289)
!1296 = !DILocation(line: 402, column: 1, scope: !1289)
!1297 = distinct !DISubprogram(name: "spin_lock_irq", scope: !512, file: !512, line: 374, type: !1290, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1298)
!1298 = !{!1299}
!1299 = !DILocalVariable(name: "lock", arg: 1, scope: !1297, file: !512, line: 374, type: !515)
!1300 = !DILocation(line: 374, column: 55, scope: !1297)
!1301 = !DILocation(line: 376, column: 2, scope: !1297)
!1302 = !DILocation(line: 377, column: 1, scope: !1297)
!1303 = distinct !DISubprogram(name: "__percpu_ref_switch_to_atomic", scope: !3, file: !3, line: 213, type: !118, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1304)
!1304 = !{!1305, !1306}
!1305 = !DILocalVariable(name: "ref", arg: 1, scope: !1303, file: !3, line: 213, type: !68)
!1306 = !DILocalVariable(name: "confirm_switch", arg: 2, scope: !1303, file: !3, line: 214, type: !64)
!1307 = !DILocation(line: 213, column: 62, scope: !1303)
!1308 = !DILocation(line: 214, column: 27, scope: !1303)
!1309 = !DILocation(line: 216, column: 6, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 216, column: 6)
!1311 = !DILocation(line: 216, column: 11, scope: !1310)
!1312 = !DILocation(line: 216, column: 28, scope: !1310)
!1313 = !DILocation(line: 216, column: 6, scope: !1303)
!1314 = !DILocation(line: 217, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 217, column: 7)
!1316 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 216, column: 51)
!1317 = !DILocation(line: 217, column: 7, scope: !1316)
!1318 = !DILocation(line: 218, column: 4, scope: !1315)
!1319 = !DILocation(line: 218, column: 19, scope: !1315)
!1320 = !DILocation(line: 219, column: 3, scope: !1316)
!1321 = !DILocation(line: 223, column: 2, scope: !1303)
!1322 = !DILocation(line: 223, column: 7, scope: !1303)
!1323 = !DILocation(line: 223, column: 24, scope: !1303)
!1324 = !DILocation(line: 229, column: 30, scope: !1303)
!1325 = !DILocation(line: 229, column: 2, scope: !1303)
!1326 = !DILocation(line: 229, column: 7, scope: !1303)
!1327 = !DILocation(line: 229, column: 13, scope: !1303)
!1328 = !DILocation(line: 229, column: 28, scope: !1303)
!1329 = !DILocation(line: 232, column: 17, scope: !1303)
!1330 = !DILocation(line: 232, column: 2, scope: !1303)
!1331 = !DILocation(line: 233, column: 18, scope: !1303)
!1332 = !DILocation(line: 233, column: 23, scope: !1303)
!1333 = !DILocation(line: 233, column: 29, scope: !1303)
!1334 = !DILocation(line: 233, column: 2, scope: !1303)
!1335 = !DILocation(line: 235, column: 1, scope: !1303)
!1336 = distinct !DISubprogram(name: "__percpu_ref_switch_to_percpu", scope: !3, file: !3, line: 237, type: !66, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1337)
!1337 = !{!1338, !1339, !1340, !1341, !1344, !1347, !1352}
!1338 = !DILocalVariable(name: "ref", arg: 1, scope: !1336, file: !3, line: 237, type: !68)
!1339 = !DILocalVariable(name: "percpu_count", scope: !1336, file: !3, line: 239, type: !49)
!1340 = !DILocalVariable(name: "cpu", scope: !1336, file: !3, line: 240, type: !98)
!1341 = !DILocalVariable(name: "__ret_warn_on", scope: !1342, file: !3, line: 247, type: !98)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 247, column: 6)
!1343 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 247, column: 6)
!1344 = !DILocalVariable(name: "__flags", scope: !1345, file: !3, line: 247, type: !98)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 247, column: 6)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 247, column: 6)
!1347 = !DILocalVariable(name: "__vpp_verify", scope: !1348, file: !3, line: 259, type: !230)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 259, column: 4)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !3, line: 259, column: 4)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !3, line: 258, column: 2)
!1351 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 258, column: 2)
!1352 = !DILocalVariable(name: "__ptr", scope: !1353, file: !3, line: 259, type: !39)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !3, line: 259, column: 4)
!1354 = !DILocation(line: 237, column: 62, scope: !1336)
!1355 = !DILocation(line: 239, column: 2, scope: !1336)
!1356 = !DILocation(line: 239, column: 26, scope: !1336)
!1357 = !DILocation(line: 239, column: 58, scope: !1336)
!1358 = !DILocation(line: 239, column: 41, scope: !1336)
!1359 = !DILocation(line: 240, column: 2, scope: !1336)
!1360 = !DILocation(line: 240, column: 6, scope: !1336)
!1361 = !DILocation(line: 242, column: 2, scope: !1336)
!1362 = !DILocation(line: 242, column: 2, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 242, column: 2)
!1364 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 242, column: 2)
!1365 = !DILocation(line: 242, column: 2, scope: !1364)
!1366 = !DILocation(line: 242, column: 2, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 242, column: 2)
!1368 = !DILocation(line: 242, column: 2, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 242, column: 2)
!1370 = !DILocation(line: 242, column: 2, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 242, column: 2)
!1372 = !{i64 2153920001, i64 2153920030, i64 2153920076, i64 2153920134, i64 2153920188, i64 2153920242, i64 2153920297, i64 2153920328}
!1373 = !DILocation(line: 244, column: 8, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 244, column: 6)
!1375 = !DILocation(line: 244, column: 13, scope: !1374)
!1376 = !DILocation(line: 244, column: 30, scope: !1374)
!1377 = !DILocation(line: 244, column: 6, scope: !1336)
!1378 = !DILocation(line: 245, column: 3, scope: !1374)
!1379 = !DILocation(line: 247, column: 6, scope: !1342)
!1380 = !DILocation(line: 247, column: 6, scope: !1346)
!1381 = !DILocation(line: 247, column: 6, scope: !1345)
!1382 = !DILocation(line: 247, column: 6, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 247, column: 6)
!1384 = !DILocation(line: 247, column: 6, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 247, column: 6)
!1386 = !{i64 2153921264, i64 2153921293, i64 2153921339, i64 2153921397, i64 2153921451, i64 2153921505, i64 2153921560, i64 2153921591, i64 2153921899, i64 2153921905, i64 2153921952, i64 2153921975, i64 2153922001}
!1387 = !DILocation(line: 247, column: 6, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 247, column: 6)
!1389 = !DILocation(line: 247, column: 6, scope: !1343)
!1390 = !DILocation(line: 247, column: 6, scope: !1336)
!1391 = !DILocation(line: 248, column: 3, scope: !1343)
!1392 = !DILocation(line: 250, column: 38, scope: !1336)
!1393 = !DILocation(line: 250, column: 43, scope: !1336)
!1394 = !DILocation(line: 250, column: 49, scope: !1336)
!1395 = !DILocation(line: 250, column: 2, scope: !1336)
!1396 = !DILocation(line: 258, column: 2, scope: !1351)
!1397 = !DILocation(line: 258, column: 2, scope: !1350)
!1398 = !DILocation(line: 259, column: 4, scope: !1349)
!1399 = !DILocation(line: 259, column: 4, scope: !1348)
!1400 = !DILocation(line: 259, column: 4, scope: !1353)
!1401 = !DILocation(line: 259, column: 35, scope: !1350)
!1402 = !DILocation(line: 259, column: 3, scope: !1350)
!1403 = distinct !{!1403, !1396, !1404, !1405, !627}
!1404 = !DILocation(line: 259, column: 37, scope: !1351)
!1405 = !{!"llvm.loop.mustprogress"}
!1406 = !DILocation(line: 261, column: 2, scope: !1336)
!1407 = !DILocation(line: 261, column: 2, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 261, column: 2)
!1409 = !DILocation(line: 261, column: 2, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 261, column: 2)
!1411 = !DILocation(line: 261, column: 2, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 261, column: 2)
!1413 = !DILocation(line: 261, column: 2, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 261, column: 2)
!1415 = !{i64 2153925823}
!1416 = !DILocation(line: 261, column: 2, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1412, file: !3, line: 261, column: 2)
!1418 = !DILocation(line: 261, column: 2, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 261, column: 2)
!1420 = !DILocation(line: 261, column: 2, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !3, line: 261, column: 2)
!1422 = !DILocation(line: 263, column: 1, scope: !1336)
!1423 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !506, file: !506, line: 41, type: !1424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{null, !509}
!1426 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !506, file: !506, line: 29, type: !1424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1427 = distinct !DISubprogram(name: "percpu_ref_noop_confirm_switch", scope: !3, file: !3, line: 209, type: !66, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1428)
!1428 = !{!1429}
!1429 = !DILocalVariable(name: "ref", arg: 1, scope: !1427, file: !3, line: 209, type: !68)
!1430 = !DILocation(line: 209, column: 63, scope: !1427)
!1431 = !DILocation(line: 211, column: 1, scope: !1427)
!1432 = distinct !DISubprogram(name: "call_rcu_hurry", scope: !1433, file: !1433, line: 115, type: !1434, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1437)
!1433 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !82, !1436}
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "rcu_callback_t", file: !35, line: 238, baseType: !84)
!1437 = !{!1438, !1439}
!1438 = !DILocalVariable(name: "head", arg: 1, scope: !1432, file: !1433, line: 115, type: !82)
!1439 = !DILocalVariable(name: "func", arg: 2, scope: !1432, file: !1433, line: 115, type: !1436)
!1440 = !DILocation(line: 115, column: 52, scope: !1432)
!1441 = !DILocation(line: 115, column: 73, scope: !1432)
!1442 = !DILocation(line: 117, column: 11, scope: !1432)
!1443 = !DILocation(line: 117, column: 17, scope: !1432)
!1444 = !DILocation(line: 117, column: 2, scope: !1432)
!1445 = !DILocation(line: 118, column: 1, scope: !1432)
!1446 = !DILocation(line: 167, column: 62, scope: !215)
!1447 = !DILocation(line: 169, column: 2, scope: !215)
!1448 = !DILocation(line: 169, column: 26, scope: !215)
!1449 = !DILocation(line: 169, column: 33, scope: !220)
!1450 = !DILocation(line: 169, column: 33, scope: !215)
!1451 = !DILocation(line: 171, column: 2, scope: !215)
!1452 = !DILocation(line: 171, column: 21, scope: !215)
!1453 = !DILocation(line: 171, column: 27, scope: !215)
!1454 = !DILocation(line: 171, column: 33, scope: !215)
!1455 = !DILocation(line: 172, column: 2, scope: !215)
!1456 = !DILocation(line: 172, column: 26, scope: !215)
!1457 = !DILocation(line: 172, column: 58, scope: !215)
!1458 = !DILocation(line: 172, column: 41, scope: !215)
!1459 = !DILocation(line: 174, column: 2, scope: !215)
!1460 = !DILocation(line: 174, column: 16, scope: !215)
!1461 = !DILocation(line: 175, column: 2, scope: !215)
!1462 = !DILocation(line: 175, column: 6, scope: !215)
!1463 = !DILocation(line: 177, column: 2, scope: !229)
!1464 = !DILocation(line: 177, column: 2, scope: !228)
!1465 = !DILocation(line: 178, column: 13, scope: !227)
!1466 = !DILocation(line: 178, column: 13, scope: !226)
!1467 = !DILocation(line: 178, column: 13, scope: !233)
!1468 = !DILocation(line: 178, column: 12, scope: !228)
!1469 = !DILocation(line: 178, column: 9, scope: !228)
!1470 = !DILocation(line: 178, column: 3, scope: !228)
!1471 = distinct !{!1471, !1463, !1472, !1405, !627}
!1472 = !DILocation(line: 178, column: 13, scope: !229)
!1473 = !DILocation(line: 180, column: 2, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !3, line: 180, column: 2)
!1475 = distinct !DILexicalBlock(scope: !215, file: !3, line: 180, column: 2)
!1476 = !DILocation(line: 180, column: 2, scope: !1475)
!1477 = !DILocation(line: 195, column: 24, scope: !215)
!1478 = !DILocation(line: 195, column: 30, scope: !215)
!1479 = !DILocation(line: 195, column: 52, scope: !215)
!1480 = !DILocation(line: 195, column: 58, scope: !215)
!1481 = !DILocation(line: 195, column: 2, scope: !215)
!1482 = !DILocation(line: 197, column: 6, scope: !235)
!1483 = !DILocation(line: 197, column: 6, scope: !238)
!1484 = !DILocation(line: 197, column: 6, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !238, file: !3, line: 197, column: 6)
!1486 = !DILocation(line: 0, scope: !1485)
!1487 = !DILocation(line: 197, column: 6, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 197, column: 6)
!1489 = !DILocation(line: 197, column: 6, scope: !239)
!1490 = !DILocation(line: 197, column: 6, scope: !242)
!1491 = !DILocation(line: 197, column: 6, scope: !246)
!1492 = !DILocation(line: 197, column: 6, scope: !245)
!1493 = !DILocation(line: 197, column: 6, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !245, file: !3, line: 197, column: 6)
!1495 = !DILocation(line: 197, column: 6, scope: !244)
!1496 = !DILocation(line: 197, column: 6, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !244, file: !3, line: 197, column: 6)
!1498 = !DILocation(line: 197, column: 6, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !244, file: !3, line: 197, column: 6)
!1500 = !{i64 2153918161, i64 2153918190, i64 2153918236, i64 2153918294, i64 2153918348, i64 2153918402, i64 2153918457, i64 2153918488, i64 2153918796, i64 2153918802, i64 2153918849, i64 2153918872, i64 2153918898}
!1501 = !DILocation(line: 197, column: 6, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !244, file: !3, line: 197, column: 6)
!1503 = !DILocation(line: 197, column: 6, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !245, file: !3, line: 197, column: 6)
!1505 = !DILocation(line: 197, column: 6, scope: !236)
!1506 = !DILocation(line: 199, column: 56, scope: !236)
!1507 = !DILocation(line: 200, column: 6, scope: !236)
!1508 = !DILocation(line: 200, column: 37, scope: !236)
!1509 = !DILocation(line: 197, column: 6, scope: !215)
!1510 = !DILocation(line: 201, column: 3, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !3, line: 201, column: 3)
!1512 = distinct !DILexicalBlock(scope: !236, file: !3, line: 200, column: 42)
!1513 = !DILocation(line: 201, column: 3, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 201, column: 3)
!1515 = !DILocation(line: 202, column: 16, scope: !1512)
!1516 = !DILocation(line: 202, column: 3, scope: !1512)
!1517 = !DILocation(line: 203, column: 2, scope: !1512)
!1518 = !DILocation(line: 206, column: 30, scope: !215)
!1519 = !DILocation(line: 206, column: 2, scope: !215)
!1520 = !DILocation(line: 207, column: 1, scope: !215)
!1521 = !DISubprogram(name: "call_rcu", scope: !1433, file: !1433, line: 42, type: !1434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1522 = distinct !DISubprogram(name: "find_next_bit", scope: !1523, file: !1523, line: 54, type: !1524, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1528)
!1523 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!39, !1526, !39, !39}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!1528 = !{!1529, !1530, !1531, !1532}
!1529 = !DILocalVariable(name: "addr", arg: 1, scope: !1522, file: !1523, line: 54, type: !1526)
!1530 = !DILocalVariable(name: "size", arg: 2, scope: !1522, file: !1523, line: 54, type: !39)
!1531 = !DILocalVariable(name: "offset", arg: 3, scope: !1522, file: !1523, line: 55, type: !39)
!1532 = !DILocalVariable(name: "val", scope: !1533, file: !1523, line: 58, type: !39)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !1523, line: 57, column: 31)
!1534 = distinct !DILexicalBlock(scope: !1522, file: !1523, line: 57, column: 6)
!1535 = !DILocation(line: 54, column: 50, scope: !1522)
!1536 = !DILocation(line: 54, column: 70, scope: !1522)
!1537 = !DILocation(line: 55, column: 22, scope: !1522)
!1538 = !DILocation(line: 57, column: 6, scope: !1534)
!1539 = !DILocation(line: 57, column: 6, scope: !1522)
!1540 = !DILocation(line: 58, column: 3, scope: !1533)
!1541 = !DILocation(line: 58, column: 17, scope: !1533)
!1542 = !DILocation(line: 60, column: 7, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1533, file: !1523, line: 60, column: 7)
!1544 = !DILocation(line: 60, column: 7, scope: !1533)
!1545 = !DILocation(line: 61, column: 11, scope: !1543)
!1546 = !DILocation(line: 61, column: 4, scope: !1543)
!1547 = !DILocation(line: 63, column: 10, scope: !1533)
!1548 = !DILocation(line: 63, column: 9, scope: !1533)
!1549 = !DILocation(line: 63, column: 17, scope: !1533)
!1550 = !DILocation(line: 63, column: 15, scope: !1533)
!1551 = !DILocation(line: 63, column: 7, scope: !1533)
!1552 = !DILocation(line: 64, column: 10, scope: !1533)
!1553 = !DILocation(line: 64, column: 16, scope: !1533)
!1554 = !DILocation(line: 64, column: 29, scope: !1533)
!1555 = !DILocation(line: 64, column: 3, scope: !1533)
!1556 = !DILocation(line: 65, column: 2, scope: !1534)
!1557 = !DILocation(line: 67, column: 24, scope: !1522)
!1558 = !DILocation(line: 67, column: 30, scope: !1522)
!1559 = !DILocation(line: 67, column: 36, scope: !1522)
!1560 = !DILocation(line: 67, column: 9, scope: !1522)
!1561 = !DILocation(line: 67, column: 2, scope: !1522)
!1562 = !DILocation(line: 68, column: 1, scope: !1522)
!1563 = distinct !DISubprogram(name: "atomic_long_add", scope: !410, file: !410, line: 3230, type: !1564, scopeLine: 3231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1566)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !97, !413}
!1566 = !{!1567, !1568}
!1567 = !DILocalVariable(name: "i", arg: 1, scope: !1563, file: !410, line: 3230, type: !97)
!1568 = !DILocalVariable(name: "v", arg: 2, scope: !1563, file: !410, line: 3230, type: !413)
!1569 = !DILocation(line: 3230, column: 22, scope: !1563)
!1570 = !DILocation(line: 3230, column: 40, scope: !1563)
!1571 = !DILocation(line: 3232, column: 31, scope: !1563)
!1572 = !DILocation(line: 3232, column: 2, scope: !1563)
!1573 = !DILocation(line: 3233, column: 22, scope: !1563)
!1574 = !DILocation(line: 3233, column: 25, scope: !1563)
!1575 = !DILocation(line: 3233, column: 2, scope: !1563)
!1576 = !DILocation(line: 3234, column: 1, scope: !1563)
!1577 = distinct !DISubprogram(name: "atomic_inc_return", scope: !410, file: !410, line: 450, type: !1578, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1581)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!98, !1580}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!1581 = !{!1582}
!1582 = !DILocalVariable(name: "v", arg: 1, scope: !1577, file: !410, line: 450, type: !1580)
!1583 = !DILocation(line: 450, column: 29, scope: !1577)
!1584 = !DILocation(line: 452, column: 2, scope: !1577)
!1585 = !DILocation(line: 452, column: 2, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1577, file: !410, line: 452, column: 2)
!1587 = !DILocation(line: 453, column: 31, scope: !1577)
!1588 = !DILocation(line: 453, column: 2, scope: !1577)
!1589 = !DILocation(line: 454, column: 31, scope: !1577)
!1590 = !DILocation(line: 454, column: 9, scope: !1577)
!1591 = !DILocation(line: 454, column: 2, scope: !1577)
!1592 = !DISubprogram(name: "_printk", scope: !1593, file: !1593, line: 153, type: !1594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1593 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!98, !770, null}
!1596 = !DISubprogram(name: "mem_dump_obj", scope: !1597, file: !1597, line: 4004, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1597 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1598 = distinct !DISubprogram(name: "percpu_ref_call_confirm_rcu", scope: !3, file: !3, line: 150, type: !85, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1599)
!1599 = !{!1600, !1601, !1602, !1604}
!1600 = !DILocalVariable(name: "rcu", arg: 1, scope: !1598, file: !3, line: 150, type: !82)
!1601 = !DILocalVariable(name: "data", scope: !1598, file: !3, line: 152, type: !53)
!1602 = !DILocalVariable(name: "__mptr", scope: !1603, file: !3, line: 152, type: !40)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 152, column: 33)
!1604 = !DILocalVariable(name: "ref", scope: !1598, file: !3, line: 154, type: !68)
!1605 = !DILocation(line: 150, column: 58, scope: !1598)
!1606 = !DILocation(line: 152, column: 2, scope: !1598)
!1607 = !DILocation(line: 152, column: 26, scope: !1598)
!1608 = !DILocation(line: 152, column: 33, scope: !1603)
!1609 = !DILocation(line: 152, column: 33, scope: !1598)
!1610 = !DILocation(line: 154, column: 2, scope: !1598)
!1611 = !DILocation(line: 154, column: 21, scope: !1598)
!1612 = !DILocation(line: 154, column: 27, scope: !1598)
!1613 = !DILocation(line: 154, column: 33, scope: !1598)
!1614 = !DILocation(line: 156, column: 2, scope: !1598)
!1615 = !DILocation(line: 156, column: 8, scope: !1598)
!1616 = !DILocation(line: 156, column: 23, scope: !1598)
!1617 = !DILocation(line: 157, column: 2, scope: !1598)
!1618 = !DILocation(line: 157, column: 8, scope: !1598)
!1619 = !DILocation(line: 157, column: 23, scope: !1598)
!1620 = !DILocation(line: 158, column: 2, scope: !1598)
!1621 = !DILocation(line: 160, column: 7, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 160, column: 6)
!1623 = !DILocation(line: 160, column: 13, scope: !1622)
!1624 = !DILocation(line: 160, column: 6, scope: !1598)
!1625 = !DILocation(line: 161, column: 21, scope: !1622)
!1626 = !DILocation(line: 161, column: 3, scope: !1622)
!1627 = !DILocation(line: 164, column: 17, scope: !1598)
!1628 = !DILocation(line: 164, column: 2, scope: !1598)
!1629 = !DILocation(line: 165, column: 1, scope: !1598)
!1630 = distinct !DISubprogram(name: "variable__ffs", scope: !1631, file: !1631, line: 250, type: !1632, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1634)
!1631 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!39, !39}
!1634 = !{!1635}
!1635 = !DILocalVariable(name: "word", arg: 1, scope: !1630, file: !1631, line: 250, type: !39)
!1636 = !DILocation(line: 250, column: 66, scope: !1630)
!1637 = !DILocation(line: 254, column: 11, scope: !1630)
!1638 = !DILocation(line: 252, column: 2, scope: !1630)
!1639 = !{i64 308737}
!1640 = !DILocation(line: 255, column: 9, scope: !1630)
!1641 = !DILocation(line: 255, column: 2, scope: !1630)
!1642 = !DISubprogram(name: "_find_next_bit", scope: !1523, file: !1523, line: 11, type: !1524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1643 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1160, file: !1160, line: 94, type: !1161, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1644)
!1644 = !{!1645, !1646}
!1645 = !DILocalVariable(name: "v", arg: 1, scope: !1643, file: !1160, line: 94, type: !1163)
!1646 = !DILocalVariable(name: "size", arg: 2, scope: !1643, file: !1160, line: 94, type: !34)
!1647 = !DILocation(line: 94, column: 79, scope: !1643)
!1648 = !DILocation(line: 94, column: 89, scope: !1643)
!1649 = !DILocation(line: 96, column: 20, scope: !1643)
!1650 = !DILocation(line: 96, column: 23, scope: !1643)
!1651 = !DILocation(line: 96, column: 2, scope: !1643)
!1652 = !DILocation(line: 97, column: 2, scope: !1643)
!1653 = !DILocation(line: 98, column: 1, scope: !1643)
!1654 = distinct !DISubprogram(name: "raw_atomic_long_add", scope: !58, file: !58, line: 118, type: !1564, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1655)
!1655 = !{!1656, !1657}
!1656 = !DILocalVariable(name: "i", arg: 1, scope: !1654, file: !58, line: 118, type: !97)
!1657 = !DILocalVariable(name: "v", arg: 2, scope: !1654, file: !58, line: 118, type: !413)
!1658 = !DILocation(line: 118, column: 26, scope: !1654)
!1659 = !DILocation(line: 118, column: 44, scope: !1654)
!1660 = !DILocation(line: 121, column: 19, scope: !1654)
!1661 = !DILocation(line: 121, column: 22, scope: !1654)
!1662 = !DILocation(line: 121, column: 2, scope: !1654)
!1663 = !DILocation(line: 125, column: 1, scope: !1654)
!1664 = distinct !DISubprogram(name: "raw_atomic64_add", scope: !1209, file: !1209, line: 2643, type: !1665, scopeLine: 2644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{null, !44, !1212}
!1667 = !{!1668, !1669}
!1668 = !DILocalVariable(name: "i", arg: 1, scope: !1664, file: !1209, line: 2643, type: !44)
!1669 = !DILocalVariable(name: "v", arg: 2, scope: !1664, file: !1209, line: 2643, type: !1212)
!1670 = !DILocation(line: 2643, column: 22, scope: !1664)
!1671 = !DILocation(line: 2643, column: 37, scope: !1664)
!1672 = !DILocation(line: 2645, column: 20, scope: !1664)
!1673 = !DILocation(line: 2645, column: 23, scope: !1664)
!1674 = !DILocation(line: 2645, column: 2, scope: !1664)
!1675 = !DILocation(line: 2646, column: 1, scope: !1664)
!1676 = distinct !DISubprogram(name: "arch_atomic64_add", scope: !1223, file: !1223, line: 23, type: !1665, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1677)
!1677 = !{!1678, !1679}
!1678 = !DILocalVariable(name: "i", arg: 1, scope: !1676, file: !1223, line: 23, type: !44)
!1679 = !DILocalVariable(name: "v", arg: 2, scope: !1676, file: !1223, line: 23, type: !1212)
!1680 = !DILocation(line: 23, column: 51, scope: !1676)
!1681 = !DILocation(line: 23, column: 66, scope: !1676)
!1682 = !DILocation(line: 26, column: 16, scope: !1676)
!1683 = !DILocation(line: 26, column: 19, scope: !1676)
!1684 = !DILocation(line: 27, column: 16, scope: !1676)
!1685 = !DILocation(line: 27, column: 25, scope: !1676)
!1686 = !DILocation(line: 27, column: 28, scope: !1676)
!1687 = !DILocation(line: 25, column: 2, scope: !1676)
!1688 = !{i64 2148440112, i64 2148440151, i64 2148440172, i64 2148440209, i64 2148440232, i64 2148440102}
!1689 = !DILocation(line: 28, column: 1, scope: !1676)
!1690 = distinct !DISubprogram(name: "raw_atomic_inc_return", scope: !1209, file: !1209, line: 996, type: !1578, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1691)
!1691 = !{!1692}
!1692 = !DILocalVariable(name: "v", arg: 1, scope: !1690, file: !1209, line: 996, type: !1580)
!1693 = !DILocation(line: 996, column: 33, scope: !1690)
!1694 = !DILocation(line: 1007, column: 34, scope: !1690)
!1695 = !DILocation(line: 1007, column: 9, scope: !1690)
!1696 = !DILocation(line: 1007, column: 2, scope: !1690)
!1697 = distinct !DISubprogram(name: "raw_atomic_add_return", scope: !1209, file: !1209, line: 548, type: !1698, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1700)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!98, !98, !1580}
!1700 = !{!1701, !1702}
!1701 = !DILocalVariable(name: "i", arg: 1, scope: !1697, file: !1209, line: 548, type: !98)
!1702 = !DILocalVariable(name: "v", arg: 2, scope: !1697, file: !1209, line: 548, type: !1580)
!1703 = !DILocation(line: 548, column: 27, scope: !1697)
!1704 = !DILocation(line: 548, column: 40, scope: !1697)
!1705 = !DILocation(line: 551, column: 32, scope: !1697)
!1706 = !DILocation(line: 551, column: 35, scope: !1697)
!1707 = !DILocation(line: 551, column: 9, scope: !1697)
!1708 = !DILocation(line: 551, column: 2, scope: !1697)
!1709 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !1710, file: !1710, line: 83, type: !1698, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1711)
!1710 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!1711 = !{!1712, !1713, !1714}
!1712 = !DILocalVariable(name: "i", arg: 1, scope: !1709, file: !1710, line: 83, type: !98)
!1713 = !DILocalVariable(name: "v", arg: 2, scope: !1709, file: !1710, line: 83, type: !1580)
!1714 = !DILocalVariable(name: "__ret", scope: !1715, file: !1710, line: 85, type: !98)
!1715 = distinct !DILexicalBlock(scope: !1709, file: !1710, line: 85, column: 13)
!1716 = !DILocation(line: 83, column: 55, scope: !1709)
!1717 = !DILocation(line: 83, column: 68, scope: !1709)
!1718 = !DILocation(line: 85, column: 9, scope: !1709)
!1719 = !DILocation(line: 85, column: 13, scope: !1715)
!1720 = !{i64 2148419989, i64 2148420028, i64 2148420049, i64 2148420086, i64 2148420109, i64 2148420118}
!1721 = !DILocation(line: 85, column: 13, scope: !1709)
!1722 = !DILocation(line: 85, column: 11, scope: !1709)
!1723 = !DILocation(line: 85, column: 2, scope: !1709)
!1724 = !DISubprogram(name: "__wake_up", scope: !270, file: !270, line: 212, type: !1725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!98, !680, !7, !98, !40}
!1727 = distinct !DISubprogram(name: "percpu_ref_put_many", scope: !6, file: !6, line: 326, type: !1728, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1730)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{null, !68, !39}
!1730 = !{!1731, !1732, !1733, !1734, !1738, !1741}
!1731 = !DILocalVariable(name: "ref", arg: 1, scope: !1727, file: !6, line: 326, type: !68)
!1732 = !DILocalVariable(name: "nr", arg: 2, scope: !1727, file: !6, line: 326, type: !39)
!1733 = !DILocalVariable(name: "percpu_count", scope: !1727, file: !6, line: 328, type: !49)
!1734 = !DILocalVariable(name: "__vpp_verify", scope: !1735, file: !6, line: 333, type: !230)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !6, line: 333, column: 3)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !6, line: 333, column: 3)
!1737 = distinct !DILexicalBlock(scope: !1727, file: !6, line: 332, column: 6)
!1738 = !DILocalVariable(name: "pao_ID__", scope: !1739, file: !6, line: 333, type: !1740)
!1739 = distinct !DILexicalBlock(scope: !1736, file: !6, line: 333, column: 3)
!1740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!1741 = !DILocalVariable(name: "pto_val__", scope: !1742, file: !6, line: 333, type: !101)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !6, line: 333, column: 3)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !6, line: 333, column: 3)
!1744 = distinct !DILexicalBlock(scope: !1739, file: !6, line: 333, column: 3)
!1745 = !DILocation(line: 326, column: 59, scope: !1727)
!1746 = !DILocation(line: 326, column: 78, scope: !1727)
!1747 = !DILocation(line: 328, column: 2, scope: !1727)
!1748 = !DILocation(line: 328, column: 26, scope: !1727)
!1749 = !DILocation(line: 330, column: 2, scope: !1727)
!1750 = !DILocation(line: 332, column: 22, scope: !1737)
!1751 = !DILocation(line: 332, column: 6, scope: !1737)
!1752 = !DILocation(line: 332, column: 6, scope: !1727)
!1753 = !DILocation(line: 333, column: 3, scope: !1737)
!1754 = !DILocation(line: 333, column: 3, scope: !1736)
!1755 = !DILocation(line: 333, column: 3, scope: !1735)
!1756 = !DILocation(line: 333, column: 3, scope: !1739)
!1757 = !DILocation(line: 333, column: 3, scope: !1744)
!1758 = !DILocation(line: 333, column: 3, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1744, file: !6, line: 333, column: 3)
!1760 = !{i64 2151872785}
!1761 = !DILocation(line: 333, column: 3, scope: !1743)
!1762 = !DILocation(line: 333, column: 3, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1743, file: !6, line: 333, column: 3)
!1764 = !{i64 2151873080}
!1765 = !DILocation(line: 333, column: 3, scope: !1742)
!1766 = !{i64 2151873832}
!1767 = !DILocation(line: 334, column: 11, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1737, file: !6, line: 334, column: 11)
!1769 = !DILocation(line: 334, column: 11, scope: !1737)
!1770 = !DILocation(line: 335, column: 3, scope: !1768)
!1771 = !DILocation(line: 335, column: 8, scope: !1768)
!1772 = !DILocation(line: 335, column: 14, scope: !1768)
!1773 = !DILocation(line: 335, column: 22, scope: !1768)
!1774 = !DILocation(line: 337, column: 2, scope: !1727)
!1775 = !DILocation(line: 338, column: 1, scope: !1727)
!1776 = distinct !DISubprogram(name: "rcu_read_lock", scope: !1433, file: !1433, line: 782, type: !265, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1777 = !DILocation(line: 784, column: 2, scope: !1776)
!1778 = !DILocation(line: 786, column: 2, scope: !1776)
!1779 = !DILocation(line: 786, column: 2, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !1433, line: 786, column: 2)
!1781 = !DILocation(line: 787, column: 2, scope: !1776)
!1782 = !DILocation(line: 787, column: 2, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1776, file: !1433, line: 787, column: 2)
!1784 = !DILocation(line: 789, column: 1, scope: !1776)
!1785 = distinct !DISubprogram(name: "atomic_long_sub_and_test", scope: !410, file: !410, line: 4482, type: !1786, scopeLine: 4483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1788)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!75, !97, !413}
!1788 = !{!1789, !1790}
!1789 = !DILocalVariable(name: "i", arg: 1, scope: !1785, file: !410, line: 4482, type: !97)
!1790 = !DILocalVariable(name: "v", arg: 2, scope: !1785, file: !410, line: 4482, type: !413)
!1791 = !DILocation(line: 4482, column: 31, scope: !1785)
!1792 = !DILocation(line: 4482, column: 49, scope: !1785)
!1793 = !DILocation(line: 4484, column: 2, scope: !1785)
!1794 = !DILocation(line: 4484, column: 2, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1785, file: !410, line: 4484, column: 2)
!1796 = !DILocation(line: 4485, column: 31, scope: !1785)
!1797 = !DILocation(line: 4485, column: 2, scope: !1785)
!1798 = !DILocation(line: 4486, column: 38, scope: !1785)
!1799 = !DILocation(line: 4486, column: 41, scope: !1785)
!1800 = !DILocation(line: 4486, column: 9, scope: !1785)
!1801 = !DILocation(line: 4486, column: 2, scope: !1785)
!1802 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !1433, file: !1433, line: 813, type: !265, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1803 = !DILocation(line: 815, column: 2, scope: !1802)
!1804 = !DILocation(line: 815, column: 2, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1802, file: !1433, line: 815, column: 2)
!1806 = !DILocation(line: 818, column: 2, scope: !1802)
!1807 = !DILocation(line: 819, column: 2, scope: !1802)
!1808 = !DILocation(line: 819, column: 2, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1802, file: !1433, line: 819, column: 2)
!1810 = !DILocation(line: 820, column: 1, scope: !1802)
!1811 = !DISubprogram(name: "__rcu_read_lock", scope: !1433, file: !1433, line: 74, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1812 = distinct !DISubprogram(name: "raw_atomic_long_sub_and_test", scope: !58, file: !58, line: 1540, type: !1786, scopeLine: 1541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1813)
!1813 = !{!1814, !1815}
!1814 = !DILocalVariable(name: "i", arg: 1, scope: !1812, file: !58, line: 1540, type: !97)
!1815 = !DILocalVariable(name: "v", arg: 2, scope: !1812, file: !58, line: 1540, type: !413)
!1816 = !DILocation(line: 1540, column: 35, scope: !1812)
!1817 = !DILocation(line: 1540, column: 53, scope: !1812)
!1818 = !DILocation(line: 1543, column: 35, scope: !1812)
!1819 = !DILocation(line: 1543, column: 38, scope: !1812)
!1820 = !DILocation(line: 1543, column: 9, scope: !1812)
!1821 = !DILocation(line: 1543, column: 2, scope: !1812)
!1822 = distinct !DISubprogram(name: "raw_atomic64_sub_and_test", scope: !1209, file: !1209, line: 4346, type: !1823, scopeLine: 4347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1825)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!75, !44, !1212}
!1825 = !{!1826, !1827}
!1826 = !DILocalVariable(name: "i", arg: 1, scope: !1822, file: !1209, line: 4346, type: !44)
!1827 = !DILocalVariable(name: "v", arg: 2, scope: !1822, file: !1209, line: 4346, type: !1212)
!1828 = !DILocation(line: 4346, column: 31, scope: !1822)
!1829 = !DILocation(line: 4346, column: 46, scope: !1822)
!1830 = !DILocation(line: 4349, column: 36, scope: !1822)
!1831 = !DILocation(line: 4349, column: 39, scope: !1822)
!1832 = !DILocation(line: 4349, column: 9, scope: !1822)
!1833 = !DILocation(line: 4349, column: 2, scope: !1822)
!1834 = distinct !DISubprogram(name: "arch_atomic64_sub_and_test", scope: !1223, file: !1223, line: 37, type: !1823, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1835)
!1835 = !{!1836, !1837, !1838}
!1836 = !DILocalVariable(name: "i", arg: 1, scope: !1834, file: !1223, line: 37, type: !44)
!1837 = !DILocalVariable(name: "v", arg: 2, scope: !1834, file: !1223, line: 37, type: !1212)
!1838 = !DILocalVariable(name: "c", scope: !1839, file: !1223, line: 39, type: !75)
!1839 = distinct !DILexicalBlock(scope: !1834, file: !1223, line: 39, column: 9)
!1840 = !DILocation(line: 37, column: 60, scope: !1834)
!1841 = !DILocation(line: 37, column: 75, scope: !1834)
!1842 = !DILocation(line: 39, column: 9, scope: !1839)
!1843 = !{i64 2148442318, i64 2148442357, i64 2148442378, i64 2148442415, i64 2148442438, i64 2148442447, i64 2148442546}
!1844 = !DILocation(line: 39, column: 9, scope: !1834)
!1845 = !DILocation(line: 39, column: 2, scope: !1834)
!1846 = !DISubprogram(name: "__rcu_read_unlock", scope: !1433, file: !1433, line: 75, type: !265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1847 = distinct !DISubprogram(name: "percpu_ref_get_many", scope: !6, file: !6, line: 198, type: !1728, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1848)
!1848 = !{!1849, !1850, !1851, !1852, !1856, !1858}
!1849 = !DILocalVariable(name: "ref", arg: 1, scope: !1847, file: !6, line: 198, type: !68)
!1850 = !DILocalVariable(name: "nr", arg: 2, scope: !1847, file: !6, line: 198, type: !39)
!1851 = !DILocalVariable(name: "percpu_count", scope: !1847, file: !6, line: 200, type: !49)
!1852 = !DILocalVariable(name: "__vpp_verify", scope: !1853, file: !6, line: 205, type: !230)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !6, line: 205, column: 3)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !6, line: 205, column: 3)
!1855 = distinct !DILexicalBlock(scope: !1847, file: !6, line: 204, column: 6)
!1856 = !DILocalVariable(name: "pao_ID__", scope: !1857, file: !6, line: 205, type: !1740)
!1857 = distinct !DILexicalBlock(scope: !1854, file: !6, line: 205, column: 3)
!1858 = !DILocalVariable(name: "pto_val__", scope: !1859, file: !6, line: 205, type: !101)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !6, line: 205, column: 3)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 205, column: 3)
!1861 = distinct !DILexicalBlock(scope: !1857, file: !6, line: 205, column: 3)
!1862 = !DILocation(line: 198, column: 59, scope: !1847)
!1863 = !DILocation(line: 198, column: 78, scope: !1847)
!1864 = !DILocation(line: 200, column: 2, scope: !1847)
!1865 = !DILocation(line: 200, column: 26, scope: !1847)
!1866 = !DILocation(line: 202, column: 2, scope: !1847)
!1867 = !DILocation(line: 204, column: 22, scope: !1855)
!1868 = !DILocation(line: 204, column: 6, scope: !1855)
!1869 = !DILocation(line: 204, column: 6, scope: !1847)
!1870 = !DILocation(line: 205, column: 3, scope: !1855)
!1871 = !DILocation(line: 205, column: 3, scope: !1854)
!1872 = !DILocation(line: 205, column: 3, scope: !1853)
!1873 = !DILocation(line: 205, column: 3, scope: !1857)
!1874 = !DILocation(line: 205, column: 3, scope: !1861)
!1875 = !DILocation(line: 205, column: 3, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1861, file: !6, line: 205, column: 3)
!1877 = !{i64 2151842636}
!1878 = !DILocation(line: 205, column: 3, scope: !1860)
!1879 = !DILocation(line: 205, column: 3, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1860, file: !6, line: 205, column: 3)
!1881 = !{i64 2151842931}
!1882 = !DILocation(line: 205, column: 3, scope: !1859)
!1883 = !{i64 2151843593}
!1884 = !DILocation(line: 207, column: 19, scope: !1855)
!1885 = !DILocation(line: 207, column: 24, scope: !1855)
!1886 = !DILocation(line: 207, column: 29, scope: !1855)
!1887 = !DILocation(line: 207, column: 35, scope: !1855)
!1888 = !DILocation(line: 207, column: 3, scope: !1855)
!1889 = !DILocation(line: 209, column: 2, scope: !1847)
!1890 = !DILocation(line: 210, column: 1, scope: !1847)
