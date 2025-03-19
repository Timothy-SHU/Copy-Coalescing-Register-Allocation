; ModuleID = 'lib/percpu_counter.c'
source_filename = "lib/percpu_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_counter_set: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_counter_set ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_counter_add_batch: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_counter_add_batch ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_counter_sync: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_counter_sync ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___percpu_counter_sum: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __percpu_counter_sum ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___percpu_counter_init_many: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __percpu_counter_init_many ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_counter_destroy_many: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_counter_destroy_many ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_percpu_counter_batch: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad percpu_counter_batch ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___percpu_counter_compare: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __percpu_counter_compare ; .previous"
module asm ".section\09\22.initcall6.init..kmod_percpu_counter__213_294_percpu_counter_startup\22, \22a\22\09\09"
module asm "__initcall__kmod_percpu_counter__213_294_percpu_counter_startup6:\09\09\09"
module asm ".long\09__initstub__kmod_percpu_counter__213_294_percpu_counter_startup6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpumask = type { [1 x i64] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }

@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__UNIQUE_ID___addressable_percpu_counter_set203 = internal global ptr @percpu_counter_set, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !281
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1, !dbg !287
@__UNIQUE_ID___addressable_percpu_counter_add_batch204 = internal global ptr @percpu_counter_add_batch, section ".discard.addressable", align 8, !dbg !292
@__UNIQUE_ID___addressable_percpu_counter_sync205 = internal global ptr @percpu_counter_sync, section ".discard.addressable", align 8, !dbg !294
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__cpu_dying_mask = external dso_local global %struct.cpumask, align 8
@__UNIQUE_ID___addressable___percpu_counter_sum206 = internal global ptr @__percpu_counter_sum, section ".discard.addressable", align 8, !dbg !296
@percpu_counters_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !315
@percpu_counters = internal global %struct.list_head { ptr @percpu_counters, ptr @percpu_counters }, align 8, !dbg !325
@__UNIQUE_ID___addressable___percpu_counter_init_many207 = internal global ptr @__percpu_counter_init_many, section ".discard.addressable", align 8, !dbg !298
@.str.2 = private unnamed_addr constant [21 x i8] c"lib/percpu_counter.c\00", align 1, !dbg !300
@__UNIQUE_ID___addressable_percpu_counter_destroy_many208 = internal global ptr @percpu_counter_destroy_many, section ".discard.addressable", align 8, !dbg !305
@percpu_counter_batch = hidden global i32 32, section ".data..read_mostly", align 4, !dbg !307
@__UNIQUE_ID___addressable_percpu_counter_batch209 = internal global ptr @percpu_counter_batch, section ".discard.addressable", align 8, !dbg !309
@__UNIQUE_ID___addressable___percpu_counter_compare212 = internal global ptr @__percpu_counter_compare, section ".discard.addressable", align 8, !dbg !311
@__UNIQUE_ID___addressable___initstub__kmod_percpu_counter__213_294_percpu_counter_startup6214 = internal global ptr @__initstub__kmod_percpu_counter__213_294_percpu_counter_startup6, section ".discard.addressable", align 8, !dbg !313
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"lib/percpu_cnt:online\00", align 1, !dbg !327
@.str.4 = private unnamed_addr constant [20 x i8] c"lib/percpu_cnt:dead\00", align 1, !dbg !332
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_percpu_counter_set203, ptr @__UNIQUE_ID___addressable_percpu_counter_add_batch204, ptr @__UNIQUE_ID___addressable_percpu_counter_sync205, ptr @__UNIQUE_ID___addressable___percpu_counter_sum206, ptr @__UNIQUE_ID___addressable___percpu_counter_init_many207, ptr @__UNIQUE_ID___addressable_percpu_counter_destroy_many208, ptr @__UNIQUE_ID___addressable_percpu_counter_batch209, ptr @__UNIQUE_ID___addressable___percpu_counter_compare212, ptr @__UNIQUE_ID___addressable___initstub__kmod_percpu_counter__213_294_percpu_counter_startup6214], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @percpu_counter_set(ptr noundef %fbc, i64 noundef %amount) #0 align 16 !dbg !346 {
entry:
  %fbc.addr = alloca ptr, align 8
  %amount.addr = alloca i64, align 8
  %cpu = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %pcount = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp10 = alloca ptr, align 8
  %__dummy12 = alloca i64, align 8
  %__dummy213 = alloca i64, align 8
  %tmp16 = alloca i32, align 4
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !350, metadata !DIExpression()), !dbg !373
  store i64 %amount, ptr %amount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %amount.addr, metadata !351, metadata !DIExpression()), !dbg !374
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #11, !dbg !375
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !352, metadata !DIExpression()), !dbg !376
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !377
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !353, metadata !DIExpression()), !dbg !378
  br label %do.body, !dbg !379

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !380
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !354, metadata !DIExpression()), !dbg !380
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !380
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !357, metadata !DIExpression()), !dbg !380
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !380
  %conv = zext i1 %cmp to i32, !dbg !380
  store i32 1, ptr %tmp, align 4, !dbg !380
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !381
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !381
  %0 = load i32, ptr %tmp, align 4, !dbg !380
  %1 = load ptr, ptr %fbc.addr, align 8, !dbg !381
  %lock = getelementptr inbounds %struct.percpu_counter, ptr %1, i32 0, i32 0, !dbg !381
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #12, !dbg !381
  store i64 %call, ptr %flags, align 8, !dbg !381
  br label %do.cond, !dbg !381

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !381

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %cpu, align 4, !dbg !382
  br label %for.cond, !dbg !382

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load i32, ptr %cpu, align 4, !dbg !383
  %conv1 = sext i32 %2 to i64, !dbg !383
  %call2 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv1) #12, !dbg !383
  %conv3 = trunc i64 %call2 to i32, !dbg !383
  store i32 %conv3, ptr %cpu, align 4, !dbg !383
  %3 = load i32, ptr %cpu, align 4, !dbg !383
  %cmp4 = icmp ult i32 %3, 64, !dbg !383
  br i1 %cmp4, label %for.body, label %for.end, !dbg !382

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcount) #11, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %pcount, metadata !358, metadata !DIExpression()), !dbg !385
  br label %do.body6, !dbg !386

do.body6:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !387
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !362, metadata !DIExpression()), !dbg !387
  store ptr null, ptr %__vpp_verify, align 8, !dbg !387
  %4 = load ptr, ptr %__vpp_verify, align 8, !dbg !387
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !386
  br label %do.cond7, !dbg !387

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !387

do.end8:                                          ; preds = %do.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !388
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !367, metadata !DIExpression()), !dbg !388
  %5 = load ptr, ptr %fbc.addr, align 8, !dbg !388
  %counters = getelementptr inbounds %struct.percpu_counter, ptr %5, i32 0, i32 3, !dbg !388
  %6 = load ptr, ptr %counters, align 8, !dbg !388
  %7 = ptrtoint ptr %6 to i64, !dbg !388
  store i64 %7, ptr %__ptr, align 8, !dbg !388
  %8 = load i64, ptr %__ptr, align 8, !dbg !388
  %9 = load i32, ptr %cpu, align 4, !dbg !388
  %idxprom = sext i32 %9 to i64, !dbg !388
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !388
  %10 = load i64, ptr %arrayidx, align 8, !dbg !388
  %add = add i64 %8, %10, !dbg !388
  %11 = inttoptr i64 %add to ptr, !dbg !388
  store ptr %11, ptr %tmp10, align 8, !dbg !388
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !386
  %12 = load ptr, ptr %tmp10, align 8, !dbg !388
  store ptr %12, ptr %tmp9, align 8, !dbg !387
  %13 = load ptr, ptr %tmp9, align 8, !dbg !386
  store ptr %13, ptr %pcount, align 8, !dbg !385
  %14 = load ptr, ptr %pcount, align 8, !dbg !389
  store i32 0, ptr %14, align 4, !dbg !390
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcount) #11, !dbg !391
  br label %for.inc, !dbg !392

for.inc:                                          ; preds = %do.end8
  %15 = load i32, ptr %cpu, align 4, !dbg !383
  %inc = add i32 %15, 1, !dbg !383
  store i32 %inc, ptr %cpu, align 4, !dbg !383
  br label %for.cond, !dbg !383, !llvm.loop !393

for.end:                                          ; preds = %for.cond
  %16 = load i64, ptr %amount.addr, align 8, !dbg !397
  %17 = load ptr, ptr %fbc.addr, align 8, !dbg !398
  %count = getelementptr inbounds %struct.percpu_counter, ptr %17, i32 0, i32 1, !dbg !399
  store i64 %16, ptr %count, align 8, !dbg !400
  br label %do.body11, !dbg !401

do.body11:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy12) #11, !dbg !402
  call void @llvm.dbg.declare(metadata ptr %__dummy12, metadata !369, metadata !DIExpression()), !dbg !402
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy213) #11, !dbg !402
  call void @llvm.dbg.declare(metadata ptr %__dummy213, metadata !372, metadata !DIExpression()), !dbg !402
  %cmp14 = icmp eq ptr %__dummy12, %__dummy213, !dbg !402
  %conv15 = zext i1 %cmp14 to i32, !dbg !402
  store i32 1, ptr %tmp16, align 4, !dbg !402
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy213) #11, !dbg !403
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy12) #11, !dbg !403
  %18 = load i32, ptr %tmp16, align 4, !dbg !402
  %19 = load ptr, ptr %fbc.addr, align 8, !dbg !403
  %lock17 = getelementptr inbounds %struct.percpu_counter, ptr %19, i32 0, i32 0, !dbg !403
  %20 = load i64, ptr %flags, align 8, !dbg !403
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock17, i64 noundef %20) #12, !dbg !403
  br label %do.cond18, !dbg !403

do.cond18:                                        ; preds = %do.body11
  br label %do.end19, !dbg !403

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !404
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #11, !dbg !404
  ret void, !dbg !404
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !405 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !410 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !417, metadata !DIExpression()), !dbg !423
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !418, metadata !DIExpression()), !dbg !424
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !419, metadata !DIExpression()), !dbg !425
  %0 = load i64, ptr %size.addr, align 8, !dbg !426
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !426
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !426

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !426
  %cmp = icmp ule i64 %2, 64, !dbg !426
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !426

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !426
  %cmp2 = icmp ugt i64 %3, 0, !dbg !426
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !427

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !428
  call void @llvm.dbg.declare(metadata ptr %val, metadata !420, metadata !DIExpression()), !dbg !429
  %4 = load i64, ptr %offset.addr, align 8, !dbg !430
  %5 = load i64, ptr %size.addr, align 8, !dbg !430
  %cmp3 = icmp uge i64 %4, %5, !dbg !430
  %lnot = xor i1 %cmp3, true, !dbg !430
  %lnot4 = xor i1 %lnot, true, !dbg !430
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !430
  %conv = sext i32 %lnot.ext to i64, !dbg !430
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !430
  %tobool = icmp ne i64 %expval, 0, !dbg !430
  br i1 %tobool, label %if.then5, label %if.end, !dbg !432

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !433
  store i64 %6, ptr %retval, align 8, !dbg !434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !434

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !435
  %8 = load i64, ptr %7, align 8, !dbg !436
  %9 = load i64, ptr %offset.addr, align 8, !dbg !437
  %shl = shl i64 1, %9, !dbg !437
  %sub = sub i64 -1, %shl, !dbg !437
  %add = add i64 %sub, 1, !dbg !437
  %10 = load i64, ptr %size.addr, align 8, !dbg !437
  %sub6 = sub i64 %10, 1, !dbg !437
  %sub7 = sub i64 63, %sub6, !dbg !437
  %shr = lshr i64 -1, %sub7, !dbg !437
  %and = and i64 %add, %shr, !dbg !437
  %add8 = add i64 0, %and, !dbg !437
  %and9 = and i64 %8, %add8, !dbg !438
  store i64 %and9, ptr %val, align 8, !dbg !439
  %11 = load i64, ptr %val, align 8, !dbg !440
  %tobool10 = icmp ne i64 %11, 0, !dbg !440
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !440

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !441
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !441
  br i1 %13, label %cond.true11, label %cond.false, !dbg !441

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !441
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !441
  %cast = trunc i64 %15 to i32, !dbg !441
  %conv12 = sext i32 %cast to i64, !dbg !441
  br label %cond.end, !dbg !441

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !441
  %call = call i64 @variable__ffs(i64 noundef %16) #12, !dbg !441
  br label %cond.end, !dbg !441

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !441
  br label %cond.end14, !dbg !440

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !442
  br label %cond.end14, !dbg !440

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !440
  store i64 %cond15, ptr %retval, align 8, !dbg !443
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !443

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !444
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !445
  %19 = load i64, ptr %size.addr, align 8, !dbg !446
  %20 = load i64, ptr %offset.addr, align 8, !dbg !447
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #12, !dbg !448
  store i64 %call17, ptr %retval, align 8, !dbg !449
  br label %return, !dbg !449

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !450
  ret i64 %21, !dbg !450
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !451 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @percpu_counter_add_batch(ptr noundef %fbc, i64 noundef %amount, i32 noundef %batch) #0 align 16 !dbg !454 {
entry:
  %fbc.addr = alloca ptr, align 8
  %amount.addr = alloca i64, align 8
  %batch.addr = alloca i32, align 4
  %count = alloca i64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %__x = alloca i64, align 8
  %tmp13 = alloca i64, align 8
  %__vpp_verify23 = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  %__vpp_verify74 = alloca ptr, align 8
  %pao_ID__78 = alloca i32, align 4
  %pto_val__101 = alloca i32, align 4
  %__dummy116 = alloca i64, align 8
  %__dummy2117 = alloca i64, align 8
  %tmp120 = alloca i32, align 4
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !458, metadata !DIExpression()), !dbg !505
  store i64 %amount, ptr %amount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %amount.addr, metadata !459, metadata !DIExpression()), !dbg !506
  store i32 %batch, ptr %batch.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %batch.addr, metadata !460, metadata !DIExpression()), !dbg !507
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #11, !dbg !508
  call void @llvm.dbg.declare(metadata ptr %count, metadata !461, metadata !DIExpression()), !dbg !509
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !462, metadata !DIExpression()), !dbg !511
  br label %do.body, !dbg !512

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !513

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !514
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !463, metadata !DIExpression()), !dbg !514
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !514
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !467, metadata !DIExpression()), !dbg !514
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !514
  %conv = zext i1 %cmp to i32, !dbg !514
  store i32 1, ptr %tmp, align 4, !dbg !514
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !515
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !515
  %0 = load i32, ptr %tmp, align 4, !dbg !514
  %call = call i64 @arch_local_irq_save() #12, !dbg !515
  store i64 %call, ptr %flags, align 8, !dbg !515
  br label %do.cond, !dbg !515

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !515

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !513

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !513

do.end3:                                          ; preds = %do.cond2
  call void @__this_cpu_preempt_check(ptr noundef @.str) #12, !dbg !516
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !517
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !468, metadata !DIExpression()), !dbg !517
  br label %do.body5, !dbg !517

do.body5:                                         ; preds = %do.end3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !471, metadata !DIExpression()), !dbg !518
  store ptr null, ptr %__vpp_verify, align 8, !dbg !518
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !518
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !517
  br label %do.cond6, !dbg !518

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !518

do.end7:                                          ; preds = %do.cond6
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !519
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !473, metadata !DIExpression()), !dbg !519
  %2 = load ptr, ptr %fbc.addr, align 8, !dbg !519
  %counters = getelementptr inbounds %struct.percpu_counter, ptr %2, i32 0, i32 3, !dbg !519
  %3 = load ptr, ptr %counters, align 8, !dbg !519
  %4 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %3) #13, !dbg !519, !srcloc !520
  store i32 %4, ptr %pfo_val__, align 4, !dbg !519
  %5 = load i32, ptr %pfo_val__, align 4, !dbg !519
  %conv9 = zext i32 %5 to i64, !dbg !519
  %conv10 = trunc i64 %conv9 to i32, !dbg !519
  store i32 %conv10, ptr %tmp8, align 4, !dbg !519
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !517
  %6 = load i32, ptr %tmp8, align 4, !dbg !519
  store i32 %6, ptr %pscr_ret__, align 4, !dbg !517
  %7 = load i32, ptr %pscr_ret__, align 4, !dbg !517
  store i32 %7, ptr %tmp11, align 4, !dbg !517
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !516
  %8 = load i32, ptr %tmp11, align 4, !dbg !517
  store i32 %8, ptr %tmp4, align 4, !dbg !516
  %9 = load i32, ptr %tmp4, align 4, !dbg !516
  %conv12 = sext i32 %9 to i64, !dbg !521
  %10 = load i64, ptr %amount.addr, align 8, !dbg !522
  %add = add i64 %conv12, %10, !dbg !523
  store i64 %add, ptr %count, align 8, !dbg !524
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #11, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !475, metadata !DIExpression()), !dbg !525
  %11 = load i64, ptr %count, align 8, !dbg !525
  store i64 %11, ptr %__x, align 8, !dbg !525
  %12 = load i64, ptr %__x, align 8, !dbg !525
  %cmp14 = icmp slt i64 %12, 0, !dbg !525
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !525

cond.true:                                        ; preds = %do.end7
  %13 = load i64, ptr %__x, align 8, !dbg !525
  %sub = sub i64 0, %13, !dbg !525
  br label %cond.end, !dbg !525

cond.false:                                       ; preds = %do.end7
  %14 = load i64, ptr %__x, align 8, !dbg !525
  br label %cond.end, !dbg !525

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %14, %cond.false ], !dbg !525
  store i64 %cond, ptr %tmp13, align 8, !dbg !525
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #11, !dbg !526
  %15 = load i64, ptr %tmp13, align 8, !dbg !525
  %16 = load i32, ptr %batch.addr, align 4, !dbg !527
  %conv16 = sext i32 %16 to i64, !dbg !527
  %cmp17 = icmp sge i64 %15, %conv16, !dbg !528
  br i1 %cmp17, label %if.then, label %if.else71, !dbg !529

if.then:                                          ; preds = %cond.end
  %17 = load ptr, ptr %fbc.addr, align 8, !dbg !530
  %lock = getelementptr inbounds %struct.percpu_counter, ptr %17, i32 0, i32 0, !dbg !530
  call void @_raw_spin_lock(ptr noundef %lock) #12, !dbg !530
  %18 = load i64, ptr %count, align 8, !dbg !531
  %19 = load ptr, ptr %fbc.addr, align 8, !dbg !532
  %count19 = getelementptr inbounds %struct.percpu_counter, ptr %19, i32 0, i32 1, !dbg !533
  %20 = load i64, ptr %count19, align 8, !dbg !534
  %add20 = add i64 %20, %18, !dbg !534
  store i64 %add20, ptr %count19, align 8, !dbg !534
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #12, !dbg !535
  br label %do.body21, !dbg !535

do.body21:                                        ; preds = %if.then
  br label %do.body22, !dbg !536

do.body22:                                        ; preds = %do.body21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify23) #11, !dbg !537
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify23, metadata !478, metadata !DIExpression()), !dbg !537
  store ptr null, ptr %__vpp_verify23, align 8, !dbg !537
  %21 = load ptr, ptr %__vpp_verify23, align 8, !dbg !537
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify23) #11, !dbg !536
  br label %do.cond24, !dbg !537

do.cond24:                                        ; preds = %do.body22
  br label %do.end25, !dbg !537

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !536

do.body26:                                        ; preds = %do.end25
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #11, !dbg !538
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !483, metadata !DIExpression()), !dbg !538
  %22 = load i64, ptr %count, align 8, !dbg !538
  %23 = load i64, ptr %amount.addr, align 8, !dbg !538
  %sub27 = sub i64 %22, %23, !dbg !538
  %conv28 = trunc i64 %sub27 to i32, !dbg !538
  %sub29 = sub i32 0, %conv28, !dbg !538
  %24 = call i1 @llvm.is.constant.i32(i32 %sub29), !dbg !538
  br i1 %24, label %land.lhs.true, label %cond.false44, !dbg !538

land.lhs.true:                                    ; preds = %do.body26
  %25 = load i64, ptr %count, align 8, !dbg !538
  %26 = load i64, ptr %amount.addr, align 8, !dbg !538
  %sub30 = sub i64 %25, %26, !dbg !538
  %conv31 = trunc i64 %sub30 to i32, !dbg !538
  %sub32 = sub i32 0, %conv31, !dbg !538
  %cmp33 = icmp eq i32 %sub32, 1, !dbg !538
  br i1 %cmp33, label %cond.true40, label %lor.lhs.false, !dbg !538

lor.lhs.false:                                    ; preds = %land.lhs.true
  %27 = load i64, ptr %count, align 8, !dbg !538
  %28 = load i64, ptr %amount.addr, align 8, !dbg !538
  %sub35 = sub i64 %27, %28, !dbg !538
  %conv36 = trunc i64 %sub35 to i32, !dbg !538
  %sub37 = sub i32 0, %conv36, !dbg !538
  %cmp38 = icmp eq i32 %sub37, -1, !dbg !538
  br i1 %cmp38, label %cond.true40, label %cond.false44, !dbg !538

cond.true40:                                      ; preds = %lor.lhs.false, %land.lhs.true
  %29 = load i64, ptr %count, align 8, !dbg !538
  %30 = load i64, ptr %amount.addr, align 8, !dbg !538
  %sub41 = sub i64 %29, %30, !dbg !538
  %conv42 = trunc i64 %sub41 to i32, !dbg !538
  %sub43 = sub i32 0, %conv42, !dbg !538
  br label %cond.end45, !dbg !538

cond.false44:                                     ; preds = %lor.lhs.false, %do.body26
  br label %cond.end45, !dbg !538

cond.end45:                                       ; preds = %cond.false44, %cond.true40
  %cond46 = phi i32 [ %sub43, %cond.true40 ], [ 0, %cond.false44 ], !dbg !538
  store i32 %cond46, ptr %pao_ID__, align 4, !dbg !538
  %31 = load i32, ptr %pao_ID__, align 4, !dbg !539
  %cmp47 = icmp eq i32 %31, 1, !dbg !539
  br i1 %cmp47, label %if.then49, label %if.else, !dbg !538

if.then49:                                        ; preds = %cond.end45
  %32 = load ptr, ptr %fbc.addr, align 8, !dbg !540
  %counters50 = getelementptr inbounds %struct.percpu_counter, ptr %32, i32 0, i32 3, !dbg !540
  %33 = load ptr, ptr %counters50, align 8, !dbg !540
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %33, ptr elementtype(i32) %33) #11, !dbg !540, !srcloc !542
  br label %if.end65, !dbg !539

if.else:                                          ; preds = %cond.end45
  %34 = load i32, ptr %pao_ID__, align 4, !dbg !543
  %cmp51 = icmp eq i32 %34, -1, !dbg !543
  br i1 %cmp51, label %if.then53, label %if.else55, !dbg !539

if.then53:                                        ; preds = %if.else
  %35 = load ptr, ptr %fbc.addr, align 8, !dbg !544
  %counters54 = getelementptr inbounds %struct.percpu_counter, ptr %35, i32 0, i32 3, !dbg !544
  %36 = load ptr, ptr %counters54, align 8, !dbg !544
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %36, ptr elementtype(i32) %36) #11, !dbg !544, !srcloc !546
  br label %if.end, !dbg !543

if.else55:                                        ; preds = %if.else
  br label %do.body56, !dbg !543

do.body56:                                        ; preds = %if.else55
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #11, !dbg !547
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !486, metadata !DIExpression()), !dbg !547
  %37 = load i64, ptr %count, align 8, !dbg !547
  %38 = load i64, ptr %amount.addr, align 8, !dbg !547
  %sub57 = sub i64 %37, %38, !dbg !547
  %conv58 = trunc i64 %sub57 to i32, !dbg !547
  %sub59 = sub i32 0, %conv58, !dbg !547
  %conv60 = sext i32 %sub59 to i64, !dbg !547
  %and = and i64 %conv60, 4294967295, !dbg !547
  %conv61 = trunc i64 %and to i32, !dbg !547
  store i32 %conv61, ptr %pto_val__, align 4, !dbg !547
  %39 = load ptr, ptr %fbc.addr, align 8, !dbg !547
  %counters62 = getelementptr inbounds %struct.percpu_counter, ptr %39, i32 0, i32 3, !dbg !547
  %40 = load ptr, ptr %counters62, align 8, !dbg !547
  %41 = load i32, ptr %pto_val__, align 4, !dbg !547
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %40, i32 %41, ptr elementtype(i32) %40) #11, !dbg !547, !srcloc !548
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #11, !dbg !543
  br label %do.cond63, !dbg !547

do.cond63:                                        ; preds = %do.body56
  br label %do.end64, !dbg !547

do.end64:                                         ; preds = %do.cond63
  br label %if.end

if.end:                                           ; preds = %do.end64, %if.then53
  br label %if.end65

if.end65:                                         ; preds = %if.end, %if.then49
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #11, !dbg !536
  br label %do.cond66, !dbg !538

do.cond66:                                        ; preds = %if.end65
  br label %do.end67, !dbg !538

do.end67:                                         ; preds = %do.cond66
  br label %do.cond68, !dbg !536

do.cond68:                                        ; preds = %do.end67
  br label %do.end69, !dbg !536

do.end69:                                         ; preds = %do.cond68
  %42 = load ptr, ptr %fbc.addr, align 8, !dbg !549
  %lock70 = getelementptr inbounds %struct.percpu_counter, ptr %42, i32 0, i32 0, !dbg !549
  call void @_raw_spin_unlock(ptr noundef %lock70) #12, !dbg !549
  br label %if.end113, !dbg !550

if.else71:                                        ; preds = %cond.end
  br label %do.body72, !dbg !551

do.body72:                                        ; preds = %if.else71
  br label %do.body73, !dbg !552

do.body73:                                        ; preds = %do.body72
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify74) #11, !dbg !553
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify74, metadata !490, metadata !DIExpression()), !dbg !553
  store ptr null, ptr %__vpp_verify74, align 8, !dbg !553
  %43 = load ptr, ptr %__vpp_verify74, align 8, !dbg !553
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify74) #11, !dbg !552
  br label %do.cond75, !dbg !553

do.cond75:                                        ; preds = %do.body73
  br label %do.end76, !dbg !553

do.end76:                                         ; preds = %do.cond75
  br label %do.body77, !dbg !552

do.body77:                                        ; preds = %do.end76
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__78) #11, !dbg !554
  call void @llvm.dbg.declare(metadata ptr %pao_ID__78, metadata !494, metadata !DIExpression()), !dbg !554
  %44 = load i64, ptr %amount.addr, align 8, !dbg !554
  %45 = call i1 @llvm.is.constant.i64(i64 %44), !dbg !554
  br i1 %45, label %land.lhs.true79, label %cond.false87, !dbg !554

land.lhs.true79:                                  ; preds = %do.body77
  %46 = load i64, ptr %amount.addr, align 8, !dbg !554
  %cmp80 = icmp eq i64 %46, 1, !dbg !554
  br i1 %cmp80, label %cond.true85, label %lor.lhs.false82, !dbg !554

lor.lhs.false82:                                  ; preds = %land.lhs.true79
  %47 = load i64, ptr %amount.addr, align 8, !dbg !554
  %cmp83 = icmp eq i64 %47, -1, !dbg !554
  br i1 %cmp83, label %cond.true85, label %cond.false87, !dbg !554

cond.true85:                                      ; preds = %lor.lhs.false82, %land.lhs.true79
  %48 = load i64, ptr %amount.addr, align 8, !dbg !554
  %conv86 = trunc i64 %48 to i32, !dbg !554
  br label %cond.end88, !dbg !554

cond.false87:                                     ; preds = %lor.lhs.false82, %do.body77
  br label %cond.end88, !dbg !554

cond.end88:                                       ; preds = %cond.false87, %cond.true85
  %cond89 = phi i32 [ %conv86, %cond.true85 ], [ 0, %cond.false87 ], !dbg !554
  store i32 %cond89, ptr %pao_ID__78, align 4, !dbg !554
  %49 = load i32, ptr %pao_ID__78, align 4, !dbg !555
  %cmp90 = icmp eq i32 %49, 1, !dbg !555
  br i1 %cmp90, label %if.then92, label %if.else94, !dbg !554

if.then92:                                        ; preds = %cond.end88
  %50 = load ptr, ptr %fbc.addr, align 8, !dbg !556
  %counters93 = getelementptr inbounds %struct.percpu_counter, ptr %50, i32 0, i32 3, !dbg !556
  %51 = load ptr, ptr %counters93, align 8, !dbg !556
  call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %51, ptr elementtype(i32) %51) #11, !dbg !556, !srcloc !558
  br label %if.end108, !dbg !555

if.else94:                                        ; preds = %cond.end88
  %52 = load i32, ptr %pao_ID__78, align 4, !dbg !559
  %cmp95 = icmp eq i32 %52, -1, !dbg !559
  br i1 %cmp95, label %if.then97, label %if.else99, !dbg !555

if.then97:                                        ; preds = %if.else94
  %53 = load ptr, ptr %fbc.addr, align 8, !dbg !560
  %counters98 = getelementptr inbounds %struct.percpu_counter, ptr %53, i32 0, i32 3, !dbg !560
  %54 = load ptr, ptr %counters98, align 8, !dbg !560
  call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %54, ptr elementtype(i32) %54) #11, !dbg !560, !srcloc !562
  br label %if.end107, !dbg !559

if.else99:                                        ; preds = %if.else94
  br label %do.body100, !dbg !559

do.body100:                                       ; preds = %if.else99
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__101) #11, !dbg !563
  call void @llvm.dbg.declare(metadata ptr %pto_val__101, metadata !496, metadata !DIExpression()), !dbg !563
  %55 = load i64, ptr %amount.addr, align 8, !dbg !563
  %and102 = and i64 %55, 4294967295, !dbg !563
  %conv103 = trunc i64 %and102 to i32, !dbg !563
  store i32 %conv103, ptr %pto_val__101, align 4, !dbg !563
  %56 = load ptr, ptr %fbc.addr, align 8, !dbg !563
  %counters104 = getelementptr inbounds %struct.percpu_counter, ptr %56, i32 0, i32 3, !dbg !563
  %57 = load ptr, ptr %counters104, align 8, !dbg !563
  %58 = load i32, ptr %pto_val__101, align 4, !dbg !563
  call void asm sideeffect "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %57, i32 %58, ptr elementtype(i32) %57) #11, !dbg !563, !srcloc !564
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__101) #11, !dbg !559
  br label %do.cond105, !dbg !563

do.cond105:                                       ; preds = %do.body100
  br label %do.end106, !dbg !563

do.end106:                                        ; preds = %do.cond105
  br label %if.end107

if.end107:                                        ; preds = %do.end106, %if.then97
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.then92
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__78) #11, !dbg !552
  br label %do.cond109, !dbg !554

do.cond109:                                       ; preds = %if.end108
  br label %do.end110, !dbg !554

do.end110:                                        ; preds = %do.cond109
  br label %do.cond111, !dbg !552

do.cond111:                                       ; preds = %do.end110
  br label %do.end112, !dbg !552

do.end112:                                        ; preds = %do.cond111
  br label %if.end113

if.end113:                                        ; preds = %do.end112, %do.end69
  br label %do.body114, !dbg !565

do.body114:                                       ; preds = %if.end113
  br label %do.body115, !dbg !566

do.body115:                                       ; preds = %do.body114
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy116) #11, !dbg !567
  call void @llvm.dbg.declare(metadata ptr %__dummy116, metadata !500, metadata !DIExpression()), !dbg !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2117) #11, !dbg !567
  call void @llvm.dbg.declare(metadata ptr %__dummy2117, metadata !504, metadata !DIExpression()), !dbg !567
  %cmp118 = icmp eq ptr %__dummy116, %__dummy2117, !dbg !567
  %conv119 = zext i1 %cmp118 to i32, !dbg !567
  store i32 1, ptr %tmp120, align 4, !dbg !567
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2117) #11, !dbg !568
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy116) #11, !dbg !568
  %59 = load i32, ptr %tmp120, align 4, !dbg !567
  br label %do.body121, !dbg !568

do.body121:                                       ; preds = %do.body115
  br label %do.cond122, !dbg !569

do.cond122:                                       ; preds = %do.body121
  br label %do.end123, !dbg !569

do.end123:                                        ; preds = %do.cond122
  %60 = load i64, ptr %flags, align 8, !dbg !568
  call void @arch_local_irq_restore(i64 noundef %60) #12, !dbg !568
  br label %do.cond124, !dbg !568

do.cond124:                                       ; preds = %do.end123
  br label %do.end125, !dbg !568

do.end125:                                        ; preds = %do.cond124
  br label %do.cond126, !dbg !566

do.cond126:                                       ; preds = %do.end125
  br label %do.end127, !dbg !566

do.end127:                                        ; preds = %do.cond126
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !571
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #11, !dbg !571
  ret void, !dbg !571
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #5 align 16 !dbg !572 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !578
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !577, metadata !DIExpression()), !dbg !579
  %call = call i64 @arch_local_save_flags() #12, !dbg !580
  store i64 %call, ptr %flags, align 8, !dbg !579
  call void @arch_local_irq_disable() #12, !dbg !581
  %0 = load i64, ptr %flags, align 8, !dbg !582
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !583
  ret i64 %0, !dbg !584
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #5 align 16 !dbg !585 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !592, metadata !DIExpression()), !dbg !593
  ret void, !dbg !594
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !595 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !598 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #5 align 16 !dbg !599 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !603, metadata !DIExpression()), !dbg !604
  %0 = load i64, ptr %flags.addr, align 8, !dbg !605
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #12, !dbg !607
  %tobool = icmp ne i32 %call, 0, !dbg !607
  br i1 %tobool, label %if.end, label %if.then, !dbg !608

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #12, !dbg !609
  br label %if.end, !dbg !609

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !610
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @percpu_counter_sync(ptr noundef %fbc) #0 align 16 !dbg !611 {
entry:
  %fbc.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %count = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %__vpp_verify13 = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  %__dummy50 = alloca i64, align 8
  %__dummy251 = alloca i64, align 8
  %tmp54 = alloca i32, align 4
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !615, metadata !DIExpression()), !dbg !643
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !644
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !616, metadata !DIExpression()), !dbg !645
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #11, !dbg !646
  call void @llvm.dbg.declare(metadata ptr %count, metadata !617, metadata !DIExpression()), !dbg !647
  br label %do.body, !dbg !648

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !649
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !618, metadata !DIExpression()), !dbg !649
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !649
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !621, metadata !DIExpression()), !dbg !649
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !649
  %conv = zext i1 %cmp to i32, !dbg !649
  store i32 1, ptr %tmp, align 4, !dbg !649
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !650
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !650
  %0 = load i32, ptr %tmp, align 4, !dbg !649
  %1 = load ptr, ptr %fbc.addr, align 8, !dbg !650
  %lock = getelementptr inbounds %struct.percpu_counter, ptr %1, i32 0, i32 0, !dbg !650
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #12, !dbg !650
  store i64 %call, ptr %flags, align 8, !dbg !650
  br label %do.cond, !dbg !650

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !650

do.end:                                           ; preds = %do.cond
  call void @__this_cpu_preempt_check(ptr noundef @.str) #12, !dbg !651
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !652
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !622, metadata !DIExpression()), !dbg !652
  br label %do.body2, !dbg !652

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !653
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !625, metadata !DIExpression()), !dbg !653
  store ptr null, ptr %__vpp_verify, align 8, !dbg !653
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !653
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !652
  br label %do.cond3, !dbg !653

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !653

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !654
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !627, metadata !DIExpression()), !dbg !654
  %3 = load ptr, ptr %fbc.addr, align 8, !dbg !654
  %counters = getelementptr inbounds %struct.percpu_counter, ptr %3, i32 0, i32 3, !dbg !654
  %4 = load ptr, ptr %counters, align 8, !dbg !654
  %5 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %4) #13, !dbg !654, !srcloc !655
  store i32 %5, ptr %pfo_val__, align 4, !dbg !654
  %6 = load i32, ptr %pfo_val__, align 4, !dbg !654
  %conv6 = zext i32 %6 to i64, !dbg !654
  %conv7 = trunc i64 %conv6 to i32, !dbg !654
  store i32 %conv7, ptr %tmp5, align 4, !dbg !654
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !652
  %7 = load i32, ptr %tmp5, align 4, !dbg !654
  store i32 %7, ptr %pscr_ret__, align 4, !dbg !652
  %8 = load i32, ptr %pscr_ret__, align 4, !dbg !652
  store i32 %8, ptr %tmp8, align 4, !dbg !652
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !651
  %9 = load i32, ptr %tmp8, align 4, !dbg !652
  store i32 %9, ptr %tmp1, align 4, !dbg !651
  %10 = load i32, ptr %tmp1, align 4, !dbg !651
  %conv9 = sext i32 %10 to i64, !dbg !656
  store i64 %conv9, ptr %count, align 8, !dbg !657
  %11 = load i64, ptr %count, align 8, !dbg !658
  %12 = load ptr, ptr %fbc.addr, align 8, !dbg !659
  %count10 = getelementptr inbounds %struct.percpu_counter, ptr %12, i32 0, i32 1, !dbg !660
  %13 = load i64, ptr %count10, align 8, !dbg !661
  %add = add i64 %13, %11, !dbg !661
  store i64 %add, ptr %count10, align 8, !dbg !661
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #12, !dbg !662
  br label %do.body11, !dbg !662

do.body11:                                        ; preds = %do.end4
  br label %do.body12, !dbg !663

do.body12:                                        ; preds = %do.body11
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify13) #11, !dbg !664
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify13, metadata !629, metadata !DIExpression()), !dbg !664
  store ptr null, ptr %__vpp_verify13, align 8, !dbg !664
  %14 = load ptr, ptr %__vpp_verify13, align 8, !dbg !664
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify13) #11, !dbg !663
  br label %do.cond14, !dbg !664

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !664

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !663

do.body16:                                        ; preds = %do.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #11, !dbg !665
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !633, metadata !DIExpression()), !dbg !665
  %15 = load i64, ptr %count, align 8, !dbg !665
  %conv17 = trunc i64 %15 to i32, !dbg !665
  %sub = sub i32 0, %conv17, !dbg !665
  %16 = call i1 @llvm.is.constant.i32(i32 %sub), !dbg !665
  br i1 %16, label %land.lhs.true, label %cond.false, !dbg !665

land.lhs.true:                                    ; preds = %do.body16
  %17 = load i64, ptr %count, align 8, !dbg !665
  %conv18 = trunc i64 %17 to i32, !dbg !665
  %sub19 = sub i32 0, %conv18, !dbg !665
  %cmp20 = icmp eq i32 %sub19, 1, !dbg !665
  br i1 %cmp20, label %cond.true, label %lor.lhs.false, !dbg !665

lor.lhs.false:                                    ; preds = %land.lhs.true
  %18 = load i64, ptr %count, align 8, !dbg !665
  %conv22 = trunc i64 %18 to i32, !dbg !665
  %sub23 = sub i32 0, %conv22, !dbg !665
  %cmp24 = icmp eq i32 %sub23, -1, !dbg !665
  br i1 %cmp24, label %cond.true, label %cond.false, !dbg !665

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %19 = load i64, ptr %count, align 8, !dbg !665
  %conv26 = trunc i64 %19 to i32, !dbg !665
  %sub27 = sub i32 0, %conv26, !dbg !665
  br label %cond.end, !dbg !665

cond.false:                                       ; preds = %lor.lhs.false, %do.body16
  br label %cond.end, !dbg !665

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub27, %cond.true ], [ 0, %cond.false ], !dbg !665
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !665
  %20 = load i32, ptr %pao_ID__, align 4, !dbg !666
  %cmp28 = icmp eq i32 %20, 1, !dbg !666
  br i1 %cmp28, label %if.then, label %if.else, !dbg !665

if.then:                                          ; preds = %cond.end
  %21 = load ptr, ptr %fbc.addr, align 8, !dbg !667
  %counters30 = getelementptr inbounds %struct.percpu_counter, ptr %21, i32 0, i32 3, !dbg !667
  %22 = load ptr, ptr %counters30, align 8, !dbg !667
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %22, ptr elementtype(i32) %22) #11, !dbg !667, !srcloc !669
  br label %if.end44, !dbg !666

if.else:                                          ; preds = %cond.end
  %23 = load i32, ptr %pao_ID__, align 4, !dbg !670
  %cmp31 = icmp eq i32 %23, -1, !dbg !670
  br i1 %cmp31, label %if.then33, label %if.else35, !dbg !666

if.then33:                                        ; preds = %if.else
  %24 = load ptr, ptr %fbc.addr, align 8, !dbg !671
  %counters34 = getelementptr inbounds %struct.percpu_counter, ptr %24, i32 0, i32 3, !dbg !671
  %25 = load ptr, ptr %counters34, align 8, !dbg !671
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %25, ptr elementtype(i32) %25) #11, !dbg !671, !srcloc !673
  br label %if.end, !dbg !670

if.else35:                                        ; preds = %if.else
  br label %do.body36, !dbg !670

do.body36:                                        ; preds = %if.else35
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #11, !dbg !674
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !635, metadata !DIExpression()), !dbg !674
  %26 = load i64, ptr %count, align 8, !dbg !674
  %conv37 = trunc i64 %26 to i32, !dbg !674
  %sub38 = sub i32 0, %conv37, !dbg !674
  %conv39 = sext i32 %sub38 to i64, !dbg !674
  %and = and i64 %conv39, 4294967295, !dbg !674
  %conv40 = trunc i64 %and to i32, !dbg !674
  store i32 %conv40, ptr %pto_val__, align 4, !dbg !674
  %27 = load ptr, ptr %fbc.addr, align 8, !dbg !674
  %counters41 = getelementptr inbounds %struct.percpu_counter, ptr %27, i32 0, i32 3, !dbg !674
  %28 = load ptr, ptr %counters41, align 8, !dbg !674
  %29 = load i32, ptr %pto_val__, align 4, !dbg !674
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %28, i32 %29, ptr elementtype(i32) %28) #11, !dbg !674, !srcloc !675
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #11, !dbg !670
  br label %do.cond42, !dbg !674

do.cond42:                                        ; preds = %do.body36
  br label %do.end43, !dbg !674

do.end43:                                         ; preds = %do.cond42
  br label %if.end

if.end:                                           ; preds = %do.end43, %if.then33
  br label %if.end44

if.end44:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #11, !dbg !663
  br label %do.cond45, !dbg !665

do.cond45:                                        ; preds = %if.end44
  br label %do.end46, !dbg !665

do.end46:                                         ; preds = %do.cond45
  br label %do.cond47, !dbg !663

do.cond47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !663

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !676

do.body49:                                        ; preds = %do.end48
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy50) #11, !dbg !677
  call void @llvm.dbg.declare(metadata ptr %__dummy50, metadata !639, metadata !DIExpression()), !dbg !677
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy251) #11, !dbg !677
  call void @llvm.dbg.declare(metadata ptr %__dummy251, metadata !642, metadata !DIExpression()), !dbg !677
  %cmp52 = icmp eq ptr %__dummy50, %__dummy251, !dbg !677
  %conv53 = zext i1 %cmp52 to i32, !dbg !677
  store i32 1, ptr %tmp54, align 4, !dbg !677
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy251) #11, !dbg !678
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy50) #11, !dbg !678
  %30 = load i32, ptr %tmp54, align 4, !dbg !677
  %31 = load ptr, ptr %fbc.addr, align 8, !dbg !678
  %lock55 = getelementptr inbounds %struct.percpu_counter, ptr %31, i32 0, i32 0, !dbg !678
  %32 = load i64, ptr %flags, align 8, !dbg !678
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock55, i64 noundef %32) #12, !dbg !678
  br label %do.cond56, !dbg !678

do.cond56:                                        ; preds = %do.body49
  br label %do.end57, !dbg !678

do.end57:                                         ; preds = %do.cond56
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #11, !dbg !679
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !679
  ret void, !dbg !679
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__percpu_counter_sum(ptr noundef %fbc) #0 align 16 !dbg !680 {
entry:
  %fbc.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %cpu = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %pcount = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp10 = alloca ptr, align 8
  %__dummy14 = alloca i64, align 8
  %__dummy215 = alloca i64, align 8
  %tmp18 = alloca i32, align 4
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !684, metadata !DIExpression()), !dbg !705
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #11, !dbg !706
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !685, metadata !DIExpression()), !dbg !707
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #11, !dbg !708
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !686, metadata !DIExpression()), !dbg !709
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !710
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !687, metadata !DIExpression()), !dbg !711
  br label %do.body, !dbg !712

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !688, metadata !DIExpression()), !dbg !713
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !713
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !691, metadata !DIExpression()), !dbg !713
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !713
  %conv = zext i1 %cmp to i32, !dbg !713
  store i32 1, ptr %tmp, align 4, !dbg !713
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !714
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !714
  %0 = load i32, ptr %tmp, align 4, !dbg !713
  %1 = load ptr, ptr %fbc.addr, align 8, !dbg !714
  %lock = getelementptr inbounds %struct.percpu_counter, ptr %1, i32 0, i32 0, !dbg !714
  %call = call i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #12, !dbg !714
  store i64 %call, ptr %flags, align 8, !dbg !714
  br label %do.cond, !dbg !714

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !714

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %fbc.addr, align 8, !dbg !715
  %count = getelementptr inbounds %struct.percpu_counter, ptr %2, i32 0, i32 1, !dbg !716
  %3 = load i64, ptr %count, align 8, !dbg !716
  store i64 %3, ptr %ret, align 8, !dbg !717
  store i32 0, ptr %cpu, align 4, !dbg !718
  br label %for.cond, !dbg !718

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i32, ptr %cpu, align 4, !dbg !719
  %conv1 = sext i32 %4 to i64, !dbg !719
  %call2 = call i64 @find_next_or_bit(ptr noundef @__cpu_online_mask, ptr noundef @__cpu_dying_mask, i64 noundef 64, i64 noundef %conv1) #12, !dbg !719
  %conv3 = trunc i64 %call2 to i32, !dbg !719
  store i32 %conv3, ptr %cpu, align 4, !dbg !719
  %5 = load i32, ptr %cpu, align 4, !dbg !719
  %cmp4 = icmp ult i32 %5, 64, !dbg !719
  br i1 %cmp4, label %for.body, label %for.end, !dbg !718

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcount) #11, !dbg !720
  call void @llvm.dbg.declare(metadata ptr %pcount, metadata !692, metadata !DIExpression()), !dbg !721
  br label %do.body6, !dbg !722

do.body6:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !723
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !696, metadata !DIExpression()), !dbg !723
  store ptr null, ptr %__vpp_verify, align 8, !dbg !723
  %6 = load ptr, ptr %__vpp_verify, align 8, !dbg !723
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !722
  br label %do.cond7, !dbg !723

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !723

do.end8:                                          ; preds = %do.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !724
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !699, metadata !DIExpression()), !dbg !724
  %7 = load ptr, ptr %fbc.addr, align 8, !dbg !724
  %counters = getelementptr inbounds %struct.percpu_counter, ptr %7, i32 0, i32 3, !dbg !724
  %8 = load ptr, ptr %counters, align 8, !dbg !724
  %9 = ptrtoint ptr %8 to i64, !dbg !724
  store i64 %9, ptr %__ptr, align 8, !dbg !724
  %10 = load i64, ptr %__ptr, align 8, !dbg !724
  %11 = load i32, ptr %cpu, align 4, !dbg !724
  %idxprom = sext i32 %11 to i64, !dbg !724
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !724
  %12 = load i64, ptr %arrayidx, align 8, !dbg !724
  %add = add i64 %10, %12, !dbg !724
  %13 = inttoptr i64 %add to ptr, !dbg !724
  store ptr %13, ptr %tmp10, align 8, !dbg !724
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !722
  %14 = load ptr, ptr %tmp10, align 8, !dbg !724
  store ptr %14, ptr %tmp9, align 8, !dbg !723
  %15 = load ptr, ptr %tmp9, align 8, !dbg !722
  store ptr %15, ptr %pcount, align 8, !dbg !721
  %16 = load ptr, ptr %pcount, align 8, !dbg !725
  %17 = load i32, ptr %16, align 4, !dbg !726
  %conv11 = sext i32 %17 to i64, !dbg !726
  %18 = load i64, ptr %ret, align 8, !dbg !727
  %add12 = add i64 %18, %conv11, !dbg !727
  store i64 %add12, ptr %ret, align 8, !dbg !727
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcount) #11, !dbg !728
  br label %for.inc, !dbg !729

for.inc:                                          ; preds = %do.end8
  %19 = load i32, ptr %cpu, align 4, !dbg !719
  %inc = add i32 %19, 1, !dbg !719
  store i32 %inc, ptr %cpu, align 4, !dbg !719
  br label %for.cond, !dbg !719, !llvm.loop !730

for.end:                                          ; preds = %for.cond
  br label %do.body13, !dbg !732

do.body13:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy14) #11, !dbg !733
  call void @llvm.dbg.declare(metadata ptr %__dummy14, metadata !701, metadata !DIExpression()), !dbg !733
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy215) #11, !dbg !733
  call void @llvm.dbg.declare(metadata ptr %__dummy215, metadata !704, metadata !DIExpression()), !dbg !733
  %cmp16 = icmp eq ptr %__dummy14, %__dummy215, !dbg !733
  %conv17 = zext i1 %cmp16 to i32, !dbg !733
  store i32 1, ptr %tmp18, align 4, !dbg !733
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy215) #11, !dbg !734
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy14) #11, !dbg !734
  %20 = load i32, ptr %tmp18, align 4, !dbg !733
  %21 = load ptr, ptr %fbc.addr, align 8, !dbg !734
  %lock19 = getelementptr inbounds %struct.percpu_counter, ptr %21, i32 0, i32 0, !dbg !734
  %22 = load i64, ptr %flags, align 8, !dbg !734
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock19, i64 noundef %22) #12, !dbg !734
  br label %do.cond20, !dbg !734

do.cond20:                                        ; preds = %do.body13
  br label %do.end21, !dbg !734

do.end21:                                         ; preds = %do.cond20
  %23 = load i64, ptr %ret, align 8, !dbg !735
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !736
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #11, !dbg !736
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #11, !dbg !736
  ret i64 %23, !dbg !737
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_or_bit(ptr noundef %addr1, ptr noundef %addr2, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !738 {
entry:
  %retval = alloca i64, align 8
  %addr1.addr = alloca ptr, align 8
  %addr2.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr1, ptr %addr1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr1.addr, metadata !742, metadata !DIExpression()), !dbg !749
  store ptr %addr2, ptr %addr2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr2.addr, metadata !743, metadata !DIExpression()), !dbg !750
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !744, metadata !DIExpression()), !dbg !751
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !745, metadata !DIExpression()), !dbg !752
  %0 = load i64, ptr %size.addr, align 8, !dbg !753
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !753
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !753

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !753
  %cmp = icmp ule i64 %2, 64, !dbg !753
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !753

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !753
  %cmp2 = icmp ugt i64 %3, 0, !dbg !753
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !754

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !755
  call void @llvm.dbg.declare(metadata ptr %val, metadata !746, metadata !DIExpression()), !dbg !756
  %4 = load i64, ptr %offset.addr, align 8, !dbg !757
  %5 = load i64, ptr %size.addr, align 8, !dbg !757
  %cmp3 = icmp uge i64 %4, %5, !dbg !757
  %lnot = xor i1 %cmp3, true, !dbg !757
  %lnot4 = xor i1 %lnot, true, !dbg !757
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !757
  %conv = sext i32 %lnot.ext to i64, !dbg !757
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !757
  %tobool = icmp ne i64 %expval, 0, !dbg !757
  br i1 %tobool, label %if.then5, label %if.end, !dbg !759

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !760
  store i64 %6, ptr %retval, align 8, !dbg !761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !761

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr1.addr, align 8, !dbg !762
  %8 = load i64, ptr %7, align 8, !dbg !763
  %9 = load ptr, ptr %addr2.addr, align 8, !dbg !764
  %10 = load i64, ptr %9, align 8, !dbg !765
  %or = or i64 %8, %10, !dbg !766
  %11 = load i64, ptr %offset.addr, align 8, !dbg !767
  %shl = shl i64 1, %11, !dbg !767
  %sub = sub i64 -1, %shl, !dbg !767
  %add = add i64 %sub, 1, !dbg !767
  %12 = load i64, ptr %size.addr, align 8, !dbg !767
  %sub6 = sub i64 %12, 1, !dbg !767
  %sub7 = sub i64 63, %sub6, !dbg !767
  %shr = lshr i64 -1, %sub7, !dbg !767
  %and = and i64 %add, %shr, !dbg !767
  %add8 = add i64 0, %and, !dbg !767
  %and9 = and i64 %or, %add8, !dbg !768
  store i64 %and9, ptr %val, align 8, !dbg !769
  %13 = load i64, ptr %val, align 8, !dbg !770
  %tobool10 = icmp ne i64 %13, 0, !dbg !770
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !770

cond.true:                                        ; preds = %if.end
  %14 = load i64, ptr %val, align 8, !dbg !771
  %15 = call i1 @llvm.is.constant.i64(i64 %14), !dbg !771
  br i1 %15, label %cond.true11, label %cond.false, !dbg !771

cond.true11:                                      ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !771
  %17 = call i64 @llvm.cttz.i64(i64 %16, i1 true), !dbg !771
  %cast = trunc i64 %17 to i32, !dbg !771
  %conv12 = sext i32 %cast to i64, !dbg !771
  br label %cond.end, !dbg !771

cond.false:                                       ; preds = %cond.true
  %18 = load i64, ptr %val, align 8, !dbg !771
  %call = call i64 @variable__ffs(i64 noundef %18) #12, !dbg !771
  br label %cond.end, !dbg !771

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !771
  br label %cond.end14, !dbg !770

cond.false13:                                     ; preds = %if.end
  %19 = load i64, ptr %size.addr, align 8, !dbg !772
  br label %cond.end14, !dbg !770

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %19, %cond.false13 ], !dbg !770
  store i64 %cond15, ptr %retval, align 8, !dbg !773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !773

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !774
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %20 = load ptr, ptr %addr1.addr, align 8, !dbg !775
  %21 = load ptr, ptr %addr2.addr, align 8, !dbg !776
  %22 = load i64, ptr %size.addr, align 8, !dbg !777
  %23 = load i64, ptr %offset.addr, align 8, !dbg !778
  %call17 = call i64 @_find_next_or_bit(ptr noundef %20, ptr noundef %21, i64 noundef %22, i64 noundef %23) #12, !dbg !779
  store i64 %call17, ptr %retval, align 8, !dbg !780
  br label %return, !dbg !780

return:                                           ; preds = %if.end16, %cleanup
  %24 = load i64, ptr %retval, align 8, !dbg !781
  ret i64 %24, !dbg !781
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__percpu_counter_init_many(ptr noundef %fbc, i64 noundef %amount, i32 noundef %gfp, i32 noundef %nr_counters, ptr noundef %key) #0 align 16 !dbg !782 {
entry:
  %retval = alloca i32, align 4
  %fbc.addr = alloca ptr, align 8
  %amount.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  %nr_counters.addr = alloca i32, align 4
  %key.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %counter_size = alloca i64, align 8
  %counters = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.raw_spinlock, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !791, metadata !DIExpression()), !dbg !809
  store i64 %amount, ptr %amount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %amount.addr, metadata !792, metadata !DIExpression()), !dbg !810
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !793, metadata !DIExpression()), !dbg !811
  store i32 %nr_counters, ptr %nr_counters.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_counters.addr, metadata !794, metadata !DIExpression()), !dbg !812
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !795, metadata !DIExpression()), !dbg !813
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !814
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !796, metadata !DIExpression()), !dbg !815
  call void @llvm.lifetime.start.p0(i64 8, ptr %counter_size) #11, !dbg !816
  call void @llvm.dbg.declare(metadata ptr %counter_size, metadata !797, metadata !DIExpression()), !dbg !817
  call void @llvm.lifetime.start.p0(i64 8, ptr %counters) #11, !dbg !818
  call void @llvm.dbg.declare(metadata ptr %counters, metadata !802, metadata !DIExpression()), !dbg !819
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !820
  call void @llvm.dbg.declare(metadata ptr %i, metadata !803, metadata !DIExpression()), !dbg !821
  store i64 4, ptr %counter_size, align 8, !dbg !822
  %0 = load i32, ptr %nr_counters.addr, align 4, !dbg !823
  %conv = zext i32 %0 to i64, !dbg !823
  %1 = load i64, ptr %counter_size, align 8, !dbg !824
  %mul = mul i64 %conv, %1, !dbg !825
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !826
  %call = call noalias ptr @__alloc_percpu_gfp(i64 noundef %mul, i64 noundef 4, i32 noundef %2) #14, !dbg !827
  store ptr %call, ptr %counters, align 8, !dbg !828
  %3 = load ptr, ptr %counters, align 8, !dbg !829
  %tobool = icmp ne ptr %3, null, !dbg !829
  br i1 %tobool, label %if.end, label %if.then, !dbg !831

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %fbc.addr, align 8, !dbg !832
  %arrayidx = getelementptr %struct.percpu_counter, ptr %4, i64 0, !dbg !832
  %counters1 = getelementptr inbounds %struct.percpu_counter, ptr %arrayidx, i32 0, i32 3, !dbg !834
  store ptr null, ptr %counters1, align 8, !dbg !835
  store i32 -12, ptr %retval, align 4, !dbg !836
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !836

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !837
  br label %for.cond, !dbg !839

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4, !dbg !840
  %6 = load i32, ptr %nr_counters.addr, align 4, !dbg !842
  %cmp = icmp ult i32 %5, %6, !dbg !843
  br i1 %cmp, label %for.body, label %for.end, !dbg !844

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !845

do.body:                                          ; preds = %for.body
  %7 = load ptr, ptr %fbc.addr, align 8, !dbg !847
  %8 = load i32, ptr %i, align 4, !dbg !847
  %idxprom = zext i32 %8 to i64, !dbg !847
  %arrayidx3 = getelementptr %struct.percpu_counter, ptr %7, i64 %idxprom, !dbg !847
  %lock = getelementptr inbounds %struct.percpu_counter, ptr %arrayidx3, i32 0, i32 0, !dbg !847
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !847
  %9 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !847
  %counter = getelementptr inbounds %struct.atomic_t, ptr %9, i32 0, i32 0, !dbg !847
  store i32 0, ptr %counter, align 4, !dbg !847
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !847
  br label %do.cond, !dbg !847

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !847

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !849

do.body4:                                         ; preds = %do.end
  %10 = load ptr, ptr %key.addr, align 8, !dbg !850
  br label %do.cond5, !dbg !850

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !850

do.end6:                                          ; preds = %do.cond5
  %11 = load ptr, ptr %fbc.addr, align 8, !dbg !852
  %12 = load i32, ptr %i, align 4, !dbg !853
  %idxprom7 = zext i32 %12 to i64, !dbg !852
  %arrayidx8 = getelementptr %struct.percpu_counter, ptr %11, i64 %idxprom7, !dbg !852
  %list = getelementptr inbounds %struct.percpu_counter, ptr %arrayidx8, i32 0, i32 2, !dbg !854
  call void @INIT_LIST_HEAD(ptr noundef %list) #12, !dbg !855
  %13 = load i64, ptr %amount.addr, align 8, !dbg !856
  %14 = load ptr, ptr %fbc.addr, align 8, !dbg !857
  %15 = load i32, ptr %i, align 4, !dbg !858
  %idxprom9 = zext i32 %15 to i64, !dbg !857
  %arrayidx10 = getelementptr %struct.percpu_counter, ptr %14, i64 %idxprom9, !dbg !857
  %count = getelementptr inbounds %struct.percpu_counter, ptr %arrayidx10, i32 0, i32 1, !dbg !859
  store i64 %13, ptr %count, align 8, !dbg !860
  %16 = load ptr, ptr %counters, align 8, !dbg !861
  %17 = load i32, ptr %i, align 4, !dbg !862
  %conv11 = zext i32 %17 to i64, !dbg !862
  %18 = load i64, ptr %counter_size, align 8, !dbg !863
  %mul12 = mul i64 %conv11, %18, !dbg !864
  %add.ptr = getelementptr i8, ptr %16, i64 %mul12, !dbg !865
  %19 = load ptr, ptr %fbc.addr, align 8, !dbg !866
  %20 = load i32, ptr %i, align 4, !dbg !867
  %idxprom13 = zext i32 %20 to i64, !dbg !866
  %arrayidx14 = getelementptr %struct.percpu_counter, ptr %19, i64 %idxprom13, !dbg !866
  %counters15 = getelementptr inbounds %struct.percpu_counter, ptr %arrayidx14, i32 0, i32 3, !dbg !868
  store ptr %add.ptr, ptr %counters15, align 8, !dbg !869
  %21 = load ptr, ptr %fbc.addr, align 8, !dbg !870
  %22 = load i32, ptr %i, align 4, !dbg !871
  %idxprom16 = zext i32 %22 to i64, !dbg !870
  %arrayidx17 = getelementptr %struct.percpu_counter, ptr %21, i64 %idxprom16, !dbg !870
  call void @debug_percpu_counter_activate(ptr noundef %arrayidx17) #12, !dbg !872
  br label %for.inc, !dbg !873

for.inc:                                          ; preds = %do.end6
  %23 = load i32, ptr %i, align 4, !dbg !874
  %inc = add i32 %23, 1, !dbg !874
  store i32 %inc, ptr %i, align 4, !dbg !874
  br label %for.cond, !dbg !875, !llvm.loop !876

for.end:                                          ; preds = %for.cond
  br label %do.body18, !dbg !878

do.body18:                                        ; preds = %for.end
  br label %do.body19, !dbg !879

do.body19:                                        ; preds = %do.body18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !804, metadata !DIExpression()), !dbg !880
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !880
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !808, metadata !DIExpression()), !dbg !880
  %cmp20 = icmp eq ptr %__dummy, %__dummy2, !dbg !880
  %conv21 = zext i1 %cmp20 to i32, !dbg !880
  store i32 1, ptr %tmp, align 4, !dbg !880
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !881
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !881
  %24 = load i32, ptr %tmp, align 4, !dbg !880
  %call22 = call ptr @spinlock_check(ptr noundef @percpu_counters_lock) #12, !dbg !881
  %call23 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call22) #12, !dbg !881
  store i64 %call23, ptr %flags, align 8, !dbg !881
  br label %do.cond24, !dbg !881

do.cond24:                                        ; preds = %do.body19
  br label %do.end25, !dbg !881

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !879

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !879

do.end27:                                         ; preds = %do.cond26
  store i32 0, ptr %i, align 4, !dbg !882
  br label %for.cond28, !dbg !884

for.cond28:                                       ; preds = %for.inc35, %do.end27
  %25 = load i32, ptr %i, align 4, !dbg !885
  %26 = load i32, ptr %nr_counters.addr, align 4, !dbg !887
  %cmp29 = icmp ult i32 %25, %26, !dbg !888
  br i1 %cmp29, label %for.body31, label %for.end37, !dbg !889

for.body31:                                       ; preds = %for.cond28
  %27 = load ptr, ptr %fbc.addr, align 8, !dbg !890
  %28 = load i32, ptr %i, align 4, !dbg !891
  %idxprom32 = zext i32 %28 to i64, !dbg !890
  %arrayidx33 = getelementptr %struct.percpu_counter, ptr %27, i64 %idxprom32, !dbg !890
  %list34 = getelementptr inbounds %struct.percpu_counter, ptr %arrayidx33, i32 0, i32 2, !dbg !892
  call void @list_add(ptr noundef %list34, ptr noundef @percpu_counters) #12, !dbg !893
  br label %for.inc35, !dbg !893

for.inc35:                                        ; preds = %for.body31
  %29 = load i32, ptr %i, align 4, !dbg !894
  %inc36 = add i32 %29, 1, !dbg !894
  store i32 %inc36, ptr %i, align 4, !dbg !894
  br label %for.cond28, !dbg !895, !llvm.loop !896

for.end37:                                        ; preds = %for.cond28
  %30 = load i64, ptr %flags, align 8, !dbg !898
  call void @spin_unlock_irqrestore(ptr noundef @percpu_counters_lock, i64 noundef %30) #12, !dbg !899
  store i32 0, ptr %retval, align 4, !dbg !900
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !900

cleanup:                                          ; preds = %for.end37, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !901
  call void @llvm.lifetime.end.p0(i64 8, ptr %counters) #11, !dbg !901
  call void @llvm.lifetime.end.p0(i64 8, ptr %counter_size) #11, !dbg !901
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !901
  %31 = load i32, ptr %retval, align 4, !dbg !901
  ret i32 %31, !dbg !901
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !902 dso_local noalias ptr @__alloc_percpu_gfp(i64 noundef, i64 noundef, i32 noundef) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !906 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !911, metadata !DIExpression()), !dbg !912
  br label %do.body, !dbg !913

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !914

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !916

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !914

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !918
  %1 = load ptr, ptr %list.addr, align 8, !dbg !918
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !918
  store volatile ptr %0, ptr %next, align 8, !dbg !918
  br label %do.end3, !dbg !918

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !914

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !920

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !921

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !923

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !921

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !925
  %3 = load ptr, ptr %list.addr, align 8, !dbg !925
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !925
  store volatile ptr %2, ptr %prev, align 8, !dbg !925
  br label %do.end9, !dbg !925

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !921

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !927
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_percpu_counter_activate(ptr noundef %fbc) #4 align 16 !dbg !928 {
entry:
  %fbc.addr = alloca ptr, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !930, metadata !DIExpression()), !dbg !931
  ret void, !dbg !932
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !933 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !939, metadata !DIExpression()), !dbg !940
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !941
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !942
  ret ptr %1, !dbg !943
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !944 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !948, metadata !DIExpression()), !dbg !950
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !949, metadata !DIExpression()), !dbg !951
  %0 = load ptr, ptr %new.addr, align 8, !dbg !952
  %1 = load ptr, ptr %head.addr, align 8, !dbg !953
  %2 = load ptr, ptr %head.addr, align 8, !dbg !954
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !955
  %3 = load ptr, ptr %next, align 8, !dbg !955
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #12, !dbg !956
  ret void, !dbg !957
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !958 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !962, metadata !DIExpression()), !dbg !968
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !963, metadata !DIExpression()), !dbg !969
  br label %do.body, !dbg !970

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !971
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !964, metadata !DIExpression()), !dbg !971
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !971
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !967, metadata !DIExpression()), !dbg !971
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !971
  %conv = zext i1 %cmp to i32, !dbg !971
  store i32 1, ptr %tmp, align 4, !dbg !971
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !972
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !972
  %0 = load i32, ptr %tmp, align 4, !dbg !971
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !972
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !972
  %3 = load i64, ptr %flags.addr, align 8, !dbg !972
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #12, !dbg !972
  br label %do.end, !dbg !972

do.end:                                           ; preds = %do.body
  ret void, !dbg !973
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @percpu_counter_destroy_many(ptr noundef %fbc, i32 noundef %nr_counters) #0 align 16 !dbg !974 {
entry:
  %fbc.addr = alloca ptr, align 8
  %nr_counters.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp37 = alloca i32, align 4
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !978, metadata !DIExpression()), !dbg !993
  store i32 %nr_counters, ptr %nr_counters.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_counters.addr, metadata !979, metadata !DIExpression()), !dbg !994
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !995
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !980, metadata !DIExpression()), !dbg !996
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !997
  call void @llvm.dbg.declare(metadata ptr %i, metadata !981, metadata !DIExpression()), !dbg !998
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !982, metadata !DIExpression()), !dbg !999
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !999
  %tobool = icmp ne ptr %0, null, !dbg !999
  %lnot = xor i1 %tobool, true, !dbg !999
  %lnot1 = xor i1 %lnot, true, !dbg !999
  %lnot2 = xor i1 %lnot1, true, !dbg !999
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !999
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !999
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !1000
  %tobool3 = icmp ne i32 %1, 0, !dbg !1000
  %lnot4 = xor i1 %tobool3, true, !dbg !1000
  %lnot6 = xor i1 %lnot4, true, !dbg !1000
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1000
  %conv = sext i32 %lnot.ext7 to i64, !dbg !1000
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1000
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1000
  br i1 %tobool8, label %if.then, label %if.end, !dbg !999

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1000

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !1001
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !985, metadata !DIExpression()), !dbg !1001
  store i32 2307, ptr %__flags, align 4, !dbg !1001
  br label %do.body9, !dbg !1001

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !1002

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !1002

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !1001

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !1004
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 198, i32 %2, i64 12) #11, !dbg !1004, !srcloc !1006
  br label %do.cond11, !dbg !1004

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !1004

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !1001

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !1007

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !1007

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !1000
  br label %do.cond16, !dbg !1001

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !1001

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !1001

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !999
  %tobool18 = icmp ne i32 %3, 0, !dbg !999
  %lnot19 = xor i1 %tobool18, true, !dbg !999
  %lnot21 = xor i1 %lnot19, true, !dbg !999
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !999
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !999
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !999
  store i64 %expval24, ptr %tmp, align 8, !dbg !1000
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1009
  %4 = load i64, ptr %tmp, align 8, !dbg !999
  %tobool25 = icmp ne i64 %4, 0, !dbg !1009
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !1010

if.then26:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1011

if.end27:                                         ; preds = %if.end
  %5 = load ptr, ptr %fbc.addr, align 8, !dbg !1012
  %arrayidx = getelementptr %struct.percpu_counter, ptr %5, i64 0, !dbg !1012
  %counters = getelementptr inbounds %struct.percpu_counter, ptr %arrayidx, i32 0, i32 3, !dbg !1014
  %6 = load ptr, ptr %counters, align 8, !dbg !1014
  %tobool28 = icmp ne ptr %6, null, !dbg !1012
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !1015

if.then29:                                        ; preds = %if.end27
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1016

if.end30:                                         ; preds = %if.end27
  store i32 0, ptr %i, align 4, !dbg !1017
  br label %for.cond, !dbg !1019

for.cond:                                         ; preds = %for.inc, %if.end30
  %7 = load i32, ptr %i, align 4, !dbg !1020
  %8 = load i32, ptr %nr_counters.addr, align 4, !dbg !1022
  %cmp = icmp ult i32 %7, %8, !dbg !1023
  br i1 %cmp, label %for.body, label %for.end, !dbg !1024

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %fbc.addr, align 8, !dbg !1025
  %10 = load i32, ptr %i, align 4, !dbg !1026
  %idxprom = zext i32 %10 to i64, !dbg !1025
  %arrayidx32 = getelementptr %struct.percpu_counter, ptr %9, i64 %idxprom, !dbg !1025
  call void @debug_percpu_counter_deactivate(ptr noundef %arrayidx32) #12, !dbg !1027
  br label %for.inc, !dbg !1027

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !dbg !1028
  %inc = add i32 %11, 1, !dbg !1028
  store i32 %inc, ptr %i, align 4, !dbg !1028
  br label %for.cond, !dbg !1029, !llvm.loop !1030

for.end:                                          ; preds = %for.cond
  br label %do.body33, !dbg !1032

do.body33:                                        ; preds = %for.end
  br label %do.body34, !dbg !1033

do.body34:                                        ; preds = %do.body33
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !1034
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !988, metadata !DIExpression()), !dbg !1034
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !1034
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !992, metadata !DIExpression()), !dbg !1034
  %cmp35 = icmp eq ptr %__dummy, %__dummy2, !dbg !1034
  %conv36 = zext i1 %cmp35 to i32, !dbg !1034
  store i32 1, ptr %tmp37, align 4, !dbg !1034
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !1035
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !1035
  %12 = load i32, ptr %tmp37, align 4, !dbg !1034
  %call = call ptr @spinlock_check(ptr noundef @percpu_counters_lock) #12, !dbg !1035
  %call38 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #12, !dbg !1035
  store i64 %call38, ptr %flags, align 8, !dbg !1035
  br label %do.cond39, !dbg !1035

do.cond39:                                        ; preds = %do.body34
  br label %do.end40, !dbg !1035

do.end40:                                         ; preds = %do.cond39
  br label %do.cond41, !dbg !1033

do.cond41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !1033

do.end42:                                         ; preds = %do.cond41
  store i32 0, ptr %i, align 4, !dbg !1036
  br label %for.cond43, !dbg !1038

for.cond43:                                       ; preds = %for.inc49, %do.end42
  %13 = load i32, ptr %i, align 4, !dbg !1039
  %14 = load i32, ptr %nr_counters.addr, align 4, !dbg !1041
  %cmp44 = icmp ult i32 %13, %14, !dbg !1042
  br i1 %cmp44, label %for.body46, label %for.end51, !dbg !1043

for.body46:                                       ; preds = %for.cond43
  %15 = load ptr, ptr %fbc.addr, align 8, !dbg !1044
  %16 = load i32, ptr %i, align 4, !dbg !1045
  %idxprom47 = zext i32 %16 to i64, !dbg !1044
  %arrayidx48 = getelementptr %struct.percpu_counter, ptr %15, i64 %idxprom47, !dbg !1044
  %list = getelementptr inbounds %struct.percpu_counter, ptr %arrayidx48, i32 0, i32 2, !dbg !1046
  call void @list_del(ptr noundef %list) #12, !dbg !1047
  br label %for.inc49, !dbg !1047

for.inc49:                                        ; preds = %for.body46
  %17 = load i32, ptr %i, align 4, !dbg !1048
  %inc50 = add i32 %17, 1, !dbg !1048
  store i32 %inc50, ptr %i, align 4, !dbg !1048
  br label %for.cond43, !dbg !1049, !llvm.loop !1050

for.end51:                                        ; preds = %for.cond43
  %18 = load i64, ptr %flags, align 8, !dbg !1052
  call void @spin_unlock_irqrestore(ptr noundef @percpu_counters_lock, i64 noundef %18) #12, !dbg !1053
  %19 = load ptr, ptr %fbc.addr, align 8, !dbg !1054
  %arrayidx52 = getelementptr %struct.percpu_counter, ptr %19, i64 0, !dbg !1054
  %counters53 = getelementptr inbounds %struct.percpu_counter, ptr %arrayidx52, i32 0, i32 3, !dbg !1055
  %20 = load ptr, ptr %counters53, align 8, !dbg !1055
  call void @free_percpu(ptr noundef %20) #12, !dbg !1056
  store i32 0, ptr %i, align 4, !dbg !1057
  br label %for.cond54, !dbg !1059

for.cond54:                                       ; preds = %for.inc61, %for.end51
  %21 = load i32, ptr %i, align 4, !dbg !1060
  %22 = load i32, ptr %nr_counters.addr, align 4, !dbg !1062
  %cmp55 = icmp ult i32 %21, %22, !dbg !1063
  br i1 %cmp55, label %for.body57, label %for.end63, !dbg !1064

for.body57:                                       ; preds = %for.cond54
  %23 = load ptr, ptr %fbc.addr, align 8, !dbg !1065
  %24 = load i32, ptr %i, align 4, !dbg !1066
  %idxprom58 = zext i32 %24 to i64, !dbg !1065
  %arrayidx59 = getelementptr %struct.percpu_counter, ptr %23, i64 %idxprom58, !dbg !1065
  %counters60 = getelementptr inbounds %struct.percpu_counter, ptr %arrayidx59, i32 0, i32 3, !dbg !1067
  store ptr null, ptr %counters60, align 8, !dbg !1068
  br label %for.inc61, !dbg !1065

for.inc61:                                        ; preds = %for.body57
  %25 = load i32, ptr %i, align 4, !dbg !1069
  %inc62 = add i32 %25, 1, !dbg !1069
  store i32 %inc62, ptr %i, align 4, !dbg !1069
  br label %for.cond54, !dbg !1070, !llvm.loop !1071

for.end63:                                        ; preds = %for.cond54
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1073
  br label %cleanup, !dbg !1073

cleanup:                                          ; preds = %for.end63, %if.then29, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !1073
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !1073
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1073

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @debug_percpu_counter_deactivate(ptr noundef %fbc) #4 align 16 !dbg !1074 {
entry:
  %fbc.addr = alloca ptr, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !1076, metadata !DIExpression()), !dbg !1077
  ret void, !dbg !1078
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !1079 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1081, metadata !DIExpression()), !dbg !1082
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1083
  call void @__list_del_entry(ptr noundef %0) #12, !dbg !1084
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1085
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !1086
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !1087
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !1088
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !1089
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !1090
  ret void, !dbg !1091
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1092 dso_local void @free_percpu(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__percpu_counter_compare(ptr noundef %fbc, i64 noundef %rhs, i32 noundef %batch) #0 align 16 !dbg !1095 {
entry:
  %retval = alloca i32, align 4
  %fbc.addr = alloca ptr, align 8
  %rhs.addr = alloca i64, align 8
  %batch.addr = alloca i32, align 4
  %count = alloca i64, align 8
  %__x = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !1099, metadata !DIExpression()), !dbg !1106
  store i64 %rhs, ptr %rhs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rhs.addr, metadata !1100, metadata !DIExpression()), !dbg !1107
  store i32 %batch, ptr %batch.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %batch.addr, metadata !1101, metadata !DIExpression()), !dbg !1108
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #11, !dbg !1109
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1102, metadata !DIExpression()), !dbg !1110
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !1111
  %call = call i64 @percpu_counter_read(ptr noundef %0) #12, !dbg !1112
  store i64 %call, ptr %count, align 8, !dbg !1113
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x) #11, !dbg !1114
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !1103, metadata !DIExpression()), !dbg !1114
  %1 = load i64, ptr %count, align 8, !dbg !1114
  %2 = load i64, ptr %rhs.addr, align 8, !dbg !1114
  %sub = sub i64 %1, %2, !dbg !1114
  store i64 %sub, ptr %__x, align 8, !dbg !1114
  %3 = load i64, ptr %__x, align 8, !dbg !1114
  %cmp = icmp slt i64 %3, 0, !dbg !1114
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1114

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr %__x, align 8, !dbg !1114
  %sub1 = sub i64 0, %4, !dbg !1114
  br label %cond.end, !dbg !1114

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr %__x, align 8, !dbg !1114
  br label %cond.end, !dbg !1114

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub1, %cond.true ], [ %5, %cond.false ], !dbg !1114
  store i64 %cond, ptr %tmp, align 8, !dbg !1114
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x) #11, !dbg !1115
  %6 = load i64, ptr %tmp, align 8, !dbg !1114
  %7 = load i32, ptr %batch.addr, align 4, !dbg !1116
  %call2 = call i32 @num_online_cpus() #12, !dbg !1117
  %mul = mul i32 %7, %call2, !dbg !1118
  %conv = zext i32 %mul to i64, !dbg !1119
  %cmp3 = icmp sgt i64 %6, %conv, !dbg !1120
  br i1 %cmp3, label %if.then, label %if.end, !dbg !1121

if.then:                                          ; preds = %cond.end
  %8 = load i64, ptr %count, align 8, !dbg !1122
  %9 = load i64, ptr %rhs.addr, align 8, !dbg !1125
  %cmp5 = icmp sgt i64 %8, %9, !dbg !1126
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !1127

if.then7:                                         ; preds = %if.then
  store i32 1, ptr %retval, align 4, !dbg !1128
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1128

if.else:                                          ; preds = %if.then
  store i32 -1, ptr %retval, align 4, !dbg !1129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1129

if.end:                                           ; preds = %cond.end
  %10 = load ptr, ptr %fbc.addr, align 8, !dbg !1130
  %call8 = call i64 @percpu_counter_sum(ptr noundef %10) #12, !dbg !1131
  store i64 %call8, ptr %count, align 8, !dbg !1132
  %11 = load i64, ptr %count, align 8, !dbg !1133
  %12 = load i64, ptr %rhs.addr, align 8, !dbg !1135
  %cmp9 = icmp sgt i64 %11, %12, !dbg !1136
  br i1 %cmp9, label %if.then11, label %if.else12, !dbg !1137

if.then11:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1138

if.else12:                                        ; preds = %if.end
  %13 = load i64, ptr %count, align 8, !dbg !1139
  %14 = load i64, ptr %rhs.addr, align 8, !dbg !1141
  %cmp13 = icmp slt i64 %13, %14, !dbg !1142
  br i1 %cmp13, label %if.then15, label %if.else16, !dbg !1143

if.then15:                                        ; preds = %if.else12
  store i32 -1, ptr %retval, align 4, !dbg !1144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1144

if.else16:                                        ; preds = %if.else12
  store i32 0, ptr %retval, align 4, !dbg !1145
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1145

cleanup:                                          ; preds = %if.else16, %if.then15, %if.then11, %if.else, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #11, !dbg !1146
  %15 = load i32, ptr %retval, align 4, !dbg !1146
  ret i32 %15, !dbg !1146
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @percpu_counter_read(ptr noundef %fbc) #4 align 16 !dbg !1147 {
entry:
  %fbc.addr = alloca ptr, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !1149, metadata !DIExpression()), !dbg !1150
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !1151
  %count = getelementptr inbounds %struct.percpu_counter, ptr %0, i32 0, i32 1, !dbg !1152
  %1 = load i64, ptr %count, align 8, !dbg !1152
  ret i64 %1, !dbg !1153
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @num_online_cpus() #5 align 16 !dbg !1154 {
entry:
  %call = call i32 @raw_atomic_read(ptr noundef @__num_online_cpus) #12, !dbg !1157
  ret i32 %call, !dbg !1158
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @percpu_counter_sum(ptr noundef %fbc) #4 align 16 !dbg !1159 {
entry:
  %fbc.addr = alloca ptr, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !1161, metadata !DIExpression()), !dbg !1162
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !1163
  %call = call i64 @__percpu_counter_sum(ptr noundef %0) #12, !dbg !1164
  ret i64 %call, !dbg !1165
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_percpu_counter__213_294_percpu_counter_startup6() #10 section ".init.text" align 16 !dbg !1166 {
entry:
  %call = call i32 @percpu_counter_startup() #15, !dbg !1169
  ret i32 %call, !dbg !1169
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @percpu_counter_startup() #10 section ".init.text" align 16 !dbg !1170 {
entry:
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on24 = alloca i32, align 4
  %__flags41 = alloca i32, align 4
  %tmp54 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1172, metadata !DIExpression()), !dbg !1184
  %call = call i32 @cpuhp_setup_state(i32 noundef 202, ptr noundef @.str.3, ptr noundef @compute_batch_value, ptr noundef null) #12, !dbg !1185
  store i32 %call, ptr %ret, align 4, !dbg !1186
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1187
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1173, metadata !DIExpression()), !dbg !1187
  %0 = load i32, ptr %ret, align 4, !dbg !1187
  %cmp = icmp slt i32 %0, 0, !dbg !1187
  %lnot = xor i1 %cmp, true, !dbg !1187
  %lnot1 = xor i1 %lnot, true, !dbg !1187
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1187
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1187
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !1188
  %tobool = icmp ne i32 %1, 0, !dbg !1188
  %lnot2 = xor i1 %tobool, true, !dbg !1188
  %lnot4 = xor i1 %lnot2, true, !dbg !1188
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !1188
  %conv = sext i32 %lnot.ext5 to i64, !dbg !1188
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1188
  %tobool6 = icmp ne i64 %expval, 0, !dbg !1188
  br i1 %tobool6, label %if.then, label %if.end, !dbg !1187

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1188

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !1189
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1175, metadata !DIExpression()), !dbg !1189
  store i32 2305, ptr %__flags, align 4, !dbg !1189
  br label %do.body7, !dbg !1189

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !1190

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !1190

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !1189

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !1192
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 287, i32 %2, i64 12) #11, !dbg !1192, !srcloc !1194
  br label %do.cond9, !dbg !1192

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1192

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !1189

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !1195

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1195

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !1188
  br label %do.cond14, !dbg !1189

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !1189

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !1189

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !1187
  %tobool16 = icmp ne i32 %3, 0, !dbg !1187
  %lnot17 = xor i1 %tobool16, true, !dbg !1187
  %lnot19 = xor i1 %lnot17, true, !dbg !1187
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !1187
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !1187
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !1187
  store i64 %expval22, ptr %tmp, align 8, !dbg !1188
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1197
  %4 = load i64, ptr %tmp, align 8, !dbg !1187
  %call23 = call i32 @cpuhp_setup_state_nocalls(i32 noundef 31, ptr noundef @.str.4, ptr noundef null, ptr noundef @percpu_counter_cpu_dead) #12, !dbg !1198
  store i32 %call23, ptr %ret, align 4, !dbg !1199
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on24) #11, !dbg !1200
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on24, metadata !1178, metadata !DIExpression()), !dbg !1200
  %5 = load i32, ptr %ret, align 4, !dbg !1200
  %cmp25 = icmp slt i32 %5, 0, !dbg !1200
  %lnot27 = xor i1 %cmp25, true, !dbg !1200
  %lnot29 = xor i1 %lnot27, true, !dbg !1200
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !1200
  store i32 %lnot.ext30, ptr %__ret_warn_on24, align 4, !dbg !1200
  %6 = load i32, ptr %__ret_warn_on24, align 4, !dbg !1201
  %tobool31 = icmp ne i32 %6, 0, !dbg !1201
  %lnot32 = xor i1 %tobool31, true, !dbg !1201
  %lnot34 = xor i1 %lnot32, true, !dbg !1201
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !1201
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !1201
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !1201
  %tobool38 = icmp ne i64 %expval37, 0, !dbg !1201
  br i1 %tobool38, label %if.then39, label %if.end53, !dbg !1200

if.then39:                                        ; preds = %if.end
  br label %do.body40, !dbg !1201

do.body40:                                        ; preds = %if.then39
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags41) #11, !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %__flags41, metadata !1180, metadata !DIExpression()), !dbg !1202
  store i32 2305, ptr %__flags41, align 4, !dbg !1202
  br label %do.body42, !dbg !1202

do.body42:                                        ; preds = %do.body40
  br label %do.cond43, !dbg !1203

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !1203

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !1202

do.body45:                                        ; preds = %do.end44
  %7 = load i32, ptr %__flags41, align 4, !dbg !1205
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 291, i32 %7, i64 12) #11, !dbg !1205, !srcloc !1207
  br label %do.cond46, !dbg !1205

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !1205

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !1202

do.body48:                                        ; preds = %do.end47
  br label %do.cond49, !dbg !1208

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !1208

do.end50:                                         ; preds = %do.cond49
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags41) #11, !dbg !1201
  br label %do.cond51, !dbg !1202

do.cond51:                                        ; preds = %do.end50
  br label %do.end52, !dbg !1202

do.end52:                                         ; preds = %do.cond51
  br label %if.end53, !dbg !1202

if.end53:                                         ; preds = %do.end52, %if.end
  %8 = load i32, ptr %__ret_warn_on24, align 4, !dbg !1200
  %tobool55 = icmp ne i32 %8, 0, !dbg !1200
  %lnot56 = xor i1 %tobool55, true, !dbg !1200
  %lnot58 = xor i1 %lnot56, true, !dbg !1200
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !1200
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !1200
  %expval61 = call i64 @llvm.expect.i64(i64 %conv60, i64 0), !dbg !1200
  store i64 %expval61, ptr %tmp54, align 8, !dbg !1201
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on24) #11, !dbg !1210
  %9 = load i64, ptr %tmp54, align 8, !dbg !1200
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !1211
  ret i32 0, !dbg !1212
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #5 align 16 !dbg !1213 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1218, metadata !DIExpression()), !dbg !1219
  %0 = load i64, ptr %word.addr, align 8, !dbg !1220
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #13, !dbg !1221, !srcloc !1222
  store i64 %1, ptr %word.addr, align 8, !dbg !1221
  %2 = load i64, ptr %word.addr, align 8, !dbg !1223
  ret i64 %2, !dbg !1224
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1225 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #5 align 16 !dbg !1226 {
entry:
  %call = call i64 @native_save_fl() #12, !dbg !1227
  ret i64 %call, !dbg !1228
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #5 align 16 !dbg !1229 {
entry:
  call void @native_irq_disable() #12, !dbg !1232
  ret void, !dbg !1233
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #5 align 16 !dbg !1234 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !1237
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1236, metadata !DIExpression()), !dbg !1238
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #11, !dbg !1239, !srcloc !1240
  %0 = load i64, ptr %flags, align 8, !dbg !1241
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !1242
  ret i64 %0, !dbg !1243
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #5 align 16 !dbg !1244 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !1245, !srcloc !1246
  ret void, !dbg !1247
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #5 align 16 !dbg !1248 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1252, metadata !DIExpression()), !dbg !1253
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1254
  %and = and i64 %0, 512, !dbg !1255
  %tobool = icmp ne i64 %and, 0, !dbg !1256
  %lnot = xor i1 %tobool, true, !dbg !1256
  %lnot.ext = zext i1 %lnot to i32, !dbg !1256
  ret i32 %lnot.ext, !dbg !1257
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #5 align 16 !dbg !1258 {
entry:
  call void @native_irq_enable() #12, !dbg !1259
  ret void, !dbg !1260
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #5 align 16 !dbg !1261 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !1262, !srcloc !1263
  ret void, !dbg !1264
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1265 dso_local i64 @_find_next_or_bit(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !1266 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1270, metadata !DIExpression()), !dbg !1273
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1271, metadata !DIExpression()), !dbg !1274
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1272, metadata !DIExpression()), !dbg !1275
  %0 = load ptr, ptr %new.addr, align 8, !dbg !1276
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !1278
  %2 = load ptr, ptr %next.addr, align 8, !dbg !1279
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12, !dbg !1280
  br i1 %call, label %if.end, label %if.then, !dbg !1281

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !1282

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !1283
  %4 = load ptr, ptr %next.addr, align 8, !dbg !1284
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !1285
  store ptr %3, ptr %prev1, align 8, !dbg !1286
  %5 = load ptr, ptr %next.addr, align 8, !dbg !1287
  %6 = load ptr, ptr %new.addr, align 8, !dbg !1288
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !1289
  store ptr %5, ptr %next2, align 8, !dbg !1290
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !1291
  %8 = load ptr, ptr %new.addr, align 8, !dbg !1292
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !1293
  store ptr %7, ptr %prev3, align 8, !dbg !1294
  br label %do.body, !dbg !1295

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !1296

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !1298

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !1296

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !1300
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !1300
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !1300
  store volatile ptr %9, ptr %next6, align 8, !dbg !1300
  br label %do.end7, !dbg !1300

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !1296

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !1302
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !1303 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1309, metadata !DIExpression()), !dbg !1312
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1310, metadata !DIExpression()), !dbg !1313
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1311, metadata !DIExpression()), !dbg !1314
  ret i1 true, !dbg !1315
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !1316 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1318, metadata !DIExpression()), !dbg !1319
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1320
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #12, !dbg !1322
  br i1 %call, label %if.end, label %if.then, !dbg !1323

if.then:                                          ; preds = %entry
  br label %return, !dbg !1324

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1325
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !1326
  %2 = load ptr, ptr %prev, align 8, !dbg !1326
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !1327
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !1328
  %4 = load ptr, ptr %next, align 8, !dbg !1328
  call void @__list_del(ptr noundef %2, ptr noundef %4) #12, !dbg !1329
  br label %return, !dbg !1330

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1330
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !1331 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1335, metadata !DIExpression()), !dbg !1336
  ret i1 true, !dbg !1337
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !1338 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1340, metadata !DIExpression()), !dbg !1342
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1341, metadata !DIExpression()), !dbg !1343
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !1344
  %1 = load ptr, ptr %next.addr, align 8, !dbg !1345
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !1346
  store ptr %0, ptr %prev1, align 8, !dbg !1347
  br label %do.body, !dbg !1348

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !1349

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !1351

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !1349

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !1353
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !1353
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !1353
  store volatile ptr %2, ptr %next4, align 8, !dbg !1353
  br label %do.end5, !dbg !1353

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !1349

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !1355
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #5 align 16 !dbg !1356 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1363, metadata !DIExpression()), !dbg !1364
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1365
  %call = call i32 @arch_atomic_read(ptr noundef %0) #12, !dbg !1366
  ret i32 %call, !dbg !1367
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #5 align 16 !dbg !1368 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1371, metadata !DIExpression()), !dbg !1372
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1373
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !1373
  %1 = load volatile i32, ptr %counter, align 4, !dbg !1373
  ret i32 %1, !dbg !1374
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #4 align 16 !dbg !1375 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1382, metadata !DIExpression()), !dbg !1386
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1383, metadata !DIExpression()), !dbg !1387
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !1384, metadata !DIExpression()), !dbg !1388
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !1385, metadata !DIExpression()), !dbg !1389
  %0 = load i32, ptr %state.addr, align 4, !dbg !1390
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1391
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !1392
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !1393
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #12, !dbg !1394
  ret i32 %call, !dbg !1395
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compute_batch_value(i32 noundef %cpu) #0 align 16 !dbg !1396 {
entry:
  %cpu.addr = alloca i32, align 4
  %nr = alloca i32, align 4
  %__UNIQUE_ID___x210 = alloca i32, align 4
  %__UNIQUE_ID___y211 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1398, metadata !DIExpression()), !dbg !1403
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr) #11, !dbg !1404
  call void @llvm.dbg.declare(metadata ptr %nr, metadata !1399, metadata !DIExpression()), !dbg !1405
  %call = call i32 @num_online_cpus() #12, !dbg !1406
  store i32 %call, ptr %nr, align 4, !dbg !1405
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x210) #11, !dbg !1407
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x210, metadata !1400, metadata !DIExpression()), !dbg !1407
  store i32 32, ptr %__UNIQUE_ID___x210, align 4, !dbg !1407
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y211) #11, !dbg !1407
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y211, metadata !1402, metadata !DIExpression()), !dbg !1407
  %0 = load i32, ptr %nr, align 4, !dbg !1407
  %mul = mul i32 %0, 2, !dbg !1407
  store i32 %mul, ptr %__UNIQUE_ID___y211, align 4, !dbg !1407
  %1 = load i32, ptr %__UNIQUE_ID___x210, align 4, !dbg !1407
  %2 = load i32, ptr %__UNIQUE_ID___y211, align 4, !dbg !1407
  %cmp = icmp sgt i32 %1, %2, !dbg !1407
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1407

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %__UNIQUE_ID___x210, align 4, !dbg !1407
  br label %cond.end, !dbg !1407

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___y211, align 4, !dbg !1407
  br label %cond.end, !dbg !1407

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !1407
  store i32 %cond, ptr %tmp, align 4, !dbg !1407
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y211) #11, !dbg !1408
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x210) #11, !dbg !1408
  %5 = load i32, ptr %tmp, align 4, !dbg !1407
  store i32 %5, ptr @percpu_counter_batch, align 4, !dbg !1409
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr) #11, !dbg !1410
  ret i32 0, !dbg !1411
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state_nocalls(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #4 align 16 !dbg !1412 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1414, metadata !DIExpression()), !dbg !1418
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !1415, metadata !DIExpression()), !dbg !1419
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !1416, metadata !DIExpression()), !dbg !1420
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !1417, metadata !DIExpression()), !dbg !1421
  %0 = load i32, ptr %state.addr, align 4, !dbg !1422
  %1 = load ptr, ptr %name.addr, align 8, !dbg !1423
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !1424
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !1425
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext false, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #12, !dbg !1426
  ret i32 %call, !dbg !1427
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @percpu_counter_cpu_dead(i32 noundef %cpu) #0 align 16 !dbg !1428 {
entry:
  %cpu.addr = alloca i32, align 4
  %fbc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %pcount = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1430, metadata !DIExpression()), !dbg !1445
  call void @llvm.lifetime.start.p0(i64 8, ptr %fbc) #11, !dbg !1446
  call void @llvm.dbg.declare(metadata ptr %fbc, metadata !1431, metadata !DIExpression()), !dbg !1447
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1448
  %call = call i32 @compute_batch_value(i32 noundef %0) #12, !dbg !1449
  call void @spin_lock_irq(ptr noundef @percpu_counters_lock) #12, !dbg !1450
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !1451
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1432, metadata !DIExpression()), !dbg !1451
  %1 = load ptr, ptr @percpu_counters, align 8, !dbg !1451
  store ptr %1, ptr %__mptr, align 8, !dbg !1451
  %2 = load ptr, ptr %__mptr, align 8, !dbg !1451
  %add.ptr = getelementptr i8, ptr %2, i64 -16, !dbg !1451
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1451
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !1452
  %3 = load ptr, ptr %tmp, align 8, !dbg !1451
  store ptr %3, ptr %fbc, align 8, !dbg !1452
  br label %for.cond, !dbg !1452

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %fbc, align 8, !dbg !1453
  %list = getelementptr inbounds %struct.percpu_counter, ptr %4, i32 0, i32 2, !dbg !1453
  %cmp = icmp eq ptr %list, @percpu_counters, !dbg !1453
  %lnot = xor i1 %cmp, true, !dbg !1453
  br i1 %lnot, label %for.body, label %for.end, !dbg !1452

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pcount) #11, !dbg !1454
  call void @llvm.dbg.declare(metadata ptr %pcount, metadata !1435, metadata !DIExpression()), !dbg !1455
  %5 = load ptr, ptr %fbc, align 8, !dbg !1456
  %lock = getelementptr inbounds %struct.percpu_counter, ptr %5, i32 0, i32 0, !dbg !1456
  call void @_raw_spin_lock(ptr noundef %lock) #12, !dbg !1456
  br label %do.body, !dbg !1457

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !1458
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1438, metadata !DIExpression()), !dbg !1458
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1458
  %6 = load ptr, ptr %__vpp_verify, align 8, !dbg !1458
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !1457
  br label %do.cond, !dbg !1458

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1458

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !1459
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1441, metadata !DIExpression()), !dbg !1459
  %7 = load ptr, ptr %fbc, align 8, !dbg !1459
  %counters = getelementptr inbounds %struct.percpu_counter, ptr %7, i32 0, i32 3, !dbg !1459
  %8 = load ptr, ptr %counters, align 8, !dbg !1459
  %9 = ptrtoint ptr %8 to i64, !dbg !1459
  store i64 %9, ptr %__ptr, align 8, !dbg !1459
  %10 = load i64, ptr %__ptr, align 8, !dbg !1459
  %11 = load i32, ptr %cpu.addr, align 4, !dbg !1459
  %idxprom = zext i32 %11 to i64, !dbg !1459
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1459
  %12 = load i64, ptr %arrayidx, align 8, !dbg !1459
  %add = add i64 %10, %12, !dbg !1459
  %13 = inttoptr i64 %add to ptr, !dbg !1459
  store ptr %13, ptr %tmp2, align 8, !dbg !1459
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !1457
  %14 = load ptr, ptr %tmp2, align 8, !dbg !1459
  store ptr %14, ptr %tmp1, align 8, !dbg !1458
  %15 = load ptr, ptr %tmp1, align 8, !dbg !1457
  store ptr %15, ptr %pcount, align 8, !dbg !1460
  %16 = load ptr, ptr %pcount, align 8, !dbg !1461
  %17 = load i32, ptr %16, align 4, !dbg !1462
  %conv = sext i32 %17 to i64, !dbg !1462
  %18 = load ptr, ptr %fbc, align 8, !dbg !1463
  %count = getelementptr inbounds %struct.percpu_counter, ptr %18, i32 0, i32 1, !dbg !1464
  %19 = load i64, ptr %count, align 8, !dbg !1465
  %add3 = add i64 %19, %conv, !dbg !1465
  store i64 %add3, ptr %count, align 8, !dbg !1465
  %20 = load ptr, ptr %pcount, align 8, !dbg !1466
  store i32 0, ptr %20, align 4, !dbg !1467
  %21 = load ptr, ptr %fbc, align 8, !dbg !1468
  %lock4 = getelementptr inbounds %struct.percpu_counter, ptr %21, i32 0, i32 0, !dbg !1468
  call void @_raw_spin_unlock(ptr noundef %lock4) #12, !dbg !1468
  call void @llvm.lifetime.end.p0(i64 8, ptr %pcount) #11, !dbg !1469
  br label %for.inc, !dbg !1470

for.inc:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #11, !dbg !1471
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !1443, metadata !DIExpression()), !dbg !1471
  %22 = load ptr, ptr %fbc, align 8, !dbg !1471
  %list6 = getelementptr inbounds %struct.percpu_counter, ptr %22, i32 0, i32 2, !dbg !1471
  %next = getelementptr inbounds %struct.list_head, ptr %list6, i32 0, i32 0, !dbg !1471
  %23 = load ptr, ptr %next, align 8, !dbg !1471
  store ptr %23, ptr %__mptr5, align 8, !dbg !1471
  %24 = load ptr, ptr %__mptr5, align 8, !dbg !1471
  %add.ptr8 = getelementptr i8, ptr %24, i64 -16, !dbg !1471
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !1471
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #11, !dbg !1453
  %25 = load ptr, ptr %tmp7, align 8, !dbg !1471
  store ptr %25, ptr %fbc, align 8, !dbg !1453
  br label %for.cond, !dbg !1453, !llvm.loop !1472

for.end:                                          ; preds = %for.cond
  call void @spin_unlock_irq(ptr noundef @percpu_counters_lock) #12, !dbg !1474
  call void @llvm.lifetime.end.p0(i64 8, ptr %fbc) #11, !dbg !1475
  ret i32 0, !dbg !1476
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1477 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #5 align 16 !dbg !1480 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1484, metadata !DIExpression()), !dbg !1485
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1486
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1486
  call void @_raw_spin_lock_irq(ptr noundef %1) #12, !dbg !1486
  ret void, !dbg !1487
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #5 align 16 !dbg !1488 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1490, metadata !DIExpression()), !dbg !1491
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1492
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !1492
  call void @_raw_spin_unlock_irq(ptr noundef %1) #12, !dbg !1492
  ret void, !dbg !1493
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1494 dso_local void @_raw_spin_lock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1495 dso_local void @_raw_spin_unlock_irq(ptr noundef) #3 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { nounwind memory(read) }
attributes #14 = { noredzone allocsize(0) }
attributes #15 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!337, !338, !339, !340, !341, !342, !343, !344}
!llvm.ident = !{!345}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_counter_set203", scope: !2, file: !3, line: 73, type: !222, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.percpu_counter.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/percpu_counter\22 -D KBUILD_BASENAME=\22percpu_counter\22 -D KBUILD_MODNAME=\22percpu_counter\22 -D __KBUILD_MODNAME=kmod_percpu_counter -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/percpu_counter.ll lib/percpu_counter.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !206, globals: !280, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/percpu_counter.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d0905b30b59143cd1cc67190463efff")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuhp_state", file: !12, line: 57, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/cpuhotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c163170cdc0ca5f55decccd45901b0e")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!15 = !DIEnumerator(name: "CPUHP_INVALID", value: -1)
!16 = !DIEnumerator(name: "CPUHP_OFFLINE", value: 0)
!17 = !DIEnumerator(name: "CPUHP_CREATE_THREADS", value: 1)
!18 = !DIEnumerator(name: "CPUHP_PERF_PREPARE", value: 2)
!19 = !DIEnumerator(name: "CPUHP_PERF_X86_PREPARE", value: 3)
!20 = !DIEnumerator(name: "CPUHP_PERF_X86_AMD_UNCORE_PREP", value: 4)
!21 = !DIEnumerator(name: "CPUHP_PERF_POWER", value: 5)
!22 = !DIEnumerator(name: "CPUHP_PERF_SUPERH", value: 6)
!23 = !DIEnumerator(name: "CPUHP_X86_HPET_DEAD", value: 7)
!24 = !DIEnumerator(name: "CPUHP_X86_APB_DEAD", value: 8)
!25 = !DIEnumerator(name: "CPUHP_X86_MCE_DEAD", value: 9)
!26 = !DIEnumerator(name: "CPUHP_VIRT_NET_DEAD", value: 10)
!27 = !DIEnumerator(name: "CPUHP_IBMVNIC_DEAD", value: 11)
!28 = !DIEnumerator(name: "CPUHP_SLUB_DEAD", value: 12)
!29 = !DIEnumerator(name: "CPUHP_DEBUG_OBJ_DEAD", value: 13)
!30 = !DIEnumerator(name: "CPUHP_MM_WRITEBACK_DEAD", value: 14)
!31 = !DIEnumerator(name: "CPUHP_MM_DEMOTION_DEAD", value: 15)
!32 = !DIEnumerator(name: "CPUHP_MM_VMSTAT_DEAD", value: 16)
!33 = !DIEnumerator(name: "CPUHP_SOFTIRQ_DEAD", value: 17)
!34 = !DIEnumerator(name: "CPUHP_NET_MVNETA_DEAD", value: 18)
!35 = !DIEnumerator(name: "CPUHP_CPUIDLE_DEAD", value: 19)
!36 = !DIEnumerator(name: "CPUHP_ARM64_FPSIMD_DEAD", value: 20)
!37 = !DIEnumerator(name: "CPUHP_ARM_OMAP_WAKE_DEAD", value: 21)
!38 = !DIEnumerator(name: "CPUHP_IRQ_POLL_DEAD", value: 22)
!39 = !DIEnumerator(name: "CPUHP_BLOCK_SOFTIRQ_DEAD", value: 23)
!40 = !DIEnumerator(name: "CPUHP_BIO_DEAD", value: 24)
!41 = !DIEnumerator(name: "CPUHP_ACPI_CPUDRV_DEAD", value: 25)
!42 = !DIEnumerator(name: "CPUHP_S390_PFAULT_DEAD", value: 26)
!43 = !DIEnumerator(name: "CPUHP_BLK_MQ_DEAD", value: 27)
!44 = !DIEnumerator(name: "CPUHP_FS_BUFF_DEAD", value: 28)
!45 = !DIEnumerator(name: "CPUHP_PRINTK_DEAD", value: 29)
!46 = !DIEnumerator(name: "CPUHP_MM_MEMCQ_DEAD", value: 30)
!47 = !DIEnumerator(name: "CPUHP_PERCPU_CNT_DEAD", value: 31)
!48 = !DIEnumerator(name: "CPUHP_RADIX_DEAD", value: 32)
!49 = !DIEnumerator(name: "CPUHP_PAGE_ALLOC", value: 33)
!50 = !DIEnumerator(name: "CPUHP_NET_DEV_DEAD", value: 34)
!51 = !DIEnumerator(name: "CPUHP_PCI_XGENE_DEAD", value: 35)
!52 = !DIEnumerator(name: "CPUHP_IOMMU_IOVA_DEAD", value: 36)
!53 = !DIEnumerator(name: "CPUHP_LUSTRE_CFS_DEAD", value: 37)
!54 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DEAD", value: 38)
!55 = !DIEnumerator(name: "CPUHP_PADATA_DEAD", value: 39)
!56 = !DIEnumerator(name: "CPUHP_AP_DTPM_CPU_DEAD", value: 40)
!57 = !DIEnumerator(name: "CPUHP_RANDOM_PREPARE", value: 41)
!58 = !DIEnumerator(name: "CPUHP_WORKQUEUE_PREP", value: 42)
!59 = !DIEnumerator(name: "CPUHP_POWER_NUMA_PREPARE", value: 43)
!60 = !DIEnumerator(name: "CPUHP_HRTIMERS_PREPARE", value: 44)
!61 = !DIEnumerator(name: "CPUHP_PROFILE_PREPARE", value: 45)
!62 = !DIEnumerator(name: "CPUHP_X2APIC_PREPARE", value: 46)
!63 = !DIEnumerator(name: "CPUHP_SMPCFD_PREPARE", value: 47)
!64 = !DIEnumerator(name: "CPUHP_RELAY_PREPARE", value: 48)
!65 = !DIEnumerator(name: "CPUHP_SLAB_PREPARE", value: 49)
!66 = !DIEnumerator(name: "CPUHP_MD_RAID5_PREPARE", value: 50)
!67 = !DIEnumerator(name: "CPUHP_RCUTREE_PREP", value: 51)
!68 = !DIEnumerator(name: "CPUHP_CPUIDLE_COUPLED_PREPARE", value: 52)
!69 = !DIEnumerator(name: "CPUHP_POWERPC_PMAC_PREPARE", value: 53)
!70 = !DIEnumerator(name: "CPUHP_POWERPC_MMU_CTX_PREPARE", value: 54)
!71 = !DIEnumerator(name: "CPUHP_XEN_PREPARE", value: 55)
!72 = !DIEnumerator(name: "CPUHP_XEN_EVTCHN_PREPARE", value: 56)
!73 = !DIEnumerator(name: "CPUHP_ARM_SHMOBILE_SCU_PREPARE", value: 57)
!74 = !DIEnumerator(name: "CPUHP_SH_SH3X_PREPARE", value: 58)
!75 = !DIEnumerator(name: "CPUHP_NET_FLOW_PREPARE", value: 59)
!76 = !DIEnumerator(name: "CPUHP_TOPOLOGY_PREPARE", value: 60)
!77 = !DIEnumerator(name: "CPUHP_NET_IUCV_PREPARE", value: 61)
!78 = !DIEnumerator(name: "CPUHP_ARM_BL_PREPARE", value: 62)
!79 = !DIEnumerator(name: "CPUHP_TRACE_RB_PREPARE", value: 63)
!80 = !DIEnumerator(name: "CPUHP_MM_ZS_PREPARE", value: 64)
!81 = !DIEnumerator(name: "CPUHP_MM_ZSWP_MEM_PREPARE", value: 65)
!82 = !DIEnumerator(name: "CPUHP_MM_ZSWP_POOL_PREPARE", value: 66)
!83 = !DIEnumerator(name: "CPUHP_KVM_PPC_BOOK3S_PREPARE", value: 67)
!84 = !DIEnumerator(name: "CPUHP_ZCOMP_PREPARE", value: 68)
!85 = !DIEnumerator(name: "CPUHP_TIMERS_PREPARE", value: 69)
!86 = !DIEnumerator(name: "CPUHP_MIPS_SOC_PREPARE", value: 70)
!87 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN", value: 71)
!88 = !DIEnumerator(name: "CPUHP_BP_PREPARE_DYN_END", value: 91)
!89 = !DIEnumerator(name: "CPUHP_BP_KICK_AP", value: 92)
!90 = !DIEnumerator(name: "CPUHP_BRINGUP_CPU", value: 93)
!91 = !DIEnumerator(name: "CPUHP_AP_IDLE_DEAD", value: 94)
!92 = !DIEnumerator(name: "CPUHP_AP_OFFLINE", value: 95)
!93 = !DIEnumerator(name: "CPUHP_AP_CACHECTRL_STARTING", value: 96)
!94 = !DIEnumerator(name: "CPUHP_AP_SCHED_STARTING", value: 97)
!95 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_DYING", value: 98)
!96 = !DIEnumerator(name: "CPUHP_AP_CPU_PM_STARTING", value: 99)
!97 = !DIEnumerator(name: "CPUHP_AP_IRQ_GIC_STARTING", value: 100)
!98 = !DIEnumerator(name: "CPUHP_AP_IRQ_HIP04_STARTING", value: 101)
!99 = !DIEnumerator(name: "CPUHP_AP_IRQ_APPLE_AIC_STARTING", value: 102)
!100 = !DIEnumerator(name: "CPUHP_AP_IRQ_ARMADA_XP_STARTING", value: 103)
!101 = !DIEnumerator(name: "CPUHP_AP_IRQ_BCM2836_STARTING", value: 104)
!102 = !DIEnumerator(name: "CPUHP_AP_IRQ_MIPS_GIC_STARTING", value: 105)
!103 = !DIEnumerator(name: "CPUHP_AP_IRQ_RISCV_STARTING", value: 106)
!104 = !DIEnumerator(name: "CPUHP_AP_IRQ_LOONGARCH_STARTING", value: 107)
!105 = !DIEnumerator(name: "CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING", value: 108)
!106 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_COHERENCY", value: 109)
!107 = !DIEnumerator(name: "CPUHP_AP_MICROCODE_LOADER", value: 110)
!108 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_STARTING", value: 111)
!109 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_STARTING", value: 112)
!110 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_IBS_STARTING", value: 113)
!111 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_STARTING", value: 114)
!112 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_STARTING", value: 115)
!113 = !DIEnumerator(name: "CPUHP_AP_PERF_XTENSA_STARTING", value: 116)
!114 = !DIEnumerator(name: "CPUHP_AP_MIPS_OP_LOONGSON3_STARTING", value: 117)
!115 = !DIEnumerator(name: "CPUHP_AP_ARM_VFP_STARTING", value: 118)
!116 = !DIEnumerator(name: "CPUHP_AP_ARM64_DEBUG_MONITORS_STARTING", value: 119)
!117 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HW_BREAKPOINT_STARTING", value: 120)
!118 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_ACPI_STARTING", value: 121)
!119 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_STARTING", value: 122)
!120 = !DIEnumerator(name: "CPUHP_AP_PERF_RISCV_STARTING", value: 123)
!121 = !DIEnumerator(name: "CPUHP_AP_ARM_L2X0_STARTING", value: 124)
!122 = !DIEnumerator(name: "CPUHP_AP_EXYNOS4_MCT_TIMER_STARTING", value: 125)
!123 = !DIEnumerator(name: "CPUHP_AP_ARM_ARCH_TIMER_STARTING", value: 126)
!124 = !DIEnumerator(name: "CPUHP_AP_ARM_GLOBAL_TIMER_STARTING", value: 127)
!125 = !DIEnumerator(name: "CPUHP_AP_JCORE_TIMER_STARTING", value: 128)
!126 = !DIEnumerator(name: "CPUHP_AP_ARM_TWD_STARTING", value: 129)
!127 = !DIEnumerator(name: "CPUHP_AP_QCOM_TIMER_STARTING", value: 130)
!128 = !DIEnumerator(name: "CPUHP_AP_TEGRA_TIMER_STARTING", value: 131)
!129 = !DIEnumerator(name: "CPUHP_AP_ARMADA_TIMER_STARTING", value: 132)
!130 = !DIEnumerator(name: "CPUHP_AP_MARCO_TIMER_STARTING", value: 133)
!131 = !DIEnumerator(name: "CPUHP_AP_MIPS_GIC_TIMER_STARTING", value: 134)
!132 = !DIEnumerator(name: "CPUHP_AP_ARC_TIMER_STARTING", value: 135)
!133 = !DIEnumerator(name: "CPUHP_AP_RISCV_TIMER_STARTING", value: 136)
!134 = !DIEnumerator(name: "CPUHP_AP_CLINT_TIMER_STARTING", value: 137)
!135 = !DIEnumerator(name: "CPUHP_AP_CSKY_TIMER_STARTING", value: 138)
!136 = !DIEnumerator(name: "CPUHP_AP_TI_GP_TIMER_STARTING", value: 139)
!137 = !DIEnumerator(name: "CPUHP_AP_HYPERV_TIMER_STARTING", value: 140)
!138 = !DIEnumerator(name: "CPUHP_AP_DUMMY_TIMER_STARTING", value: 141)
!139 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_STARTING", value: 142)
!140 = !DIEnumerator(name: "CPUHP_AP_ARM_XEN_RUNSTATE_STARTING", value: 143)
!141 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_STARTING", value: 144)
!142 = !DIEnumerator(name: "CPUHP_AP_ARM_CORESIGHT_CTI_STARTING", value: 145)
!143 = !DIEnumerator(name: "CPUHP_AP_ARM64_ISNDEP_STARTING", value: 146)
!144 = !DIEnumerator(name: "CPUHP_AP_SMPCFD_DYING", value: 147)
!145 = !DIEnumerator(name: "CPUHP_AP_HRTIMERS_DYING", value: 148)
!146 = !DIEnumerator(name: "CPUHP_AP_X86_TBOOT_DYING", value: 149)
!147 = !DIEnumerator(name: "CPUHP_AP_ARM_CACHE_B15_RAC_DYING", value: 150)
!148 = !DIEnumerator(name: "CPUHP_AP_ONLINE", value: 151)
!149 = !DIEnumerator(name: "CPUHP_TEARDOWN_CPU", value: 152)
!150 = !DIEnumerator(name: "CPUHP_AP_ONLINE_IDLE", value: 153)
!151 = !DIEnumerator(name: "CPUHP_AP_HYPERV_ONLINE", value: 154)
!152 = !DIEnumerator(name: "CPUHP_AP_KVM_ONLINE", value: 155)
!153 = !DIEnumerator(name: "CPUHP_AP_SCHED_WAIT_EMPTY", value: 156)
!154 = !DIEnumerator(name: "CPUHP_AP_SMPBOOT_THREADS", value: 157)
!155 = !DIEnumerator(name: "CPUHP_AP_X86_VDSO_VMA_ONLINE", value: 158)
!156 = !DIEnumerator(name: "CPUHP_AP_IRQ_AFFINITY_ONLINE", value: 159)
!157 = !DIEnumerator(name: "CPUHP_AP_BLK_MQ_ONLINE", value: 160)
!158 = !DIEnumerator(name: "CPUHP_AP_ARM_MVEBU_SYNC_CLOCKS", value: 161)
!159 = !DIEnumerator(name: "CPUHP_AP_X86_INTEL_EPB_ONLINE", value: 162)
!160 = !DIEnumerator(name: "CPUHP_AP_PERF_ONLINE", value: 163)
!161 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_ONLINE", value: 164)
!162 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_UNCORE_ONLINE", value: 165)
!163 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_UNCORE_ONLINE", value: 166)
!164 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_AMD_POWER_ONLINE", value: 167)
!165 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_RAPL_ONLINE", value: 168)
!166 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CQM_ONLINE", value: 169)
!167 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_CSTATE_ONLINE", value: 170)
!168 = !DIEnumerator(name: "CPUHP_AP_PERF_X86_IDXD_ONLINE", value: 171)
!169 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_CF_ONLINE", value: 172)
!170 = !DIEnumerator(name: "CPUHP_AP_PERF_S390_SF_ONLINE", value: 173)
!171 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCI_ONLINE", value: 174)
!172 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CCN_ONLINE", value: 175)
!173 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_CPA_ONLINE", value: 176)
!174 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_DDRC_ONLINE", value: 177)
!175 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_HHA_ONLINE", value: 178)
!176 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_L3_ONLINE", value: 179)
!177 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PA_ONLINE", value: 180)
!178 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_SLLC_ONLINE", value: 181)
!179 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HISI_PCIE_PMU_ONLINE", value: 182)
!180 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_HNS3_PMU_ONLINE", value: 183)
!181 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_L2X0_ONLINE", value: 184)
!182 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L2_ONLINE", value: 185)
!183 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_QCOM_L3_ONLINE", value: 186)
!184 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_APM_XGENE_ONLINE", value: 187)
!185 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_CAVIUM_TX2_UNCORE_ONLINE", value: 188)
!186 = !DIEnumerator(name: "CPUHP_AP_PERF_ARM_MARVELL_CN10K_DDR_ONLINE", value: 189)
!187 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE", value: 190)
!188 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE", value: 191)
!189 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE", value: 192)
!190 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE", value: 193)
!191 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_24x7_ONLINE", value: 194)
!192 = !DIEnumerator(name: "CPUHP_AP_PERF_POWERPC_HV_GPCI_ONLINE", value: 195)
!193 = !DIEnumerator(name: "CPUHP_AP_PERF_CSKY_ONLINE", value: 196)
!194 = !DIEnumerator(name: "CPUHP_AP_WATCHDOG_ONLINE", value: 197)
!195 = !DIEnumerator(name: "CPUHP_AP_WORKQUEUE_ONLINE", value: 198)
!196 = !DIEnumerator(name: "CPUHP_AP_RANDOM_ONLINE", value: 199)
!197 = !DIEnumerator(name: "CPUHP_AP_RCUTREE_ONLINE", value: 200)
!198 = !DIEnumerator(name: "CPUHP_AP_BASE_CACHEINFO_ONLINE", value: 201)
!199 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN", value: 202)
!200 = !DIEnumerator(name: "CPUHP_AP_ONLINE_DYN_END", value: 232)
!201 = !DIEnumerator(name: "CPUHP_AP_MM_DEMOTION_ONLINE", value: 233)
!202 = !DIEnumerator(name: "CPUHP_AP_X86_HPET_ONLINE", value: 234)
!203 = !DIEnumerator(name: "CPUHP_AP_X86_KVM_CLK_ONLINE", value: 235)
!204 = !DIEnumerator(name: "CPUHP_AP_ACTIVE", value: 236)
!205 = !DIEnumerator(name: "CPUHP_ONLINE", value: 237)
!206 = !{!207, !7, !217, !222, !214, !218, !13, !223, !225, !233, !236}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !210, line: 19, size: 64, elements: !211)
!210 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !209, file: !210, line: 19, baseType: !213, size: 64)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 64, elements: !215)
!214 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!215 = !{!216}
!216 = !DISubrange(count: 1)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !219, line: 20, baseType: !220)
!219 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !221, line: 26, baseType: !13)
!221 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !219, line: 21, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !221, line: 27, baseType: !7)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !229, line: 190, size: 128, elements: !230)
!229 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!230 = !{!231, !232}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !229, line: 191, baseType: !227, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !228, file: !229, line: 191, baseType: !227, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !238, line: 22, size: 320, elements: !239)
!238 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!239 = !{!240, !274, !278, !279}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !237, file: !238, line: 23, baseType: !241, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !242, line: 23, baseType: !243)
!242 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !242, line: 14, size: 32, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !243, file: !242, line: 15, baseType: !246, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !247, line: 44, baseType: !248)
!247 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !247, line: 14, size: 32, elements: !249)
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !247, line: 15, baseType: !251, size: 32)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !247, line: 15, size: 32, elements: !252)
!252 = !{!253, !258, !266}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !251, file: !247, line: 16, baseType: !254, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !229, line: 174, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !229, line: 172, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !255, file: !229, line: 173, baseType: !13, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !247, line: 24, baseType: !259, size: 16)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !247, line: 24, size: 16, elements: !260)
!260 = !{!261, !265}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !259, file: !247, line: 25, baseType: !262, size: 8)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !219, line: 17, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !221, line: 21, baseType: !264)
!264 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !259, file: !247, line: 26, baseType: !262, size: 8, offset: 8)
!266 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !247, line: 28, baseType: !267, size: 32)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !247, line: 28, size: 32, elements: !268)
!268 = !{!269, !273}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !267, file: !247, line: 29, baseType: !270, size: 16)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !219, line: 19, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !221, line: 24, baseType: !272)
!272 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !267, file: !247, line: 30, baseType: !270, size: 16, offset: 16)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !237, file: !238, line: 24, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !219, line: 22, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !221, line: 30, baseType: !277)
!277 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !237, file: !238, line: 26, baseType: !228, size: 128, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !237, file: !238, line: 28, baseType: !217, size: 64, offset: 256)
!280 = !{!0, !281, !287, !292, !294, !296, !298, !300, !305, !307, !309, !311, !313, !315, !325, !327, !332}
!281 = !DIGlobalVariableExpression(var: !282, expr: !DIExpression())
!282 = distinct !DIGlobalVariable(scope: null, file: !3, line: 93, type: !283, isLocal: true, isDefinition: true)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 40, elements: !285)
!284 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!285 = !{!286}
!286 = !DISubrange(count: 5)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 32, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 4)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_counter_add_batch204", scope: !2, file: !3, line: 104, type: !222, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_counter_sync205", scope: !2, file: !3, line: 123, type: !222, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___percpu_counter_sum206", scope: !2, file: !3, line: 152, type: !222, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___percpu_counter_init_many207", scope: !2, file: !3, line: 191, type: !222, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !3, line: 198, type: !302, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 168, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 21)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_counter_destroy_many208", scope: !2, file: !3, line: 219, type: !222, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "percpu_counter_batch", scope: !2, file: !3, line: 221, type: !13, isLocal: false, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_percpu_counter_batch209", scope: !2, file: !3, line: 222, type: !222, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___percpu_counter_compare212", scope: !2, file: !3, line: 279, type: !222, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_percpu_counter__213_294_percpu_counter_startup6214", scope: !2, file: !3, line: 294, type: !222, isLocal: true, isDefinition: true)
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(name: "percpu_counters_lock", scope: !2, file: !3, line: 15, type: !317, isLocal: true, isDefinition: true)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !318, line: 29, baseType: !319)
!318 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !318, line: 17, size: 32, elements: !320)
!320 = !{!321}
!321 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !318, line: 18, baseType: !322, size: 32)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !319, file: !318, line: 18, size: 32, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !322, file: !318, line: 19, baseType: !243, size: 32)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "percpu_counters", scope: !2, file: !3, line: 14, type: !228, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !3, line: 285, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 176, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 22)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !3, line: 289, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 160, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 20)
!337 = !{i32 7, !"Dwarf Version", i32 5}
!338 = !{i32 2, !"Debug Info Version", i32 3}
!339 = !{i32 1, !"wchar_size", i32 2}
!340 = !{i32 8, !"cf-protection-branch", i32 1}
!341 = !{i32 4, !"function_return_thunk_extern", i32 1}
!342 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!343 = !{i32 1, !"Code Model", i32 2}
!344 = !{i32 1, !"override-stack-alignment", i32 8}
!345 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!346 = distinct !DISubprogram(name: "percpu_counter_set", scope: !3, file: !3, line: 60, type: !347, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !349)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !236, !275}
!349 = !{!350, !351, !352, !353, !354, !357, !358, !362, !367, !369, !372}
!350 = !DILocalVariable(name: "fbc", arg: 1, scope: !346, file: !3, line: 60, type: !236)
!351 = !DILocalVariable(name: "amount", arg: 2, scope: !346, file: !3, line: 60, type: !275)
!352 = !DILocalVariable(name: "cpu", scope: !346, file: !3, line: 62, type: !13)
!353 = !DILocalVariable(name: "flags", scope: !346, file: !3, line: 63, type: !214)
!354 = !DILocalVariable(name: "__dummy", scope: !355, file: !3, line: 65, type: !214)
!355 = distinct !DILexicalBlock(scope: !356, file: !3, line: 65, column: 2)
!356 = distinct !DILexicalBlock(scope: !346, file: !3, line: 65, column: 2)
!357 = !DILocalVariable(name: "__dummy2", scope: !355, file: !3, line: 65, type: !214)
!358 = !DILocalVariable(name: "pcount", scope: !359, file: !3, line: 67, type: !217)
!359 = distinct !DILexicalBlock(scope: !360, file: !3, line: 66, column: 29)
!360 = distinct !DILexicalBlock(scope: !361, file: !3, line: 66, column: 2)
!361 = distinct !DILexicalBlock(scope: !346, file: !3, line: 66, column: 2)
!362 = !DILocalVariable(name: "__vpp_verify", scope: !363, file: !3, line: 67, type: !365)
!363 = distinct !DILexicalBlock(scope: !364, file: !3, line: 67, column: 17)
!364 = distinct !DILexicalBlock(scope: !359, file: !3, line: 67, column: 17)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!367 = !DILocalVariable(name: "__ptr", scope: !368, file: !3, line: 67, type: !214)
!368 = distinct !DILexicalBlock(scope: !364, file: !3, line: 67, column: 17)
!369 = !DILocalVariable(name: "__dummy", scope: !370, file: !3, line: 71, type: !214)
!370 = distinct !DILexicalBlock(scope: !371, file: !3, line: 71, column: 2)
!371 = distinct !DILexicalBlock(scope: !346, file: !3, line: 71, column: 2)
!372 = !DILocalVariable(name: "__dummy2", scope: !370, file: !3, line: 71, type: !214)
!373 = !DILocation(line: 60, column: 48, scope: !346)
!374 = !DILocation(line: 60, column: 57, scope: !346)
!375 = !DILocation(line: 62, column: 2, scope: !346)
!376 = !DILocation(line: 62, column: 6, scope: !346)
!377 = !DILocation(line: 63, column: 2, scope: !346)
!378 = !DILocation(line: 63, column: 16, scope: !346)
!379 = !DILocation(line: 65, column: 2, scope: !346)
!380 = !DILocation(line: 65, column: 2, scope: !355)
!381 = !DILocation(line: 65, column: 2, scope: !356)
!382 = !DILocation(line: 66, column: 2, scope: !361)
!383 = !DILocation(line: 66, column: 2, scope: !360)
!384 = !DILocation(line: 67, column: 3, scope: !359)
!385 = !DILocation(line: 67, column: 8, scope: !359)
!386 = !DILocation(line: 67, column: 17, scope: !364)
!387 = !DILocation(line: 67, column: 17, scope: !363)
!388 = !DILocation(line: 67, column: 17, scope: !368)
!389 = !DILocation(line: 68, column: 4, scope: !359)
!390 = !DILocation(line: 68, column: 11, scope: !359)
!391 = !DILocation(line: 69, column: 2, scope: !360)
!392 = !DILocation(line: 69, column: 2, scope: !359)
!393 = distinct !{!393, !382, !394, !395, !396}
!394 = !DILocation(line: 69, column: 2, scope: !361)
!395 = !{!"llvm.loop.mustprogress"}
!396 = !{!"llvm.loop.unroll.disable"}
!397 = !DILocation(line: 70, column: 15, scope: !346)
!398 = !DILocation(line: 70, column: 2, scope: !346)
!399 = !DILocation(line: 70, column: 7, scope: !346)
!400 = !DILocation(line: 70, column: 13, scope: !346)
!401 = !DILocation(line: 71, column: 2, scope: !346)
!402 = !DILocation(line: 71, column: 2, scope: !370)
!403 = !DILocation(line: 71, column: 2, scope: !371)
!404 = !DILocation(line: 72, column: 1, scope: !346)
!405 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !406, file: !406, line: 32, type: !407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!406 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!407 = !DISubroutineType(types: !408)
!408 = !{!214, !409}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!410 = distinct !DISubprogram(name: "find_next_bit", scope: !411, file: !411, line: 54, type: !412, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !416)
!411 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!412 = !DISubroutineType(types: !413)
!413 = !{!214, !414, !214, !214}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!416 = !{!417, !418, !419, !420}
!417 = !DILocalVariable(name: "addr", arg: 1, scope: !410, file: !411, line: 54, type: !414)
!418 = !DILocalVariable(name: "size", arg: 2, scope: !410, file: !411, line: 54, type: !214)
!419 = !DILocalVariable(name: "offset", arg: 3, scope: !410, file: !411, line: 55, type: !214)
!420 = !DILocalVariable(name: "val", scope: !421, file: !411, line: 58, type: !214)
!421 = distinct !DILexicalBlock(scope: !422, file: !411, line: 57, column: 31)
!422 = distinct !DILexicalBlock(scope: !410, file: !411, line: 57, column: 6)
!423 = !DILocation(line: 54, column: 50, scope: !410)
!424 = !DILocation(line: 54, column: 70, scope: !410)
!425 = !DILocation(line: 55, column: 22, scope: !410)
!426 = !DILocation(line: 57, column: 6, scope: !422)
!427 = !DILocation(line: 57, column: 6, scope: !410)
!428 = !DILocation(line: 58, column: 3, scope: !421)
!429 = !DILocation(line: 58, column: 17, scope: !421)
!430 = !DILocation(line: 60, column: 7, scope: !431)
!431 = distinct !DILexicalBlock(scope: !421, file: !411, line: 60, column: 7)
!432 = !DILocation(line: 60, column: 7, scope: !421)
!433 = !DILocation(line: 61, column: 11, scope: !431)
!434 = !DILocation(line: 61, column: 4, scope: !431)
!435 = !DILocation(line: 63, column: 10, scope: !421)
!436 = !DILocation(line: 63, column: 9, scope: !421)
!437 = !DILocation(line: 63, column: 17, scope: !421)
!438 = !DILocation(line: 63, column: 15, scope: !421)
!439 = !DILocation(line: 63, column: 7, scope: !421)
!440 = !DILocation(line: 64, column: 10, scope: !421)
!441 = !DILocation(line: 64, column: 16, scope: !421)
!442 = !DILocation(line: 64, column: 29, scope: !421)
!443 = !DILocation(line: 64, column: 3, scope: !421)
!444 = !DILocation(line: 65, column: 2, scope: !422)
!445 = !DILocation(line: 67, column: 24, scope: !410)
!446 = !DILocation(line: 67, column: 30, scope: !410)
!447 = !DILocation(line: 67, column: 36, scope: !410)
!448 = !DILocation(line: 67, column: 9, scope: !410)
!449 = !DILocation(line: 67, column: 2, scope: !410)
!450 = !DILocation(line: 68, column: 1, scope: !410)
!451 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !406, file: !406, line: 43, type: !452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !409, !214}
!454 = distinct !DISubprogram(name: "percpu_counter_add_batch", scope: !3, file: !3, line: 87, type: !455, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !236, !275, !218}
!457 = !{!458, !459, !460, !461, !462, !463, !467, !468, !471, !473, !475, !478, !483, !486, !490, !494, !496, !500, !504}
!458 = !DILocalVariable(name: "fbc", arg: 1, scope: !454, file: !3, line: 87, type: !236)
!459 = !DILocalVariable(name: "amount", arg: 2, scope: !454, file: !3, line: 87, type: !275)
!460 = !DILocalVariable(name: "batch", arg: 3, scope: !454, file: !3, line: 87, type: !218)
!461 = !DILocalVariable(name: "count", scope: !454, file: !3, line: 89, type: !275)
!462 = !DILocalVariable(name: "flags", scope: !454, file: !3, line: 90, type: !214)
!463 = !DILocalVariable(name: "__dummy", scope: !464, file: !3, line: 92, type: !214)
!464 = distinct !DILexicalBlock(scope: !465, file: !3, line: 92, column: 2)
!465 = distinct !DILexicalBlock(scope: !466, file: !3, line: 92, column: 2)
!466 = distinct !DILexicalBlock(scope: !454, file: !3, line: 92, column: 2)
!467 = !DILocalVariable(name: "__dummy2", scope: !464, file: !3, line: 92, type: !214)
!468 = !DILocalVariable(name: "pscr_ret__", scope: !469, file: !3, line: 93, type: !218)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 93, column: 10)
!470 = distinct !DILexicalBlock(scope: !454, file: !3, line: 93, column: 10)
!471 = !DILocalVariable(name: "__vpp_verify", scope: !472, file: !3, line: 93, type: !365)
!472 = distinct !DILexicalBlock(scope: !469, file: !3, line: 93, column: 10)
!473 = !DILocalVariable(name: "pfo_val__", scope: !474, file: !3, line: 93, type: !223)
!474 = distinct !DILexicalBlock(scope: !469, file: !3, line: 93, column: 10)
!475 = !DILocalVariable(name: "__x", scope: !476, file: !3, line: 94, type: !277)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 94, column: 6)
!477 = distinct !DILexicalBlock(scope: !454, file: !3, line: 94, column: 6)
!478 = !DILocalVariable(name: "__vpp_verify", scope: !479, file: !3, line: 97, type: !365)
!479 = distinct !DILexicalBlock(scope: !480, file: !3, line: 97, column: 3)
!480 = distinct !DILexicalBlock(scope: !481, file: !3, line: 97, column: 3)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 97, column: 3)
!482 = distinct !DILexicalBlock(scope: !477, file: !3, line: 94, column: 27)
!483 = !DILocalVariable(name: "pao_ID__", scope: !484, file: !3, line: 97, type: !485)
!484 = distinct !DILexicalBlock(scope: !480, file: !3, line: 97, column: 3)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!486 = !DILocalVariable(name: "pto_val__", scope: !487, file: !3, line: 97, type: !223)
!487 = distinct !DILexicalBlock(scope: !488, file: !3, line: 97, column: 3)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 97, column: 3)
!489 = distinct !DILexicalBlock(scope: !484, file: !3, line: 97, column: 3)
!490 = !DILocalVariable(name: "__vpp_verify", scope: !491, file: !3, line: 100, type: !365)
!491 = distinct !DILexicalBlock(scope: !492, file: !3, line: 100, column: 3)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 100, column: 3)
!493 = distinct !DILexicalBlock(scope: !477, file: !3, line: 99, column: 9)
!494 = !DILocalVariable(name: "pao_ID__", scope: !495, file: !3, line: 100, type: !485)
!495 = distinct !DILexicalBlock(scope: !492, file: !3, line: 100, column: 3)
!496 = !DILocalVariable(name: "pto_val__", scope: !497, file: !3, line: 100, type: !223)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 100, column: 3)
!498 = distinct !DILexicalBlock(scope: !499, file: !3, line: 100, column: 3)
!499 = distinct !DILexicalBlock(scope: !495, file: !3, line: 100, column: 3)
!500 = !DILocalVariable(name: "__dummy", scope: !501, file: !3, line: 102, type: !214)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 102, column: 2)
!502 = distinct !DILexicalBlock(scope: !503, file: !3, line: 102, column: 2)
!503 = distinct !DILexicalBlock(scope: !454, file: !3, line: 102, column: 2)
!504 = !DILocalVariable(name: "__dummy2", scope: !501, file: !3, line: 102, type: !214)
!505 = !DILocation(line: 87, column: 54, scope: !454)
!506 = !DILocation(line: 87, column: 63, scope: !454)
!507 = !DILocation(line: 87, column: 75, scope: !454)
!508 = !DILocation(line: 89, column: 2, scope: !454)
!509 = !DILocation(line: 89, column: 6, scope: !454)
!510 = !DILocation(line: 90, column: 2, scope: !454)
!511 = !DILocation(line: 90, column: 16, scope: !454)
!512 = !DILocation(line: 92, column: 2, scope: !454)
!513 = !DILocation(line: 92, column: 2, scope: !466)
!514 = !DILocation(line: 92, column: 2, scope: !464)
!515 = !DILocation(line: 92, column: 2, scope: !465)
!516 = !DILocation(line: 93, column: 10, scope: !470)
!517 = !DILocation(line: 93, column: 10, scope: !469)
!518 = !DILocation(line: 93, column: 10, scope: !472)
!519 = !DILocation(line: 93, column: 10, scope: !474)
!520 = !{i64 2152578674}
!521 = !DILocation(line: 93, column: 10, scope: !454)
!522 = !DILocation(line: 93, column: 44, scope: !454)
!523 = !DILocation(line: 93, column: 42, scope: !454)
!524 = !DILocation(line: 93, column: 8, scope: !454)
!525 = !DILocation(line: 94, column: 6, scope: !476)
!526 = !DILocation(line: 94, column: 6, scope: !477)
!527 = !DILocation(line: 94, column: 20, scope: !477)
!528 = !DILocation(line: 94, column: 17, scope: !477)
!529 = !DILocation(line: 94, column: 6, scope: !454)
!530 = !DILocation(line: 95, column: 3, scope: !482)
!531 = !DILocation(line: 96, column: 17, scope: !482)
!532 = !DILocation(line: 96, column: 3, scope: !482)
!533 = !DILocation(line: 96, column: 8, scope: !482)
!534 = !DILocation(line: 96, column: 14, scope: !482)
!535 = !DILocation(line: 97, column: 3, scope: !481)
!536 = !DILocation(line: 97, column: 3, scope: !480)
!537 = !DILocation(line: 97, column: 3, scope: !479)
!538 = !DILocation(line: 97, column: 3, scope: !484)
!539 = !DILocation(line: 97, column: 3, scope: !489)
!540 = !DILocation(line: 97, column: 3, scope: !541)
!541 = distinct !DILexicalBlock(scope: !489, file: !3, line: 97, column: 3)
!542 = !{i64 2152591139}
!543 = !DILocation(line: 97, column: 3, scope: !488)
!544 = !DILocation(line: 97, column: 3, scope: !545)
!545 = distinct !DILexicalBlock(scope: !488, file: !3, line: 97, column: 3)
!546 = !{i64 2152591426}
!547 = !DILocation(line: 97, column: 3, scope: !487)
!548 = !{i64 2152592241}
!549 = !DILocation(line: 98, column: 3, scope: !482)
!550 = !DILocation(line: 99, column: 2, scope: !482)
!551 = !DILocation(line: 100, column: 3, scope: !493)
!552 = !DILocation(line: 100, column: 3, scope: !492)
!553 = !DILocation(line: 100, column: 3, scope: !491)
!554 = !DILocation(line: 100, column: 3, scope: !495)
!555 = !DILocation(line: 100, column: 3, scope: !499)
!556 = !DILocation(line: 100, column: 3, scope: !557)
!557 = distinct !DILexicalBlock(scope: !499, file: !3, line: 100, column: 3)
!558 = !{i64 2152600546}
!559 = !DILocation(line: 100, column: 3, scope: !498)
!560 = !DILocation(line: 100, column: 3, scope: !561)
!561 = distinct !DILexicalBlock(scope: !498, file: !3, line: 100, column: 3)
!562 = !{i64 2152600842}
!563 = !DILocation(line: 100, column: 3, scope: !497)
!564 = !{i64 2152601549}
!565 = !DILocation(line: 102, column: 2, scope: !454)
!566 = !DILocation(line: 102, column: 2, scope: !503)
!567 = !DILocation(line: 102, column: 2, scope: !501)
!568 = !DILocation(line: 102, column: 2, scope: !502)
!569 = !DILocation(line: 102, column: 2, scope: !570)
!570 = distinct !DILexicalBlock(scope: !502, file: !3, line: 102, column: 2)
!571 = !DILocation(line: 103, column: 1, scope: !454)
!572 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !573, file: !573, line: 101, type: !574, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!573 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!574 = !DISubroutineType(types: !575)
!575 = !{!214}
!576 = !{!577}
!577 = !DILocalVariable(name: "flags", scope: !572, file: !573, line: 103, type: !214)
!578 = !DILocation(line: 103, column: 2, scope: !572)
!579 = !DILocation(line: 103, column: 16, scope: !572)
!580 = !DILocation(line: 103, column: 24, scope: !572)
!581 = !DILocation(line: 104, column: 2, scope: !572)
!582 = !DILocation(line: 105, column: 9, scope: !572)
!583 = !DILocation(line: 106, column: 1, scope: !572)
!584 = !DILocation(line: 105, column: 2, scope: !572)
!585 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !586, file: !586, line: 313, type: !587, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !591)
!586 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!587 = !DISubroutineType(types: !588)
!588 = !{null, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!591 = !{!592}
!592 = !DILocalVariable(name: "op", arg: 1, scope: !585, file: !586, line: 313, type: !589)
!593 = !DILocation(line: 313, column: 66, scope: !585)
!594 = !DILocation(line: 313, column: 72, scope: !585)
!595 = !DISubprogram(name: "_raw_spin_lock", scope: !406, file: !406, line: 22, type: !596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !409}
!598 = !DISubprogram(name: "_raw_spin_unlock", scope: !406, file: !406, line: 39, type: !596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!599 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !573, file: !573, line: 132, type: !600, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !214}
!602 = !{!603}
!603 = !DILocalVariable(name: "flags", arg: 1, scope: !599, file: !573, line: 132, type: !214)
!604 = !DILocation(line: 132, column: 66, scope: !599)
!605 = !DILocation(line: 134, column: 32, scope: !606)
!606 = distinct !DILexicalBlock(scope: !599, file: !573, line: 134, column: 6)
!607 = !DILocation(line: 134, column: 7, scope: !606)
!608 = !DILocation(line: 134, column: 6, scope: !599)
!609 = !DILocation(line: 135, column: 3, scope: !606)
!610 = !DILocation(line: 136, column: 1, scope: !599)
!611 = distinct !DISubprogram(name: "percpu_counter_sync", scope: !3, file: !3, line: 112, type: !612, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !614)
!612 = !DISubroutineType(types: !613)
!613 = !{null, !236}
!614 = !{!615, !616, !617, !618, !621, !622, !625, !627, !629, !633, !635, !639, !642}
!615 = !DILocalVariable(name: "fbc", arg: 1, scope: !611, file: !3, line: 112, type: !236)
!616 = !DILocalVariable(name: "flags", scope: !611, file: !3, line: 114, type: !214)
!617 = !DILocalVariable(name: "count", scope: !611, file: !3, line: 115, type: !275)
!618 = !DILocalVariable(name: "__dummy", scope: !619, file: !3, line: 117, type: !214)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 117, column: 2)
!620 = distinct !DILexicalBlock(scope: !611, file: !3, line: 117, column: 2)
!621 = !DILocalVariable(name: "__dummy2", scope: !619, file: !3, line: 117, type: !214)
!622 = !DILocalVariable(name: "pscr_ret__", scope: !623, file: !3, line: 118, type: !218)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 118, column: 10)
!624 = distinct !DILexicalBlock(scope: !611, file: !3, line: 118, column: 10)
!625 = !DILocalVariable(name: "__vpp_verify", scope: !626, file: !3, line: 118, type: !365)
!626 = distinct !DILexicalBlock(scope: !623, file: !3, line: 118, column: 10)
!627 = !DILocalVariable(name: "pfo_val__", scope: !628, file: !3, line: 118, type: !223)
!628 = distinct !DILexicalBlock(scope: !623, file: !3, line: 118, column: 10)
!629 = !DILocalVariable(name: "__vpp_verify", scope: !630, file: !3, line: 120, type: !365)
!630 = distinct !DILexicalBlock(scope: !631, file: !3, line: 120, column: 2)
!631 = distinct !DILexicalBlock(scope: !632, file: !3, line: 120, column: 2)
!632 = distinct !DILexicalBlock(scope: !611, file: !3, line: 120, column: 2)
!633 = !DILocalVariable(name: "pao_ID__", scope: !634, file: !3, line: 120, type: !485)
!634 = distinct !DILexicalBlock(scope: !631, file: !3, line: 120, column: 2)
!635 = !DILocalVariable(name: "pto_val__", scope: !636, file: !3, line: 120, type: !223)
!636 = distinct !DILexicalBlock(scope: !637, file: !3, line: 120, column: 2)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 120, column: 2)
!638 = distinct !DILexicalBlock(scope: !634, file: !3, line: 120, column: 2)
!639 = !DILocalVariable(name: "__dummy", scope: !640, file: !3, line: 121, type: !214)
!640 = distinct !DILexicalBlock(scope: !641, file: !3, line: 121, column: 2)
!641 = distinct !DILexicalBlock(scope: !611, file: !3, line: 121, column: 2)
!642 = !DILocalVariable(name: "__dummy2", scope: !640, file: !3, line: 121, type: !214)
!643 = !DILocation(line: 112, column: 49, scope: !611)
!644 = !DILocation(line: 114, column: 2, scope: !611)
!645 = !DILocation(line: 114, column: 16, scope: !611)
!646 = !DILocation(line: 115, column: 2, scope: !611)
!647 = !DILocation(line: 115, column: 6, scope: !611)
!648 = !DILocation(line: 117, column: 2, scope: !611)
!649 = !DILocation(line: 117, column: 2, scope: !619)
!650 = !DILocation(line: 117, column: 2, scope: !620)
!651 = !DILocation(line: 118, column: 10, scope: !624)
!652 = !DILocation(line: 118, column: 10, scope: !623)
!653 = !DILocation(line: 118, column: 10, scope: !626)
!654 = !DILocation(line: 118, column: 10, scope: !628)
!655 = !{i64 2152608751}
!656 = !DILocation(line: 118, column: 10, scope: !611)
!657 = !DILocation(line: 118, column: 8, scope: !611)
!658 = !DILocation(line: 119, column: 16, scope: !611)
!659 = !DILocation(line: 119, column: 2, scope: !611)
!660 = !DILocation(line: 119, column: 7, scope: !611)
!661 = !DILocation(line: 119, column: 13, scope: !611)
!662 = !DILocation(line: 120, column: 2, scope: !632)
!663 = !DILocation(line: 120, column: 2, scope: !631)
!664 = !DILocation(line: 120, column: 2, scope: !630)
!665 = !DILocation(line: 120, column: 2, scope: !634)
!666 = !DILocation(line: 120, column: 2, scope: !638)
!667 = !DILocation(line: 120, column: 2, scope: !668)
!668 = distinct !DILexicalBlock(scope: !638, file: !3, line: 120, column: 2)
!669 = !{i64 2152616261}
!670 = !DILocation(line: 120, column: 2, scope: !637)
!671 = !DILocation(line: 120, column: 2, scope: !672)
!672 = distinct !DILexicalBlock(scope: !637, file: !3, line: 120, column: 2)
!673 = !{i64 2152616548}
!674 = !DILocation(line: 120, column: 2, scope: !636)
!675 = !{i64 2152617336}
!676 = !DILocation(line: 121, column: 2, scope: !611)
!677 = !DILocation(line: 121, column: 2, scope: !640)
!678 = !DILocation(line: 121, column: 2, scope: !641)
!679 = !DILocation(line: 122, column: 1, scope: !611)
!680 = distinct !DISubprogram(name: "__percpu_counter_sum", scope: !3, file: !3, line: 137, type: !681, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{!275, !236}
!683 = !{!684, !685, !686, !687, !688, !691, !692, !696, !699, !701, !704}
!684 = !DILocalVariable(name: "fbc", arg: 1, scope: !680, file: !3, line: 137, type: !236)
!685 = !DILocalVariable(name: "ret", scope: !680, file: !3, line: 139, type: !275)
!686 = !DILocalVariable(name: "cpu", scope: !680, file: !3, line: 140, type: !13)
!687 = !DILocalVariable(name: "flags", scope: !680, file: !3, line: 141, type: !214)
!688 = !DILocalVariable(name: "__dummy", scope: !689, file: !3, line: 143, type: !214)
!689 = distinct !DILexicalBlock(scope: !690, file: !3, line: 143, column: 2)
!690 = distinct !DILexicalBlock(scope: !680, file: !3, line: 143, column: 2)
!691 = !DILocalVariable(name: "__dummy2", scope: !689, file: !3, line: 143, type: !214)
!692 = !DILocalVariable(name: "pcount", scope: !693, file: !3, line: 146, type: !217)
!693 = distinct !DILexicalBlock(scope: !694, file: !3, line: 145, column: 56)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 145, column: 2)
!695 = distinct !DILexicalBlock(scope: !680, file: !3, line: 145, column: 2)
!696 = !DILocalVariable(name: "__vpp_verify", scope: !697, file: !3, line: 146, type: !365)
!697 = distinct !DILexicalBlock(scope: !698, file: !3, line: 146, column: 17)
!698 = distinct !DILexicalBlock(scope: !693, file: !3, line: 146, column: 17)
!699 = !DILocalVariable(name: "__ptr", scope: !700, file: !3, line: 146, type: !214)
!700 = distinct !DILexicalBlock(scope: !698, file: !3, line: 146, column: 17)
!701 = !DILocalVariable(name: "__dummy", scope: !702, file: !3, line: 149, type: !214)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 149, column: 2)
!703 = distinct !DILexicalBlock(scope: !680, file: !3, line: 149, column: 2)
!704 = !DILocalVariable(name: "__dummy2", scope: !702, file: !3, line: 149, type: !214)
!705 = !DILocation(line: 137, column: 49, scope: !680)
!706 = !DILocation(line: 139, column: 2, scope: !680)
!707 = !DILocation(line: 139, column: 6, scope: !680)
!708 = !DILocation(line: 140, column: 2, scope: !680)
!709 = !DILocation(line: 140, column: 6, scope: !680)
!710 = !DILocation(line: 141, column: 2, scope: !680)
!711 = !DILocation(line: 141, column: 16, scope: !680)
!712 = !DILocation(line: 143, column: 2, scope: !680)
!713 = !DILocation(line: 143, column: 2, scope: !689)
!714 = !DILocation(line: 143, column: 2, scope: !690)
!715 = !DILocation(line: 144, column: 8, scope: !680)
!716 = !DILocation(line: 144, column: 13, scope: !680)
!717 = !DILocation(line: 144, column: 6, scope: !680)
!718 = !DILocation(line: 145, column: 2, scope: !695)
!719 = !DILocation(line: 145, column: 2, scope: !694)
!720 = !DILocation(line: 146, column: 3, scope: !693)
!721 = !DILocation(line: 146, column: 8, scope: !693)
!722 = !DILocation(line: 146, column: 17, scope: !698)
!723 = !DILocation(line: 146, column: 17, scope: !697)
!724 = !DILocation(line: 146, column: 17, scope: !700)
!725 = !DILocation(line: 147, column: 11, scope: !693)
!726 = !DILocation(line: 147, column: 10, scope: !693)
!727 = !DILocation(line: 147, column: 7, scope: !693)
!728 = !DILocation(line: 148, column: 2, scope: !694)
!729 = !DILocation(line: 148, column: 2, scope: !693)
!730 = distinct !{!730, !718, !731, !395, !396}
!731 = !DILocation(line: 148, column: 2, scope: !695)
!732 = !DILocation(line: 149, column: 2, scope: !680)
!733 = !DILocation(line: 149, column: 2, scope: !702)
!734 = !DILocation(line: 149, column: 2, scope: !703)
!735 = !DILocation(line: 150, column: 9, scope: !680)
!736 = !DILocation(line: 151, column: 1, scope: !680)
!737 = !DILocation(line: 150, column: 2, scope: !680)
!738 = distinct !DISubprogram(name: "find_next_or_bit", scope: !411, file: !411, line: 144, type: !739, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !741)
!739 = !DISubroutineType(types: !740)
!740 = !{!214, !414, !414, !214, !214}
!741 = !{!742, !743, !744, !745, !746}
!742 = !DILocalVariable(name: "addr1", arg: 1, scope: !738, file: !411, line: 144, type: !414)
!743 = !DILocalVariable(name: "addr2", arg: 2, scope: !738, file: !411, line: 145, type: !414)
!744 = !DILocalVariable(name: "size", arg: 3, scope: !738, file: !411, line: 145, type: !214)
!745 = !DILocalVariable(name: "offset", arg: 4, scope: !738, file: !411, line: 146, type: !214)
!746 = !DILocalVariable(name: "val", scope: !747, file: !411, line: 149, type: !214)
!747 = distinct !DILexicalBlock(scope: !748, file: !411, line: 148, column: 31)
!748 = distinct !DILexicalBlock(scope: !738, file: !411, line: 148, column: 6)
!749 = !DILocation(line: 144, column: 53, scope: !738)
!750 = !DILocation(line: 145, column: 24, scope: !738)
!751 = !DILocation(line: 145, column: 45, scope: !738)
!752 = !DILocation(line: 146, column: 17, scope: !738)
!753 = !DILocation(line: 148, column: 6, scope: !748)
!754 = !DILocation(line: 148, column: 6, scope: !738)
!755 = !DILocation(line: 149, column: 3, scope: !747)
!756 = !DILocation(line: 149, column: 17, scope: !747)
!757 = !DILocation(line: 151, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !747, file: !411, line: 151, column: 7)
!759 = !DILocation(line: 151, column: 7, scope: !747)
!760 = !DILocation(line: 152, column: 11, scope: !758)
!761 = !DILocation(line: 152, column: 4, scope: !758)
!762 = !DILocation(line: 154, column: 11, scope: !747)
!763 = !DILocation(line: 154, column: 10, scope: !747)
!764 = !DILocation(line: 154, column: 20, scope: !747)
!765 = !DILocation(line: 154, column: 19, scope: !747)
!766 = !DILocation(line: 154, column: 17, scope: !747)
!767 = !DILocation(line: 154, column: 29, scope: !747)
!768 = !DILocation(line: 154, column: 27, scope: !747)
!769 = !DILocation(line: 154, column: 7, scope: !747)
!770 = !DILocation(line: 155, column: 10, scope: !747)
!771 = !DILocation(line: 155, column: 16, scope: !747)
!772 = !DILocation(line: 155, column: 29, scope: !747)
!773 = !DILocation(line: 155, column: 3, scope: !747)
!774 = !DILocation(line: 156, column: 2, scope: !748)
!775 = !DILocation(line: 158, column: 27, scope: !738)
!776 = !DILocation(line: 158, column: 34, scope: !738)
!777 = !DILocation(line: 158, column: 41, scope: !738)
!778 = !DILocation(line: 158, column: 47, scope: !738)
!779 = !DILocation(line: 158, column: 9, scope: !738)
!780 = !DILocation(line: 158, column: 2, scope: !738)
!781 = !DILocation(line: 159, column: 1, scope: !738)
!782 = distinct !DISubprogram(name: "__percpu_counter_init_many", scope: !3, file: !3, line: 154, type: !783, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !790)
!783 = !DISubroutineType(types: !784)
!784 = !{!13, !236, !275, !785, !223, !786}
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !229, line: 154, baseType: !7)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !788, line: 206, elements: !789)
!788 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!789 = !{}
!790 = !{!791, !792, !793, !794, !795, !796, !797, !802, !803, !804, !808}
!791 = !DILocalVariable(name: "fbc", arg: 1, scope: !782, file: !3, line: 154, type: !236)
!792 = !DILocalVariable(name: "amount", arg: 2, scope: !782, file: !3, line: 154, type: !275)
!793 = !DILocalVariable(name: "gfp", arg: 3, scope: !782, file: !3, line: 155, type: !785)
!794 = !DILocalVariable(name: "nr_counters", arg: 4, scope: !782, file: !3, line: 155, type: !223)
!795 = !DILocalVariable(name: "key", arg: 5, scope: !782, file: !3, line: 156, type: !786)
!796 = !DILocalVariable(name: "flags", scope: !782, file: !3, line: 158, type: !214)
!797 = !DILocalVariable(name: "counter_size", scope: !782, file: !3, line: 159, type: !798)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !229, line: 61, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !800, line: 72, baseType: !801)
!800 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !800, line: 16, baseType: !214)
!802 = !DILocalVariable(name: "counters", scope: !782, file: !3, line: 160, type: !217)
!803 = !DILocalVariable(name: "i", scope: !782, file: !3, line: 161, type: !223)
!804 = !DILocalVariable(name: "__dummy", scope: !805, file: !3, line: 184, type: !214)
!805 = distinct !DILexicalBlock(scope: !806, file: !3, line: 184, column: 2)
!806 = distinct !DILexicalBlock(scope: !807, file: !3, line: 184, column: 2)
!807 = distinct !DILexicalBlock(scope: !782, file: !3, line: 184, column: 2)
!808 = !DILocalVariable(name: "__dummy2", scope: !805, file: !3, line: 184, type: !214)
!809 = !DILocation(line: 154, column: 55, scope: !782)
!810 = !DILocation(line: 154, column: 64, scope: !782)
!811 = !DILocation(line: 155, column: 17, scope: !782)
!812 = !DILocation(line: 155, column: 26, scope: !782)
!813 = !DILocation(line: 156, column: 34, scope: !782)
!814 = !DILocation(line: 158, column: 2, scope: !782)
!815 = !DILocation(line: 158, column: 16, scope: !782)
!816 = !DILocation(line: 159, column: 2, scope: !782)
!817 = !DILocation(line: 159, column: 9, scope: !782)
!818 = !DILocation(line: 160, column: 2, scope: !782)
!819 = !DILocation(line: 160, column: 16, scope: !782)
!820 = !DILocation(line: 161, column: 2, scope: !782)
!821 = !DILocation(line: 161, column: 6, scope: !782)
!822 = !DILocation(line: 163, column: 15, scope: !782)
!823 = !DILocation(line: 164, column: 32, scope: !782)
!824 = !DILocation(line: 164, column: 46, scope: !782)
!825 = !DILocation(line: 164, column: 44, scope: !782)
!826 = !DILocation(line: 165, column: 35, scope: !782)
!827 = !DILocation(line: 164, column: 13, scope: !782)
!828 = !DILocation(line: 164, column: 11, scope: !782)
!829 = !DILocation(line: 166, column: 7, scope: !830)
!830 = distinct !DILexicalBlock(scope: !782, file: !3, line: 166, column: 6)
!831 = !DILocation(line: 166, column: 6, scope: !782)
!832 = !DILocation(line: 167, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !830, file: !3, line: 166, column: 17)
!834 = !DILocation(line: 167, column: 10, scope: !833)
!835 = !DILocation(line: 167, column: 19, scope: !833)
!836 = !DILocation(line: 168, column: 3, scope: !833)
!837 = !DILocation(line: 171, column: 9, scope: !838)
!838 = distinct !DILexicalBlock(scope: !782, file: !3, line: 171, column: 2)
!839 = !DILocation(line: 171, column: 7, scope: !838)
!840 = !DILocation(line: 171, column: 14, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !3, line: 171, column: 2)
!842 = !DILocation(line: 171, column: 18, scope: !841)
!843 = !DILocation(line: 171, column: 16, scope: !841)
!844 = !DILocation(line: 171, column: 2, scope: !838)
!845 = !DILocation(line: 172, column: 3, scope: !846)
!846 = distinct !DILexicalBlock(scope: !841, file: !3, line: 171, column: 36)
!847 = !DILocation(line: 172, column: 3, scope: !848)
!848 = distinct !DILexicalBlock(scope: !846, file: !3, line: 172, column: 3)
!849 = !DILocation(line: 173, column: 3, scope: !846)
!850 = !DILocation(line: 173, column: 3, scope: !851)
!851 = distinct !DILexicalBlock(scope: !846, file: !3, line: 173, column: 3)
!852 = !DILocation(line: 175, column: 19, scope: !846)
!853 = !DILocation(line: 175, column: 23, scope: !846)
!854 = !DILocation(line: 175, column: 26, scope: !846)
!855 = !DILocation(line: 175, column: 3, scope: !846)
!856 = !DILocation(line: 177, column: 18, scope: !846)
!857 = !DILocation(line: 177, column: 3, scope: !846)
!858 = !DILocation(line: 177, column: 7, scope: !846)
!859 = !DILocation(line: 177, column: 10, scope: !846)
!860 = !DILocation(line: 177, column: 16, scope: !846)
!861 = !DILocation(line: 178, column: 29, scope: !846)
!862 = !DILocation(line: 178, column: 41, scope: !846)
!863 = !DILocation(line: 178, column: 45, scope: !846)
!864 = !DILocation(line: 178, column: 43, scope: !846)
!865 = !DILocation(line: 178, column: 38, scope: !846)
!866 = !DILocation(line: 178, column: 3, scope: !846)
!867 = !DILocation(line: 178, column: 7, scope: !846)
!868 = !DILocation(line: 178, column: 10, scope: !846)
!869 = !DILocation(line: 178, column: 19, scope: !846)
!870 = !DILocation(line: 180, column: 34, scope: !846)
!871 = !DILocation(line: 180, column: 38, scope: !846)
!872 = !DILocation(line: 180, column: 3, scope: !846)
!873 = !DILocation(line: 181, column: 2, scope: !846)
!874 = !DILocation(line: 171, column: 32, scope: !841)
!875 = !DILocation(line: 171, column: 2, scope: !841)
!876 = distinct !{!876, !844, !877, !395, !396}
!877 = !DILocation(line: 181, column: 2, scope: !838)
!878 = !DILocation(line: 184, column: 2, scope: !782)
!879 = !DILocation(line: 184, column: 2, scope: !807)
!880 = !DILocation(line: 184, column: 2, scope: !805)
!881 = !DILocation(line: 184, column: 2, scope: !806)
!882 = !DILocation(line: 185, column: 9, scope: !883)
!883 = distinct !DILexicalBlock(scope: !782, file: !3, line: 185, column: 2)
!884 = !DILocation(line: 185, column: 7, scope: !883)
!885 = !DILocation(line: 185, column: 14, scope: !886)
!886 = distinct !DILexicalBlock(scope: !883, file: !3, line: 185, column: 2)
!887 = !DILocation(line: 185, column: 18, scope: !886)
!888 = !DILocation(line: 185, column: 16, scope: !886)
!889 = !DILocation(line: 185, column: 2, scope: !883)
!890 = !DILocation(line: 186, column: 13, scope: !886)
!891 = !DILocation(line: 186, column: 17, scope: !886)
!892 = !DILocation(line: 186, column: 20, scope: !886)
!893 = !DILocation(line: 186, column: 3, scope: !886)
!894 = !DILocation(line: 185, column: 32, scope: !886)
!895 = !DILocation(line: 185, column: 2, scope: !886)
!896 = distinct !{!896, !889, !897, !395, !396}
!897 = !DILocation(line: 186, column: 42, scope: !883)
!898 = !DILocation(line: 187, column: 48, scope: !782)
!899 = !DILocation(line: 187, column: 2, scope: !782)
!900 = !DILocation(line: 189, column: 2, scope: !782)
!901 = !DILocation(line: 190, column: 1, scope: !782)
!902 = !DISubprogram(name: "__alloc_percpu_gfp", scope: !903, file: !903, line: 132, type: !904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!903 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!904 = !DISubroutineType(types: !905)
!905 = !{!222, !798, !798, !785}
!906 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !907, file: !907, line: 35, type: !908, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !910)
!907 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!908 = !DISubroutineType(types: !909)
!909 = !{null, !227}
!910 = !{!911}
!911 = !DILocalVariable(name: "list", arg: 1, scope: !906, file: !907, line: 35, type: !227)
!912 = !DILocation(line: 35, column: 53, scope: !906)
!913 = !DILocation(line: 37, column: 2, scope: !906)
!914 = !DILocation(line: 37, column: 2, scope: !915)
!915 = distinct !DILexicalBlock(scope: !906, file: !907, line: 37, column: 2)
!916 = !DILocation(line: 37, column: 2, scope: !917)
!917 = distinct !DILexicalBlock(scope: !915, file: !907, line: 37, column: 2)
!918 = !DILocation(line: 37, column: 2, scope: !919)
!919 = distinct !DILexicalBlock(scope: !915, file: !907, line: 37, column: 2)
!920 = !DILocation(line: 38, column: 2, scope: !906)
!921 = !DILocation(line: 38, column: 2, scope: !922)
!922 = distinct !DILexicalBlock(scope: !906, file: !907, line: 38, column: 2)
!923 = !DILocation(line: 38, column: 2, scope: !924)
!924 = distinct !DILexicalBlock(scope: !922, file: !907, line: 38, column: 2)
!925 = !DILocation(line: 38, column: 2, scope: !926)
!926 = distinct !DILexicalBlock(scope: !922, file: !907, line: 38, column: 2)
!927 = !DILocation(line: 39, column: 1, scope: !906)
!928 = distinct !DISubprogram(name: "debug_percpu_counter_activate", scope: !3, file: !3, line: 54, type: !612, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !929)
!929 = !{!930}
!930 = !DILocalVariable(name: "fbc", arg: 1, scope: !928, file: !3, line: 54, type: !236)
!931 = !DILocation(line: 54, column: 73, scope: !928)
!932 = !DILocation(line: 55, column: 3, scope: !928)
!933 = distinct !DISubprogram(name: "spinlock_check", scope: !934, file: !934, line: 324, type: !935, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !938)
!934 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!935 = !DISubroutineType(types: !936)
!936 = !{!409, !937}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!938 = !{!939}
!939 = !DILocalVariable(name: "lock", arg: 1, scope: !933, file: !934, line: 324, type: !937)
!940 = !DILocation(line: 324, column: 67, scope: !933)
!941 = !DILocation(line: 326, column: 10, scope: !933)
!942 = !DILocation(line: 326, column: 16, scope: !933)
!943 = !DILocation(line: 326, column: 2, scope: !933)
!944 = distinct !DISubprogram(name: "list_add", scope: !907, file: !907, line: 167, type: !945, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !947)
!945 = !DISubroutineType(types: !946)
!946 = !{null, !227, !227}
!947 = !{!948, !949}
!948 = !DILocalVariable(name: "new", arg: 1, scope: !944, file: !907, line: 167, type: !227)
!949 = !DILocalVariable(name: "head", arg: 2, scope: !944, file: !907, line: 167, type: !227)
!950 = !DILocation(line: 167, column: 47, scope: !944)
!951 = !DILocation(line: 167, column: 70, scope: !944)
!952 = !DILocation(line: 169, column: 13, scope: !944)
!953 = !DILocation(line: 169, column: 18, scope: !944)
!954 = !DILocation(line: 169, column: 24, scope: !944)
!955 = !DILocation(line: 169, column: 30, scope: !944)
!956 = !DILocation(line: 169, column: 2, scope: !944)
!957 = !DILocation(line: 170, column: 1, scope: !944)
!958 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !934, file: !934, line: 404, type: !959, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !961)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !937, !214}
!961 = !{!962, !963, !964, !967}
!962 = !DILocalVariable(name: "lock", arg: 1, scope: !958, file: !934, line: 404, type: !937)
!963 = !DILocalVariable(name: "flags", arg: 2, scope: !958, file: !934, line: 404, type: !214)
!964 = !DILocalVariable(name: "__dummy", scope: !965, file: !934, line: 406, type: !214)
!965 = distinct !DILexicalBlock(scope: !966, file: !934, line: 406, column: 2)
!966 = distinct !DILexicalBlock(scope: !958, file: !934, line: 406, column: 2)
!967 = !DILocalVariable(name: "__dummy2", scope: !965, file: !934, line: 406, type: !214)
!968 = !DILocation(line: 404, column: 64, scope: !958)
!969 = !DILocation(line: 404, column: 84, scope: !958)
!970 = !DILocation(line: 406, column: 2, scope: !958)
!971 = !DILocation(line: 406, column: 2, scope: !965)
!972 = !DILocation(line: 406, column: 2, scope: !966)
!973 = !DILocation(line: 407, column: 1, scope: !958)
!974 = distinct !DISubprogram(name: "percpu_counter_destroy_many", scope: !3, file: !3, line: 193, type: !975, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !977)
!975 = !DISubroutineType(types: !976)
!976 = !{null, !236, !223}
!977 = !{!978, !979, !980, !981, !982, !985, !988, !992}
!978 = !DILocalVariable(name: "fbc", arg: 1, scope: !974, file: !3, line: 193, type: !236)
!979 = !DILocalVariable(name: "nr_counters", arg: 2, scope: !974, file: !3, line: 193, type: !223)
!980 = !DILocalVariable(name: "flags", scope: !974, file: !3, line: 195, type: !214)
!981 = !DILocalVariable(name: "i", scope: !974, file: !3, line: 196, type: !223)
!982 = !DILocalVariable(name: "__ret_warn_on", scope: !983, file: !3, line: 198, type: !13)
!983 = distinct !DILexicalBlock(scope: !984, file: !3, line: 198, column: 6)
!984 = distinct !DILexicalBlock(scope: !974, file: !3, line: 198, column: 6)
!985 = !DILocalVariable(name: "__flags", scope: !986, file: !3, line: 198, type: !13)
!986 = distinct !DILexicalBlock(scope: !987, file: !3, line: 198, column: 6)
!987 = distinct !DILexicalBlock(scope: !983, file: !3, line: 198, column: 6)
!988 = !DILocalVariable(name: "__dummy", scope: !989, file: !3, line: 208, type: !214)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 208, column: 2)
!990 = distinct !DILexicalBlock(scope: !991, file: !3, line: 208, column: 2)
!991 = distinct !DILexicalBlock(scope: !974, file: !3, line: 208, column: 2)
!992 = !DILocalVariable(name: "__dummy2", scope: !989, file: !3, line: 208, type: !214)
!993 = !DILocation(line: 193, column: 57, scope: !974)
!994 = !DILocation(line: 193, column: 66, scope: !974)
!995 = !DILocation(line: 195, column: 2, scope: !974)
!996 = !DILocation(line: 195, column: 16, scope: !974)
!997 = !DILocation(line: 196, column: 2, scope: !974)
!998 = !DILocation(line: 196, column: 6, scope: !974)
!999 = !DILocation(line: 198, column: 6, scope: !983)
!1000 = !DILocation(line: 198, column: 6, scope: !987)
!1001 = !DILocation(line: 198, column: 6, scope: !986)
!1002 = !DILocation(line: 198, column: 6, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !986, file: !3, line: 198, column: 6)
!1004 = !DILocation(line: 198, column: 6, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !986, file: !3, line: 198, column: 6)
!1006 = !{i64 2152633477, i64 2152633506, i64 2152633552, i64 2152633610, i64 2152633664, i64 2152633718, i64 2152633773, i64 2152633804, i64 2152634112, i64 2152634118, i64 2152634165, i64 2152634188, i64 2152634214}
!1007 = !DILocation(line: 198, column: 6, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !986, file: !3, line: 198, column: 6)
!1009 = !DILocation(line: 198, column: 6, scope: !984)
!1010 = !DILocation(line: 198, column: 6, scope: !974)
!1011 = !DILocation(line: 199, column: 3, scope: !984)
!1012 = !DILocation(line: 201, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !974, file: !3, line: 201, column: 6)
!1014 = !DILocation(line: 201, column: 14, scope: !1013)
!1015 = !DILocation(line: 201, column: 6, scope: !974)
!1016 = !DILocation(line: 202, column: 3, scope: !1013)
!1017 = !DILocation(line: 204, column: 9, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !974, file: !3, line: 204, column: 2)
!1019 = !DILocation(line: 204, column: 7, scope: !1018)
!1020 = !DILocation(line: 204, column: 14, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 204, column: 2)
!1022 = !DILocation(line: 204, column: 18, scope: !1021)
!1023 = !DILocation(line: 204, column: 16, scope: !1021)
!1024 = !DILocation(line: 204, column: 2, scope: !1018)
!1025 = !DILocation(line: 205, column: 36, scope: !1021)
!1026 = !DILocation(line: 205, column: 40, scope: !1021)
!1027 = !DILocation(line: 205, column: 3, scope: !1021)
!1028 = !DILocation(line: 204, column: 32, scope: !1021)
!1029 = !DILocation(line: 204, column: 2, scope: !1021)
!1030 = distinct !{!1030, !1024, !1031, !395, !396}
!1031 = !DILocation(line: 205, column: 42, scope: !1018)
!1032 = !DILocation(line: 208, column: 2, scope: !974)
!1033 = !DILocation(line: 208, column: 2, scope: !991)
!1034 = !DILocation(line: 208, column: 2, scope: !989)
!1035 = !DILocation(line: 208, column: 2, scope: !990)
!1036 = !DILocation(line: 209, column: 9, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !974, file: !3, line: 209, column: 2)
!1038 = !DILocation(line: 209, column: 7, scope: !1037)
!1039 = !DILocation(line: 209, column: 14, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 209, column: 2)
!1041 = !DILocation(line: 209, column: 18, scope: !1040)
!1042 = !DILocation(line: 209, column: 16, scope: !1040)
!1043 = !DILocation(line: 209, column: 2, scope: !1037)
!1044 = !DILocation(line: 210, column: 13, scope: !1040)
!1045 = !DILocation(line: 210, column: 17, scope: !1040)
!1046 = !DILocation(line: 210, column: 20, scope: !1040)
!1047 = !DILocation(line: 210, column: 3, scope: !1040)
!1048 = !DILocation(line: 209, column: 32, scope: !1040)
!1049 = !DILocation(line: 209, column: 2, scope: !1040)
!1050 = distinct !{!1050, !1043, !1051, !395, !396}
!1051 = !DILocation(line: 210, column: 24, scope: !1037)
!1052 = !DILocation(line: 211, column: 48, scope: !974)
!1053 = !DILocation(line: 211, column: 2, scope: !974)
!1054 = !DILocation(line: 214, column: 14, scope: !974)
!1055 = !DILocation(line: 214, column: 21, scope: !974)
!1056 = !DILocation(line: 214, column: 2, scope: !974)
!1057 = !DILocation(line: 216, column: 9, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !974, file: !3, line: 216, column: 2)
!1059 = !DILocation(line: 216, column: 7, scope: !1058)
!1060 = !DILocation(line: 216, column: 14, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 216, column: 2)
!1062 = !DILocation(line: 216, column: 18, scope: !1061)
!1063 = !DILocation(line: 216, column: 16, scope: !1061)
!1064 = !DILocation(line: 216, column: 2, scope: !1058)
!1065 = !DILocation(line: 217, column: 3, scope: !1061)
!1066 = !DILocation(line: 217, column: 7, scope: !1061)
!1067 = !DILocation(line: 217, column: 10, scope: !1061)
!1068 = !DILocation(line: 217, column: 19, scope: !1061)
!1069 = !DILocation(line: 216, column: 32, scope: !1061)
!1070 = !DILocation(line: 216, column: 2, scope: !1061)
!1071 = distinct !{!1071, !1064, !1072, !395, !396}
!1072 = !DILocation(line: 217, column: 21, scope: !1058)
!1073 = !DILocation(line: 218, column: 1, scope: !974)
!1074 = distinct !DISubprogram(name: "debug_percpu_counter_deactivate", scope: !3, file: !3, line: 56, type: !612, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1075)
!1075 = !{!1076}
!1076 = !DILocalVariable(name: "fbc", arg: 1, scope: !1074, file: !3, line: 56, type: !236)
!1077 = !DILocation(line: 56, column: 75, scope: !1074)
!1078 = !DILocation(line: 57, column: 3, scope: !1074)
!1079 = distinct !DISubprogram(name: "list_del", scope: !907, file: !907, line: 227, type: !908, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1080)
!1080 = !{!1081}
!1081 = !DILocalVariable(name: "entry", arg: 1, scope: !1079, file: !907, line: 227, type: !227)
!1082 = !DILocation(line: 227, column: 47, scope: !1079)
!1083 = !DILocation(line: 229, column: 19, scope: !1079)
!1084 = !DILocation(line: 229, column: 2, scope: !1079)
!1085 = !DILocation(line: 230, column: 2, scope: !1079)
!1086 = !DILocation(line: 230, column: 9, scope: !1079)
!1087 = !DILocation(line: 230, column: 14, scope: !1079)
!1088 = !DILocation(line: 231, column: 2, scope: !1079)
!1089 = !DILocation(line: 231, column: 9, scope: !1079)
!1090 = !DILocation(line: 231, column: 14, scope: !1079)
!1091 = !DILocation(line: 232, column: 1, scope: !1079)
!1092 = !DISubprogram(name: "free_percpu", scope: !903, file: !903, line: 134, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !222}
!1095 = distinct !DISubprogram(name: "__percpu_counter_compare", scope: !3, file: !3, line: 258, type: !1096, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!13, !236, !275, !218}
!1098 = !{!1099, !1100, !1101, !1102, !1103}
!1099 = !DILocalVariable(name: "fbc", arg: 1, scope: !1095, file: !3, line: 258, type: !236)
!1100 = !DILocalVariable(name: "rhs", arg: 2, scope: !1095, file: !3, line: 258, type: !275)
!1101 = !DILocalVariable(name: "batch", arg: 3, scope: !1095, file: !3, line: 258, type: !218)
!1102 = !DILocalVariable(name: "count", scope: !1095, file: !3, line: 260, type: !275)
!1103 = !DILocalVariable(name: "__x", scope: !1104, file: !3, line: 264, type: !277)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 264, column: 6)
!1105 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 264, column: 6)
!1106 = !DILocation(line: 258, column: 53, scope: !1095)
!1107 = !DILocation(line: 258, column: 62, scope: !1095)
!1108 = !DILocation(line: 258, column: 71, scope: !1095)
!1109 = !DILocation(line: 260, column: 2, scope: !1095)
!1110 = !DILocation(line: 260, column: 6, scope: !1095)
!1111 = !DILocation(line: 262, column: 30, scope: !1095)
!1112 = !DILocation(line: 262, column: 10, scope: !1095)
!1113 = !DILocation(line: 262, column: 8, scope: !1095)
!1114 = !DILocation(line: 264, column: 6, scope: !1104)
!1115 = !DILocation(line: 264, column: 6, scope: !1105)
!1116 = !DILocation(line: 264, column: 26, scope: !1105)
!1117 = !DILocation(line: 264, column: 34, scope: !1105)
!1118 = !DILocation(line: 264, column: 32, scope: !1105)
!1119 = !DILocation(line: 264, column: 25, scope: !1105)
!1120 = !DILocation(line: 264, column: 23, scope: !1105)
!1121 = !DILocation(line: 264, column: 6, scope: !1095)
!1122 = !DILocation(line: 265, column: 7, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 265, column: 7)
!1124 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 264, column: 54)
!1125 = !DILocation(line: 265, column: 15, scope: !1123)
!1126 = !DILocation(line: 265, column: 13, scope: !1123)
!1127 = !DILocation(line: 265, column: 7, scope: !1124)
!1128 = !DILocation(line: 266, column: 4, scope: !1123)
!1129 = !DILocation(line: 268, column: 4, scope: !1123)
!1130 = !DILocation(line: 271, column: 29, scope: !1095)
!1131 = !DILocation(line: 271, column: 10, scope: !1095)
!1132 = !DILocation(line: 271, column: 8, scope: !1095)
!1133 = !DILocation(line: 272, column: 6, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 272, column: 6)
!1135 = !DILocation(line: 272, column: 14, scope: !1134)
!1136 = !DILocation(line: 272, column: 12, scope: !1134)
!1137 = !DILocation(line: 272, column: 6, scope: !1095)
!1138 = !DILocation(line: 273, column: 3, scope: !1134)
!1139 = !DILocation(line: 274, column: 11, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 274, column: 11)
!1141 = !DILocation(line: 274, column: 19, scope: !1140)
!1142 = !DILocation(line: 274, column: 17, scope: !1140)
!1143 = !DILocation(line: 274, column: 11, scope: !1134)
!1144 = !DILocation(line: 275, column: 3, scope: !1140)
!1145 = !DILocation(line: 277, column: 3, scope: !1140)
!1146 = !DILocation(line: 278, column: 1, scope: !1095)
!1147 = distinct !DISubprogram(name: "percpu_counter_read", scope: !238, file: !238, line: 99, type: !681, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1148)
!1148 = !{!1149}
!1149 = !DILocalVariable(name: "fbc", arg: 1, scope: !1147, file: !238, line: 99, type: !236)
!1150 = !DILocation(line: 99, column: 62, scope: !1147)
!1151 = !DILocation(line: 101, column: 9, scope: !1147)
!1152 = !DILocation(line: 101, column: 14, scope: !1147)
!1153 = !DILocation(line: 101, column: 2, scope: !1147)
!1154 = distinct !DISubprogram(name: "num_online_cpus", scope: !210, file: !210, line: 1072, type: !1155, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!7}
!1157 = !DILocation(line: 1074, column: 9, scope: !1154)
!1158 = !DILocation(line: 1074, column: 2, scope: !1154)
!1159 = distinct !DISubprogram(name: "percpu_counter_sum", scope: !238, file: !238, line: 94, type: !681, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1160)
!1160 = !{!1161}
!1161 = !DILocalVariable(name: "fbc", arg: 1, scope: !1159, file: !238, line: 94, type: !236)
!1162 = !DILocation(line: 94, column: 61, scope: !1159)
!1163 = !DILocation(line: 96, column: 30, scope: !1159)
!1164 = !DILocation(line: 96, column: 9, scope: !1159)
!1165 = !DILocation(line: 96, column: 2, scope: !1159)
!1166 = distinct !DISubprogram(name: "__initstub__kmod_percpu_counter__213_294_percpu_counter_startup6", scope: !3, file: !3, line: 294, type: !1167, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!13}
!1169 = !DILocation(line: 294, column: 1, scope: !1166)
!1170 = distinct !DISubprogram(name: "percpu_counter_startup", scope: !3, file: !3, line: 281, type: !1167, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1171)
!1171 = !{!1172, !1173, !1175, !1178, !1180}
!1172 = !DILocalVariable(name: "ret", scope: !1170, file: !3, line: 283, type: !13)
!1173 = !DILocalVariable(name: "__ret_warn_on", scope: !1174, file: !3, line: 287, type: !13)
!1174 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 287, column: 2)
!1175 = !DILocalVariable(name: "__flags", scope: !1176, file: !3, line: 287, type: !13)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 287, column: 2)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 287, column: 2)
!1178 = !DILocalVariable(name: "__ret_warn_on", scope: !1179, file: !3, line: 291, type: !13)
!1179 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 291, column: 2)
!1180 = !DILocalVariable(name: "__flags", scope: !1181, file: !3, line: 291, type: !13)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 291, column: 2)
!1182 = distinct !DILexicalBlock(scope: !1179, file: !3, line: 291, column: 2)
!1183 = !DILocation(line: 283, column: 2, scope: !1170)
!1184 = !DILocation(line: 283, column: 6, scope: !1170)
!1185 = !DILocation(line: 285, column: 8, scope: !1170)
!1186 = !DILocation(line: 285, column: 6, scope: !1170)
!1187 = !DILocation(line: 287, column: 2, scope: !1174)
!1188 = !DILocation(line: 287, column: 2, scope: !1177)
!1189 = !DILocation(line: 287, column: 2, scope: !1176)
!1190 = !DILocation(line: 287, column: 2, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 287, column: 2)
!1192 = !DILocation(line: 287, column: 2, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 287, column: 2)
!1194 = !{i64 2152657666, i64 2152657695, i64 2152657741, i64 2152657799, i64 2152657853, i64 2152657907, i64 2152657962, i64 2152657993, i64 2152658301, i64 2152658307, i64 2152658354, i64 2152658377, i64 2152658403}
!1195 = !DILocation(line: 287, column: 2, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 287, column: 2)
!1197 = !DILocation(line: 287, column: 2, scope: !1170)
!1198 = !DILocation(line: 288, column: 8, scope: !1170)
!1199 = !DILocation(line: 288, column: 6, scope: !1170)
!1200 = !DILocation(line: 291, column: 2, scope: !1179)
!1201 = !DILocation(line: 291, column: 2, scope: !1182)
!1202 = !DILocation(line: 291, column: 2, scope: !1181)
!1203 = !DILocation(line: 291, column: 2, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 291, column: 2)
!1205 = !DILocation(line: 291, column: 2, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 291, column: 2)
!1207 = !{i64 2152659169, i64 2152659198, i64 2152659244, i64 2152659302, i64 2152659356, i64 2152659410, i64 2152659465, i64 2152659496, i64 2152659804, i64 2152659810, i64 2152659857, i64 2152659880, i64 2152659906}
!1208 = !DILocation(line: 291, column: 2, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 291, column: 2)
!1210 = !DILocation(line: 291, column: 2, scope: !1170)
!1211 = !DILocation(line: 293, column: 1, scope: !1170)
!1212 = !DILocation(line: 292, column: 2, scope: !1170)
!1213 = distinct !DISubprogram(name: "variable__ffs", scope: !1214, file: !1214, line: 250, type: !1215, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1217)
!1214 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!214, !214}
!1217 = !{!1218}
!1218 = !DILocalVariable(name: "word", arg: 1, scope: !1213, file: !1214, line: 250, type: !214)
!1219 = !DILocation(line: 250, column: 66, scope: !1213)
!1220 = !DILocation(line: 254, column: 11, scope: !1213)
!1221 = !DILocation(line: 252, column: 2, scope: !1213)
!1222 = !{i64 476215}
!1223 = !DILocation(line: 255, column: 9, scope: !1213)
!1224 = !DILocation(line: 255, column: 2, scope: !1213)
!1225 = !DISubprogram(name: "_find_next_bit", scope: !411, file: !411, line: 11, type: !412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1226 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !573, file: !573, line: 65, type: !574, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1227 = !DILocation(line: 67, column: 9, scope: !1226)
!1228 = !DILocation(line: 67, column: 2, scope: !1226)
!1229 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !573, file: !573, line: 70, type: !1230, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null}
!1232 = !DILocation(line: 72, column: 2, scope: !1229)
!1233 = !DILocation(line: 73, column: 1, scope: !1229)
!1234 = distinct !DISubprogram(name: "native_save_fl", scope: !573, file: !573, line: 17, type: !574, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1235)
!1235 = !{!1236}
!1236 = !DILocalVariable(name: "flags", scope: !1234, file: !573, line: 19, type: !214)
!1237 = !DILocation(line: 19, column: 2, scope: !1234)
!1238 = !DILocation(line: 19, column: 16, scope: !1234)
!1239 = !DILocation(line: 26, column: 2, scope: !1234)
!1240 = !{i64 1889611, i64 1889632}
!1241 = !DILocation(line: 32, column: 9, scope: !1234)
!1242 = !DILocation(line: 33, column: 1, scope: !1234)
!1243 = !DILocation(line: 32, column: 2, scope: !1234)
!1244 = distinct !DISubprogram(name: "native_irq_disable", scope: !573, file: !573, line: 35, type: !1230, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1245 = !DILocation(line: 37, column: 2, scope: !1244)
!1246 = !{i64 1889815}
!1247 = !DILocation(line: 38, column: 1, scope: !1244)
!1248 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !573, file: !573, line: 120, type: !1249, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1251)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!13, !214}
!1251 = !{!1252}
!1252 = !DILocalVariable(name: "flags", arg: 1, scope: !1248, file: !573, line: 120, type: !214)
!1253 = !DILocation(line: 120, column: 67, scope: !1248)
!1254 = !DILocation(line: 122, column: 11, scope: !1248)
!1255 = !DILocation(line: 122, column: 17, scope: !1248)
!1256 = !DILocation(line: 122, column: 9, scope: !1248)
!1257 = !DILocation(line: 122, column: 2, scope: !1248)
!1258 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !573, file: !573, line: 75, type: !1230, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1259 = !DILocation(line: 77, column: 2, scope: !1258)
!1260 = !DILocation(line: 78, column: 1, scope: !1258)
!1261 = distinct !DISubprogram(name: "native_irq_enable", scope: !573, file: !573, line: 40, type: !1230, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1262 = !DILocation(line: 42, column: 2, scope: !1261)
!1263 = !{i64 1889907}
!1264 = !DILocation(line: 43, column: 1, scope: !1261)
!1265 = !DISubprogram(name: "_find_next_or_bit", scope: !411, file: !411, line: 17, type: !739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1266 = distinct !DISubprogram(name: "__list_add", scope: !907, file: !907, line: 146, type: !1267, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1269)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{null, !227, !227, !227}
!1269 = !{!1270, !1271, !1272}
!1270 = !DILocalVariable(name: "new", arg: 1, scope: !1266, file: !907, line: 146, type: !227)
!1271 = !DILocalVariable(name: "prev", arg: 2, scope: !1266, file: !907, line: 147, type: !227)
!1272 = !DILocalVariable(name: "next", arg: 3, scope: !1266, file: !907, line: 148, type: !227)
!1273 = !DILocation(line: 146, column: 49, scope: !1266)
!1274 = !DILocation(line: 147, column: 28, scope: !1266)
!1275 = !DILocation(line: 148, column: 28, scope: !1266)
!1276 = !DILocation(line: 150, column: 24, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1266, file: !907, line: 150, column: 6)
!1278 = !DILocation(line: 150, column: 29, scope: !1277)
!1279 = !DILocation(line: 150, column: 35, scope: !1277)
!1280 = !DILocation(line: 150, column: 7, scope: !1277)
!1281 = !DILocation(line: 150, column: 6, scope: !1266)
!1282 = !DILocation(line: 151, column: 3, scope: !1277)
!1283 = !DILocation(line: 153, column: 15, scope: !1266)
!1284 = !DILocation(line: 153, column: 2, scope: !1266)
!1285 = !DILocation(line: 153, column: 8, scope: !1266)
!1286 = !DILocation(line: 153, column: 13, scope: !1266)
!1287 = !DILocation(line: 154, column: 14, scope: !1266)
!1288 = !DILocation(line: 154, column: 2, scope: !1266)
!1289 = !DILocation(line: 154, column: 7, scope: !1266)
!1290 = !DILocation(line: 154, column: 12, scope: !1266)
!1291 = !DILocation(line: 155, column: 14, scope: !1266)
!1292 = !DILocation(line: 155, column: 2, scope: !1266)
!1293 = !DILocation(line: 155, column: 7, scope: !1266)
!1294 = !DILocation(line: 155, column: 12, scope: !1266)
!1295 = !DILocation(line: 156, column: 2, scope: !1266)
!1296 = !DILocation(line: 156, column: 2, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1266, file: !907, line: 156, column: 2)
!1298 = !DILocation(line: 156, column: 2, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1297, file: !907, line: 156, column: 2)
!1300 = !DILocation(line: 156, column: 2, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !907, line: 156, column: 2)
!1302 = !DILocation(line: 157, column: 1, scope: !1266)
!1303 = distinct !DISubprogram(name: "__list_add_valid", scope: !907, file: !907, line: 128, type: !1304, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1308)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!1306, !227, !227, !227}
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !229, line: 35, baseType: !1307)
!1307 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1308 = !{!1309, !1310, !1311}
!1309 = !DILocalVariable(name: "new", arg: 1, scope: !1303, file: !907, line: 128, type: !227)
!1310 = !DILocalVariable(name: "prev", arg: 2, scope: !1303, file: !907, line: 129, type: !227)
!1311 = !DILocalVariable(name: "next", arg: 3, scope: !1303, file: !907, line: 130, type: !227)
!1312 = !DILocation(line: 128, column: 55, scope: !1303)
!1313 = !DILocation(line: 129, column: 23, scope: !1303)
!1314 = !DILocation(line: 130, column: 23, scope: !1303)
!1315 = !DILocation(line: 132, column: 2, scope: !1303)
!1316 = distinct !DISubprogram(name: "__list_del_entry", scope: !907, file: !907, line: 213, type: !908, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1317)
!1317 = !{!1318}
!1318 = !DILocalVariable(name: "entry", arg: 1, scope: !1316, file: !907, line: 213, type: !227)
!1319 = !DILocation(line: 213, column: 55, scope: !1316)
!1320 = !DILocation(line: 215, column: 30, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1316, file: !907, line: 215, column: 6)
!1322 = !DILocation(line: 215, column: 7, scope: !1321)
!1323 = !DILocation(line: 215, column: 6, scope: !1316)
!1324 = !DILocation(line: 216, column: 3, scope: !1321)
!1325 = !DILocation(line: 218, column: 13, scope: !1316)
!1326 = !DILocation(line: 218, column: 20, scope: !1316)
!1327 = !DILocation(line: 218, column: 26, scope: !1316)
!1328 = !DILocation(line: 218, column: 33, scope: !1316)
!1329 = !DILocation(line: 218, column: 2, scope: !1316)
!1330 = !DILocation(line: 219, column: 1, scope: !1316)
!1331 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !907, file: !907, line: 134, type: !1332, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1334)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!1306, !227}
!1334 = !{!1335}
!1335 = !DILocalVariable(name: "entry", arg: 1, scope: !1331, file: !907, line: 134, type: !227)
!1336 = !DILocation(line: 134, column: 61, scope: !1331)
!1337 = !DILocation(line: 136, column: 2, scope: !1331)
!1338 = distinct !DISubprogram(name: "__list_del", scope: !907, file: !907, line: 193, type: !945, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1339)
!1339 = !{!1340, !1341}
!1340 = !DILocalVariable(name: "prev", arg: 1, scope: !1338, file: !907, line: 193, type: !227)
!1341 = !DILocalVariable(name: "next", arg: 2, scope: !1338, file: !907, line: 193, type: !227)
!1342 = !DILocation(line: 193, column: 50, scope: !1338)
!1343 = !DILocation(line: 193, column: 75, scope: !1338)
!1344 = !DILocation(line: 195, column: 15, scope: !1338)
!1345 = !DILocation(line: 195, column: 2, scope: !1338)
!1346 = !DILocation(line: 195, column: 8, scope: !1338)
!1347 = !DILocation(line: 195, column: 13, scope: !1338)
!1348 = !DILocation(line: 196, column: 2, scope: !1338)
!1349 = !DILocation(line: 196, column: 2, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1338, file: !907, line: 196, column: 2)
!1351 = !DILocation(line: 196, column: 2, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1350, file: !907, line: 196, column: 2)
!1353 = !DILocation(line: 196, column: 2, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1350, file: !907, line: 196, column: 2)
!1355 = !DILocation(line: 197, column: 1, scope: !1338)
!1356 = distinct !DISubprogram(name: "raw_atomic_read", scope: !1357, file: !1357, line: 442, type: !1358, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1362)
!1357 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!13, !1360}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!1362 = !{!1363}
!1363 = !DILocalVariable(name: "v", arg: 1, scope: !1356, file: !1357, line: 442, type: !1360)
!1364 = !DILocation(line: 442, column: 33, scope: !1356)
!1365 = !DILocation(line: 444, column: 26, scope: !1356)
!1366 = !DILocation(line: 444, column: 9, scope: !1356)
!1367 = !DILocation(line: 444, column: 2, scope: !1356)
!1368 = distinct !DISubprogram(name: "arch_atomic_read", scope: !1369, file: !1369, line: 17, type: !1358, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1370)
!1369 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!1370 = !{!1371}
!1371 = !DILocalVariable(name: "v", arg: 1, scope: !1368, file: !1369, line: 17, type: !1360)
!1372 = !DILocation(line: 17, column: 61, scope: !1368)
!1373 = !DILocation(line: 23, column: 9, scope: !1368)
!1374 = !DILocation(line: 23, column: 2, scope: !1368)
!1375 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !12, file: !12, line: 283, type: !1376, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1381)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!13, !11, !589, !1378, !1378}
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{!13, !7}
!1381 = !{!1382, !1383, !1384, !1385}
!1382 = !DILocalVariable(name: "state", arg: 1, scope: !1375, file: !12, line: 283, type: !11)
!1383 = !DILocalVariable(name: "name", arg: 2, scope: !1375, file: !12, line: 284, type: !589)
!1384 = !DILocalVariable(name: "startup", arg: 3, scope: !1375, file: !12, line: 285, type: !1378)
!1385 = !DILocalVariable(name: "teardown", arg: 4, scope: !1375, file: !12, line: 286, type: !1378)
!1386 = !DILocation(line: 283, column: 54, scope: !1375)
!1387 = !DILocation(line: 284, column: 21, scope: !1375)
!1388 = !DILocation(line: 285, column: 15, scope: !1375)
!1389 = !DILocation(line: 286, column: 15, scope: !1375)
!1390 = !DILocation(line: 288, column: 29, scope: !1375)
!1391 = !DILocation(line: 288, column: 36, scope: !1375)
!1392 = !DILocation(line: 288, column: 48, scope: !1375)
!1393 = !DILocation(line: 288, column: 57, scope: !1375)
!1394 = !DILocation(line: 288, column: 9, scope: !1375)
!1395 = !DILocation(line: 288, column: 2, scope: !1375)
!1396 = distinct !DISubprogram(name: "compute_batch_value", scope: !3, file: !3, line: 224, type: !1379, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1397)
!1397 = !{!1398, !1399, !1400, !1402}
!1398 = !DILocalVariable(name: "cpu", arg: 1, scope: !1396, file: !3, line: 224, type: !7)
!1399 = !DILocalVariable(name: "nr", scope: !1396, file: !3, line: 226, type: !13)
!1400 = !DILocalVariable(name: "__UNIQUE_ID___x210", scope: !1401, file: !3, line: 228, type: !13)
!1401 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 228, column: 25)
!1402 = !DILocalVariable(name: "__UNIQUE_ID___y211", scope: !1401, file: !3, line: 228, type: !13)
!1403 = !DILocation(line: 224, column: 45, scope: !1396)
!1404 = !DILocation(line: 226, column: 2, scope: !1396)
!1405 = !DILocation(line: 226, column: 6, scope: !1396)
!1406 = !DILocation(line: 226, column: 11, scope: !1396)
!1407 = !DILocation(line: 228, column: 25, scope: !1401)
!1408 = !DILocation(line: 228, column: 25, scope: !1396)
!1409 = !DILocation(line: 228, column: 23, scope: !1396)
!1410 = !DILocation(line: 230, column: 1, scope: !1396)
!1411 = !DILocation(line: 229, column: 2, scope: !1396)
!1412 = distinct !DISubprogram(name: "cpuhp_setup_state_nocalls", scope: !12, file: !12, line: 323, type: !1376, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1413)
!1413 = !{!1414, !1415, !1416, !1417}
!1414 = !DILocalVariable(name: "state", arg: 1, scope: !1412, file: !12, line: 323, type: !11)
!1415 = !DILocalVariable(name: "name", arg: 2, scope: !1412, file: !12, line: 324, type: !589)
!1416 = !DILocalVariable(name: "startup", arg: 3, scope: !1412, file: !12, line: 325, type: !1378)
!1417 = !DILocalVariable(name: "teardown", arg: 4, scope: !1412, file: !12, line: 326, type: !1378)
!1418 = !DILocation(line: 323, column: 62, scope: !1412)
!1419 = !DILocation(line: 324, column: 22, scope: !1412)
!1420 = !DILocation(line: 325, column: 16, scope: !1412)
!1421 = !DILocation(line: 326, column: 16, scope: !1412)
!1422 = !DILocation(line: 328, column: 29, scope: !1412)
!1423 = !DILocation(line: 328, column: 36, scope: !1412)
!1424 = !DILocation(line: 328, column: 49, scope: !1412)
!1425 = !DILocation(line: 328, column: 58, scope: !1412)
!1426 = !DILocation(line: 328, column: 9, scope: !1412)
!1427 = !DILocation(line: 328, column: 2, scope: !1412)
!1428 = distinct !DISubprogram(name: "percpu_counter_cpu_dead", scope: !3, file: !3, line: 232, type: !1379, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1429)
!1429 = !{!1430, !1431, !1432, !1435, !1438, !1441, !1443}
!1430 = !DILocalVariable(name: "cpu", arg: 1, scope: !1428, file: !3, line: 232, type: !7)
!1431 = !DILocalVariable(name: "fbc", scope: !1428, file: !3, line: 235, type: !236)
!1432 = !DILocalVariable(name: "__mptr", scope: !1433, file: !3, line: 240, type: !222)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 240, column: 2)
!1434 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 240, column: 2)
!1435 = !DILocalVariable(name: "pcount", scope: !1436, file: !3, line: 241, type: !217)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 240, column: 51)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 240, column: 2)
!1438 = !DILocalVariable(name: "__vpp_verify", scope: !1439, file: !3, line: 244, type: !365)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 244, column: 12)
!1440 = distinct !DILexicalBlock(scope: !1436, file: !3, line: 244, column: 12)
!1441 = !DILocalVariable(name: "__ptr", scope: !1442, file: !3, line: 244, type: !214)
!1442 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 244, column: 12)
!1443 = !DILocalVariable(name: "__mptr", scope: !1444, file: !3, line: 240, type: !222)
!1444 = distinct !DILexicalBlock(scope: !1437, file: !3, line: 240, column: 2)
!1445 = !DILocation(line: 232, column: 49, scope: !1428)
!1446 = !DILocation(line: 235, column: 2, scope: !1428)
!1447 = !DILocation(line: 235, column: 25, scope: !1428)
!1448 = !DILocation(line: 237, column: 22, scope: !1428)
!1449 = !DILocation(line: 237, column: 2, scope: !1428)
!1450 = !DILocation(line: 239, column: 2, scope: !1428)
!1451 = !DILocation(line: 240, column: 2, scope: !1433)
!1452 = !DILocation(line: 240, column: 2, scope: !1434)
!1453 = !DILocation(line: 240, column: 2, scope: !1437)
!1454 = !DILocation(line: 241, column: 3, scope: !1436)
!1455 = !DILocation(line: 241, column: 8, scope: !1436)
!1456 = !DILocation(line: 243, column: 3, scope: !1436)
!1457 = !DILocation(line: 244, column: 12, scope: !1440)
!1458 = !DILocation(line: 244, column: 12, scope: !1439)
!1459 = !DILocation(line: 244, column: 12, scope: !1442)
!1460 = !DILocation(line: 244, column: 10, scope: !1436)
!1461 = !DILocation(line: 245, column: 18, scope: !1436)
!1462 = !DILocation(line: 245, column: 17, scope: !1436)
!1463 = !DILocation(line: 245, column: 3, scope: !1436)
!1464 = !DILocation(line: 245, column: 8, scope: !1436)
!1465 = !DILocation(line: 245, column: 14, scope: !1436)
!1466 = !DILocation(line: 246, column: 4, scope: !1436)
!1467 = !DILocation(line: 246, column: 11, scope: !1436)
!1468 = !DILocation(line: 247, column: 3, scope: !1436)
!1469 = !DILocation(line: 248, column: 2, scope: !1437)
!1470 = !DILocation(line: 248, column: 2, scope: !1436)
!1471 = !DILocation(line: 240, column: 2, scope: !1444)
!1472 = distinct !{!1472, !1452, !1473, !395, !396}
!1473 = !DILocation(line: 248, column: 2, scope: !1434)
!1474 = !DILocation(line: 249, column: 2, scope: !1428)
!1475 = !DILocation(line: 252, column: 1, scope: !1428)
!1476 = !DILocation(line: 251, column: 2, scope: !1428)
!1477 = !DISubprogram(name: "__cpuhp_setup_state", scope: !12, file: !12, line: 263, type: !1478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!13, !11, !589, !1306, !1378, !1378, !1306}
!1480 = distinct !DISubprogram(name: "spin_lock_irq", scope: !934, file: !934, line: 374, type: !1481, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1483)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !937}
!1483 = !{!1484}
!1484 = !DILocalVariable(name: "lock", arg: 1, scope: !1480, file: !934, line: 374, type: !937)
!1485 = !DILocation(line: 374, column: 55, scope: !1480)
!1486 = !DILocation(line: 376, column: 2, scope: !1480)
!1487 = !DILocation(line: 377, column: 1, scope: !1480)
!1488 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !934, file: !934, line: 399, type: !1481, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1489)
!1489 = !{!1490}
!1490 = !DILocalVariable(name: "lock", arg: 1, scope: !1488, file: !934, line: 399, type: !937)
!1491 = !DILocation(line: 399, column: 57, scope: !1488)
!1492 = !DILocation(line: 401, column: 2, scope: !1488)
!1493 = !DILocation(line: 402, column: 1, scope: !1488)
!1494 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !406, file: !406, line: 29, type: !596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1495 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !406, file: !406, line: 41, type: !596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
