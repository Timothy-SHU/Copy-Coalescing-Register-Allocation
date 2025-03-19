; ModuleID = 'fs/notify/notification.c'
source_filename = "fs/notify/notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fsnotify_get_cookie: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad fsnotify_get_cookie ; .previous"

%struct.atomic_t = type { i32 }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, i32, i32, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.13 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%union.anon.13 = type { %struct.inotify_group_private_data }
%struct.inotify_group_private_data = type { %struct.spinlock, %struct.idr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.fsnotify_event = type { %struct.list_head }
%struct.fsnotify_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@fsnotify_sync_cookie = internal global %struct.atomic_t zeroinitializer, align 4, !dbg !0
@__UNIQUE_ID___addressable_fsnotify_get_cookie299 = internal global ptr @fsnotify_get_cookie, section ".discard.addressable", align 8, !dbg !202
@.str = private unnamed_addr constant [25 x i8] c"fs/notify/notification.c\00", align 1, !dbg !204
@.str.1 = private unnamed_addr constant [33 x i8] c"include/linux/fsnotify_backend.h\00", align 1, !dbg !209
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_fsnotify_get_cookie299], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fsnotify_get_cookie() #0 align 16 !dbg !223 {
entry:
  %call = call i32 @atomic_inc_return(ptr noundef @fsnotify_sync_cookie) #7, !dbg !228
  ret i32 %call, !dbg !229
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_inc_return(ptr noundef %v) #1 align 16 !dbg !230 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !236, metadata !DIExpression()), !dbg !237
  br label %do.body, !dbg !238

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !239

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !241
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #7, !dbg !242
  %1 = load ptr, ptr %v.addr, align 8, !dbg !243
  %call = call i32 @raw_atomic_inc_return(ptr noundef %1) #7, !dbg !244
  ret i32 %call, !dbg !245
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fsnotify_destroy_event(ptr noundef %group, ptr noundef %event) #0 align 16 !dbg !246 {
entry:
  %group.addr = alloca ptr, align 8
  %event.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !4496, metadata !DIExpression()), !dbg !4505
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4497, metadata !DIExpression()), !dbg !4506
  %0 = load ptr, ptr %event.addr, align 8, !dbg !4507
  %tobool = icmp ne ptr %0, null, !dbg !4507
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4509

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %event.addr, align 8, !dbg !4510
  %2 = load ptr, ptr %group.addr, align 8, !dbg !4511
  %overflow_event = getelementptr inbounds %struct.fsnotify_group, ptr %2, i32 0, i32 15, !dbg !4512
  %3 = load ptr, ptr %overflow_event, align 8, !dbg !4512
  %cmp = icmp eq ptr %1, %3, !dbg !4513
  br i1 %cmp, label %if.then, label %if.end, !dbg !4514

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !4515

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %event.addr, align 8, !dbg !4516
  %list = getelementptr inbounds %struct.fsnotify_event, ptr %4, i32 0, i32 0, !dbg !4517
  %call = call i32 @list_empty(ptr noundef %list) #7, !dbg !4518
  %tobool1 = icmp ne i32 %call, 0, !dbg !4518
  br i1 %tobool1, label %if.end33, label %if.then2, !dbg !4519

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %group.addr, align 8, !dbg !4520
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %5, i32 0, i32 2, !dbg !4521
  call void @spin_lock(ptr noundef %notification_lock) #7, !dbg !4522
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !4523
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4498, metadata !DIExpression()), !dbg !4523
  %6 = load ptr, ptr %event.addr, align 8, !dbg !4523
  %list3 = getelementptr inbounds %struct.fsnotify_event, ptr %6, i32 0, i32 0, !dbg !4523
  %call4 = call i32 @list_empty(ptr noundef %list3) #7, !dbg !4523
  %tobool5 = icmp ne i32 %call4, 0, !dbg !4523
  %lnot = xor i1 %tobool5, true, !dbg !4523
  %lnot6 = xor i1 %lnot, true, !dbg !4523
  %lnot7 = xor i1 %lnot6, true, !dbg !4523
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !4523
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4523
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !4524
  %tobool8 = icmp ne i32 %7, 0, !dbg !4524
  %lnot9 = xor i1 %tobool8, true, !dbg !4524
  %lnot11 = xor i1 %lnot9, true, !dbg !4524
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !4524
  %conv = sext i32 %lnot.ext12 to i64, !dbg !4524
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4524
  %tobool13 = icmp ne i64 %expval, 0, !dbg !4524
  br i1 %tobool13, label %if.then14, label %if.end24, !dbg !4523

if.then14:                                        ; preds = %if.then2
  br label %do.body, !dbg !4524

do.body:                                          ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !4525
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4502, metadata !DIExpression()), !dbg !4525
  store i32 2305, ptr %__flags, align 4, !dbg !4525
  br label %do.body15, !dbg !4525

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !4526

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !4526

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !4525

do.body16:                                        ; preds = %do.end
  %8 = load i32, ptr %__flags, align 4, !dbg !4528
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 64, i32 %8, i64 12) #8, !dbg !4528, !srcloc !4530
  br label %do.cond17, !dbg !4528

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !4528

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !4525

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !4531

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !4531

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !4524
  br label %do.cond22, !dbg !4525

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !4525

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !4525

if.end24:                                         ; preds = %do.end23, %if.then2
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !4523
  %tobool25 = icmp ne i32 %9, 0, !dbg !4523
  %lnot26 = xor i1 %tobool25, true, !dbg !4523
  %lnot28 = xor i1 %lnot26, true, !dbg !4523
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !4523
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !4523
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !4523
  store i64 %expval31, ptr %tmp, align 8, !dbg !4524
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !4533
  %10 = load i64, ptr %tmp, align 8, !dbg !4523
  %11 = load ptr, ptr %group.addr, align 8, !dbg !4534
  %notification_lock32 = getelementptr inbounds %struct.fsnotify_group, ptr %11, i32 0, i32 2, !dbg !4535
  call void @spin_unlock(ptr noundef %notification_lock32) #7, !dbg !4536
  br label %if.end33, !dbg !4537

if.end33:                                         ; preds = %if.end24, %if.end
  %12 = load ptr, ptr %group.addr, align 8, !dbg !4538
  %ops = getelementptr inbounds %struct.fsnotify_group, ptr %12, i32 0, i32 0, !dbg !4539
  %13 = load ptr, ptr %ops, align 8, !dbg !4539
  %free_event = getelementptr inbounds %struct.fsnotify_ops, ptr %13, i32 0, i32 4, !dbg !4540
  %14 = load ptr, ptr %free_event, align 8, !dbg !4540
  %15 = load ptr, ptr %group.addr, align 8, !dbg !4541
  %16 = load ptr, ptr %event.addr, align 8, !dbg !4542
  call void %14(ptr noundef %15, ptr noundef %16) #7, !dbg !4538
  br label %return, !dbg !4543

return:                                           ; preds = %if.end33, %if.then
  ret void, !dbg !4543
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !4544 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4551, metadata !DIExpression()), !dbg !4552
  br label %do.body, !dbg !4553

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4555

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4553
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !4553
  %1 = load volatile ptr, ptr %next, align 8, !dbg !4553
  store ptr %1, ptr %tmp, align 8, !dbg !4555
  %2 = load ptr, ptr %tmp, align 8, !dbg !4553
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4557
  %cmp = icmp eq ptr %2, %3, !dbg !4558
  %conv = zext i1 %cmp to i32, !dbg !4558
  ret i32 %conv, !dbg !4559
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #1 align 16 !dbg !4560 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4565, metadata !DIExpression()), !dbg !4566
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4567
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4567
  call void @_raw_spin_lock(ptr noundef %1) #7, !dbg !4567
  ret void, !dbg !4568
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #1 align 16 !dbg !4569 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4571, metadata !DIExpression()), !dbg !4572
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4573
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4573
  call void @_raw_spin_unlock(ptr noundef %1) #7, !dbg !4573
  ret void, !dbg !4574
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @fsnotify_insert_event(ptr noundef %group, ptr noundef %event, ptr noundef %merge, ptr noundef %insert) #0 align 16 !dbg !4575 {
entry:
  %retval = alloca i32, align 4
  %group.addr = alloca ptr, align 8
  %event.addr = alloca ptr, align 8
  %merge.addr = alloca ptr, align 8
  %insert.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %list = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !4582, metadata !DIExpression()), !dbg !4589
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4583, metadata !DIExpression()), !dbg !4590
  store ptr %merge, ptr %merge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %merge.addr, metadata !4584, metadata !DIExpression()), !dbg !4591
  store ptr %insert, ptr %insert.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insert.addr, metadata !4585, metadata !DIExpression()), !dbg !4592
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !4593
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4586, metadata !DIExpression()), !dbg !4594
  store i32 0, ptr %ret, align 4, !dbg !4594
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #8, !dbg !4595
  call void @llvm.dbg.declare(metadata ptr %list, metadata !4587, metadata !DIExpression()), !dbg !4596
  %0 = load ptr, ptr %group.addr, align 8, !dbg !4597
  %notification_list = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 3, !dbg !4598
  store ptr %notification_list, ptr %list, align 8, !dbg !4596
  store i32 0, ptr %tmp, align 4, !dbg !4599
  %1 = load i32, ptr %tmp, align 4, !dbg !4602
  %2 = load ptr, ptr %group.addr, align 8, !dbg !4603
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %2, i32 0, i32 2, !dbg !4604
  call void @spin_lock(ptr noundef %notification_lock) #7, !dbg !4605
  %3 = load ptr, ptr %group.addr, align 8, !dbg !4606
  %shutdown = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 8, !dbg !4608
  %4 = load i8, ptr %shutdown, align 4, !dbg !4608, !range !4609, !noundef !797
  %tobool = trunc i8 %4 to i1, !dbg !4608
  br i1 %tobool, label %if.then, label %if.end, !dbg !4610

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %group.addr, align 8, !dbg !4611
  %notification_lock1 = getelementptr inbounds %struct.fsnotify_group, ptr %5, i32 0, i32 2, !dbg !4613
  call void @spin_unlock(ptr noundef %notification_lock1) #7, !dbg !4614
  store i32 2, ptr %retval, align 4, !dbg !4615
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4615

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %event.addr, align 8, !dbg !4616
  %7 = load ptr, ptr %group.addr, align 8, !dbg !4618
  %overflow_event = getelementptr inbounds %struct.fsnotify_group, ptr %7, i32 0, i32 15, !dbg !4619
  %8 = load ptr, ptr %overflow_event, align 8, !dbg !4619
  %cmp = icmp eq ptr %6, %8, !dbg !4620
  br i1 %cmp, label %if.then3, label %lor.lhs.false, !dbg !4621

lor.lhs.false:                                    ; preds = %if.end
  %9 = load ptr, ptr %group.addr, align 8, !dbg !4622
  %q_len = getelementptr inbounds %struct.fsnotify_group, ptr %9, i32 0, i32 5, !dbg !4623
  %10 = load i32, ptr %q_len, align 8, !dbg !4623
  %11 = load ptr, ptr %group.addr, align 8, !dbg !4624
  %max_events = getelementptr inbounds %struct.fsnotify_group, ptr %11, i32 0, i32 6, !dbg !4625
  %12 = load i32, ptr %max_events, align 4, !dbg !4625
  %cmp2 = icmp uge i32 %10, %12, !dbg !4626
  br i1 %cmp2, label %if.then3, label %if.end11, !dbg !4627

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  store i32 2, ptr %ret, align 4, !dbg !4628
  %13 = load ptr, ptr %group.addr, align 8, !dbg !4630
  %overflow_event4 = getelementptr inbounds %struct.fsnotify_group, ptr %13, i32 0, i32 15, !dbg !4632
  %14 = load ptr, ptr %overflow_event4, align 8, !dbg !4632
  %list5 = getelementptr inbounds %struct.fsnotify_event, ptr %14, i32 0, i32 0, !dbg !4633
  %call = call i32 @list_empty(ptr noundef %list5) #7, !dbg !4634
  %tobool6 = icmp ne i32 %call, 0, !dbg !4634
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !4635

if.then7:                                         ; preds = %if.then3
  %15 = load ptr, ptr %group.addr, align 8, !dbg !4636
  %notification_lock8 = getelementptr inbounds %struct.fsnotify_group, ptr %15, i32 0, i32 2, !dbg !4638
  call void @spin_unlock(ptr noundef %notification_lock8) #7, !dbg !4639
  %16 = load i32, ptr %ret, align 4, !dbg !4640
  store i32 %16, ptr %retval, align 4, !dbg !4641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4641

if.end9:                                          ; preds = %if.then3
  %17 = load ptr, ptr %group.addr, align 8, !dbg !4642
  %overflow_event10 = getelementptr inbounds %struct.fsnotify_group, ptr %17, i32 0, i32 15, !dbg !4643
  %18 = load ptr, ptr %overflow_event10, align 8, !dbg !4643
  store ptr %18, ptr %event.addr, align 8, !dbg !4644
  br label %queue, !dbg !4645

if.end11:                                         ; preds = %lor.lhs.false
  %19 = load ptr, ptr %list, align 8, !dbg !4646
  %call12 = call i32 @list_empty(ptr noundef %19) #7, !dbg !4648
  %tobool13 = icmp ne i32 %call12, 0, !dbg !4648
  br i1 %tobool13, label %if.end21, label %land.lhs.true, !dbg !4649

land.lhs.true:                                    ; preds = %if.end11
  %20 = load ptr, ptr %merge.addr, align 8, !dbg !4650
  %tobool14 = icmp ne ptr %20, null, !dbg !4650
  br i1 %tobool14, label %if.then15, label %if.end21, !dbg !4651

if.then15:                                        ; preds = %land.lhs.true
  %21 = load ptr, ptr %merge.addr, align 8, !dbg !4652
  %22 = load ptr, ptr %group.addr, align 8, !dbg !4654
  %23 = load ptr, ptr %event.addr, align 8, !dbg !4655
  %call16 = call i32 %21(ptr noundef %22, ptr noundef %23) #7, !dbg !4652
  store i32 %call16, ptr %ret, align 4, !dbg !4656
  %24 = load i32, ptr %ret, align 4, !dbg !4657
  %tobool17 = icmp ne i32 %24, 0, !dbg !4657
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !4659

if.then18:                                        ; preds = %if.then15
  %25 = load ptr, ptr %group.addr, align 8, !dbg !4660
  %notification_lock19 = getelementptr inbounds %struct.fsnotify_group, ptr %25, i32 0, i32 2, !dbg !4662
  call void @spin_unlock(ptr noundef %notification_lock19) #7, !dbg !4663
  %26 = load i32, ptr %ret, align 4, !dbg !4664
  store i32 %26, ptr %retval, align 4, !dbg !4665
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4665

if.end20:                                         ; preds = %if.then15
  br label %if.end21, !dbg !4666

if.end21:                                         ; preds = %if.end20, %land.lhs.true, %if.end11
  br label %queue, !dbg !4650

queue:                                            ; preds = %if.end21, %if.end9
  call void @llvm.dbg.label(metadata !4588), !dbg !4667
  %27 = load ptr, ptr %group.addr, align 8, !dbg !4668
  %q_len22 = getelementptr inbounds %struct.fsnotify_group, ptr %27, i32 0, i32 5, !dbg !4669
  %28 = load i32, ptr %q_len22, align 8, !dbg !4670
  %inc = add i32 %28, 1, !dbg !4670
  store i32 %inc, ptr %q_len22, align 8, !dbg !4670
  %29 = load ptr, ptr %event.addr, align 8, !dbg !4671
  %list23 = getelementptr inbounds %struct.fsnotify_event, ptr %29, i32 0, i32 0, !dbg !4672
  %30 = load ptr, ptr %list, align 8, !dbg !4673
  call void @list_add_tail(ptr noundef %list23, ptr noundef %30) #7, !dbg !4674
  %31 = load ptr, ptr %insert.addr, align 8, !dbg !4675
  %tobool24 = icmp ne ptr %31, null, !dbg !4675
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !4677

if.then25:                                        ; preds = %queue
  %32 = load ptr, ptr %insert.addr, align 8, !dbg !4678
  %33 = load ptr, ptr %group.addr, align 8, !dbg !4679
  %34 = load ptr, ptr %event.addr, align 8, !dbg !4680
  call void %32(ptr noundef %33, ptr noundef %34) #7, !dbg !4678
  br label %if.end26, !dbg !4678

if.end26:                                         ; preds = %if.then25, %queue
  %35 = load ptr, ptr %group.addr, align 8, !dbg !4681
  %notification_lock27 = getelementptr inbounds %struct.fsnotify_group, ptr %35, i32 0, i32 2, !dbg !4682
  call void @spin_unlock(ptr noundef %notification_lock27) #7, !dbg !4683
  %36 = load ptr, ptr %group.addr, align 8, !dbg !4684
  %notification_waitq = getelementptr inbounds %struct.fsnotify_group, ptr %36, i32 0, i32 4, !dbg !4684
  %call28 = call i32 @__wake_up(ptr noundef %notification_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7, !dbg !4684
  %37 = load ptr, ptr %group.addr, align 8, !dbg !4685
  %fsn_fa = getelementptr inbounds %struct.fsnotify_group, ptr %37, i32 0, i32 14, !dbg !4686
  call void @kill_fasync(ptr noundef %fsn_fa, i32 noundef 29, i32 noundef 1) #7, !dbg !4687
  %38 = load i32, ptr %ret, align 4, !dbg !4688
  store i32 %38, ptr %retval, align 4, !dbg !4689
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4689

cleanup:                                          ; preds = %if.end26, %if.then18, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #8, !dbg !4690
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !4690
  %39 = load i32, ptr %retval, align 4, !dbg !4690
  ret i32 %39, !dbg !4690
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !4691 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4695, metadata !DIExpression()), !dbg !4697
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4696, metadata !DIExpression()), !dbg !4698
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4699
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4700
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4701
  %2 = load ptr, ptr %prev, align 8, !dbg !4701
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4702
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #7, !dbg !4703
  ret void, !dbg !4704
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4705 dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4709 dso_local void @kill_fasync(ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fsnotify_remove_queued_event(ptr noundef %group, ptr noundef %event) #0 align 16 !dbg !4713 {
entry:
  %group.addr = alloca ptr, align 8
  %event.addr = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !4715, metadata !DIExpression()), !dbg !4717
  store ptr %event, ptr %event.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !4716, metadata !DIExpression()), !dbg !4718
  br label %do.body, !dbg !4719

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %group.addr, align 8, !dbg !4720
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 2, !dbg !4720
  %1 = getelementptr inbounds %struct.spinlock, ptr %notification_lock, i32 0, i32 0, !dbg !4720
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %1, i32 0, i32 0, !dbg !4720
  %call = call i32 @queued_spin_is_locked(ptr noundef %raw_lock) #7, !dbg !4720
  %tobool = icmp ne i32 %call, 0, !dbg !4720
  %lnot = xor i1 %tobool, true, !dbg !4720
  %lnot1 = xor i1 %lnot, true, !dbg !4720
  %lnot2 = xor i1 %lnot1, true, !dbg !4720
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4720
  %conv = sext i32 %lnot.ext to i64, !dbg !4720
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4720
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4720
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4723

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !4720

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !4724

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !4726

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !4724

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 135, i32 0, i64 12) #8, !dbg !4728, !srcloc !4730
  br label %do.end7, !dbg !4728

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !4724

do.end8:                                          ; No predecessors!
  br label %if.end, !dbg !4724

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !4723

do.end9:                                          ; preds = %if.end
  %2 = load ptr, ptr %event.addr, align 8, !dbg !4731
  %list = getelementptr inbounds %struct.fsnotify_event, ptr %2, i32 0, i32 0, !dbg !4732
  call void @list_del_init(ptr noundef %list) #7, !dbg !4733
  %3 = load ptr, ptr %group.addr, align 8, !dbg !4734
  %q_len = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 5, !dbg !4735
  %4 = load i32, ptr %q_len, align 8, !dbg !4736
  %dec = add i32 %4, -1, !dbg !4736
  store i32 %dec, ptr %q_len, align 8, !dbg !4736
  ret void, !dbg !4737
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_spin_is_locked(ptr noundef %lock) #1 align 16 !dbg !4738 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4744, metadata !DIExpression()), !dbg !4745
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4746
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !4747
  %call = call i32 @atomic_read(ptr noundef %1) #7, !dbg !4748
  ret i32 %call, !dbg !4749
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #3 align 16 !dbg !4750 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4754, metadata !DIExpression()), !dbg !4755
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4756
  call void @__list_del_entry(ptr noundef %0) #7, !dbg !4757
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4758
  call void @INIT_LIST_HEAD(ptr noundef %1) #7, !dbg !4759
  ret void, !dbg !4760
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @fsnotify_peek_first_event(ptr noundef %group) #0 align 16 !dbg !4761 {
entry:
  %retval = alloca ptr, align 8
  %group.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !4765, metadata !DIExpression()), !dbg !4768
  br label %do.body, !dbg !4769

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %group.addr, align 8, !dbg !4770
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 2, !dbg !4770
  %1 = getelementptr inbounds %struct.spinlock, ptr %notification_lock, i32 0, i32 0, !dbg !4770
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %1, i32 0, i32 0, !dbg !4770
  %call = call i32 @queued_spin_is_locked(ptr noundef %raw_lock) #7, !dbg !4770
  %tobool = icmp ne i32 %call, 0, !dbg !4770
  %lnot = xor i1 %tobool, true, !dbg !4770
  %lnot1 = xor i1 %lnot, true, !dbg !4770
  %lnot2 = xor i1 %lnot1, true, !dbg !4770
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4770
  %conv = sext i32 %lnot.ext to i64, !dbg !4770
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4770
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4770
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4773

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !4770

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !4774

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !4776

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !4774

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 150, i32 0, i64 12) #8, !dbg !4778, !srcloc !4780
  br label %do.end7, !dbg !4778

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !4774

do.end8:                                          ; No predecessors!
  br label %if.end, !dbg !4774

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !4773

do.end9:                                          ; preds = %if.end
  %2 = load ptr, ptr %group.addr, align 8, !dbg !4781
  %call10 = call zeroext i1 @fsnotify_notify_queue_is_empty(ptr noundef %2) #7, !dbg !4783
  br i1 %call10, label %if.then11, label %if.end12, !dbg !4784

if.then11:                                        ; preds = %do.end9
  store ptr null, ptr %retval, align 8, !dbg !4785
  br label %return, !dbg !4785

if.end12:                                         ; preds = %do.end9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !4786
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4766, metadata !DIExpression()), !dbg !4786
  %3 = load ptr, ptr %group.addr, align 8, !dbg !4786
  %notification_list = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 3, !dbg !4786
  %next = getelementptr inbounds %struct.list_head, ptr %notification_list, i32 0, i32 0, !dbg !4786
  %4 = load ptr, ptr %next, align 8, !dbg !4786
  store ptr %4, ptr %__mptr, align 8, !dbg !4786
  %5 = load ptr, ptr %__mptr, align 8, !dbg !4786
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !4786
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4786
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !4787
  %6 = load ptr, ptr %tmp, align 8, !dbg !4786
  store ptr %6, ptr %retval, align 8, !dbg !4788
  br label %return, !dbg !4788

return:                                           ; preds = %if.end12, %if.then11
  %7 = load ptr, ptr %retval, align 8, !dbg !4789
  ret ptr %7, !dbg !4789
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @fsnotify_notify_queue_is_empty(ptr noundef %group) #3 align 16 !dbg !4790 {
entry:
  %group.addr = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !4794, metadata !DIExpression()), !dbg !4795
  br label %do.body, !dbg !4796

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %group.addr, align 8, !dbg !4797
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 2, !dbg !4797
  %1 = getelementptr inbounds %struct.spinlock, ptr %notification_lock, i32 0, i32 0, !dbg !4797
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %1, i32 0, i32 0, !dbg !4797
  %call = call i32 @queued_spin_is_locked(ptr noundef %raw_lock) #7, !dbg !4797
  %tobool = icmp ne i32 %call, 0, !dbg !4797
  %lnot = xor i1 %tobool, true, !dbg !4797
  %lnot1 = xor i1 %lnot, true, !dbg !4797
  %lnot2 = xor i1 %lnot1, true, !dbg !4797
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4797
  %conv = sext i32 %lnot.ext to i64, !dbg !4797
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4797
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4797
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4800

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !4797

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !4801

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !4803

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !4801

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 645, i32 0, i64 12) #8, !dbg !4805, !srcloc !4807
  br label %do.end7, !dbg !4805

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !4801

do.end8:                                          ; No predecessors!
  br label %if.end, !dbg !4801

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.end9, !dbg !4800

do.end9:                                          ; preds = %if.end
  %2 = load ptr, ptr %group.addr, align 8, !dbg !4808
  %notification_list = getelementptr inbounds %struct.fsnotify_group, ptr %2, i32 0, i32 3, !dbg !4809
  %call10 = call i32 @list_empty(ptr noundef %notification_list) #7, !dbg !4810
  %tobool11 = icmp ne i32 %call10, 0, !dbg !4810
  ret i1 %tobool11, !dbg !4811
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @fsnotify_remove_first_event(ptr noundef %group) #0 align 16 !dbg !4812 {
entry:
  %retval = alloca ptr, align 8
  %group.addr = alloca ptr, align 8
  %event = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !4814, metadata !DIExpression()), !dbg !4816
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #8, !dbg !4817
  call void @llvm.dbg.declare(metadata ptr %event, metadata !4815, metadata !DIExpression()), !dbg !4818
  %0 = load ptr, ptr %group.addr, align 8, !dbg !4819
  %call = call ptr @fsnotify_peek_first_event(ptr noundef %0) #7, !dbg !4820
  store ptr %call, ptr %event, align 8, !dbg !4818
  %1 = load ptr, ptr %event, align 8, !dbg !4821
  %tobool = icmp ne ptr %1, null, !dbg !4821
  br i1 %tobool, label %if.end, label %if.then, !dbg !4823

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4824
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4824

if.end:                                           ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !4825
  %2 = load i32, ptr %tmp, align 4, !dbg !4828
  %3 = load ptr, ptr %group.addr, align 8, !dbg !4829
  %4 = load ptr, ptr %event, align 8, !dbg !4830
  call void @fsnotify_remove_queued_event(ptr noundef %3, ptr noundef %4) #7, !dbg !4831
  %5 = load ptr, ptr %event, align 8, !dbg !4832
  store ptr %5, ptr %retval, align 8, !dbg !4833
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4833

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #8, !dbg !4834
  %6 = load ptr, ptr %retval, align 8, !dbg !4834
  ret ptr %6, !dbg !4834
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fsnotify_flush_notify(ptr noundef %group) #0 align 16 !dbg !4835 {
entry:
  %group.addr = alloca ptr, align 8
  %event = alloca ptr, align 8
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !4837, metadata !DIExpression()), !dbg !4839
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #8, !dbg !4840
  call void @llvm.dbg.declare(metadata ptr %event, metadata !4838, metadata !DIExpression()), !dbg !4841
  %0 = load ptr, ptr %group.addr, align 8, !dbg !4842
  %notification_lock = getelementptr inbounds %struct.fsnotify_group, ptr %0, i32 0, i32 2, !dbg !4843
  call void @spin_lock(ptr noundef %notification_lock) #7, !dbg !4844
  br label %while.cond, !dbg !4845

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %group.addr, align 8, !dbg !4846
  %call = call zeroext i1 @fsnotify_notify_queue_is_empty(ptr noundef %1) #7, !dbg !4847
  %lnot = xor i1 %call, true, !dbg !4848
  br i1 %lnot, label %while.body, label %while.end, !dbg !4845

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %group.addr, align 8, !dbg !4849
  %call1 = call ptr @fsnotify_remove_first_event(ptr noundef %2) #7, !dbg !4851
  store ptr %call1, ptr %event, align 8, !dbg !4852
  %3 = load ptr, ptr %group.addr, align 8, !dbg !4853
  %notification_lock2 = getelementptr inbounds %struct.fsnotify_group, ptr %3, i32 0, i32 2, !dbg !4854
  call void @spin_unlock(ptr noundef %notification_lock2) #7, !dbg !4855
  %4 = load ptr, ptr %group.addr, align 8, !dbg !4856
  %5 = load ptr, ptr %event, align 8, !dbg !4857
  call void @fsnotify_destroy_event(ptr noundef %4, ptr noundef %5) #7, !dbg !4858
  %6 = load ptr, ptr %group.addr, align 8, !dbg !4859
  %notification_lock3 = getelementptr inbounds %struct.fsnotify_group, ptr %6, i32 0, i32 2, !dbg !4860
  call void @spin_lock(ptr noundef %notification_lock3) #7, !dbg !4861
  br label %while.cond, !dbg !4845, !llvm.loop !4862

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %group.addr, align 8, !dbg !4866
  %notification_lock4 = getelementptr inbounds %struct.fsnotify_group, ptr %7, i32 0, i32 2, !dbg !4867
  call void @spin_unlock(ptr noundef %notification_lock4) #7, !dbg !4868
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #8, !dbg !4869
  ret void, !dbg !4869
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !4870 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4878, metadata !DIExpression()), !dbg !4880
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4879, metadata !DIExpression()), !dbg !4881
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4882
  %1 = load i64, ptr %size.addr, align 8, !dbg !4883
  %conv = trunc i64 %1 to i32, !dbg !4883
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #7, !dbg !4884
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4885
  %3 = load i64, ptr %size.addr, align 8, !dbg !4885
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #7, !dbg !4885
  ret void, !dbg !4886
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_inc_return(ptr noundef %v) #1 align 16 !dbg !4887 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4890, metadata !DIExpression()), !dbg !4891
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4892
  %call = call i32 @raw_atomic_add_return(i32 noundef 1, ptr noundef %0) #7, !dbg !4893
  ret i32 %call, !dbg !4894
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !4895 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4900, metadata !DIExpression()), !dbg !4902
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4901, metadata !DIExpression()), !dbg !4903
  ret i1 true, !dbg !4904
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !4905 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4910, metadata !DIExpression()), !dbg !4913
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4911, metadata !DIExpression()), !dbg !4914
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4912, metadata !DIExpression()), !dbg !4915
  ret void, !dbg !4916
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return(i32 noundef %i, ptr noundef %v) #1 align 16 !dbg !4917 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4921, metadata !DIExpression()), !dbg !4923
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4922, metadata !DIExpression()), !dbg !4924
  %0 = load i32, ptr %i.addr, align 4, !dbg !4925
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4926
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #7, !dbg !4927
  ret i32 %call, !dbg !4928
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #1 align 16 !dbg !4929 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !4932, metadata !DIExpression()), !dbg !4936
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4933, metadata !DIExpression()), !dbg !4937
  %0 = load i32, ptr %i.addr, align 4, !dbg !4938
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #8, !dbg !4939
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !4934, metadata !DIExpression()), !dbg !4939
  %1 = load i32, ptr %i.addr, align 4, !dbg !4939
  store i32 %1, ptr %__ret, align 4, !dbg !4939
  %2 = load i32, ptr %__ret, align 4, !dbg !4939
  %3 = load ptr, ptr %v.addr, align 8, !dbg !4939
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !4939
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #8, !dbg !4939, !srcloc !4940
  store i32 %4, ptr %__ret, align 4, !dbg !4939
  %5 = load i32, ptr %__ret, align 4, !dbg !4939
  store i32 %5, ptr %tmp, align 4, !dbg !4939
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #8, !dbg !4941
  %6 = load i32, ptr %tmp, align 4, !dbg !4939
  %add = add i32 %0, %6, !dbg !4942
  ret i32 %add, !dbg !4943
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4944 dso_local void @_raw_spin_lock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4949 dso_local void @_raw_spin_unlock(ptr noundef) #6 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !4950 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4954, metadata !DIExpression()), !dbg !4957
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4955, metadata !DIExpression()), !dbg !4958
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4956, metadata !DIExpression()), !dbg !4959
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4960
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !4962
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4963
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7, !dbg !4964
  br i1 %call, label %if.end, label %if.then, !dbg !4965

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4966

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !4967
  %4 = load ptr, ptr %next.addr, align 8, !dbg !4968
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !4969
  store ptr %3, ptr %prev1, align 8, !dbg !4970
  %5 = load ptr, ptr %next.addr, align 8, !dbg !4971
  %6 = load ptr, ptr %new.addr, align 8, !dbg !4972
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !4973
  store ptr %5, ptr %next2, align 8, !dbg !4974
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !4975
  %8 = load ptr, ptr %new.addr, align 8, !dbg !4976
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !4977
  store ptr %7, ptr %prev3, align 8, !dbg !4978
  br label %do.body, !dbg !4979

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4980

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4982

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4980

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !4984
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !4984
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !4984
  store volatile ptr %9, ptr %next6, align 8, !dbg !4984
  br label %do.end7, !dbg !4984

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4980

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4986
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !4987 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4991, metadata !DIExpression()), !dbg !4994
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4992, metadata !DIExpression()), !dbg !4995
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4993, metadata !DIExpression()), !dbg !4996
  ret i1 true, !dbg !4997
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #1 align 16 !dbg !4998 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5004, metadata !DIExpression()), !dbg !5005
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5006
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #7, !dbg !5007
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5008
  %call = call i32 @raw_atomic_read(ptr noundef %1) #7, !dbg !5009
  ret i32 %call, !dbg !5010
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #1 align 16 !dbg !5011 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5013, metadata !DIExpression()), !dbg !5015
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5014, metadata !DIExpression()), !dbg !5016
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5017
  %1 = load i64, ptr %size.addr, align 8, !dbg !5018
  %conv = trunc i64 %1 to i32, !dbg !5018
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #7, !dbg !5019
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5020
  %3 = load i64, ptr %size.addr, align 8, !dbg !5020
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #7, !dbg !5020
  ret void, !dbg !5021
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #1 align 16 !dbg !5022 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5024, metadata !DIExpression()), !dbg !5025
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5026
  %call = call i32 @arch_atomic_read(ptr noundef %0) #7, !dbg !5027
  ret i32 %call, !dbg !5028
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5029 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5031, metadata !DIExpression()), !dbg !5033
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5032, metadata !DIExpression()), !dbg !5034
  ret i1 true, !dbg !5035
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #1 align 16 !dbg !5036 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5038, metadata !DIExpression()), !dbg !5039
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5040
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5040
  %1 = load volatile i32, ptr %counter, align 4, !dbg !5040
  ret i32 %1, !dbg !5041
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !5042 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5044, metadata !DIExpression()), !dbg !5045
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5046
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #7, !dbg !5048
  br i1 %call, label %if.end, label %if.then, !dbg !5049

if.then:                                          ; preds = %entry
  br label %return, !dbg !5050

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5051
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5052
  %2 = load ptr, ptr %prev, align 8, !dbg !5052
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5053
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5054
  %4 = load ptr, ptr %next, align 8, !dbg !5054
  call void @__list_del(ptr noundef %2, ptr noundef %4) #7, !dbg !5055
  br label %return, !dbg !5056

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5056
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !5057 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5059, metadata !DIExpression()), !dbg !5060
  br label %do.body, !dbg !5061

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5062

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5064

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5062

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5066
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5066
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5066
  store volatile ptr %0, ptr %next, align 8, !dbg !5066
  br label %do.end3, !dbg !5066

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5062

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5068

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5069

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5071

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5069

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5073
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5073
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5073
  store volatile ptr %2, ptr %prev, align 8, !dbg !5073
  br label %do.end9, !dbg !5073

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5069

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5075
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !5076 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5080, metadata !DIExpression()), !dbg !5081
  ret i1 true, !dbg !5082
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5083 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5085, metadata !DIExpression()), !dbg !5087
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5086, metadata !DIExpression()), !dbg !5088
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5089
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5090
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5091
  store ptr %0, ptr %prev1, align 8, !dbg !5092
  br label %do.body, !dbg !5093

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5094

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5096

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5094

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5098
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5098
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5098
  store volatile ptr %2, ptr %next4, align 8, !dbg !5098
  br label %do.end5, !dbg !5098

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5094

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5100
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fsnotify_sync_cookie", scope: !2, file: !3, line: 38, type: !70, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/notify/.notification.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/notify/notification\22 -D KBUILD_BASENAME=\22notification\22 -D KBUILD_MODNAME=\22notification\22 -D __KBUILD_MODNAME=kmod_notification -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/notify/notification.ll fs/notify/notification.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !188, globals: !201, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/notify/notification.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17fdbfdd228ab4ced03fc5ae2c340331")
!4 = !{!5, !13, !21, !26, !32, !128, !135, !143, !159, !166, !172, !177, !183}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !14, line: 68, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!17 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!18 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!19 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!20 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !22, line: 65, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!25 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !27, line: 16, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "TT_NONE", value: 0)
!30 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!31 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !34, file: !33, line: 147, baseType: !7, size: 32, elements: !125)
!33 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !33, line: 135, size: 512, elements: !35)
!35 = !{!36, !40, !42, !44, !48, !49, !65, !123, !124}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !34, file: !33, line: 136, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !34, file: !33, line: 137, baseType: !41, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !34, file: !33, line: 138, baseType: !43, size: 32, offset: 128)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !34, file: !33, line: 139, baseType: !45, size: 16, offset: 160)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !46, line: 24, baseType: !47)
!46 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !34, file: !33, line: 150, baseType: !32, size: 32, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !34, file: !33, line: 151, baseType: !50, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !33, line: 64, baseType: !52)
!52 = !DISubroutineType(types: !53)
!53 = !{!43, !54, !43, !41, !55, !61}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 61, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !58, line: 72, baseType: !59)
!58 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !58, line: 16, baseType: !60)
!60 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !46, line: 52, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !58, line: 88, baseType: !64)
!64 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !34, file: !33, line: 152, baseType: !66, size: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !33, line: 117, size: 256, elements: !68)
!68 = !{!69, !74}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !67, file: !33, line: 118, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !46, line: 174, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 172, size: 32, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !71, file: !46, line: 173, baseType: !43, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !67, file: !33, line: 119, baseType: !75, size: 192, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !76, line: 41, baseType: !77)
!76 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !76, line: 37, size: 192, elements: !78)
!78 = !{!79, !117}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !77, file: !76, line: 38, baseType: !80, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !81, line: 29, baseType: !82)
!81 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !81, line: 17, size: 32, elements: !83)
!83 = !{!84}
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !81, line: 18, baseType: !85, size: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !82, file: !81, line: 18, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !85, file: !81, line: 19, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !89, line: 14, size: 32, elements: !90)
!89 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !88, file: !89, line: 15, baseType: !92, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !93, line: 44, baseType: !94)
!93 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !93, line: 14, size: 32, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !93, line: 15, baseType: !97, size: 32)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !93, line: 15, size: 32, elements: !98)
!98 = !{!99, !100, !110}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !97, file: !93, line: 16, baseType: !70, size: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !93, line: 24, baseType: !101, size: 16)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !97, file: !93, line: 24, size: 16, elements: !102)
!102 = !{!103, !109}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !101, file: !93, line: 25, baseType: !104, size: 8)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !105, line: 17, baseType: !106)
!105 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !107, line: 21, baseType: !108)
!107 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!108 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !101, file: !93, line: 26, baseType: !104, size: 8, offset: 8)
!110 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !93, line: 28, baseType: !111, size: 32)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !97, file: !93, line: 28, size: 32, elements: !112)
!112 = !{!113, !116}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !111, file: !93, line: 29, baseType: !114, size: 16)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !105, line: 19, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !107, line: 24, baseType: !47)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !111, file: !93, line: 30, baseType: !114, size: 16, offset: 16)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !77, file: !76, line: 39, baseType: !118, size: 128, offset: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !46, line: 190, size: 128, elements: !119)
!119 = !{!120, !122}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !118, file: !46, line: 191, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !118, file: !46, line: 191, baseType: !121, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !34, file: !33, line: 153, baseType: !41, size: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !34, file: !33, line: 154, baseType: !41, size: 64, offset: 448)
!125 = !{!126, !127}
!126 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!127 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !129, line: 51, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!130 = !{!131, !132, !133, !134}
!131 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!132 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!133 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!134 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !136, line: 9, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!137 = !{!138, !139, !140, !141, !142}
!138 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!139 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!140 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!141 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!142 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !144, line: 1325, baseType: !7, size: 32, elements: !145)
!144 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!146 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!147 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!148 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!149 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!150 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!151 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!152 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!153 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!154 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!155 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!156 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!157 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!158 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !160, line: 15, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!161 = !{!162, !163, !164, !165}
!162 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!163 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!164 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!165 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !167, line: 26, baseType: !7, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!168 = !{!169, !170, !171}
!169 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!170 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!171 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !173, line: 2052, baseType: !7, size: 32, elements: !174)
!173 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!174 = !{!175, !176}
!175 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!176 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !178, line: 54, baseType: !7, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!179 = !{!180, !181, !182}
!180 = !DIEnumerator(name: "USRQUOTA", value: 0)
!181 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!182 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !184, line: 10, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!185 = !{!186, !187}
!186 = !DIEnumerator(name: "false", value: 0)
!187 = !DIEnumerator(name: "true", value: 1)
!188 = !{!41, !189, !194, !197, !198}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_event", file: !191, line: 175, size: 128, elements: !192)
!191 = !DIFile(filename: "./include/linux/fsnotify_backend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad4cb752e360d262cfaf7a818c344e9c")
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !190, file: !191, line: 176, baseType: !118, size: 128)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !121)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!201 = !{!202, !204, !0, !209}
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fsnotify_get_cookie299", scope: !2, file: !3, line: 48, type: !41, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 200, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 25)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !191, line: 645, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 264, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 33)
!214 = !{i32 7, !"Dwarf Version", i32 5}
!215 = !{i32 2, !"Debug Info Version", i32 3}
!216 = !{i32 1, !"wchar_size", i32 2}
!217 = !{i32 8, !"cf-protection-branch", i32 1}
!218 = !{i32 4, !"function_return_thunk_extern", i32 1}
!219 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!220 = !{i32 1, !"Code Model", i32 2}
!221 = !{i32 1, !"override-stack-alignment", i32 8}
!222 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!223 = distinct !DISubprogram(name: "fsnotify_get_cookie", scope: !3, file: !3, line: 44, type: !224, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!224 = !DISubroutineType(types: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !105, line: 21, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !107, line: 27, baseType: !7)
!228 = !DILocation(line: 46, column: 9, scope: !223)
!229 = !DILocation(line: 46, column: 2, scope: !223)
!230 = distinct !DISubprogram(name: "atomic_inc_return", scope: !231, file: !231, line: 450, type: !232, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !235)
!231 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!232 = !DISubroutineType(types: !233)
!233 = !{!43, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!235 = !{!236}
!236 = !DILocalVariable(name: "v", arg: 1, scope: !230, file: !231, line: 450, type: !234)
!237 = !DILocation(line: 450, column: 29, scope: !230)
!238 = !DILocation(line: 452, column: 2, scope: !230)
!239 = !DILocation(line: 452, column: 2, scope: !240)
!240 = distinct !DILexicalBlock(scope: !230, file: !231, line: 452, column: 2)
!241 = !DILocation(line: 453, column: 31, scope: !230)
!242 = !DILocation(line: 453, column: 2, scope: !230)
!243 = !DILocation(line: 454, column: 31, scope: !230)
!244 = !DILocation(line: 454, column: 9, scope: !230)
!245 = !DILocation(line: 454, column: 2, scope: !230)
!246 = distinct !DISubprogram(name: "fsnotify_destroy_event", scope: !3, file: !3, line: 50, type: !247, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4495)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !249, !189}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_group", file: !191, line: 185, size: 1600, elements: !251)
!251 = !{!252, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4483, !4484, !4485}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !250, file: !191, line: 186, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_ops", file: !191, line: 155, size: 384, elements: !256)
!256 = !{!257, !4442, !4446, !4450, !4454, !4456}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "handle_event", scope: !255, file: !191, line: 156, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!43, !249, !226, !261, !43, !263, !379, !226, !4422}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !173, line: 641, size: 4800, elements: !265)
!265 = !{!266, !267, !268, !276, !277, !284, !285, !288, !289, !4360, !4361, !4362, !4363, !4364, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4404, !4407, !4408, !4409, !4418, !4419, !4420, !4421}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !264, file: !173, line: 642, baseType: !45, size: 16)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !264, file: !173, line: 643, baseType: !47, size: 16, offset: 16)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !264, file: !173, line: 644, baseType: !269, size: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !270, line: 23, baseType: !271)
!270 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 21, size: 32, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !271, file: !270, line: 22, baseType: !274, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !46, line: 37, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !58, line: 49, baseType: !7)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !264, file: !173, line: 645, baseType: !118, size: 128, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !264, file: !173, line: 646, baseType: !278, size: 32, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !270, line: 28, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 26, size: 32, elements: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !279, file: !270, line: 27, baseType: !282, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !46, line: 38, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !58, line: 50, baseType: !7)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !264, file: !173, line: 647, baseType: !7, size: 32, offset: 224)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !264, file: !173, line: 650, baseType: !286, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !173, line: 607, flags: DIFlagFwdDecl)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !264, file: !173, line: 651, baseType: !286, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !264, file: !173, line: 654, baseType: !290, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !173, line: 1966, size: 2048, align: 512, elements: !293)
!293 = !{!294, !4194, !4204, !4208, !4212, !4216, !4220, !4224, !4228, !4232, !4236, !4237, !4241, !4245, !4282, !4311, !4315, !4321, !4325, !4329, !4333, !4337, !4341, !4347, !4351}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !292, file: !173, line: 1967, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !263, !298, !7}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !300, line: 82, size: 1536, elements: !301)
!300 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!301 = !{!302, !303, !313, !321, !322, !340, !341, !345, !358, !4178, !4179, !4180, !4181, !4186, !4187, !4188}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !299, file: !300, line: 84, baseType: !7, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !299, file: !300, line: 85, baseType: !304, size: 32, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !305, line: 275, baseType: !306)
!305 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !305, line: 275, size: 32, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !306, file: !305, line: 275, baseType: !309, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !305, line: 69, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !305, line: 64, size: 32, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !310, file: !305, line: 65, baseType: !7, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !299, file: !300, line: 86, baseType: !314, size: 128, offset: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !315, line: 38, size: 128, elements: !316)
!315 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!316 = !{!317, !319}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !315, line: 39, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !314, file: !315, line: 39, baseType: !320, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !299, file: !300, line: 87, baseType: !298, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !299, file: !300, line: 88, baseType: !323, size: 128, offset: 256)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !300, line: 49, size: 128, elements: !324)
!324 = !{!325, !337}
!325 = !DIDerivedType(tag: DW_TAG_member, scope: !323, file: !300, line: 50, baseType: !326, size: 64)
!326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !323, file: !300, line: 50, size: 64, elements: !327)
!327 = !{!328, !333}
!328 = !DIDerivedType(tag: DW_TAG_member, scope: !326, file: !300, line: 51, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !326, file: !300, line: 51, size: 64, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !329, file: !300, line: 52, baseType: !226, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !329, file: !300, line: 52, baseType: !226, size: 32, offset: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !326, file: !300, line: 54, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !105, line: 23, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !107, line: 31, baseType: !336)
!336 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !300, line: 56, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !299, file: !300, line: 89, baseType: !263, size: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !299, file: !300, line: 91, baseType: !342, size: 256, offset: 448)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !299, file: !300, line: 94, baseType: !346, size: 64, offset: 704)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !347, line: 25, size: 64, elements: !348)
!347 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !347, line: 26, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !347, line: 26, size: 64, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !350, file: !347, line: 28, baseType: !335, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !347, line: 30, baseType: !354, size: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !350, file: !347, line: 30, size: 64, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !354, file: !347, line: 31, baseType: !80, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !354, file: !347, line: 32, baseType: !43, size: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !299, file: !300, line: 95, baseType: !359, size: 64, offset: 768)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !300, line: 128, size: 1024, align: 512, elements: !362)
!362 = !{!363, !367, !368, !375, !381, !385, !389, !393, !394, !398, !403, !4168, !4172}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !361, file: !300, line: 129, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!43, !298, !7}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !361, file: !300, line: 130, baseType: !364, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !361, file: !300, line: 131, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!43, !372, !374}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !361, file: !300, line: 132, baseType: !376, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!43, !372, !7, !37, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !361, file: !300, line: 134, baseType: !382, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!43, !372}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !361, file: !300, line: 135, baseType: !386, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!43, !298}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !361, file: !300, line: 136, baseType: !390, size: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !298}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !361, file: !300, line: 137, baseType: !390, size: 64, offset: 448)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !361, file: !300, line: 138, baseType: !395, size: 64, offset: 512)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !298, !263}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !361, file: !300, line: 139, baseType: !399, size: 64, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!402, !298, !402, !43}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !361, file: !300, line: 140, baseType: !404, size: 64, offset: 640)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!407, !4167}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !409, line: 70, size: 256, elements: !410)
!409 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!410 = !{!411, !412, !4163, !4164}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !408, file: !409, line: 71, baseType: !298, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !408, file: !409, line: 72, baseType: !413, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !173, line: 1190, size: 10752, elements: !415)
!415 = !{!416, !417, !420, !421, !422, !423, !3738, !3870, !3910, !3995, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4012, !4016, !4017, !4020, !4023, !4026, !4029, !4030, !4031, !4072, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4106, !4113, !4114, !4115, !4116, !4117, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !414, file: !173, line: 1191, baseType: !118, size: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !414, file: !173, line: 1192, baseType: !418, size: 32, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !46, line: 21, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !46, line: 18, baseType: !226)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !414, file: !173, line: 1193, baseType: !108, size: 8, offset: 160)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !414, file: !173, line: 1194, baseType: !60, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !414, file: !173, line: 1195, baseType: !62, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !414, file: !173, line: 1196, baseType: !424, size: 64, offset: 320)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !173, line: 2366, size: 576, elements: !426)
!426 = !{!427, !428, !429, !435, !439, !443, !447, !3726, !3727, !3728, !3730, !3731, !3732, !3734, !3735, !3736, !3737}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !425, file: !173, line: 2367, baseType: !37, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !425, file: !173, line: 2368, baseType: !43, size: 32, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !425, file: !173, line: 2376, baseType: !430, size: 64, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!43, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !409, line: 21, flags: DIFlagFwdDecl)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !425, file: !173, line: 2377, baseType: !436, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !173, line: 75, flags: DIFlagFwdDecl)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !425, file: !173, line: 2378, baseType: !440, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!298, !424, !43, !37, !41}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !425, file: !173, line: 2380, baseType: !444, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !413}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !425, file: !173, line: 2381, baseType: !448, size: 64, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !450)
!450 = !{!451, !452, !453, !457, !3399, !3425, !3426, !3427, !3428, !3432, !3435, !3436, !3437, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3505, !3509, !3527, !3544, !3545, !3546, !3547, !3556, !3579, !3580, !3583, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3597, !3598, !3686, !3694, !3695, !3696, !3698, !3702, !3703, !3707, !3708, !3709, !3710, !3712, !3713, !3714, !3721, !3722, !3723, !3725}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !449, file: !6, line: 403, baseType: !5, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !449, file: !6, line: 406, baseType: !118, size: 128, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !449, file: !6, line: 409, baseType: !454, size: 448, offset: 192)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 448, elements: !455)
!455 = !{!456}
!456 = !DISubrange(count: 56)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !449, file: !6, line: 417, baseType: !458, size: 768, offset: 640)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !459)
!459 = !{!460, !3393, !3394, !3395, !3398}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !458, file: !6, line: 46, baseType: !461, size: 512)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !462, line: 64, size: 512, elements: !463)
!462 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!463 = !{!464, !465, !466, !468, !514, !3291, !3383, !3388, !3389, !3390, !3391, !3392}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !461, file: !462, line: 65, baseType: !37, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !461, file: !462, line: 66, baseType: !118, size: 128, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !461, file: !462, line: 67, baseType: !467, size: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !461, file: !462, line: 68, baseType: !469, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !462, line: 168, size: 768, elements: !471)
!471 = !{!472, !473, !474, !475}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !470, file: !462, line: 169, baseType: !118, size: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !470, file: !462, line: 170, baseType: !80, size: 32, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !470, file: !462, line: 171, baseType: !461, size: 512, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !470, file: !462, line: 172, baseType: !476, size: 64, offset: 704)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !462, line: 133, size: 192, elements: !479)
!479 = !{!480, !487, !492}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !478, file: !462, line: 134, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!43, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !478, file: !462, line: 135, baseType: !488, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!37, !485}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !478, file: !462, line: 136, baseType: !493, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!43, !485, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !462, line: 125, size: 20736, elements: !499)
!499 = !{!500, !504, !508, !509, !513}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !498, file: !462, line: 126, baseType: !501, size: 192)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 192, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 3)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !498, file: !462, line: 127, baseType: !505, size: 4096, offset: 192)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 4096, elements: !506)
!506 = !{!507}
!507 = !DISubrange(count: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !498, file: !462, line: 128, baseType: !43, size: 32, offset: 4288)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !498, file: !462, line: 129, baseType: !510, size: 16384, offset: 4320)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 16384, elements: !511)
!511 = !{!512}
!512 = !DISubrange(count: 2048)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !498, file: !462, line: 130, baseType: !43, size: 32, offset: 20704)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !461, file: !462, line: 69, baseType: !515, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !462, line: 116, size: 384, elements: !518)
!518 = !{!519, !523, !546, !3252, !3283, !3287}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !517, file: !462, line: 117, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !467}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !517, file: !462, line: 118, baseType: !524, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !527, line: 254, size: 128, elements: !528)
!527 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!528 = !{!529, !542}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !526, file: !527, line: 255, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!533, !467, !537, !402}
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !46, line: 66, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !58, line: 73, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !58, line: 15, baseType: !536)
!536 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !527, line: 30, size: 128, elements: !539)
!539 = !{!540, !541}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !538, file: !527, line: 31, baseType: !37, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !538, file: !527, line: 32, baseType: !45, size: 16, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !526, file: !527, line: 256, baseType: !543, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!533, !467, !537, !37, !56}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !517, file: !462, line: 119, baseType: !547, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !527, line: 84, size: 320, elements: !551)
!551 = !{!552, !553, !557, !3248, !3250}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !550, file: !527, line: 85, baseType: !37, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !550, file: !527, line: 86, baseType: !554, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!45, !467, !537, !43}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !550, file: !527, line: 88, baseType: !558, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!45, !467, !561, !43}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !527, line: 175, size: 512, elements: !563)
!563 = !{!564, !565, !566, !567, !3239, !3243, !3244}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !562, file: !527, line: 176, baseType: !538, size: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !562, file: !527, line: 177, baseType: !56, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !562, file: !527, line: 178, baseType: !41, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !562, file: !527, line: 179, baseType: !568, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !173, line: 472, size: 1536, align: 64, elements: !573)
!573 = !{!574, !575, !583, !605, !606, !607, !622, !623, !624, !3233, !3234, !3235, !3236, !3237, !3238}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !572, file: !173, line: 473, baseType: !263, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !572, file: !173, line: 474, baseType: !576, size: 128, offset: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !577, line: 296, size: 128, elements: !578)
!577 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!578 = !{!579, !580, !582}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !576, file: !577, line: 297, baseType: !80, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !576, file: !577, line: 299, baseType: !581, size: 32, offset: 32)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !46, line: 154, baseType: !7)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !576, file: !577, line: 300, baseType: !41, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !572, file: !173, line: 475, baseType: !584, size: 320, offset: 192)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !585, line: 48, size: 320, elements: !586)
!585 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!586 = !{!587, !596, !597, !602, !604}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !584, file: !585, line: 49, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !589, line: 13, baseType: !590)
!589 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !46, line: 181, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 179, size: 64, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !591, file: !46, line: 180, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !105, line: 22, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !107, line: 30, baseType: !64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !584, file: !585, line: 55, baseType: !588, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !584, file: !585, line: 57, baseType: !598, size: 32, offset: 128)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !599, line: 15, size: 32, elements: !600)
!599 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !598, file: !599, line: 20, baseType: !70, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !584, file: !585, line: 59, baseType: !603, size: 32, offset: 160)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !89, line: 23, baseType: !88)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !584, file: !585, line: 60, baseType: !118, size: 128, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !572, file: !173, line: 476, baseType: !581, size: 32, offset: 512)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !572, file: !173, line: 477, baseType: !70, size: 32, offset: 544)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !572, file: !173, line: 482, baseType: !608, size: 128, offset: 576)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !609, line: 26, size: 128, elements: !610)
!609 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!610 = !{!611, !621}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !608, file: !609, line: 27, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !609, line: 12, size: 64, elements: !613)
!613 = !{!614}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !612, file: !609, line: 13, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !609, line: 5, size: 192, align: 64, elements: !617)
!617 = !{!618, !619, !620}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !616, file: !609, line: 6, baseType: !60, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !616, file: !609, line: 7, baseType: !615, size: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !616, file: !609, line: 8, baseType: !615, size: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !608, file: !609, line: 28, baseType: !615, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !572, file: !173, line: 483, baseType: !60, size: 64, offset: 704)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !572, file: !173, line: 484, baseType: !60, size: 64, offset: 768)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !572, file: !173, line: 485, baseType: !625, size: 64, offset: 832)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !173, line: 404, size: 1280, elements: !628)
!628 = !{!629, !3089, !3159, !3163, !3167, !3173, !3178, !3182, !3187, !3191, !3195, !3199, !3200, !3204, !3208, !3212, !3217, !3221, !3228, !3229}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !627, file: !173, line: 405, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!43, !633, !3087}
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !144, line: 74, size: 512, align: 128, elements: !635)
!635 = !{!636, !637, !3081, !3086}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !634, file: !144, line: 75, baseType: !60, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !144, line: 83, baseType: !638, size: 320, offset: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !634, file: !144, line: 83, size: 320, elements: !639)
!639 = !{!640, !661, !675, !679, !3080}
!640 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !144, line: 84, baseType: !641, size: 320)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !638, file: !144, line: 84, size: 320, elements: !642)
!642 = !{!643, !654, !655, !660}
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !144, line: 90, baseType: !644, size: 128)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !144, line: 90, size: 128, elements: !645)
!645 = !{!646, !647, !652, !653}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !644, file: !144, line: 91, baseType: !118, size: 128)
!647 = !DIDerivedType(tag: DW_TAG_member, scope: !644, file: !144, line: 94, baseType: !648, size: 128)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !644, file: !144, line: 94, size: 128, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !648, file: !144, line: 96, baseType: !41, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !648, file: !144, line: 98, baseType: !7, size: 32, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !644, file: !144, line: 102, baseType: !118, size: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !644, file: !144, line: 103, baseType: !118, size: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !641, file: !144, line: 106, baseType: !571, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !144, line: 107, baseType: !656, size: 64, offset: 192)
!656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !144, line: 107, size: 64, elements: !657)
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !656, file: !144, line: 108, baseType: !60, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !656, file: !144, line: 109, baseType: !60, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !641, file: !144, line: 117, baseType: !60, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !144, line: 119, baseType: !662, size: 320)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !638, file: !144, line: 119, size: 320, elements: !663)
!663 = !{!664, !665, !668, !669, !670}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !662, file: !144, line: 124, baseType: !60, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !662, file: !144, line: 125, baseType: !666, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !144, line: 125, flags: DIFlagFwdDecl)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !662, file: !144, line: 126, baseType: !60, size: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !662, file: !144, line: 127, baseType: !60, size: 64, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !144, line: 128, baseType: !671, size: 64, offset: 256)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !662, file: !144, line: 128, size: 64, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !671, file: !144, line: 133, baseType: !60, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !671, file: !144, line: 138, baseType: !588, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !144, line: 141, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !638, file: !144, line: 141, size: 64, elements: !677)
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !676, file: !144, line: 142, baseType: !60, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !144, line: 144, baseType: !680, size: 128)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !638, file: !144, line: 144, size: 128, elements: !681)
!681 = !{!682, !3079}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !680, file: !144, line: 146, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !14, line: 126, size: 1216, elements: !685)
!685 = !{!686, !696, !727, !738, !739, !740, !741, !3061, !3062, !3063}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !684, file: !14, line: 127, baseType: !687, size: 384)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !14, line: 21, size: 384, elements: !688)
!688 = !{!689, !690, !692, !693, !694, !695}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !687, file: !14, line: 22, baseType: !60, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !687, file: !14, line: 23, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !687, file: !14, line: 24, baseType: !691, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !687, file: !14, line: 25, baseType: !60, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !687, file: !14, line: 26, baseType: !60, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !687, file: !14, line: 27, baseType: !60, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !684, file: !14, line: 128, baseType: !697, size: 128, offset: 384)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !698, line: 105, size: 128, elements: !699)
!698 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!699 = !{!700, !701}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !697, file: !698, line: 110, baseType: !60, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !697, file: !698, line: 118, baseType: !702, size: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !698, line: 95, size: 448, elements: !704)
!704 = !{!705, !706, !712, !713, !716, !717, !726}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !703, file: !698, line: 96, baseType: !588, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !703, file: !698, line: 97, baseType: !707, size: 64, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !698, line: 60, baseType: !709)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !703, file: !698, line: 98, baseType: !707, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !703, file: !698, line: 99, baseType: !714, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !46, line: 35, baseType: !715)
!715 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !703, file: !698, line: 100, baseType: !714, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !703, file: !698, line: 101, baseType: !718, size: 128, align: 64, offset: 256)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !46, line: 232, size: 128, align: 64, elements: !719)
!719 = !{!720, !722}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !46, line: 233, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !718, file: !46, line: 234, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !721}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !703, file: !698, line: 102, baseType: !711, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !684, file: !14, line: 129, baseType: !728, size: 256, offset: 512)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !729, line: 26, size: 256, elements: !730)
!729 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!730 = !{!731, !732}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !728, file: !729, line: 27, baseType: !7, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !728, file: !729, line: 28, baseType: !733, size: 192, offset: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !734, line: 43, size: 192, elements: !735)
!734 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !733, file: !734, line: 44, baseType: !603, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !733, file: !734, line: 45, baseType: !118, size: 128, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !684, file: !14, line: 130, baseType: !13, size: 32, offset: 768)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !684, file: !14, line: 131, baseType: !7, size: 32, offset: 800)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !684, file: !14, line: 132, baseType: !60, size: 64, offset: 832)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !684, file: !14, line: 133, baseType: !742, size: 64, offset: 896)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !14, line: 77, size: 192, elements: !745)
!745 = !{!746, !750, !3057}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !744, file: !14, line: 83, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !633}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !744, file: !14, line: 89, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !144, line: 1184, baseType: !7)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !757, line: 512, size: 896, elements: !758)
!757 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!758 = !{!759, !3024, !3025, !3032, !3039, !3049, !3050, !3051, !3053, !3055}
!759 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !757, line: 513, baseType: !760, size: 320)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !756, file: !757, line: 513, size: 320, elements: !761)
!761 = !{!762, !3020, !3021, !3022, !3023}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !760, file: !757, line: 514, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !144, line: 625, size: 1344, elements: !765)
!765 = !{!766, !775, !2927, !2933, !2940, !2941, !2946, !2947, !2952, !2953, !2956, !3013, !3014, !3015, !3016, !3017, !3018}
!766 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !144, line: 628, baseType: !767, size: 128)
!767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !144, line: 628, size: 128, elements: !768)
!768 = !{!769, !774}
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !767, file: !144, line: 629, baseType: !770, size: 128)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !767, file: !144, line: 629, size: 128, elements: !771)
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !770, file: !144, line: 631, baseType: !60, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !770, file: !144, line: 632, baseType: !60, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !767, file: !144, line: 635, baseType: !718, size: 128, align: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !764, file: !144, line: 639, baseType: !776, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !144, line: 733, size: 10240, elements: !778)
!778 = !{!779, !2925}
!779 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !144, line: 734, baseType: !780, size: 10240)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !144, line: 734, size: 10240, elements: !781)
!781 = !{!782, !786, !800, !2800, !2801, !2802, !2803, !2804, !2805, !2814, !2815, !2816, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2855, !2857, !2860, !2905, !2906, !2907, !2910, !2911, !2912, !2915, !2916, !2917, !2923, !2924}
!782 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !144, line: 739, baseType: !783, size: 512, align: 512)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !780, file: !144, line: 739, size: 512, align: 512, elements: !784)
!784 = !{!785}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !783, file: !144, line: 747, baseType: !70, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !780, file: !144, line: 750, baseType: !787, size: 128, offset: 512)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !788, line: 218, size: 128, elements: !789)
!788 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!789 = !{!790, !798, !799}
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !788, line: 219, baseType: !791, size: 32)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !787, file: !788, line: 219, size: 32, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !791, file: !788, line: 220, baseType: !80, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !791, file: !788, line: 221, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !788, line: 197, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !788, line: 197, elements: !797)
!797 = !{}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !787, file: !788, line: 223, baseType: !7, size: 32, offset: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !787, file: !788, line: 224, baseType: !41, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !780, file: !144, line: 752, baseType: !801, size: 64, offset: 640)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!60, !804, !60, !60, !60, !60}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !173, line: 994, size: 1856, align: 64, elements: !806)
!806 = !{!807, !818, !819, !821, !822, !830, !831, !832, !2567, !2568, !2577, !2583, !2584, !2790, !2791, !2792, !2793, !2795, !2796, !2799}
!807 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !173, line: 995, baseType: !808, size: 128)
!808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !173, line: 995, size: 128, elements: !809)
!809 = !{!810, !816, !817}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !808, file: !173, line: 996, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !812, line: 60, size: 64, elements: !813)
!812 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !811, file: !812, line: 61, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !808, file: !173, line: 997, baseType: !718, size: 128, align: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !808, file: !173, line: 998, baseType: !7, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !805, file: !173, line: 1005, baseType: !80, size: 32, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !805, file: !173, line: 1006, baseType: !820, size: 32, offset: 160)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !46, line: 156, baseType: !7)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !805, file: !173, line: 1007, baseType: !588, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !805, file: !173, line: 1008, baseType: !823, size: 256, offset: 256)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !824, line: 66, size: 256, elements: !825)
!824 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!825 = !{!826, !827, !828, !829}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !823, file: !824, line: 67, baseType: !588, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !823, file: !824, line: 68, baseType: !603, size: 32, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !823, file: !824, line: 70, baseType: !598, size: 32, offset: 96)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !823, file: !824, line: 72, baseType: !118, size: 128, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !805, file: !173, line: 1009, baseType: !62, size: 64, offset: 512)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !805, file: !173, line: 1010, baseType: !7, size: 32, offset: 576)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !805, file: !173, line: 1011, baseType: !833, size: 256, offset: 640)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !173, line: 948, size: 256, elements: !834)
!834 = !{!835, !856, !2563, !2564, !2565, !2566}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !833, file: !173, line: 949, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !837, line: 34, baseType: !838)
!837 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !837, line: 25, size: 64, elements: !839)
!839 = !{!840}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !838, file: !837, line: 26, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !842, line: 27, baseType: !843)
!842 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !842, line: 13, size: 64, elements: !844)
!844 = !{!845, !855}
!845 = !DIDerivedType(tag: DW_TAG_member, scope: !843, file: !842, line: 14, baseType: !846, size: 32)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !843, file: !842, line: 14, size: 32, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !846, file: !842, line: 15, baseType: !70, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !842, line: 16, baseType: !850, size: 32)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !846, file: !842, line: 16, size: 32, elements: !851)
!851 = !{!852, !853}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !850, file: !842, line: 18, baseType: !104, size: 8)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !850, file: !842, line: 19, baseType: !854, size: 24, offset: 8)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 24, elements: !502)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !843, file: !842, line: 26, baseType: !92, size: 32, offset: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !833, file: !173, line: 950, baseType: !857, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !136, line: 59, size: 768, elements: !859)
!859 = !{!860, !866, !867, !868, !881, !882, !883, !884}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !858, file: !136, line: 61, baseType: !861, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !862, line: 113, baseType: !863)
!862 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !862, line: 111, size: 32, elements: !864)
!864 = !{!865}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !863, file: !862, line: 112, baseType: !70, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !858, file: !136, line: 62, baseType: !7, size: 32, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !858, file: !136, line: 63, baseType: !80, size: 32, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !858, file: !136, line: 65, baseType: !869, size: 256, offset: 128)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 256, elements: !879)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !46, line: 194, size: 64, elements: !871)
!871 = !{!872}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !870, file: !46, line: 195, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !46, line: 198, size: 128, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !874, file: !46, line: 199, baseType: !873, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !874, file: !46, line: 199, baseType: !878, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!879 = !{!880}
!880 = !DISubrange(count: 4)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !858, file: !136, line: 66, baseType: !870, size: 64, offset: 384)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !858, file: !136, line: 68, baseType: !75, size: 192, offset: 448)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !858, file: !136, line: 69, baseType: !718, size: 128, align: 64, offset: 640)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !858, file: !136, line: 70, baseType: !885, offset: 768)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, elements: !1648)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !136, line: 54, size: 128, elements: !887)
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !886, file: !136, line: 55, baseType: !43, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !886, file: !136, line: 56, baseType: !890, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !892, line: 26, size: 1152, elements: !893)
!892 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!893 = !{!894, !901, !902, !903, !2539, !2543, !2544, !2545, !2558, !2559, !2560, !2561, !2562}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !891, file: !892, line: 27, baseType: !895, size: 192)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !896, line: 19, size: 192, elements: !897)
!896 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!897 = !{!898, !899, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !895, file: !896, line: 20, baseType: !576, size: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !895, file: !896, line: 21, baseType: !7, size: 32, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !895, file: !896, line: 22, baseType: !7, size: 32, offset: 160)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !891, file: !892, line: 28, baseType: !718, size: 128, align: 64, offset: 192)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !891, file: !892, line: 29, baseType: !7, size: 32, offset: 320)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !891, file: !892, line: 30, baseType: !904, size: 64, offset: 384)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !906, line: 746, size: 58368, elements: !907)
!906 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!907 = !{!908, !916, !917, !918, !919, !920, !921, !922, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !988, !999, !1087, !1091, !1094, !1125, !1126, !1127, !1128, !1139, !1141, !1142, !1143, !1144, !1145, !1146, !1157, !1158, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1175, !1176, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1272, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1287, !1288, !1289, !1291, !1293, !1294, !1295, !1296, !1297, !1298, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1322, !1328, !1655, !1656, !1657, !1658, !1662, !1665, !1672, !1677, !1680, !1683, !1686, !1797, !1936, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1976, !1977, !1978, !1987, !1995, !1996, !1997, !1998, !1999, !2004, !2005, !2006, !2009, !2010, !2013, !2016, !2019, !2027, !2030, !2031, !2117, !2118, !2119, !2120, !2121, !2127, !2128, !2129, !2130, !2133, !2134, !2137, !2140, !2141, !2144, !2145, !2146, !2149, !2150, !2151, !2154, !2155, !2156, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2188, !2191, !2197, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2209, !2281, !2283, !2284, !2285, !2286, !2287, !2299, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2316, !2317, !2318}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !905, file: !906, line: 752, baseType: !909, size: 192)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !910, line: 56, size: 192, elements: !911)
!910 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!911 = !{!912, !913, !914, !915}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !909, file: !910, line: 57, baseType: !60, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !909, file: !910, line: 58, baseType: !60, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !909, file: !910, line: 59, baseType: !226, size: 32, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !909, file: !910, line: 61, baseType: !226, size: 32, offset: 160)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !905, file: !906, line: 754, baseType: !7, size: 32, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !905, file: !906, line: 767, baseType: !41, size: 64, offset: 256)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !905, file: !906, line: 768, baseType: !861, size: 32, offset: 320)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !905, file: !906, line: 770, baseType: !7, size: 32, offset: 352)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !905, file: !906, line: 771, baseType: !7, size: 32, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !905, file: !906, line: 774, baseType: !43, size: 32, offset: 416)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !905, file: !906, line: 775, baseType: !923, size: 128, offset: 448)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !924, line: 58, size: 128, elements: !925)
!924 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!925 = !{!926, !927, !932, !933}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !923, file: !924, line: 59, baseType: !811, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !924, line: 60, baseType: !928, size: 32, offset: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !923, file: !924, line: 60, size: 32, elements: !929)
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !928, file: !924, line: 61, baseType: !7, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !928, file: !924, line: 62, baseType: !70, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !923, file: !924, line: 65, baseType: !114, size: 16, offset: 96)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !923, file: !924, line: 65, baseType: !114, size: 16, offset: 112)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !905, file: !906, line: 776, baseType: !7, size: 32, offset: 576)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !905, file: !906, line: 777, baseType: !60, size: 64, offset: 640)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !905, file: !906, line: 778, baseType: !904, size: 64, offset: 704)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !905, file: !906, line: 787, baseType: !43, size: 32, offset: 768)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !905, file: !906, line: 788, baseType: !43, size: 32, offset: 800)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !905, file: !906, line: 790, baseType: !43, size: 32, offset: 832)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !905, file: !906, line: 792, baseType: !43, size: 32, offset: 864)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !905, file: !906, line: 793, baseType: !43, size: 32, offset: 896)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !905, file: !906, line: 794, baseType: !43, size: 32, offset: 928)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !905, file: !906, line: 795, baseType: !7, size: 32, offset: 960)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !905, file: !906, line: 797, baseType: !945, size: 2048, offset: 1024)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !906, line: 551, size: 2048, elements: !946)
!946 = !{!947, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !967, !970, !971, !972}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !945, file: !906, line: 553, baseType: !948, size: 128)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !906, line: 411, size: 128, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !948, file: !906, line: 412, baseType: !60, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !948, file: !906, line: 413, baseType: !226, size: 32, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !945, file: !906, line: 554, baseType: !616, size: 192, align: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !945, file: !906, line: 555, baseType: !334, size: 64, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !945, file: !906, line: 556, baseType: !334, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !945, file: !906, line: 558, baseType: !118, size: 128, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !945, file: !906, line: 559, baseType: !7, size: 32, offset: 576)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !945, file: !906, line: 561, baseType: !334, size: 64, offset: 640)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !945, file: !906, line: 562, baseType: !334, size: 64, offset: 704)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !945, file: !906, line: 563, baseType: !334, size: 64, offset: 768)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !945, file: !906, line: 564, baseType: !334, size: 64, offset: 832)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !945, file: !906, line: 565, baseType: !594, size: 64, offset: 896)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !945, file: !906, line: 566, baseType: !334, size: 64, offset: 960)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !945, file: !906, line: 568, baseType: !334, size: 64, offset: 1024)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !945, file: !906, line: 571, baseType: !43, size: 32, offset: 1088)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !945, file: !906, line: 572, baseType: !966, size: 64, offset: 1152)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !945, file: !906, line: 574, baseType: !968, size: 64, offset: 1216)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !906, line: 49, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !945, file: !906, line: 576, baseType: !968, size: 64, offset: 1280)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !945, file: !906, line: 578, baseType: !60, size: 64, offset: 1344)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !945, file: !906, line: 588, baseType: !973, size: 512, align: 512, offset: 1536)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !906, line: 497, size: 512, align: 512, elements: !974)
!974 = !{!975, !976, !977, !978, !979, !980, !981, !982, !983}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !973, file: !906, line: 498, baseType: !334, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !973, file: !906, line: 499, baseType: !334, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !973, file: !906, line: 500, baseType: !334, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !973, file: !906, line: 501, baseType: !226, size: 32, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !973, file: !906, line: 502, baseType: !226, size: 32, offset: 224)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !973, file: !906, line: 503, baseType: !60, size: 64, offset: 256)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !973, file: !906, line: 504, baseType: !60, size: 64, offset: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !973, file: !906, line: 505, baseType: !60, size: 64, offset: 384)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !973, file: !906, line: 506, baseType: !984, size: 64, align: 64, offset: 448)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !906, line: 445, size: 64, align: 64, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !984, file: !906, line: 446, baseType: !7, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !984, file: !906, line: 447, baseType: !7, size: 32, offset: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !905, file: !906, line: 798, baseType: !989, size: 384, offset: 3072)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !906, line: 592, size: 384, elements: !990)
!990 = !{!991, !992, !993, !994, !995, !996, !997}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !989, file: !906, line: 593, baseType: !118, size: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !989, file: !906, line: 594, baseType: !60, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !989, file: !906, line: 595, baseType: !60, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !989, file: !906, line: 596, baseType: !7, size: 32, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !989, file: !906, line: 597, baseType: !47, size: 16, offset: 288)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !989, file: !906, line: 598, baseType: !47, size: 16, offset: 304)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !989, file: !906, line: 600, baseType: !998, size: 64, offset: 320)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !905, file: !906, line: 799, baseType: !1000, size: 1792, offset: 3456)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !906, line: 610, size: 1792, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1084, !1085}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1000, file: !906, line: 611, baseType: !616, size: 192, align: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1000, file: !906, line: 618, baseType: !334, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1000, file: !906, line: 619, baseType: !334, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1000, file: !906, line: 620, baseType: !334, size: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1000, file: !906, line: 621, baseType: !334, size: 64, offset: 384)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1000, file: !906, line: 622, baseType: !334, size: 64, offset: 448)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1000, file: !906, line: 629, baseType: !594, size: 64, offset: 512)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1000, file: !906, line: 630, baseType: !334, size: 64, offset: 576)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1000, file: !906, line: 631, baseType: !7, size: 32, offset: 640)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1000, file: !906, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1000, file: !906, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1000, file: !906, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1000, file: !906, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1000, file: !906, line: 662, baseType: !1016, size: 512, offset: 704)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !22, line: 118, size: 512, elements: !1017)
!1017 = !{!1018, !1026, !1027, !1032, !1080, !1081, !1082, !1083}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1016, file: !22, line: 119, baseType: !1019, size: 256)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1020, line: 9, size: 256, elements: !1021)
!1020 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1019, file: !1020, line: 10, baseType: !616, size: 192, align: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1019, file: !1020, line: 11, baseType: !1024, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1025, line: 29, baseType: !594)
!1025 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1016, file: !22, line: 120, baseType: !1024, size: 64, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1016, file: !22, line: 121, baseType: !1028, size: 64, offset: 320)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!21, !1031}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1016, file: !22, line: 122, baseType: !1033, size: 64, offset: 384)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !22, line: 159, size: 512, align: 512, elements: !1035)
!1035 = !{!1036, !1061, !1062, !1065, !1070, !1071, !1075, !1079}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1034, file: !22, line: 160, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !22, line: 215, size: 4608, align: 512, elements: !1039)
!1039 = !{!1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1038, file: !22, line: 216, baseType: !603, size: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1038, file: !22, line: 217, baseType: !7, size: 32, offset: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1038, file: !22, line: 218, baseType: !7, size: 32, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1038, file: !22, line: 219, baseType: !7, size: 32, offset: 96)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1038, file: !22, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1038, file: !22, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1038, file: !22, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1038, file: !22, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1038, file: !22, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1038, file: !22, line: 226, baseType: !7, size: 32, offset: 160)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1038, file: !22, line: 227, baseType: !47, size: 16, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1038, file: !22, line: 228, baseType: !47, size: 16, offset: 208)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1038, file: !22, line: 229, baseType: !7, size: 32, offset: 224)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1038, file: !22, line: 235, baseType: !1024, size: 64, offset: 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1038, file: !22, line: 236, baseType: !1031, size: 64, offset: 320)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1038, file: !22, line: 237, baseType: !1024, size: 64, offset: 384)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1038, file: !22, line: 238, baseType: !1031, size: 64, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1038, file: !22, line: 239, baseType: !1058, size: 4096, align: 512, offset: 512)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1034, size: 4096, align: 512, elements: !1059)
!1059 = !{!1060}
!1060 = !DISubrange(count: 8)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1034, file: !22, line: 161, baseType: !7, size: 32, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1034, file: !22, line: 162, baseType: !1063, size: 32, offset: 96)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !46, line: 32, baseType: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !58, line: 96, baseType: !43)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1034, file: !22, line: 163, baseType: !1066, size: 32, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !305, line: 274, baseType: !1067)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !305, line: 274, size: 32, elements: !1068)
!1068 = !{!1069}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1067, file: !305, line: 274, baseType: !309, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1034, file: !22, line: 164, baseType: !1031, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1034, file: !22, line: 165, baseType: !1072, size: 128, offset: 256)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1020, line: 14, size: 128, elements: !1073)
!1073 = !{!1074}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1072, file: !1020, line: 15, baseType: !608, size: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1034, file: !22, line: 166, baseType: !1076, size: 64, offset: 384)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!1024}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1034, file: !22, line: 167, baseType: !1024, size: 64, offset: 448)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1016, file: !22, line: 123, baseType: !104, size: 8, offset: 448)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1016, file: !22, line: 124, baseType: !104, size: 8, offset: 456)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1016, file: !22, line: 125, baseType: !104, size: 8, offset: 464)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1016, file: !22, line: 126, baseType: !104, size: 8, offset: 472)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1000, file: !906, line: 671, baseType: !1016, size: 512, offset: 1216)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1000, file: !906, line: 679, baseType: !1086, size: 64, offset: 1728)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !905, file: !906, line: 800, baseType: !1088, size: 64, offset: 5248)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1090)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !906, line: 800, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !905, file: !906, line: 809, baseType: !1092, size: 64, offset: 5312)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !906, line: 70, flags: DIFlagFwdDecl)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !905, file: !906, line: 825, baseType: !1095, size: 2048, align: 512, offset: 5632)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !906, line: 509, size: 2048, align: 512, elements: !1096)
!1096 = !{!1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1095, file: !906, line: 511, baseType: !334, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1095, file: !906, line: 512, baseType: !334, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1095, file: !906, line: 513, baseType: !334, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1095, file: !906, line: 514, baseType: !334, size: 64, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1095, file: !906, line: 515, baseType: !334, size: 64, offset: 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1095, file: !906, line: 516, baseType: !334, size: 64, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1095, file: !906, line: 518, baseType: !334, size: 64, offset: 384)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1095, file: !906, line: 519, baseType: !334, size: 64, offset: 448)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1095, file: !906, line: 520, baseType: !594, size: 64, offset: 512)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1095, file: !906, line: 522, baseType: !334, size: 64, offset: 576)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1095, file: !906, line: 523, baseType: !334, size: 64, offset: 640)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1095, file: !906, line: 524, baseType: !594, size: 64, offset: 704)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1095, file: !906, line: 526, baseType: !594, size: 64, offset: 768)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1095, file: !906, line: 527, baseType: !334, size: 64, offset: 832)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1095, file: !906, line: 529, baseType: !334, size: 64, offset: 896)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1095, file: !906, line: 530, baseType: !334, size: 64, offset: 960)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1095, file: !906, line: 531, baseType: !334, size: 64, offset: 1024)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1095, file: !906, line: 532, baseType: !334, size: 64, offset: 1088)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1095, file: !906, line: 533, baseType: !334, size: 64, offset: 1152)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1095, file: !906, line: 535, baseType: !334, size: 64, offset: 1216)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1095, file: !906, line: 536, baseType: !334, size: 64, offset: 1280)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1095, file: !906, line: 537, baseType: !334, size: 64, offset: 1344)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1095, file: !906, line: 538, baseType: !334, size: 64, offset: 1408)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1095, file: !906, line: 539, baseType: !334, size: 64, offset: 1472)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1095, file: !906, line: 540, baseType: !334, size: 64, offset: 1536)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1095, file: !906, line: 541, baseType: !334, size: 64, offset: 1600)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1095, file: !906, line: 542, baseType: !334, size: 64, offset: 1664)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1095, file: !906, line: 543, baseType: !334, size: 64, offset: 1728)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !905, file: !906, line: 833, baseType: !7, size: 32, offset: 7680)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !905, file: !906, line: 836, baseType: !7, size: 32, offset: 7712)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !905, file: !906, line: 837, baseType: !43, size: 32, offset: 7744)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !905, file: !906, line: 838, baseType: !1129, size: 64, offset: 7808)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1132, line: 19, baseType: !1133)
!1132 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1132, line: 19, size: 64, elements: !1134)
!1134 = !{!1135}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1133, file: !1132, line: 19, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 64, elements: !1137)
!1137 = !{!1138}
!1138 = !DISubrange(count: 1)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !905, file: !906, line: 839, baseType: !1140, size: 64, offset: 7872)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !905, file: !906, line: 840, baseType: !1131, size: 64, offset: 7936)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !905, file: !906, line: 841, baseType: !41, size: 64, offset: 8000)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !905, file: !906, line: 843, baseType: !47, size: 16, offset: 8064)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !905, file: !906, line: 845, baseType: !47, size: 16, offset: 8080)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !905, file: !906, line: 848, baseType: !43, size: 32, offset: 8096)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !905, file: !906, line: 849, baseType: !1147, size: 32, offset: 8128)
!1147 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !906, line: 718, size: 32, elements: !1148)
!1148 = !{!1149, !1156}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1147, file: !906, line: 724, baseType: !1150, size: 32)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1147, file: !906, line: 719, size: 32, elements: !1151)
!1151 = !{!1152, !1153, !1154, !1155}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1150, file: !906, line: 720, baseType: !104, size: 8)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1150, file: !906, line: 721, baseType: !104, size: 8, offset: 8)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1150, file: !906, line: 722, baseType: !104, size: 8, offset: 16)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1150, file: !906, line: 723, baseType: !104, size: 8, offset: 24)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1147, file: !906, line: 725, baseType: !226, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !905, file: !906, line: 850, baseType: !118, size: 128, offset: 8192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !905, file: !906, line: 851, baseType: !1159, size: 64, offset: 8320)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !906, line: 60, flags: DIFlagFwdDecl)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !905, file: !906, line: 855, baseType: !60, size: 64, offset: 8384)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !905, file: !906, line: 856, baseType: !104, size: 8, offset: 8448)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !905, file: !906, line: 857, baseType: !104, size: 8, offset: 8456)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !905, file: !906, line: 858, baseType: !43, size: 32, offset: 8480)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !905, file: !906, line: 859, baseType: !118, size: 128, offset: 8512)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !905, file: !906, line: 860, baseType: !43, size: 32, offset: 8640)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !905, file: !906, line: 861, baseType: !118, size: 128, offset: 8704)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !905, file: !906, line: 873, baseType: !1169, size: 256, offset: 8832)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !906, line: 376, size: 256, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1169, file: !906, line: 381, baseType: !60, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1169, file: !906, line: 384, baseType: !336, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1169, file: !906, line: 389, baseType: !336, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1169, file: !906, line: 392, baseType: !336, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !905, file: !906, line: 875, baseType: !118, size: 128, offset: 9088)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !905, file: !906, line: 877, baseType: !1177, size: 320, offset: 9216)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1178, line: 86, size: 320, elements: !1179)
!1178 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1179 = !{!1180, !1181, !1182}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1177, file: !1178, line: 87, baseType: !43, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1177, file: !1178, line: 88, baseType: !118, size: 128, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1177, file: !1178, line: 89, baseType: !118, size: 128, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !905, file: !906, line: 878, baseType: !616, size: 192, align: 64, offset: 9536)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !905, file: !906, line: 881, baseType: !776, size: 64, offset: 9728)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !905, file: !906, line: 882, baseType: !776, size: 64, offset: 9792)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !905, file: !906, line: 884, baseType: !43, size: 32, offset: 9856)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !905, file: !906, line: 885, baseType: !43, size: 32, offset: 9888)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !905, file: !906, line: 886, baseType: !43, size: 32, offset: 9920)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !905, file: !906, line: 888, baseType: !43, size: 32, offset: 9952)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !905, file: !906, line: 890, baseType: !60, size: 64, offset: 9984)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !905, file: !906, line: 893, baseType: !7, size: 32, offset: 10048)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !905, file: !906, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !905, file: !906, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !905, file: !906, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !905, file: !906, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !905, file: !906, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !905, file: !906, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !905, file: !906, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !905, file: !906, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !905, file: !906, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !905, file: !906, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !905, file: !906, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !905, file: !906, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !905, file: !906, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !905, file: !906, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !905, file: !906, line: 969, baseType: !60, size: 64, offset: 10176)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !905, file: !906, line: 971, baseType: !1208, size: 448, offset: 10240)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !27, line: 25, size: 448, elements: !1209)
!1209 = !{!1210, !1211, !1216}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1208, file: !27, line: 26, baseType: !60, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1208, file: !27, line: 27, baseType: !1212, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!536, !1215}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, scope: !1208, file: !27, line: 28, baseType: !1217, size: 320, offset: 128)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1208, file: !27, line: 28, size: 320, elements: !1218)
!1218 = !{!1219, !1229, !1256}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1217, file: !27, line: 37, baseType: !1220, size: 320)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1217, file: !27, line: 30, size: 320, elements: !1221)
!1221 = !{!1222, !1224, !1225, !1226, !1227, !1228}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1220, file: !27, line: 31, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1220, file: !27, line: 32, baseType: !226, size: 32, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1220, file: !27, line: 33, baseType: !226, size: 32, offset: 96)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1220, file: !27, line: 34, baseType: !226, size: 32, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1220, file: !27, line: 35, baseType: !334, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1220, file: !27, line: 36, baseType: !1223, size: 64, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1217, file: !27, line: 47, baseType: !1230, size: 192)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1217, file: !27, line: 39, size: 192, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1255}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1230, file: !27, line: 40, baseType: !1063, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1230, file: !27, line: 41, baseType: !26, size: 32, offset: 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !27, line: 42, baseType: !1235, size: 64, offset: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1230, file: !27, line: 42, size: 64, elements: !1236)
!1236 = !{!1237, !1245}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1235, file: !27, line: 43, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1240, line: 7, size: 128, elements: !1241)
!1240 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1241 = !{!1242, !1244}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1239, file: !1240, line: 8, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !58, line: 93, baseType: !64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1239, file: !1240, line: 9, baseType: !64, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1235, file: !27, line: 44, baseType: !1246, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1248, line: 7, size: 64, elements: !1249)
!1248 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1249 = !{!1250, !1254}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1247, file: !1248, line: 8, baseType: !1251, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1248, line: 5, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !105, line: 20, baseType: !1253)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !107, line: 26, baseType: !43)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1247, file: !1248, line: 9, baseType: !1252, size: 32, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1230, file: !27, line: 46, baseType: !334, size: 64, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1217, file: !27, line: 55, baseType: !1257, size: 256)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1217, file: !27, line: 49, size: 256, elements: !1258)
!1258 = !{!1259, !1268, !1269, !1270, !1271}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1257, file: !27, line: 50, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1262, line: 36, size: 64, elements: !1263)
!1262 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1263 = !{!1264, !1265, !1267}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1261, file: !1262, line: 37, baseType: !43, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1261, file: !1262, line: 38, baseType: !1266, size: 16, offset: 32)
!1266 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1261, file: !1262, line: 39, baseType: !1266, size: 16, offset: 48)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1257, file: !27, line: 51, baseType: !43, size: 32, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1257, file: !27, line: 52, baseType: !43, size: 32, offset: 96)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1257, file: !27, line: 53, baseType: !60, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1257, file: !27, line: 54, baseType: !60, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !905, file: !906, line: 973, baseType: !1273, size: 32, offset: 10688)
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !46, line: 27, baseType: !1274)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !58, line: 28, baseType: !43)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !905, file: !906, line: 974, baseType: !1273, size: 32, offset: 10720)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !905, file: !906, line: 978, baseType: !60, size: 64, offset: 10752)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !905, file: !906, line: 987, baseType: !904, size: 64, offset: 10816)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !905, file: !906, line: 990, baseType: !904, size: 64, offset: 10880)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !905, file: !906, line: 995, baseType: !118, size: 128, offset: 10944)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !905, file: !906, line: 996, baseType: !118, size: 128, offset: 11072)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !905, file: !906, line: 997, baseType: !904, size: 64, offset: 11200)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !905, file: !906, line: 1005, baseType: !118, size: 128, offset: 11264)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !905, file: !906, line: 1006, baseType: !118, size: 128, offset: 11392)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !905, file: !906, line: 1009, baseType: !857, size: 64, offset: 11520)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !905, file: !906, line: 1010, baseType: !1286, size: 512, offset: 11584)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 512, elements: !879)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !905, file: !906, line: 1011, baseType: !118, size: 128, offset: 12096)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !905, file: !906, line: 1012, baseType: !118, size: 128, offset: 12224)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !905, file: !906, line: 1014, baseType: !1290, size: 64, offset: 12352)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !905, file: !906, line: 1017, baseType: !1292, size: 64, offset: 12416)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !905, file: !906, line: 1020, baseType: !1292, size: 64, offset: 12480)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !905, file: !906, line: 1023, baseType: !41, size: 64, offset: 12544)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !905, file: !906, line: 1025, baseType: !334, size: 64, offset: 12608)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !905, file: !906, line: 1026, baseType: !334, size: 64, offset: 12672)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !905, file: !906, line: 1031, baseType: !334, size: 64, offset: 12736)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !905, file: !906, line: 1032, baseType: !1299, size: 192, offset: 12800)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !906, line: 324, size: 192, elements: !1300)
!1300 = !{!1301, !1302, !1303}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1299, file: !906, line: 326, baseType: !334, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1299, file: !906, line: 327, baseType: !334, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1299, file: !906, line: 328, baseType: !603, size: 32, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !905, file: !906, line: 1041, baseType: !60, size: 64, offset: 12992)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !905, file: !906, line: 1042, baseType: !60, size: 64, offset: 13056)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !905, file: !906, line: 1045, baseType: !334, size: 64, offset: 13120)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !905, file: !906, line: 1048, baseType: !334, size: 64, offset: 13184)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !905, file: !906, line: 1051, baseType: !60, size: 64, offset: 13248)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !905, file: !906, line: 1052, baseType: !60, size: 64, offset: 13312)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !905, file: !906, line: 1055, baseType: !1311, size: 640, offset: 13376)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1312, line: 132, size: 640, elements: !1313)
!1312 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1313 = !{!1314, !1320, !1321}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1311, file: !1312, line: 133, baseType: !1315, size: 576)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1316, size: 576, elements: !502)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1312, line: 117, size: 192, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1316, file: !1312, line: 118, baseType: !334, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1316, file: !1312, line: 119, baseType: !1072, size: 128, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1311, file: !1312, line: 134, baseType: !7, size: 32, offset: 576)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1311, file: !1312, line: 135, baseType: !7, size: 32, offset: 608)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !905, file: !906, line: 1058, baseType: !1323, size: 448, offset: 14016)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1312, line: 144, size: 448, elements: !1324)
!1324 = !{!1325, !1326, !1327}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1323, file: !1312, line: 145, baseType: !718, size: 128, align: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1323, file: !1312, line: 146, baseType: !823, size: 256, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1323, file: !1312, line: 147, baseType: !7, size: 32, offset: 384)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !905, file: !906, line: 1064, baseType: !1329, size: 64, offset: 14464)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1332, line: 110, size: 1472, elements: !1333)
!1332 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1333 = !{!1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1350, !1351, !1352, !1353, !1354, !1355, !1465, !1466, !1467, !1468, !1469, !1500, !1639, !1640, !1650}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1331, file: !1332, line: 111, baseType: !588, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1331, file: !1332, line: 112, baseType: !269, size: 32, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1331, file: !1332, line: 113, baseType: !278, size: 32, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1331, file: !1332, line: 114, baseType: !269, size: 32, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1331, file: !1332, line: 115, baseType: !278, size: 32, offset: 160)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1331, file: !1332, line: 116, baseType: !269, size: 32, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1331, file: !1332, line: 117, baseType: !278, size: 32, offset: 224)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1331, file: !1332, line: 118, baseType: !269, size: 32, offset: 256)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1331, file: !1332, line: 119, baseType: !278, size: 32, offset: 288)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1331, file: !1332, line: 120, baseType: !7, size: 32, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1331, file: !1332, line: 121, baseType: !1345, size: 64, offset: 384)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1346, line: 24, baseType: !1347)
!1346 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1346, line: 24, size: 64, elements: !1348)
!1348 = !{!1349}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1347, file: !1346, line: 24, baseType: !334, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1331, file: !1332, line: 122, baseType: !1345, size: 64, offset: 448)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1331, file: !1332, line: 123, baseType: !1345, size: 64, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1331, file: !1332, line: 124, baseType: !1345, size: 64, offset: 576)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1331, file: !1332, line: 125, baseType: !1345, size: 64, offset: 640)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1331, file: !1332, line: 127, baseType: !108, size: 8, offset: 704)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1331, file: !1332, line: 129, baseType: !1356, size: 64, offset: 768)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1358, line: 195, size: 1728, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1359 = !{!1360, !1361, !1364, !1369, !1370, !1373, !1374, !1381, !1382, !1383, !1384, !1387, !1388, !1389, !1390, !1391, !1429, !1450}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1357, file: !1358, line: 196, baseType: !861, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1357, file: !1358, line: 197, baseType: !1362, size: 32, offset: 32)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1358, line: 28, baseType: !1363)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !46, line: 104, baseType: !1252)
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 198, baseType: !1365, size: 192, offset: 64)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 198, size: 192, elements: !1366)
!1366 = !{!1367, !1368}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1365, file: !1358, line: 199, baseType: !118, size: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1365, file: !1358, line: 200, baseType: !616, size: 192, align: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1357, file: !1358, line: 205, baseType: !584, size: 320, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1357, file: !1358, line: 206, baseType: !1371, size: 64, offset: 576)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1358, line: 206, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1357, file: !1358, line: 207, baseType: !41, size: 64, offset: 640)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 208, baseType: !1375, size: 64, offset: 704)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 208, size: 64, elements: !1376)
!1376 = !{!1377, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1375, file: !1358, line: 209, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1379, line: 8, baseType: !595)
!1379 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1375, file: !1358, line: 210, baseType: !1378, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1357, file: !1358, line: 212, baseType: !1378, size: 64, offset: 768)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1357, file: !1358, line: 213, baseType: !269, size: 32, offset: 832)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1357, file: !1358, line: 214, baseType: !278, size: 32, offset: 864)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1357, file: !1358, line: 215, baseType: !1385, size: 32, offset: 896)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1358, line: 31, baseType: !1386)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !46, line: 110, baseType: !226)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1357, file: !1358, line: 216, baseType: !47, size: 16, offset: 928)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1357, file: !1358, line: 217, baseType: !47, size: 16, offset: 944)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1357, file: !1358, line: 221, baseType: !1266, size: 16, offset: 960)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1357, file: !1358, line: 228, baseType: !60, size: 64, offset: 1024)
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 245, baseType: !1392, size: 320, offset: 1088)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 245, size: 320, elements: !1393)
!1393 = !{!1394, !1421}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1392, file: !1358, line: 246, baseType: !1395, size: 320)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1358, line: 114, size: 320, elements: !1396)
!1396 = !{!1397, !1398, !1410, !1413, !1420}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1395, file: !1358, line: 116, baseType: !60, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, scope: !1395, file: !1358, line: 117, baseType: !1399, size: 64, offset: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1395, file: !1358, line: 117, size: 64, elements: !1400)
!1400 = !{!1401, !1409}
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !1358, line: 118, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1399, file: !1358, line: 118, size: 64, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1402, file: !1358, line: 120, baseType: !114, size: 16)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1402, file: !1358, line: 121, baseType: !1406, size: 48, offset: 16)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 48, elements: !1407)
!1407 = !{!1408}
!1408 = !DISubrange(count: 6)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1399, file: !1358, line: 127, baseType: !60, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1395, file: !1358, line: 129, baseType: !1411, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1358, line: 102, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1395, file: !1358, line: 130, baseType: !1414, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1358, line: 108, size: 192, elements: !1416)
!1416 = !{!1417, !1418, !1419}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1415, file: !1358, line: 109, baseType: !718, size: 128, align: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1415, file: !1358, line: 110, baseType: !861, size: 32, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1415, file: !1358, line: 111, baseType: !714, size: 8, offset: 160)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1395, file: !1358, line: 131, baseType: !37, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1392, file: !1358, line: 247, baseType: !1422, size: 320)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1392, file: !1358, line: 247, size: 320, elements: !1423)
!1423 = !{!1424, !1425, !1426, !1427, !1428}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1422, file: !1358, line: 248, baseType: !60, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1422, file: !1358, line: 249, baseType: !60, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1422, file: !1358, line: 250, baseType: !1411, size: 64, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1422, file: !1358, line: 251, baseType: !1414, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1422, file: !1358, line: 252, baseType: !402, size: 64, offset: 256)
!1429 = !DIDerivedType(tag: DW_TAG_member, scope: !1357, file: !1358, line: 260, baseType: !1430, size: 256, offset: 1408)
!1430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1357, file: !1358, line: 260, size: 256, elements: !1431)
!1431 = !{!1432, !1438}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1430, file: !1358, line: 261, baseType: !1433, size: 256)
!1433 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1358, line: 134, size: 256, elements: !1434)
!1434 = !{!1435, !1436}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1433, file: !1358, line: 135, baseType: !41, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1433, file: !1358, line: 136, baseType: !1437, size: 256)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, elements: !879)
!1438 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1358, line: 262, baseType: !1439, size: 256)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1430, file: !1358, line: 262, size: 256, elements: !1440)
!1440 = !{!1441, !1442}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1439, file: !1358, line: 264, baseType: !118, size: 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1439, file: !1358, line: 265, baseType: !1443, size: 128, offset: 128)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1444, line: 22, size: 128, elements: !1445)
!1444 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1445 = !{!1446, !1449}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1443, file: !1444, line: 23, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1444, line: 23, flags: DIFlagFwdDecl)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1443, file: !1444, line: 24, baseType: !60, size: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1357, file: !1358, line: 280, baseType: !1451, size: 64, offset: 1664)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1358, line: 176, size: 192, elements: !1453)
!1453 = !{!1454, !1463, !1464}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1452, file: !1358, line: 177, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1358, line: 171, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!43, !1356, !1459, !1461, !1356}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1433)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1452, file: !1358, line: 178, baseType: !1356, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1452, file: !1358, line: 179, baseType: !1411, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1331, file: !1332, line: 130, baseType: !1356, size: 64, offset: 832)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1331, file: !1332, line: 131, baseType: !1356, size: 64, offset: 896)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1331, file: !1332, line: 132, baseType: !1356, size: 64, offset: 960)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1331, file: !1332, line: 135, baseType: !41, size: 64, offset: 1024)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1331, file: !1332, line: 137, baseType: !1470, size: 64, offset: 1088)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1472, line: 14, size: 1088, elements: !1473)
!1472 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1473 = !{!1474, !1475, !1484, !1485, !1486, !1487, !1488, !1489}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1471, file: !1472, line: 15, baseType: !861, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1471, file: !1472, line: 17, baseType: !1476, size: 320, offset: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1477, line: 22, size: 320, elements: !1478)
!1477 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1478 = !{!1479, !1480, !1481, !1482}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1476, file: !1477, line: 23, baseType: !603, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1476, file: !1477, line: 24, baseType: !594, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1476, file: !1477, line: 26, baseType: !118, size: 128, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1476, file: !1477, line: 28, baseType: !1483, size: 64, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1471, file: !1472, line: 19, baseType: !60, size: 64, offset: 384)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1471, file: !1472, line: 20, baseType: !588, size: 64, offset: 448)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1471, file: !1472, line: 23, baseType: !874, size: 128, offset: 512)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1471, file: !1472, line: 24, baseType: !269, size: 32, offset: 640)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1471, file: !1472, line: 29, baseType: !588, size: 64, offset: 704)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1471, file: !1472, line: 36, baseType: !1490, size: 320, offset: 768)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1491, line: 15, size: 320, elements: !1492)
!1491 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1499}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1490, file: !1491, line: 16, baseType: !603, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1490, file: !1491, line: 18, baseType: !43, size: 32, offset: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1490, file: !1491, line: 19, baseType: !43, size: 32, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1490, file: !1491, line: 20, baseType: !43, size: 32, offset: 96)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1490, file: !1491, line: 21, baseType: !43, size: 32, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1490, file: !1491, line: 22, baseType: !60, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1490, file: !1491, line: 23, baseType: !60, size: 64, offset: 256)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1331, file: !1332, line: 138, baseType: !1501, size: 64, offset: 1152)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1503, line: 68, size: 4800, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1504 = !{!1505, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1544, !1545, !1546, !1547, !1548, !1549, !1561, !1620, !1621, !1635, !1637}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1502, file: !1503, line: 69, baseType: !1506, size: 576)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1503, line: 23, size: 576, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1506, file: !1503, line: 24, baseType: !226, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, scope: !1506, file: !1503, line: 25, baseType: !1510, size: 512, offset: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1506, file: !1503, line: 25, size: 512, elements: !1511)
!1511 = !{!1512, !1521}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1510, file: !1503, line: 26, baseType: !1513, size: 480)
!1513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1514, size: 480, elements: !1519)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1503, line: 17, size: 96, elements: !1515)
!1515 = !{!1516, !1517, !1518}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1514, file: !1503, line: 18, baseType: !226, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1514, file: !1503, line: 19, baseType: !226, size: 32, offset: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1514, file: !1503, line: 20, baseType: !226, size: 32, offset: 64)
!1519 = !{!1520}
!1520 = !DISubrange(count: 5)
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1510, file: !1503, line: 27, baseType: !1522, size: 128)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1510, file: !1503, line: 27, size: 128, elements: !1523)
!1523 = !{!1524, !1526}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1522, file: !1503, line: 28, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1522, file: !1503, line: 29, baseType: !1525, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1502, file: !1503, line: 70, baseType: !1506, size: 576, offset: 576)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1502, file: !1503, line: 71, baseType: !1506, size: 576, offset: 1152)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1502, file: !1503, line: 72, baseType: !1501, size: 64, offset: 1728)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1502, file: !1503, line: 73, baseType: !43, size: 32, offset: 1792)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1502, file: !1503, line: 74, baseType: !269, size: 32, offset: 1824)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1502, file: !1503, line: 75, baseType: !278, size: 32, offset: 1856)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1502, file: !1503, line: 76, baseType: !1534, size: 192, offset: 1920)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1535, line: 9, size: 192, elements: !1536)
!1535 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1536 = !{!1537, !1538, !1542, !1543}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1534, file: !1535, line: 10, baseType: !588, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1534, file: !1535, line: 11, baseType: !1539, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1541)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1535, line: 7, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1534, file: !1535, line: 12, baseType: !7, size: 32, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1534, file: !1535, line: 13, baseType: !861, size: 32, offset: 160)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1502, file: !1503, line: 77, baseType: !60, size: 64, offset: 2112)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1502, file: !1503, line: 80, baseType: !714, size: 8, offset: 2176)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1502, file: !1503, line: 88, baseType: !118, size: 128, offset: 2240)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1502, file: !1503, line: 89, baseType: !1356, size: 64, offset: 2368)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1502, file: !1503, line: 90, baseType: !584, size: 320, offset: 2432)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1502, file: !1503, line: 97, baseType: !1550, size: 256, offset: 2752)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1551, line: 98, size: 256, elements: !1552)
!1551 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1552 = !{!1553, !1554, !1555}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1550, file: !1551, line: 99, baseType: !588, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1550, file: !1551, line: 100, baseType: !118, size: 128, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1550, file: !1551, line: 101, baseType: !1556, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1551, line: 21, baseType: !1557)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{null, !1560}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1502, file: !1503, line: 99, baseType: !1562, size: 768, offset: 3008)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !33, line: 199, size: 768, elements: !1563)
!1563 = !{!1564, !1569}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1562, file: !33, line: 200, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!43, !1568}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1562, file: !33, line: 201, baseType: !1570, size: 704, offset: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !33, line: 193, size: 704, elements: !1571)
!1571 = !{!1572, !1619}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1570, file: !33, line: 195, baseType: !1573, size: 640)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !33, line: 173, size: 640, elements: !1574)
!1574 = !{!1575, !1587, !1588, !1589, !1609, !1610, !1612, !1618}
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1573, file: !33, line: 174, baseType: !1576, size: 192)
!1576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1573, file: !33, line: 174, size: 192, elements: !1577)
!1577 = !{!1578, !1586}
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1576, file: !33, line: 175, baseType: !1579, size: 192)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1576, file: !33, line: 175, size: 192, elements: !1580)
!1580 = !{!1581, !1582, !1583, !1584, !1585}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1579, file: !33, line: 176, baseType: !54, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1579, file: !33, line: 177, baseType: !43, size: 32, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1579, file: !33, line: 178, baseType: !43, size: 32, offset: 96)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1579, file: !33, line: 179, baseType: !43, size: 32, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1579, file: !33, line: 180, baseType: !43, size: 32, offset: 160)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1576, file: !33, line: 182, baseType: !718, size: 128, align: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1573, file: !33, line: 184, baseType: !1290, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1573, file: !33, line: 185, baseType: !54, size: 64, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1573, file: !33, line: 186, baseType: !1590, size: 64, offset: 320)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !33, line: 204, size: 960, elements: !1592)
!1592 = !{!1593, !1594, !1598, !1605}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1591, file: !33, line: 205, baseType: !1562, size: 768)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1591, file: !33, line: 206, baseType: !1595, size: 64, offset: 768)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!1568, !1590}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1591, file: !33, line: 207, baseType: !1599, size: 64, offset: 832)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !1602, !1603, !1604}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1591, file: !33, line: 209, baseType: !1606, size: 64, offset: 896)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!43, !1602, !54}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1573, file: !33, line: 187, baseType: !1568, size: 64, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1573, file: !33, line: 188, baseType: !1611, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1573, file: !33, line: 189, baseType: !1613, size: 64, offset: 512)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !33, line: 157, size: 256, elements: !1615)
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1614, file: !33, line: 158, baseType: !616, size: 192, align: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1614, file: !33, line: 159, baseType: !1602, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1573, file: !33, line: 190, baseType: !870, size: 64, offset: 576)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1570, file: !33, line: 196, baseType: !612, size: 64, offset: 640)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1502, file: !1503, line: 100, baseType: !1602, size: 64, offset: 3776)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1502, file: !1503, line: 102, baseType: !1622, size: 64, offset: 3840)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1503, line: 107, size: 1152, elements: !1624)
!1624 = !{!1625, !1626, !1627, !1628, !1629, !1633}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1623, file: !1503, line: 108, baseType: !874, size: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1623, file: !1503, line: 109, baseType: !1501, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1623, file: !1503, line: 110, baseType: !269, size: 32, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1623, file: !1503, line: 111, baseType: !70, size: 32, offset: 224)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1623, file: !1503, line: 112, baseType: !1630, size: 640, offset: 256)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 640, elements: !1631)
!1631 = !{!1632}
!1632 = !DISubrange(count: 10)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1623, file: !1503, line: 113, baseType: !1634, size: 256, offset: 896)
!1634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 256, elements: !879)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1502, file: !1503, line: 103, baseType: !1636, size: 640, offset: 3904)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 640, elements: !1631)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1502, file: !1503, line: 104, baseType: !1638, size: 256, offset: 4544)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 256, elements: !879)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1331, file: !1332, line: 139, baseType: !1622, size: 64, offset: 1216)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1331, file: !1332, line: 140, baseType: !1641, size: 64, offset: 1280)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1332, line: 25, size: 64, elements: !1643)
!1643 = !{!1644, !1645, !1646}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1642, file: !1332, line: 26, baseType: !70, size: 32)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1642, file: !1332, line: 27, baseType: !43, size: 32, offset: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1642, file: !1332, line: 28, baseType: !1647, offset: 64)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, elements: !1648)
!1648 = !{!1649}
!1649 = !DISubrange(count: -1)
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1331, file: !1332, line: 142, baseType: !1651, size: 128, offset: 1344)
!1651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1331, file: !1332, line: 142, size: 128, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1651, file: !1332, line: 143, baseType: !43, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1651, file: !1332, line: 144, baseType: !718, size: 128, align: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !905, file: !906, line: 1067, baseType: !1329, size: 64, offset: 14528)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !905, file: !906, line: 1070, baseType: !1329, size: 64, offset: 14592)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !905, file: !906, line: 1074, baseType: !1356, size: 64, offset: 14656)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !905, file: !906, line: 1084, baseType: !1659, size: 128, offset: 14720)
!1659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 128, elements: !1660)
!1660 = !{!1661}
!1661 = !DISubrange(count: 16)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !905, file: !906, line: 1086, baseType: !1663, size: 64, offset: 14848)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !906, line: 55, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !905, file: !906, line: 1089, baseType: !1666, size: 64, offset: 14912)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1667, line: 12, size: 64, elements: !1668)
!1667 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1666, file: !1667, line: 13, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1667, line: 8, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !905, file: !906, line: 1090, baseType: !1673, size: 128, offset: 14976)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1674, line: 13, size: 128, elements: !1675)
!1674 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1675 = !{!1676}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1673, file: !1674, line: 14, baseType: !118, size: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !905, file: !906, line: 1097, baseType: !1678, size: 64, offset: 15104)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !906, line: 50, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !905, file: !906, line: 1100, baseType: !1681, size: 64, offset: 15168)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !906, line: 1100, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !905, file: !906, line: 1103, baseType: !1684, size: 64, offset: 15232)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !906, line: 53, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !905, file: !906, line: 1107, baseType: !1687, size: 64, offset: 15296)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1689, line: 31, size: 576, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1690 = !{!1691, !1692, !1695, !1698, !1786, !1787, !1790, !1793, !1794}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1688, file: !1689, line: 32, baseType: !861, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1688, file: !1689, line: 33, baseType: !1693, size: 64, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1689, line: 9, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1688, file: !1689, line: 34, baseType: !1696, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1689, line: 10, flags: DIFlagFwdDecl)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1688, file: !1689, line: 35, baseType: !1699, size: 64, offset: 192)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1701, line: 8, size: 960, elements: !1702)
!1701 = !DIFile(filename: "fs/notify/../mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4a5eb1a988fb7c9469e00ad2dc4ac71")
!1702 = !{!1703, !1704, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1700, file: !1701, line: 9, baseType: !1534, size: 192)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1700, file: !1701, line: 10, baseType: !1705, size: 64, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mount", file: !1701, line: 39, size: 2560, elements: !1707)
!1707 = !{!1708, !1709, !1710, !1711, !1712, !1717, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1742, !1747, !1748, !1771, !1772, !1773, !1774, !1775, !1776}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_hash", scope: !1706, file: !1701, line: 40, baseType: !874, size: 128)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_parent", scope: !1706, file: !1701, line: 41, baseType: !1705, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mountpoint", scope: !1706, file: !1701, line: 42, baseType: !298, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1706, file: !1701, line: 43, baseType: !408, size: 256, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !1701, line: 44, baseType: !1713, size: 128, offset: 512)
!1713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1706, file: !1701, line: 44, size: 128, elements: !1714)
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_rcu", scope: !1713, file: !1701, line: 45, baseType: !718, size: 128, align: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_llist", scope: !1713, file: !1701, line: 46, baseType: !811, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pcp", scope: !1706, file: !1701, line: 49, baseType: !1718, size: 64, offset: 640)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_pcp", file: !1701, line: 27, size: 64, elements: !1720)
!1720 = !{!1721, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_count", scope: !1719, file: !1701, line: 28, baseType: !43, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_writers", scope: !1719, file: !1701, line: 29, baseType: !43, size: 32, offset: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mounts", scope: !1706, file: !1701, line: 54, baseType: !118, size: 128, offset: 704)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_child", scope: !1706, file: !1701, line: 55, baseType: !118, size: 128, offset: 832)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_instance", scope: !1706, file: !1701, line: 56, baseType: !118, size: 128, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_devname", scope: !1706, file: !1701, line: 57, baseType: !37, size: 64, offset: 1088)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_list", scope: !1706, file: !1701, line: 58, baseType: !118, size: 128, offset: 1152)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expire", scope: !1706, file: !1701, line: 59, baseType: !118, size: 128, offset: 1280)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_share", scope: !1706, file: !1701, line: 60, baseType: !118, size: 128, offset: 1408)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave_list", scope: !1706, file: !1701, line: 61, baseType: !118, size: 128, offset: 1536)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_slave", scope: !1706, file: !1701, line: 62, baseType: !118, size: 128, offset: 1664)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_master", scope: !1706, file: !1701, line: 63, baseType: !1705, size: 64, offset: 1792)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1706, file: !1701, line: 64, baseType: !1699, size: 64, offset: 1856)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp", scope: !1706, file: !1701, line: 65, baseType: !1735, size: 64, offset: 1920)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mountpoint", file: !1701, line: 32, size: 320, elements: !1737)
!1737 = !{!1738, !1739, !1740, !1741}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "m_hash", scope: !1736, file: !1701, line: 33, baseType: !874, size: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "m_dentry", scope: !1736, file: !1701, line: 34, baseType: !298, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !1736, file: !1701, line: 35, baseType: !870, size: 64, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "m_count", scope: !1736, file: !1701, line: 36, baseType: !43, size: 32, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !1701, line: 66, baseType: !1743, size: 128, offset: 1984)
!1743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1706, file: !1701, line: 66, size: 128, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_mp_list", scope: !1743, file: !1701, line: 67, baseType: !874, size: 128)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umount", scope: !1743, file: !1701, line: 68, baseType: !874, size: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_umounting", scope: !1706, file: !1701, line: 70, baseType: !118, size: 128, offset: 2112)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_marks", scope: !1706, file: !1701, line: 72, baseType: !1749, size: 64, offset: 2240)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !191, line: 472, size: 256, elements: !1751)
!1751 = !{!1752, !1753, !1754, !1755, !1763, !1770}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1750, file: !191, line: 473, baseType: !80, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1750, file: !191, line: 474, baseType: !47, size: 16, offset: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1750, file: !191, line: 477, baseType: !47, size: 16, offset: 48)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "fsid", scope: !1750, file: !191, line: 478, baseType: !1756, size: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_fsid_t", file: !58, line: 81, baseType: !1757)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !58, line: 79, size: 64, elements: !1758)
!1758 = !{!1759}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1757, file: !58, line: 80, baseType: !1760, size: 64)
!1760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !1761)
!1761 = !{!1762}
!1762 = !DISubrange(count: 2)
!1763 = !DIDerivedType(tag: DW_TAG_member, scope: !1750, file: !191, line: 479, baseType: !1764, size: 64, offset: 128)
!1764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1750, file: !191, line: 479, size: 64, elements: !1765)
!1765 = !{!1766, !1769}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !1764, file: !191, line: 481, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "fsnotify_connp_t", file: !191, line: 464, baseType: !1749)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_next", scope: !1764, file: !191, line: 483, baseType: !1749, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1750, file: !191, line: 485, baseType: !870, size: 64, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_fsnotify_mask", scope: !1706, file: !1701, line: 73, baseType: !227, size: 32, offset: 2304)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1706, file: !1701, line: 75, baseType: !43, size: 32, offset: 2336)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_group_id", scope: !1706, file: !1701, line: 76, baseType: !43, size: 32, offset: 2368)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_expiry_mark", scope: !1706, file: !1701, line: 77, baseType: !43, size: 32, offset: 2400)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_pins", scope: !1706, file: !1701, line: 78, baseType: !870, size: 64, offset: 2432)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_stuck_children", scope: !1706, file: !1701, line: 79, baseType: !870, size: 64, offset: 2496)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1700, file: !1701, line: 16, baseType: !118, size: 128, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "ns_lock", scope: !1700, file: !1701, line: 17, baseType: !80, size: 32, offset: 384)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1700, file: !1701, line: 18, baseType: !1501, size: 64, offset: 448)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1700, file: !1701, line: 19, baseType: !1622, size: 64, offset: 512)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1700, file: !1701, line: 20, baseType: !334, size: 64, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1700, file: !1701, line: 21, baseType: !75, size: 192, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1700, file: !1701, line: 22, baseType: !334, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mounts", scope: !1700, file: !1701, line: 23, baseType: !7, size: 32, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "pending_mounts", scope: !1700, file: !1701, line: 24, baseType: !7, size: 32, offset: 928)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1688, file: !1689, line: 36, baseType: !890, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1688, file: !1689, line: 37, baseType: !1788, size: 64, offset: 320)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1358, line: 34, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1688, file: !1689, line: 38, baseType: !1791, size: 64, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1689, line: 38, flags: DIFlagFwdDecl)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1688, file: !1689, line: 39, baseType: !1791, size: 64, offset: 448)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1688, file: !1689, line: 40, baseType: !1795, size: 64, offset: 512)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1689, line: 12, flags: DIFlagFwdDecl)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !905, file: !906, line: 1110, baseType: !1798, size: 64, offset: 15360)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1800, line: 93, size: 8768, elements: !1801)
!1800 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!1801 = !{!1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1850, !1859, !1860, !1862, !1863, !1864, !1867, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1905, !1906, !1913, !1923, !1926, !1927, !1930, !1931, !1932, !1933, !1934, !1935}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1799, file: !1800, line: 94, baseType: !861, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1799, file: !1800, line: 95, baseType: !70, size: 32, offset: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1799, file: !1800, line: 96, baseType: !43, size: 32, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !1799, file: !1800, line: 97, baseType: !43, size: 32, offset: 96)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1799, file: !1800, line: 98, baseType: !118, size: 128, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1799, file: !1800, line: 100, baseType: !75, size: 192, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1799, file: !1800, line: 103, baseType: !904, size: 64, offset: 448)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1799, file: !1800, line: 106, baseType: !1810, size: 192, offset: 512)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1811, line: 32, size: 192, elements: !1812)
!1811 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1810, file: !1811, line: 33, baseType: !118, size: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1810, file: !1811, line: 34, baseType: !1815, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1816, line: 25, baseType: !1817)
!1816 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1816, line: 23, size: 64, elements: !1818)
!1818 = !{!1819}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1817, file: !1816, line: 24, baseType: !1136, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1799, file: !1800, line: 109, baseType: !870, size: 64, offset: 704)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1799, file: !1800, line: 112, baseType: !43, size: 32, offset: 768)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1799, file: !1800, line: 114, baseType: !43, size: 32, offset: 800)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !1799, file: !1800, line: 115, baseType: !904, size: 64, offset: 832)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1799, file: !1800, line: 118, baseType: !43, size: 32, offset: 896)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1799, file: !1800, line: 119, baseType: !7, size: 32, offset: 928)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1799, file: !1800, line: 121, baseType: !1827, size: 64, offset: 960)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1800, line: 80, size: 448, elements: !1829)
!1829 = !{!1830, !1831, !1837}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1828, file: !1800, line: 81, baseType: !70, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1828, file: !1800, line: 82, baseType: !1832, size: 128, offset: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1800, line: 75, size: 128, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1832, file: !1800, line: 76, baseType: !904, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1832, file: !1800, line: 77, baseType: !1836, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1828, file: !1800, line: 83, baseType: !728, size: 256, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1799, file: !1800, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1799, file: !1800, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !1799, file: !1800, line: 138, baseType: !7, size: 32, offset: 1056)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1799, file: !1800, line: 139, baseType: !118, size: 128, offset: 1088)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1799, file: !1800, line: 142, baseType: !1016, size: 512, offset: 1216)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1799, file: !1800, line: 143, baseType: !1024, size: 64, offset: 1728)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1799, file: !1800, line: 150, baseType: !1845, size: 256, offset: 1792)
!1845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1846, size: 256, elements: !1761)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1800, line: 38, size: 128, elements: !1847)
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1846, file: !1800, line: 39, baseType: !334, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1846, file: !1800, line: 40, baseType: !334, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1799, file: !1800, line: 156, baseType: !1851, size: 192, offset: 2048)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1800, line: 66, size: 192, elements: !1852)
!1852 = !{!1853}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1851, file: !1800, line: 67, baseType: !1854, size: 192)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1800, line: 47, size: 192, elements: !1855)
!1855 = !{!1856, !1857, !1858}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1854, file: !1800, line: 48, baseType: !590, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1854, file: !1800, line: 49, baseType: !590, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1854, file: !1800, line: 50, baseType: !590, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1799, file: !1800, line: 160, baseType: !1311, size: 640, offset: 2240)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1799, file: !1800, line: 163, baseType: !1861, size: 256, offset: 2880)
!1861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !857, size: 256, elements: !879)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1799, file: !1800, line: 169, baseType: !857, size: 64, offset: 3136)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1799, file: !1800, line: 172, baseType: !43, size: 32, offset: 3200)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1799, file: !1800, line: 174, baseType: !1865, size: 64, offset: 3264)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1800, line: 174, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1799, file: !1800, line: 185, baseType: !1868, size: 64, offset: 3328)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !305, line: 860, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !305, line: 853, size: 64, elements: !1870)
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1869, file: !305, line: 858, baseType: !304, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1869, file: !305, line: 859, baseType: !80, size: 32, offset: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1799, file: !1800, line: 186, baseType: !334, size: 64, offset: 3392)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1799, file: !1800, line: 186, baseType: !334, size: 64, offset: 3456)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1799, file: !1800, line: 186, baseType: !334, size: 64, offset: 3520)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1799, file: !1800, line: 186, baseType: !334, size: 64, offset: 3584)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1799, file: !1800, line: 187, baseType: !334, size: 64, offset: 3648)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1799, file: !1800, line: 188, baseType: !334, size: 64, offset: 3712)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1799, file: !1800, line: 189, baseType: !1299, size: 192, offset: 3776)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1799, file: !1800, line: 190, baseType: !60, size: 64, offset: 3968)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1799, file: !1800, line: 190, baseType: !60, size: 64, offset: 4032)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1799, file: !1800, line: 190, baseType: !60, size: 64, offset: 4096)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1799, file: !1800, line: 190, baseType: !60, size: 64, offset: 4160)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1799, file: !1800, line: 191, baseType: !60, size: 64, offset: 4224)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1799, file: !1800, line: 191, baseType: !60, size: 64, offset: 4288)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1799, file: !1800, line: 191, baseType: !60, size: 64, offset: 4352)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1799, file: !1800, line: 191, baseType: !60, size: 64, offset: 4416)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1799, file: !1800, line: 192, baseType: !60, size: 64, offset: 4480)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1799, file: !1800, line: 192, baseType: !60, size: 64, offset: 4544)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1799, file: !1800, line: 192, baseType: !60, size: 64, offset: 4608)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1799, file: !1800, line: 192, baseType: !60, size: 64, offset: 4672)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1799, file: !1800, line: 193, baseType: !60, size: 64, offset: 4736)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1799, file: !1800, line: 193, baseType: !60, size: 64, offset: 4800)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1799, file: !1800, line: 194, baseType: !1895, size: 448, offset: 4864)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1896, line: 12, size: 448, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1895, file: !1896, line: 15, baseType: !334, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1895, file: !1896, line: 17, baseType: !334, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1895, file: !1896, line: 19, baseType: !334, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1895, file: !1896, line: 21, baseType: !334, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1895, file: !1896, line: 29, baseType: !334, size: 64, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1895, file: !1896, line: 35, baseType: !334, size: 64, offset: 320)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1895, file: !1896, line: 44, baseType: !334, size: 64, offset: 384)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1799, file: !1800, line: 202, baseType: !336, size: 64, offset: 5312)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1799, file: !1800, line: 213, baseType: !1907, size: 2048, offset: 5376)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1908, size: 2048, elements: !1660)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1909, line: 43, size: 128, elements: !1910)
!1909 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!1910 = !{!1911, !1912}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1908, file: !1909, line: 44, baseType: !59, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1908, file: !1909, line: 45, baseType: !59, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !1799, file: !1800, line: 216, baseType: !1914, size: 448, offset: 7424)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !1800, line: 30, size: 448, elements: !1915)
!1915 = !{!1916, !1917, !1918, !1919, !1920, !1921, !1922}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !1914, file: !1800, line: 31, baseType: !43, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !1914, file: !1800, line: 32, baseType: !536, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !1914, file: !1800, line: 33, baseType: !60, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !1914, file: !1800, line: 34, baseType: !334, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !1914, file: !1800, line: 34, baseType: !334, size: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !1914, file: !1800, line: 35, baseType: !60, size: 64, offset: 320)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !1914, file: !1800, line: 35, baseType: !60, size: 64, offset: 384)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1799, file: !1800, line: 219, baseType: !1924, size: 64, offset: 7872)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !1800, line: 219, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !1799, file: !1800, line: 222, baseType: !7, size: 32, offset: 7936)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !1799, file: !1800, line: 223, baseType: !1928, size: 64, offset: 8000)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !1800, line: 223, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1799, file: !1800, line: 230, baseType: !714, size: 8, offset: 8064)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1799, file: !1800, line: 231, baseType: !1266, size: 16, offset: 8080)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1799, file: !1800, line: 232, baseType: !1266, size: 16, offset: 8096)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1799, file: !1800, line: 234, baseType: !776, size: 64, offset: 8128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1799, file: !1800, line: 237, baseType: !823, size: 256, offset: 8192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !1799, file: !1800, line: 243, baseType: !584, size: 320, offset: 8448)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !905, file: !906, line: 1111, baseType: !1937, size: 64, offset: 15424)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1800, line: 20, size: 16640, elements: !1939)
!1939 = !{!1940, !1941, !1942, !1943}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1938, file: !1800, line: 21, baseType: !80, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1938, file: !1800, line: 22, baseType: !861, size: 32, offset: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1938, file: !1800, line: 23, baseType: !75, size: 192, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1938, file: !1800, line: 24, baseType: !1944, size: 16384, offset: 256)
!1944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1945, size: 16384, elements: !506)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1811, line: 51, size: 256, elements: !1946)
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1945, file: !1811, line: 52, baseType: !1948, size: 256)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1811, line: 37, size: 256, elements: !1949)
!1949 = !{!1950, !1957, !1958, !1964}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1948, file: !1811, line: 39, baseType: !1951, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1952, line: 83, baseType: !1953)
!1952 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1952, line: 82, baseType: !1955)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !43}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1948, file: !1811, line: 40, baseType: !60, size: 64, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1948, file: !1811, line: 46, baseType: !1959, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1952, line: 86, baseType: !1960)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1952, line: 85, baseType: !1962)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1948, file: !1811, line: 48, baseType: !1815, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !905, file: !906, line: 1112, baseType: !1815, size: 64, offset: 15488)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !905, file: !906, line: 1113, baseType: !1815, size: 64, offset: 15552)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !905, file: !906, line: 1115, baseType: !1815, size: 64, offset: 15616)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !905, file: !906, line: 1116, baseType: !1810, size: 192, offset: 15680)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !905, file: !906, line: 1117, baseType: !60, size: 64, offset: 15872)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !905, file: !906, line: 1118, baseType: !56, size: 64, offset: 15936)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !905, file: !906, line: 1119, baseType: !7, size: 32, offset: 16000)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !905, file: !906, line: 1121, baseType: !721, size: 64, offset: 16064)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !905, file: !906, line: 1125, baseType: !1974, size: 64, offset: 16128)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !906, line: 43, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !905, file: !906, line: 1127, baseType: !269, size: 32, offset: 16192)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !905, file: !906, line: 1128, baseType: !7, size: 32, offset: 16224)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !905, file: !906, line: 1130, baseType: !1979, size: 128, offset: 16256)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1980, line: 37, size: 128, elements: !1981)
!1980 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1981 = !{!1982, !1983, !1984}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1979, file: !1980, line: 38, baseType: !43, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1979, file: !1980, line: 39, baseType: !70, size: 32, offset: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1979, file: !1980, line: 40, baseType: !1985, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1980, line: 24, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !905, file: !906, line: 1131, baseType: !1988, size: 256, offset: 16384)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1989, line: 12, size: 256, elements: !1990)
!1989 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1990 = !{!1991, !1992, !1993, !1994}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1988, file: !1989, line: 13, baseType: !402, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1988, file: !1989, line: 14, baseType: !60, size: 64, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1988, file: !1989, line: 15, baseType: !60, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1988, file: !1989, line: 16, baseType: !714, size: 8, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !905, file: !906, line: 1134, baseType: !334, size: 64, offset: 16640)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !905, file: !906, line: 1135, baseType: !334, size: 64, offset: 16704)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !905, file: !906, line: 1138, baseType: !80, size: 32, offset: 16768)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !905, file: !906, line: 1141, baseType: !603, size: 32, offset: 16800)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !905, file: !906, line: 1143, baseType: !2000, size: 64, offset: 16832)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !906, line: 735, size: 64, elements: !2001)
!2001 = !{!2002}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2000, file: !906, line: 736, baseType: !2003, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !905, file: !906, line: 1147, baseType: !608, size: 128, offset: 16896)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !905, file: !906, line: 1149, baseType: !904, size: 64, offset: 17024)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !905, file: !906, line: 1151, baseType: !2007, size: 64, offset: 17088)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !906, line: 1151, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !905, file: !906, line: 1188, baseType: !41, size: 64, offset: 17152)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !905, file: !906, line: 1191, baseType: !2011, size: 64, offset: 17216)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !906, line: 44, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !905, file: !906, line: 1194, baseType: !2014, size: 64, offset: 17280)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !906, line: 45, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !905, file: !906, line: 1197, baseType: !2017, size: 64, offset: 17344)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !906, line: 61, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !905, file: !906, line: 1199, baseType: !2020, size: 64, offset: 17408)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2022, line: 99, size: 128, elements: !2023)
!2022 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2023 = !{!2024, !2025, !2026}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2021, file: !2022, line: 100, baseType: !588, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2021, file: !2022, line: 101, baseType: !70, size: 32, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2021, file: !2022, line: 103, baseType: !47, size: 16, offset: 96)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !905, file: !906, line: 1202, baseType: !2028, size: 64, offset: 17472)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !906, line: 48, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !905, file: !906, line: 1205, baseType: !60, size: 64, offset: 17536)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !905, file: !906, line: 1206, baseType: !2032, size: 64, offset: 17600)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1811, line: 14, baseType: !2034)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1811, line: 12, size: 384, elements: !2035)
!2035 = !{!2036}
!2036 = !DIDerivedType(tag: DW_TAG_member, scope: !2034, file: !1811, line: 13, baseType: !2037, size: 384)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2034, file: !1811, line: 13, size: 384, elements: !2038)
!2038 = !{!2039, !2040, !2041, !2042}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2037, file: !1811, line: 13, baseType: !43, size: 32)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2037, file: !1811, line: 13, baseType: !43, size: 32, offset: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2037, file: !1811, line: 13, baseType: !43, size: 32, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2037, file: !1811, line: 13, baseType: !2043, size: 256, offset: 128)
!2043 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2044, line: 37, size: 256, elements: !2045)
!2044 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2045 = !{!2046, !2051, !2064, !2070, !2079, !2106, !2111}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2043, file: !2044, line: 42, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2044, line: 39, size: 64, elements: !2048)
!2048 = !{!2049, !2050}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2047, file: !2044, line: 40, baseType: !1274, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2047, file: !2044, line: 41, baseType: !275, size: 32, offset: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2043, file: !2044, line: 50, baseType: !2052, size: 192)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2044, line: 45, size: 192, elements: !2053)
!2053 = !{!2054, !2056, !2057, !2063}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2052, file: !2044, line: 46, baseType: !2055, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !58, line: 95, baseType: !43)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2052, file: !2044, line: 47, baseType: !43, size: 32, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2052, file: !2044, line: 48, baseType: !2058, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2044, line: 11, baseType: !2059)
!2059 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2044, line: 8, size: 64, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2059, file: !2044, line: 9, baseType: !43, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2059, file: !2044, line: 10, baseType: !41, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2052, file: !2044, line: 49, baseType: !43, size: 32, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2043, file: !2044, line: 57, baseType: !2065, size: 128)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2044, line: 53, size: 128, elements: !2066)
!2066 = !{!2067, !2068, !2069}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2065, file: !2044, line: 54, baseType: !1274, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2065, file: !2044, line: 55, baseType: !275, size: 32, offset: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2065, file: !2044, line: 56, baseType: !2058, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2043, file: !2044, line: 66, baseType: !2071, size: 256)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2044, line: 60, size: 256, elements: !2072)
!2072 = !{!2073, !2074, !2075, !2076, !2078}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2071, file: !2044, line: 61, baseType: !1274, size: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2071, file: !2044, line: 62, baseType: !275, size: 32, offset: 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2071, file: !2044, line: 63, baseType: !43, size: 32, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2071, file: !2044, line: 64, baseType: !2077, size: 64, offset: 128)
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !58, line: 94, baseType: !535)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2071, file: !2044, line: 65, baseType: !2077, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2043, file: !2044, line: 105, baseType: !2080, size: 256)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2044, line: 69, size: 256, elements: !2081)
!2081 = !{!2082, !2083}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2080, file: !2044, line: 70, baseType: !41, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, scope: !2080, file: !2044, line: 79, baseType: !2084, size: 192, offset: 64)
!2084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2080, file: !2044, line: 79, size: 192, elements: !2085)
!2085 = !{!2086, !2087, !2088, !2095, !2100}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2084, file: !2044, line: 81, baseType: !43, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2084, file: !2044, line: 86, baseType: !1266, size: 16)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2084, file: !2044, line: 92, baseType: !2089, size: 192)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2084, file: !2044, line: 88, size: 192, elements: !2090)
!2090 = !{!2091, !2093, !2094}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2089, file: !2044, line: 89, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !1059)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2089, file: !2044, line: 90, baseType: !41, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2089, file: !2044, line: 91, baseType: !41, size: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2084, file: !2044, line: 97, baseType: !2096, size: 96)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2084, file: !2044, line: 94, size: 96, elements: !2097)
!2097 = !{!2098, !2099}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2096, file: !2044, line: 95, baseType: !2092, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2096, file: !2044, line: 96, baseType: !227, size: 32, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2084, file: !2044, line: 103, baseType: !2101, size: 128)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2084, file: !2044, line: 99, size: 128, elements: !2102)
!2102 = !{!2103, !2104, !2105}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2101, file: !2044, line: 100, baseType: !60, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2101, file: !2044, line: 101, baseType: !227, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2101, file: !2044, line: 102, baseType: !227, size: 32, offset: 96)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2043, file: !2044, line: 111, baseType: !2107, size: 128)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2044, line: 108, size: 128, elements: !2108)
!2108 = !{!2109, !2110}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2107, file: !2044, line: 109, baseType: !536, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2107, file: !2044, line: 110, baseType: !43, size: 32, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2043, file: !2044, line: 118, baseType: !2112, size: 128)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2043, file: !2044, line: 114, size: 128, elements: !2113)
!2113 = !{!2114, !2115, !2116}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2112, file: !2044, line: 115, baseType: !41, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2112, file: !2044, line: 116, baseType: !43, size: 32, offset: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2112, file: !2044, line: 117, baseType: !7, size: 32, offset: 96)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !905, file: !906, line: 1208, baseType: !1895, size: 448, offset: 17664)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !905, file: !906, line: 1215, baseType: !334, size: 64, offset: 18112)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !905, file: !906, line: 1217, baseType: !334, size: 64, offset: 18176)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !905, file: !906, line: 1219, baseType: !334, size: 64, offset: 18240)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !905, file: !906, line: 1223, baseType: !2122, size: 64, offset: 18304)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2123, line: 99, baseType: !2124)
!2123 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2123, line: 99, size: 64, elements: !2125)
!2125 = !{!2126}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2124, file: !2123, line: 99, baseType: !1136, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !905, file: !906, line: 1225, baseType: !304, size: 32, offset: 18368)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !905, file: !906, line: 1226, baseType: !43, size: 32, offset: 18400)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !905, file: !906, line: 1227, baseType: !43, size: 32, offset: 18432)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !905, file: !906, line: 1231, baseType: !2131, size: 64, offset: 18496)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !906, line: 1231, flags: DIFlagFwdDecl)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !905, file: !906, line: 1233, baseType: !118, size: 128, offset: 18560)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !905, file: !906, line: 1240, baseType: !2135, size: 64, offset: 18688)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !906, line: 62, flags: DIFlagFwdDecl)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !905, file: !906, line: 1242, baseType: !2138, size: 64, offset: 18752)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !906, line: 1242, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !905, file: !906, line: 1244, baseType: !118, size: 128, offset: 18816)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !905, file: !906, line: 1245, baseType: !2142, size: 64, offset: 18944)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !906, line: 51, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !905, file: !906, line: 1246, baseType: !823, size: 256, offset: 19008)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !905, file: !906, line: 1247, baseType: !7, size: 32, offset: 19264)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !905, file: !906, line: 1250, baseType: !2147, size: 64, offset: 19328)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !906, line: 57, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !905, file: !906, line: 1251, baseType: !823, size: 256, offset: 19392)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !905, file: !906, line: 1252, baseType: !118, size: 128, offset: 19648)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !905, file: !906, line: 1259, baseType: !2152, size: 64, offset: 19776)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !144, line: 717, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !905, file: !906, line: 1260, baseType: !1266, size: 16, offset: 19840)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !905, file: !906, line: 1261, baseType: !1266, size: 16, offset: 19856)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !905, file: !906, line: 1314, baseType: !2157, size: 64, offset: 19904)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2159, line: 62, size: 256, align: 256, elements: !2160)
!2159 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2160 = !{!2161, !2162, !2163, !2164, !2165, !2166, !2167}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2158, file: !2159, line: 75, baseType: !227, size: 32)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2158, file: !2159, line: 90, baseType: !227, size: 32, offset: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2158, file: !2159, line: 112, baseType: !335, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2158, file: !2159, line: 132, baseType: !227, size: 32, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2158, file: !2159, line: 140, baseType: !227, size: 32, offset: 160)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2158, file: !2159, line: 149, baseType: !227, size: 32, offset: 192)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2158, file: !2159, line: 154, baseType: !2168, offset: 224)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, elements: !1648)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !905, file: !906, line: 1315, baseType: !226, size: 32, offset: 19968)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !905, file: !906, line: 1316, baseType: !226, size: 32, offset: 20000)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !905, file: !906, line: 1321, baseType: !60, size: 64, offset: 20032)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !905, file: !906, line: 1325, baseType: !43, size: 32, offset: 20096)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !905, file: !906, line: 1326, baseType: !43, size: 32, offset: 20128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !905, file: !906, line: 1327, baseType: !43, size: 32, offset: 20160)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !905, file: !906, line: 1328, baseType: !43, size: 32, offset: 20192)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !905, file: !906, line: 1329, baseType: !718, size: 128, align: 64, offset: 20224)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !905, file: !906, line: 1332, baseType: !2178, size: 128, offset: 20352)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2179, line: 51, size: 128, elements: !2180)
!2179 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2180 = !{!2181, !2186, !2187}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2178, file: !2179, line: 60, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2183, line: 7, size: 64, elements: !2184)
!2183 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2184 = !{!2185}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2182, file: !2183, line: 12, baseType: !1133, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2178, file: !2179, line: 63, baseType: !714, size: 8, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2178, file: !2179, line: 70, baseType: !714, size: 8, offset: 72)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !905, file: !906, line: 1335, baseType: !2189, size: 64, offset: 20480)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !906, line: 59, flags: DIFlagFwdDecl)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !905, file: !906, line: 1337, baseType: !2192, size: 128, offset: 20544)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2179, line: 39, size: 128, elements: !2193)
!2193 = !{!2194, !2195, !2196}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2192, file: !2179, line: 40, baseType: !633, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2192, file: !2179, line: 42, baseType: !227, size: 32, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2192, file: !2179, line: 43, baseType: !227, size: 32, offset: 96)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !905, file: !906, line: 1340, baseType: !2198, size: 64, offset: 20672)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !906, line: 69, flags: DIFlagFwdDecl)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !905, file: !906, line: 1351, baseType: !43, size: 32, offset: 20736)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !905, file: !906, line: 1352, baseType: !43, size: 32, offset: 20768)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !905, file: !906, line: 1354, baseType: !60, size: 64, offset: 20800)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !905, file: !906, line: 1364, baseType: !334, size: 64, offset: 20864)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !905, file: !906, line: 1365, baseType: !334, size: 64, offset: 20928)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !905, file: !906, line: 1412, baseType: !60, size: 64, offset: 20992)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !905, file: !906, line: 1453, baseType: !2207, size: 64, offset: 21056)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !906, line: 1453, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !905, file: !906, line: 1457, baseType: !2210, size: 64, offset: 21120)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !129, line: 61, size: 576, elements: !2212)
!2212 = !{!2213, !2214, !2233, !2236, !2237, !2270, !2280}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2211, file: !129, line: 62, baseType: !128, size: 32)
!2214 = !DIDerivedType(tag: DW_TAG_member, scope: !2211, file: !129, line: 64, baseType: !2215, size: 192, offset: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2211, file: !129, line: 64, size: 192, elements: !2216)
!2216 = !{!2217, !2228}
!2217 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !129, line: 65, baseType: !2218, size: 192)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2215, file: !129, line: 65, size: 192, elements: !2219)
!2219 = !{!2220, !2227}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2218, file: !129, line: 66, baseType: !2221, size: 128)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2222, line: 50, size: 128, elements: !2223)
!2222 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2223 = !{!2224, !2225, !2226}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2221, file: !2222, line: 52, baseType: !60, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2221, file: !2222, line: 54, baseType: !7, size: 32, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2221, file: !2222, line: 55, baseType: !7, size: 32, offset: 96)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2218, file: !129, line: 67, baseType: !60, size: 64, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !129, line: 70, baseType: !2229, size: 192)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2215, file: !129, line: 70, size: 192, elements: !2230)
!2230 = !{!2231, !2232}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2229, file: !129, line: 71, baseType: !718, size: 128, align: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2229, file: !129, line: 72, baseType: !60, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2211, file: !129, line: 76, baseType: !2234, size: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !129, line: 76, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2211, file: !129, line: 77, baseType: !60, size: 64, offset: 320)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2211, file: !129, line: 79, baseType: !2238, size: 64, offset: 384)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2222, line: 25, size: 256, elements: !2240)
!2240 = !{!2241, !2247, !2251}
!2241 = !DIDerivedType(tag: DW_TAG_member, scope: !2239, file: !2222, line: 26, baseType: !2242, size: 128)
!2242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2239, file: !2222, line: 26, size: 128, elements: !2243)
!2243 = !{!2244, !2246}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2242, file: !2222, line: 27, baseType: !2245, size: 128)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, elements: !1660)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2242, file: !2222, line: 28, baseType: !2245, size: 128)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2239, file: !2222, line: 31, baseType: !2248, size: 64, offset: 128)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2250)
!2250 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2222, line: 23, flags: DIFlagFwdDecl)
!2251 = !DIDerivedType(tag: DW_TAG_member, scope: !2239, file: !2222, line: 33, baseType: !2252, size: 64, offset: 192)
!2252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2239, file: !2222, line: 33, size: 64, elements: !2253)
!2253 = !{!2254, !2260, !2265}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2252, file: !2222, line: 38, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2252, file: !2222, line: 34, size: 64, elements: !2256)
!2256 = !{!2257, !2258, !2259}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2255, file: !2222, line: 35, baseType: !1252, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2255, file: !2222, line: 36, baseType: !104, size: 8, offset: 32)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2255, file: !2222, line: 37, baseType: !104, size: 8, offset: 40)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2252, file: !2222, line: 42, baseType: !2261, size: 16)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2252, file: !2222, line: 39, size: 16, elements: !2262)
!2262 = !{!2263, !2264}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2261, file: !2222, line: 40, baseType: !104, size: 8)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2261, file: !2222, line: 41, baseType: !104, size: 8, offset: 8)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2252, file: !2222, line: 46, baseType: !2266, size: 16)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2252, file: !2222, line: 43, size: 16, elements: !2267)
!2267 = !{!2268, !2269}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2266, file: !2222, line: 44, baseType: !104, size: 8)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2266, file: !2222, line: 45, baseType: !104, size: 8, offset: 8)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2211, file: !129, line: 81, baseType: !2271, size: 64, offset: 448)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !129, line: 85, size: 384, elements: !2273)
!2273 = !{!2274, !2275, !2276, !2277, !2278, !2279}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2272, file: !129, line: 86, baseType: !2234, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2272, file: !129, line: 87, baseType: !60, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2272, file: !129, line: 88, baseType: !60, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2272, file: !129, line: 89, baseType: !60, size: 64, offset: 192)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2272, file: !129, line: 90, baseType: !714, size: 8, offset: 256)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2272, file: !129, line: 92, baseType: !2271, size: 64, offset: 320)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2211, file: !129, line: 82, baseType: !7, size: 32, offset: 512)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !905, file: !906, line: 1463, baseType: !2282, offset: 21184)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !906, line: 739, elements: !797)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !905, file: !906, line: 1470, baseType: !718, size: 128, align: 64, offset: 21184)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !905, file: !906, line: 1471, baseType: !861, size: 32, offset: 21312)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !905, file: !906, line: 1472, baseType: !43, size: 32, offset: 21344)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !905, file: !906, line: 1474, baseType: !904, size: 64, offset: 21376)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !905, file: !906, line: 1475, baseType: !2288, size: 320, offset: 21440)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2289, line: 11, size: 320, elements: !2290)
!2289 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2290 = !{!2291, !2292, !2293, !2298}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2288, file: !2289, line: 16, baseType: !874, size: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2288, file: !2289, line: 17, baseType: !60, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2288, file: !2289, line: 18, baseType: !2294, size: 64, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{null, !2297}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2288, file: !2289, line: 19, baseType: !226, size: 32, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !905, file: !906, line: 1478, baseType: !2300, size: 64, offset: 21760)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !906, line: 1478, flags: DIFlagFwdDecl)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !905, file: !906, line: 1482, baseType: !861, size: 32, offset: 21824)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !905, file: !906, line: 1489, baseType: !41, size: 64, offset: 21888)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !905, file: !906, line: 1504, baseType: !41, size: 64, offset: 21952)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !905, file: !906, line: 1505, baseType: !335, size: 64, offset: 22016)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !905, file: !906, line: 1506, baseType: !334, size: 64, offset: 22080)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !905, file: !906, line: 1507, baseType: !335, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !905, file: !906, line: 1508, baseType: !335, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !905, file: !906, line: 1509, baseType: !335, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !905, file: !906, line: 1510, baseType: !718, size: 128, align: 64, offset: 22208)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !905, file: !906, line: 1511, baseType: !43, size: 32, offset: 22336)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !905, file: !906, line: 1515, baseType: !2313, size: 64, offset: 22400)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !812, line: 56, size: 64, elements: !2314)
!2314 = !{!2315}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2313, file: !812, line: 57, baseType: !815, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !905, file: !906, line: 1518, baseType: !2313, size: 64, offset: 22464)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !905, file: !906, line: 1528, baseType: !718, size: 128, align: 64, offset: 22528)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !905, file: !906, line: 1552, baseType: !2319, size: 35328, offset: 23040)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2320, line: 430, size: 35328, elements: !2321)
!2320 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2321 = !{!2322, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2351, !2352, !2353, !2354, !2355, !2356, !2359, !2360, !2361, !2362}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2319, file: !2320, line: 432, baseType: !2323, size: 192)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2324, size: 192, elements: !502)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2325, line: 16, size: 64, elements: !2326)
!2325 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2326 = !{!2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2324, file: !2325, line: 17, baseType: !114, size: 16)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2324, file: !2325, line: 18, baseType: !114, size: 16, offset: 16)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2324, file: !2325, line: 19, baseType: !114, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2324, file: !2325, line: 19, baseType: !114, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2324, file: !2325, line: 19, baseType: !114, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2324, file: !2325, line: 19, baseType: !114, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2324, file: !2325, line: 19, baseType: !114, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2324, file: !2325, line: 20, baseType: !114, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2324, file: !2325, line: 20, baseType: !114, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2324, file: !2325, line: 20, baseType: !114, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2324, file: !2325, line: 20, baseType: !114, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2324, file: !2325, line: 20, baseType: !114, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2324, file: !2325, line: 20, baseType: !114, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2319, file: !2320, line: 436, baseType: !60, size: 64, offset: 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2319, file: !2320, line: 440, baseType: !47, size: 16, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2319, file: !2320, line: 441, baseType: !47, size: 16, offset: 272)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2319, file: !2320, line: 442, baseType: !47, size: 16, offset: 288)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2319, file: !2320, line: 443, baseType: !47, size: 16, offset: 304)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2319, file: !2320, line: 447, baseType: !60, size: 64, offset: 320)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2319, file: !2320, line: 448, baseType: !60, size: 64, offset: 384)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2319, file: !2320, line: 459, baseType: !2348, size: 256, offset: 448)
!2348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2349, size: 256, elements: !879)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2320, line: 428, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2319, file: !2320, line: 461, baseType: !60, size: 64, offset: 704)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2319, file: !2320, line: 463, baseType: !60, size: 64, offset: 768)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2319, file: !2320, line: 465, baseType: !60, size: 64, offset: 832)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2319, file: !2320, line: 466, baseType: !60, size: 64, offset: 896)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2319, file: !2320, line: 467, baseType: !60, size: 64, offset: 960)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2319, file: !2320, line: 473, baseType: !2357, size: 64, offset: 1024)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2320, line: 10, flags: DIFlagFwdDecl)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2319, file: !2320, line: 480, baseType: !60, size: 64, offset: 1088)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2319, file: !2320, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2319, file: !2320, line: 491, baseType: !226, size: 32, offset: 1184)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2319, file: !2320, line: 501, baseType: !2363, size: 33792, offset: 1536)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2364, line: 448, size: 33792, elements: !2365)
!2364 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2365 = !{!2366, !2367, !2368, !2530, !2531, !2537, !2538}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2363, file: !2364, line: 461, baseType: !7, size: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2363, file: !2364, line: 468, baseType: !60, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2363, file: !2364, line: 476, baseType: !2369, size: 64, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2364, line: 356, size: 33280, align: 512, elements: !2371)
!2371 = !{!2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2370, file: !2364, line: 358, baseType: !7, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2370, file: !2364, line: 361, baseType: !7, size: 32, offset: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2370, file: !2364, line: 364, baseType: !334, size: 64, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2370, file: !2364, line: 367, baseType: !334, size: 64, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2370, file: !2364, line: 370, baseType: !334, size: 64, offset: 192)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2370, file: !2364, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2370, file: !2364, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2370, file: !2364, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2370, file: !2364, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2370, file: !2364, line: 397, baseType: !2382, size: 32768, offset: 512)
!2382 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2364, line: 348, size: 32768, elements: !2383)
!2383 = !{!2384, !2399, !2436, !2513, !2526}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2382, file: !2364, line: 349, baseType: !2385, size: 896)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2364, line: 12, size: 896, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2398}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2385, file: !2364, line: 13, baseType: !226, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2385, file: !2364, line: 14, baseType: !226, size: 32, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2385, file: !2364, line: 15, baseType: !226, size: 32, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2385, file: !2364, line: 16, baseType: !226, size: 32, offset: 96)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2385, file: !2364, line: 17, baseType: !226, size: 32, offset: 128)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2385, file: !2364, line: 18, baseType: !226, size: 32, offset: 160)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2385, file: !2364, line: 19, baseType: !226, size: 32, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2385, file: !2364, line: 22, baseType: !2395, size: 640, offset: 224)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 640, elements: !2396)
!2396 = !{!2397}
!2397 = !DISubrange(count: 20)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2385, file: !2364, line: 25, baseType: !226, size: 32, offset: 864)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2382, file: !2364, line: 350, baseType: !2400, size: 4096, align: 128)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2364, line: 34, size: 4096, align: 128, elements: !2401)
!2401 = !{!2402, !2403, !2404, !2405, !2406, !2421, !2422, !2423, !2425, !2427, !2431}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2400, file: !2364, line: 35, baseType: !114, size: 16)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2400, file: !2364, line: 36, baseType: !114, size: 16, offset: 16)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2400, file: !2364, line: 37, baseType: !114, size: 16, offset: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2400, file: !2364, line: 38, baseType: !114, size: 16, offset: 48)
!2406 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !2364, line: 39, baseType: !2407, size: 128, offset: 64)
!2407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2400, file: !2364, line: 39, size: 128, elements: !2408)
!2408 = !{!2409, !2414}
!2409 = !DIDerivedType(tag: DW_TAG_member, scope: !2407, file: !2364, line: 40, baseType: !2410, size: 128)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2407, file: !2364, line: 40, size: 128, elements: !2411)
!2411 = !{!2412, !2413}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2410, file: !2364, line: 41, baseType: !334, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2410, file: !2364, line: 42, baseType: !334, size: 64, offset: 64)
!2414 = !DIDerivedType(tag: DW_TAG_member, scope: !2407, file: !2364, line: 44, baseType: !2415, size: 128)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2407, file: !2364, line: 44, size: 128, elements: !2416)
!2416 = !{!2417, !2418, !2419, !2420}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2415, file: !2364, line: 45, baseType: !226, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2415, file: !2364, line: 46, baseType: !226, size: 32, offset: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2415, file: !2364, line: 47, baseType: !226, size: 32, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2415, file: !2364, line: 48, baseType: !226, size: 32, offset: 96)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2400, file: !2364, line: 51, baseType: !226, size: 32, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2400, file: !2364, line: 52, baseType: !226, size: 32, offset: 224)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2400, file: !2364, line: 55, baseType: !2424, size: 1024, offset: 256)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 1024, elements: !343)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2400, file: !2364, line: 58, baseType: !2426, size: 2048, offset: 1280)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 2048, elements: !506)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2400, file: !2364, line: 60, baseType: !2428, size: 384, offset: 3328)
!2428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 384, elements: !2429)
!2429 = !{!2430}
!2430 = !DISubrange(count: 12)
!2431 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !2364, line: 62, baseType: !2432, size: 384, offset: 3712)
!2432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2400, file: !2364, line: 62, size: 384, elements: !2433)
!2433 = !{!2434, !2435}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2432, file: !2364, line: 63, baseType: !2428, size: 384)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2432, file: !2364, line: 64, baseType: !2428, size: 384)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2382, file: !2364, line: 351, baseType: !2437, size: 1088)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2364, line: 79, size: 1088, elements: !2438)
!2438 = !{!2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2512}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2437, file: !2364, line: 80, baseType: !226, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2437, file: !2364, line: 81, baseType: !226, size: 32, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2437, file: !2364, line: 82, baseType: !226, size: 32, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2437, file: !2364, line: 83, baseType: !226, size: 32, offset: 96)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2437, file: !2364, line: 84, baseType: !226, size: 32, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2437, file: !2364, line: 85, baseType: !226, size: 32, offset: 160)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2437, file: !2364, line: 86, baseType: !226, size: 32, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2437, file: !2364, line: 88, baseType: !2395, size: 640, offset: 224)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2437, file: !2364, line: 89, baseType: !104, size: 8, offset: 864)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2437, file: !2364, line: 90, baseType: !104, size: 8, offset: 872)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2437, file: !2364, line: 91, baseType: !104, size: 8, offset: 880)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2437, file: !2364, line: 92, baseType: !104, size: 8, offset: 888)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2437, file: !2364, line: 93, baseType: !104, size: 8, offset: 896)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2437, file: !2364, line: 94, baseType: !104, size: 8, offset: 904)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2437, file: !2364, line: 95, baseType: !2454, size: 64, offset: 960)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2456, line: 11, size: 128, elements: !2457)
!2456 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2457 = !{!2458, !2459}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2455, file: !2456, line: 12, baseType: !536, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2455, file: !2456, line: 13, baseType: !2460, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2462, line: 103, size: 1344, elements: !2463)
!2462 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2463 = !{!2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2492, !2493, !2494}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2461, file: !2462, line: 109, baseType: !60, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2461, file: !2462, line: 110, baseType: !60, size: 64, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2461, file: !2462, line: 111, baseType: !60, size: 64, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2461, file: !2462, line: 112, baseType: !60, size: 64, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2461, file: !2462, line: 113, baseType: !60, size: 64, offset: 256)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2461, file: !2462, line: 114, baseType: !60, size: 64, offset: 320)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2461, file: !2462, line: 117, baseType: !60, size: 64, offset: 384)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2461, file: !2462, line: 118, baseType: !60, size: 64, offset: 448)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2461, file: !2462, line: 119, baseType: !60, size: 64, offset: 512)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2461, file: !2462, line: 120, baseType: !60, size: 64, offset: 576)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2461, file: !2462, line: 121, baseType: !60, size: 64, offset: 640)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2461, file: !2462, line: 122, baseType: !60, size: 64, offset: 704)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2461, file: !2462, line: 123, baseType: !60, size: 64, offset: 768)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2461, file: !2462, line: 124, baseType: !60, size: 64, offset: 832)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2461, file: !2462, line: 125, baseType: !60, size: 64, offset: 896)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2461, file: !2462, line: 139, baseType: !60, size: 64, offset: 960)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2461, file: !2462, line: 142, baseType: !60, size: 64, offset: 1024)
!2481 = !DIDerivedType(tag: DW_TAG_member, scope: !2461, file: !2462, line: 144, baseType: !2482, size: 64, offset: 1088)
!2482 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2461, file: !2462, line: 144, size: 64, elements: !2483)
!2483 = !{!2484, !2485, !2486}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2482, file: !2462, line: 146, baseType: !114, size: 16)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2482, file: !2462, line: 148, baseType: !334, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2482, file: !2462, line: 150, baseType: !2487, size: 64)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2462, line: 59, size: 64, elements: !2488)
!2488 = !{!2489, !2490, !2491}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2487, file: !2462, line: 61, baseType: !334, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2487, file: !2462, line: 63, baseType: !334, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2487, file: !2462, line: 65, baseType: !334, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2461, file: !2462, line: 153, baseType: !60, size: 64, offset: 1152)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2461, file: !2462, line: 154, baseType: !60, size: 64, offset: 1216)
!2494 = !DIDerivedType(tag: DW_TAG_member, scope: !2461, file: !2462, line: 156, baseType: !2495, size: 64, offset: 1280)
!2495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2461, file: !2462, line: 156, size: 64, elements: !2496)
!2496 = !{!2497, !2498, !2499}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2495, file: !2462, line: 158, baseType: !114, size: 16)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2495, file: !2462, line: 160, baseType: !334, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2495, file: !2462, line: 162, baseType: !2500, size: 64)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2462, line: 69, size: 64, elements: !2501)
!2501 = !{!2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2500, file: !2462, line: 71, baseType: !334, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2500, file: !2462, line: 73, baseType: !334, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2500, file: !2462, line: 75, baseType: !334, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2500, file: !2462, line: 77, baseType: !334, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2500, file: !2462, line: 80, baseType: !334, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2500, file: !2462, line: 83, baseType: !334, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2500, file: !2462, line: 86, baseType: !334, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2500, file: !2462, line: 88, baseType: !334, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2500, file: !2462, line: 93, baseType: !334, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2500, file: !2462, line: 100, baseType: !334, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2437, file: !2364, line: 96, baseType: !226, size: 32, offset: 1024)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2382, file: !2364, line: 352, baseType: !2514, size: 4608, align: 512)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2364, line: 333, size: 4608, align: 512, elements: !2515)
!2515 = !{!2516, !2517, !2524}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2514, file: !2364, line: 334, baseType: !2400, size: 4096, align: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2514, file: !2364, line: 335, baseType: !2518, size: 512, offset: 4096)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2364, line: 312, size: 512, elements: !2519)
!2519 = !{!2520, !2521, !2522}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2518, file: !2364, line: 313, baseType: !334, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2518, file: !2364, line: 314, baseType: !334, size: 64, offset: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2518, file: !2364, line: 315, baseType: !2523, size: 384, offset: 128)
!2523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 384, elements: !1407)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2514, file: !2364, line: 336, baseType: !2525, offset: 4608)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, elements: !1648)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2382, file: !2364, line: 353, baseType: !2527, size: 32768)
!2527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 32768, elements: !2528)
!2528 = !{!2529}
!2529 = !DISubrange(count: 4096)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2363, file: !2364, line: 484, baseType: !2369, size: 64, offset: 192)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2363, file: !2364, line: 491, baseType: !2532, size: 128, offset: 256)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2364, line: 404, size: 128, elements: !2533)
!2533 = !{!2534, !2535, !2536}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2532, file: !2364, line: 424, baseType: !334, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2532, file: !2364, line: 432, baseType: !7, size: 32, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2532, file: !2364, line: 440, baseType: !7, size: 32, offset: 96)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2363, file: !2364, line: 498, baseType: !2532, size: 128, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2363, file: !2364, line: 508, baseType: !2370, size: 33280, align: 512, offset: 512)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !891, file: !892, line: 31, baseType: !2540, size: 64, offset: 448)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2542, line: 325, flags: DIFlagFwdDecl)
!2542 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !891, file: !892, line: 32, baseType: !7, size: 32, offset: 512)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !891, file: !892, line: 33, baseType: !890, size: 64, offset: 576)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !891, file: !892, line: 35, baseType: !2546, size: 64, offset: 640)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !2548, line: 4, size: 576, elements: !2549)
!2548 = !DIFile(filename: "./include/linux/fs_pin.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d07c4a418236e4e1036969d5e8bd56f6")
!2549 = !{!2550, !2551, !2552, !2553, !2554}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2547, file: !2548, line: 5, baseType: !75, size: 192)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2547, file: !2548, line: 6, baseType: !43, size: 32, offset: 192)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !2547, file: !2548, line: 7, baseType: !874, size: 128, offset: 256)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "m_list", scope: !2547, file: !2548, line: 8, baseType: !874, size: 128, offset: 384)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2547, file: !2548, line: 9, baseType: !2555, size: 64, offset: 512)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !2546}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !891, file: !892, line: 37, baseType: !1501, size: 64, offset: 704)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !891, file: !892, line: 38, baseType: !1622, size: 64, offset: 768)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !891, file: !892, line: 39, baseType: !43, size: 32, offset: 832)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !891, file: !892, line: 40, baseType: !1534, size: 192, offset: 896)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !891, file: !892, line: 42, baseType: !43, size: 32, offset: 1088)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !833, file: !173, line: 951, baseType: !135, size: 32, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !833, file: !173, line: 952, baseType: !269, size: 32, offset: 160)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !833, file: !173, line: 952, baseType: !269, size: 32, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !833, file: !173, line: 953, baseType: !43, size: 32, offset: 224)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !805, file: !173, line: 1012, baseType: !1329, size: 64, offset: 896)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !805, file: !173, line: 1013, baseType: !2569, size: 256, offset: 960)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !173, line: 970, size: 256, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2569, file: !173, line: 971, baseType: !60, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2569, file: !173, line: 972, baseType: !7, size: 32, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2569, file: !173, line: 973, baseType: !7, size: 32, offset: 96)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2569, file: !173, line: 974, baseType: !7, size: 32, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2569, file: !173, line: 975, baseType: !7, size: 32, offset: 160)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2569, file: !173, line: 976, baseType: !62, size: 64, offset: 192)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !805, file: !173, line: 1014, baseType: !2578, size: 128, offset: 1216)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2579, line: 8, size: 128, elements: !2580)
!2579 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!2580 = !{!2581, !2582}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2578, file: !2579, line: 9, baseType: !407, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2578, file: !2579, line: 10, baseType: !298, size: 64, offset: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !805, file: !173, line: 1015, baseType: !263, size: 64, offset: 1344)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !805, file: !173, line: 1016, baseType: !2585, size: 64, offset: 1408)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2587)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !173, line: 1914, size: 2112, elements: !2588)
!2588 = !{!2589, !2590, !2594, !2598, !2602, !2630, !2631, !2637, !2650, !2667, !2671, !2672, !2676, !2677, !2681, !2686, !2687, !2691, !2695, !2701, !2702, !2706, !2707, !2711, !2715, !2719, !2725, !2729, !2771, !2775, !2779, !2780, !2786}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2587, file: !173, line: 1915, baseType: !448, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2587, file: !173, line: 1916, baseType: !2591, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!62, !804, !62, !43}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2587, file: !173, line: 1917, baseType: !2595, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!533, !804, !402, !56, !61}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2587, file: !173, line: 1918, baseType: !2599, size: 64, offset: 192)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!533, !804, !37, !56, !61}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2587, file: !173, line: 1919, baseType: !2603, size: 64, offset: 256)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!533, !2606, !2628}
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !173, line: 373, size: 384, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2615, !2616, !2617, !2618}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2607, file: !173, line: 374, baseType: !804, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2607, file: !173, line: 375, baseType: !62, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2607, file: !173, line: 376, baseType: !2612, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{null, !2606, !536}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2607, file: !173, line: 377, baseType: !41, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2607, file: !173, line: 378, baseType: !43, size: 32, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2607, file: !173, line: 379, baseType: !114, size: 16, offset: 288)
!2618 = !DIDerivedType(tag: DW_TAG_member, scope: !2607, file: !173, line: 380, baseType: !2619, size: 64, offset: 320)
!2619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2607, file: !173, line: 380, size: 64, elements: !2620)
!2620 = !{!2621, !2624}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2619, file: !173, line: 386, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !173, line: 386, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2619, file: !173, line: 395, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!533, !41}
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !173, line: 69, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2587, file: !173, line: 1920, baseType: !2603, size: 64, offset: 320)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2587, file: !173, line: 1921, baseType: !2632, size: 64, offset: 384)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!43, !2606, !2635, !7}
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !173, line: 53, flags: DIFlagFwdDecl)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2587, file: !173, line: 1923, baseType: !2638, size: 64, offset: 448)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!43, !804, !2641}
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !173, line: 1858, size: 128, elements: !2643)
!2643 = !{!2644, !2649}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2642, file: !173, line: 1859, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !173, line: 1855, baseType: !2646)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!714, !2641, !37, !43, !62, !334, !7}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2642, file: !173, line: 1860, baseType: !62, size: 64, offset: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2587, file: !173, line: 1924, baseType: !2651, size: 64, offset: 512)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!2654, !804, !2656}
!2654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2655, line: 59, baseType: !7)
!2655 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2658, line: 37, size: 128, elements: !2659)
!2658 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2659 = !{!2660, !2666}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2657, file: !2658, line: 38, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2658, line: 31, baseType: !2662)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{null, !804, !2665, !2656}
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2657, file: !2658, line: 39, baseType: !2654, size: 32, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2587, file: !173, line: 1925, baseType: !2668, size: 64, offset: 576)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!536, !804, !7, !60}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2587, file: !173, line: 1926, baseType: !2668, size: 64, offset: 640)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2587, file: !173, line: 1927, baseType: !2673, size: 64, offset: 704)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{!43, !804, !763}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2587, file: !173, line: 1928, baseType: !60, size: 64, offset: 768)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2587, file: !173, line: 1929, baseType: !2678, size: 64, offset: 832)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!43, !263, !804}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2587, file: !173, line: 1930, baseType: !2682, size: 64, offset: 896)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!43, !804, !2685}
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !173, line: 1061, baseType: !41)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2587, file: !173, line: 1931, baseType: !2678, size: 64, offset: 960)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2587, file: !173, line: 1932, baseType: !2688, size: 64, offset: 1024)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!43, !804, !62, !62, !43}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2587, file: !173, line: 1933, baseType: !2692, size: 64, offset: 1088)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!43, !43, !804, !43}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2587, file: !173, line: 1934, baseType: !2696, size: 64, offset: 1152)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!43, !804, !43, !2699}
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !173, line: 1063, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2587, file: !173, line: 1935, baseType: !801, size: 64, offset: 1216)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2587, file: !173, line: 1936, baseType: !2703, size: 64, offset: 1280)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!43, !43}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2587, file: !173, line: 1937, baseType: !2696, size: 64, offset: 1344)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2587, file: !173, line: 1938, baseType: !2708, size: 64, offset: 1408)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!533, !2189, !804, !61, !56, !7}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2587, file: !173, line: 1939, baseType: !2712, size: 64, offset: 1472)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!533, !804, !61, !2189, !56, !7}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2587, file: !173, line: 1940, baseType: !2716, size: 64, offset: 1536)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{null, !804}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2587, file: !173, line: 1941, baseType: !2720, size: 64, offset: 1600)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!43, !804, !43, !2723, !2724}
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2587, file: !173, line: 1942, baseType: !2726, size: 64, offset: 1664)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!536, !804, !43, !62, !62}
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2587, file: !173, line: 1944, baseType: !2730, size: 64, offset: 1728)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{null, !2733, !804}
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2735, line: 17, size: 960, elements: !2736)
!2735 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2736 = !{!2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2766, !2767, !2770}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2734, file: !2735, line: 18, baseType: !402, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2734, file: !2735, line: 19, baseType: !56, size: 64, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2734, file: !2735, line: 20, baseType: !56, size: 64, offset: 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2734, file: !2735, line: 21, baseType: !56, size: 64, offset: 192)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2734, file: !2735, line: 22, baseType: !56, size: 64, offset: 256)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2734, file: !2735, line: 23, baseType: !62, size: 64, offset: 320)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2734, file: !2735, line: 24, baseType: !62, size: 64, offset: 384)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2734, file: !2735, line: 25, baseType: !823, size: 256, offset: 448)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2734, file: !2735, line: 26, baseType: !2746, size: 64, offset: 704)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2748)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2735, line: 32, size: 256, elements: !2749)
!2749 = !{!2750, !2754, !2758, !2762}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2748, file: !2735, line: 33, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!41, !2733, !61}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2748, file: !2735, line: 34, baseType: !2755, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{null, !2733, !41}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2748, file: !2735, line: 35, baseType: !2759, size: 64, offset: 128)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!41, !2733, !41, !61}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2748, file: !2735, line: 36, baseType: !2763, size: 64, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!43, !2733, !41}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2734, file: !2735, line: 27, baseType: !43, size: 32, offset: 768)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2734, file: !2735, line: 28, baseType: !2768, size: 64, offset: 832)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2734, file: !2735, line: 29, baseType: !41, size: 64, offset: 896)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2587, file: !173, line: 1948, baseType: !2772, size: 64, offset: 1792)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!533, !804, !62, !804, !62, !56, !7}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2587, file: !173, line: 1950, baseType: !2776, size: 64, offset: 1856)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!62, !804, !62, !804, !62, !62, !7}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2587, file: !173, line: 1953, baseType: !2688, size: 64, offset: 1920)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2587, file: !173, line: 1954, baseType: !2781, size: 64, offset: 1984)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!43, !2784, !7}
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !173, line: 1911, flags: DIFlagFwdDecl)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2587, file: !173, line: 1955, baseType: !2787, size: 64, offset: 2048)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!43, !2784, !2635, !7}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !805, file: !173, line: 1018, baseType: !334, size: 64, offset: 1472)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !805, file: !173, line: 1020, baseType: !41, size: 64, offset: 1536)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !805, file: !173, line: 1023, baseType: !41, size: 64, offset: 1600)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !805, file: !173, line: 1027, baseType: !2794, size: 64, offset: 1664)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !805, file: !173, line: 1029, baseType: !571, size: 64, offset: 1728)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !805, file: !173, line: 1030, baseType: !2797, size: 32, offset: 1792)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2798, line: 8, baseType: !226)
!2798 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !805, file: !173, line: 1031, baseType: !2797, size: 32, offset: 1824)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !780, file: !144, line: 756, baseType: !60, size: 64, offset: 704)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !780, file: !144, line: 757, baseType: !60, size: 64, offset: 768)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !780, file: !144, line: 760, baseType: !60, size: 64, offset: 832)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !780, file: !144, line: 761, baseType: !60, size: 64, offset: 896)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !780, file: !144, line: 763, baseType: !60, size: 64, offset: 960)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !780, file: !144, line: 764, baseType: !2806, size: 64, offset: 1024)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2808, line: 299, baseType: !2809)
!2808 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2808, line: 299, size: 64, elements: !2810)
!2810 = !{!2811}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2809, file: !2808, line: 299, baseType: !2812, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2813, line: 18, baseType: !60)
!2813 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !780, file: !144, line: 773, baseType: !70, size: 32, offset: 1088)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !780, file: !144, line: 785, baseType: !70, size: 32, offset: 1120)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !780, file: !144, line: 795, baseType: !2817, size: 64, offset: 1152)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !144, line: 726, size: 128, elements: !2819)
!2819 = !{!2820, !2821}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2818, file: !144, line: 727, baseType: !334, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2818, file: !144, line: 728, baseType: !43, size: 32, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !780, file: !144, line: 801, baseType: !60, size: 64, offset: 1216)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !780, file: !144, line: 804, baseType: !588, size: 64, offset: 1280)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !780, file: !144, line: 806, baseType: !43, size: 32, offset: 1344)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !780, file: !144, line: 808, baseType: !80, size: 32, offset: 1376)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !780, file: !144, line: 823, baseType: !584, size: 320, offset: 1408)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !780, file: !144, line: 825, baseType: !118, size: 128, offset: 1728)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !780, file: !144, line: 845, baseType: !43, size: 32, offset: 1856)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !780, file: !144, line: 849, baseType: !60, size: 64, offset: 1920)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !780, file: !144, line: 850, baseType: !60, size: 64, offset: 1984)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !780, file: !144, line: 852, baseType: !60, size: 64, offset: 2048)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !780, file: !144, line: 853, baseType: !60, size: 64, offset: 2112)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !780, file: !144, line: 854, baseType: !590, size: 64, offset: 2176)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !780, file: !144, line: 855, baseType: !60, size: 64, offset: 2240)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !780, file: !144, line: 856, baseType: !60, size: 64, offset: 2304)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !780, file: !144, line: 857, baseType: !60, size: 64, offset: 2368)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !780, file: !144, line: 858, baseType: !60, size: 64, offset: 2432)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !780, file: !144, line: 865, baseType: !309, size: 32, offset: 2496)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !780, file: !144, line: 867, baseType: !80, size: 32, offset: 2528)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !780, file: !144, line: 869, baseType: !60, size: 64, offset: 2560)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !780, file: !144, line: 869, baseType: !60, size: 64, offset: 2624)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !780, file: !144, line: 869, baseType: !60, size: 64, offset: 2688)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !780, file: !144, line: 869, baseType: !60, size: 64, offset: 2752)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !780, file: !144, line: 870, baseType: !60, size: 64, offset: 2816)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !780, file: !144, line: 870, baseType: !60, size: 64, offset: 2880)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !780, file: !144, line: 870, baseType: !60, size: 64, offset: 2944)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !780, file: !144, line: 871, baseType: !60, size: 64, offset: 3008)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !780, file: !144, line: 871, baseType: !60, size: 64, offset: 3072)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !780, file: !144, line: 871, baseType: !60, size: 64, offset: 3136)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !780, file: !144, line: 871, baseType: !60, size: 64, offset: 3200)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !780, file: !144, line: 873, baseType: !2852, size: 3328, offset: 3264)
!2852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 3328, elements: !2853)
!2853 = !{!2854}
!2854 = !DISubrange(count: 52)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !780, file: !144, line: 875, baseType: !2856, size: 1280, offset: 6592)
!2856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1476, size: 1280, elements: !879)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !780, file: !144, line: 877, baseType: !2858, size: 64, offset: 7872)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !144, line: 877, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !780, file: !144, line: 880, baseType: !2861, size: 1088, offset: 7936)
!2861 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2862, line: 72, baseType: !2863)
!2862 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2862, line: 23, size: 1088, elements: !2864)
!2864 = !{!2865, !2866, !2867, !2868, !2869, !2872, !2873, !2874, !2875, !2900, !2901, !2902}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2863, file: !2862, line: 28, baseType: !334, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2863, file: !2862, line: 38, baseType: !590, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2863, file: !2862, line: 40, baseType: !60, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2863, file: !2862, line: 43, baseType: !584, size: 320, offset: 192)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2863, file: !2862, line: 44, baseType: !2870, size: 64, offset: 512)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2862, line: 44, flags: DIFlagFwdDecl)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2863, file: !2862, line: 48, baseType: !60, size: 64, offset: 576)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2863, file: !2862, line: 59, baseType: !823, size: 256, offset: 640)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2863, file: !2862, line: 60, baseType: !41, size: 64, offset: 896)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2863, file: !2862, line: 61, baseType: !2876, size: 64, offset: 960)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2878)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2879, line: 13, size: 1216, elements: !2880)
!2879 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2880 = !{!2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2878, file: !2879, line: 14, baseType: !41, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2878, file: !2879, line: 15, baseType: !60, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2878, file: !2879, line: 17, baseType: !60, size: 64, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2878, file: !2879, line: 17, baseType: !60, size: 64, offset: 192)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2878, file: !2879, line: 18, baseType: !60, size: 64, offset: 256)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2878, file: !2879, line: 18, baseType: !60, size: 64, offset: 320)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2878, file: !2879, line: 19, baseType: !261, size: 64, offset: 384)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2878, file: !2879, line: 21, baseType: !536, size: 64, offset: 448)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2878, file: !2879, line: 23, baseType: !536, size: 64, offset: 512)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2878, file: !2879, line: 24, baseType: !536, size: 64, offset: 576)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2878, file: !2879, line: 25, baseType: !536, size: 64, offset: 640)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2878, file: !2879, line: 26, baseType: !536, size: 64, offset: 704)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2878, file: !2879, line: 27, baseType: !536, size: 64, offset: 768)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2878, file: !2879, line: 28, baseType: !536, size: 64, offset: 832)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2878, file: !2879, line: 29, baseType: !536, size: 64, offset: 896)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2878, file: !2879, line: 30, baseType: !536, size: 64, offset: 960)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2878, file: !2879, line: 31, baseType: !536, size: 64, offset: 1024)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2878, file: !2879, line: 32, baseType: !536, size: 64, offset: 1088)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2878, file: !2879, line: 33, baseType: !536, size: 64, offset: 1152)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2863, file: !2862, line: 63, baseType: !70, size: 32, offset: 1024)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2863, file: !2862, line: 69, baseType: !114, size: 16, offset: 1056)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2863, file: !2862, line: 70, baseType: !2903, size: 16, offset: 1072)
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !105, line: 18, baseType: !2904)
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !107, line: 23, baseType: !1266)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !144, line: 882, baseType: !60, size: 64, offset: 9024)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !780, file: !144, line: 885, baseType: !80, size: 32, offset: 9088)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !780, file: !144, line: 886, baseType: !2908, size: 64, offset: 9152)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !144, line: 732, flags: DIFlagFwdDecl)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !780, file: !144, line: 901, baseType: !1501, size: 64, offset: 9216)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !780, file: !144, line: 904, baseType: !804, size: 64, offset: 9280)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !780, file: !144, line: 906, baseType: !2913, size: 64, offset: 9344)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !144, line: 906, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !780, file: !144, line: 930, baseType: !70, size: 32, offset: 9408)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !780, file: !144, line: 933, baseType: !70, size: 32, offset: 9440)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !780, file: !144, line: 935, baseType: !2918, size: 64, offset: 9472)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !129, line: 103, size: 64, elements: !2919)
!2919 = !{!2920}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2918, file: !129, line: 104, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !129, line: 101, flags: DIFlagFwdDecl)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !780, file: !144, line: 940, baseType: !588, size: 64, offset: 9536)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !780, file: !144, line: 942, baseType: !1550, size: 256, offset: 9600)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !777, file: !144, line: 986, baseType: !2926, offset: 10240)
!2926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, elements: !1648)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !764, file: !144, line: 640, baseType: !2928, size: 64, offset: 192)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2808, line: 297, baseType: !2929)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2808, line: 297, size: 64, elements: !2930)
!2930 = !{!2931}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2929, file: !2808, line: 297, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2813, line: 19, baseType: !60)
!2933 = !DIDerivedType(tag: DW_TAG_member, scope: !764, file: !144, line: 646, baseType: !2934, size: 64, offset: 256)
!2934 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !764, file: !144, line: 646, size: 64, elements: !2935)
!2935 = !{!2936, !2939}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2934, file: !144, line: 647, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2938)
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !144, line: 542, baseType: !60)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2934, file: !144, line: 648, baseType: !2938, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !764, file: !144, line: 666, baseType: !43, size: 32, offset: 320)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !764, file: !144, line: 667, baseType: !2942, size: 64, offset: 384)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !144, line: 579, size: 320, elements: !2944)
!2944 = !{!2945}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2943, file: !144, line: 580, baseType: !584, size: 320)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !764, file: !144, line: 670, baseType: !714, size: 8, offset: 448)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !764, file: !144, line: 681, baseType: !2948, size: 256, offset: 512)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !764, file: !144, line: 678, size: 256, elements: !2949)
!2949 = !{!2950, !2951}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2948, file: !144, line: 679, baseType: !616, size: 192, align: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2948, file: !144, line: 680, baseType: !60, size: 64, offset: 192)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !764, file: !144, line: 689, baseType: !118, size: 128, offset: 768)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !764, file: !144, line: 691, baseType: !2954, size: 64, offset: 896)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !144, line: 691, flags: DIFlagFwdDecl)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !764, file: !144, line: 694, baseType: !2957, size: 64, offset: 960)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2959)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !757, line: 563, size: 1024, elements: !2960)
!2960 = !{!2961, !2965, !2966, !2970, !2974, !2978, !2979, !2983, !2987, !2991, !2992, !2993, !2997, !3001, !3005, !3009}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2959, file: !757, line: 564, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{null, !763}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2959, file: !757, line: 569, baseType: !2962, size: 64, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2959, file: !757, line: 571, baseType: !2967, size: 64, offset: 128)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!43, !763, !60}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2959, file: !757, line: 572, baseType: !2971, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!43, !763}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2959, file: !757, line: 578, baseType: !2975, size: 64, offset: 256)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!43, !763, !60, !60, !60}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2959, file: !757, line: 580, baseType: !751, size: 64, offset: 320)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2959, file: !757, line: 581, baseType: !2980, size: 64, offset: 384)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!754, !755, !7}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2959, file: !757, line: 582, baseType: !2984, size: 64, offset: 448)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!754, !755, !60, !60}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2959, file: !757, line: 584, baseType: !2988, size: 64, offset: 512)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!60, !763}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2959, file: !757, line: 588, baseType: !751, size: 64, offset: 576)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2959, file: !757, line: 591, baseType: !751, size: 64, offset: 640)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2959, file: !757, line: 597, baseType: !2994, size: 64, offset: 704)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!43, !763, !60, !41, !43, !43}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2959, file: !757, line: 603, baseType: !2998, size: 64, offset: 768)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!37, !763}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2959, file: !757, line: 613, baseType: !3002, size: 64, offset: 832)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!43, !763, !2152}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2959, file: !757, line: 625, baseType: !3006, size: 64, offset: 896)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!2152, !763, !60}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2959, file: !757, line: 633, baseType: !3010, size: 64, offset: 960)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!633, !763, !60}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !764, file: !144, line: 697, baseType: !60, size: 64, offset: 1024)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !764, file: !144, line: 699, baseType: !804, size: 64, offset: 1088)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !764, file: !144, line: 700, baseType: !41, size: 64, offset: 1152)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !764, file: !144, line: 711, baseType: !588, size: 64, offset: 1216)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !764, file: !144, line: 717, baseType: !2152, size: 64, offset: 1280)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !764, file: !144, line: 722, baseType: !3019, offset: 1344)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !144, line: 570, elements: !797)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !760, file: !757, line: 515, baseType: !581, size: 32, offset: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !760, file: !757, line: 516, baseType: !60, size: 64, offset: 128)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !760, file: !757, line: 517, baseType: !60, size: 64, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !760, file: !757, line: 518, baseType: !60, size: 64, offset: 256)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !757, line: 520, baseType: !143, size: 32, offset: 320)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !756, file: !757, line: 522, baseType: !3026, size: 64, offset: 384)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2813, line: 22, baseType: !3028)
!3028 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2813, line: 22, size: 64, elements: !3029)
!3029 = !{!3030}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3028, file: !2813, line: 22, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2813, line: 15, baseType: !60)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !756, file: !757, line: 524, baseType: !3033, size: 64, offset: 448)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2808, line: 372, baseType: !3035)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2808, line: 372, size: 64, elements: !3036)
!3036 = !{!3037}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3035, file: !2808, line: 372, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2813, line: 16, baseType: !60)
!3039 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !757, line: 527, baseType: !3040, size: 64, offset: 512)
!3040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !757, line: 527, size: 64, elements: !3041)
!3041 = !{!3042, !3048}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3040, file: !757, line: 528, baseType: !3043, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2813, line: 21, baseType: !3044)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2813, line: 21, size: 64, elements: !3045)
!3045 = !{!3046}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3044, file: !2813, line: 21, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2813, line: 14, baseType: !60)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3040, file: !757, line: 529, baseType: !3027, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !756, file: !757, line: 534, baseType: !633, size: 64, offset: 576)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !756, file: !757, line: 535, baseType: !633, size: 64, offset: 640)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !756, file: !757, line: 541, baseType: !3052, size: 64, offset: 704)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !756, file: !757, line: 545, baseType: !3054, size: 64, offset: 768)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !756, file: !757, line: 549, baseType: !3056, size: 64, offset: 832)
!3056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2808, line: 520, baseType: !633)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !744, file: !14, line: 100, baseType: !3058, size: 64, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!43, !683, !60, !60, !43}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !684, file: !14, line: 134, baseType: !41, size: 64, offset: 960)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !684, file: !14, line: 135, baseType: !43, size: 32, offset: 1024)
!3063 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !14, line: 136, baseType: !3064, size: 128, offset: 1088)
!3064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !14, line: 136, size: 128, elements: !3065)
!3065 = !{!3066, !3072}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3064, file: !14, line: 137, baseType: !3067, size: 128)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3068, line: 6, size: 128, elements: !3069)
!3068 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3069 = !{!3070, !3071}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3067, file: !3068, line: 7, baseType: !334, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3067, file: !3068, line: 8, baseType: !334, size: 64, offset: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, scope: !3064, file: !14, line: 138, baseType: !3073)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3064, file: !14, line: 138, elements: !3074)
!3074 = !{!3075, !3077}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3073, file: !14, line: 138, baseType: !3076)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3073, file: !14, line: 138, elements: !797)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3073, file: !14, line: 138, baseType: !3078)
!3078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3067, elements: !1648)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !680, file: !144, line: 147, baseType: !41, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !638, file: !144, line: 161, baseType: !718, size: 128, align: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !144, line: 164, baseType: !3082, size: 32, offset: 384)
!3082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !634, file: !144, line: 164, size: 32, elements: !3083)
!3083 = !{!3084, !3085}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3082, file: !144, line: 169, baseType: !70, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3082, file: !144, line: 177, baseType: !7, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !634, file: !144, line: 181, baseType: !70, size: 32, offset: 416)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !173, line: 309, flags: DIFlagFwdDecl)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !627, file: !173, line: 406, baseType: !3090, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{!43, !804, !3093}
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !144, line: 293, size: 1536, elements: !3095)
!3095 = !{!3096, !3126, !3140}
!3096 = !DIDerivedType(tag: DW_TAG_member, scope: !3094, file: !144, line: 295, baseType: !3097, size: 512)
!3097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3094, file: !144, line: 295, size: 512, elements: !3098)
!3098 = !{!3099, !3125}
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !3097, file: !144, line: 296, baseType: !3100, size: 448)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3097, file: !144, line: 296, size: 448, elements: !3101)
!3101 = !{!3102, !3103, !3112, !3113, !3114, !3123, !3124}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3100, file: !144, line: 298, baseType: !60, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, scope: !3100, file: !144, line: 299, baseType: !3104, size: 128, offset: 64)
!3104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3100, file: !144, line: 299, size: 128, elements: !3105)
!3105 = !{!3106, !3107}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3104, file: !144, line: 300, baseType: !118, size: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, scope: !3104, file: !144, line: 302, baseType: !3108, size: 128)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3104, file: !144, line: 302, size: 128, elements: !3109)
!3109 = !{!3110, !3111}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3108, file: !144, line: 303, baseType: !41, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3108, file: !144, line: 305, baseType: !7, size: 32, offset: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3100, file: !144, line: 310, baseType: !571, size: 64, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3100, file: !144, line: 311, baseType: !60, size: 64, offset: 256)
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3100, file: !144, line: 312, baseType: !3115, size: 64, offset: 320)
!3115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3100, file: !144, line: 312, size: 64, elements: !3116)
!3116 = !{!3117, !3118}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3115, file: !144, line: 313, baseType: !41, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3115, file: !144, line: 314, baseType: !3119, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !144, line: 257, baseType: !3120)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 255, size: 64, elements: !3121)
!3121 = !{!3122}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3120, file: !144, line: 256, baseType: !60, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3100, file: !144, line: 316, baseType: !70, size: 32, offset: 384)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3100, file: !144, line: 317, baseType: !70, size: 32, offset: 416)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3097, file: !144, line: 323, baseType: !634, size: 512, align: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, scope: !3094, file: !144, line: 325, baseType: !3127, size: 512, offset: 512)
!3127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3094, file: !144, line: 325, size: 512, elements: !3128)
!3128 = !{!3129, !3139}
!3129 = !DIDerivedType(tag: DW_TAG_member, scope: !3127, file: !144, line: 326, baseType: !3130, size: 320)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3127, file: !144, line: 326, size: 320, elements: !3131)
!3131 = !{!3132, !3133, !3134, !3135, !3136, !3137, !3138}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3130, file: !144, line: 327, baseType: !60, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3130, file: !144, line: 328, baseType: !60, size: 64, offset: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3130, file: !144, line: 329, baseType: !60, size: 64, offset: 128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3130, file: !144, line: 331, baseType: !70, size: 32, offset: 192)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3130, file: !144, line: 332, baseType: !70, size: 32, offset: 224)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3130, file: !144, line: 333, baseType: !70, size: 32, offset: 256)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3130, file: !144, line: 335, baseType: !7, size: 32, offset: 288)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3127, file: !144, line: 339, baseType: !634, size: 512, align: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !3094, file: !144, line: 341, baseType: !3141, size: 512, offset: 1024)
!3141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3094, file: !144, line: 341, size: 512, elements: !3142)
!3142 = !{!3143, !3152, !3158}
!3143 = !DIDerivedType(tag: DW_TAG_member, scope: !3141, file: !144, line: 342, baseType: !3144, size: 384)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3141, file: !144, line: 342, size: 384, elements: !3145)
!3145 = !{!3146, !3147, !3148, !3149, !3150, !3151}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3144, file: !144, line: 343, baseType: !60, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3144, file: !144, line: 344, baseType: !60, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3144, file: !144, line: 346, baseType: !41, size: 64, offset: 128)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3144, file: !144, line: 347, baseType: !41, size: 64, offset: 192)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3144, file: !144, line: 348, baseType: !41, size: 64, offset: 256)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3144, file: !144, line: 349, baseType: !41, size: 64, offset: 320)
!3152 = !DIDerivedType(tag: DW_TAG_member, scope: !3141, file: !144, line: 352, baseType: !3153, size: 256)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3141, file: !144, line: 352, size: 256, elements: !3154)
!3154 = !{!3155, !3156, !3157}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3153, file: !144, line: 353, baseType: !60, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3153, file: !144, line: 354, baseType: !60, size: 64, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3153, file: !144, line: 356, baseType: !118, size: 128, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3141, file: !144, line: 359, baseType: !634, size: 512, align: 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !627, file: !173, line: 409, baseType: !3160, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{!43, !571, !3087}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !627, file: !173, line: 412, baseType: !3164, size: 64, offset: 192)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!714, !571, !3093}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !627, file: !173, line: 414, baseType: !3168, size: 64, offset: 256)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{null, !3171}
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !173, line: 310, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !627, file: !173, line: 416, baseType: !3174, size: 64, offset: 320)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!43, !804, !571, !62, !7, !3177, !2724}
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !627, file: !173, line: 419, baseType: !3179, size: 64, offset: 384)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!43, !804, !571, !62, !7, !7, !633, !41}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !627, file: !173, line: 424, baseType: !3183, size: 64, offset: 448)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!3186, !571, !3186}
!3186 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !46, line: 131, baseType: !334)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !627, file: !173, line: 425, baseType: !3188, size: 64, offset: 512)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{null, !3093, !56, !56}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !627, file: !173, line: 426, baseType: !3192, size: 64, offset: 576)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!714, !3093, !581}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !627, file: !173, line: 427, baseType: !3196, size: 64, offset: 640)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{null, !3093}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !627, file: !173, line: 428, baseType: !2603, size: 64, offset: 704)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !627, file: !173, line: 433, baseType: !3201, size: 64, offset: 768)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!43, !571, !3093, !3093, !159}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !627, file: !173, line: 435, baseType: !3205, size: 64, offset: 832)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!43, !3093}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !627, file: !173, line: 436, baseType: !3209, size: 64, offset: 896)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!714, !3093, !56, !56}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !627, file: !173, line: 438, baseType: !3213, size: 64, offset: 960)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{null, !3093, !3216, !3216}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !627, file: !173, line: 439, baseType: !3218, size: 64, offset: 1024)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!43, !571, !633}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !627, file: !173, line: 442, baseType: !3222, size: 64, offset: 1088)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!43, !3225, !804, !3227}
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !173, line: 66, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3186, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !627, file: !173, line: 444, baseType: !2716, size: 64, offset: 1152)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !627, file: !173, line: 445, baseType: !3230, size: 64, offset: 1216)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!43, !2606, !2628}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !572, file: !173, line: 486, baseType: !60, size: 64, offset: 896)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !572, file: !173, line: 487, baseType: !584, size: 320, offset: 960)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !572, file: !173, line: 488, baseType: !2797, size: 32, offset: 1280)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !572, file: !173, line: 489, baseType: !80, size: 32, offset: 1312)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !572, file: !173, line: 490, baseType: !118, size: 128, offset: 1344)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !572, file: !173, line: 491, baseType: !41, size: 64, offset: 1472)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !562, file: !527, line: 180, baseType: !3240, size: 64, offset: 320)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!533, !804, !467, !561, !402, !62, !56}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !562, file: !527, line: 182, baseType: !3240, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !562, file: !527, line: 184, baseType: !3245, size: 64, offset: 448)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!43, !804, !467, !561, !763}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !550, file: !527, line: 90, baseType: !3249, size: 64, offset: 192)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !550, file: !527, line: 91, baseType: !3251, size: 64, offset: 256)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !517, file: !462, line: 120, baseType: !3253, size: 64, offset: 192)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!3256, !485}
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3258)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !167, line: 39, size: 384, elements: !3259)
!3259 = !{!3260, !3261, !3265, !3269, !3275, !3279}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3258, file: !167, line: 40, baseType: !166, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3258, file: !167, line: 41, baseType: !3262, size: 64, offset: 64)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!714}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3258, file: !167, line: 42, baseType: !3266, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!41}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3258, file: !167, line: 43, baseType: !3270, size: 64, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!261, !3273}
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !167, line: 19, flags: DIFlagFwdDecl)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3258, file: !167, line: 44, baseType: !3276, size: 64, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!261}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3258, file: !167, line: 45, baseType: !3280, size: 64, offset: 320)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{null, !41}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !517, file: !462, line: 121, baseType: !3284, size: 64, offset: 256)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!261, !485}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !517, file: !462, line: 122, baseType: !3288, size: 64, offset: 320)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{null, !485, !1603, !1604}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !461, file: !462, line: 70, baseType: !3292, size: 64, offset: 384)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3294, line: 190, size: 1152, elements: !3295)
!3294 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3295 = !{!3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3375, !3376, !3377, !3378, !3379, !3382}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3293, file: !3294, line: 191, baseType: !70, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3293, file: !3294, line: 192, baseType: !70, size: 32, offset: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3293, file: !3294, line: 202, baseType: !3292, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3293, file: !3294, line: 203, baseType: !37, size: 64, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3293, file: !3294, line: 205, baseType: !616, size: 192, align: 64, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3293, file: !3294, line: 207, baseType: !261, size: 64, offset: 384)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3293, file: !3294, line: 208, baseType: !7, size: 32, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_member, scope: !3293, file: !3294, line: 209, baseType: !3304, size: 256, offset: 512)
!3304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3293, file: !3294, line: 209, size: 256, elements: !3305)
!3305 = !{!3306, !3315, !3319}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3304, file: !3294, line: 210, baseType: !3307, size: 256)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3294, line: 153, size: 256, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3314}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3307, file: !3294, line: 154, baseType: !60, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3307, file: !3294, line: 156, baseType: !612, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3307, file: !3294, line: 162, baseType: !3312, size: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3294, line: 162, flags: DIFlagFwdDecl)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3307, file: !3294, line: 167, baseType: !60, size: 64, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3304, file: !3294, line: 211, baseType: !3316, size: 64)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3294, line: 170, size: 64, elements: !3317)
!3317 = !{!3318}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3316, file: !3294, line: 171, baseType: !3292, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3304, file: !3294, line: 212, baseType: !3320, size: 256)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3294, line: 174, size: 256, elements: !3321)
!3321 = !{!3322, !3370, !3373, !3374}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3320, file: !3294, line: 175, baseType: !3323, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3325)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3294, line: 271, size: 768, elements: !3326)
!3326 = !{!3327, !3347, !3351, !3352, !3353, !3354, !3355, !3359, !3360, !3361, !3362, !3366}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3325, file: !3294, line: 276, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!43, !3331}
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3294, line: 251, size: 1216, elements: !3333)
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3332, file: !3294, line: 253, baseType: !3292, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3332, file: !3294, line: 254, baseType: !804, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3332, file: !3294, line: 255, baseType: !2733, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3332, file: !3294, line: 256, baseType: !41, size: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3332, file: !3294, line: 259, baseType: !823, size: 256, offset: 256)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3332, file: !3294, line: 260, baseType: !823, size: 256, offset: 512)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3332, file: !3294, line: 261, baseType: !43, size: 32, offset: 768)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3332, file: !3294, line: 262, baseType: !118, size: 128, offset: 832)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3332, file: !3294, line: 263, baseType: !402, size: 64, offset: 960)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3332, file: !3294, line: 265, baseType: !56, size: 64, offset: 1024)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3332, file: !3294, line: 266, baseType: !714, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3332, file: !3294, line: 267, baseType: !714, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3332, file: !3294, line: 268, baseType: !2957, size: 64, offset: 1152)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3325, file: !3294, line: 277, baseType: !3348, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{null, !3331}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3325, file: !3294, line: 290, baseType: !2763, size: 64, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3325, file: !3294, line: 292, baseType: !2751, size: 64, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3325, file: !3294, line: 293, baseType: !2759, size: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3325, file: !3294, line: 294, baseType: !2755, size: 64, offset: 320)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3325, file: !3294, line: 296, baseType: !3356, size: 64, offset: 384)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!533, !3331, !402, !56, !62}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3325, file: !3294, line: 306, baseType: !56, size: 64, offset: 448)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3325, file: !3294, line: 313, baseType: !714, size: 8, offset: 512)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3325, file: !3294, line: 314, baseType: !3356, size: 64, offset: 576)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3325, file: !3294, line: 317, baseType: !3363, size: 64, offset: 640)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!2654, !3331, !2656}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3325, file: !3294, line: 320, baseType: !3367, size: 64, offset: 704)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!43, !3331, !763}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3320, file: !3294, line: 176, baseType: !3371, size: 64, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3294, line: 35, flags: DIFlagFwdDecl)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3320, file: !3294, line: 177, baseType: !62, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3320, file: !3294, line: 178, baseType: !3292, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3293, file: !3294, line: 215, baseType: !41, size: 64, offset: 768)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3293, file: !3294, line: 221, baseType: !334, size: 64, offset: 832)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3293, file: !3294, line: 223, baseType: !47, size: 16, offset: 896)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3293, file: !3294, line: 224, baseType: !45, size: 16, offset: 912)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3293, file: !3294, line: 225, baseType: !3380, size: 64, offset: 960)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3294, line: 36, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3293, file: !3294, line: 227, baseType: !718, size: 128, align: 64, offset: 1024)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !461, file: !462, line: 71, baseType: !3384, size: 32, offset: 448)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3385, line: 19, size: 32, elements: !3386)
!3385 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3386 = !{!3387}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3384, file: !3385, line: 20, baseType: !861, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !461, file: !462, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !461, file: !462, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !461, file: !462, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !461, file: !462, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !461, file: !462, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !458, file: !6, line: 47, baseType: !448, size: 64, offset: 512)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !458, file: !6, line: 48, baseType: !467, size: 64, offset: 576)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !458, file: !6, line: 49, baseType: !3396, size: 64, offset: 640)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !458, file: !6, line: 50, baseType: !1290, size: 64, offset: 704)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !449, file: !6, line: 418, baseType: !3400, size: 64, offset: 1408)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3402)
!3402 = !{!3403, !3404, !3409, !3413, !3417, !3421}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3401, file: !6, line: 54, baseType: !538, size: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3401, file: !6, line: 55, baseType: !3405, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!533, !3400, !3408, !402}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3401, file: !6, line: 57, baseType: !3410, size: 64, offset: 192)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!533, !3400, !3408, !37, !56}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3401, file: !6, line: 59, baseType: !3414, size: 64, offset: 256)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{null, !448, !37}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3401, file: !6, line: 60, baseType: !3418, size: 64, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!43, !448}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3401, file: !6, line: 61, baseType: !3422, size: 64, offset: 384)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{null, !448}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !449, file: !6, line: 419, baseType: !37, size: 64, offset: 1472)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !449, file: !6, line: 420, baseType: !37, size: 64, offset: 1536)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !449, file: !6, line: 421, baseType: !467, size: 64, offset: 1600)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !449, file: !6, line: 424, baseType: !3429, size: 64, offset: 1664)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3431)
!3431 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !449, file: !6, line: 425, baseType: !3433, size: 64, offset: 1728)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1252)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !449, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !449, file: !6, line: 435, baseType: !823, size: 256, offset: 1856)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !449, file: !6, line: 437, baseType: !3438, size: 64, offset: 2112)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3440, line: 69, size: 320, elements: !3441)
!3440 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3441 = !{!3442, !3443, !3444, !3461, !3463, !3467, !3468}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3439, file: !3440, line: 70, baseType: !37, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3439, file: !3440, line: 71, baseType: !448, size: 64, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3439, file: !3440, line: 72, baseType: !3445, size: 64, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3447)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3440, line: 47, size: 256, elements: !3448)
!3448 = !{!3449, !3450, !3456, !3460}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3447, file: !3440, line: 49, baseType: !7, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3447, file: !3440, line: 51, baseType: !3451, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!43, !37, !3454}
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3439)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3447, file: !3440, line: 53, baseType: !3457, size: 64, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!43, !402, !3454}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3447, file: !3440, line: 55, baseType: !3280, size: 64, offset: 192)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3439, file: !3440, line: 73, baseType: !3462, size: 16, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3439, file: !3440, line: 74, baseType: !3464, size: 8, offset: 208)
!3464 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !105, line: 16, baseType: !3465)
!3465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !107, line: 20, baseType: !3466)
!3466 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3439, file: !3440, line: 75, baseType: !104, size: 8, offset: 216)
!3468 = !DIDerivedType(tag: DW_TAG_member, scope: !3439, file: !3440, line: 76, baseType: !3469, size: 64, offset: 256)
!3469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3439, file: !3440, line: 76, size: 64, elements: !3470)
!3470 = !{!3471, !3472, !3479}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3469, file: !3440, line: 77, baseType: !41, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3469, file: !3440, line: 78, baseType: !3473, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3475)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3440, line: 86, size: 128, elements: !3476)
!3476 = !{!3477, !3478}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3475, file: !3440, line: 87, baseType: !7, size: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3475, file: !3440, line: 88, baseType: !402, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3469, file: !3440, line: 79, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3482)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3440, line: 92, size: 256, elements: !3483)
!3483 = !{!3484, !3485, !3486, !3488, !3489}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3482, file: !3440, line: 94, baseType: !7, size: 32)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3482, file: !3440, line: 95, baseType: !7, size: 32, offset: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3482, file: !3440, line: 96, baseType: !3487, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3482, file: !3440, line: 97, baseType: !3445, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3482, file: !3440, line: 98, baseType: !41, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !449, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !449, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !449, file: !6, line: 442, baseType: !3429, size: 64, offset: 2240)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !449, file: !6, line: 443, baseType: !3433, size: 64, offset: 2304)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !449, file: !6, line: 444, baseType: !714, size: 8, offset: 2368)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !449, file: !6, line: 451, baseType: !714, size: 8, offset: 2376)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !449, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !449, file: !6, line: 455, baseType: !3498, size: 64, offset: 2432)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3500, line: 23, size: 96, elements: !3501)
!3500 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3501 = !{!3502, !3503, !3504}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3499, file: !3500, line: 24, baseType: !43, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3499, file: !3500, line: 24, baseType: !43, size: 32, offset: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3499, file: !3500, line: 24, baseType: !43, size: 32, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !449, file: !6, line: 458, baseType: !3506, size: 64, offset: 2496)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!43}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !449, file: !6, line: 460, baseType: !3510, size: 4032, align: 512, offset: 2560)
!3510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3511, size: 4032, elements: !3525)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3512)
!3512 = !{!3513, !3514, !3515}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3511, file: !6, line: 363, baseType: !41, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3511, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3511, file: !6, line: 367, baseType: !3516, size: 448, offset: 128)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3517)
!3517 = !{!3518, !3519}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3516, file: !6, line: 320, baseType: !448, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3516, file: !6, line: 321, baseType: !3520, size: 384, offset: 64)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3521, line: 40, size: 384, elements: !3522)
!3521 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3522 = !{!3523}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3520, file: !3521, line: 41, baseType: !3524, size: 384, align: 64)
!3524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 384, align: 64, elements: !1761)
!3525 = !{!3526}
!3526 = !DISubrange(count: 7)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !449, file: !6, line: 463, baseType: !3528, size: 192, offset: 6592)
!3528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3529, line: 8, size: 192, elements: !3530)
!3529 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3530 = !{!3531, !3532, !3533}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3528, file: !3529, line: 10, baseType: !7, size: 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3528, file: !3529, line: 11, baseType: !1292, size: 64, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3528, file: !3529, line: 12, baseType: !3534, size: 64, offset: 128)
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3536, line: 59, size: 48, elements: !3537)
!3536 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3535, file: !3536, line: 60, baseType: !2903, size: 16)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3535, file: !3536, line: 61, baseType: !2903, size: 16, offset: 16)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3535, file: !3536, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3535, file: !3536, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3535, file: !3536, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3535, file: !3536, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !449, file: !6, line: 465, baseType: !60, size: 64, offset: 6784)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !449, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !449, file: !6, line: 470, baseType: !118, size: 128, offset: 6912)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !449, file: !6, line: 471, baseType: !3548, size: 64, offset: 7040)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3550, line: 33, size: 96, elements: !3551)
!3550 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3551 = !{!3552, !3553, !3554, !3555}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3549, file: !3550, line: 37, baseType: !43, size: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3549, file: !3550, line: 43, baseType: !43, size: 32, offset: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3549, file: !3550, line: 45, baseType: !47, size: 16, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3549, file: !3550, line: 47, baseType: !47, size: 16, offset: 80)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !449, file: !6, line: 476, baseType: !3557, size: 64, offset: 7104)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3559)
!3559 = !{!3560, !3576, !3577, !3578}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3558, file: !6, line: 379, baseType: !3561, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3563, line: 204, baseType: !3564)
!3563 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3563, line: 197, size: 192, elements: !3565)
!3565 = !{!3566, !3568, !3569, !3570, !3572, !3574}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3564, file: !3563, line: 198, baseType: !3567, size: 32)
!3567 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3563, line: 21, baseType: !227)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3564, file: !3563, line: 199, baseType: !108, size: 8, offset: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3564, file: !3563, line: 200, baseType: !108, size: 8, offset: 40)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3564, file: !3563, line: 201, baseType: !3571, size: 16, offset: 48)
!3571 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3563, line: 17, baseType: !115)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3564, file: !3563, line: 202, baseType: !3573, size: 64, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3563, line: 16, baseType: !335)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3564, file: !3563, line: 203, baseType: !3575, size: 64, offset: 128)
!3575 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3563, line: 22, baseType: !335)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3558, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3558, file: !6, line: 381, baseType: !402, size: 64, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3558, file: !6, line: 382, baseType: !402, size: 64, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !449, file: !6, line: 477, baseType: !3558, size: 256, offset: 7168)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !449, file: !6, line: 480, baseType: !3581, size: 64, offset: 7424)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !449, file: !6, line: 483, baseType: !3584, size: 64, offset: 7488)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !449, file: !6, line: 488, baseType: !402, size: 64, offset: 7552)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !449, file: !6, line: 492, baseType: !41, size: 64, offset: 7616)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !449, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !449, file: !6, line: 495, baseType: !41, size: 64, offset: 7744)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !449, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !449, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !449, file: !6, line: 500, baseType: !3593, size: 64, offset: 7872)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3595, line: 45, baseType: !3596)
!3595 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !449, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !449, file: !6, line: 504, baseType: !3599, size: 64, offset: 8000)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3602, line: 96, size: 192, elements: !3603)
!3602 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3603 = !{!3604, !3605, !3647, !3650}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3601, file: !3602, line: 97, baseType: !7, size: 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3601, file: !3602, line: 98, baseType: !3606, size: 64, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3602, line: 24, size: 3072, elements: !3608)
!3608 = !{!3609, !3611, !3612, !3613, !3614, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3644, !3645, !3646}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3607, file: !3602, line: 26, baseType: !3610, size: 128)
!3610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !588, size: 128, elements: !1761)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3607, file: !3602, line: 27, baseType: !3610, size: 128, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3607, file: !3602, line: 28, baseType: !43, size: 32, offset: 256)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3607, file: !3602, line: 31, baseType: !80, size: 32, align: 512, offset: 512)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3607, file: !3602, line: 32, baseType: !3615, size: 960, offset: 576)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3616, line: 206, size: 960, elements: !3617)
!3616 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3617 = !{!3618, !3619, !3622, !3624, !3625, !3626}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3615, file: !3616, line: 207, baseType: !721, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3615, file: !3616, line: 208, baseType: !3620, size: 256, offset: 64)
!3620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3621, size: 256, elements: !879)
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3615, file: !3616, line: 209, baseType: !3623, size: 256, offset: 320)
!3623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 256, elements: !879)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3615, file: !3616, line: 213, baseType: !536, size: 64, offset: 576)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3615, file: !3616, line: 215, baseType: !1638, size: 256, offset: 640)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3615, file: !3616, line: 216, baseType: !104, size: 8, offset: 896)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3607, file: !3602, line: 33, baseType: !60, size: 64, offset: 1536)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3607, file: !3602, line: 34, baseType: !60, size: 64, offset: 1600)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3607, file: !3602, line: 35, baseType: !714, size: 8, offset: 1664)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3607, file: !3602, line: 36, baseType: !2288, size: 320, offset: 1728)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3607, file: !3602, line: 37, baseType: !1550, size: 256, offset: 2048)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3607, file: !3602, line: 38, baseType: !718, size: 128, align: 64, offset: 2304)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3607, file: !3602, line: 39, baseType: !3634, size: 64, offset: 2432)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3602, line: 49, size: 768, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3640, !3641, !3642, !3643}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3635, file: !3602, line: 50, baseType: !80, size: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3635, file: !3602, line: 51, baseType: !3623, size: 256, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3635, file: !3602, line: 53, baseType: !3623, size: 256, offset: 320)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3635, file: !3602, line: 54, baseType: !60, size: 64, offset: 576)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3635, file: !3602, line: 55, baseType: !3634, size: 64, offset: 640)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3635, file: !3602, line: 56, baseType: !43, size: 32, offset: 704)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3635, file: !3602, line: 57, baseType: !43, size: 32, offset: 736)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3607, file: !3602, line: 40, baseType: !60, size: 64, offset: 2496)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3607, file: !3602, line: 42, baseType: !43, size: 32, offset: 2560)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3607, file: !3602, line: 43, baseType: !3600, size: 64, offset: 2624)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3601, file: !3602, line: 99, baseType: !3648, offset: 128)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !3649, line: 211, elements: !797)
!3649 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3601, file: !3602, line: 100, baseType: !3651, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3602, line: 63, size: 3008, elements: !3653)
!3653 = !{!3654, !3655, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3685}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3652, file: !3602, line: 64, baseType: !3634, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3652, file: !3602, line: 65, baseType: !3656, size: 192, offset: 64)
!3656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3634, size: 192, elements: !502)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3652, file: !3602, line: 67, baseType: !43, size: 32, offset: 256)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3652, file: !3602, line: 68, baseType: !823, size: 256, offset: 320)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3652, file: !3602, line: 69, baseType: !80, size: 32, offset: 576)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3652, file: !3602, line: 70, baseType: !823, size: 256, offset: 640)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3652, file: !3602, line: 71, baseType: !60, size: 64, offset: 896)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3652, file: !3602, line: 72, baseType: !60, size: 64, offset: 960)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3652, file: !3602, line: 73, baseType: !60, size: 64, offset: 1024)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3652, file: !3602, line: 74, baseType: !60, size: 64, offset: 1088)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3652, file: !3602, line: 75, baseType: !60, size: 64, offset: 1152)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3652, file: !3602, line: 76, baseType: !60, size: 64, offset: 1216)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3652, file: !3602, line: 77, baseType: !60, size: 64, offset: 1280)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3652, file: !3602, line: 78, baseType: !60, size: 64, offset: 1344)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3652, file: !3602, line: 79, baseType: !714, size: 8, offset: 1408)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3652, file: !3602, line: 80, baseType: !60, size: 64, offset: 1472)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3652, file: !3602, line: 81, baseType: !823, size: 256, offset: 1536)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3652, file: !3602, line: 82, baseType: !728, size: 256, offset: 1792)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3652, file: !3602, line: 84, baseType: !70, size: 32, offset: 2048)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3652, file: !3602, line: 87, baseType: !60, size: 64, offset: 2112)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3652, file: !3602, line: 88, baseType: !60, size: 64, offset: 2176)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3652, file: !3602, line: 89, baseType: !3677, size: 704, offset: 2240)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1551, line: 111, size: 704, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3684}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3677, file: !1551, line: 112, baseType: !1550, size: 256)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3677, file: !1551, line: 113, baseType: !2288, size: 320, offset: 256)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3677, file: !1551, line: 116, baseType: !3682, size: 64, offset: 576)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1551, line: 18, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3677, file: !1551, line: 117, baseType: !43, size: 32, offset: 640)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3652, file: !3602, line: 90, baseType: !3600, size: 64, offset: 2944)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !449, file: !6, line: 515, baseType: !3687, size: 64, offset: 8064)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3689, line: 117, size: 128, elements: !3690)
!3689 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3690 = !{!3691, !3692, !3693}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3688, file: !3689, line: 118, baseType: !1252, size: 32)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3688, file: !3689, line: 119, baseType: !1252, size: 32, offset: 32)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3688, file: !3689, line: 120, baseType: !536, size: 64, offset: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !449, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !449, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !449, file: !6, line: 520, baseType: !3697, size: 64, offset: 8192)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !449, file: !6, line: 523, baseType: !3699, size: 64, offset: 8256)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !449, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !449, file: !6, line: 525, baseType: !3704, size: 64, offset: 8384)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !449, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !449, file: !6, line: 533, baseType: !41, size: 64, offset: 8512)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !449, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !449, file: !6, line: 535, baseType: !3711, size: 64, offset: 8640)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !449, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !449, file: !6, line: 539, baseType: !43, size: 32, offset: 8736)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !449, file: !6, line: 540, baseType: !3715, size: 64, offset: 8768)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3717, line: 32, size: 64, elements: !3718)
!3717 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3718 = !{!3719, !3720}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3716, file: !3717, line: 33, baseType: !1252, size: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3716, file: !3717, line: 34, baseType: !1252, size: 32, offset: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !449, file: !6, line: 563, baseType: !118, size: 128, offset: 8832)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !449, file: !6, line: 565, baseType: !118, size: 128, offset: 8960)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !449, file: !6, line: 568, baseType: !3724, size: 64, offset: 9088)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !449, file: !6, line: 570, baseType: !70, size: 32, offset: 9152)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !173, line: 2382, baseType: !424, size: 64, offset: 448)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !425, file: !173, line: 2383, baseType: !870, size: 64, offset: 512)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !425, file: !173, line: 2385, baseType: !3729, offset: 576)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !3649, line: 206, elements: !797)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !425, file: !173, line: 2386, baseType: !3729, offset: 576)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !425, file: !173, line: 2387, baseType: !3729, offset: 576)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !425, file: !173, line: 2388, baseType: !3733, offset: 576)
!3733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3729, elements: !502)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !425, file: !173, line: 2390, baseType: !3729, offset: 576)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !425, file: !173, line: 2391, baseType: !3729, offset: 576)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !425, file: !173, line: 2392, baseType: !3729, offset: 576)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !425, file: !173, line: 2393, baseType: !3729, offset: 576)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !414, file: !173, line: 1197, baseType: !3739, size: 64, offset: 384)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3741)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !173, line: 2057, size: 1664, elements: !3742)
!3742 = !{!3743, !3747, !3751, !3752, !3756, !3760, !3764, !3765, !3766, !3770, !3774, !3778, !3779, !3780, !3786, !3790, !3791, !3795, !3796, !3797, !3798, !3802, !3806, !3853, !3868, !3869}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3741, file: !173, line: 2058, baseType: !3744, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!263, !413}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3741, file: !173, line: 2059, baseType: !3748, size: 64, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{null, !263}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3741, file: !173, line: 2060, baseType: !3748, size: 64, offset: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3741, file: !173, line: 2062, baseType: !3753, size: 64, offset: 192)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{null, !263, !43}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3741, file: !173, line: 2063, baseType: !3757, size: 64, offset: 256)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!43, !263, !3087}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3741, file: !173, line: 2064, baseType: !3761, size: 64, offset: 320)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!43, !263}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3741, file: !173, line: 2065, baseType: !3748, size: 64, offset: 384)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3741, file: !173, line: 2066, baseType: !444, size: 64, offset: 448)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3741, file: !173, line: 2067, baseType: !3767, size: 64, offset: 512)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!43, !413, !43}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3741, file: !173, line: 2068, baseType: !3771, size: 64, offset: 576)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!43, !413, !172}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3741, file: !173, line: 2069, baseType: !3775, size: 64, offset: 640)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!43, !413}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3741, file: !173, line: 2070, baseType: !3771, size: 64, offset: 704)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3741, file: !173, line: 2071, baseType: !3775, size: 64, offset: 768)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3741, file: !173, line: 2072, baseType: !3781, size: 64, offset: 832)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!43, !298, !3784}
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !173, line: 62, flags: DIFlagFwdDecl)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3741, file: !173, line: 2073, baseType: !3787, size: 64, offset: 896)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!43, !413, !1292, !402}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3741, file: !173, line: 2074, baseType: !444, size: 64, offset: 960)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3741, file: !173, line: 2076, baseType: !3792, size: 64, offset: 1024)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!43, !2733, !298}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3741, file: !173, line: 2077, baseType: !3792, size: 64, offset: 1088)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3741, file: !173, line: 2078, baseType: !3792, size: 64, offset: 1152)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3741, file: !173, line: 2079, baseType: !3792, size: 64, offset: 1216)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3741, file: !173, line: 2081, baseType: !3799, size: 64, offset: 1280)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!533, !413, !43, !402, !56, !62}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3741, file: !173, line: 2082, baseType: !3803, size: 64, offset: 1344)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!533, !413, !43, !37, !56, !62}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3741, file: !173, line: 2083, baseType: !3807, size: 64, offset: 1408)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!3810, !263}
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !178, line: 296, size: 1664, elements: !3813)
!3813 = !{!3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3838, !3839, !3840}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3812, file: !178, line: 297, baseType: !874, size: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3812, file: !178, line: 298, baseType: !118, size: 128, offset: 128)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3812, file: !178, line: 299, baseType: !118, size: 128, offset: 256)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3812, file: !178, line: 300, baseType: !118, size: 128, offset: 384)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3812, file: !178, line: 301, baseType: !823, size: 256, offset: 512)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3812, file: !178, line: 302, baseType: !80, size: 32, offset: 768)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3812, file: !178, line: 303, baseType: !70, size: 32, offset: 800)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3812, file: !178, line: 304, baseType: !413, size: 64, offset: 832)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3812, file: !178, line: 305, baseType: !3823, size: 64, offset: 896)
!3823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !178, line: 68, size: 64, elements: !3824)
!3824 = !{!3825, !3837}
!3825 = !DIDerivedType(tag: DW_TAG_member, scope: !3823, file: !178, line: 69, baseType: !3826, size: 32)
!3826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3823, file: !178, line: 69, size: 32, elements: !3827)
!3827 = !{!3828, !3829, !3830}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3826, file: !178, line: 70, baseType: !269, size: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3826, file: !178, line: 71, baseType: !278, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3826, file: !178, line: 72, baseType: !3831, size: 32)
!3831 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3832, line: 24, baseType: !3833)
!3832 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3833 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3832, line: 22, size: 32, elements: !3834)
!3834 = !{!3835}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3833, file: !3832, line: 23, baseType: !3836, size: 32)
!3836 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3832, line: 20, baseType: !275)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3823, file: !178, line: 74, baseType: !177, size: 32, offset: 32)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3812, file: !178, line: 306, baseType: !62, size: 64, offset: 960)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3812, file: !178, line: 307, baseType: !60, size: 64, offset: 1024)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3812, file: !178, line: 308, baseType: !3841, size: 576, offset: 1088)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !178, line: 205, size: 576, elements: !3842)
!3842 = !{!3843, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3841, file: !178, line: 206, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !178, line: 66, baseType: !64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3841, file: !178, line: 207, baseType: !3844, size: 64, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3841, file: !178, line: 208, baseType: !3844, size: 64, offset: 128)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3841, file: !178, line: 209, baseType: !3844, size: 64, offset: 192)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3841, file: !178, line: 210, baseType: !3844, size: 64, offset: 256)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3841, file: !178, line: 211, baseType: !3844, size: 64, offset: 320)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3841, file: !178, line: 212, baseType: !3844, size: 64, offset: 384)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3841, file: !178, line: 213, baseType: !1378, size: 64, offset: 448)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3841, file: !178, line: 214, baseType: !1378, size: 64, offset: 512)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3741, file: !173, line: 2085, baseType: !3854, size: 64, offset: 1472)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!536, !413, !3857}
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3859, line: 15, size: 256, elements: !3860)
!3859 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3860 = !{!3861, !3862, !3863, !3864, !3865}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3858, file: !3859, line: 16, baseType: !581, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3858, file: !3859, line: 19, baseType: !43, size: 32, offset: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3858, file: !3859, line: 26, baseType: !60, size: 64, offset: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3858, file: !3859, line: 33, baseType: !60, size: 64, offset: 128)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3858, file: !3859, line: 36, baseType: !3866, size: 64, offset: 192)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !3859, line: 36, flags: DIFlagFwdDecl)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3741, file: !173, line: 2087, baseType: !3854, size: 64, offset: 1536)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3741, file: !173, line: 2089, baseType: !444, size: 64, offset: 1600)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !414, file: !173, line: 1198, baseType: !3871, size: 64, offset: 448)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3873)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !178, line: 324, size: 704, elements: !3874)
!3874 = !{!3875, !3879, !3883, !3887, !3888, !3889, !3890, !3891, !3896, !3901, !3905}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3873, file: !178, line: 325, baseType: !3876, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!43, !3811}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3873, file: !178, line: 326, baseType: !3880, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!3811, !413, !43}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3873, file: !178, line: 327, baseType: !3884, size: 64, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{null, !3811}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3873, file: !178, line: 328, baseType: !3876, size: 64, offset: 192)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3873, file: !178, line: 329, baseType: !3876, size: 64, offset: 256)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3873, file: !178, line: 330, baseType: !3876, size: 64, offset: 320)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3873, file: !178, line: 331, baseType: !3767, size: 64, offset: 384)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3873, file: !178, line: 334, baseType: !3892, size: 64, offset: 448)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!3895, !263}
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3873, file: !178, line: 335, baseType: !3897, size: 64, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!43, !263, !3900}
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3873, file: !178, line: 337, baseType: !3902, size: 64, offset: 576)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!43, !263, !3895}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3873, file: !178, line: 339, baseType: !3906, size: 64, offset: 640)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!43, !413, !3909}
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !414, file: !173, line: 1199, baseType: !3911, size: 64, offset: 512)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3913)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !178, line: 430, size: 704, elements: !3914)
!3914 = !{!3915, !3921, !3922, !3926, !3927, !3928, !3943, !3966, !3970, !3971, !3994}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3913, file: !178, line: 431, baseType: !3916, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!43, !413, !43, !43, !3919}
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2578)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3913, file: !178, line: 432, baseType: !3767, size: 64, offset: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3913, file: !178, line: 433, baseType: !3923, size: 64, offset: 128)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!43, !413, !7}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3913, file: !178, line: 434, baseType: !3923, size: 64, offset: 192)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3913, file: !178, line: 435, baseType: !3767, size: 64, offset: 256)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3913, file: !178, line: 436, baseType: !3929, size: 64, offset: 320)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!43, !413, !43, !3932}
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !178, line: 417, size: 256, elements: !3934)
!3934 = !{!3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3933, file: !178, line: 418, baseType: !43, size: 32)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3933, file: !178, line: 419, baseType: !7, size: 32, offset: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3933, file: !178, line: 420, baseType: !7, size: 32, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3933, file: !178, line: 422, baseType: !7, size: 32, offset: 96)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3933, file: !178, line: 423, baseType: !7, size: 32, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3933, file: !178, line: 424, baseType: !7, size: 32, offset: 160)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3933, file: !178, line: 425, baseType: !7, size: 32, offset: 192)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3933, file: !178, line: 426, baseType: !7, size: 32, offset: 224)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3913, file: !178, line: 437, baseType: !3944, size: 64, offset: 384)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!43, !413, !3823, !3947}
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !178, line: 345, size: 960, elements: !3949)
!3949 = !{!3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3948, file: !178, line: 346, baseType: !43, size: 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3948, file: !178, line: 347, baseType: !334, size: 64, offset: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3948, file: !178, line: 348, baseType: !334, size: 64, offset: 128)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3948, file: !178, line: 349, baseType: !334, size: 64, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3948, file: !178, line: 350, baseType: !334, size: 64, offset: 256)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3948, file: !178, line: 351, baseType: !334, size: 64, offset: 320)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3948, file: !178, line: 352, baseType: !334, size: 64, offset: 384)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3948, file: !178, line: 353, baseType: !594, size: 64, offset: 448)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3948, file: !178, line: 355, baseType: !594, size: 64, offset: 512)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3948, file: !178, line: 356, baseType: !43, size: 32, offset: 576)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3948, file: !178, line: 357, baseType: !43, size: 32, offset: 608)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3948, file: !178, line: 358, baseType: !334, size: 64, offset: 640)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3948, file: !178, line: 359, baseType: !334, size: 64, offset: 704)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3948, file: !178, line: 360, baseType: !334, size: 64, offset: 768)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3948, file: !178, line: 361, baseType: !594, size: 64, offset: 832)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3948, file: !178, line: 362, baseType: !43, size: 32, offset: 896)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3913, file: !178, line: 438, baseType: !3967, size: 64, offset: 448)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!43, !413, !3909, !3947}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3913, file: !178, line: 440, baseType: !3944, size: 64, offset: 512)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3913, file: !178, line: 441, baseType: !3972, size: 64, offset: 576)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!43, !413, !3975}
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !178, line: 411, size: 1408, elements: !3977)
!3977 = !{!3978, !3979}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3976, file: !178, line: 412, baseType: !7, size: 32)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3976, file: !178, line: 413, baseType: !3980, size: 1344, offset: 64)
!3980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3981, size: 1344, elements: !502)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !178, line: 397, size: 448, elements: !3982)
!3982 = !{!3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3993}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3981, file: !178, line: 398, baseType: !7, size: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3981, file: !178, line: 399, baseType: !7, size: 32, offset: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3981, file: !178, line: 401, baseType: !7, size: 32, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3981, file: !178, line: 402, baseType: !7, size: 32, offset: 96)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3981, file: !178, line: 403, baseType: !7, size: 32, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3981, file: !178, line: 404, baseType: !7, size: 32, offset: 160)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3981, file: !178, line: 405, baseType: !7, size: 32, offset: 192)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3981, file: !178, line: 406, baseType: !336, size: 64, offset: 256)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3981, file: !178, line: 407, baseType: !3992, size: 64, offset: 320)
!3992 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !46, line: 132, baseType: !334)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3981, file: !178, line: 408, baseType: !3992, size: 64, offset: 384)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3913, file: !178, line: 442, baseType: !3923, size: 64, offset: 640)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !414, file: !173, line: 1200, baseType: !3996, size: 64, offset: 576)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3998)
!3998 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !173, line: 54, flags: DIFlagFwdDecl)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !414, file: !173, line: 1201, baseType: !60, size: 64, offset: 640)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !414, file: !173, line: 1202, baseType: !60, size: 64, offset: 704)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !414, file: !173, line: 1203, baseType: !60, size: 64, offset: 768)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !414, file: !173, line: 1204, baseType: !298, size: 64, offset: 832)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !414, file: !173, line: 1205, baseType: !584, size: 320, offset: 896)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !414, file: !173, line: 1206, baseType: !43, size: 32, offset: 1216)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !414, file: !173, line: 1207, baseType: !70, size: 32, offset: 1248)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !414, file: !173, line: 1209, baseType: !41, size: 64, offset: 1280)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !414, file: !173, line: 1211, baseType: !4008, size: 64, offset: 1344)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4011)
!4011 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !173, line: 1211, flags: DIFlagFwdDecl)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !414, file: !173, line: 1223, baseType: !4013, size: 64, offset: 1408)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !315, line: 34, size: 64, elements: !4014)
!4014 = !{!4015}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4013, file: !315, line: 35, baseType: !318, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !414, file: !173, line: 1224, baseType: !118, size: 128, offset: 1472)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !414, file: !173, line: 1225, baseType: !4018, size: 64, offset: 1600)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !173, line: 1225, flags: DIFlagFwdDecl)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !414, file: !173, line: 1226, baseType: !4021, size: 64, offset: 1664)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !173, line: 1226, flags: DIFlagFwdDecl)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !414, file: !173, line: 1227, baseType: !4024, size: 64, offset: 1728)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !173, line: 50, flags: DIFlagFwdDecl)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !414, file: !173, line: 1228, baseType: !4027, size: 64, offset: 1792)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !173, line: 1228, flags: DIFlagFwdDecl)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !414, file: !173, line: 1229, baseType: !874, size: 128, offset: 1856)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !414, file: !173, line: 1230, baseType: !7, size: 32, offset: 1984)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !414, file: !173, line: 1231, baseType: !4032, size: 2496, offset: 2048)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !178, line: 521, size: 2496, elements: !4033)
!4033 = !{!4034, !4035, !4036, !4038, !4070}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4032, file: !178, line: 522, baseType: !7, size: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !4032, file: !178, line: 523, baseType: !584, size: 320, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !4032, file: !178, line: 524, baseType: !4037, size: 192, offset: 384)
!4037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 192, elements: !502)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4032, file: !178, line: 525, baseType: !4039, size: 1728, offset: 576)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4040, size: 1728, elements: !502)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !178, line: 222, size: 576, elements: !4041)
!4041 = !{!4042, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !4040, file: !178, line: 223, baseType: !4043, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !178, line: 445, size: 256, elements: !4045)
!4045 = !{!4046, !4047, !4060, !4061}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !4044, file: !178, line: 446, baseType: !43, size: 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !4044, file: !178, line: 447, baseType: !4048, size: 64, offset: 64)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4050)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !178, line: 312, size: 512, elements: !4051)
!4051 = !{!4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !4050, file: !178, line: 313, baseType: !3767, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !4050, file: !178, line: 314, baseType: !3767, size: 64, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !4050, file: !178, line: 315, baseType: !3767, size: 64, offset: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !4050, file: !178, line: 316, baseType: !3767, size: 64, offset: 192)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !4050, file: !178, line: 317, baseType: !3876, size: 64, offset: 256)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !4050, file: !178, line: 318, baseType: !3876, size: 64, offset: 320)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !4050, file: !178, line: 319, baseType: !3876, size: 64, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !4050, file: !178, line: 320, baseType: !3906, size: 64, offset: 448)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !4044, file: !178, line: 448, baseType: !448, size: 64, offset: 128)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !4044, file: !178, line: 449, baseType: !4043, size: 64, offset: 192)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !4040, file: !178, line: 224, baseType: !43, size: 32, offset: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !4040, file: !178, line: 226, baseType: !118, size: 128, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !4040, file: !178, line: 227, baseType: !60, size: 64, offset: 256)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !4040, file: !178, line: 228, baseType: !7, size: 32, offset: 320)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !4040, file: !178, line: 229, baseType: !7, size: 32, offset: 352)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !4040, file: !178, line: 230, baseType: !3844, size: 64, offset: 384)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !4040, file: !178, line: 231, baseType: !3844, size: 64, offset: 448)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !4040, file: !178, line: 232, baseType: !41, size: 64, offset: 512)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4032, file: !178, line: 526, baseType: !4071, size: 192, offset: 2304)
!4071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4048, size: 192, elements: !502)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !414, file: !173, line: 1233, baseType: !4073, size: 2368, offset: 4544)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !173, line: 1184, size: 2368, elements: !4074)
!4074 = !{!4075, !4076, !4077}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !4073, file: !173, line: 1185, baseType: !47, size: 16)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !4073, file: !173, line: 1186, baseType: !47, size: 16, offset: 16)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !4073, file: !173, line: 1187, baseType: !4078, size: 2304, offset: 64)
!4078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4079, size: 2304, elements: !502)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !4080, line: 12, size: 768, elements: !4081)
!4080 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!4081 = !{!4082, !4090, !4091, !4096, !4097}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !4079, file: !4080, line: 13, baseType: !4083, size: 384)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !4084, line: 17, size: 384, elements: !4085)
!4084 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!4085 = !{!4086, !4087, !4088, !4089}
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !4083, file: !4084, line: 18, baseType: !43, size: 32)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !4083, file: !4084, line: 19, baseType: !43, size: 32, offset: 32)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !4083, file: !4084, line: 20, baseType: !75, size: 192, offset: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !4083, file: !4084, line: 22, baseType: !718, size: 128, align: 64, offset: 256)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !4079, file: !4080, line: 14, baseType: !3487, size: 64, offset: 384)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !4079, file: !4080, line: 15, baseType: !4092, size: 64, offset: 448)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4093, line: 16, size: 64, elements: !4094)
!4093 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4094 = !{!4095}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4092, file: !4093, line: 17, baseType: !904, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4079, file: !4080, line: 16, baseType: !75, size: 192, offset: 512)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4079, file: !4080, line: 17, baseType: !70, size: 32, offset: 704)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !414, file: !173, line: 1240, baseType: !41, size: 64, offset: 6912)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !414, file: !173, line: 1243, baseType: !226, size: 32, offset: 6976)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !414, file: !173, line: 1245, baseType: !1378, size: 64, offset: 7040)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !414, file: !173, line: 1246, baseType: !1378, size: 64, offset: 7104)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !414, file: !173, line: 1248, baseType: !227, size: 32, offset: 7168)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !414, file: !173, line: 1249, baseType: !1749, size: 64, offset: 7232)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !414, file: !173, line: 1252, baseType: !4105, size: 256, offset: 7296)
!4105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !343)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !414, file: !173, line: 1253, baseType: !4107, size: 128, offset: 7552)
!4107 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4108, line: 21, baseType: !4109)
!4108 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4108, line: 19, size: 128, elements: !4110)
!4110 = !{!4111}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4109, file: !4108, line: 20, baseType: !4112, size: 128)
!4112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 128, elements: !1660)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !414, file: !173, line: 1255, baseType: !7, size: 32, offset: 7680)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !414, file: !173, line: 1261, baseType: !823, size: 256, offset: 7744)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !414, file: !173, line: 1267, baseType: !37, size: 64, offset: 8000)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !414, file: !173, line: 1269, baseType: !359, size: 64, offset: 8064)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !414, file: !173, line: 1271, baseType: !4118, size: 448, offset: 8128)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3859, line: 63, size: 448, elements: !4119)
!4119 = !{!4120, !4125, !4126, !4127, !4128, !4129, !4130}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4118, file: !3859, line: 64, baseType: !4121, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!60, !4124, !3857}
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4118, file: !3859, line: 66, baseType: !4121, size: 64, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4118, file: !3859, line: 69, baseType: !536, size: 64, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4118, file: !3859, line: 70, baseType: !43, size: 32, offset: 192)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4118, file: !3859, line: 71, baseType: !7, size: 32, offset: 224)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4118, file: !3859, line: 74, baseType: !118, size: 128, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4118, file: !3859, line: 85, baseType: !4131, size: 64, offset: 384)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !414, file: !173, line: 1274, baseType: !588, size: 64, offset: 8576)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !414, file: !173, line: 1280, baseType: !588, size: 64, offset: 8640)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !414, file: !173, line: 1283, baseType: !43, size: 32, offset: 8704)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !414, file: !173, line: 1286, baseType: !2797, size: 32, offset: 8736)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !414, file: !173, line: 1289, baseType: !3682, size: 64, offset: 8768)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !414, file: !173, line: 1290, baseType: !870, size: 64, offset: 8832)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !414, file: !173, line: 1297, baseType: !1501, size: 64, offset: 8896)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !414, file: !173, line: 1304, baseType: !4140, size: 64, offset: 8960)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4141, line: 49, size: 64, elements: !4142)
!4141 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4142 = !{!4143}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4140, file: !4141, line: 50, baseType: !4144, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4141, line: 41, size: 512, align: 512, elements: !4146)
!4146 = !{!4147, !4148, !4153}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4145, file: !4141, line: 43, baseType: !80, size: 32)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4145, file: !4141, line: 45, baseType: !4149, size: 192, offset: 64)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4141, line: 29, size: 192, elements: !4150)
!4150 = !{!4151, !4152}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4149, file: !4141, line: 30, baseType: !118, size: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4149, file: !4141, line: 32, baseType: !536, size: 64, offset: 128)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4145, file: !4141, line: 46, baseType: !536, size: 64, offset: 256)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !414, file: !173, line: 1305, baseType: !4140, size: 64, offset: 9024)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !414, file: !173, line: 1306, baseType: !718, size: 128, align: 64, offset: 9088)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !414, file: !173, line: 1307, baseType: !1550, size: 256, offset: 9216)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !414, file: !173, line: 1309, baseType: !823, size: 256, offset: 9472)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !414, file: !173, line: 1314, baseType: !43, size: 32, offset: 9728)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !414, file: !173, line: 1317, baseType: !80, size: 32, align: 512, offset: 10240)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !414, file: !173, line: 1318, baseType: !118, size: 128, offset: 10304)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !414, file: !173, line: 1320, baseType: !80, size: 32, offset: 10432)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !414, file: !173, line: 1321, baseType: !118, size: 128, offset: 10496)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !408, file: !409, line: 73, baseType: !43, size: 32, offset: 128)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !408, file: !409, line: 74, baseType: !4165, size: 64, offset: 192)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1346, line: 42, flags: DIFlagFwdDecl)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !361, file: !300, line: 141, baseType: !4169, size: 64, offset: 704)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!43, !3919, !714}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !361, file: !300, line: 142, baseType: !4173, size: 64, offset: 768)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!298, !298, !4176}
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !299, file: !300, line: 96, baseType: !413, size: 64, offset: 832)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !299, file: !300, line: 97, baseType: !60, size: 64, offset: 896)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !299, file: !300, line: 98, baseType: !41, size: 64, offset: 960)
!4181 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !300, line: 100, baseType: !4182, size: 128, offset: 1024)
!4182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !300, line: 100, size: 128, elements: !4183)
!4183 = !{!4184, !4185}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4182, file: !300, line: 101, baseType: !118, size: 128)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4182, file: !300, line: 102, baseType: !2665, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !299, file: !300, line: 104, baseType: !118, size: 128, offset: 1152)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !299, file: !300, line: 105, baseType: !118, size: 128, offset: 1280)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !299, file: !300, line: 113, baseType: !4189, size: 128, offset: 1408)
!4189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !300, line: 109, size: 128, elements: !4190)
!4190 = !{!4191, !4192, !4193}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4189, file: !300, line: 110, baseType: !874, size: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4189, file: !300, line: 111, baseType: !314, size: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4189, file: !300, line: 112, baseType: !718, size: 128, align: 64)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !292, file: !173, line: 1968, baseType: !4195, size: 64, offset: 64)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!37, !298, !263, !4198}
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4200, line: 10, size: 128, elements: !4201)
!4200 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4201 = !{!4202, !4203}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4199, file: !4200, line: 11, baseType: !3280, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4199, file: !4200, line: 12, baseType: !41, size: 64, offset: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !292, file: !173, line: 1969, baseType: !4205, size: 64, offset: 128)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!43, !4165, !263, !43}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !292, file: !173, line: 1970, baseType: !4209, size: 64, offset: 192)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!286, !263, !43, !714}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !292, file: !173, line: 1972, baseType: !4213, size: 64, offset: 256)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!43, !298, !402, !43}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !292, file: !173, line: 1974, baseType: !4217, size: 64, offset: 320)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!43, !4165, !263, !298, !45, !714}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !292, file: !173, line: 1976, baseType: !4221, size: 64, offset: 384)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!43, !298, !263, !298}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !292, file: !173, line: 1977, baseType: !4225, size: 64, offset: 448)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!43, !263, !298}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !292, file: !173, line: 1978, baseType: !4229, size: 64, offset: 512)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!43, !4165, !263, !298, !37}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !292, file: !173, line: 1980, baseType: !4233, size: 64, offset: 576)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!43, !4165, !263, !298, !45}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !292, file: !173, line: 1982, baseType: !4225, size: 64, offset: 640)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !292, file: !173, line: 1983, baseType: !4238, size: 64, offset: 704)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!43, !4165, !263, !298, !45, !418}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !292, file: !173, line: 1985, baseType: !4242, size: 64, offset: 768)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{!43, !4165, !263, !298, !263, !298, !7}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !292, file: !173, line: 1987, baseType: !4246, size: 64, offset: 832)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!43, !4165, !298, !4249}
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !173, line: 226, size: 640, elements: !4251)
!4251 = !{!4252, !4253, !4254, !4264, !4273, !4274, !4279, !4280, !4281}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4250, file: !173, line: 227, baseType: !7, size: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4250, file: !173, line: 228, baseType: !45, size: 16, offset: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, scope: !4250, file: !173, line: 241, baseType: !4255, size: 32, offset: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4250, file: !173, line: 241, size: 32, elements: !4256)
!4256 = !{!4257, !4258}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4255, file: !173, line: 242, baseType: !269, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4255, file: !173, line: 243, baseType: !4259, size: 32)
!4259 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4260, line: 16, baseType: !4261)
!4260 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4260, line: 14, size: 32, elements: !4262)
!4262 = !{!4263}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4261, file: !4260, line: 15, baseType: !274, size: 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, scope: !4250, file: !173, line: 245, baseType: !4265, size: 32, offset: 96)
!4265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4250, file: !173, line: 245, size: 32, elements: !4266)
!4266 = !{!4267, !4268}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4265, file: !173, line: 246, baseType: !278, size: 32)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4265, file: !173, line: 247, baseType: !4269, size: 32)
!4269 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4260, line: 20, baseType: !4270)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4260, line: 18, size: 32, elements: !4271)
!4271 = !{!4272}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4270, file: !4260, line: 19, baseType: !282, size: 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4250, file: !173, line: 249, baseType: !62, size: 64, offset: 128)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4250, file: !173, line: 250, baseType: !4275, size: 128, offset: 192)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1379, line: 13, size: 128, elements: !4276)
!4276 = !{!4277, !4278}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4275, file: !1379, line: 14, baseType: !1378, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4275, file: !1379, line: 15, baseType: !536, size: 64, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4250, file: !173, line: 251, baseType: !4275, size: 128, offset: 320)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4250, file: !173, line: 252, baseType: !4275, size: 128, offset: 448)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4250, file: !173, line: 259, baseType: !804, size: 64, offset: 576)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !292, file: !173, line: 1988, baseType: !4283, size: 64, offset: 896)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!43, !4165, !3919, !4286, !226, !7}
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4288, line: 22, size: 1280, elements: !4289)
!4288 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4289 = !{!4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4287, file: !4288, line: 23, baseType: !226, size: 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4287, file: !4288, line: 24, baseType: !45, size: 16, offset: 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4287, file: !4288, line: 25, baseType: !7, size: 32, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4287, file: !4288, line: 26, baseType: !1386, size: 32, offset: 96)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4287, file: !4288, line: 27, baseType: !334, size: 64, offset: 128)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4287, file: !4288, line: 28, baseType: !334, size: 64, offset: 192)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4287, file: !4288, line: 41, baseType: !334, size: 64, offset: 256)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4287, file: !4288, line: 42, baseType: !418, size: 32, offset: 320)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4287, file: !4288, line: 43, baseType: !418, size: 32, offset: 352)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4287, file: !4288, line: 44, baseType: !269, size: 32, offset: 384)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4287, file: !4288, line: 45, baseType: !278, size: 32, offset: 416)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4287, file: !4288, line: 46, baseType: !62, size: 64, offset: 448)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4287, file: !4288, line: 47, baseType: !4275, size: 128, offset: 512)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4287, file: !4288, line: 48, baseType: !4275, size: 128, offset: 640)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4287, file: !4288, line: 49, baseType: !4275, size: 128, offset: 768)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4287, file: !4288, line: 50, baseType: !4275, size: 128, offset: 896)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4287, file: !4288, line: 51, baseType: !334, size: 64, offset: 1024)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4287, file: !4288, line: 52, baseType: !334, size: 64, offset: 1088)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4287, file: !4288, line: 53, baseType: !226, size: 32, offset: 1152)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4287, file: !4288, line: 54, baseType: !226, size: 32, offset: 1184)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4287, file: !4288, line: 55, baseType: !334, size: 64, offset: 1216)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !292, file: !173, line: 1990, baseType: !4312, size: 64, offset: 960)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!533, !298, !402, !56}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !292, file: !173, line: 1991, baseType: !4316, size: 64, offset: 1024)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!43, !263, !4319, !334, !334}
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !173, line: 55, flags: DIFlagFwdDecl)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !292, file: !173, line: 1993, baseType: !4322, size: 64, offset: 1088)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!43, !263, !43}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !292, file: !173, line: 1994, baseType: !4326, size: 64, offset: 1152)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!43, !263, !298, !804, !7, !45}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !292, file: !173, line: 1997, baseType: !4330, size: 64, offset: 1216)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!43, !4165, !263, !804, !45}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !292, file: !173, line: 1999, baseType: !4334, size: 64, offset: 1280)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!286, !4165, !298, !43}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !292, file: !173, line: 2001, baseType: !4338, size: 64, offset: 1344)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!43, !4165, !298, !286, !43}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !292, file: !173, line: 2003, baseType: !4342, size: 64, offset: 1408)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!43, !4165, !298, !4345}
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !173, line: 76, flags: DIFlagFwdDecl)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !292, file: !173, line: 2005, baseType: !4348, size: 64, offset: 1472)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!43, !298, !4345}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !292, file: !173, line: 2006, baseType: !4352, size: 64, offset: 1536)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!4355, !263}
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !173, line: 3192, size: 192, elements: !4357)
!4357 = !{!4358, !4359}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4356, file: !173, line: 3193, baseType: !576, size: 128)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4356, file: !173, line: 3194, baseType: !226, size: 32, offset: 128)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !264, file: !173, line: 655, baseType: !413, size: 64, offset: 448)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !264, file: !173, line: 656, baseType: !571, size: 64, offset: 512)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !264, file: !173, line: 659, baseType: !41, size: 64, offset: 576)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !264, file: !173, line: 663, baseType: !60, size: 64, offset: 640)
!4364 = !DIDerivedType(tag: DW_TAG_member, scope: !264, file: !173, line: 671, baseType: !4365, size: 32, offset: 704)
!4365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !264, file: !173, line: 671, size: 32, elements: !4366)
!4366 = !{!4367, !4369}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4365, file: !173, line: 672, baseType: !4368, size: 32)
!4368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4365, file: !173, line: 673, baseType: !7, size: 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !264, file: !173, line: 675, baseType: !418, size: 32, offset: 736)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !264, file: !173, line: 676, baseType: !62, size: 64, offset: 768)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !264, file: !173, line: 677, baseType: !4275, size: 128, offset: 832)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !264, file: !173, line: 678, baseType: !4275, size: 128, offset: 960)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !264, file: !173, line: 679, baseType: !4275, size: 128, offset: 1088)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !264, file: !173, line: 680, baseType: !80, size: 32, offset: 1216)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !264, file: !173, line: 681, baseType: !47, size: 16, offset: 1248)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !264, file: !173, line: 682, baseType: !104, size: 8, offset: 1264)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !264, file: !173, line: 683, baseType: !104, size: 8, offset: 1272)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !264, file: !173, line: 684, baseType: !3992, size: 64, offset: 1280)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !264, file: !173, line: 691, baseType: !60, size: 64, offset: 1344)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !264, file: !173, line: 692, baseType: !584, size: 320, offset: 1408)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !264, file: !173, line: 694, baseType: !60, size: 64, offset: 1728)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !264, file: !173, line: 695, baseType: !60, size: 64, offset: 1792)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !264, file: !173, line: 697, baseType: !874, size: 128, offset: 1856)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !264, file: !173, line: 698, baseType: !118, size: 128, offset: 1984)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !264, file: !173, line: 707, baseType: !118, size: 128, offset: 2112)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !264, file: !173, line: 708, baseType: !118, size: 128, offset: 2240)
!4388 = !DIDerivedType(tag: DW_TAG_member, scope: !264, file: !173, line: 709, baseType: !4389, size: 128, offset: 2368)
!4389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !264, file: !173, line: 709, size: 128, elements: !4390)
!4390 = !{!4391, !4392}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4389, file: !173, line: 710, baseType: !870, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4389, file: !173, line: 711, baseType: !718, size: 128, align: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !264, file: !173, line: 713, baseType: !590, size: 64, offset: 2496)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !264, file: !173, line: 714, baseType: !590, size: 64, offset: 2560)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !264, file: !173, line: 715, baseType: !70, size: 32, offset: 2624)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !264, file: !173, line: 716, baseType: !70, size: 32, offset: 2656)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !264, file: !173, line: 717, baseType: !70, size: 32, offset: 2688)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !264, file: !173, line: 719, baseType: !70, size: 32, offset: 2720)
!4399 = !DIDerivedType(tag: DW_TAG_member, scope: !264, file: !173, line: 721, baseType: !4400, size: 64, offset: 2752)
!4400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !264, file: !173, line: 721, size: 64, elements: !4401)
!4401 = !{!4402, !4403}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4400, file: !173, line: 722, baseType: !2585, size: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4400, file: !173, line: 723, baseType: !3748, size: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !264, file: !173, line: 725, baseType: !4405, size: 64, offset: 2816)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !173, line: 725, flags: DIFlagFwdDecl)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !264, file: !173, line: 726, baseType: !572, size: 1536, align: 64, offset: 2880)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !264, file: !173, line: 727, baseType: !118, size: 128, offset: 4416)
!4409 = !DIDerivedType(tag: DW_TAG_member, scope: !264, file: !173, line: 728, baseType: !4410, size: 64, offset: 4544)
!4410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !264, file: !173, line: 728, size: 64, elements: !4411)
!4411 = !{!4412, !4413, !4416, !4417}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4410, file: !173, line: 729, baseType: !2189, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4410, file: !173, line: 730, baseType: !4414, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4415, size: 64)
!4415 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !173, line: 730, flags: DIFlagFwdDecl)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4410, file: !173, line: 731, baseType: !402, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4410, file: !173, line: 732, baseType: !7, size: 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !264, file: !173, line: 735, baseType: !227, size: 32, offset: 4608)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !264, file: !173, line: 738, baseType: !227, size: 32, offset: 4640)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !264, file: !173, line: 739, baseType: !1749, size: 64, offset: 4672)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !264, file: !173, line: 750, baseType: !41, size: 64, offset: 4736)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_iter_info", file: !191, line: 400, size: 448, elements: !4424)
!4424 = !{!4425, !4439, !4440, !4441}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "marks", scope: !4423, file: !191, line: 401, baseType: !4426, size: 320)
!4426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4427, size: 320, elements: !1519)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark", file: !191, line: 502, size: 576, elements: !4429)
!4429 = !{!4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4428, file: !191, line: 504, baseType: !227, size: 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4428, file: !191, line: 507, baseType: !861, size: 32, offset: 32)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !4428, file: !191, line: 510, baseType: !249, size: 64, offset: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "g_list", scope: !4428, file: !191, line: 514, baseType: !118, size: 128, offset: 128)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4428, file: !191, line: 516, baseType: !80, size: 32, offset: 256)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "obj_list", scope: !4428, file: !191, line: 518, baseType: !874, size: 128, offset: 320)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !4428, file: !191, line: 520, baseType: !1749, size: 64, offset: 448)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_mask", scope: !4428, file: !191, line: 522, baseType: !227, size: 32, offset: 512)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4428, file: !191, line: 533, baseType: !7, size: 32, offset: 544)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "current_group", scope: !4423, file: !191, line: 402, baseType: !249, size: 64, offset: 320)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "report_mask", scope: !4423, file: !191, line: 403, baseType: !7, size: 32, offset: 384)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4423, file: !191, line: 404, baseType: !43, size: 32, offset: 416)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "handle_inode_event", scope: !255, file: !191, line: 160, baseType: !4443, size: 64, offset: 64)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!43, !4427, !226, !263, !263, !379, !226}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "free_group_priv", scope: !255, file: !191, line: 163, baseType: !4447, size: 64, offset: 128)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{null, !249}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "freeing_mark", scope: !255, file: !191, line: 164, baseType: !4451, size: 64, offset: 192)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{null, !4427, !249}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "free_event", scope: !255, file: !191, line: 165, baseType: !4455, size: 64, offset: 256)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "free_mark", scope: !255, file: !191, line: 167, baseType: !4457, size: 64, offset: 320)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{null, !4427}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !250, file: !191, line: 196, baseType: !861, size: 32, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "notification_lock", scope: !250, file: !191, line: 199, baseType: !80, size: 32, offset: 96)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "notification_list", scope: !250, file: !191, line: 200, baseType: !118, size: 128, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "notification_waitq", scope: !250, file: !191, line: 201, baseType: !75, size: 192, offset: 256)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "q_len", scope: !250, file: !191, line: 202, baseType: !7, size: 32, offset: 448)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "max_events", scope: !250, file: !191, line: 203, baseType: !7, size: 32, offset: 480)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !250, file: !191, line: 211, baseType: !7, size: 32, offset: 512)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !250, file: !191, line: 212, baseType: !714, size: 8, offset: 544)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !250, file: !191, line: 217, baseType: !43, size: 32, offset: 576)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "owner_flags", scope: !250, file: !191, line: 218, baseType: !7, size: 32, offset: 608)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "mark_mutex", scope: !250, file: !191, line: 221, baseType: !823, size: 256, offset: 640)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "user_waits", scope: !250, file: !191, line: 222, baseType: !70, size: 32, offset: 896)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "marks_list", scope: !250, file: !191, line: 224, baseType: !118, size: 128, offset: 960)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "fsn_fa", scope: !250, file: !191, line: 226, baseType: !4474, size: 64, offset: 1088)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !173, line: 1083, size: 384, elements: !4476)
!4476 = !{!4477, !4478, !4479, !4480, !4481, !4482}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4475, file: !173, line: 1084, baseType: !836, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4475, file: !173, line: 1085, baseType: !43, size: 32, offset: 64)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4475, file: !173, line: 1086, baseType: !43, size: 32, offset: 96)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4475, file: !173, line: 1087, baseType: !4474, size: 64, offset: 128)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4475, file: !173, line: 1088, baseType: !804, size: 64, offset: 192)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4475, file: !173, line: 1089, baseType: !718, size: 128, align: 64, offset: 256)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_event", scope: !250, file: !191, line: 228, baseType: !189, size: 64, offset: 1152)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !250, file: !191, line: 232, baseType: !3866, size: 64, offset: 1216)
!4485 = !DIDerivedType(tag: DW_TAG_member, scope: !250, file: !191, line: 235, baseType: !4486, size: 320, offset: 1280)
!4486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !191, line: 235, size: 320, elements: !4487)
!4487 = !{!4488, !4489}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4486, file: !191, line: 236, baseType: !41, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "inotify_data", scope: !4486, file: !191, line: 242, baseType: !4490, size: 320)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inotify_group_private_data", file: !191, line: 238, size: 320, elements: !4491)
!4491 = !{!4492, !4493, !4494}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "idr_lock", scope: !4490, file: !191, line: 239, baseType: !80, size: 32)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !4490, file: !191, line: 240, baseType: !895, size: 192, offset: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4490, file: !191, line: 241, baseType: !1622, size: 64, offset: 256)
!4495 = !{!4496, !4497, !4498, !4502}
!4496 = !DILocalVariable(name: "group", arg: 1, scope: !246, file: !3, line: 50, type: !249)
!4497 = !DILocalVariable(name: "event", arg: 2, scope: !246, file: !3, line: 51, type: !189)
!4498 = !DILocalVariable(name: "__ret_warn_on", scope: !4499, file: !3, line: 64, type: !43)
!4499 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 64, column: 3)
!4500 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 62, column: 33)
!4501 = distinct !DILexicalBlock(scope: !246, file: !3, line: 62, column: 6)
!4502 = !DILocalVariable(name: "__flags", scope: !4503, file: !3, line: 64, type: !43)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !3, line: 64, column: 3)
!4504 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 64, column: 3)
!4505 = !DILocation(line: 50, column: 52, scope: !246)
!4506 = !DILocation(line: 51, column: 31, scope: !246)
!4507 = !DILocation(line: 54, column: 7, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !246, file: !3, line: 54, column: 6)
!4509 = !DILocation(line: 54, column: 13, scope: !4508)
!4510 = !DILocation(line: 54, column: 16, scope: !4508)
!4511 = !DILocation(line: 54, column: 25, scope: !4508)
!4512 = !DILocation(line: 54, column: 32, scope: !4508)
!4513 = !DILocation(line: 54, column: 22, scope: !4508)
!4514 = !DILocation(line: 54, column: 6, scope: !246)
!4515 = !DILocation(line: 55, column: 3, scope: !4508)
!4516 = !DILocation(line: 62, column: 19, scope: !4501)
!4517 = !DILocation(line: 62, column: 26, scope: !4501)
!4518 = !DILocation(line: 62, column: 7, scope: !4501)
!4519 = !DILocation(line: 62, column: 6, scope: !246)
!4520 = !DILocation(line: 63, column: 14, scope: !4500)
!4521 = !DILocation(line: 63, column: 21, scope: !4500)
!4522 = !DILocation(line: 63, column: 3, scope: !4500)
!4523 = !DILocation(line: 64, column: 3, scope: !4499)
!4524 = !DILocation(line: 64, column: 3, scope: !4504)
!4525 = !DILocation(line: 64, column: 3, scope: !4503)
!4526 = !DILocation(line: 64, column: 3, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 64, column: 3)
!4528 = !DILocation(line: 64, column: 3, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 64, column: 3)
!4530 = !{i64 2154538739, i64 2154538768, i64 2154538814, i64 2154538872, i64 2154538926, i64 2154538980, i64 2154539035, i64 2154539066, i64 2154539374, i64 2154539380, i64 2154539427, i64 2154539450, i64 2154539476}
!4531 = !DILocation(line: 64, column: 3, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 64, column: 3)
!4533 = !DILocation(line: 64, column: 3, scope: !4500)
!4534 = !DILocation(line: 65, column: 16, scope: !4500)
!4535 = !DILocation(line: 65, column: 23, scope: !4500)
!4536 = !DILocation(line: 65, column: 3, scope: !4500)
!4537 = !DILocation(line: 66, column: 2, scope: !4500)
!4538 = !DILocation(line: 67, column: 2, scope: !246)
!4539 = !DILocation(line: 67, column: 9, scope: !246)
!4540 = !DILocation(line: 67, column: 14, scope: !246)
!4541 = !DILocation(line: 67, column: 25, scope: !246)
!4542 = !DILocation(line: 67, column: 32, scope: !246)
!4543 = !DILocation(line: 68, column: 1, scope: !246)
!4544 = distinct !DISubprogram(name: "list_empty", scope: !4545, file: !4545, line: 371, type: !4546, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4550)
!4545 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!43, !4548}
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!4550 = !{!4551}
!4551 = !DILocalVariable(name: "head", arg: 1, scope: !4544, file: !4545, line: 371, type: !4548)
!4552 = !DILocation(line: 371, column: 54, scope: !4544)
!4553 = !DILocation(line: 373, column: 9, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4544, file: !4545, line: 373, column: 9)
!4555 = !DILocation(line: 373, column: 9, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4554, file: !4545, line: 373, column: 9)
!4557 = !DILocation(line: 373, column: 34, scope: !4544)
!4558 = !DILocation(line: 373, column: 31, scope: !4544)
!4559 = !DILocation(line: 373, column: 2, scope: !4544)
!4560 = distinct !DISubprogram(name: "spin_lock", scope: !4561, file: !4561, line: 349, type: !4562, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4564)
!4561 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4562 = !DISubroutineType(types: !4563)
!4563 = !{null, !3054}
!4564 = !{!4565}
!4565 = !DILocalVariable(name: "lock", arg: 1, scope: !4560, file: !4561, line: 349, type: !3054)
!4566 = !DILocation(line: 349, column: 51, scope: !4560)
!4567 = !DILocation(line: 351, column: 2, scope: !4560)
!4568 = !DILocation(line: 352, column: 1, scope: !4560)
!4569 = distinct !DISubprogram(name: "spin_unlock", scope: !4561, file: !4561, line: 389, type: !4562, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4570)
!4570 = !{!4571}
!4571 = !DILocalVariable(name: "lock", arg: 1, scope: !4569, file: !4561, line: 389, type: !3054)
!4572 = !DILocation(line: 389, column: 53, scope: !4569)
!4573 = !DILocation(line: 391, column: 2, scope: !4569)
!4574 = !DILocation(line: 392, column: 1, scope: !4569)
!4575 = distinct !DISubprogram(name: "fsnotify_insert_event", scope: !3, file: !3, line: 81, type: !4576, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4581)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!43, !249, !189, !4578, !4455}
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!43, !249, !189}
!4581 = !{!4582, !4583, !4584, !4585, !4586, !4587, !4588}
!4582 = !DILocalVariable(name: "group", arg: 1, scope: !4575, file: !3, line: 81, type: !249)
!4583 = !DILocalVariable(name: "event", arg: 2, scope: !4575, file: !3, line: 82, type: !189)
!4584 = !DILocalVariable(name: "merge", arg: 3, scope: !4575, file: !3, line: 83, type: !4578)
!4585 = !DILocalVariable(name: "insert", arg: 4, scope: !4575, file: !3, line: 85, type: !4455)
!4586 = !DILocalVariable(name: "ret", scope: !4575, file: !3, line: 88, type: !43)
!4587 = !DILocalVariable(name: "list", scope: !4575, file: !3, line: 89, type: !121)
!4588 = !DILabel(scope: !4575, name: "queue", file: !3, line: 120)
!4589 = !DILocation(line: 81, column: 50, scope: !4575)
!4590 = !DILocation(line: 82, column: 29, scope: !4575)
!4591 = !DILocation(line: 83, column: 12, scope: !4575)
!4592 = !DILocation(line: 85, column: 13, scope: !4575)
!4593 = !DILocation(line: 88, column: 2, scope: !4575)
!4594 = !DILocation(line: 88, column: 6, scope: !4575)
!4595 = !DILocation(line: 89, column: 2, scope: !4575)
!4596 = !DILocation(line: 89, column: 20, scope: !4575)
!4597 = !DILocation(line: 89, column: 28, scope: !4575)
!4598 = !DILocation(line: 89, column: 35, scope: !4575)
!4599 = !DILocation(line: 91, column: 2, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 91, column: 2)
!4601 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 91, column: 2)
!4602 = !DILocation(line: 91, column: 2, scope: !4601)
!4603 = !DILocation(line: 93, column: 13, scope: !4575)
!4604 = !DILocation(line: 93, column: 20, scope: !4575)
!4605 = !DILocation(line: 93, column: 2, scope: !4575)
!4606 = !DILocation(line: 95, column: 6, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 95, column: 6)
!4608 = !DILocation(line: 95, column: 13, scope: !4607)
!4609 = !{i8 0, i8 2}
!4610 = !DILocation(line: 95, column: 6, scope: !4575)
!4611 = !DILocation(line: 96, column: 16, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4607, file: !3, line: 95, column: 23)
!4613 = !DILocation(line: 96, column: 23, scope: !4612)
!4614 = !DILocation(line: 96, column: 3, scope: !4612)
!4615 = !DILocation(line: 97, column: 3, scope: !4612)
!4616 = !DILocation(line: 100, column: 6, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 100, column: 6)
!4618 = !DILocation(line: 100, column: 15, scope: !4617)
!4619 = !DILocation(line: 100, column: 22, scope: !4617)
!4620 = !DILocation(line: 100, column: 12, scope: !4617)
!4621 = !DILocation(line: 100, column: 37, scope: !4617)
!4622 = !DILocation(line: 101, column: 6, scope: !4617)
!4623 = !DILocation(line: 101, column: 13, scope: !4617)
!4624 = !DILocation(line: 101, column: 22, scope: !4617)
!4625 = !DILocation(line: 101, column: 29, scope: !4617)
!4626 = !DILocation(line: 101, column: 19, scope: !4617)
!4627 = !DILocation(line: 100, column: 6, scope: !4575)
!4628 = !DILocation(line: 102, column: 7, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4617, file: !3, line: 101, column: 41)
!4630 = !DILocation(line: 104, column: 20, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4629, file: !3, line: 104, column: 7)
!4632 = !DILocation(line: 104, column: 27, scope: !4631)
!4633 = !DILocation(line: 104, column: 43, scope: !4631)
!4634 = !DILocation(line: 104, column: 8, scope: !4631)
!4635 = !DILocation(line: 104, column: 7, scope: !4629)
!4636 = !DILocation(line: 105, column: 17, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4631, file: !3, line: 104, column: 50)
!4638 = !DILocation(line: 105, column: 24, scope: !4637)
!4639 = !DILocation(line: 105, column: 4, scope: !4637)
!4640 = !DILocation(line: 106, column: 11, scope: !4637)
!4641 = !DILocation(line: 106, column: 4, scope: !4637)
!4642 = !DILocation(line: 108, column: 11, scope: !4629)
!4643 = !DILocation(line: 108, column: 18, scope: !4629)
!4644 = !DILocation(line: 108, column: 9, scope: !4629)
!4645 = !DILocation(line: 109, column: 3, scope: !4629)
!4646 = !DILocation(line: 112, column: 18, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 112, column: 6)
!4648 = !DILocation(line: 112, column: 7, scope: !4647)
!4649 = !DILocation(line: 112, column: 24, scope: !4647)
!4650 = !DILocation(line: 112, column: 27, scope: !4647)
!4651 = !DILocation(line: 112, column: 6, scope: !4575)
!4652 = !DILocation(line: 113, column: 9, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4647, file: !3, line: 112, column: 34)
!4654 = !DILocation(line: 113, column: 15, scope: !4653)
!4655 = !DILocation(line: 113, column: 22, scope: !4653)
!4656 = !DILocation(line: 113, column: 7, scope: !4653)
!4657 = !DILocation(line: 114, column: 7, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4653, file: !3, line: 114, column: 7)
!4659 = !DILocation(line: 114, column: 7, scope: !4653)
!4660 = !DILocation(line: 115, column: 17, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 114, column: 12)
!4662 = !DILocation(line: 115, column: 24, scope: !4661)
!4663 = !DILocation(line: 115, column: 4, scope: !4661)
!4664 = !DILocation(line: 116, column: 11, scope: !4661)
!4665 = !DILocation(line: 116, column: 4, scope: !4661)
!4666 = !DILocation(line: 118, column: 2, scope: !4653)
!4667 = !DILocation(line: 120, column: 1, scope: !4575)
!4668 = !DILocation(line: 121, column: 2, scope: !4575)
!4669 = !DILocation(line: 121, column: 9, scope: !4575)
!4670 = !DILocation(line: 121, column: 14, scope: !4575)
!4671 = !DILocation(line: 122, column: 17, scope: !4575)
!4672 = !DILocation(line: 122, column: 24, scope: !4575)
!4673 = !DILocation(line: 122, column: 30, scope: !4575)
!4674 = !DILocation(line: 122, column: 2, scope: !4575)
!4675 = !DILocation(line: 123, column: 6, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 123, column: 6)
!4677 = !DILocation(line: 123, column: 6, scope: !4575)
!4678 = !DILocation(line: 124, column: 3, scope: !4676)
!4679 = !DILocation(line: 124, column: 10, scope: !4676)
!4680 = !DILocation(line: 124, column: 17, scope: !4676)
!4681 = !DILocation(line: 125, column: 15, scope: !4575)
!4682 = !DILocation(line: 125, column: 22, scope: !4575)
!4683 = !DILocation(line: 125, column: 2, scope: !4575)
!4684 = !DILocation(line: 127, column: 2, scope: !4575)
!4685 = !DILocation(line: 128, column: 15, scope: !4575)
!4686 = !DILocation(line: 128, column: 22, scope: !4575)
!4687 = !DILocation(line: 128, column: 2, scope: !4575)
!4688 = !DILocation(line: 129, column: 9, scope: !4575)
!4689 = !DILocation(line: 129, column: 2, scope: !4575)
!4690 = !DILocation(line: 130, column: 1, scope: !4575)
!4691 = distinct !DISubprogram(name: "list_add_tail", scope: !4545, file: !4545, line: 181, type: !4692, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4694)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{null, !121, !121}
!4694 = !{!4695, !4696}
!4695 = !DILocalVariable(name: "new", arg: 1, scope: !4691, file: !4545, line: 181, type: !121)
!4696 = !DILocalVariable(name: "head", arg: 2, scope: !4691, file: !4545, line: 181, type: !121)
!4697 = !DILocation(line: 181, column: 52, scope: !4691)
!4698 = !DILocation(line: 181, column: 75, scope: !4691)
!4699 = !DILocation(line: 183, column: 13, scope: !4691)
!4700 = !DILocation(line: 183, column: 18, scope: !4691)
!4701 = !DILocation(line: 183, column: 24, scope: !4691)
!4702 = !DILocation(line: 183, column: 30, scope: !4691)
!4703 = !DILocation(line: 183, column: 2, scope: !4691)
!4704 = !DILocation(line: 184, column: 1, scope: !4691)
!4705 = !DISubprogram(name: "__wake_up", scope: !76, file: !76, line: 212, type: !4706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{!43, !4708, !7, !43, !41}
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!4709 = !DISubprogram(name: "kill_fasync", scope: !173, file: !173, line: 1102, type: !4710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{null, !4712, !43, !43}
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4713 = distinct !DISubprogram(name: "fsnotify_remove_queued_event", scope: !3, file: !3, line: 132, type: !247, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4714)
!4714 = !{!4715, !4716}
!4715 = !DILocalVariable(name: "group", arg: 1, scope: !4713, file: !3, line: 132, type: !249)
!4716 = !DILocalVariable(name: "event", arg: 2, scope: !4713, file: !3, line: 133, type: !189)
!4717 = !DILocation(line: 132, column: 58, scope: !4713)
!4718 = !DILocation(line: 133, column: 30, scope: !4713)
!4719 = !DILocation(line: 135, column: 2, scope: !4713)
!4720 = !DILocation(line: 135, column: 2, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4722, file: !3, line: 135, column: 2)
!4722 = distinct !DILexicalBlock(scope: !4713, file: !3, line: 135, column: 2)
!4723 = !DILocation(line: 135, column: 2, scope: !4722)
!4724 = !DILocation(line: 135, column: 2, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4721, file: !3, line: 135, column: 2)
!4726 = !DILocation(line: 135, column: 2, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 135, column: 2)
!4728 = !DILocation(line: 135, column: 2, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 135, column: 2)
!4730 = !{i64 2154540851, i64 2154540880, i64 2154540926, i64 2154540984, i64 2154541038, i64 2154541092, i64 2154541147, i64 2154541178}
!4731 = !DILocation(line: 140, column: 17, scope: !4713)
!4732 = !DILocation(line: 140, column: 24, scope: !4713)
!4733 = !DILocation(line: 140, column: 2, scope: !4713)
!4734 = !DILocation(line: 141, column: 2, scope: !4713)
!4735 = !DILocation(line: 141, column: 9, scope: !4713)
!4736 = !DILocation(line: 141, column: 14, scope: !4713)
!4737 = !DILocation(line: 142, column: 1, scope: !4713)
!4738 = distinct !DISubprogram(name: "queued_spin_is_locked", scope: !4739, file: !4739, line: 51, type: !4740, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4743)
!4739 = !DIFile(filename: "./include/asm-generic/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee2071dbdb30625b016b6622681cc28")
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!43, !4742}
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!4743 = !{!4744}
!4744 = !DILocalVariable(name: "lock", arg: 1, scope: !4738, file: !4739, line: 51, type: !4742)
!4745 = !DILocation(line: 51, column: 68, scope: !4738)
!4746 = !DILocation(line: 57, column: 22, scope: !4738)
!4747 = !DILocation(line: 57, column: 28, scope: !4738)
!4748 = !DILocation(line: 57, column: 9, scope: !4738)
!4749 = !DILocation(line: 57, column: 2, scope: !4738)
!4750 = distinct !DISubprogram(name: "list_del_init", scope: !4545, file: !4545, line: 285, type: !4751, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4753)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{null, !121}
!4753 = !{!4754}
!4754 = !DILocalVariable(name: "entry", arg: 1, scope: !4750, file: !4545, line: 285, type: !121)
!4755 = !DILocation(line: 285, column: 52, scope: !4750)
!4756 = !DILocation(line: 287, column: 19, scope: !4750)
!4757 = !DILocation(line: 287, column: 2, scope: !4750)
!4758 = !DILocation(line: 288, column: 17, scope: !4750)
!4759 = !DILocation(line: 288, column: 2, scope: !4750)
!4760 = !DILocation(line: 289, column: 1, scope: !4750)
!4761 = distinct !DISubprogram(name: "fsnotify_peek_first_event", scope: !3, file: !3, line: 148, type: !4762, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4764)
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!189, !249}
!4764 = !{!4765, !4766}
!4765 = !DILocalVariable(name: "group", arg: 1, scope: !4761, file: !3, line: 148, type: !249)
!4766 = !DILocalVariable(name: "__mptr", scope: !4767, file: !3, line: 155, type: !41)
!4767 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 155, column: 9)
!4768 = !DILocation(line: 148, column: 73, scope: !4761)
!4769 = !DILocation(line: 150, column: 2, scope: !4761)
!4770 = !DILocation(line: 150, column: 2, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 150, column: 2)
!4772 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 150, column: 2)
!4773 = !DILocation(line: 150, column: 2, scope: !4772)
!4774 = !DILocation(line: 150, column: 2, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 150, column: 2)
!4776 = !DILocation(line: 150, column: 2, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 150, column: 2)
!4778 = !DILocation(line: 150, column: 2, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 150, column: 2)
!4780 = !{i64 2154542261, i64 2154542290, i64 2154542336, i64 2154542394, i64 2154542448, i64 2154542502, i64 2154542557, i64 2154542588}
!4781 = !DILocation(line: 152, column: 37, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 152, column: 6)
!4783 = !DILocation(line: 152, column: 6, scope: !4782)
!4784 = !DILocation(line: 152, column: 6, scope: !4761)
!4785 = !DILocation(line: 153, column: 3, scope: !4782)
!4786 = !DILocation(line: 155, column: 9, scope: !4767)
!4787 = !DILocation(line: 155, column: 9, scope: !4761)
!4788 = !DILocation(line: 155, column: 2, scope: !4761)
!4789 = !DILocation(line: 157, column: 1, scope: !4761)
!4790 = distinct !DISubprogram(name: "fsnotify_notify_queue_is_empty", scope: !191, file: !191, line: 643, type: !4791, scopeLine: 644, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4793)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!714, !249}
!4793 = !{!4794}
!4794 = !DILocalVariable(name: "group", arg: 1, scope: !4790, file: !191, line: 643, type: !249)
!4795 = !DILocation(line: 643, column: 74, scope: !4790)
!4796 = !DILocation(line: 645, column: 2, scope: !4790)
!4797 = !DILocation(line: 645, column: 2, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4799, file: !191, line: 645, column: 2)
!4799 = distinct !DILexicalBlock(scope: !4790, file: !191, line: 645, column: 2)
!4800 = !DILocation(line: 645, column: 2, scope: !4799)
!4801 = !DILocation(line: 645, column: 2, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4798, file: !191, line: 645, column: 2)
!4803 = !DILocation(line: 645, column: 2, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4802, file: !191, line: 645, column: 2)
!4805 = !DILocation(line: 645, column: 2, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4802, file: !191, line: 645, column: 2)
!4807 = !{i64 2153681744, i64 2153681773, i64 2153681819, i64 2153681877, i64 2153681931, i64 2153681985, i64 2153682040, i64 2153682071}
!4808 = !DILocation(line: 647, column: 21, scope: !4790)
!4809 = !DILocation(line: 647, column: 28, scope: !4790)
!4810 = !DILocation(line: 647, column: 9, scope: !4790)
!4811 = !DILocation(line: 647, column: 2, scope: !4790)
!4812 = distinct !DISubprogram(name: "fsnotify_remove_first_event", scope: !3, file: !3, line: 163, type: !4762, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4813)
!4813 = !{!4814, !4815}
!4814 = !DILocalVariable(name: "group", arg: 1, scope: !4812, file: !3, line: 163, type: !249)
!4815 = !DILocalVariable(name: "event", scope: !4812, file: !3, line: 165, type: !189)
!4816 = !DILocation(line: 163, column: 75, scope: !4812)
!4817 = !DILocation(line: 165, column: 2, scope: !4812)
!4818 = !DILocation(line: 165, column: 25, scope: !4812)
!4819 = !DILocation(line: 165, column: 59, scope: !4812)
!4820 = !DILocation(line: 165, column: 33, scope: !4812)
!4821 = !DILocation(line: 167, column: 7, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 167, column: 6)
!4823 = !DILocation(line: 167, column: 6, scope: !4812)
!4824 = !DILocation(line: 168, column: 3, scope: !4822)
!4825 = !DILocation(line: 170, column: 2, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 170, column: 2)
!4827 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 170, column: 2)
!4828 = !DILocation(line: 170, column: 2, scope: !4827)
!4829 = !DILocation(line: 172, column: 31, scope: !4812)
!4830 = !DILocation(line: 172, column: 38, scope: !4812)
!4831 = !DILocation(line: 172, column: 2, scope: !4812)
!4832 = !DILocation(line: 174, column: 9, scope: !4812)
!4833 = !DILocation(line: 174, column: 2, scope: !4812)
!4834 = !DILocation(line: 175, column: 1, scope: !4812)
!4835 = distinct !DISubprogram(name: "fsnotify_flush_notify", scope: !3, file: !3, line: 181, type: !4448, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4836)
!4836 = !{!4837, !4838}
!4837 = !DILocalVariable(name: "group", arg: 1, scope: !4835, file: !3, line: 181, type: !249)
!4838 = !DILocalVariable(name: "event", scope: !4835, file: !3, line: 183, type: !189)
!4839 = !DILocation(line: 181, column: 51, scope: !4835)
!4840 = !DILocation(line: 183, column: 2, scope: !4835)
!4841 = !DILocation(line: 183, column: 25, scope: !4835)
!4842 = !DILocation(line: 185, column: 13, scope: !4835)
!4843 = !DILocation(line: 185, column: 20, scope: !4835)
!4844 = !DILocation(line: 185, column: 2, scope: !4835)
!4845 = !DILocation(line: 186, column: 2, scope: !4835)
!4846 = !DILocation(line: 186, column: 41, scope: !4835)
!4847 = !DILocation(line: 186, column: 10, scope: !4835)
!4848 = !DILocation(line: 186, column: 9, scope: !4835)
!4849 = !DILocation(line: 187, column: 39, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4835, file: !3, line: 186, column: 49)
!4851 = !DILocation(line: 187, column: 11, scope: !4850)
!4852 = !DILocation(line: 187, column: 9, scope: !4850)
!4853 = !DILocation(line: 188, column: 16, scope: !4850)
!4854 = !DILocation(line: 188, column: 23, scope: !4850)
!4855 = !DILocation(line: 188, column: 3, scope: !4850)
!4856 = !DILocation(line: 189, column: 26, scope: !4850)
!4857 = !DILocation(line: 189, column: 33, scope: !4850)
!4858 = !DILocation(line: 189, column: 3, scope: !4850)
!4859 = !DILocation(line: 190, column: 14, scope: !4850)
!4860 = !DILocation(line: 190, column: 21, scope: !4850)
!4861 = !DILocation(line: 190, column: 3, scope: !4850)
!4862 = distinct !{!4862, !4845, !4863, !4864, !4865}
!4863 = !DILocation(line: 191, column: 2, scope: !4835)
!4864 = !{!"llvm.loop.mustprogress"}
!4865 = !{!"llvm.loop.unroll.disable"}
!4866 = !DILocation(line: 192, column: 15, scope: !4835)
!4867 = !DILocation(line: 192, column: 22, scope: !4835)
!4868 = !DILocation(line: 192, column: 2, scope: !4835)
!4869 = !DILocation(line: 193, column: 1, scope: !4835)
!4870 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4871, file: !4871, line: 94, type: !4872, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4877)
!4871 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4872 = !DISubroutineType(types: !4873)
!4873 = !{null, !4874, !56}
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4876)
!4876 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4877 = !{!4878, !4879}
!4878 = !DILocalVariable(name: "v", arg: 1, scope: !4870, file: !4871, line: 94, type: !4874)
!4879 = !DILocalVariable(name: "size", arg: 2, scope: !4870, file: !4871, line: 94, type: !56)
!4880 = !DILocation(line: 94, column: 79, scope: !4870)
!4881 = !DILocation(line: 94, column: 89, scope: !4870)
!4882 = !DILocation(line: 96, column: 20, scope: !4870)
!4883 = !DILocation(line: 96, column: 23, scope: !4870)
!4884 = !DILocation(line: 96, column: 2, scope: !4870)
!4885 = !DILocation(line: 97, column: 2, scope: !4870)
!4886 = !DILocation(line: 98, column: 1, scope: !4870)
!4887 = distinct !DISubprogram(name: "raw_atomic_inc_return", scope: !4888, file: !4888, line: 996, type: !232, scopeLine: 997, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4889)
!4888 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4889 = !{!4890}
!4890 = !DILocalVariable(name: "v", arg: 1, scope: !4887, file: !4888, line: 996, type: !234)
!4891 = !DILocation(line: 996, column: 33, scope: !4887)
!4892 = !DILocation(line: 1007, column: 34, scope: !4887)
!4893 = !DILocation(line: 1007, column: 9, scope: !4887)
!4894 = !DILocation(line: 1007, column: 2, scope: !4887)
!4895 = distinct !DISubprogram(name: "kasan_check_write", scope: !4896, file: !4896, line: 44, type: !4897, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4899)
!4896 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!714, !4874, !7}
!4899 = !{!4900, !4901}
!4900 = !DILocalVariable(name: "p", arg: 1, scope: !4895, file: !4896, line: 44, type: !4874)
!4901 = !DILocalVariable(name: "size", arg: 2, scope: !4895, file: !4896, line: 44, type: !7)
!4902 = !DILocation(line: 44, column: 59, scope: !4895)
!4903 = !DILocation(line: 44, column: 75, scope: !4895)
!4904 = !DILocation(line: 46, column: 2, scope: !4895)
!4905 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4906, file: !4906, line: 229, type: !4907, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4909)
!4906 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4907 = !DISubroutineType(types: !4908)
!4908 = !{null, !4874, !56, !43}
!4909 = !{!4910, !4911, !4912}
!4910 = !DILocalVariable(name: "ptr", arg: 1, scope: !4905, file: !4906, line: 229, type: !4874)
!4911 = !DILocalVariable(name: "size", arg: 2, scope: !4905, file: !4906, line: 229, type: !56)
!4912 = !DILocalVariable(name: "type", arg: 3, scope: !4905, file: !4906, line: 230, type: !43)
!4913 = !DILocation(line: 229, column: 60, scope: !4905)
!4914 = !DILocation(line: 229, column: 72, scope: !4905)
!4915 = !DILocation(line: 230, column: 15, scope: !4905)
!4916 = !DILocation(line: 230, column: 23, scope: !4905)
!4917 = distinct !DISubprogram(name: "raw_atomic_add_return", scope: !4888, file: !4888, line: 548, type: !4918, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4920)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!43, !43, !234}
!4920 = !{!4921, !4922}
!4921 = !DILocalVariable(name: "i", arg: 1, scope: !4917, file: !4888, line: 548, type: !43)
!4922 = !DILocalVariable(name: "v", arg: 2, scope: !4917, file: !4888, line: 548, type: !234)
!4923 = !DILocation(line: 548, column: 27, scope: !4917)
!4924 = !DILocation(line: 548, column: 40, scope: !4917)
!4925 = !DILocation(line: 551, column: 32, scope: !4917)
!4926 = !DILocation(line: 551, column: 35, scope: !4917)
!4927 = !DILocation(line: 551, column: 9, scope: !4917)
!4928 = !DILocation(line: 551, column: 2, scope: !4917)
!4929 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !4930, file: !4930, line: 83, type: !4918, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4931)
!4930 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4931 = !{!4932, !4933, !4934}
!4932 = !DILocalVariable(name: "i", arg: 1, scope: !4929, file: !4930, line: 83, type: !43)
!4933 = !DILocalVariable(name: "v", arg: 2, scope: !4929, file: !4930, line: 83, type: !234)
!4934 = !DILocalVariable(name: "__ret", scope: !4935, file: !4930, line: 85, type: !43)
!4935 = distinct !DILexicalBlock(scope: !4929, file: !4930, line: 85, column: 13)
!4936 = !DILocation(line: 83, column: 55, scope: !4929)
!4937 = !DILocation(line: 83, column: 68, scope: !4929)
!4938 = !DILocation(line: 85, column: 9, scope: !4929)
!4939 = !DILocation(line: 85, column: 13, scope: !4935)
!4940 = !{i64 2148985625, i64 2148985664, i64 2148985685, i64 2148985722, i64 2148985745, i64 2148985754}
!4941 = !DILocation(line: 85, column: 13, scope: !4929)
!4942 = !DILocation(line: 85, column: 11, scope: !4929)
!4943 = !DILocation(line: 85, column: 2, scope: !4929)
!4944 = !DISubprogram(name: "_raw_spin_lock", scope: !4945, file: !4945, line: 22, type: !4946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4945 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4946 = !DISubroutineType(types: !4947)
!4947 = !{null, !4948}
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!4949 = !DISubprogram(name: "_raw_spin_unlock", scope: !4945, file: !4945, line: 39, type: !4946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4950 = distinct !DISubprogram(name: "__list_add", scope: !4545, file: !4545, line: 146, type: !4951, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4953)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{null, !121, !121, !121}
!4953 = !{!4954, !4955, !4956}
!4954 = !DILocalVariable(name: "new", arg: 1, scope: !4950, file: !4545, line: 146, type: !121)
!4955 = !DILocalVariable(name: "prev", arg: 2, scope: !4950, file: !4545, line: 147, type: !121)
!4956 = !DILocalVariable(name: "next", arg: 3, scope: !4950, file: !4545, line: 148, type: !121)
!4957 = !DILocation(line: 146, column: 49, scope: !4950)
!4958 = !DILocation(line: 147, column: 28, scope: !4950)
!4959 = !DILocation(line: 148, column: 28, scope: !4950)
!4960 = !DILocation(line: 150, column: 24, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4950, file: !4545, line: 150, column: 6)
!4962 = !DILocation(line: 150, column: 29, scope: !4961)
!4963 = !DILocation(line: 150, column: 35, scope: !4961)
!4964 = !DILocation(line: 150, column: 7, scope: !4961)
!4965 = !DILocation(line: 150, column: 6, scope: !4950)
!4966 = !DILocation(line: 151, column: 3, scope: !4961)
!4967 = !DILocation(line: 153, column: 15, scope: !4950)
!4968 = !DILocation(line: 153, column: 2, scope: !4950)
!4969 = !DILocation(line: 153, column: 8, scope: !4950)
!4970 = !DILocation(line: 153, column: 13, scope: !4950)
!4971 = !DILocation(line: 154, column: 14, scope: !4950)
!4972 = !DILocation(line: 154, column: 2, scope: !4950)
!4973 = !DILocation(line: 154, column: 7, scope: !4950)
!4974 = !DILocation(line: 154, column: 12, scope: !4950)
!4975 = !DILocation(line: 155, column: 14, scope: !4950)
!4976 = !DILocation(line: 155, column: 2, scope: !4950)
!4977 = !DILocation(line: 155, column: 7, scope: !4950)
!4978 = !DILocation(line: 155, column: 12, scope: !4950)
!4979 = !DILocation(line: 156, column: 2, scope: !4950)
!4980 = !DILocation(line: 156, column: 2, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4950, file: !4545, line: 156, column: 2)
!4982 = !DILocation(line: 156, column: 2, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4981, file: !4545, line: 156, column: 2)
!4984 = !DILocation(line: 156, column: 2, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4981, file: !4545, line: 156, column: 2)
!4986 = !DILocation(line: 157, column: 1, scope: !4950)
!4987 = distinct !DISubprogram(name: "__list_add_valid", scope: !4545, file: !4545, line: 128, type: !4988, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4990)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!714, !121, !121, !121}
!4990 = !{!4991, !4992, !4993}
!4991 = !DILocalVariable(name: "new", arg: 1, scope: !4987, file: !4545, line: 128, type: !121)
!4992 = !DILocalVariable(name: "prev", arg: 2, scope: !4987, file: !4545, line: 129, type: !121)
!4993 = !DILocalVariable(name: "next", arg: 3, scope: !4987, file: !4545, line: 130, type: !121)
!4994 = !DILocation(line: 128, column: 55, scope: !4987)
!4995 = !DILocation(line: 129, column: 23, scope: !4987)
!4996 = !DILocation(line: 130, column: 23, scope: !4987)
!4997 = !DILocation(line: 132, column: 2, scope: !4987)
!4998 = distinct !DISubprogram(name: "atomic_read", scope: !231, file: !231, line: 30, type: !4999, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5003)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!43, !5001}
!5001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!5003 = !{!5004}
!5004 = !DILocalVariable(name: "v", arg: 1, scope: !4998, file: !231, line: 30, type: !5001)
!5005 = !DILocation(line: 30, column: 29, scope: !4998)
!5006 = !DILocation(line: 32, column: 25, scope: !4998)
!5007 = !DILocation(line: 32, column: 2, scope: !4998)
!5008 = !DILocation(line: 33, column: 25, scope: !4998)
!5009 = !DILocation(line: 33, column: 9, scope: !4998)
!5010 = !DILocation(line: 33, column: 2, scope: !4998)
!5011 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4871, file: !4871, line: 66, type: !4872, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5012)
!5012 = !{!5013, !5014}
!5013 = !DILocalVariable(name: "v", arg: 1, scope: !5011, file: !4871, line: 66, type: !4874)
!5014 = !DILocalVariable(name: "size", arg: 2, scope: !5011, file: !4871, line: 66, type: !56)
!5015 = !DILocation(line: 66, column: 73, scope: !5011)
!5016 = !DILocation(line: 66, column: 83, scope: !5011)
!5017 = !DILocation(line: 68, column: 19, scope: !5011)
!5018 = !DILocation(line: 68, column: 22, scope: !5011)
!5019 = !DILocation(line: 68, column: 2, scope: !5011)
!5020 = !DILocation(line: 69, column: 2, scope: !5011)
!5021 = !DILocation(line: 70, column: 1, scope: !5011)
!5022 = distinct !DISubprogram(name: "raw_atomic_read", scope: !4888, file: !4888, line: 442, type: !4999, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5023)
!5023 = !{!5024}
!5024 = !DILocalVariable(name: "v", arg: 1, scope: !5022, file: !4888, line: 442, type: !5001)
!5025 = !DILocation(line: 442, column: 33, scope: !5022)
!5026 = !DILocation(line: 444, column: 26, scope: !5022)
!5027 = !DILocation(line: 444, column: 9, scope: !5022)
!5028 = !DILocation(line: 444, column: 2, scope: !5022)
!5029 = distinct !DISubprogram(name: "kasan_check_read", scope: !4896, file: !4896, line: 40, type: !4897, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5030)
!5030 = !{!5031, !5032}
!5031 = !DILocalVariable(name: "p", arg: 1, scope: !5029, file: !4896, line: 40, type: !4874)
!5032 = !DILocalVariable(name: "size", arg: 2, scope: !5029, file: !4896, line: 40, type: !7)
!5033 = !DILocation(line: 40, column: 58, scope: !5029)
!5034 = !DILocation(line: 40, column: 74, scope: !5029)
!5035 = !DILocation(line: 42, column: 2, scope: !5029)
!5036 = distinct !DISubprogram(name: "arch_atomic_read", scope: !4930, file: !4930, line: 17, type: !4999, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5037)
!5037 = !{!5038}
!5038 = !DILocalVariable(name: "v", arg: 1, scope: !5036, file: !4930, line: 17, type: !5001)
!5039 = !DILocation(line: 17, column: 61, scope: !5036)
!5040 = !DILocation(line: 23, column: 9, scope: !5036)
!5041 = !DILocation(line: 23, column: 2, scope: !5036)
!5042 = distinct !DISubprogram(name: "__list_del_entry", scope: !4545, file: !4545, line: 213, type: !4751, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5043)
!5043 = !{!5044}
!5044 = !DILocalVariable(name: "entry", arg: 1, scope: !5042, file: !4545, line: 213, type: !121)
!5045 = !DILocation(line: 213, column: 55, scope: !5042)
!5046 = !DILocation(line: 215, column: 30, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5042, file: !4545, line: 215, column: 6)
!5048 = !DILocation(line: 215, column: 7, scope: !5047)
!5049 = !DILocation(line: 215, column: 6, scope: !5042)
!5050 = !DILocation(line: 216, column: 3, scope: !5047)
!5051 = !DILocation(line: 218, column: 13, scope: !5042)
!5052 = !DILocation(line: 218, column: 20, scope: !5042)
!5053 = !DILocation(line: 218, column: 26, scope: !5042)
!5054 = !DILocation(line: 218, column: 33, scope: !5042)
!5055 = !DILocation(line: 218, column: 2, scope: !5042)
!5056 = !DILocation(line: 219, column: 1, scope: !5042)
!5057 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4545, file: !4545, line: 35, type: !4751, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5058)
!5058 = !{!5059}
!5059 = !DILocalVariable(name: "list", arg: 1, scope: !5057, file: !4545, line: 35, type: !121)
!5060 = !DILocation(line: 35, column: 53, scope: !5057)
!5061 = !DILocation(line: 37, column: 2, scope: !5057)
!5062 = !DILocation(line: 37, column: 2, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5057, file: !4545, line: 37, column: 2)
!5064 = !DILocation(line: 37, column: 2, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5063, file: !4545, line: 37, column: 2)
!5066 = !DILocation(line: 37, column: 2, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5063, file: !4545, line: 37, column: 2)
!5068 = !DILocation(line: 38, column: 2, scope: !5057)
!5069 = !DILocation(line: 38, column: 2, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5057, file: !4545, line: 38, column: 2)
!5071 = !DILocation(line: 38, column: 2, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5070, file: !4545, line: 38, column: 2)
!5073 = !DILocation(line: 38, column: 2, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5070, file: !4545, line: 38, column: 2)
!5075 = !DILocation(line: 39, column: 1, scope: !5057)
!5076 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4545, file: !4545, line: 134, type: !5077, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5079)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!714, !121}
!5079 = !{!5080}
!5080 = !DILocalVariable(name: "entry", arg: 1, scope: !5076, file: !4545, line: 134, type: !121)
!5081 = !DILocation(line: 134, column: 61, scope: !5076)
!5082 = !DILocation(line: 136, column: 2, scope: !5076)
!5083 = distinct !DISubprogram(name: "__list_del", scope: !4545, file: !4545, line: 193, type: !4692, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5084)
!5084 = !{!5085, !5086}
!5085 = !DILocalVariable(name: "prev", arg: 1, scope: !5083, file: !4545, line: 193, type: !121)
!5086 = !DILocalVariable(name: "next", arg: 2, scope: !5083, file: !4545, line: 193, type: !121)
!5087 = !DILocation(line: 193, column: 50, scope: !5083)
!5088 = !DILocation(line: 193, column: 75, scope: !5083)
!5089 = !DILocation(line: 195, column: 15, scope: !5083)
!5090 = !DILocation(line: 195, column: 2, scope: !5083)
!5091 = !DILocation(line: 195, column: 8, scope: !5083)
!5092 = !DILocation(line: 195, column: 13, scope: !5083)
!5093 = !DILocation(line: 196, column: 2, scope: !5083)
!5094 = !DILocation(line: 196, column: 2, scope: !5095)
!5095 = distinct !DILexicalBlock(scope: !5083, file: !4545, line: 196, column: 2)
!5096 = !DILocation(line: 196, column: 2, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5095, file: !4545, line: 196, column: 2)
!5098 = !DILocation(line: 196, column: 2, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5095, file: !4545, line: 196, column: 2)
!5100 = !DILocation(line: 197, column: 1, scope: !5083)
