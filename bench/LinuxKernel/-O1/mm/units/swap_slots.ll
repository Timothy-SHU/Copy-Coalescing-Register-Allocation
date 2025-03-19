; ModuleID = 'mm/swap_slots.c'
source_filename = "mm/swap_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.swap_slots_cache = type { i8, %struct.mutex, ptr, i32, i32, %struct.spinlock, ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.cpumask = type { [1 x i64] }
%struct.lock_class_key = type {}
%struct.swp_entry_t = type { i64 }
%struct.folio = type { %union.anon.13, %union.anon.28, %union.anon.30 }
%union.anon.13 = type { %struct.page }
%struct.page = type { i64, %union.anon.18, %union.anon.27, %struct.atomic_t, [8 x i8] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { %union.anon.20, ptr, %union.anon.22, i64 }
%union.anon.20 = type { %struct.list_head }
%union.anon.22 = type { i64 }
%union.anon.27 = type { %struct.atomic_t }
%union.anon.28 = type { %struct.page }
%union.anon.30 = type { %struct.page }

@swap_slots_cache_enable_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @swap_slots_cache_enable_mutex, i64 16), ptr getelementptr (i8, ptr @swap_slots_cache_enable_mutex, i64 16) } }, align 8, !dbg !0
@swap_slot_cache_enabled = hidden global i8 0, align 1, !dbg !597
@swap_slot_cache_initialized = internal global i8 0, align 1, !dbg !599
@.str = private unnamed_addr constant [17 x i8] c"swap_slots_cache\00", align 1, !dbg !550
@enable_swap_slots_cache.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !555
@.str.1 = private unnamed_addr constant [67 x i8] c"Cache allocation failed (%s), operating without swap slots cache.\0A\00", align 1, !dbg !578
@__func__.enable_swap_slots_cache = private unnamed_addr constant [24 x i8] c"enable_swap_slots_cache\00", align 1, !dbg !583
@.str.2 = private unnamed_addr constant [16 x i8] c"mm/swap_slots.c\00", align 1, !dbg !588
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@swp_slots = internal global %struct.swap_slots_cache zeroinitializer, section ".data..percpu", align 8, !dbg !593
@swap_slot_cache_active = internal global i8 0, align 1, !dbg !595
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@swap_slots_cache_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @swap_slots_cache_mutex, i64 16), ptr getelementptr (i8, ptr @swap_slots_cache_mutex, i64 16) } }, align 8, !dbg !626
@alloc_swap_slot_cache.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !601
@.str.3 = private unnamed_addr constant [19 x i8] c"&cache->alloc_lock\00", align 1, !dbg !621
@nr_swap_pages = external dso_local global %struct.atomic64_t, align 8
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @disable_swap_slots_cache_lock() #0 align 16 !dbg !637 {
entry:
  call void @mutex_lock(ptr noundef @swap_slots_cache_enable_mutex) #13, !dbg !638
  store i8 0, ptr @swap_slot_cache_enabled, align 1, !dbg !639
  %0 = load i8, ptr @swap_slot_cache_initialized, align 1, !dbg !640, !range !642, !noundef !620
  %tobool = trunc i8 %0 to i1, !dbg !640
  br i1 %tobool, label %if.then, label %if.end, !dbg !643

if.then:                                          ; preds = %entry
  call void @cpus_read_lock() #13, !dbg !644
  call void @__drain_swap_slots_cache(i32 noundef 3) #13, !dbg !646
  call void @cpus_read_unlock() #13, !dbg !647
  br label %if.end, !dbg !648

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !649
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !650 dso_local void @mutex_lock(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !654 dso_local void @cpus_read_lock() #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__drain_swap_slots_cache(i32 noundef %type) #0 align 16 !dbg !656 {
entry:
  %type.addr = alloca i32, align 4
  %cpu = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !660, metadata !DIExpression()), !dbg !662
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !663
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !661, metadata !DIExpression()), !dbg !664
  store i32 0, ptr %cpu, align 4, !dbg !665
  br label %for.cond, !dbg !665

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %cpu, align 4, !dbg !667
  %conv = zext i32 %0 to i64, !dbg !667
  %call = call i64 @find_next_bit(ptr noundef @__cpu_online_mask, i64 noundef 64, i64 noundef %conv) #13, !dbg !667
  %conv1 = trunc i64 %call to i32, !dbg !667
  store i32 %conv1, ptr %cpu, align 4, !dbg !667
  %1 = load i32, ptr %cpu, align 4, !dbg !667
  %cmp = icmp ult i32 %1, 64, !dbg !667
  br i1 %cmp, label %for.body, label %for.end, !dbg !665

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %cpu, align 4, !dbg !669
  %3 = load i32, ptr %type.addr, align 4, !dbg !670
  call void @drain_slots_cache_cpu(i32 noundef %2, i32 noundef %3, i1 noundef zeroext false) #13, !dbg !671
  br label %for.inc, !dbg !671

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %cpu, align 4, !dbg !667
  %inc = add i32 %4, 1, !dbg !667
  store i32 %inc, ptr %cpu, align 4, !dbg !667
  br label %for.cond, !dbg !667, !llvm.loop !672

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !676
  ret void, !dbg !676
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !677 dso_local void @cpus_read_unlock() #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @reenable_swap_slots_cache_unlock() #0 align 16 !dbg !678 {
entry:
  call void @__reenable_swap_slots_cache() #13, !dbg !679
  call void @mutex_unlock(ptr noundef @swap_slots_cache_enable_mutex) #13, !dbg !680
  ret void, !dbg !681
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__reenable_swap_slots_cache() #0 align 16 !dbg !682 {
entry:
  %call = call zeroext i1 @has_usable_swap() #13, !dbg !683
  %frombool = zext i1 %call to i8, !dbg !684
  store i8 %frombool, ptr @swap_slot_cache_enabled, align 1, !dbg !684
  ret void, !dbg !685
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !686 dso_local void @mutex_unlock(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @enable_swap_slots_cache() #0 align 16 !dbg !557 {
entry:
  %ret = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp50 = alloca i64, align 8
  %tmp59 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @mutex_lock(ptr noundef @swap_slots_cache_enable_mutex) #13, !dbg !687
  %0 = load i8, ptr @swap_slot_cache_initialized, align 1, !dbg !688, !range !642, !noundef !620
  %tobool = trunc i8 %0 to i1, !dbg !688
  br i1 %tobool, label %if.end70, label %if.then, !dbg !689

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !690
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !561, metadata !DIExpression()), !dbg !691
  %call = call i32 @cpuhp_setup_state(i32 noundef 202, ptr noundef @.str, ptr noundef @alloc_swap_slot_cache, ptr noundef @free_slot_cache) #13, !dbg !692
  store i32 %call, ptr %ret, align 4, !dbg !693
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #14, !dbg !694
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !564, metadata !DIExpression()), !dbg !694
  %1 = load i32, ptr %ret, align 4, !dbg !694
  %cmp = icmp slt i32 %1, 0, !dbg !694
  %lnot = xor i1 %cmp, true, !dbg !694
  %lnot1 = xor i1 %lnot, true, !dbg !694
  %frombool = zext i1 %lnot1 to i8, !dbg !694
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !694
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #14, !dbg !695
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !567, metadata !DIExpression()), !dbg !695
  %2 = load i8, ptr %__ret_do_once, align 1, !dbg !695, !range !642, !noundef !620
  %tobool2 = trunc i8 %2 to i1, !dbg !695
  %lnot3 = xor i1 %tobool2, true, !dbg !695
  %lnot4 = xor i1 %lnot3, true, !dbg !695
  %frombool5 = zext i1 %lnot4 to i8, !dbg !695
  store i8 %frombool5, ptr %__ret_cond, align 1, !dbg !695
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #14, !dbg !695
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !570, metadata !DIExpression()), !dbg !695
  store i8 0, ptr %__ret_once, align 1, !dbg !695
  %3 = load i8, ptr %__ret_cond, align 1, !dbg !696, !range !642, !noundef !620
  %tobool6 = trunc i8 %3 to i1, !dbg !696
  br i1 %tobool6, label %land.rhs, label %land.end, !dbg !696

land.rhs:                                         ; preds = %if.then
  %4 = load i8, ptr @enable_swap_slots_cache.__already_done, align 1, !dbg !696, !range !642, !noundef !620
  %tobool7 = trunc i8 %4 to i1, !dbg !696
  %lnot8 = xor i1 %tobool7, true, !dbg !696
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %5 = phi i1 [ false, %if.then ], [ %lnot8, %land.rhs ], !dbg !698
  %lnot9 = xor i1 %5, true, !dbg !696
  %lnot10 = xor i1 %lnot9, true, !dbg !696
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !696
  %conv = sext i32 %lnot.ext to i64, !dbg !696
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !696
  %tobool11 = icmp ne i64 %expval, 0, !dbg !696
  br i1 %tobool11, label %if.then12, label %if.end, !dbg !695

if.then12:                                        ; preds = %land.end
  store i8 1, ptr @enable_swap_slots_cache.__already_done, align 1, !dbg !699
  store i8 1, ptr %__ret_once, align 1, !dbg !699
  br label %if.end, !dbg !699

if.end:                                           ; preds = %if.then12, %land.end
  %6 = load i8, ptr %__ret_once, align 1, !dbg !695, !range !642, !noundef !620
  %tobool13 = trunc i8 %6 to i1, !dbg !695
  %lnot14 = xor i1 %tobool13, true, !dbg !695
  %lnot16 = xor i1 %lnot14, true, !dbg !695
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !695
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !695
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !695
  store i64 %expval19, ptr %tmp, align 8, !dbg !696
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #14, !dbg !701
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #14, !dbg !701
  %7 = load i64, ptr %tmp, align 8, !dbg !695
  %tobool20 = icmp ne i64 %7, 0, !dbg !701
  br i1 %tobool20, label %if.then21, label %if.end58, !dbg !694

if.then21:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !571, metadata !DIExpression()), !dbg !702
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !702
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !703
  %tobool22 = icmp ne i32 %8, 0, !dbg !703
  %lnot23 = xor i1 %tobool22, true, !dbg !703
  %lnot25 = xor i1 %lnot23, true, !dbg !703
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !703
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !703
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !703
  %tobool29 = icmp ne i64 %expval28, 0, !dbg !703
  br i1 %tobool29, label %if.then30, label %if.end49, !dbg !702

if.then30:                                        ; preds = %if.then21
  br label %do.body, !dbg !703

do.body:                                          ; preds = %if.then30
  br label %do.body31, !dbg !704

do.body31:                                        ; preds = %do.body
  br label %do.cond, !dbg !705

do.cond:                                          ; preds = %do.body31
  br label %do.end, !dbg !705

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.1, ptr noundef @__func__.enable_swap_slots_cache) #13, !dbg !704
  br label %do.body32, !dbg !704

do.body32:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !707
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !573, metadata !DIExpression()), !dbg !707
  store i32 2313, ptr %__flags, align 4, !dbg !707
  br label %do.body33, !dbg !707

do.body33:                                        ; preds = %do.body32
  br label %do.cond34, !dbg !708

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !708

do.end35:                                         ; preds = %do.cond34
  br label %do.body36, !dbg !707

do.body36:                                        ; preds = %do.end35
  %9 = load i32, ptr %__flags, align 4, !dbg !710
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 247, i32 %9, i64 12) #14, !dbg !710, !srcloc !712
  br label %do.cond37, !dbg !710

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !710

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !707

do.body39:                                        ; preds = %do.end38
  br label %do.cond40, !dbg !713

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !713

do.end41:                                         ; preds = %do.cond40
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !704
  br label %do.cond42, !dbg !707

do.cond42:                                        ; preds = %do.end41
  br label %do.end43, !dbg !707

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !704

do.body44:                                        ; preds = %do.end43
  br label %do.cond45, !dbg !715

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !715

do.end46:                                         ; preds = %do.cond45
  br label %do.cond47, !dbg !704

do.cond47:                                        ; preds = %do.end46
  br label %do.end48, !dbg !704

do.end48:                                         ; preds = %do.cond47
  br label %if.end49, !dbg !704

if.end49:                                         ; preds = %do.end48, %if.then21
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !702
  %tobool51 = icmp ne i32 %10, 0, !dbg !702
  %lnot52 = xor i1 %tobool51, true, !dbg !702
  %lnot54 = xor i1 %lnot52, true, !dbg !702
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !702
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !702
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !702
  store i64 %expval57, ptr %tmp50, align 8, !dbg !703
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !701
  %11 = load i64, ptr %tmp50, align 8, !dbg !702
  br label %if.end58, !dbg !701

if.end58:                                         ; preds = %if.end49, %if.end
  %12 = load i8, ptr %__ret_do_once, align 1, !dbg !694, !range !642, !noundef !620
  %tobool60 = trunc i8 %12 to i1, !dbg !694
  %lnot61 = xor i1 %tobool60, true, !dbg !694
  %lnot63 = xor i1 %lnot61, true, !dbg !694
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !694
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !694
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !694
  store i64 %expval66, ptr %tmp59, align 8, !dbg !701
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #14, !dbg !717
  %13 = load i64, ptr %tmp59, align 8, !dbg !694
  %tobool67 = icmp ne i64 %13, 0, !dbg !717
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !718

if.then68:                                        ; preds = %if.end58
  store i32 16, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !719

if.end69:                                         ; preds = %if.end58
  store i8 1, ptr @swap_slot_cache_initialized, align 1, !dbg !720
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !721
  br label %cleanup, !dbg !721

cleanup:                                          ; preds = %if.then68, %if.end69
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !721
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 16, label %out_unlock
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end70, !dbg !722

if.end70:                                         ; preds = %cleanup.cont, %entry
  call void @__reenable_swap_slots_cache() #13, !dbg !723
  br label %out_unlock, !dbg !723

out_unlock:                                       ; preds = %if.end70, %cleanup
  call void @llvm.dbg.label(metadata !577), !dbg !724
  call void @mutex_unlock(ptr noundef @swap_slots_cache_enable_mutex) #13, !dbg !725
  ret void, !dbg !726

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuhp_setup_state(i32 noundef %state, ptr noundef %name, ptr noundef %startup, ptr noundef %teardown) #4 align 16 !dbg !727 {
entry:
  %state.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %startup.addr = alloca ptr, align 8
  %teardown.addr = alloca ptr, align 8
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !732, metadata !DIExpression()), !dbg !736
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !733, metadata !DIExpression()), !dbg !737
  store ptr %startup, ptr %startup.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %startup.addr, metadata !734, metadata !DIExpression()), !dbg !738
  store ptr %teardown, ptr %teardown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %teardown.addr, metadata !735, metadata !DIExpression()), !dbg !739
  %0 = load i32, ptr %state.addr, align 4, !dbg !740
  %1 = load ptr, ptr %name.addr, align 8, !dbg !741
  %2 = load ptr, ptr %startup.addr, align 8, !dbg !742
  %3 = load ptr, ptr %teardown.addr, align 8, !dbg !743
  %call = call i32 @__cpuhp_setup_state(i32 noundef %0, ptr noundef %1, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false) #13, !dbg !744
  ret i32 %call, !dbg !745
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @alloc_swap_slot_cache(i32 noundef %cpu) #0 align 16 !dbg !603 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %cache = alloca ptr, align 8
  %slots = alloca ptr, align 8
  %slots_ret = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp5 = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !607, metadata !DIExpression()), !dbg !746
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache) #14, !dbg !747
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !608, metadata !DIExpression()), !dbg !748
  call void @llvm.lifetime.start.p0(i64 8, ptr %slots) #14, !dbg !749
  call void @llvm.dbg.declare(metadata ptr %slots, metadata !609, metadata !DIExpression()), !dbg !750
  call void @llvm.lifetime.start.p0(i64 8, ptr %slots_ret) #14, !dbg !749
  call void @llvm.dbg.declare(metadata ptr %slots_ret, metadata !610, metadata !DIExpression()), !dbg !751
  %call = call noalias ptr @kvcalloc(i64 noundef 64, i64 noundef 8, i32 noundef 3264) #15, !dbg !752
  store ptr %call, ptr %slots, align 8, !dbg !753
  %0 = load ptr, ptr %slots, align 8, !dbg !754
  %tobool = icmp ne ptr %0, null, !dbg !754
  br i1 %tobool, label %if.end, label %if.then, !dbg !756

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !757

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kvcalloc(i64 noundef 64, i64 noundef 8, i32 noundef 3264) #15, !dbg !758
  store ptr %call1, ptr %slots_ret, align 8, !dbg !759
  %1 = load ptr, ptr %slots_ret, align 8, !dbg !760
  %tobool2 = icmp ne ptr %1, null, !dbg !760
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !762

if.then3:                                         ; preds = %if.end
  %2 = load ptr, ptr %slots, align 8, !dbg !763
  call void @kvfree(ptr noundef %2) #13, !dbg !765
  store i32 -12, ptr %retval, align 4, !dbg !766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !766

if.end4:                                          ; preds = %if.end
  call void @mutex_lock(ptr noundef @swap_slots_cache_mutex) #13, !dbg !767
  br label %do.body, !dbg !768

do.body:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !769
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !611, metadata !DIExpression()), !dbg !769
  store ptr null, ptr %__vpp_verify, align 8, !dbg !769
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !769
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !768
  br label %do.cond, !dbg !769

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !769

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !770
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !616, metadata !DIExpression()), !dbg !770
  store i64 ptrtoint (ptr @swp_slots to i64), ptr %__ptr, align 8, !dbg !770
  %4 = load i64, ptr %__ptr, align 8, !dbg !770
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !770
  %idxprom = zext i32 %5 to i64, !dbg !770
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !770
  %6 = load i64, ptr %arrayidx, align 8, !dbg !770
  %add = add i64 %4, %6, !dbg !770
  %7 = inttoptr i64 %add to ptr, !dbg !770
  store ptr %7, ptr %tmp5, align 8, !dbg !770
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !768
  %8 = load ptr, ptr %tmp5, align 8, !dbg !770
  store ptr %8, ptr %tmp, align 8, !dbg !769
  %9 = load ptr, ptr %tmp, align 8, !dbg !768
  store ptr %9, ptr %cache, align 8, !dbg !771
  %10 = load ptr, ptr %cache, align 8, !dbg !772
  %slots6 = getelementptr inbounds %struct.swap_slots_cache, ptr %10, i32 0, i32 2, !dbg !774
  %11 = load ptr, ptr %slots6, align 8, !dbg !774
  %tobool7 = icmp ne ptr %11, null, !dbg !772
  br i1 %tobool7, label %if.then10, label %lor.lhs.false, !dbg !775

lor.lhs.false:                                    ; preds = %do.end
  %12 = load ptr, ptr %cache, align 8, !dbg !776
  %slots_ret8 = getelementptr inbounds %struct.swap_slots_cache, ptr %12, i32 0, i32 6, !dbg !777
  %13 = load ptr, ptr %slots_ret8, align 8, !dbg !777
  %tobool9 = icmp ne ptr %13, null, !dbg !776
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !778

if.then10:                                        ; preds = %lor.lhs.false, %do.end
  call void @mutex_unlock(ptr noundef @swap_slots_cache_mutex) #13, !dbg !779
  %14 = load ptr, ptr %slots, align 8, !dbg !781
  call void @kvfree(ptr noundef %14) #13, !dbg !782
  %15 = load ptr, ptr %slots_ret, align 8, !dbg !783
  call void @kvfree(ptr noundef %15) #13, !dbg !784
  store i32 0, ptr %retval, align 4, !dbg !785
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !785

if.end11:                                         ; preds = %lor.lhs.false
  %16 = load ptr, ptr %cache, align 8, !dbg !786
  %lock_initialized = getelementptr inbounds %struct.swap_slots_cache, ptr %16, i32 0, i32 0, !dbg !788
  %17 = load i8, ptr %lock_initialized, align 8, !dbg !788, !range !642, !noundef !620
  %tobool12 = trunc i8 %17 to i1, !dbg !788
  br i1 %tobool12, label %if.end23, label %if.then13, !dbg !789

if.then13:                                        ; preds = %if.end11
  br label %do.body14, !dbg !790

do.body14:                                        ; preds = %if.then13
  %18 = load ptr, ptr %cache, align 8, !dbg !792
  %alloc_lock = getelementptr inbounds %struct.swap_slots_cache, ptr %18, i32 0, i32 1, !dbg !792
  call void @__mutex_init(ptr noundef %alloc_lock, ptr noundef @.str.3, ptr noundef @alloc_swap_slot_cache.__key) #13, !dbg !792
  br label %do.cond15, !dbg !792

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !792

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !794

do.body17:                                        ; preds = %do.end16
  %19 = load ptr, ptr %cache, align 8, !dbg !795
  %free_lock = getelementptr inbounds %struct.swap_slots_cache, ptr %19, i32 0, i32 5, !dbg !795
  %call18 = call ptr @spinlock_check(ptr noundef %free_lock) #13, !dbg !795
  %20 = load ptr, ptr %cache, align 8, !dbg !795
  %free_lock19 = getelementptr inbounds %struct.swap_slots_cache, ptr %20, i32 0, i32 5, !dbg !795
  %21 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !795
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %21, i32 0, i32 0, !dbg !795
  %22 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !795
  %counter = getelementptr inbounds %struct.atomic_t, ptr %22, i32 0, i32 0, !dbg !795
  store i32 0, ptr %counter, align 4, !dbg !795
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %free_lock19, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !795
  br label %do.cond20, !dbg !795

do.cond20:                                        ; preds = %do.body17
  br label %do.end21, !dbg !795

do.end21:                                         ; preds = %do.cond20
  %23 = load ptr, ptr %cache, align 8, !dbg !797
  %lock_initialized22 = getelementptr inbounds %struct.swap_slots_cache, ptr %23, i32 0, i32 0, !dbg !798
  store i8 1, ptr %lock_initialized22, align 8, !dbg !799
  br label %if.end23, !dbg !800

if.end23:                                         ; preds = %do.end21, %if.end11
  %24 = load ptr, ptr %cache, align 8, !dbg !801
  %nr = getelementptr inbounds %struct.swap_slots_cache, ptr %24, i32 0, i32 3, !dbg !802
  store i32 0, ptr %nr, align 8, !dbg !803
  %25 = load ptr, ptr %cache, align 8, !dbg !804
  %cur = getelementptr inbounds %struct.swap_slots_cache, ptr %25, i32 0, i32 4, !dbg !805
  store i32 0, ptr %cur, align 4, !dbg !806
  %26 = load ptr, ptr %cache, align 8, !dbg !807
  %n_ret = getelementptr inbounds %struct.swap_slots_cache, ptr %26, i32 0, i32 7, !dbg !808
  store i32 0, ptr %n_ret, align 8, !dbg !809
  br label %do.body24, !dbg !810

do.body24:                                        ; preds = %if.end23
  br label %do.body25, !dbg !811

do.body25:                                        ; preds = %do.body24
  br label %do.cond26, !dbg !813

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !813

do.end27:                                         ; preds = %do.cond26
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !811, !srcloc !815
  br label %do.cond28, !dbg !811

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !811

do.end29:                                         ; preds = %do.cond28
  %27 = load ptr, ptr %slots, align 8, !dbg !816
  %28 = load ptr, ptr %cache, align 8, !dbg !817
  %slots30 = getelementptr inbounds %struct.swap_slots_cache, ptr %28, i32 0, i32 2, !dbg !818
  store ptr %27, ptr %slots30, align 8, !dbg !819
  %29 = load ptr, ptr %slots_ret, align 8, !dbg !820
  %30 = load ptr, ptr %cache, align 8, !dbg !821
  %slots_ret31 = getelementptr inbounds %struct.swap_slots_cache, ptr %30, i32 0, i32 6, !dbg !822
  store ptr %29, ptr %slots_ret31, align 8, !dbg !823
  call void @mutex_unlock(ptr noundef @swap_slots_cache_mutex) #13, !dbg !824
  store i32 0, ptr %retval, align 4, !dbg !825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !825

cleanup:                                          ; preds = %do.end29, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slots_ret) #14, !dbg !826
  call void @llvm.lifetime.end.p0(i64 8, ptr %slots) #14, !dbg !826
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache) #14, !dbg !826
  %31 = load i32, ptr %retval, align 4, !dbg !826
  ret i32 %31, !dbg !826
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @free_slot_cache(i32 noundef %cpu) #0 align 16 !dbg !827 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !829, metadata !DIExpression()), !dbg !830
  call void @mutex_lock(ptr noundef @swap_slots_cache_mutex) #13, !dbg !831
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !832
  call void @drain_slots_cache_cpu(i32 noundef %0, i32 noundef 3, i1 noundef zeroext true) #13, !dbg !833
  call void @mutex_unlock(ptr noundef @swap_slots_cache_mutex) #13, !dbg !834
  ret i32 0, !dbg !835
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !836 dso_local void @__warn_printk(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @free_swap_slot(i64 %entry.coerce) #0 align 16 !dbg !840 {
entry:
  %entry2 = alloca %struct.swp_entry_t, align 8
  %cache = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp3 = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0
  store i64 %entry.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !844, metadata !DIExpression()), !dbg !854
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache) #14, !dbg !855
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !845, metadata !DIExpression()), !dbg !856
  br label %do.body, !dbg !857

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !858
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !846, metadata !DIExpression()), !dbg !858
  store ptr null, ptr %__vpp_verify, align 8, !dbg !858
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !858
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !857
  br label %do.cond, !dbg !858

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !858

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #14, !dbg !859
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !849, metadata !DIExpression()), !dbg !859
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @swp_slots) #16, !dbg !859, !srcloc !860
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !859
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !859
  %3 = inttoptr i64 %2 to ptr, !dbg !859
  store ptr %3, ptr %tmp3, align 8, !dbg !859
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #14, !dbg !857
  %4 = load ptr, ptr %tmp3, align 8, !dbg !859
  store ptr %4, ptr %tmp, align 8, !dbg !858
  %5 = load ptr, ptr %tmp, align 8, !dbg !857
  store ptr %5, ptr %cache, align 8, !dbg !861
  %6 = load i8, ptr @swap_slot_cache_active, align 1, !dbg !862, !range !642, !noundef !620
  %tobool = trunc i8 %6 to i1, !dbg !862
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !862

land.lhs.true:                                    ; preds = %do.end
  %7 = load i8, ptr @swap_slot_cache_enabled, align 1, !dbg !862, !range !642, !noundef !620
  %tobool4 = trunc i8 %7 to i1, !dbg !862
  br i1 %tobool4, label %land.rhs, label %land.end, !dbg !862

land.rhs:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr %cache, align 8, !dbg !862
  %slots_ret = getelementptr inbounds %struct.swap_slots_cache, ptr %8, i32 0, i32 6, !dbg !862
  %9 = load ptr, ptr %slots_ret, align 8, !dbg !862
  %tobool5 = icmp ne ptr %9, null, !dbg !862
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.end
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %do.end ], [ %tobool5, %land.rhs ], !dbg !863
  %lnot = xor i1 %10, true, !dbg !862
  %lnot6 = xor i1 %lnot, true, !dbg !862
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !862
  %conv = sext i32 %lnot.ext to i64, !dbg !862
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !862
  %tobool7 = icmp ne i64 %expval, 0, !dbg !862
  br i1 %tobool7, label %if.then, label %if.else, !dbg !864

if.then:                                          ; preds = %land.end
  %11 = load ptr, ptr %cache, align 8, !dbg !865
  %free_lock = getelementptr inbounds %struct.swap_slots_cache, ptr %11, i32 0, i32 5, !dbg !867
  call void @spin_lock_irq(ptr noundef %free_lock) #13, !dbg !868
  %12 = load i8, ptr @swap_slot_cache_active, align 1, !dbg !869, !range !642, !noundef !620
  %tobool8 = trunc i8 %12 to i1, !dbg !869
  br i1 %tobool8, label %land.lhs.true10, label %if.then15, !dbg !869

land.lhs.true10:                                  ; preds = %if.then
  %13 = load i8, ptr @swap_slot_cache_enabled, align 1, !dbg !869, !range !642, !noundef !620
  %tobool11 = trunc i8 %13 to i1, !dbg !869
  br i1 %tobool11, label %lor.lhs.false, label %if.then15, !dbg !871

lor.lhs.false:                                    ; preds = %land.lhs.true10
  %14 = load ptr, ptr %cache, align 8, !dbg !872
  %slots_ret13 = getelementptr inbounds %struct.swap_slots_cache, ptr %14, i32 0, i32 6, !dbg !873
  %15 = load ptr, ptr %slots_ret13, align 8, !dbg !873
  %tobool14 = icmp ne ptr %15, null, !dbg !872
  br i1 %tobool14, label %if.end, label %if.then15, !dbg !874

if.then15:                                        ; preds = %lor.lhs.false, %land.lhs.true10, %if.then
  %16 = load ptr, ptr %cache, align 8, !dbg !875
  %free_lock16 = getelementptr inbounds %struct.swap_slots_cache, ptr %16, i32 0, i32 5, !dbg !877
  call void @spin_unlock_irq(ptr noundef %free_lock16) #13, !dbg !878
  br label %direct_free, !dbg !879

if.end:                                           ; preds = %lor.lhs.false
  %17 = load ptr, ptr %cache, align 8, !dbg !880
  %n_ret = getelementptr inbounds %struct.swap_slots_cache, ptr %17, i32 0, i32 7, !dbg !882
  %18 = load i32, ptr %n_ret, align 8, !dbg !882
  %cmp = icmp sge i32 %18, 64, !dbg !883
  br i1 %cmp, label %if.then18, label %if.end22, !dbg !884

if.then18:                                        ; preds = %if.end
  %19 = load ptr, ptr %cache, align 8, !dbg !885
  %slots_ret19 = getelementptr inbounds %struct.swap_slots_cache, ptr %19, i32 0, i32 6, !dbg !887
  %20 = load ptr, ptr %slots_ret19, align 8, !dbg !887
  %21 = load ptr, ptr %cache, align 8, !dbg !888
  %n_ret20 = getelementptr inbounds %struct.swap_slots_cache, ptr %21, i32 0, i32 7, !dbg !889
  %22 = load i32, ptr %n_ret20, align 8, !dbg !889
  call void @swapcache_free_entries(ptr noundef %20, i32 noundef %22) #13, !dbg !890
  %23 = load ptr, ptr %cache, align 8, !dbg !891
  %n_ret21 = getelementptr inbounds %struct.swap_slots_cache, ptr %23, i32 0, i32 7, !dbg !892
  store i32 0, ptr %n_ret21, align 8, !dbg !893
  br label %if.end22, !dbg !894

if.end22:                                         ; preds = %if.then18, %if.end
  %24 = load ptr, ptr %cache, align 8, !dbg !895
  %slots_ret23 = getelementptr inbounds %struct.swap_slots_cache, ptr %24, i32 0, i32 6, !dbg !896
  %25 = load ptr, ptr %slots_ret23, align 8, !dbg !896
  %26 = load ptr, ptr %cache, align 8, !dbg !897
  %n_ret24 = getelementptr inbounds %struct.swap_slots_cache, ptr %26, i32 0, i32 7, !dbg !898
  %27 = load i32, ptr %n_ret24, align 8, !dbg !899
  %inc = add i32 %27, 1, !dbg !899
  store i32 %inc, ptr %n_ret24, align 8, !dbg !899
  %idxprom = sext i32 %27 to i64, !dbg !895
  %arrayidx = getelementptr %struct.swp_entry_t, ptr %25, i64 %idxprom, !dbg !895
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %entry2, i64 8, i1 false), !dbg !900
  %28 = load ptr, ptr %cache, align 8, !dbg !901
  %free_lock25 = getelementptr inbounds %struct.swap_slots_cache, ptr %28, i32 0, i32 5, !dbg !902
  call void @spin_unlock_irq(ptr noundef %free_lock25) #13, !dbg !903
  br label %if.end26, !dbg !904

if.else:                                          ; preds = %land.end
  br label %direct_free, !dbg !905

direct_free:                                      ; preds = %if.else, %if.then15
  call void @llvm.dbg.label(metadata !851), !dbg !906
  call void @swapcache_free_entries(ptr noundef %entry2, i32 noundef 1) #13, !dbg !907
  br label %if.end26

if.end26:                                         ; preds = %direct_free, %if.end22
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache) #14, !dbg !908
  ret void, !dbg !908
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #6 align 16 !dbg !909 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !915, metadata !DIExpression()), !dbg !916
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !917
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !917
  call void @_raw_spin_lock_irq(ptr noundef %1) #13, !dbg !917
  ret void, !dbg !918
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #6 align 16 !dbg !919 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !921, metadata !DIExpression()), !dbg !922
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !923
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !923
  call void @_raw_spin_unlock_irq(ptr noundef %1) #13, !dbg !923
  ret void, !dbg !924
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !925 dso_local void @swapcache_free_entries(ptr noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @folio_alloc_swap(ptr noundef %folio) #0 align 16 !dbg !929 {
entry:
  %retval = alloca %struct.swp_entry_t, align 8
  %folio.addr = alloca ptr, align 8
  %cache = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5785, metadata !DIExpression()), !dbg !5799
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !5786, metadata !DIExpression()), !dbg !5800
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache) #14, !dbg !5801
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !5787, metadata !DIExpression()), !dbg !5802
  %val = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !5803
  store i64 0, ptr %val, align 8, !dbg !5804
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !5805
  %call = call zeroext i1 @folio_test_large(ptr noundef %0) #13, !dbg !5807
  br i1 %call, label %if.then, label %if.end, !dbg !5808

if.then:                                          ; preds = %entry
  br label %out, !dbg !5809

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5811

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5812
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5788, metadata !DIExpression()), !dbg !5812
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5812
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !5812
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5811
  br label %do.cond, !dbg !5812

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5812

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #14, !dbg !5813
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !5791, metadata !DIExpression()), !dbg !5813
  %2 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @swp_slots) #16, !dbg !5813, !srcloc !5814
  store i64 %2, ptr %tcp_ptr__, align 8, !dbg !5813
  %3 = load i64, ptr %tcp_ptr__, align 8, !dbg !5813
  %4 = inttoptr i64 %3 to ptr, !dbg !5813
  store ptr %4, ptr %tmp1, align 8, !dbg !5813
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #14, !dbg !5811
  %5 = load ptr, ptr %tmp1, align 8, !dbg !5813
  store ptr %5, ptr %tmp, align 8, !dbg !5812
  %6 = load ptr, ptr %tmp, align 8, !dbg !5811
  store ptr %6, ptr %cache, align 8, !dbg !5815
  %call2 = call zeroext i1 @check_cache_active() #13, !dbg !5816
  br i1 %call2, label %land.rhs, label %land.end, !dbg !5816

land.rhs:                                         ; preds = %do.end
  %7 = load ptr, ptr %cache, align 8, !dbg !5816
  %slots = getelementptr inbounds %struct.swap_slots_cache, ptr %7, i32 0, i32 2, !dbg !5816
  %8 = load ptr, ptr %slots, align 8, !dbg !5816
  %tobool = icmp ne ptr %8, null, !dbg !5816
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %9 = phi i1 [ false, %do.end ], [ %tobool, %land.rhs ], !dbg !5817
  %lnot = xor i1 %9, true, !dbg !5816
  %lnot3 = xor i1 %lnot, true, !dbg !5816
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5816
  %conv = sext i32 %lnot.ext to i64, !dbg !5816
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5816
  %tobool4 = icmp ne i64 %expval, 0, !dbg !5816
  br i1 %tobool4, label %if.then5, label %if.end29, !dbg !5818

if.then5:                                         ; preds = %land.end
  %10 = load ptr, ptr %cache, align 8, !dbg !5819
  %alloc_lock = getelementptr inbounds %struct.swap_slots_cache, ptr %10, i32 0, i32 1, !dbg !5820
  call void @mutex_lock(ptr noundef %alloc_lock) #13, !dbg !5821
  %11 = load ptr, ptr %cache, align 8, !dbg !5822
  %slots6 = getelementptr inbounds %struct.swap_slots_cache, ptr %11, i32 0, i32 2, !dbg !5823
  %12 = load ptr, ptr %slots6, align 8, !dbg !5823
  %tobool7 = icmp ne ptr %12, null, !dbg !5822
  br i1 %tobool7, label %if.then8, label %if.end23, !dbg !5824

if.then8:                                         ; preds = %if.then5
  br label %repeat, !dbg !5825

repeat:                                           ; preds = %if.then20, %if.then8
  call void @llvm.dbg.label(metadata !5793), !dbg !5826
  %13 = load ptr, ptr %cache, align 8, !dbg !5827
  %nr = getelementptr inbounds %struct.swap_slots_cache, ptr %13, i32 0, i32 3, !dbg !5829
  %14 = load i32, ptr %nr, align 8, !dbg !5829
  %tobool9 = icmp ne i32 %14, 0, !dbg !5827
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !5830

if.then10:                                        ; preds = %repeat
  %15 = load ptr, ptr %cache, align 8, !dbg !5831
  %slots11 = getelementptr inbounds %struct.swap_slots_cache, ptr %15, i32 0, i32 2, !dbg !5833
  %16 = load ptr, ptr %slots11, align 8, !dbg !5833
  %17 = load ptr, ptr %cache, align 8, !dbg !5834
  %cur = getelementptr inbounds %struct.swap_slots_cache, ptr %17, i32 0, i32 4, !dbg !5835
  %18 = load i32, ptr %cur, align 4, !dbg !5835
  %idxprom = sext i32 %18 to i64, !dbg !5831
  %arrayidx = getelementptr %struct.swp_entry_t, ptr %16, i64 %idxprom, !dbg !5831
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %arrayidx, i64 8, i1 false), !dbg !5831
  %19 = load ptr, ptr %cache, align 8, !dbg !5836
  %slots12 = getelementptr inbounds %struct.swap_slots_cache, ptr %19, i32 0, i32 2, !dbg !5837
  %20 = load ptr, ptr %slots12, align 8, !dbg !5837
  %21 = load ptr, ptr %cache, align 8, !dbg !5838
  %cur13 = getelementptr inbounds %struct.swap_slots_cache, ptr %21, i32 0, i32 4, !dbg !5839
  %22 = load i32, ptr %cur13, align 4, !dbg !5840
  %inc = add i32 %22, 1, !dbg !5840
  store i32 %inc, ptr %cur13, align 4, !dbg !5840
  %idxprom14 = sext i32 %22 to i64, !dbg !5836
  %arrayidx15 = getelementptr %struct.swp_entry_t, ptr %20, i64 %idxprom14, !dbg !5836
  %val16 = getelementptr inbounds %struct.swp_entry_t, ptr %arrayidx15, i32 0, i32 0, !dbg !5841
  store i64 0, ptr %val16, align 8, !dbg !5842
  %23 = load ptr, ptr %cache, align 8, !dbg !5843
  %nr17 = getelementptr inbounds %struct.swap_slots_cache, ptr %23, i32 0, i32 3, !dbg !5844
  %24 = load i32, ptr %nr17, align 8, !dbg !5845
  %dec = add i32 %24, -1, !dbg !5845
  store i32 %dec, ptr %nr17, align 8, !dbg !5845
  br label %if.end22, !dbg !5846

if.else:                                          ; preds = %repeat
  %25 = load ptr, ptr %cache, align 8, !dbg !5847
  %call18 = call i32 @refill_swap_slots_cache(ptr noundef %25) #13, !dbg !5849
  %tobool19 = icmp ne i32 %call18, 0, !dbg !5849
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !5850

if.then20:                                        ; preds = %if.else
  br label %repeat, !dbg !5851

if.end21:                                         ; preds = %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then10
  br label %if.end23, !dbg !5853

if.end23:                                         ; preds = %if.end22, %if.then5
  %26 = load ptr, ptr %cache, align 8, !dbg !5854
  %alloc_lock24 = getelementptr inbounds %struct.swap_slots_cache, ptr %26, i32 0, i32 1, !dbg !5855
  call void @mutex_unlock(ptr noundef %alloc_lock24) #13, !dbg !5856
  %val25 = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !5857
  %27 = load i64, ptr %val25, align 8, !dbg !5857
  %tobool26 = icmp ne i64 %27, 0, !dbg !5859
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5860

if.then27:                                        ; preds = %if.end23
  br label %out, !dbg !5861

if.end28:                                         ; preds = %if.end23
  br label %if.end29, !dbg !5862

if.end29:                                         ; preds = %if.end28, %land.end
  %call30 = call i32 @get_swap_pages(i32 noundef 1, ptr noundef %retval, i32 noundef 1) #13, !dbg !5863
  br label %out, !dbg !5863

out:                                              ; preds = %if.end29, %if.then27, %if.then
  call void @llvm.dbg.label(metadata !5798), !dbg !5864
  %28 = load ptr, ptr %folio.addr, align 8, !dbg !5865
  %coerce.dive = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !5867
  %29 = load i64, ptr %coerce.dive, align 8, !dbg !5867
  %call31 = call i32 @mem_cgroup_try_charge_swap(ptr noundef %28, i64 %29) #13, !dbg !5867
  %tobool32 = icmp ne i32 %call31, 0, !dbg !5867
  br i1 %tobool32, label %if.then33, label %if.end36, !dbg !5868

if.then33:                                        ; preds = %out
  %30 = load ptr, ptr %folio.addr, align 8, !dbg !5869
  %coerce.dive34 = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !5871
  %31 = load i64, ptr %coerce.dive34, align 8, !dbg !5871
  call void @put_swap_folio(ptr noundef %30, i64 %31) #13, !dbg !5871
  %val35 = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !5872
  store i64 0, ptr %val35, align 8, !dbg !5873
  br label %if.end36, !dbg !5874

if.end36:                                         ; preds = %if.then33, %out
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache) #14, !dbg !5875
  %coerce.dive37 = getelementptr inbounds %struct.swp_entry_t, ptr %retval, i32 0, i32 0, !dbg !5875
  %32 = load i64, ptr %coerce.dive37, align 8, !dbg !5875
  ret i64 %32, !dbg !5875
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_large(ptr noundef %folio) #4 align 16 !dbg !5876 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5880, metadata !DIExpression()), !dbg !5881
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !5882
  %call = call zeroext i1 @folio_test_head(ptr noundef %0) #13, !dbg !5883
  ret i1 %call, !dbg !5884
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_cache_active() #0 align 16 !dbg !5885 {
entry:
  %retval = alloca i1, align 1
  %pages = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages) #14, !dbg !5889
  call void @llvm.dbg.declare(metadata ptr %pages, metadata !5887, metadata !DIExpression()), !dbg !5890
  %0 = load i8, ptr @swap_slot_cache_enabled, align 1, !dbg !5891, !range !642, !noundef !620
  %tobool = trunc i8 %0 to i1, !dbg !5891
  br i1 %tobool, label %if.end, label %if.then, !dbg !5893

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5894
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5894

if.end:                                           ; preds = %entry
  %call = call i64 @get_nr_swap_pages() #13, !dbg !5895
  store i64 %call, ptr %pages, align 8, !dbg !5896
  %1 = load i8, ptr @swap_slot_cache_active, align 1, !dbg !5897, !range !642, !noundef !620
  %tobool1 = trunc i8 %1 to i1, !dbg !5897
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !5899

if.then2:                                         ; preds = %if.end
  %2 = load i64, ptr %pages, align 8, !dbg !5900
  %call3 = call i32 @num_online_cpus() #13, !dbg !5903
  %mul = mul i32 %call3, 320, !dbg !5904
  %conv = zext i32 %mul to i64, !dbg !5903
  %cmp = icmp sgt i64 %2, %conv, !dbg !5905
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !5906

if.then5:                                         ; preds = %if.then2
  call void @reactivate_swap_slots_cache() #13, !dbg !5907
  br label %if.end6, !dbg !5907

if.end6:                                          ; preds = %if.then5, %if.then2
  br label %out, !dbg !5908

if.end7:                                          ; preds = %if.end
  %3 = load i64, ptr %pages, align 8, !dbg !5909
  %call8 = call i32 @num_online_cpus() #13, !dbg !5911
  %mul9 = mul i32 %call8, 128, !dbg !5912
  %conv10 = zext i32 %mul9 to i64, !dbg !5911
  %cmp11 = icmp slt i64 %3, %conv10, !dbg !5913
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !5914

if.then13:                                        ; preds = %if.end7
  call void @deactivate_swap_slots_cache() #13, !dbg !5915
  br label %if.end14, !dbg !5915

if.end14:                                         ; preds = %if.then13, %if.end7
  br label %out, !dbg !5916

out:                                              ; preds = %if.end14, %if.end6
  call void @llvm.dbg.label(metadata !5888), !dbg !5917
  %4 = load i8, ptr @swap_slot_cache_active, align 1, !dbg !5918, !range !642, !noundef !620
  %tobool15 = trunc i8 %4 to i1, !dbg !5918
  store i1 %tobool15, ptr %retval, align 1, !dbg !5919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5919

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages) #14, !dbg !5920
  %5 = load i1, ptr %retval, align 1, !dbg !5920
  ret i1 %5, !dbg !5920
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refill_swap_slots_cache(ptr noundef %cache) #0 align 16 !dbg !5921 {
entry:
  %retval = alloca i32, align 4
  %cache.addr = alloca ptr, align 8
  store ptr %cache, ptr %cache.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cache.addr, metadata !5925, metadata !DIExpression()), !dbg !5926
  %0 = load i8, ptr @swap_slot_cache_active, align 1, !dbg !5927, !range !642, !noundef !620
  %tobool = trunc i8 %0 to i1, !dbg !5927
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !5927

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr @swap_slot_cache_enabled, align 1, !dbg !5927, !range !642, !noundef !620
  %tobool1 = trunc i8 %1 to i1, !dbg !5927
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5929

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !5930
  br label %return, !dbg !5930

if.end:                                           ; preds = %land.lhs.true
  %2 = load ptr, ptr %cache.addr, align 8, !dbg !5931
  %cur = getelementptr inbounds %struct.swap_slots_cache, ptr %2, i32 0, i32 4, !dbg !5932
  store i32 0, ptr %cur, align 4, !dbg !5933
  %3 = load i8, ptr @swap_slot_cache_active, align 1, !dbg !5934, !range !642, !noundef !620
  %tobool2 = trunc i8 %3 to i1, !dbg !5934
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5936

if.then3:                                         ; preds = %if.end
  %4 = load ptr, ptr %cache.addr, align 8, !dbg !5937
  %slots = getelementptr inbounds %struct.swap_slots_cache, ptr %4, i32 0, i32 2, !dbg !5938
  %5 = load ptr, ptr %slots, align 8, !dbg !5938
  %call = call i32 @get_swap_pages(i32 noundef 64, ptr noundef %5, i32 noundef 1) #13, !dbg !5939
  %6 = load ptr, ptr %cache.addr, align 8, !dbg !5940
  %nr = getelementptr inbounds %struct.swap_slots_cache, ptr %6, i32 0, i32 3, !dbg !5941
  store i32 %call, ptr %nr, align 8, !dbg !5942
  br label %if.end4, !dbg !5940

if.end4:                                          ; preds = %if.then3, %if.end
  %7 = load ptr, ptr %cache.addr, align 8, !dbg !5943
  %nr5 = getelementptr inbounds %struct.swap_slots_cache, ptr %7, i32 0, i32 3, !dbg !5944
  %8 = load i32, ptr %nr5, align 8, !dbg !5944
  store i32 %8, ptr %retval, align 4, !dbg !5945
  br label %return, !dbg !5945

return:                                           ; preds = %if.end4, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !5946
  ret i32 %9, !dbg !5946
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5947 dso_local i32 @get_swap_pages(i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mem_cgroup_try_charge_swap(ptr noundef %folio, i64 %entry.coerce) #4 align 16 !dbg !5950 {
entry:
  %entry2 = alloca %struct.swp_entry_t, align 8
  %folio.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.swp_entry_t, ptr %entry2, i32 0, i32 0
  store i64 %entry.coerce, ptr %coerce.dive, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !5954, metadata !DIExpression()), !dbg !5956
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !5955, metadata !DIExpression()), !dbg !5957
  ret i32 0, !dbg !5958
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5959 dso_local void @put_swap_folio(ptr noundef, i64) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5962 dso_local zeroext i1 @has_usable_swap() #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !5963 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5969, metadata !DIExpression()), !dbg !5975
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5970, metadata !DIExpression()), !dbg !5976
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5971, metadata !DIExpression()), !dbg !5977
  %0 = load i64, ptr %size.addr, align 8, !dbg !5978
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5978
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !5978

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5978
  %cmp = icmp ule i64 %2, 64, !dbg !5978
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !5978

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !5978
  %cmp2 = icmp ugt i64 %3, 0, !dbg !5978
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !5979

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !5980
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5972, metadata !DIExpression()), !dbg !5981
  %4 = load i64, ptr %offset.addr, align 8, !dbg !5982
  %5 = load i64, ptr %size.addr, align 8, !dbg !5982
  %cmp3 = icmp uge i64 %4, %5, !dbg !5982
  %lnot = xor i1 %cmp3, true, !dbg !5982
  %lnot4 = xor i1 %lnot, true, !dbg !5982
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5982
  %conv = sext i32 %lnot.ext to i64, !dbg !5982
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5982
  %tobool = icmp ne i64 %expval, 0, !dbg !5982
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5984

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5985
  store i64 %6, ptr %retval, align 8, !dbg !5986
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5986

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !5987
  %8 = load i64, ptr %7, align 8, !dbg !5988
  %9 = load i64, ptr %offset.addr, align 8, !dbg !5989
  %shl = shl i64 1, %9, !dbg !5989
  %sub = sub i64 -1, %shl, !dbg !5989
  %add = add i64 %sub, 1, !dbg !5989
  %10 = load i64, ptr %size.addr, align 8, !dbg !5989
  %sub6 = sub i64 %10, 1, !dbg !5989
  %sub7 = sub i64 63, %sub6, !dbg !5989
  %shr = lshr i64 -1, %sub7, !dbg !5989
  %and = and i64 %add, %shr, !dbg !5989
  %add8 = add i64 0, %and, !dbg !5989
  %and9 = and i64 %8, %add8, !dbg !5990
  store i64 %and9, ptr %val, align 8, !dbg !5991
  %11 = load i64, ptr %val, align 8, !dbg !5992
  %tobool10 = icmp ne i64 %11, 0, !dbg !5992
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !5992

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !5993
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5993
  br i1 %13, label %cond.true11, label %cond.false, !dbg !5993

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !5993
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !5993
  %cast = trunc i64 %15 to i32, !dbg !5993
  %conv12 = sext i32 %cast to i64, !dbg !5993
  br label %cond.end, !dbg !5993

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !5993
  %call = call i64 @variable__ffs(i64 noundef %16) #13, !dbg !5993
  br label %cond.end, !dbg !5993

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !5993
  br label %cond.end14, !dbg !5992

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !5994
  br label %cond.end14, !dbg !5992

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !5992
  store i64 %cond15, ptr %retval, align 8, !dbg !5995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5995

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !5996
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !5997
  %19 = load i64, ptr %size.addr, align 8, !dbg !5998
  %20 = load i64, ptr %offset.addr, align 8, !dbg !5999
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #13, !dbg !6000
  store i64 %call17, ptr %retval, align 8, !dbg !6001
  br label %return, !dbg !6001

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !6002
  ret i64 %21, !dbg !6002
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drain_slots_cache_cpu(i32 noundef %cpu, i32 noundef %type, i1 noundef zeroext %free_slots) #0 align 16 !dbg !6003 {
entry:
  %cpu.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %free_slots.addr = alloca i8, align 1
  %cache = alloca ptr, align 8
  %slots = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6007, metadata !DIExpression()), !dbg !6017
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6008, metadata !DIExpression()), !dbg !6018
  %frombool = zext i1 %free_slots to i8
  store i8 %frombool, ptr %free_slots.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %free_slots.addr, metadata !6009, metadata !DIExpression()), !dbg !6019
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache) #14, !dbg !6020
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !6010, metadata !DIExpression()), !dbg !6021
  call void @llvm.lifetime.start.p0(i64 8, ptr %slots) #14, !dbg !6022
  call void @llvm.dbg.declare(metadata ptr %slots, metadata !6011, metadata !DIExpression()), !dbg !6023
  store ptr null, ptr %slots, align 8, !dbg !6023
  br label %do.body, !dbg !6024

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6025
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6012, metadata !DIExpression()), !dbg !6025
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6025
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6025
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6024
  br label %do.cond, !dbg !6025

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6025

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !6026
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6015, metadata !DIExpression()), !dbg !6026
  store i64 ptrtoint (ptr @swp_slots to i64), ptr %__ptr, align 8, !dbg !6026
  %1 = load i64, ptr %__ptr, align 8, !dbg !6026
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !6026
  %idxprom = zext i32 %2 to i64, !dbg !6026
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6026
  %3 = load i64, ptr %arrayidx, align 8, !dbg !6026
  %add = add i64 %1, %3, !dbg !6026
  %4 = inttoptr i64 %add to ptr, !dbg !6026
  store ptr %4, ptr %tmp1, align 8, !dbg !6026
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !6024
  %5 = load ptr, ptr %tmp1, align 8, !dbg !6026
  store ptr %5, ptr %tmp, align 8, !dbg !6025
  %6 = load ptr, ptr %tmp, align 8, !dbg !6024
  store ptr %6, ptr %cache, align 8, !dbg !6027
  %7 = load i32, ptr %type.addr, align 4, !dbg !6028
  %and = and i32 %7, 1, !dbg !6030
  %tobool = icmp ne i32 %and, 0, !dbg !6030
  br i1 %tobool, label %land.lhs.true, label %if.end15, !dbg !6031

land.lhs.true:                                    ; preds = %do.end
  %8 = load ptr, ptr %cache, align 8, !dbg !6032
  %slots2 = getelementptr inbounds %struct.swap_slots_cache, ptr %8, i32 0, i32 2, !dbg !6033
  %9 = load ptr, ptr %slots2, align 8, !dbg !6033
  %tobool3 = icmp ne ptr %9, null, !dbg !6032
  br i1 %tobool3, label %if.then, label %if.end15, !dbg !6034

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %cache, align 8, !dbg !6035
  %alloc_lock = getelementptr inbounds %struct.swap_slots_cache, ptr %10, i32 0, i32 1, !dbg !6037
  call void @mutex_lock(ptr noundef %alloc_lock) #13, !dbg !6038
  %11 = load ptr, ptr %cache, align 8, !dbg !6039
  %slots4 = getelementptr inbounds %struct.swap_slots_cache, ptr %11, i32 0, i32 2, !dbg !6040
  %12 = load ptr, ptr %slots4, align 8, !dbg !6040
  %13 = load ptr, ptr %cache, align 8, !dbg !6041
  %cur = getelementptr inbounds %struct.swap_slots_cache, ptr %13, i32 0, i32 4, !dbg !6042
  %14 = load i32, ptr %cur, align 4, !dbg !6042
  %idx.ext = sext i32 %14 to i64, !dbg !6043
  %add.ptr = getelementptr %struct.swp_entry_t, ptr %12, i64 %idx.ext, !dbg !6043
  %15 = load ptr, ptr %cache, align 8, !dbg !6044
  %nr = getelementptr inbounds %struct.swap_slots_cache, ptr %15, i32 0, i32 3, !dbg !6045
  %16 = load i32, ptr %nr, align 8, !dbg !6045
  call void @swapcache_free_entries(ptr noundef %add.ptr, i32 noundef %16) #13, !dbg !6046
  %17 = load ptr, ptr %cache, align 8, !dbg !6047
  %cur5 = getelementptr inbounds %struct.swap_slots_cache, ptr %17, i32 0, i32 4, !dbg !6048
  store i32 0, ptr %cur5, align 4, !dbg !6049
  %18 = load ptr, ptr %cache, align 8, !dbg !6050
  %nr6 = getelementptr inbounds %struct.swap_slots_cache, ptr %18, i32 0, i32 3, !dbg !6051
  store i32 0, ptr %nr6, align 8, !dbg !6052
  %19 = load i8, ptr %free_slots.addr, align 1, !dbg !6053, !range !642, !noundef !620
  %tobool7 = trunc i8 %19 to i1, !dbg !6053
  br i1 %tobool7, label %land.lhs.true8, label %if.end, !dbg !6055

land.lhs.true8:                                   ; preds = %if.then
  %20 = load ptr, ptr %cache, align 8, !dbg !6056
  %slots9 = getelementptr inbounds %struct.swap_slots_cache, ptr %20, i32 0, i32 2, !dbg !6057
  %21 = load ptr, ptr %slots9, align 8, !dbg !6057
  %tobool10 = icmp ne ptr %21, null, !dbg !6056
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !6058

if.then11:                                        ; preds = %land.lhs.true8
  %22 = load ptr, ptr %cache, align 8, !dbg !6059
  %slots12 = getelementptr inbounds %struct.swap_slots_cache, ptr %22, i32 0, i32 2, !dbg !6061
  %23 = load ptr, ptr %slots12, align 8, !dbg !6061
  call void @kvfree(ptr noundef %23) #13, !dbg !6062
  %24 = load ptr, ptr %cache, align 8, !dbg !6063
  %slots13 = getelementptr inbounds %struct.swap_slots_cache, ptr %24, i32 0, i32 2, !dbg !6064
  store ptr null, ptr %slots13, align 8, !dbg !6065
  br label %if.end, !dbg !6066

if.end:                                           ; preds = %if.then11, %land.lhs.true8, %if.then
  %25 = load ptr, ptr %cache, align 8, !dbg !6067
  %alloc_lock14 = getelementptr inbounds %struct.swap_slots_cache, ptr %25, i32 0, i32 1, !dbg !6068
  call void @mutex_unlock(ptr noundef %alloc_lock14) #13, !dbg !6069
  br label %if.end15, !dbg !6070

if.end15:                                         ; preds = %if.end, %land.lhs.true, %do.end
  %26 = load i32, ptr %type.addr, align 4, !dbg !6071
  %and16 = and i32 %26, 2, !dbg !6073
  %tobool17 = icmp ne i32 %and16, 0, !dbg !6073
  br i1 %tobool17, label %land.lhs.true18, label %if.end32, !dbg !6074

land.lhs.true18:                                  ; preds = %if.end15
  %27 = load ptr, ptr %cache, align 8, !dbg !6075
  %slots_ret = getelementptr inbounds %struct.swap_slots_cache, ptr %27, i32 0, i32 6, !dbg !6076
  %28 = load ptr, ptr %slots_ret, align 8, !dbg !6076
  %tobool19 = icmp ne ptr %28, null, !dbg !6075
  br i1 %tobool19, label %if.then20, label %if.end32, !dbg !6077

if.then20:                                        ; preds = %land.lhs.true18
  %29 = load ptr, ptr %cache, align 8, !dbg !6078
  %free_lock = getelementptr inbounds %struct.swap_slots_cache, ptr %29, i32 0, i32 5, !dbg !6080
  call void @spin_lock_irq(ptr noundef %free_lock) #13, !dbg !6081
  %30 = load ptr, ptr %cache, align 8, !dbg !6082
  %slots_ret21 = getelementptr inbounds %struct.swap_slots_cache, ptr %30, i32 0, i32 6, !dbg !6083
  %31 = load ptr, ptr %slots_ret21, align 8, !dbg !6083
  %32 = load ptr, ptr %cache, align 8, !dbg !6084
  %n_ret = getelementptr inbounds %struct.swap_slots_cache, ptr %32, i32 0, i32 7, !dbg !6085
  %33 = load i32, ptr %n_ret, align 8, !dbg !6085
  call void @swapcache_free_entries(ptr noundef %31, i32 noundef %33) #13, !dbg !6086
  %34 = load ptr, ptr %cache, align 8, !dbg !6087
  %n_ret22 = getelementptr inbounds %struct.swap_slots_cache, ptr %34, i32 0, i32 7, !dbg !6088
  store i32 0, ptr %n_ret22, align 8, !dbg !6089
  %35 = load i8, ptr %free_slots.addr, align 1, !dbg !6090, !range !642, !noundef !620
  %tobool23 = trunc i8 %35 to i1, !dbg !6090
  br i1 %tobool23, label %land.lhs.true24, label %if.end30, !dbg !6092

land.lhs.true24:                                  ; preds = %if.then20
  %36 = load ptr, ptr %cache, align 8, !dbg !6093
  %slots_ret25 = getelementptr inbounds %struct.swap_slots_cache, ptr %36, i32 0, i32 6, !dbg !6094
  %37 = load ptr, ptr %slots_ret25, align 8, !dbg !6094
  %tobool26 = icmp ne ptr %37, null, !dbg !6093
  br i1 %tobool26, label %if.then27, label %if.end30, !dbg !6095

if.then27:                                        ; preds = %land.lhs.true24
  %38 = load ptr, ptr %cache, align 8, !dbg !6096
  %slots_ret28 = getelementptr inbounds %struct.swap_slots_cache, ptr %38, i32 0, i32 6, !dbg !6098
  %39 = load ptr, ptr %slots_ret28, align 8, !dbg !6098
  store ptr %39, ptr %slots, align 8, !dbg !6099
  %40 = load ptr, ptr %cache, align 8, !dbg !6100
  %slots_ret29 = getelementptr inbounds %struct.swap_slots_cache, ptr %40, i32 0, i32 6, !dbg !6101
  store ptr null, ptr %slots_ret29, align 8, !dbg !6102
  br label %if.end30, !dbg !6103

if.end30:                                         ; preds = %if.then27, %land.lhs.true24, %if.then20
  %41 = load ptr, ptr %cache, align 8, !dbg !6104
  %free_lock31 = getelementptr inbounds %struct.swap_slots_cache, ptr %41, i32 0, i32 5, !dbg !6105
  call void @spin_unlock_irq(ptr noundef %free_lock31) #13, !dbg !6106
  %42 = load ptr, ptr %slots, align 8, !dbg !6107
  call void @kvfree(ptr noundef %42) #13, !dbg !6108
  br label %if.end32, !dbg !6109

if.end32:                                         ; preds = %if.end30, %land.lhs.true18, %if.end15
  call void @llvm.lifetime.end.p0(i64 8, ptr %slots) #14, !dbg !6110
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache) #14, !dbg !6110
  ret void, !dbg !6110
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #6 align 16 !dbg !6111 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !6116, metadata !DIExpression()), !dbg !6117
  %0 = load i64, ptr %word.addr, align 8, !dbg !6118
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #16, !dbg !6119, !srcloc !6120
  store i64 %1, ptr %word.addr, align 8, !dbg !6119
  %2 = load i64, ptr %word.addr, align 8, !dbg !6121
  ret i64 %2, !dbg !6122
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6123 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6124 dso_local void @kvfree(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6128 dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kvcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6131 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6135, metadata !DIExpression()), !dbg !6138
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6136, metadata !DIExpression()), !dbg !6139
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6137, metadata !DIExpression()), !dbg !6140
  %0 = load i64, ptr %n.addr, align 8, !dbg !6141
  %1 = load i64, ptr %size.addr, align 8, !dbg !6142
  %2 = load i32, ptr %flags.addr, align 4, !dbg !6143
  %or = or i32 %2, 256, !dbg !6144
  %call = call noalias ptr @kvmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #15, !dbg !6145
  ret ptr %call, !dbg !6146
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6147 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !6151 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6156, metadata !DIExpression()), !dbg !6157
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6158
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6159
  ret ptr %1, !dbg !6160
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kvmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6161 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6163, metadata !DIExpression()), !dbg !6167
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6164, metadata !DIExpression()), !dbg !6168
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6165, metadata !DIExpression()), !dbg !6169
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #14, !dbg !6170
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6166, metadata !DIExpression()), !dbg !6171
  %0 = load i64, ptr %n.addr, align 8, !dbg !6172
  %1 = load i64, ptr %size.addr, align 8, !dbg !6172
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6172
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6172
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6172
  store i64 %4, ptr %bytes, align 8, !dbg !6172
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #13, !dbg !6172
  %lnot = xor i1 %call, true, !dbg !6172
  %lnot1 = xor i1 %lnot, true, !dbg !6172
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6172
  %conv = sext i32 %lnot.ext to i64, !dbg !6172
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6172
  %tobool = icmp ne i64 %expval, 0, !dbg !6172
  br i1 %tobool, label %if.then, label %if.end, !dbg !6174

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6175

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !6176
  %6 = load i32, ptr %flags.addr, align 4, !dbg !6177
  %call2 = call noalias ptr @kvmalloc(i64 noundef %5, i32 noundef %6) #17, !dbg !6178
  store ptr %call2, ptr %retval, align 8, !dbg !6179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6179

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #14, !dbg !6180
  %7 = load ptr, ptr %retval, align 8, !dbg !6180
  ret ptr %7, !dbg !6180
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !6181 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6186, metadata !DIExpression()), !dbg !6187
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6188, !range !642, !noundef !620
  %tobool = trunc i8 %0 to i1, !dbg !6188
  %lnot = xor i1 %tobool, true, !dbg !6188
  %lnot1 = xor i1 %lnot, true, !dbg !6188
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6188
  %conv = sext i32 %lnot.ext to i64, !dbg !6188
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6188
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6188
  ret i1 %tobool2, !dbg !6189
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6190 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6194, metadata !DIExpression()), !dbg !6196
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6195, metadata !DIExpression()), !dbg !6197
  %0 = load i64, ptr %size.addr, align 8, !dbg !6198
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6199
  %call = call noalias ptr @kvmalloc_node(i64 noundef %0, i32 noundef %1, i32 noundef -1) #17, !dbg !6200
  ret ptr %call, !dbg !6201
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6202 dso_local noalias ptr @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6205 dso_local void @_raw_spin_lock_irq(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6209 dso_local void @_raw_spin_unlock_irq(ptr noundef) #1 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @folio_test_head(ptr noundef %folio) #6 align 16 !dbg !6210 {
entry:
  %folio.addr = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6212, metadata !DIExpression()), !dbg !6213
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6214
  %call = call ptr @folio_flags(ptr noundef %0, i32 noundef 0) #13, !dbg !6214
  %call1 = call zeroext i1 @_test_bit(i64 noundef 6, ptr noundef %call) #13, !dbg !6214
  ret i1 %call1, !dbg !6215
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6216 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6224, metadata !DIExpression()), !dbg !6226
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6225, metadata !DIExpression()), !dbg !6227
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6228
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6229
  %div = udiv i64 %1, 64, !dbg !6229
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6230
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !6231
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6232
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6233
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !6234
  ret i1 %call, !dbg !6235
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @folio_flags(ptr noundef %folio, i32 noundef %n) #0 align 16 !dbg !6236 {
entry:
  %folio.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %page = alloca ptr, align 8
  store ptr %folio, ptr %folio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %folio.addr, metadata !6240, metadata !DIExpression()), !dbg !6243
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6241, metadata !DIExpression()), !dbg !6244
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #14, !dbg !6245
  call void @llvm.dbg.declare(metadata ptr %page, metadata !6242, metadata !DIExpression()), !dbg !6246
  %0 = load ptr, ptr %folio.addr, align 8, !dbg !6247
  %1 = getelementptr inbounds %struct.folio, ptr %0, i32 0, i32 0, !dbg !6248
  store ptr %1, ptr %page, align 8, !dbg !6246
  %2 = load ptr, ptr %page, align 8, !dbg !6249
  %3 = load i32, ptr %n.addr, align 4, !dbg !6250
  %idxprom = zext i32 %3 to i64, !dbg !6249
  %arrayidx = getelementptr %struct.page, ptr %2, i64 %idxprom, !dbg !6249
  %flags = getelementptr inbounds %struct.page, ptr %arrayidx, i32 0, i32 0, !dbg !6251
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #14, !dbg !6252
  ret ptr %flags, !dbg !6253
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6254 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6262, metadata !DIExpression()), !dbg !6264
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6263, metadata !DIExpression()), !dbg !6265
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6266
  %1 = load i64, ptr %size.addr, align 8, !dbg !6267
  %conv = trunc i64 %1 to i32, !dbg !6267
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !6268
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6269
  %3 = load i64, ptr %size.addr, align 8, !dbg !6269
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !6269
  ret void, !dbg !6270
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6271 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6273, metadata !DIExpression()), !dbg !6275
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6274, metadata !DIExpression()), !dbg !6276
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6277
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6278
  br i1 %1, label %cond.true, label %cond.false, !dbg !6278

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6279
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6280
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !6281
  %conv = zext i1 %call to i32, !dbg !6281
  br label %cond.end, !dbg !6278

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6282
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6283
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !6284
  %conv2 = zext i1 %call1 to i32, !dbg !6284
  br label %cond.end, !dbg !6278

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6278
  %tobool = icmp ne i32 %cond, 0, !dbg !6278
  ret i1 %tobool, !dbg !6285
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6286 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6291, metadata !DIExpression()), !dbg !6293
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6292, metadata !DIExpression()), !dbg !6294
  ret i1 true, !dbg !6295
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6296 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6301, metadata !DIExpression()), !dbg !6304
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6302, metadata !DIExpression()), !dbg !6305
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6303, metadata !DIExpression()), !dbg !6306
  ret void, !dbg !6307
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6308 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6312, metadata !DIExpression()), !dbg !6314
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6313, metadata !DIExpression()), !dbg !6315
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6316
  %and = and i64 %0, 63, !dbg !6317
  %shl = shl i64 1, %and, !dbg !6318
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6319
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6320
  %shr = ashr i64 %2, 6, !dbg !6321
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6319
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6319
  %and1 = and i64 %shl, %3, !dbg !6322
  %cmp = icmp ne i64 %and1, 0, !dbg !6323
  ret i1 %cmp, !dbg !6324
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6325 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6327, metadata !DIExpression()), !dbg !6330
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6328, metadata !DIExpression()), !dbg !6331
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !6332
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6329, metadata !DIExpression()), !dbg !6333
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6334
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6335
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !6336, !srcloc !6337
  %3 = icmp ult i8 %2, 2, !dbg !6336
  call void @llvm.assume(i1 %3), !dbg !6336
  store i8 %2, ptr %oldbit, align 1, !dbg !6336
  %4 = load i8, ptr %oldbit, align 1, !dbg !6338, !range !642, !noundef !620
  %tobool = trunc i8 %4 to i1, !dbg !6338
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !6339
  ret i1 %tobool, !dbg !6340
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_nr_swap_pages() #4 align 16 !dbg !6341 {
entry:
  %call = call i64 @atomic_long_read(ptr noundef @nr_swap_pages) #13, !dbg !6344
  ret i64 %call, !dbg !6345
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @num_online_cpus() #6 align 16 !dbg !6346 {
entry:
  %call = call i32 @raw_atomic_read(ptr noundef @__num_online_cpus) #13, !dbg !6349
  ret i32 %call, !dbg !6350
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @reactivate_swap_slots_cache() #0 align 16 !dbg !6351 {
entry:
  call void @mutex_lock(ptr noundef @swap_slots_cache_mutex) #13, !dbg !6352
  store i8 1, ptr @swap_slot_cache_active, align 1, !dbg !6353
  call void @mutex_unlock(ptr noundef @swap_slots_cache_mutex) #13, !dbg !6354
  ret void, !dbg !6355
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @deactivate_swap_slots_cache() #0 align 16 !dbg !6356 {
entry:
  call void @mutex_lock(ptr noundef @swap_slots_cache_mutex) #13, !dbg !6357
  store i8 0, ptr @swap_slot_cache_active, align 1, !dbg !6358
  call void @__drain_swap_slots_cache(i32 noundef 3) #13, !dbg !6359
  call void @mutex_unlock(ptr noundef @swap_slots_cache_mutex) #13, !dbg !6360
  ret void, !dbg !6361
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #6 align 16 !dbg !6362 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6369, metadata !DIExpression()), !dbg !6370
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6371
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #13, !dbg !6372
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6373
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #13, !dbg !6374
  ret i64 %call, !dbg !6375
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #6 align 16 !dbg !6376 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6378, metadata !DIExpression()), !dbg !6379
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6380
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #13, !dbg !6381
  ret i64 %call, !dbg !6382
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #6 align 16 !dbg !6383 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6390, metadata !DIExpression()), !dbg !6391
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6392
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #13, !dbg !6393
  ret i64 %call, !dbg !6394
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #6 align 16 !dbg !6395 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6398, metadata !DIExpression()), !dbg !6399
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6400
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6400
  %1 = load volatile i64, ptr %counter, align 8, !dbg !6400
  ret i64 %1, !dbg !6401
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #6 align 16 !dbg !6402 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6408, metadata !DIExpression()), !dbg !6409
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6410
  %call = call i32 @arch_atomic_read(ptr noundef %0) #13, !dbg !6411
  ret i32 %call, !dbg !6412
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #6 align 16 !dbg !6413 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6416, metadata !DIExpression()), !dbg !6417
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6418
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !6418
  %1 = load volatile i32, ptr %counter, align 4, !dbg !6418
  ret i32 %1, !dbg !6419
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noredzone }
attributes #14 = { nounwind }
attributes #15 = { noredzone allocsize(0,1) }
attributes #16 = { nounwind memory(read) }
attributes #17 = { noredzone allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!628, !629, !630, !631, !632, !633, !634, !635}
!llvm.ident = !{!636}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "swap_slots_cache_enable_mutex", scope: !2, file: !3, line: 44, type: !501, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF mm/.swap_slots.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22mm/swap_slots\22 -D KBUILD_BASENAME=\22swap_slots\22 -D KBUILD_MODNAME=\22swap_slots\22 -D __KBUILD_MODNAME=kmod_swap_slots -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o mm/swap_slots.ll mm/swap_slots.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !492, globals: !549, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "mm/swap_slots.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6f3e82afa5e7222c94033ea21f576da2")
!4 = !{!5, !11, !206, !213, !221, !316, !332, !340, !346, !351, !356, !362, !368, !375, !380, !388, !395, !404, !409, !414, !420, !432, !438, !445, !452}
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
!206 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !207, line: 312, baseType: !7, size: 32, elements: !208)
!207 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!208 = !{!209, !210, !211, !212}
!209 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!210 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!211 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!212 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!213 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !214, line: 9, baseType: !7, size: 32, elements: !215)
!214 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!215 = !{!216, !217, !218, !219, !220}
!216 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!217 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!218 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!219 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!220 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !223, file: !222, line: 147, baseType: !7, size: 32, elements: !313)
!222 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !222, line: 135, size: 512, elements: !224)
!224 = !{!225, !229, !231, !232, !236, !237, !253, !311, !312}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !223, file: !222, line: 136, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !223, file: !222, line: 137, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !223, file: !222, line: 138, baseType: !13, size: 32, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !223, file: !222, line: 139, baseType: !233, size: 16, offset: 160)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !234, line: 24, baseType: !235)
!234 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!235 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !223, file: !222, line: 150, baseType: !221, size: 32, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !223, file: !222, line: 151, baseType: !238, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !222, line: 64, baseType: !240)
!240 = !DISubroutineType(types: !241)
!241 = !{!13, !242, !13, !230, !243, !249}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !234, line: 61, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !246, line: 72, baseType: !247)
!246 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !246, line: 16, baseType: !248)
!248 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !234, line: 52, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !246, line: 88, baseType: !252)
!252 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !223, file: !222, line: 152, baseType: !254, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !222, line: 117, size: 256, elements: !256)
!256 = !{!257, !262}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !255, file: !222, line: 118, baseType: !258, size: 32)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !234, line: 174, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !234, line: 172, size: 32, elements: !260)
!260 = !{!261}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !259, file: !234, line: 173, baseType: !13, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !255, file: !222, line: 119, baseType: !263, size: 192, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !264, line: 41, baseType: !265)
!264 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !264, line: 37, size: 192, elements: !266)
!266 = !{!267, !305}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !265, file: !264, line: 38, baseType: !268, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !269, line: 29, baseType: !270)
!269 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !269, line: 17, size: 32, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !269, line: 18, baseType: !273, size: 32)
!273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !269, line: 18, size: 32, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !273, file: !269, line: 19, baseType: !276, size: 32)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !277, line: 14, size: 32, elements: !278)
!277 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !276, file: !277, line: 15, baseType: !280, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !281, line: 44, baseType: !282)
!281 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !281, line: 14, size: 32, elements: !283)
!283 = !{!284}
!284 = !DIDerivedType(tag: DW_TAG_member, scope: !282, file: !281, line: 15, baseType: !285, size: 32)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !282, file: !281, line: 15, size: 32, elements: !286)
!286 = !{!287, !288, !298}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !285, file: !281, line: 16, baseType: !258, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !281, line: 24, baseType: !289, size: 16)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !285, file: !281, line: 24, size: 16, elements: !290)
!290 = !{!291, !297}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !289, file: !281, line: 25, baseType: !292, size: 8)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !293, line: 17, baseType: !294)
!293 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !295, line: 21, baseType: !296)
!295 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!296 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !289, file: !281, line: 26, baseType: !292, size: 8, offset: 8)
!298 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !281, line: 28, baseType: !299, size: 32)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !285, file: !281, line: 28, size: 32, elements: !300)
!300 = !{!301, !304}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !299, file: !281, line: 29, baseType: !302, size: 16)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !293, line: 19, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !295, line: 24, baseType: !235)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !299, file: !281, line: 30, baseType: !302, size: 16, offset: 16)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !265, file: !264, line: 39, baseType: !306, size: 128, offset: 64)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !234, line: 190, size: 128, elements: !307)
!307 = !{!308, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !234, line: 191, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !306, file: !234, line: 191, baseType: !309, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !223, file: !222, line: 153, baseType: !230, size: 64, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !223, file: !222, line: 154, baseType: !230, size: 64, offset: 448)
!313 = !{!314, !315}
!314 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!315 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!316 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !317, line: 1325, baseType: !7, size: 32, elements: !318)
!317 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!318 = !{!319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!319 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!320 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!321 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!322 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!323 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!324 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!325 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!326 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!327 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!328 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!329 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!330 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!331 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!332 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !333, line: 68, baseType: !7, size: 32, elements: !334)
!333 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!334 = !{!335, !336, !337, !338, !339}
!335 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!336 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!337 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!338 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!339 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !341, line: 26, baseType: !7, size: 32, elements: !342)
!341 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!342 = !{!343, !344, !345}
!343 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!344 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!345 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!346 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !347, line: 32, baseType: !7, size: 32, elements: !348)
!347 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!348 = !{!349, !350}
!349 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!350 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!351 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !352, line: 2052, baseType: !7, size: 32, elements: !353)
!352 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!353 = !{!354, !355}
!354 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!355 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!356 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !357, line: 54, baseType: !7, size: 32, elements: !358)
!357 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!358 = !{!359, !360, !361}
!359 = !DIEnumerator(name: "USRQUOTA", value: 0)
!360 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!361 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!362 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !363, line: 45, baseType: !7, size: 32, elements: !364)
!363 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!364 = !{!365, !366, !367}
!365 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!366 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!367 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!368 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !369, line: 487, baseType: !7, size: 32, elements: !370)
!369 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!370 = !{!371, !372, !373, !374}
!371 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!372 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!373 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!374 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!375 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !376, line: 65, baseType: !7, size: 32, elements: !377)
!376 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!377 = !{!378, !379}
!378 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!379 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!380 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !381, line: 620, baseType: !7, size: 32, elements: !382)
!381 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!382 = !{!383, !384, !385, !386, !387}
!383 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!384 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!385 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!386 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!387 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!388 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !381, line: 597, baseType: !13, size: 32, elements: !389)
!389 = !{!390, !391, !392, !393, !394}
!390 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!391 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!392 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!393 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!394 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!395 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !369, line: 547, baseType: !7, size: 32, elements: !396)
!396 = !{!397, !398, !399, !400, !401, !402, !403}
!397 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!398 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!399 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!400 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!401 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!402 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!403 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!404 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !369, line: 564, baseType: !7, size: 32, elements: !405)
!405 = !{!406, !407, !408}
!406 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!407 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!408 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!409 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !369, line: 577, baseType: !7, size: 32, elements: !410)
!410 = !{!411, !412, !413}
!411 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!412 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!413 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!414 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !369, line: 503, baseType: !7, size: 32, elements: !415)
!415 = !{!416, !417, !418, !419}
!416 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!417 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!418 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!419 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!420 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !421, line: 44, baseType: !7, size: 32, elements: !422)
!421 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431}
!423 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!424 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!425 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!426 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!427 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!428 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!429 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!430 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!431 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!432 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !433, line: 16, baseType: !7, size: 32, elements: !434)
!433 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!434 = !{!435, !436, !437}
!435 = !DIEnumerator(name: "TT_NONE", value: 0)
!436 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!437 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!438 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !439, line: 51, baseType: !7, size: 32, elements: !440)
!439 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!440 = !{!441, !442, !443, !444}
!441 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!442 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!443 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!444 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!445 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !446, line: 15, baseType: !7, size: 32, elements: !447)
!446 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!447 = !{!448, !449, !450, !451}
!448 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!449 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!450 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!451 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!452 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pageflags", file: !453, line: 100, baseType: !7, size: 32, elements: !454)
!453 = !DIFile(filename: "./include/linux/page-flags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "303e043415a1e5da18ffd489677b4d01")
!454 = !{!455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491}
!455 = !DIEnumerator(name: "PG_locked", value: 0)
!456 = !DIEnumerator(name: "PG_writeback", value: 1)
!457 = !DIEnumerator(name: "PG_referenced", value: 2)
!458 = !DIEnumerator(name: "PG_uptodate", value: 3)
!459 = !DIEnumerator(name: "PG_dirty", value: 4)
!460 = !DIEnumerator(name: "PG_lru", value: 5)
!461 = !DIEnumerator(name: "PG_head", value: 6)
!462 = !DIEnumerator(name: "PG_waiters", value: 7)
!463 = !DIEnumerator(name: "PG_active", value: 8)
!464 = !DIEnumerator(name: "PG_workingset", value: 9)
!465 = !DIEnumerator(name: "PG_error", value: 10)
!466 = !DIEnumerator(name: "PG_slab", value: 11)
!467 = !DIEnumerator(name: "PG_owner_priv_1", value: 12)
!468 = !DIEnumerator(name: "PG_arch_1", value: 13)
!469 = !DIEnumerator(name: "PG_reserved", value: 14)
!470 = !DIEnumerator(name: "PG_private", value: 15)
!471 = !DIEnumerator(name: "PG_private_2", value: 16)
!472 = !DIEnumerator(name: "PG_mappedtodisk", value: 17)
!473 = !DIEnumerator(name: "PG_reclaim", value: 18)
!474 = !DIEnumerator(name: "PG_swapbacked", value: 19)
!475 = !DIEnumerator(name: "PG_unevictable", value: 20)
!476 = !DIEnumerator(name: "PG_mlocked", value: 21)
!477 = !DIEnumerator(name: "PG_uncached", value: 22)
!478 = !DIEnumerator(name: "__NR_PAGEFLAGS", value: 23)
!479 = !DIEnumerator(name: "PG_readahead", value: 18)
!480 = !DIEnumerator(name: "PG_anon_exclusive", value: 17)
!481 = !DIEnumerator(name: "PG_checked", value: 12)
!482 = !DIEnumerator(name: "PG_swapcache", value: 12)
!483 = !DIEnumerator(name: "PG_fscache", value: 16)
!484 = !DIEnumerator(name: "PG_pinned", value: 12)
!485 = !DIEnumerator(name: "PG_savepinned", value: 4)
!486 = !DIEnumerator(name: "PG_foreign", value: 12)
!487 = !DIEnumerator(name: "PG_xen_remapped", value: 12)
!488 = !DIEnumerator(name: "PG_isolated", value: 18)
!489 = !DIEnumerator(name: "PG_reported", value: 3)
!490 = !DIEnumerator(name: "PG_has_hwpoisoned", value: 10)
!491 = !DIEnumerator(name: "PG_large_rmappable", value: 9)
!492 = !{!493, !230, !532, !7, !13, !248, !541, !542, !543, !546}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_slots_cache", file: !495, line: 13, size: 640, elements: !496)
!495 = !DIFile(filename: "./include/linux/swap_slots.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "715f066ac248977b40505055c8cabee0")
!496 = !{!497, !500, !521, !527, !528, !529, !530, !531}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "lock_initialized", scope: !494, file: !495, line: 14, baseType: !498, size: 8)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !234, line: 35, baseType: !499)
!499 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !494, file: !495, line: 15, baseType: !501, size: 256, offset: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !502, line: 66, size: 256, elements: !503)
!502 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!503 = !{!504, !513, !515, !520}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !501, file: !502, line: 67, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !506, line: 13, baseType: !507)
!506 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !234, line: 181, baseType: !508)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !234, line: 179, size: 64, elements: !509)
!509 = !{!510}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !508, file: !234, line: 180, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !293, line: 22, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !295, line: 30, baseType: !252)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !501, file: !502, line: 68, baseType: !514, size: 32, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !277, line: 23, baseType: !276)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !501, file: !502, line: 70, baseType: !516, size: 32, offset: 96)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !517, line: 15, size: 32, elements: !518)
!517 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !516, file: !517, line: 20, baseType: !258, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !501, file: !502, line: 72, baseType: !306, size: 128, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !494, file: !495, line: 16, baseType: !522, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !317, line: 257, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !317, line: 255, size: 64, elements: !525)
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !524, file: !317, line: 256, baseType: !248, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !494, file: !495, line: 17, baseType: !13, size: 32, offset: 384)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !494, file: !495, line: 18, baseType: !13, size: 32, offset: 416)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "free_lock", scope: !494, file: !495, line: 19, baseType: !268, size: 32, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "slots_ret", scope: !494, file: !495, line: 20, baseType: !522, size: 64, offset: 512)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "n_ret", scope: !494, file: !495, line: 21, baseType: !13, size: 32, offset: 576)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !535, line: 19, size: 64, elements: !536)
!535 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !534, file: !535, line: 19, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 64, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 1)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !234, line: 154, baseType: !7)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !252)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!549 = !{!550, !555, !578, !583, !588, !593, !595, !597, !599, !0, !601, !621, !626}
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !3, line: 244, type: !552, isLocal: true, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 136, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 17)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "__already_done", scope: !557, file: !3, line: 246, type: !498, isLocal: true, isDefinition: true)
!557 = distinct !DISubprogram(name: "enable_swap_slots_cache", scope: !3, file: !3, line: 238, type: !558, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{null}
!560 = !{!561, !564, !567, !570, !571, !573, !577}
!561 = !DILocalVariable(name: "ret", scope: !562, file: !3, line: 242, type: !13)
!562 = distinct !DILexicalBlock(scope: !563, file: !3, line: 241, column: 36)
!563 = distinct !DILexicalBlock(scope: !557, file: !3, line: 241, column: 6)
!564 = !DILocalVariable(name: "__ret_do_once", scope: !565, file: !3, line: 246, type: !498)
!565 = distinct !DILexicalBlock(scope: !566, file: !3, line: 246, column: 7)
!566 = distinct !DILexicalBlock(scope: !562, file: !3, line: 246, column: 7)
!567 = !DILocalVariable(name: "__ret_cond", scope: !568, file: !3, line: 246, type: !498)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 246, column: 7)
!569 = distinct !DILexicalBlock(scope: !565, file: !3, line: 246, column: 7)
!570 = !DILocalVariable(name: "__ret_once", scope: !568, file: !3, line: 246, type: !498)
!571 = !DILocalVariable(name: "__ret_warn_on", scope: !572, file: !3, line: 246, type: !13)
!572 = distinct !DILexicalBlock(scope: !569, file: !3, line: 246, column: 7)
!573 = !DILocalVariable(name: "__flags", scope: !574, file: !3, line: 246, type: !13)
!574 = distinct !DILexicalBlock(scope: !575, file: !3, line: 246, column: 7)
!575 = distinct !DILexicalBlock(scope: !576, file: !3, line: 246, column: 7)
!576 = distinct !DILexicalBlock(scope: !572, file: !3, line: 246, column: 7)
!577 = !DILabel(scope: !557, name: "out_unlock", file: !3, line: 254)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !580, isLocal: true, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 536, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 67)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !585, isLocal: true, isDefinition: true)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 192, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 24)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !3, line: 246, type: !590, isLocal: true, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 128, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 16)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(name: "swp_slots", scope: !2, file: !3, line: 38, type: !494, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "swap_slot_cache_active", scope: !2, file: !3, line: 39, type: !498, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(name: "swap_slot_cache_enabled", scope: !2, file: !3, line: 40, type: !498, isLocal: false, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(name: "swap_slot_cache_initialized", scope: !2, file: !3, line: 41, type: !498, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(name: "__key", scope: !603, file: !3, line: 148, type: !618, isLocal: true, isDefinition: true)
!603 = distinct !DISubprogram(name: "alloc_swap_slot_cache", scope: !3, file: !3, line: 113, type: !604, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{!13, !7}
!606 = !{!607, !608, !609, !610, !611, !616}
!607 = !DILocalVariable(name: "cpu", arg: 1, scope: !603, file: !3, line: 113, type: !7)
!608 = !DILocalVariable(name: "cache", scope: !603, file: !3, line: 115, type: !493)
!609 = !DILocalVariable(name: "slots", scope: !603, file: !3, line: 116, type: !522)
!610 = !DILocalVariable(name: "slots_ret", scope: !603, file: !3, line: 116, type: !522)
!611 = !DILocalVariable(name: "__vpp_verify", scope: !612, file: !3, line: 136, type: !614)
!612 = distinct !DILexicalBlock(scope: !613, file: !3, line: 136, column: 11)
!613 = distinct !DILexicalBlock(scope: !603, file: !3, line: 136, column: 11)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!616 = !DILocalVariable(name: "__ptr", scope: !617, file: !3, line: 136, type: !248)
!617 = distinct !DILexicalBlock(scope: !613, file: !3, line: 136, column: 11)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !619, line: 206, elements: !620)
!619 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!620 = !{}
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !3, line: 148, type: !623, isLocal: true, isDefinition: true)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 152, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 19)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "swap_slots_cache_mutex", scope: !2, file: !3, line: 42, type: !501, isLocal: true, isDefinition: true)
!628 = !{i32 7, !"Dwarf Version", i32 5}
!629 = !{i32 2, !"Debug Info Version", i32 3}
!630 = !{i32 1, !"wchar_size", i32 2}
!631 = !{i32 8, !"cf-protection-branch", i32 1}
!632 = !{i32 4, !"function_return_thunk_extern", i32 1}
!633 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!634 = !{i32 1, !"Code Model", i32 2}
!635 = !{i32 1, !"override-stack-alignment", i32 8}
!636 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!637 = distinct !DISubprogram(name: "disable_swap_slots_cache_lock", scope: !3, file: !3, line: 68, type: !558, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!638 = !DILocation(line: 70, column: 2, scope: !637)
!639 = !DILocation(line: 71, column: 26, scope: !637)
!640 = !DILocation(line: 72, column: 6, scope: !641)
!641 = distinct !DILexicalBlock(scope: !637, file: !3, line: 72, column: 6)
!642 = !{i8 0, i8 2}
!643 = !DILocation(line: 72, column: 6, scope: !637)
!644 = !DILocation(line: 74, column: 3, scope: !645)
!645 = distinct !DILexicalBlock(scope: !641, file: !3, line: 72, column: 35)
!646 = !DILocation(line: 75, column: 3, scope: !645)
!647 = !DILocation(line: 76, column: 3, scope: !645)
!648 = !DILocation(line: 77, column: 2, scope: !645)
!649 = !DILocation(line: 78, column: 1, scope: !637)
!650 = !DISubprogram(name: "mutex_lock", scope: !502, file: !502, line: 227, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!654 = !DISubprogram(name: "cpus_read_lock", scope: !655, file: !655, line: 135, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!655 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!656 = distinct !DISubprogram(name: "__drain_swap_slots_cache", scope: !3, file: !3, line: 199, type: !657, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !659)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !7}
!659 = !{!660, !661}
!660 = !DILocalVariable(name: "type", arg: 1, scope: !656, file: !3, line: 199, type: !7)
!661 = !DILocalVariable(name: "cpu", scope: !656, file: !3, line: 201, type: !7)
!662 = !DILocation(line: 199, column: 51, scope: !656)
!663 = !DILocation(line: 201, column: 2, scope: !656)
!664 = !DILocation(line: 201, column: 15, scope: !656)
!665 = !DILocation(line: 226, column: 2, scope: !666)
!666 = distinct !DILexicalBlock(scope: !656, file: !3, line: 226, column: 2)
!667 = !DILocation(line: 226, column: 2, scope: !668)
!668 = distinct !DILexicalBlock(scope: !666, file: !3, line: 226, column: 2)
!669 = !DILocation(line: 227, column: 25, scope: !668)
!670 = !DILocation(line: 227, column: 30, scope: !668)
!671 = !DILocation(line: 227, column: 3, scope: !668)
!672 = distinct !{!672, !665, !673, !674, !675}
!673 = !DILocation(line: 227, column: 41, scope: !666)
!674 = !{!"llvm.loop.mustprogress"}
!675 = !{!"llvm.loop.unroll.disable"}
!676 = !DILocation(line: 228, column: 1, scope: !656)
!677 = !DISubprogram(name: "cpus_read_unlock", scope: !655, file: !655, line: 136, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!678 = distinct !DISubprogram(name: "reenable_swap_slots_cache_unlock", scope: !3, file: !3, line: 85, type: !558, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!679 = !DILocation(line: 87, column: 2, scope: !678)
!680 = !DILocation(line: 88, column: 2, scope: !678)
!681 = !DILocation(line: 89, column: 1, scope: !678)
!682 = distinct !DISubprogram(name: "__reenable_swap_slots_cache", scope: !3, file: !3, line: 80, type: !558, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!683 = !DILocation(line: 82, column: 28, scope: !682)
!684 = !DILocation(line: 82, column: 26, scope: !682)
!685 = !DILocation(line: 83, column: 1, scope: !682)
!686 = !DISubprogram(name: "mutex_unlock", scope: !502, file: !502, line: 246, type: !651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!687 = !DILocation(line: 240, column: 2, scope: !557)
!688 = !DILocation(line: 241, column: 7, scope: !563)
!689 = !DILocation(line: 241, column: 6, scope: !557)
!690 = !DILocation(line: 242, column: 3, scope: !562)
!691 = !DILocation(line: 242, column: 7, scope: !562)
!692 = !DILocation(line: 244, column: 9, scope: !562)
!693 = !DILocation(line: 244, column: 7, scope: !562)
!694 = !DILocation(line: 246, column: 7, scope: !565)
!695 = !DILocation(line: 246, column: 7, scope: !568)
!696 = !DILocation(line: 246, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !568, file: !3, line: 246, column: 7)
!698 = !DILocation(line: 0, scope: !697)
!699 = !DILocation(line: 246, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !697, file: !3, line: 246, column: 7)
!701 = !DILocation(line: 246, column: 7, scope: !569)
!702 = !DILocation(line: 246, column: 7, scope: !572)
!703 = !DILocation(line: 246, column: 7, scope: !576)
!704 = !DILocation(line: 246, column: 7, scope: !575)
!705 = !DILocation(line: 246, column: 7, scope: !706)
!706 = distinct !DILexicalBlock(scope: !575, file: !3, line: 246, column: 7)
!707 = !DILocation(line: 246, column: 7, scope: !574)
!708 = !DILocation(line: 246, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !574, file: !3, line: 246, column: 7)
!710 = !DILocation(line: 246, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !574, file: !3, line: 246, column: 7)
!712 = !{i64 2155154407, i64 2155154436, i64 2155154482, i64 2155154540, i64 2155154594, i64 2155154648, i64 2155154703, i64 2155154734, i64 2155155042, i64 2155155048, i64 2155155095, i64 2155155118, i64 2155155144}
!713 = !DILocation(line: 246, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !574, file: !3, line: 246, column: 7)
!715 = !DILocation(line: 246, column: 7, scope: !716)
!716 = distinct !DILexicalBlock(scope: !575, file: !3, line: 246, column: 7)
!717 = !DILocation(line: 246, column: 7, scope: !566)
!718 = !DILocation(line: 246, column: 7, scope: !562)
!719 = !DILocation(line: 248, column: 4, scope: !566)
!720 = !DILocation(line: 250, column: 31, scope: !562)
!721 = !DILocation(line: 251, column: 2, scope: !563)
!722 = !DILocation(line: 251, column: 2, scope: !562)
!723 = !DILocation(line: 253, column: 2, scope: !557)
!724 = !DILocation(line: 254, column: 1, scope: !557)
!725 = !DILocation(line: 255, column: 2, scope: !557)
!726 = !DILocation(line: 256, column: 1, scope: !557)
!727 = distinct !DISubprogram(name: "cpuhp_setup_state", scope: !12, file: !12, line: 283, type: !728, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !731)
!728 = !DISubroutineType(types: !729)
!729 = !{!13, !11, !226, !730, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!731 = !{!732, !733, !734, !735}
!732 = !DILocalVariable(name: "state", arg: 1, scope: !727, file: !12, line: 283, type: !11)
!733 = !DILocalVariable(name: "name", arg: 2, scope: !727, file: !12, line: 284, type: !226)
!734 = !DILocalVariable(name: "startup", arg: 3, scope: !727, file: !12, line: 285, type: !730)
!735 = !DILocalVariable(name: "teardown", arg: 4, scope: !727, file: !12, line: 286, type: !730)
!736 = !DILocation(line: 283, column: 54, scope: !727)
!737 = !DILocation(line: 284, column: 21, scope: !727)
!738 = !DILocation(line: 285, column: 15, scope: !727)
!739 = !DILocation(line: 286, column: 15, scope: !727)
!740 = !DILocation(line: 288, column: 29, scope: !727)
!741 = !DILocation(line: 288, column: 36, scope: !727)
!742 = !DILocation(line: 288, column: 48, scope: !727)
!743 = !DILocation(line: 288, column: 57, scope: !727)
!744 = !DILocation(line: 288, column: 9, scope: !727)
!745 = !DILocation(line: 288, column: 2, scope: !727)
!746 = !DILocation(line: 113, column: 47, scope: !603)
!747 = !DILocation(line: 115, column: 2, scope: !603)
!748 = !DILocation(line: 115, column: 27, scope: !603)
!749 = !DILocation(line: 116, column: 2, scope: !603)
!750 = !DILocation(line: 116, column: 15, scope: !603)
!751 = !DILocation(line: 116, column: 23, scope: !603)
!752 = !DILocation(line: 123, column: 10, scope: !603)
!753 = !DILocation(line: 123, column: 8, scope: !603)
!754 = !DILocation(line: 125, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !603, file: !3, line: 125, column: 6)
!756 = !DILocation(line: 125, column: 6, scope: !603)
!757 = !DILocation(line: 126, column: 3, scope: !755)
!758 = !DILocation(line: 128, column: 14, scope: !603)
!759 = !DILocation(line: 128, column: 12, scope: !603)
!760 = !DILocation(line: 130, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !603, file: !3, line: 130, column: 6)
!762 = !DILocation(line: 130, column: 6, scope: !603)
!763 = !DILocation(line: 131, column: 10, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !3, line: 130, column: 18)
!765 = !DILocation(line: 131, column: 3, scope: !764)
!766 = !DILocation(line: 132, column: 3, scope: !764)
!767 = !DILocation(line: 135, column: 2, scope: !603)
!768 = !DILocation(line: 136, column: 11, scope: !613)
!769 = !DILocation(line: 136, column: 11, scope: !612)
!770 = !DILocation(line: 136, column: 11, scope: !617)
!771 = !DILocation(line: 136, column: 8, scope: !603)
!772 = !DILocation(line: 137, column: 6, scope: !773)
!773 = distinct !DILexicalBlock(scope: !603, file: !3, line: 137, column: 6)
!774 = !DILocation(line: 137, column: 13, scope: !773)
!775 = !DILocation(line: 137, column: 19, scope: !773)
!776 = !DILocation(line: 137, column: 22, scope: !773)
!777 = !DILocation(line: 137, column: 29, scope: !773)
!778 = !DILocation(line: 137, column: 6, scope: !603)
!779 = !DILocation(line: 139, column: 3, scope: !780)
!780 = distinct !DILexicalBlock(scope: !773, file: !3, line: 137, column: 40)
!781 = !DILocation(line: 141, column: 10, scope: !780)
!782 = !DILocation(line: 141, column: 3, scope: !780)
!783 = !DILocation(line: 142, column: 10, scope: !780)
!784 = !DILocation(line: 142, column: 3, scope: !780)
!785 = !DILocation(line: 144, column: 3, scope: !780)
!786 = !DILocation(line: 147, column: 7, scope: !787)
!787 = distinct !DILexicalBlock(scope: !603, file: !3, line: 147, column: 6)
!788 = !DILocation(line: 147, column: 14, scope: !787)
!789 = !DILocation(line: 147, column: 6, scope: !603)
!790 = !DILocation(line: 148, column: 3, scope: !791)
!791 = distinct !DILexicalBlock(scope: !787, file: !3, line: 147, column: 32)
!792 = !DILocation(line: 148, column: 3, scope: !793)
!793 = distinct !DILexicalBlock(scope: !791, file: !3, line: 148, column: 3)
!794 = !DILocation(line: 149, column: 3, scope: !791)
!795 = !DILocation(line: 149, column: 3, scope: !796)
!796 = distinct !DILexicalBlock(scope: !791, file: !3, line: 149, column: 3)
!797 = !DILocation(line: 150, column: 3, scope: !791)
!798 = !DILocation(line: 150, column: 10, scope: !791)
!799 = !DILocation(line: 150, column: 27, scope: !791)
!800 = !DILocation(line: 151, column: 2, scope: !791)
!801 = !DILocation(line: 152, column: 2, scope: !603)
!802 = !DILocation(line: 152, column: 9, scope: !603)
!803 = !DILocation(line: 152, column: 12, scope: !603)
!804 = !DILocation(line: 153, column: 2, scope: !603)
!805 = !DILocation(line: 153, column: 9, scope: !603)
!806 = !DILocation(line: 153, column: 13, scope: !603)
!807 = !DILocation(line: 154, column: 2, scope: !603)
!808 = !DILocation(line: 154, column: 9, scope: !603)
!809 = !DILocation(line: 154, column: 15, scope: !603)
!810 = !DILocation(line: 161, column: 2, scope: !603)
!811 = !DILocation(line: 161, column: 2, scope: !812)
!812 = distinct !DILexicalBlock(scope: !603, file: !3, line: 161, column: 2)
!813 = !DILocation(line: 161, column: 2, scope: !814)
!814 = distinct !DILexicalBlock(scope: !812, file: !3, line: 161, column: 2)
!815 = !{i64 2155151250}
!816 = !DILocation(line: 162, column: 17, scope: !603)
!817 = !DILocation(line: 162, column: 2, scope: !603)
!818 = !DILocation(line: 162, column: 9, scope: !603)
!819 = !DILocation(line: 162, column: 15, scope: !603)
!820 = !DILocation(line: 163, column: 21, scope: !603)
!821 = !DILocation(line: 163, column: 2, scope: !603)
!822 = !DILocation(line: 163, column: 9, scope: !603)
!823 = !DILocation(line: 163, column: 19, scope: !603)
!824 = !DILocation(line: 164, column: 2, scope: !603)
!825 = !DILocation(line: 165, column: 2, scope: !603)
!826 = !DILocation(line: 166, column: 1, scope: !603)
!827 = distinct !DISubprogram(name: "free_slot_cache", scope: !3, file: !3, line: 230, type: !604, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !828)
!828 = !{!829}
!829 = !DILocalVariable(name: "cpu", arg: 1, scope: !827, file: !3, line: 230, type: !7)
!830 = !DILocation(line: 230, column: 41, scope: !827)
!831 = !DILocation(line: 232, column: 2, scope: !827)
!832 = !DILocation(line: 233, column: 24, scope: !827)
!833 = !DILocation(line: 233, column: 2, scope: !827)
!834 = !DILocation(line: 234, column: 2, scope: !827)
!835 = !DILocation(line: 235, column: 2, scope: !827)
!836 = !DISubprogram(name: "__warn_printk", scope: !837, file: !837, line: 93, type: !838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!837 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!838 = !DISubroutineType(types: !839)
!839 = !{null, !226, null}
!840 = distinct !DISubprogram(name: "free_swap_slot", scope: !3, file: !3, line: 272, type: !841, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !523}
!843 = !{!844, !845, !846, !849, !851}
!844 = !DILocalVariable(name: "entry", arg: 1, scope: !840, file: !3, line: 272, type: !523)
!845 = !DILocalVariable(name: "cache", scope: !840, file: !3, line: 274, type: !493)
!846 = !DILocalVariable(name: "__vpp_verify", scope: !847, file: !3, line: 276, type: !614)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 276, column: 10)
!848 = distinct !DILexicalBlock(scope: !840, file: !3, line: 276, column: 10)
!849 = !DILocalVariable(name: "tcp_ptr__", scope: !850, file: !3, line: 276, type: !248)
!850 = distinct !DILexicalBlock(scope: !848, file: !3, line: 276, column: 10)
!851 = !DILabel(scope: !852, name: "direct_free", file: !3, line: 297)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 296, column: 9)
!853 = distinct !DILexicalBlock(scope: !840, file: !3, line: 277, column: 6)
!854 = !DILocation(line: 272, column: 33, scope: !840)
!855 = !DILocation(line: 274, column: 2, scope: !840)
!856 = !DILocation(line: 274, column: 27, scope: !840)
!857 = !DILocation(line: 276, column: 10, scope: !848)
!858 = !DILocation(line: 276, column: 10, scope: !847)
!859 = !DILocation(line: 276, column: 10, scope: !850)
!860 = !{i64 2155155819}
!861 = !DILocation(line: 276, column: 8, scope: !840)
!862 = !DILocation(line: 277, column: 6, scope: !853)
!863 = !DILocation(line: 0, scope: !853)
!864 = !DILocation(line: 277, column: 6, scope: !840)
!865 = !DILocation(line: 278, column: 18, scope: !866)
!866 = distinct !DILexicalBlock(scope: !853, file: !3, line: 277, column: 55)
!867 = !DILocation(line: 278, column: 25, scope: !866)
!868 = !DILocation(line: 278, column: 3, scope: !866)
!869 = !DILocation(line: 280, column: 8, scope: !870)
!870 = distinct !DILexicalBlock(scope: !866, file: !3, line: 280, column: 7)
!871 = !DILocation(line: 280, column: 28, scope: !870)
!872 = !DILocation(line: 280, column: 32, scope: !870)
!873 = !DILocation(line: 280, column: 39, scope: !870)
!874 = !DILocation(line: 280, column: 7, scope: !866)
!875 = !DILocation(line: 281, column: 21, scope: !876)
!876 = distinct !DILexicalBlock(scope: !870, file: !3, line: 280, column: 50)
!877 = !DILocation(line: 281, column: 28, scope: !876)
!878 = !DILocation(line: 281, column: 4, scope: !876)
!879 = !DILocation(line: 282, column: 4, scope: !876)
!880 = !DILocation(line: 284, column: 7, scope: !881)
!881 = distinct !DILexicalBlock(scope: !866, file: !3, line: 284, column: 7)
!882 = !DILocation(line: 284, column: 14, scope: !881)
!883 = !DILocation(line: 284, column: 20, scope: !881)
!884 = !DILocation(line: 284, column: 7, scope: !866)
!885 = !DILocation(line: 291, column: 27, scope: !886)
!886 = distinct !DILexicalBlock(scope: !881, file: !3, line: 284, column: 46)
!887 = !DILocation(line: 291, column: 34, scope: !886)
!888 = !DILocation(line: 291, column: 45, scope: !886)
!889 = !DILocation(line: 291, column: 52, scope: !886)
!890 = !DILocation(line: 291, column: 4, scope: !886)
!891 = !DILocation(line: 292, column: 4, scope: !886)
!892 = !DILocation(line: 292, column: 11, scope: !886)
!893 = !DILocation(line: 292, column: 17, scope: !886)
!894 = !DILocation(line: 293, column: 3, scope: !886)
!895 = !DILocation(line: 294, column: 3, scope: !866)
!896 = !DILocation(line: 294, column: 10, scope: !866)
!897 = !DILocation(line: 294, column: 20, scope: !866)
!898 = !DILocation(line: 294, column: 27, scope: !866)
!899 = !DILocation(line: 294, column: 32, scope: !866)
!900 = !DILocation(line: 294, column: 38, scope: !866)
!901 = !DILocation(line: 295, column: 20, scope: !866)
!902 = !DILocation(line: 295, column: 27, scope: !866)
!903 = !DILocation(line: 295, column: 3, scope: !866)
!904 = !DILocation(line: 296, column: 2, scope: !866)
!905 = !DILocation(line: 296, column: 9, scope: !853)
!906 = !DILocation(line: 297, column: 1, scope: !852)
!907 = !DILocation(line: 298, column: 3, scope: !852)
!908 = !DILocation(line: 300, column: 1, scope: !840)
!909 = distinct !DISubprogram(name: "spin_lock_irq", scope: !910, file: !910, line: 374, type: !911, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !914)
!910 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!911 = !DISubroutineType(types: !912)
!912 = !{null, !913}
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!914 = !{!915}
!915 = !DILocalVariable(name: "lock", arg: 1, scope: !909, file: !910, line: 374, type: !913)
!916 = !DILocation(line: 374, column: 55, scope: !909)
!917 = !DILocation(line: 376, column: 2, scope: !909)
!918 = !DILocation(line: 377, column: 1, scope: !909)
!919 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !910, file: !910, line: 399, type: !911, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !920)
!920 = !{!921}
!921 = !DILocalVariable(name: "lock", arg: 1, scope: !919, file: !910, line: 399, type: !913)
!922 = !DILocation(line: 399, column: 57, scope: !919)
!923 = !DILocation(line: 401, column: 2, scope: !919)
!924 = !DILocation(line: 402, column: 1, scope: !919)
!925 = !DISubprogram(name: "swapcache_free_entries", scope: !926, file: !926, line: 483, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!926 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!927 = !DISubroutineType(types: !928)
!928 = !{null, !522, !13}
!929 = distinct !DISubprogram(name: "folio_alloc_swap", scope: !3, file: !3, line: 302, type: !930, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5784)
!930 = !DISubroutineType(types: !931)
!931 = !{!523, !932}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !317, line: 293, size: 1536, elements: !934)
!934 = !{!935, !5751, !5765}
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !317, line: 295, baseType: !936, size: 512)
!936 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !933, file: !317, line: 295, size: 512, elements: !937)
!937 = !{!938, !5750}
!938 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !317, line: 296, baseType: !939, size: 448)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !936, file: !317, line: 296, size: 448, elements: !940)
!940 = !{!941, !942, !951, !5742, !5743, !5748, !5749}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !939, file: !317, line: 298, baseType: !248, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !317, line: 299, baseType: !943, size: 128, offset: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !317, line: 299, size: 128, elements: !944)
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !943, file: !317, line: 300, baseType: !306, size: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !943, file: !317, line: 302, baseType: !947, size: 128)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !943, file: !317, line: 302, size: 128, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !947, file: !317, line: 303, baseType: !230, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !947, file: !317, line: 305, baseType: !7, size: 32, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !939, file: !317, line: 310, baseType: !952, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !352, line: 472, size: 1536, align: 64, elements: !954)
!954 = !{!955, !5589, !5590, !5591, !5592, !5593, !5594, !5595, !5596, !5736, !5737, !5738, !5739, !5740, !5741}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !953, file: !352, line: 473, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !352, line: 641, size: 4800, elements: !958)
!958 = !{!959, !960, !961, !969, !970, !977, !978, !981, !982, !5527, !5528, !5529, !5530, !5531, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5554, !5555, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5571, !5574, !5575, !5576, !5585, !5586, !5587, !5588}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !957, file: !352, line: 642, baseType: !233, size: 16)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !957, file: !352, line: 643, baseType: !235, size: 16, offset: 16)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !957, file: !352, line: 644, baseType: !962, size: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !963, line: 23, baseType: !964)
!963 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !963, line: 21, size: 32, elements: !965)
!965 = !{!966}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !964, file: !963, line: 22, baseType: !967, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !234, line: 37, baseType: !968)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !246, line: 49, baseType: !7)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !957, file: !352, line: 645, baseType: !306, size: 128, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !957, file: !352, line: 646, baseType: !971, size: 32, offset: 192)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !963, line: 28, baseType: !972)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !963, line: 26, size: 32, elements: !973)
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !972, file: !963, line: 27, baseType: !975, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !234, line: 38, baseType: !976)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !246, line: 50, baseType: !7)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !957, file: !352, line: 647, baseType: !7, size: 32, offset: 224)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !957, file: !352, line: 650, baseType: !979, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !352, line: 607, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !957, file: !352, line: 651, baseType: !979, size: 64, offset: 320)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !957, file: !352, line: 654, baseType: !983, size: 64, offset: 384)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !985)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !352, line: 1966, size: 2048, align: 512, elements: !986)
!986 = !{!987, !5361, !5371, !5375, !5379, !5383, !5387, !5391, !5395, !5399, !5403, !5404, !5408, !5412, !5449, !5478, !5482, !5488, !5492, !5496, !5500, !5504, !5508, !5514, !5518}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !985, file: !352, line: 1967, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!991, !956, !991, !7}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !993, line: 82, size: 1536, elements: !994)
!993 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!994 = !{!995, !996, !1006, !1014, !1015, !1035, !1036, !1040, !1053, !5344, !5345, !5346, !5347, !5353, !5354, !5355}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !992, file: !993, line: 84, baseType: !7, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !992, file: !993, line: 85, baseType: !997, size: 32, offset: 32)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !998, line: 275, baseType: !999)
!998 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !998, line: 275, size: 32, elements: !1000)
!1000 = !{!1001}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !999, file: !998, line: 275, baseType: !1002, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !998, line: 69, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !998, line: 64, size: 32, elements: !1004)
!1004 = !{!1005}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1003, file: !998, line: 65, baseType: !7, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !992, file: !993, line: 86, baseType: !1007, size: 128, offset: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1008, line: 38, size: 128, elements: !1009)
!1008 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1009 = !{!1010, !1012}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1007, file: !1008, line: 39, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1007, file: !1008, line: 39, baseType: !1013, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !992, file: !993, line: 87, baseType: !991, size: 64, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !992, file: !993, line: 88, baseType: !1016, size: 128, offset: 256)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !993, line: 49, size: 128, elements: !1017)
!1017 = !{!1018, !1032}
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !993, line: 50, baseType: !1019, size: 64)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1016, file: !993, line: 50, size: 64, elements: !1020)
!1020 = !{!1021, !1028}
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !1019, file: !993, line: 51, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1019, file: !993, line: 51, size: 64, elements: !1023)
!1023 = !{!1024, !1027}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1022, file: !993, line: 52, baseType: !1025, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !293, line: 21, baseType: !1026)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !295, line: 27, baseType: !7)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1022, file: !993, line: 52, baseType: !1025, size: 32, offset: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1019, file: !993, line: 54, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !293, line: 23, baseType: !1030)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !295, line: 31, baseType: !1031)
!1031 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1016, file: !993, line: 56, baseType: !1033, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !992, file: !993, line: 89, baseType: !956, size: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !992, file: !993, line: 91, baseType: !1037, size: 256, offset: 448)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 256, elements: !1038)
!1038 = !{!1039}
!1039 = !DISubrange(count: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !992, file: !993, line: 94, baseType: !1041, size: 64, offset: 704)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1042, line: 25, size: 64, elements: !1043)
!1042 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1043 = !{!1044}
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !1042, line: 26, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1041, file: !1042, line: 26, size: 64, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1045, file: !1042, line: 28, baseType: !1030, size: 64, align: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !1042, line: 30, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1045, file: !1042, line: 30, size: 64, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1049, file: !1042, line: 31, baseType: !268, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1049, file: !1042, line: 32, baseType: !13, size: 32, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !992, file: !993, line: 95, baseType: !1054, size: 64, offset: 768)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !993, line: 128, size: 1024, align: 512, elements: !1057)
!1057 = !{!1058, !1062, !1063, !1070, !1076, !1080, !1084, !1088, !1089, !1093, !1098, !5334, !5338}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1056, file: !993, line: 129, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!13, !991, !7}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1056, file: !993, line: 130, baseType: !1059, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1056, file: !993, line: 131, baseType: !1064, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!13, !1067, !1069}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !992)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1056, file: !993, line: 132, baseType: !1071, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!13, !1067, !7, !226, !1074}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1056, file: !993, line: 134, baseType: !1077, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!13, !1067}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1056, file: !993, line: 135, baseType: !1081, size: 64, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!13, !991}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1056, file: !993, line: 136, baseType: !1085, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{null, !991}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1056, file: !993, line: 137, baseType: !1085, size: 64, offset: 448)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1056, file: !993, line: 138, baseType: !1090, size: 64, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{null, !991, !956}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1056, file: !993, line: 139, baseType: !1094, size: 64, offset: 576)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!1097, !991, !1097, !13}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1056, file: !993, line: 140, baseType: !1099, size: 64, offset: 640)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!1102, !5333}
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1104, line: 70, size: 256, elements: !1105)
!1104 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1105 = !{!1106, !1107, !5329, !5330}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1103, file: !1104, line: 71, baseType: !991, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1103, file: !1104, line: 72, baseType: !1108, size: 64, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !352, line: 1190, size: 10752, elements: !1110)
!1110 = !{!1111, !1112, !1115, !1116, !1117, !1118, !2908, !3060, !3100, !3185, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3202, !3206, !3207, !3672, !3675, !3733, !3736, !3737, !3738, !3779, !5263, !5264, !5265, !5266, !5267, !5268, !5271, !5272, !5279, !5280, !5281, !5282, !5283, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1109, file: !352, line: 1191, baseType: !306, size: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1109, file: !352, line: 1192, baseType: !1113, size: 32, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !234, line: 21, baseType: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !234, line: 18, baseType: !1025)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1109, file: !352, line: 1193, baseType: !296, size: 8, offset: 160)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1109, file: !352, line: 1194, baseType: !248, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1109, file: !352, line: 1195, baseType: !250, size: 64, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1109, file: !352, line: 1196, baseType: !1119, size: 64, offset: 320)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !352, line: 2366, size: 576, elements: !1121)
!1121 = !{!1122, !1123, !1124, !1130, !1134, !1138, !1142, !2897, !2898, !2899, !2900, !2901, !2902, !2904, !2905, !2906, !2907}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1120, file: !352, line: 2367, baseType: !226, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1120, file: !352, line: 2368, baseType: !13, size: 32, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1120, file: !352, line: 2376, baseType: !1125, size: 64, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!13, !1128}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1104, line: 21, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1120, file: !352, line: 2377, baseType: !1131, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1133)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !352, line: 75, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1120, file: !352, line: 2378, baseType: !1135, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!991, !1119, !13, !226, !230}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1120, file: !352, line: 2380, baseType: !1139, size: 64, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !1108}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1120, file: !352, line: 2381, baseType: !1143, size: 64, offset: 384)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !207, line: 402, size: 9216, align: 512, elements: !1145)
!1145 = !{!1146, !1147, !1148, !1152, !2559, !2585, !2586, !2587, !2588, !2592, !2595, !2596, !2597, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2665, !2669, !2689, !2707, !2708, !2709, !2710, !2718, !2741, !2742, !2745, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2759, !2760, !2858, !2866, !2867, !2868, !2870, !2874, !2875, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2892, !2893, !2894, !2896}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1144, file: !207, line: 403, baseType: !206, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1144, file: !207, line: 406, baseType: !306, size: 128, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1144, file: !207, line: 409, baseType: !1149, size: 448, offset: 192)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 448, elements: !1150)
!1150 = !{!1151}
!1151 = !DISubrange(count: 56)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1144, file: !207, line: 417, baseType: !1153, size: 768, offset: 640)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !207, line: 45, size: 768, elements: !1154)
!1154 = !{!1155, !2553, !2554, !2555, !2558}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1153, file: !207, line: 46, baseType: !1156, size: 512)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1157, line: 64, size: 512, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1158 = !{!1159, !1160, !1161, !1163, !1209, !2451, !2543, !2548, !2549, !2550, !2551, !2552}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1156, file: !1157, line: 65, baseType: !226, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1156, file: !1157, line: 66, baseType: !306, size: 128, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1156, file: !1157, line: 67, baseType: !1162, size: 64, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1156, file: !1157, line: 68, baseType: !1164, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1157, line: 168, size: 768, elements: !1166)
!1166 = !{!1167, !1168, !1169, !1170}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1165, file: !1157, line: 169, baseType: !306, size: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1165, file: !1157, line: 170, baseType: !268, size: 32, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1165, file: !1157, line: 171, baseType: !1156, size: 512, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1165, file: !1157, line: 172, baseType: !1171, size: 64, offset: 704)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1173)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1157, line: 133, size: 192, elements: !1174)
!1174 = !{!1175, !1182, !1187}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1173, file: !1157, line: 134, baseType: !1176, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1177)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!13, !1180}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1156)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1173, file: !1157, line: 135, baseType: !1183, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1184)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!226, !1180}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1173, file: !1157, line: 136, baseType: !1188, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1189)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!13, !1180, !1192}
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1157, line: 125, size: 20736, elements: !1194)
!1194 = !{!1195, !1199, !1203, !1204, !1208}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1193, file: !1157, line: 126, baseType: !1196, size: 192)
!1196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1097, size: 192, elements: !1197)
!1197 = !{!1198}
!1198 = !DISubrange(count: 3)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1193, file: !1157, line: 127, baseType: !1200, size: 4096, offset: 192)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1097, size: 4096, elements: !1201)
!1201 = !{!1202}
!1202 = !DISubrange(count: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1193, file: !1157, line: 128, baseType: !13, size: 32, offset: 4288)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1193, file: !1157, line: 129, baseType: !1205, size: 16384, offset: 4320)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 16384, elements: !1206)
!1206 = !{!1207}
!1207 = !DISubrange(count: 2048)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1193, file: !1157, line: 130, baseType: !13, size: 32, offset: 20704)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1156, file: !1157, line: 69, baseType: !1210, size: 64, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1212)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1157, line: 116, size: 384, elements: !1213)
!1213 = !{!1214, !1218, !1241, !2412, !2443, !2447}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1212, file: !1157, line: 117, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !1162}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1212, file: !1157, line: 118, baseType: !1219, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1222, line: 254, size: 128, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1223 = !{!1224, !1237}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1221, file: !1222, line: 255, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!1228, !1162, !1232, !1097}
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !234, line: 66, baseType: !1229)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !246, line: 73, baseType: !1230)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !246, line: 15, baseType: !1231)
!1231 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1222, line: 30, size: 128, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1233, file: !1222, line: 31, baseType: !226, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1233, file: !1222, line: 32, baseType: !233, size: 16, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1221, file: !1222, line: 256, baseType: !1238, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!1228, !1162, !1232, !226, !244}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1212, file: !1157, line: 119, baseType: !1242, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1245)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1222, line: 84, size: 320, elements: !1246)
!1246 = !{!1247, !1248, !1252, !2408, !2410}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1245, file: !1222, line: 85, baseType: !226, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1245, file: !1222, line: 86, baseType: !1249, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!233, !1162, !1232, !13}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1245, file: !1222, line: 88, baseType: !1253, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!233, !1162, !1256, !13}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1222, line: 175, size: 512, elements: !1258)
!1258 = !{!1259, !1260, !1261, !1262, !1266, !2403, !2404}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1257, file: !1222, line: 176, baseType: !1233, size: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1257, file: !1222, line: 177, baseType: !244, size: 64, offset: 128)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1257, file: !1222, line: 178, baseType: !230, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1257, file: !1222, line: 179, baseType: !1263, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!952}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1257, file: !1222, line: 180, baseType: !1267, size: 64, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!1228, !1270, !1162, !1256, !1097, !250, !244}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !352, line: 994, size: 1856, align: 64, elements: !1272)
!1272 = !{!1273, !1292, !1293, !1295, !1296, !1297, !1298, !1299, !1365, !1722, !1731, !1737, !1738, !2393, !2394, !2395, !2396, !2398, !2399, !2402}
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !352, line: 995, baseType: !1274, size: 128)
!1274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1271, file: !352, line: 995, size: 128, elements: !1275)
!1275 = !{!1276, !1282, !1291}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1274, file: !352, line: 996, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1278, line: 60, size: 64, elements: !1279)
!1278 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1279 = !{!1280}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1277, file: !1278, line: 61, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1274, file: !352, line: 997, baseType: !1283, size: 128, align: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !234, line: 232, size: 128, align: 64, elements: !1284)
!1284 = !{!1285, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1283, file: !234, line: 233, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1283, file: !234, line: 234, baseType: !1288, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !1286}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1274, file: !352, line: 998, baseType: !7, size: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1271, file: !352, line: 1005, baseType: !268, size: 32, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1271, file: !352, line: 1006, baseType: !1294, size: 32, offset: 160)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !234, line: 156, baseType: !7)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1271, file: !352, line: 1007, baseType: !505, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1271, file: !352, line: 1008, baseType: !501, size: 256, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1271, file: !352, line: 1009, baseType: !250, size: 64, offset: 512)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1271, file: !352, line: 1010, baseType: !7, size: 32, offset: 576)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1271, file: !352, line: 1011, baseType: !1300, size: 256, offset: 640)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !352, line: 948, size: 256, elements: !1301)
!1301 = !{!1302, !1323, !1361, !1362, !1363, !1364}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1300, file: !352, line: 949, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1304, line: 34, baseType: !1305)
!1304 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1304, line: 25, size: 64, elements: !1306)
!1306 = !{!1307}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1305, file: !1304, line: 26, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1309, line: 27, baseType: !1310)
!1309 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1309, line: 13, size: 64, elements: !1311)
!1311 = !{!1312, !1322}
!1312 = !DIDerivedType(tag: DW_TAG_member, scope: !1310, file: !1309, line: 14, baseType: !1313, size: 32)
!1313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1310, file: !1309, line: 14, size: 32, elements: !1314)
!1314 = !{!1315, !1316}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1313, file: !1309, line: 15, baseType: !258, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !1309, line: 16, baseType: !1317, size: 32)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1313, file: !1309, line: 16, size: 32, elements: !1318)
!1318 = !{!1319, !1320}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1317, file: !1309, line: 18, baseType: !292, size: 8)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1317, file: !1309, line: 19, baseType: !1321, size: 24, offset: 8)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 24, elements: !1197)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1310, file: !1309, line: 26, baseType: !280, size: 32, offset: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1300, file: !352, line: 950, baseType: !1324, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !214, line: 59, size: 768, elements: !1326)
!1326 = !{!1327, !1333, !1334, !1335, !1348, !1349, !1350, !1351}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1325, file: !214, line: 61, baseType: !1328, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1329, line: 113, baseType: !1330)
!1329 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1329, line: 111, size: 32, elements: !1331)
!1331 = !{!1332}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1330, file: !1329, line: 112, baseType: !258, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1325, file: !214, line: 62, baseType: !7, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1325, file: !214, line: 63, baseType: !268, size: 32, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1325, file: !214, line: 65, baseType: !1336, size: 256, offset: 128)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1337, size: 256, elements: !1346)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !234, line: 194, size: 64, elements: !1338)
!1338 = !{!1339}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1337, file: !234, line: 195, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !234, line: 198, size: 128, elements: !1342)
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1341, file: !234, line: 199, baseType: !1340, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1341, file: !234, line: 199, baseType: !1345, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1346 = !{!1347}
!1347 = !DISubrange(count: 4)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1325, file: !214, line: 66, baseType: !1337, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1325, file: !214, line: 68, baseType: !263, size: 192, offset: 448)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1325, file: !214, line: 69, baseType: !1283, size: 128, align: 64, offset: 640)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1325, file: !214, line: 70, baseType: !1352, offset: 768)
!1352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1353, elements: !1359)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !214, line: 54, size: 128, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1353, file: !214, line: 55, baseType: !13, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1353, file: !214, line: 56, baseType: !1357, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !214, line: 56, flags: DIFlagFwdDecl)
!1359 = !{!1360}
!1360 = !DISubrange(count: -1)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1300, file: !352, line: 951, baseType: !213, size: 32, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1300, file: !352, line: 952, baseType: !962, size: 32, offset: 160)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1300, file: !352, line: 952, baseType: !962, size: 32, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1300, file: !352, line: 953, baseType: !13, size: 32, offset: 224)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1271, file: !352, line: 1012, baseType: !1366, size: 64, offset: 896)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1368)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1369, line: 110, size: 1472, elements: !1370)
!1369 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1370 = !{!1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1387, !1388, !1389, !1390, !1391, !1392, !1520, !1521, !1522, !1523, !1524, !1555, !1708, !1709, !1717}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1368, file: !1369, line: 111, baseType: !505, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1368, file: !1369, line: 112, baseType: !962, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1368, file: !1369, line: 113, baseType: !971, size: 32, offset: 96)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1368, file: !1369, line: 114, baseType: !962, size: 32, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1368, file: !1369, line: 115, baseType: !971, size: 32, offset: 160)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1368, file: !1369, line: 116, baseType: !962, size: 32, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1368, file: !1369, line: 117, baseType: !971, size: 32, offset: 224)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1368, file: !1369, line: 118, baseType: !962, size: 32, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1368, file: !1369, line: 119, baseType: !971, size: 32, offset: 288)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1368, file: !1369, line: 120, baseType: !7, size: 32, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1368, file: !1369, line: 121, baseType: !1382, size: 64, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1383, line: 24, baseType: !1384)
!1383 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1383, line: 24, size: 64, elements: !1385)
!1385 = !{!1386}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1384, file: !1383, line: 24, baseType: !1029, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1368, file: !1369, line: 122, baseType: !1382, size: 64, offset: 448)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1368, file: !1369, line: 123, baseType: !1382, size: 64, offset: 512)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1368, file: !1369, line: 124, baseType: !1382, size: 64, offset: 576)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1368, file: !1369, line: 125, baseType: !1382, size: 64, offset: 640)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1368, file: !1369, line: 127, baseType: !296, size: 8, offset: 704)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1368, file: !1369, line: 129, baseType: !1393, size: 64, offset: 768)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1395, line: 195, size: 1728, elements: !1396)
!1395 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1396 = !{!1397, !1398, !1403, !1415, !1424, !1427, !1428, !1435, !1436, !1437, !1438, !1441, !1442, !1443, !1445, !1446, !1484, !1505}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1394, file: !1395, line: 196, baseType: !1328, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1394, file: !1395, line: 197, baseType: !1399, size: 32, offset: 32)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1395, line: 28, baseType: !1400)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !234, line: 104, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !293, line: 20, baseType: !1402)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !295, line: 26, baseType: !13)
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !1395, line: 198, baseType: !1404, size: 192, offset: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1394, file: !1395, line: 198, size: 192, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1404, file: !1395, line: 199, baseType: !306, size: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1404, file: !1395, line: 200, baseType: !1408, size: 192, align: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1409, line: 5, size: 192, align: 64, elements: !1410)
!1409 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1410 = !{!1411, !1412, !1414}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1408, file: !1409, line: 6, baseType: !248, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1408, file: !1409, line: 7, baseType: !1413, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1408, file: !1409, line: 8, baseType: !1413, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1394, file: !1395, line: 205, baseType: !1416, size: 320, offset: 256)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1417, line: 48, size: 320, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1418 = !{!1419, !1420, !1421, !1422, !1423}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1416, file: !1417, line: 49, baseType: !505, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1416, file: !1417, line: 55, baseType: !505, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1416, file: !1417, line: 57, baseType: !516, size: 32, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1416, file: !1417, line: 59, baseType: !514, size: 32, offset: 160)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1416, file: !1417, line: 60, baseType: !306, size: 128, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1394, file: !1395, line: 206, baseType: !1425, size: 64, offset: 576)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1395, line: 206, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1394, file: !1395, line: 207, baseType: !230, size: 64, offset: 640)
!1428 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !1395, line: 208, baseType: !1429, size: 64, offset: 704)
!1429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1394, file: !1395, line: 208, size: 64, elements: !1430)
!1430 = !{!1431, !1434}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1429, file: !1395, line: 209, baseType: !1432, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1433, line: 8, baseType: !512)
!1433 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1429, file: !1395, line: 210, baseType: !1432, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1394, file: !1395, line: 212, baseType: !1432, size: 64, offset: 768)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1394, file: !1395, line: 213, baseType: !962, size: 32, offset: 832)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1394, file: !1395, line: 214, baseType: !971, size: 32, offset: 864)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1394, file: !1395, line: 215, baseType: !1439, size: 32, offset: 896)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1395, line: 31, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !234, line: 110, baseType: !1025)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1394, file: !1395, line: 216, baseType: !235, size: 16, offset: 928)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1394, file: !1395, line: 217, baseType: !235, size: 16, offset: 944)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1394, file: !1395, line: 221, baseType: !1444, size: 16, offset: 960)
!1444 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1394, file: !1395, line: 228, baseType: !248, size: 64, offset: 1024)
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !1395, line: 245, baseType: !1447, size: 320, offset: 1088)
!1447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1394, file: !1395, line: 245, size: 320, elements: !1448)
!1448 = !{!1449, !1476}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1447, file: !1395, line: 246, baseType: !1450, size: 320)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1395, line: 114, size: 320, elements: !1451)
!1451 = !{!1452, !1453, !1465, !1468, !1475}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1450, file: !1395, line: 116, baseType: !248, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1395, line: 117, baseType: !1454, size: 64, offset: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1450, file: !1395, line: 117, size: 64, elements: !1455)
!1455 = !{!1456, !1464}
!1456 = !DIDerivedType(tag: DW_TAG_member, scope: !1454, file: !1395, line: 118, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1454, file: !1395, line: 118, size: 64, elements: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1457, file: !1395, line: 120, baseType: !302, size: 16)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1457, file: !1395, line: 121, baseType: !1461, size: 48, offset: 16)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 48, elements: !1462)
!1462 = !{!1463}
!1463 = !DISubrange(count: 6)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1454, file: !1395, line: 127, baseType: !248, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1450, file: !1395, line: 129, baseType: !1466, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1395, line: 102, flags: DIFlagFwdDecl)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1450, file: !1395, line: 130, baseType: !1469, size: 64, offset: 192)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1395, line: 108, size: 192, elements: !1471)
!1471 = !{!1472, !1473, !1474}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1470, file: !1395, line: 109, baseType: !1283, size: 128, align: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1470, file: !1395, line: 110, baseType: !1328, size: 32, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1470, file: !1395, line: 111, baseType: !498, size: 8, offset: 160)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1450, file: !1395, line: 131, baseType: !226, size: 64, offset: 256)
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1447, file: !1395, line: 247, baseType: !1477, size: 320)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1447, file: !1395, line: 247, size: 320, elements: !1478)
!1478 = !{!1479, !1480, !1481, !1482, !1483}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1477, file: !1395, line: 248, baseType: !248, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1477, file: !1395, line: 249, baseType: !248, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1477, file: !1395, line: 250, baseType: !1466, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1477, file: !1395, line: 251, baseType: !1469, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1477, file: !1395, line: 252, baseType: !1097, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !1395, line: 260, baseType: !1485, size: 256, offset: 1408)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1394, file: !1395, line: 260, size: 256, elements: !1486)
!1486 = !{!1487, !1493}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1485, file: !1395, line: 261, baseType: !1488, size: 256)
!1488 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1395, line: 134, size: 256, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1488, file: !1395, line: 135, baseType: !230, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1488, file: !1395, line: 136, baseType: !1492, size: 256)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 256, elements: !1346)
!1493 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1395, line: 262, baseType: !1494, size: 256)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1485, file: !1395, line: 262, size: 256, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1494, file: !1395, line: 264, baseType: !306, size: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1494, file: !1395, line: 265, baseType: !1498, size: 128, offset: 128)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1499, line: 22, size: 128, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1500 = !{!1501, !1504}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1498, file: !1499, line: 23, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1499, line: 23, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1498, file: !1499, line: 24, baseType: !248, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1394, file: !1395, line: 280, baseType: !1506, size: 64, offset: 1664)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1395, line: 176, size: 192, elements: !1508)
!1508 = !{!1509, !1518, !1519}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1507, file: !1395, line: 177, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1395, line: 171, baseType: !1511)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!13, !1393, !1514, !1516, !1393}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1467)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1488)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1507, file: !1395, line: 178, baseType: !1393, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1507, file: !1395, line: 179, baseType: !1466, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1368, file: !1369, line: 130, baseType: !1393, size: 64, offset: 832)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1368, file: !1369, line: 131, baseType: !1393, size: 64, offset: 896)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1368, file: !1369, line: 132, baseType: !1393, size: 64, offset: 960)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1368, file: !1369, line: 135, baseType: !230, size: 64, offset: 1024)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1368, file: !1369, line: 137, baseType: !1525, size: 64, offset: 1088)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1527, line: 14, size: 1088, elements: !1528)
!1527 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1528 = !{!1529, !1530, !1539, !1540, !1541, !1542, !1543, !1544}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1526, file: !1527, line: 15, baseType: !1328, size: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1526, file: !1527, line: 17, baseType: !1531, size: 320, offset: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1532, line: 22, size: 320, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1533 = !{!1534, !1535, !1536, !1537}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1531, file: !1532, line: 23, baseType: !514, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1531, file: !1532, line: 24, baseType: !511, size: 64, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1531, file: !1532, line: 26, baseType: !306, size: 128, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1531, file: !1532, line: 28, baseType: !1538, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1526, file: !1527, line: 19, baseType: !248, size: 64, offset: 384)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1526, file: !1527, line: 20, baseType: !505, size: 64, offset: 448)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1526, file: !1527, line: 23, baseType: !1341, size: 128, offset: 512)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1526, file: !1527, line: 24, baseType: !962, size: 32, offset: 640)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1526, file: !1527, line: 29, baseType: !505, size: 64, offset: 704)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1526, file: !1527, line: 36, baseType: !1545, size: 320, offset: 768)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1546, line: 15, size: 320, elements: !1547)
!1546 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1554}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1545, file: !1546, line: 16, baseType: !514, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1545, file: !1546, line: 18, baseType: !13, size: 32, offset: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1545, file: !1546, line: 19, baseType: !13, size: 32, offset: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1545, file: !1546, line: 20, baseType: !13, size: 32, offset: 96)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1545, file: !1546, line: 21, baseType: !13, size: 32, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1545, file: !1546, line: 22, baseType: !248, size: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1545, file: !1546, line: 23, baseType: !248, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1368, file: !1369, line: 138, baseType: !1556, size: 64, offset: 1152)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1558, line: 68, size: 4800, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1559 = !{!1560, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1599, !1600, !1601, !1602, !1603, !1604, !1616, !1689, !1690, !1704, !1706}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1557, file: !1558, line: 69, baseType: !1561, size: 576)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1558, line: 23, size: 576, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1561, file: !1558, line: 24, baseType: !1025, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !1558, line: 25, baseType: !1565, size: 512, offset: 64)
!1565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1561, file: !1558, line: 25, size: 512, elements: !1566)
!1566 = !{!1567, !1576}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1565, file: !1558, line: 26, baseType: !1568, size: 480)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1569, size: 480, elements: !1574)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1558, line: 17, size: 96, elements: !1570)
!1570 = !{!1571, !1572, !1573}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1569, file: !1558, line: 18, baseType: !1025, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1569, file: !1558, line: 19, baseType: !1025, size: 32, offset: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1569, file: !1558, line: 20, baseType: !1025, size: 32, offset: 64)
!1574 = !{!1575}
!1575 = !DISubrange(count: 5)
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1565, file: !1558, line: 27, baseType: !1577, size: 128)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1565, file: !1558, line: 27, size: 128, elements: !1578)
!1578 = !{!1579, !1581}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1577, file: !1558, line: 28, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1577, file: !1558, line: 29, baseType: !1580, size: 64, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1557, file: !1558, line: 70, baseType: !1561, size: 576, offset: 576)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1557, file: !1558, line: 71, baseType: !1561, size: 576, offset: 1152)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1557, file: !1558, line: 72, baseType: !1556, size: 64, offset: 1728)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1557, file: !1558, line: 73, baseType: !13, size: 32, offset: 1792)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1557, file: !1558, line: 74, baseType: !962, size: 32, offset: 1824)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1557, file: !1558, line: 75, baseType: !971, size: 32, offset: 1856)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1557, file: !1558, line: 76, baseType: !1589, size: 192, offset: 1920)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1590, line: 9, size: 192, elements: !1591)
!1590 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1591 = !{!1592, !1593, !1597, !1598}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1589, file: !1590, line: 10, baseType: !505, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1589, file: !1590, line: 11, baseType: !1594, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1596)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1590, line: 7, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1589, file: !1590, line: 12, baseType: !7, size: 32, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1589, file: !1590, line: 13, baseType: !1328, size: 32, offset: 160)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1557, file: !1558, line: 77, baseType: !248, size: 64, offset: 2112)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1557, file: !1558, line: 80, baseType: !498, size: 8, offset: 2176)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1557, file: !1558, line: 88, baseType: !306, size: 128, offset: 2240)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1557, file: !1558, line: 89, baseType: !1393, size: 64, offset: 2368)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1557, file: !1558, line: 90, baseType: !1416, size: 320, offset: 2432)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1557, file: !1558, line: 97, baseType: !1605, size: 256, offset: 2752)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1606, line: 98, size: 256, elements: !1607)
!1606 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1607 = !{!1608, !1609, !1610}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1605, file: !1606, line: 99, baseType: !505, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1605, file: !1606, line: 100, baseType: !306, size: 128, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1605, file: !1606, line: 101, baseType: !1611, size: 64, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1606, line: 21, baseType: !1612)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !1615}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1557, file: !1558, line: 99, baseType: !1617, size: 768, offset: 3008)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !222, line: 199, size: 768, elements: !1618)
!1618 = !{!1619, !1624}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1617, file: !222, line: 200, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!13, !1623}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1617, file: !222, line: 201, baseType: !1625, size: 704, offset: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !222, line: 193, size: 704, elements: !1626)
!1626 = !{!1627, !1685}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1625, file: !222, line: 195, baseType: !1628, size: 640)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !222, line: 173, size: 640, elements: !1629)
!1629 = !{!1630, !1642, !1654, !1655, !1675, !1676, !1678, !1684}
!1630 = !DIDerivedType(tag: DW_TAG_member, scope: !1628, file: !222, line: 174, baseType: !1631, size: 192)
!1631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1628, file: !222, line: 174, size: 192, elements: !1632)
!1632 = !{!1633, !1641}
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1631, file: !222, line: 175, baseType: !1634, size: 192)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1631, file: !222, line: 175, size: 192, elements: !1635)
!1635 = !{!1636, !1637, !1638, !1639, !1640}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1634, file: !222, line: 176, baseType: !242, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1634, file: !222, line: 177, baseType: !13, size: 32, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1634, file: !222, line: 178, baseType: !13, size: 32, offset: 96)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1634, file: !222, line: 179, baseType: !13, size: 32, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1634, file: !222, line: 180, baseType: !13, size: 32, offset: 160)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1631, file: !222, line: 182, baseType: !1283, size: 128, align: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1628, file: !222, line: 184, baseType: !1643, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1645, line: 26, size: 256, elements: !1646)
!1645 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1644, file: !1645, line: 27, baseType: !7, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1644, file: !1645, line: 28, baseType: !1649, size: 192, offset: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1650, line: 43, size: 192, elements: !1651)
!1650 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1649, file: !1650, line: 44, baseType: !514, size: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1649, file: !1650, line: 45, baseType: !306, size: 128, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1628, file: !222, line: 185, baseType: !242, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1628, file: !222, line: 186, baseType: !1656, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !222, line: 204, size: 960, elements: !1658)
!1658 = !{!1659, !1660, !1664, !1671}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1657, file: !222, line: 205, baseType: !1617, size: 768)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1657, file: !222, line: 206, baseType: !1661, size: 64, offset: 768)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!1623, !1656}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1657, file: !222, line: 207, baseType: !1665, size: 64, offset: 832)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{null, !1668, !1669, !1670}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1657, file: !222, line: 209, baseType: !1672, size: 64, offset: 896)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!13, !1668, !242}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1628, file: !222, line: 187, baseType: !1623, size: 64, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1628, file: !222, line: 188, baseType: !1677, size: 64, offset: 448)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1628, file: !222, line: 189, baseType: !1679, size: 64, offset: 512)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !222, line: 157, size: 256, elements: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1680, file: !222, line: 158, baseType: !1408, size: 192, align: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1680, file: !222, line: 159, baseType: !1668, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1628, file: !222, line: 190, baseType: !1337, size: 64, offset: 576)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1625, file: !222, line: 196, baseType: !1686, size: 64, offset: 640)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1409, line: 12, size: 64, elements: !1687)
!1687 = !{!1688}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1686, file: !1409, line: 13, baseType: !1413, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1557, file: !1558, line: 100, baseType: !1668, size: 64, offset: 3776)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1557, file: !1558, line: 102, baseType: !1691, size: 64, offset: 3840)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1558, line: 107, size: 1152, elements: !1693)
!1693 = !{!1694, !1695, !1696, !1697, !1698, !1702}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1692, file: !1558, line: 108, baseType: !1341, size: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1692, file: !1558, line: 109, baseType: !1556, size: 64, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1692, file: !1558, line: 110, baseType: !962, size: 32, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1692, file: !1558, line: 111, baseType: !258, size: 32, offset: 224)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1692, file: !1558, line: 112, baseType: !1699, size: 640, offset: 256)
!1699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 640, elements: !1700)
!1700 = !{!1701}
!1701 = !DISubrange(count: 10)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1692, file: !1558, line: 113, baseType: !1703, size: 256, offset: 896)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 256, elements: !1346)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1557, file: !1558, line: 103, baseType: !1705, size: 640, offset: 3904)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1231, size: 640, elements: !1700)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1557, file: !1558, line: 104, baseType: !1707, size: 256, offset: 4544)
!1707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1231, size: 256, elements: !1346)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1368, file: !1369, line: 139, baseType: !1691, size: 64, offset: 1216)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1368, file: !1369, line: 140, baseType: !1710, size: 64, offset: 1280)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1369, line: 25, size: 64, elements: !1712)
!1712 = !{!1713, !1714, !1715}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1711, file: !1369, line: 26, baseType: !258, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1711, file: !1369, line: 27, baseType: !13, size: 32, offset: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1711, file: !1369, line: 28, baseType: !1716, offset: 64)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, elements: !1359)
!1717 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !1369, line: 142, baseType: !1718, size: 128, offset: 1344)
!1718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1368, file: !1369, line: 142, size: 128, elements: !1719)
!1719 = !{!1720, !1721}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1718, file: !1369, line: 143, baseType: !13, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1718, file: !1369, line: 144, baseType: !1283, size: 128, align: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1271, file: !352, line: 1013, baseType: !1723, size: 256, offset: 960)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !352, line: 970, size: 256, elements: !1724)
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1723, file: !352, line: 971, baseType: !248, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1723, file: !352, line: 972, baseType: !7, size: 32, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1723, file: !352, line: 973, baseType: !7, size: 32, offset: 96)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1723, file: !352, line: 974, baseType: !7, size: 32, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1723, file: !352, line: 975, baseType: !7, size: 32, offset: 160)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1723, file: !352, line: 976, baseType: !250, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1271, file: !352, line: 1014, baseType: !1732, size: 128, offset: 1216)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1733, line: 8, size: 128, elements: !1734)
!1733 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1734 = !{!1735, !1736}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1732, file: !1733, line: 9, baseType: !1102, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1732, file: !1733, line: 10, baseType: !991, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1271, file: !352, line: 1015, baseType: !956, size: 64, offset: 1344)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1271, file: !352, line: 1016, baseType: !1739, size: 64, offset: 1408)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1741)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !352, line: 1914, size: 2112, elements: !1742)
!1742 = !{!1743, !1744, !1748, !1752, !1756, !1801, !1802, !1808, !1821, !1829, !1833, !1834, !2276, !2277, !2281, !2286, !2287, !2291, !2295, !2301, !2302, !2306, !2307, !2314, !2318, !2322, !2328, !2332, !2374, !2378, !2382, !2383, !2389}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1741, file: !352, line: 1915, baseType: !1143, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1741, file: !352, line: 1916, baseType: !1745, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!250, !1270, !250, !13}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1741, file: !352, line: 1917, baseType: !1749, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!1228, !1270, !1097, !244, !249}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1741, file: !352, line: 1918, baseType: !1753, size: 64, offset: 192)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!1228, !1270, !226, !244, !249}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1741, file: !352, line: 1919, baseType: !1757, size: 64, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!1228, !1760, !1799}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !352, line: 373, size: 384, elements: !1762)
!1762 = !{!1763, !1764, !1765, !1769, !1770, !1771, !1772}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1761, file: !352, line: 374, baseType: !1270, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1761, file: !352, line: 375, baseType: !250, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1761, file: !352, line: 376, baseType: !1766, size: 64, offset: 128)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !1760, !1231}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1761, file: !352, line: 377, baseType: !230, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1761, file: !352, line: 378, baseType: !13, size: 32, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1761, file: !352, line: 379, baseType: !302, size: 16, offset: 288)
!1772 = !DIDerivedType(tag: DW_TAG_member, scope: !1761, file: !352, line: 380, baseType: !1773, size: 64, offset: 320)
!1773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1761, file: !352, line: 380, size: 64, elements: !1774)
!1774 = !{!1775, !1795}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1773, file: !352, line: 386, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1778, line: 998, size: 448, elements: !1779)
!1778 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1779 = !{!1780, !1781, !1782}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1777, file: !1778, line: 999, baseType: !932, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1777, file: !1778, line: 1000, baseType: !13, size: 32, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1777, file: !1778, line: 1001, baseType: !1783, size: 320, offset: 128)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !264, line: 14, baseType: !1784)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !264, line: 30, size: 320, elements: !1785)
!1785 = !{!1786, !1787, !1788, !1794}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1784, file: !264, line: 31, baseType: !7, size: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1784, file: !264, line: 32, baseType: !230, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1784, file: !264, line: 33, baseType: !1789, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !264, line: 16, baseType: !1790)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{!13, !1793, !7, !13, !230}
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1784, file: !264, line: 34, baseType: !306, size: 128, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1773, file: !352, line: 395, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!1228, !230}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !352, line: 69, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1741, file: !352, line: 1920, baseType: !1757, size: 64, offset: 320)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1741, file: !352, line: 1921, baseType: !1803, size: 64, offset: 384)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!13, !1760, !1806, !7}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !352, line: 53, flags: DIFlagFwdDecl)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1741, file: !352, line: 1923, baseType: !1809, size: 64, offset: 448)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!13, !1270, !1812}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !352, line: 1858, size: 128, elements: !1814)
!1814 = !{!1815, !1820}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1813, file: !352, line: 1859, baseType: !1816, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !352, line: 1855, baseType: !1817)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!498, !1812, !226, !13, !250, !1029, !7}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1813, file: !352, line: 1860, baseType: !250, size: 64, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1741, file: !352, line: 1924, baseType: !1822, size: 64, offset: 512)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!1825, !1270, !1827}
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1826, line: 59, baseType: !7)
!1826 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !352, line: 61, flags: DIFlagFwdDecl)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1741, file: !352, line: 1925, baseType: !1830, size: 64, offset: 576)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!1231, !1270, !7, !248}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1741, file: !352, line: 1926, baseType: !1830, size: 64, offset: 640)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1741, file: !352, line: 1927, baseType: !1835, size: 64, offset: 704)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DISubroutineType(types: !1837)
!1837 = !{!13, !1270, !1838}
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !317, line: 625, size: 1344, elements: !1840)
!1840 = !{!1841, !1850, !2005, !2011, !2018, !2019, !2024, !2025, !2030, !2031, !2034, !2269, !2270, !2271, !2272, !2273, !2274}
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1839, file: !317, line: 628, baseType: !1842, size: 128)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1839, file: !317, line: 628, size: 128, elements: !1843)
!1843 = !{!1844, !1849}
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !317, line: 629, baseType: !1845, size: 128)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1842, file: !317, line: 629, size: 128, elements: !1846)
!1846 = !{!1847, !1848}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1845, file: !317, line: 631, baseType: !248, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1845, file: !317, line: 632, baseType: !248, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1842, file: !317, line: 635, baseType: !1283, size: 128, align: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1839, file: !317, line: 639, baseType: !1851, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !317, line: 733, size: 10240, elements: !1853)
!1853 = !{!1854, !2003}
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1852, file: !317, line: 734, baseType: !1855, size: 10240)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1852, file: !317, line: 734, size: 10240, elements: !1856)
!1856 = !{!1857, !1861, !1874, !1878, !1879, !1880, !1881, !1882, !1883, !1892, !1893, !1894, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1933, !1935, !1938, !1983, !1984, !1985, !1988, !1989, !1990, !1993, !1994, !1995, !2001, !2002}
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !317, line: 739, baseType: !1858, size: 512, align: 512)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !317, line: 739, size: 512, align: 512, elements: !1859)
!1859 = !{!1860}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1858, file: !317, line: 747, baseType: !258, size: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1855, file: !317, line: 750, baseType: !1862, size: 128, offset: 512)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1863, line: 218, size: 128, elements: !1864)
!1863 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1864 = !{!1865, !1872, !1873}
!1865 = !DIDerivedType(tag: DW_TAG_member, scope: !1862, file: !1863, line: 219, baseType: !1866, size: 32)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1862, file: !1863, line: 219, size: 32, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1866, file: !1863, line: 220, baseType: !268, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1866, file: !1863, line: 221, baseType: !1870)
!1870 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1863, line: 197, baseType: !1871)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1863, line: 197, elements: !620)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1862, file: !1863, line: 223, baseType: !7, size: 32, offset: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1862, file: !1863, line: 224, baseType: !230, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1855, file: !317, line: 752, baseType: !1875, size: 64, offset: 640)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!248, !1270, !248, !248, !248, !248}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1855, file: !317, line: 756, baseType: !248, size: 64, offset: 704)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1855, file: !317, line: 757, baseType: !248, size: 64, offset: 768)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1855, file: !317, line: 760, baseType: !248, size: 64, offset: 832)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1855, file: !317, line: 761, baseType: !248, size: 64, offset: 896)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1855, file: !317, line: 763, baseType: !248, size: 64, offset: 960)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1855, file: !317, line: 764, baseType: !1884, size: 64, offset: 1024)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1886, line: 299, baseType: !1887)
!1886 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1886, line: 299, size: 64, elements: !1888)
!1888 = !{!1889}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1887, file: !1886, line: 299, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1891, line: 18, baseType: !248)
!1891 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1855, file: !317, line: 773, baseType: !258, size: 32, offset: 1088)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1855, file: !317, line: 785, baseType: !258, size: 32, offset: 1120)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1855, file: !317, line: 795, baseType: !1895, size: 64, offset: 1152)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !317, line: 726, size: 128, elements: !1897)
!1897 = !{!1898, !1899}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1896, file: !317, line: 727, baseType: !1029, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1896, file: !317, line: 728, baseType: !13, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1855, file: !317, line: 801, baseType: !248, size: 64, offset: 1216)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1855, file: !317, line: 804, baseType: !505, size: 64, offset: 1280)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1855, file: !317, line: 806, baseType: !13, size: 32, offset: 1344)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1855, file: !317, line: 808, baseType: !268, size: 32, offset: 1376)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1855, file: !317, line: 823, baseType: !1416, size: 320, offset: 1408)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1855, file: !317, line: 825, baseType: !306, size: 128, offset: 1728)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1855, file: !317, line: 845, baseType: !13, size: 32, offset: 1856)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1855, file: !317, line: 849, baseType: !248, size: 64, offset: 1920)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1855, file: !317, line: 850, baseType: !248, size: 64, offset: 1984)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1855, file: !317, line: 852, baseType: !248, size: 64, offset: 2048)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1855, file: !317, line: 853, baseType: !248, size: 64, offset: 2112)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1855, file: !317, line: 854, baseType: !507, size: 64, offset: 2176)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1855, file: !317, line: 855, baseType: !248, size: 64, offset: 2240)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1855, file: !317, line: 856, baseType: !248, size: 64, offset: 2304)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1855, file: !317, line: 857, baseType: !248, size: 64, offset: 2368)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1855, file: !317, line: 858, baseType: !248, size: 64, offset: 2432)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1855, file: !317, line: 865, baseType: !1002, size: 32, offset: 2496)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1855, file: !317, line: 867, baseType: !268, size: 32, offset: 2528)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1855, file: !317, line: 869, baseType: !248, size: 64, offset: 2560)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1855, file: !317, line: 869, baseType: !248, size: 64, offset: 2624)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1855, file: !317, line: 869, baseType: !248, size: 64, offset: 2688)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1855, file: !317, line: 869, baseType: !248, size: 64, offset: 2752)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1855, file: !317, line: 870, baseType: !248, size: 64, offset: 2816)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1855, file: !317, line: 870, baseType: !248, size: 64, offset: 2880)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1855, file: !317, line: 870, baseType: !248, size: 64, offset: 2944)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1855, file: !317, line: 871, baseType: !248, size: 64, offset: 3008)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1855, file: !317, line: 871, baseType: !248, size: 64, offset: 3072)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1855, file: !317, line: 871, baseType: !248, size: 64, offset: 3136)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1855, file: !317, line: 871, baseType: !248, size: 64, offset: 3200)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1855, file: !317, line: 873, baseType: !1930, size: 3328, offset: 3264)
!1930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 3328, elements: !1931)
!1931 = !{!1932}
!1932 = !DISubrange(count: 52)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1855, file: !317, line: 875, baseType: !1934, size: 1280, offset: 6592)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1531, size: 1280, elements: !1346)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1855, file: !317, line: 877, baseType: !1936, size: 64, offset: 7872)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !317, line: 877, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1855, file: !317, line: 880, baseType: !1939, size: 1088, offset: 7936)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1940, line: 72, baseType: !1941)
!1940 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1940, line: 23, size: 1088, elements: !1942)
!1942 = !{!1943, !1944, !1945, !1946, !1947, !1950, !1951, !1952, !1953, !1978, !1979, !1980}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1941, file: !1940, line: 28, baseType: !1029, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1941, file: !1940, line: 38, baseType: !507, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1941, file: !1940, line: 40, baseType: !248, size: 64, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1941, file: !1940, line: 43, baseType: !1416, size: 320, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1941, file: !1940, line: 44, baseType: !1948, size: 64, offset: 512)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1940, line: 44, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1941, file: !1940, line: 48, baseType: !248, size: 64, offset: 576)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1941, file: !1940, line: 59, baseType: !501, size: 256, offset: 640)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1941, file: !1940, line: 60, baseType: !230, size: 64, offset: 896)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1941, file: !1940, line: 61, baseType: !1954, size: 64, offset: 960)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1956)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1957, line: 13, size: 1216, elements: !1958)
!1957 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1958 = !{!1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1956, file: !1957, line: 14, baseType: !230, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1956, file: !1957, line: 15, baseType: !248, size: 64, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1956, file: !1957, line: 17, baseType: !248, size: 64, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1956, file: !1957, line: 17, baseType: !248, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1956, file: !1957, line: 18, baseType: !248, size: 64, offset: 256)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1956, file: !1957, line: 18, baseType: !248, size: 64, offset: 320)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1956, file: !1957, line: 19, baseType: !614, size: 64, offset: 384)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1956, file: !1957, line: 21, baseType: !1231, size: 64, offset: 448)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1956, file: !1957, line: 23, baseType: !1231, size: 64, offset: 512)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1956, file: !1957, line: 24, baseType: !1231, size: 64, offset: 576)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1956, file: !1957, line: 25, baseType: !1231, size: 64, offset: 640)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1956, file: !1957, line: 26, baseType: !1231, size: 64, offset: 704)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1956, file: !1957, line: 27, baseType: !1231, size: 64, offset: 768)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1956, file: !1957, line: 28, baseType: !1231, size: 64, offset: 832)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1956, file: !1957, line: 29, baseType: !1231, size: 64, offset: 896)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1956, file: !1957, line: 30, baseType: !1231, size: 64, offset: 960)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1956, file: !1957, line: 31, baseType: !1231, size: 64, offset: 1024)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1956, file: !1957, line: 32, baseType: !1231, size: 64, offset: 1088)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1956, file: !1957, line: 33, baseType: !1231, size: 64, offset: 1152)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1941, file: !1940, line: 63, baseType: !258, size: 32, offset: 1024)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1941, file: !1940, line: 69, baseType: !302, size: 16, offset: 1056)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1941, file: !1940, line: 70, baseType: !1981, size: 16, offset: 1072)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !293, line: 18, baseType: !1982)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !295, line: 23, baseType: !1444)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1855, file: !317, line: 882, baseType: !248, size: 64, offset: 9024)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1855, file: !317, line: 885, baseType: !268, size: 32, offset: 9088)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1855, file: !317, line: 886, baseType: !1986, size: 64, offset: 9152)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !317, line: 732, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1855, file: !317, line: 901, baseType: !1556, size: 64, offset: 9216)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1855, file: !317, line: 904, baseType: !1270, size: 64, offset: 9280)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1855, file: !317, line: 906, baseType: !1991, size: 64, offset: 9344)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !317, line: 906, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1855, file: !317, line: 930, baseType: !258, size: 32, offset: 9408)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1855, file: !317, line: 933, baseType: !258, size: 32, offset: 9440)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1855, file: !317, line: 935, baseType: !1996, size: 64, offset: 9472)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !439, line: 103, size: 64, elements: !1997)
!1997 = !{!1998}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1996, file: !439, line: 104, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !439, line: 101, flags: DIFlagFwdDecl)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1855, file: !317, line: 940, baseType: !505, size: 64, offset: 9536)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1855, file: !317, line: 942, baseType: !1605, size: 256, offset: 9600)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1852, file: !317, line: 986, baseType: !2004, offset: 10240)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, elements: !1359)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1839, file: !317, line: 640, baseType: !2006, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1886, line: 297, baseType: !2007)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1886, line: 297, size: 64, elements: !2008)
!2008 = !{!2009}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2007, file: !1886, line: 297, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1891, line: 19, baseType: !248)
!2011 = !DIDerivedType(tag: DW_TAG_member, scope: !1839, file: !317, line: 646, baseType: !2012, size: 64, offset: 256)
!2012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1839, file: !317, line: 646, size: 64, elements: !2013)
!2013 = !{!2014, !2017}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2012, file: !317, line: 647, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2016)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !317, line: 542, baseType: !248)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2012, file: !317, line: 648, baseType: !2016, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1839, file: !317, line: 666, baseType: !13, size: 32, offset: 320)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1839, file: !317, line: 667, baseType: !2020, size: 64, offset: 384)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !317, line: 579, size: 320, elements: !2022)
!2022 = !{!2023}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2021, file: !317, line: 580, baseType: !1416, size: 320)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1839, file: !317, line: 670, baseType: !498, size: 8, offset: 448)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1839, file: !317, line: 681, baseType: !2026, size: 256, offset: 512)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1839, file: !317, line: 678, size: 256, elements: !2027)
!2027 = !{!2028, !2029}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2026, file: !317, line: 679, baseType: !1408, size: 192, align: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2026, file: !317, line: 680, baseType: !248, size: 64, offset: 192)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1839, file: !317, line: 689, baseType: !306, size: 128, offset: 768)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1839, file: !317, line: 691, baseType: !2032, size: 64, offset: 896)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !317, line: 691, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1839, file: !317, line: 694, baseType: !2035, size: 64, offset: 960)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2037)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2038, line: 563, size: 1024, elements: !2039)
!2038 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2039 = !{!2040, !2044, !2045, !2049, !2053, !2057, !2233, !2237, !2241, !2245, !2246, !2247, !2251, !2255, !2261, !2265}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2037, file: !2038, line: 564, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !1838}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2037, file: !2038, line: 569, baseType: !2041, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2037, file: !2038, line: 571, baseType: !2046, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!13, !1838, !248}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2037, file: !2038, line: 572, baseType: !2050, size: 64, offset: 192)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!13, !1838}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2037, file: !2038, line: 578, baseType: !2054, size: 64, offset: 256)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!13, !1838, !248, !248, !248}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2037, file: !2038, line: 580, baseType: !2058, size: 64, offset: 320)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !317, line: 1184, baseType: !7)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2038, line: 512, size: 896, elements: !2064)
!2064 = !{!2065, !2073, !2074, !2081, !2088, !2098, !2227, !2228, !2230, !2231}
!2065 = !DIDerivedType(tag: DW_TAG_member, scope: !2063, file: !2038, line: 513, baseType: !2066, size: 320)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2063, file: !2038, line: 513, size: 320, elements: !2067)
!2067 = !{!2068, !2069, !2070, !2071, !2072}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2066, file: !2038, line: 514, baseType: !1838, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2066, file: !2038, line: 515, baseType: !541, size: 32, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2066, file: !2038, line: 516, baseType: !248, size: 64, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2066, file: !2038, line: 517, baseType: !248, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2066, file: !2038, line: 518, baseType: !248, size: 64, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2063, file: !2038, line: 520, baseType: !316, size: 32, offset: 320)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2063, file: !2038, line: 522, baseType: !2075, size: 64, offset: 384)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1891, line: 22, baseType: !2077)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1891, line: 22, size: 64, elements: !2078)
!2078 = !{!2079}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2077, file: !1891, line: 22, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1891, line: 15, baseType: !248)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2063, file: !2038, line: 524, baseType: !2082, size: 64, offset: 448)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1886, line: 372, baseType: !2084)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1886, line: 372, size: 64, elements: !2085)
!2085 = !{!2086}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2084, file: !1886, line: 372, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1891, line: 16, baseType: !248)
!2088 = !DIDerivedType(tag: DW_TAG_member, scope: !2063, file: !2038, line: 527, baseType: !2089, size: 64, offset: 512)
!2089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2063, file: !2038, line: 527, size: 64, elements: !2090)
!2090 = !{!2091, !2097}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2089, file: !2038, line: 528, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1891, line: 21, baseType: !2093)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1891, line: 21, size: 64, elements: !2094)
!2094 = !{!2095}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2093, file: !1891, line: 21, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1891, line: 14, baseType: !248)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2089, file: !2038, line: 529, baseType: !2076, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2063, file: !2038, line: 534, baseType: !2099, size: 64, offset: 576)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !317, line: 74, size: 512, align: 128, elements: !2101)
!2101 = !{!2102, !2103, !2221, !2226}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2100, file: !317, line: 75, baseType: !248, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, scope: !2100, file: !317, line: 83, baseType: !2104, size: 320, offset: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2100, file: !317, line: 83, size: 320, elements: !2105)
!2105 = !{!2106, !2127, !2141, !2145, !2220}
!2106 = !DIDerivedType(tag: DW_TAG_member, scope: !2104, file: !317, line: 84, baseType: !2107, size: 320)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2104, file: !317, line: 84, size: 320, elements: !2108)
!2108 = !{!2109, !2120, !2121, !2126}
!2109 = !DIDerivedType(tag: DW_TAG_member, scope: !2107, file: !317, line: 90, baseType: !2110, size: 128)
!2110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2107, file: !317, line: 90, size: 128, elements: !2111)
!2111 = !{!2112, !2113, !2118, !2119}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2110, file: !317, line: 91, baseType: !306, size: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, scope: !2110, file: !317, line: 94, baseType: !2114, size: 128)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2110, file: !317, line: 94, size: 128, elements: !2115)
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2114, file: !317, line: 96, baseType: !230, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2114, file: !317, line: 98, baseType: !7, size: 32, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2110, file: !317, line: 102, baseType: !306, size: 128)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2110, file: !317, line: 103, baseType: !306, size: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2107, file: !317, line: 106, baseType: !952, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, scope: !2107, file: !317, line: 107, baseType: !2122, size: 64, offset: 192)
!2122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2107, file: !317, line: 107, size: 64, elements: !2123)
!2123 = !{!2124, !2125}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2122, file: !317, line: 108, baseType: !248, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2122, file: !317, line: 109, baseType: !248, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2107, file: !317, line: 117, baseType: !248, size: 64, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, scope: !2104, file: !317, line: 119, baseType: !2128, size: 320)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2104, file: !317, line: 119, size: 320, elements: !2129)
!2129 = !{!2130, !2131, !2134, !2135, !2136}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2128, file: !317, line: 124, baseType: !248, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2128, file: !317, line: 125, baseType: !2132, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !317, line: 125, flags: DIFlagFwdDecl)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2128, file: !317, line: 126, baseType: !248, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2128, file: !317, line: 127, baseType: !248, size: 64, offset: 192)
!2136 = !DIDerivedType(tag: DW_TAG_member, scope: !2128, file: !317, line: 128, baseType: !2137, size: 64, offset: 256)
!2137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2128, file: !317, line: 128, size: 64, elements: !2138)
!2138 = !{!2139, !2140}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2137, file: !317, line: 133, baseType: !248, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2137, file: !317, line: 138, baseType: !505, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, scope: !2104, file: !317, line: 141, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2104, file: !317, line: 141, size: 64, elements: !2143)
!2143 = !{!2144}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2142, file: !317, line: 142, baseType: !248, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, scope: !2104, file: !317, line: 144, baseType: !2146, size: 128)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2104, file: !317, line: 144, size: 128, elements: !2147)
!2147 = !{!2148, !2219}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2146, file: !317, line: 146, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !333, line: 126, size: 1216, elements: !2151)
!2151 = !{!2152, !2162, !2183, !2184, !2185, !2186, !2187, !2201, !2202, !2203}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2150, file: !333, line: 127, baseType: !2153, size: 384)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !333, line: 21, size: 384, elements: !2154)
!2154 = !{!2155, !2156, !2158, !2159, !2160, !2161}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2153, file: !333, line: 22, baseType: !248, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2153, file: !333, line: 23, baseType: !2157, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2153, file: !333, line: 24, baseType: !2157, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2153, file: !333, line: 25, baseType: !248, size: 64, offset: 192)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2153, file: !333, line: 26, baseType: !248, size: 64, offset: 256)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2153, file: !333, line: 27, baseType: !248, size: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2150, file: !333, line: 128, baseType: !2163, size: 128, offset: 384)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2164, line: 105, size: 128, elements: !2165)
!2164 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2165 = !{!2166, !2167}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2163, file: !2164, line: 110, baseType: !248, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2163, file: !2164, line: 118, baseType: !2168, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2164, line: 95, size: 448, elements: !2170)
!2170 = !{!2171, !2172, !2178, !2179, !2180, !2181, !2182}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2169, file: !2164, line: 96, baseType: !505, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2169, file: !2164, line: 97, baseType: !2173, size: 64, offset: 64)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2164, line: 60, baseType: !2175)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !2177}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2169, file: !2164, line: 98, baseType: !2173, size: 64, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2169, file: !2164, line: 99, baseType: !498, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2169, file: !2164, line: 100, baseType: !498, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2169, file: !2164, line: 101, baseType: !1283, size: 128, align: 64, offset: 256)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2169, file: !2164, line: 102, baseType: !2177, size: 64, offset: 384)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2150, file: !333, line: 129, baseType: !1644, size: 256, offset: 512)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2150, file: !333, line: 130, baseType: !332, size: 32, offset: 768)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2150, file: !333, line: 131, baseType: !7, size: 32, offset: 800)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2150, file: !333, line: 132, baseType: !248, size: 64, offset: 832)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2150, file: !333, line: 133, baseType: !2188, size: 64, offset: 896)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2190)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !333, line: 77, size: 192, elements: !2191)
!2191 = !{!2192, !2196, !2197}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2190, file: !333, line: 83, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{null, !2099}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2190, file: !333, line: 89, baseType: !2058, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2190, file: !333, line: 100, baseType: !2198, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!13, !2149, !248, !248, !13}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2150, file: !333, line: 134, baseType: !230, size: 64, offset: 960)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2150, file: !333, line: 135, baseType: !13, size: 32, offset: 1024)
!2203 = !DIDerivedType(tag: DW_TAG_member, scope: !2150, file: !333, line: 136, baseType: !2204, size: 128, offset: 1088)
!2204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2150, file: !333, line: 136, size: 128, elements: !2205)
!2205 = !{!2206, !2212}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2204, file: !333, line: 137, baseType: !2207, size: 128)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2208, line: 6, size: 128, elements: !2209)
!2208 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2209 = !{!2210, !2211}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2207, file: !2208, line: 7, baseType: !1029, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2207, file: !2208, line: 8, baseType: !1029, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, scope: !2204, file: !333, line: 138, baseType: !2213)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2204, file: !333, line: 138, elements: !2214)
!2214 = !{!2215, !2217}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2213, file: !333, line: 138, baseType: !2216)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2213, file: !333, line: 138, elements: !620)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2213, file: !333, line: 138, baseType: !2218)
!2218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2207, elements: !1359)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2146, file: !317, line: 147, baseType: !230, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2104, file: !317, line: 161, baseType: !1283, size: 128, align: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, scope: !2100, file: !317, line: 164, baseType: !2222, size: 32, offset: 384)
!2222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2100, file: !317, line: 164, size: 32, elements: !2223)
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2222, file: !317, line: 169, baseType: !258, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2222, file: !317, line: 177, baseType: !7, size: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2100, file: !317, line: 181, baseType: !258, size: 32, offset: 416)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2063, file: !2038, line: 535, baseType: !2099, size: 64, offset: 640)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2063, file: !2038, line: 541, baseType: !2229, size: 64, offset: 704)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2063, file: !2038, line: 545, baseType: !913, size: 64, offset: 768)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2063, file: !2038, line: 549, baseType: !2232, size: 64, offset: 832)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1886, line: 520, baseType: !2099)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2037, file: !2038, line: 581, baseType: !2234, size: 64, offset: 384)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!2061, !2062, !7}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2037, file: !2038, line: 582, baseType: !2238, size: 64, offset: 448)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!2061, !2062, !248, !248}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2037, file: !2038, line: 584, baseType: !2242, size: 64, offset: 512)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!248, !1838}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2037, file: !2038, line: 588, baseType: !2058, size: 64, offset: 576)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2037, file: !2038, line: 591, baseType: !2058, size: 64, offset: 640)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2037, file: !2038, line: 597, baseType: !2248, size: 64, offset: 704)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!13, !1838, !248, !230, !13, !13}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2037, file: !2038, line: 603, baseType: !2252, size: 64, offset: 768)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!226, !1838}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2037, file: !2038, line: 613, baseType: !2256, size: 64, offset: 832)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!13, !1838, !2259}
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !317, line: 717, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2037, file: !2038, line: 625, baseType: !2262, size: 64, offset: 896)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!2259, !1838, !248}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2037, file: !2038, line: 633, baseType: !2266, size: 64, offset: 960)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!2099, !1838, !248}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1839, file: !317, line: 697, baseType: !248, size: 64, offset: 1024)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1839, file: !317, line: 699, baseType: !1270, size: 64, offset: 1088)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1839, file: !317, line: 700, baseType: !230, size: 64, offset: 1152)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1839, file: !317, line: 711, baseType: !505, size: 64, offset: 1216)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1839, file: !317, line: 717, baseType: !2259, size: 64, offset: 1280)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1839, file: !317, line: 722, baseType: !2275, offset: 1344)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !317, line: 570, elements: !620)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1741, file: !352, line: 1928, baseType: !248, size: 64, offset: 768)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1741, file: !352, line: 1929, baseType: !2278, size: 64, offset: 832)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!13, !956, !1270}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1741, file: !352, line: 1930, baseType: !2282, size: 64, offset: 896)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!13, !1270, !2285}
!2285 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !352, line: 1061, baseType: !230)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1741, file: !352, line: 1931, baseType: !2278, size: 64, offset: 960)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1741, file: !352, line: 1932, baseType: !2288, size: 64, offset: 1024)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!13, !1270, !250, !250, !13}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1741, file: !352, line: 1933, baseType: !2292, size: 64, offset: 1088)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!13, !13, !1270, !13}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1741, file: !352, line: 1934, baseType: !2296, size: 64, offset: 1152)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{!13, !1270, !13, !2299}
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !352, line: 1063, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1741, file: !352, line: 1935, baseType: !1875, size: 64, offset: 1216)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1741, file: !352, line: 1936, baseType: !2303, size: 64, offset: 1280)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!13, !13}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1741, file: !352, line: 1937, baseType: !2296, size: 64, offset: 1344)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1741, file: !352, line: 1938, baseType: !2308, size: 64, offset: 1408)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!1228, !2311, !1270, !249, !244, !7}
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2313, line: 59, flags: DIFlagFwdDecl)
!2313 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1741, file: !352, line: 1939, baseType: !2315, size: 64, offset: 1472)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!1228, !1270, !249, !2311, !244, !7}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1741, file: !352, line: 1940, baseType: !2319, size: 64, offset: 1536)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{null, !1270}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1741, file: !352, line: 1941, baseType: !2323, size: 64, offset: 1600)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!13, !1270, !13, !2326, !2327}
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1741, file: !352, line: 1942, baseType: !2329, size: 64, offset: 1664)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!1231, !1270, !13, !250, !250}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1741, file: !352, line: 1944, baseType: !2333, size: 64, offset: 1728)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !2336, !1270}
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2338, line: 17, size: 960, elements: !2339)
!2338 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2339 = !{!2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2369, !2370, !2373}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2337, file: !2338, line: 18, baseType: !1097, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2337, file: !2338, line: 19, baseType: !244, size: 64, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2337, file: !2338, line: 20, baseType: !244, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2337, file: !2338, line: 21, baseType: !244, size: 64, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2337, file: !2338, line: 22, baseType: !244, size: 64, offset: 256)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2337, file: !2338, line: 23, baseType: !250, size: 64, offset: 320)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2337, file: !2338, line: 24, baseType: !250, size: 64, offset: 384)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2337, file: !2338, line: 25, baseType: !501, size: 256, offset: 448)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2337, file: !2338, line: 26, baseType: !2349, size: 64, offset: 704)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2351)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2338, line: 32, size: 256, elements: !2352)
!2352 = !{!2353, !2357, !2361, !2365}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2351, file: !2338, line: 33, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!230, !2336, !249}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2351, file: !2338, line: 34, baseType: !2358, size: 64, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !2336, !230}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2351, file: !2338, line: 35, baseType: !2362, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!230, !2336, !230, !249}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2351, file: !2338, line: 36, baseType: !2366, size: 64, offset: 192)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!13, !2336, !230}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2337, file: !2338, line: 27, baseType: !13, size: 32, offset: 768)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2337, file: !2338, line: 28, baseType: !2371, size: 64, offset: 832)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1271)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2337, file: !2338, line: 29, baseType: !230, size: 64, offset: 896)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1741, file: !352, line: 1948, baseType: !2375, size: 64, offset: 1792)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!1228, !1270, !250, !1270, !250, !244, !7}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1741, file: !352, line: 1950, baseType: !2379, size: 64, offset: 1856)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!250, !1270, !250, !1270, !250, !250, !7}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1741, file: !352, line: 1953, baseType: !2288, size: 64, offset: 1920)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1741, file: !352, line: 1954, baseType: !2384, size: 64, offset: 1984)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!13, !2387, !7}
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !352, line: 1911, flags: DIFlagFwdDecl)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1741, file: !352, line: 1955, baseType: !2390, size: 64, offset: 2048)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!13, !2387, !1806, !7}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1271, file: !352, line: 1018, baseType: !1029, size: 64, offset: 1472)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1271, file: !352, line: 1020, baseType: !230, size: 64, offset: 1536)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1271, file: !352, line: 1023, baseType: !230, size: 64, offset: 1600)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1271, file: !352, line: 1027, baseType: !2397, size: 64, offset: 1664)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1271, file: !352, line: 1029, baseType: !952, size: 64, offset: 1728)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1271, file: !352, line: 1030, baseType: !2400, size: 32, offset: 1792)
!2400 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2401, line: 8, baseType: !1025)
!2401 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1271, file: !352, line: 1031, baseType: !2400, size: 32, offset: 1824)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1257, file: !1222, line: 182, baseType: !1267, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1257, file: !1222, line: 184, baseType: !2405, size: 64, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!13, !1270, !1162, !1256, !1838}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1245, file: !1222, line: 90, baseType: !2409, size: 64, offset: 192)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1245, file: !1222, line: 91, baseType: !2411, size: 64, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1212, file: !1157, line: 120, baseType: !2413, size: 64, offset: 192)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!2416, !1180}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2418)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !341, line: 39, size: 384, elements: !2419)
!2419 = !{!2420, !2421, !2425, !2429, !2435, !2439}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2418, file: !341, line: 40, baseType: !340, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2418, file: !341, line: 41, baseType: !2422, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!498}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2418, file: !341, line: 42, baseType: !2426, size: 64, offset: 128)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!230}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2418, file: !341, line: 43, baseType: !2430, size: 64, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!614, !2433}
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !341, line: 19, flags: DIFlagFwdDecl)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2418, file: !341, line: 44, baseType: !2436, size: 64, offset: 256)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!614}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2418, file: !341, line: 45, baseType: !2440, size: 64, offset: 320)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{null, !230}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1212, file: !1157, line: 121, baseType: !2444, size: 64, offset: 256)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!614, !1180}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1212, file: !1157, line: 122, baseType: !2448, size: 64, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{null, !1180, !1669, !1670}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1156, file: !1157, line: 70, baseType: !2452, size: 64, offset: 384)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2454, line: 190, size: 1152, elements: !2455)
!2454 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2455 = !{!2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2535, !2536, !2537, !2538, !2539, !2542}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2453, file: !2454, line: 191, baseType: !258, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2453, file: !2454, line: 192, baseType: !258, size: 32, offset: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2453, file: !2454, line: 202, baseType: !2452, size: 64, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2453, file: !2454, line: 203, baseType: !226, size: 64, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2453, file: !2454, line: 205, baseType: !1408, size: 192, align: 64, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2453, file: !2454, line: 207, baseType: !614, size: 64, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2453, file: !2454, line: 208, baseType: !7, size: 32, offset: 448)
!2463 = !DIDerivedType(tag: DW_TAG_member, scope: !2453, file: !2454, line: 209, baseType: !2464, size: 256, offset: 512)
!2464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2453, file: !2454, line: 209, size: 256, elements: !2465)
!2465 = !{!2466, !2475, !2479}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2464, file: !2454, line: 210, baseType: !2467, size: 256)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2454, line: 153, size: 256, elements: !2468)
!2468 = !{!2469, !2470, !2471, !2474}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2467, file: !2454, line: 154, baseType: !248, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2467, file: !2454, line: 156, baseType: !1686, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2467, file: !2454, line: 162, baseType: !2472, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2454, line: 162, flags: DIFlagFwdDecl)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2467, file: !2454, line: 167, baseType: !248, size: 64, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2464, file: !2454, line: 211, baseType: !2476, size: 64)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2454, line: 170, size: 64, elements: !2477)
!2477 = !{!2478}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2476, file: !2454, line: 171, baseType: !2452, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2464, file: !2454, line: 212, baseType: !2480, size: 256)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2454, line: 174, size: 256, elements: !2481)
!2481 = !{!2482, !2530, !2533, !2534}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2480, file: !2454, line: 175, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2485)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2454, line: 271, size: 768, elements: !2486)
!2486 = !{!2487, !2507, !2511, !2512, !2513, !2514, !2515, !2519, !2520, !2521, !2522, !2526}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2485, file: !2454, line: 276, baseType: !2488, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!13, !2491}
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2454, line: 251, size: 1216, elements: !2493)
!2493 = !{!2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2492, file: !2454, line: 253, baseType: !2452, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2492, file: !2454, line: 254, baseType: !1270, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2492, file: !2454, line: 255, baseType: !2336, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2492, file: !2454, line: 256, baseType: !230, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2492, file: !2454, line: 259, baseType: !501, size: 256, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2492, file: !2454, line: 260, baseType: !501, size: 256, offset: 512)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2492, file: !2454, line: 261, baseType: !13, size: 32, offset: 768)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2492, file: !2454, line: 262, baseType: !306, size: 128, offset: 832)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2492, file: !2454, line: 263, baseType: !1097, size: 64, offset: 960)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2492, file: !2454, line: 265, baseType: !244, size: 64, offset: 1024)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2492, file: !2454, line: 266, baseType: !498, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2492, file: !2454, line: 267, baseType: !498, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2492, file: !2454, line: 268, baseType: !2035, size: 64, offset: 1152)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2485, file: !2454, line: 277, baseType: !2508, size: 64, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{null, !2491}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2485, file: !2454, line: 290, baseType: !2366, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2485, file: !2454, line: 292, baseType: !2354, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2485, file: !2454, line: 293, baseType: !2362, size: 64, offset: 256)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2485, file: !2454, line: 294, baseType: !2358, size: 64, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2485, file: !2454, line: 296, baseType: !2516, size: 64, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!1228, !2491, !1097, !244, !250}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2485, file: !2454, line: 306, baseType: !244, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2485, file: !2454, line: 313, baseType: !498, size: 8, offset: 512)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2485, file: !2454, line: 314, baseType: !2516, size: 64, offset: 576)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2485, file: !2454, line: 317, baseType: !2523, size: 64, offset: 640)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!1825, !2491, !1827}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2485, file: !2454, line: 320, baseType: !2527, size: 64, offset: 704)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!13, !2491, !1838}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2480, file: !2454, line: 176, baseType: !2531, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2454, line: 35, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2480, file: !2454, line: 177, baseType: !250, size: 64, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2480, file: !2454, line: 178, baseType: !2452, size: 64, offset: 192)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2453, file: !2454, line: 215, baseType: !230, size: 64, offset: 768)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2453, file: !2454, line: 221, baseType: !1029, size: 64, offset: 832)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2453, file: !2454, line: 223, baseType: !235, size: 16, offset: 896)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2453, file: !2454, line: 224, baseType: !233, size: 16, offset: 912)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2453, file: !2454, line: 225, baseType: !2540, size: 64, offset: 960)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2454, line: 36, flags: DIFlagFwdDecl)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2453, file: !2454, line: 227, baseType: !1283, size: 128, align: 64, offset: 1024)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1156, file: !1157, line: 71, baseType: !2544, size: 32, offset: 448)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2545, line: 19, size: 32, elements: !2546)
!2545 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2546 = !{!2547}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2544, file: !2545, line: 20, baseType: !1328, size: 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1156, file: !1157, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1156, file: !1157, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1156, file: !1157, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1156, file: !1157, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1156, file: !1157, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1153, file: !207, line: 47, baseType: !1143, size: 64, offset: 512)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1153, file: !207, line: 48, baseType: !1162, size: 64, offset: 576)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1153, file: !207, line: 49, baseType: !2556, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !207, line: 49, flags: DIFlagFwdDecl)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1153, file: !207, line: 50, baseType: !1643, size: 64, offset: 704)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1144, file: !207, line: 418, baseType: !2560, size: 64, offset: 1408)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !207, line: 53, size: 448, elements: !2562)
!2562 = !{!2563, !2564, !2569, !2573, !2577, !2581}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2561, file: !207, line: 54, baseType: !1233, size: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2561, file: !207, line: 55, baseType: !2565, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!1228, !2560, !2568, !1097}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2561, file: !207, line: 57, baseType: !2570, size: 64, offset: 192)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!1228, !2560, !2568, !226, !244}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2561, file: !207, line: 59, baseType: !2574, size: 64, offset: 256)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{null, !1143, !226}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2561, file: !207, line: 60, baseType: !2578, size: 64, offset: 320)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!13, !1143}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2561, file: !207, line: 61, baseType: !2582, size: 64, offset: 384)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{null, !1143}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1144, file: !207, line: 419, baseType: !226, size: 64, offset: 1472)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1144, file: !207, line: 420, baseType: !226, size: 64, offset: 1536)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1144, file: !207, line: 421, baseType: !1162, size: 64, offset: 1600)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1144, file: !207, line: 424, baseType: !2589, size: 64, offset: 1664)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2591)
!2591 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !207, line: 424, flags: DIFlagFwdDecl)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1144, file: !207, line: 425, baseType: !2593, size: 64, offset: 1728)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1401)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1144, file: !207, line: 426, baseType: !7, size: 32, offset: 1792)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1144, file: !207, line: 435, baseType: !501, size: 256, offset: 1856)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1144, file: !207, line: 437, baseType: !2598, size: 64, offset: 2112)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2600, line: 69, size: 320, elements: !2601)
!2600 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2601 = !{!2602, !2603, !2604, !2621, !2623, !2627, !2628}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2599, file: !2600, line: 70, baseType: !226, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2599, file: !2600, line: 71, baseType: !1143, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2599, file: !2600, line: 72, baseType: !2605, size: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2607)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2600, line: 47, size: 256, elements: !2608)
!2608 = !{!2609, !2610, !2616, !2620}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2607, file: !2600, line: 49, baseType: !7, size: 32)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2607, file: !2600, line: 51, baseType: !2611, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DISubroutineType(types: !2613)
!2613 = !{!13, !226, !2614}
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2599)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2607, file: !2600, line: 53, baseType: !2617, size: 64, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!13, !1097, !2614}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2607, file: !2600, line: 55, baseType: !2440, size: 64, offset: 192)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2599, file: !2600, line: 73, baseType: !2622, size: 16, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2599, file: !2600, line: 74, baseType: !2624, size: 8, offset: 208)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !293, line: 16, baseType: !2625)
!2625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !295, line: 20, baseType: !2626)
!2626 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2599, file: !2600, line: 75, baseType: !292, size: 8, offset: 216)
!2628 = !DIDerivedType(tag: DW_TAG_member, scope: !2599, file: !2600, line: 76, baseType: !2629, size: 64, offset: 256)
!2629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2599, file: !2600, line: 76, size: 64, elements: !2630)
!2630 = !{!2631, !2632, !2639}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2629, file: !2600, line: 77, baseType: !230, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2629, file: !2600, line: 78, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2635)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2600, line: 86, size: 128, elements: !2636)
!2636 = !{!2637, !2638}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2635, file: !2600, line: 87, baseType: !7, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2635, file: !2600, line: 88, baseType: !1097, size: 64, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2629, file: !2600, line: 79, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2642)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2600, line: 92, size: 256, elements: !2643)
!2643 = !{!2644, !2645, !2646, !2648, !2649}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2642, file: !2600, line: 94, baseType: !7, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2642, file: !2600, line: 95, baseType: !7, size: 32, offset: 32)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2642, file: !2600, line: 96, baseType: !2647, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2642, file: !2600, line: 97, baseType: !2605, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2642, file: !2600, line: 98, baseType: !230, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1144, file: !207, line: 438, baseType: !7, size: 32, offset: 2176)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1144, file: !207, line: 441, baseType: !7, size: 32, offset: 2208)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1144, file: !207, line: 442, baseType: !2589, size: 64, offset: 2240)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1144, file: !207, line: 443, baseType: !2593, size: 64, offset: 2304)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1144, file: !207, line: 444, baseType: !498, size: 8, offset: 2368)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1144, file: !207, line: 451, baseType: !498, size: 8, offset: 2376)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1144, file: !207, line: 454, baseType: !7, size: 32, offset: 2400)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1144, file: !207, line: 455, baseType: !2658, size: 64, offset: 2432)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2660, line: 23, size: 96, elements: !2661)
!2660 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2661 = !{!2662, !2663, !2664}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2659, file: !2660, line: 24, baseType: !13, size: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2659, file: !2660, line: 24, baseType: !13, size: 32, offset: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2659, file: !2660, line: 24, baseType: !13, size: 32, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1144, file: !207, line: 458, baseType: !2666, size: 64, offset: 2496)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!13}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1144, file: !207, line: 460, baseType: !2670, size: 4032, align: 512, offset: 2560)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2671, size: 4032, elements: !2687)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !207, line: 362, size: 576, elements: !2672)
!2672 = !{!2673, !2674, !2675}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2671, file: !207, line: 363, baseType: !230, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2671, file: !207, line: 364, baseType: !7, size: 32, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2671, file: !207, line: 367, baseType: !2676, size: 448, offset: 128)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !207, line: 319, size: 448, elements: !2677)
!2677 = !{!2678, !2679}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2676, file: !207, line: 320, baseType: !1143, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2676, file: !207, line: 321, baseType: !2680, size: 384, offset: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2681, line: 40, size: 384, elements: !2682)
!2681 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2682 = !{!2683}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2680, file: !2681, line: 41, baseType: !2684, size: 384, align: 64)
!2684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1408, size: 384, align: 64, elements: !2685)
!2685 = !{!2686}
!2686 = !DISubrange(count: 2)
!2687 = !{!2688}
!2688 = !DISubrange(count: 7)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1144, file: !207, line: 463, baseType: !2690, size: 192, offset: 6592)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2691, line: 8, size: 192, elements: !2692)
!2691 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2692 = !{!2693, !2694, !2696}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2690, file: !2691, line: 10, baseType: !7, size: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2690, file: !2691, line: 11, baseType: !2695, size: 64, offset: 64)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2690, file: !2691, line: 12, baseType: !2697, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2699, line: 59, size: 48, elements: !2700)
!2699 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2700 = !{!2701, !2702, !2703, !2704, !2705, !2706}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2698, file: !2699, line: 60, baseType: !1981, size: 16)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2698, file: !2699, line: 61, baseType: !1981, size: 16, offset: 16)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2698, file: !2699, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2698, file: !2699, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2698, file: !2699, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2698, file: !2699, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1144, file: !207, line: 465, baseType: !248, size: 64, offset: 6784)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1144, file: !207, line: 469, baseType: !7, size: 32, offset: 6848)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1144, file: !207, line: 470, baseType: !306, size: 128, offset: 6912)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1144, file: !207, line: 471, baseType: !2711, size: 64, offset: 7040)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !837, line: 33, size: 96, elements: !2713)
!2713 = !{!2714, !2715, !2716, !2717}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2712, file: !837, line: 37, baseType: !13, size: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2712, file: !837, line: 43, baseType: !13, size: 32, offset: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2712, file: !837, line: 45, baseType: !235, size: 16, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2712, file: !837, line: 47, baseType: !235, size: 16, offset: 80)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1144, file: !207, line: 476, baseType: !2719, size: 64, offset: 7104)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !207, line: 378, size: 256, elements: !2721)
!2721 = !{!2722, !2738, !2739, !2740}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2720, file: !207, line: 379, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2725, line: 204, baseType: !2726)
!2725 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2725, line: 197, size: 192, elements: !2727)
!2727 = !{!2728, !2730, !2731, !2732, !2734, !2736}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2726, file: !2725, line: 198, baseType: !2729, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2725, line: 21, baseType: !1026)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2726, file: !2725, line: 199, baseType: !296, size: 8, offset: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2726, file: !2725, line: 200, baseType: !296, size: 8, offset: 40)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2726, file: !2725, line: 201, baseType: !2733, size: 16, offset: 48)
!2733 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2725, line: 17, baseType: !303)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2726, file: !2725, line: 202, baseType: !2735, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2725, line: 16, baseType: !1030)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2726, file: !2725, line: 203, baseType: !2737, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2725, line: 22, baseType: !1030)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2720, file: !207, line: 380, baseType: !7, size: 32, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2720, file: !207, line: 381, baseType: !1097, size: 64, offset: 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2720, file: !207, line: 382, baseType: !1097, size: 64, offset: 192)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1144, file: !207, line: 477, baseType: !2720, size: 256, offset: 7168)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1144, file: !207, line: 480, baseType: !2743, size: 64, offset: 7424)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !207, line: 480, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1144, file: !207, line: 483, baseType: !2746, size: 64, offset: 7488)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !207, line: 483, flags: DIFlagFwdDecl)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1144, file: !207, line: 488, baseType: !1097, size: 64, offset: 7552)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1144, file: !207, line: 492, baseType: !230, size: 64, offset: 7616)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1144, file: !207, line: 493, baseType: !7, size: 32, offset: 7680)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1144, file: !207, line: 495, baseType: !230, size: 64, offset: 7744)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1144, file: !207, line: 496, baseType: !7, size: 32, offset: 7808)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1144, file: !207, line: 499, baseType: !7, size: 32, offset: 7840)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1144, file: !207, line: 500, baseType: !2755, size: 64, offset: 7872)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2757, line: 45, baseType: !2758)
!2757 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1144, file: !207, line: 503, baseType: !7, size: 32, offset: 7936)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1144, file: !207, line: 504, baseType: !2761, size: 64, offset: 8000)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2764, line: 96, size: 192, elements: !2765)
!2764 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2765 = !{!2766, !2767, !2820, !2822}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2763, file: !2764, line: 97, baseType: !7, size: 32)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2763, file: !2764, line: 98, baseType: !2768, size: 64, offset: 64)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2764, line: 24, size: 3072, elements: !2770)
!2770 = !{!2771, !2773, !2774, !2775, !2776, !2789, !2790, !2791, !2792, !2804, !2805, !2806, !2817, !2818, !2819}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2769, file: !2764, line: 26, baseType: !2772, size: 128)
!2772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 128, elements: !2685)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2769, file: !2764, line: 27, baseType: !2772, size: 128, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2769, file: !2764, line: 28, baseType: !13, size: 32, offset: 256)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2769, file: !2764, line: 31, baseType: !268, size: 32, align: 512, offset: 512)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2769, file: !2764, line: 32, baseType: !2777, size: 960, offset: 576)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2778, line: 206, size: 960, elements: !2779)
!2778 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2779 = !{!2780, !2781, !2784, !2786, !2787, !2788}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2777, file: !2778, line: 207, baseType: !1286, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2777, file: !2778, line: 208, baseType: !2782, size: 256, offset: 64)
!2782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2783, size: 256, elements: !1346)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2777, file: !2778, line: 209, baseType: !2785, size: 256, offset: 320)
!2785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 256, elements: !1346)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2777, file: !2778, line: 213, baseType: !1231, size: 64, offset: 576)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2777, file: !2778, line: 215, baseType: !1707, size: 256, offset: 640)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2777, file: !2778, line: 216, baseType: !292, size: 8, offset: 896)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2769, file: !2764, line: 33, baseType: !248, size: 64, offset: 1536)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2769, file: !2764, line: 34, baseType: !248, size: 64, offset: 1600)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2769, file: !2764, line: 35, baseType: !498, size: 8, offset: 1664)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2769, file: !2764, line: 36, baseType: !2793, size: 320, offset: 1728)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2794, line: 11, size: 320, elements: !2795)
!2794 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2795 = !{!2796, !2797, !2798, !2803}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2793, file: !2794, line: 16, baseType: !1341, size: 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2793, file: !2794, line: 17, baseType: !248, size: 64, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2793, file: !2794, line: 18, baseType: !2799, size: 64, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{null, !2802}
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2793, file: !2794, line: 19, baseType: !1025, size: 32, offset: 256)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2769, file: !2764, line: 37, baseType: !1605, size: 256, offset: 2048)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2769, file: !2764, line: 38, baseType: !1283, size: 128, align: 64, offset: 2304)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2769, file: !2764, line: 39, baseType: !2807, size: 64, offset: 2432)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2764, line: 49, size: 768, elements: !2809)
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815, !2816}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2808, file: !2764, line: 50, baseType: !268, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2808, file: !2764, line: 51, baseType: !2785, size: 256, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2808, file: !2764, line: 53, baseType: !2785, size: 256, offset: 320)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2808, file: !2764, line: 54, baseType: !248, size: 64, offset: 576)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2808, file: !2764, line: 55, baseType: !2807, size: 64, offset: 640)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2808, file: !2764, line: 56, baseType: !13, size: 32, offset: 704)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2808, file: !2764, line: 57, baseType: !13, size: 32, offset: 736)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2769, file: !2764, line: 40, baseType: !248, size: 64, offset: 2496)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2769, file: !2764, line: 42, baseType: !13, size: 32, offset: 2560)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2769, file: !2764, line: 43, baseType: !2762, size: 64, offset: 2624)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2763, file: !2764, line: 99, baseType: !2821, offset: 128)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !619, line: 211, elements: !620)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2763, file: !2764, line: 100, baseType: !2823, size: 64, offset: 128)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2764, line: 63, size: 3008, elements: !2825)
!2825 = !{!2826, !2827, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2857}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2824, file: !2764, line: 64, baseType: !2807, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2824, file: !2764, line: 65, baseType: !2828, size: 192, offset: 64)
!2828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2807, size: 192, elements: !1197)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2824, file: !2764, line: 67, baseType: !13, size: 32, offset: 256)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2824, file: !2764, line: 68, baseType: !501, size: 256, offset: 320)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2824, file: !2764, line: 69, baseType: !268, size: 32, offset: 576)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2824, file: !2764, line: 70, baseType: !501, size: 256, offset: 640)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2824, file: !2764, line: 71, baseType: !248, size: 64, offset: 896)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2824, file: !2764, line: 72, baseType: !248, size: 64, offset: 960)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2824, file: !2764, line: 73, baseType: !248, size: 64, offset: 1024)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2824, file: !2764, line: 74, baseType: !248, size: 64, offset: 1088)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2824, file: !2764, line: 75, baseType: !248, size: 64, offset: 1152)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2824, file: !2764, line: 76, baseType: !248, size: 64, offset: 1216)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2824, file: !2764, line: 77, baseType: !248, size: 64, offset: 1280)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2824, file: !2764, line: 78, baseType: !248, size: 64, offset: 1344)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2824, file: !2764, line: 79, baseType: !498, size: 8, offset: 1408)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2824, file: !2764, line: 80, baseType: !248, size: 64, offset: 1472)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2824, file: !2764, line: 81, baseType: !501, size: 256, offset: 1536)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2824, file: !2764, line: 82, baseType: !1644, size: 256, offset: 1792)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2824, file: !2764, line: 84, baseType: !258, size: 32, offset: 2048)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2824, file: !2764, line: 87, baseType: !248, size: 64, offset: 2112)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2824, file: !2764, line: 88, baseType: !248, size: 64, offset: 2176)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2824, file: !2764, line: 89, baseType: !2849, size: 704, offset: 2240)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1606, line: 111, size: 704, elements: !2850)
!2850 = !{!2851, !2852, !2853, !2856}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2849, file: !1606, line: 112, baseType: !1605, size: 256)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2849, file: !1606, line: 113, baseType: !2793, size: 320, offset: 256)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2849, file: !1606, line: 116, baseType: !2854, size: 64, offset: 576)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1606, line: 18, flags: DIFlagFwdDecl)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2849, file: !1606, line: 117, baseType: !13, size: 32, offset: 640)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2824, file: !2764, line: 90, baseType: !2762, size: 64, offset: 2944)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1144, file: !207, line: 515, baseType: !2859, size: 64, offset: 8064)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2861, line: 117, size: 128, elements: !2862)
!2861 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2862 = !{!2863, !2864, !2865}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2860, file: !2861, line: 118, baseType: !1401, size: 32)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2860, file: !2861, line: 119, baseType: !1401, size: 32, offset: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2860, file: !2861, line: 120, baseType: !1231, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1144, file: !207, line: 516, baseType: !7, size: 32, offset: 8128)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1144, file: !207, line: 519, baseType: !7, size: 32, offset: 8160)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1144, file: !207, line: 520, baseType: !2869, size: 64, offset: 8192)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1144, file: !207, line: 523, baseType: !2871, size: 64, offset: 8256)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !207, line: 523, flags: DIFlagFwdDecl)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1144, file: !207, line: 524, baseType: !7, size: 32, offset: 8320)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1144, file: !207, line: 525, baseType: !2876, size: 64, offset: 8384)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !207, line: 525, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1144, file: !207, line: 526, baseType: !7, size: 32, offset: 8448)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1144, file: !207, line: 533, baseType: !230, size: 64, offset: 8512)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1144, file: !207, line: 534, baseType: !7, size: 32, offset: 8576)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1144, file: !207, line: 535, baseType: !542, size: 64, offset: 8640)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1144, file: !207, line: 536, baseType: !7, size: 32, offset: 8704)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1144, file: !207, line: 539, baseType: !13, size: 32, offset: 8736)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1144, file: !207, line: 540, baseType: !2886, size: 64, offset: 8768)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2888, line: 32, size: 64, elements: !2889)
!2888 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2887, file: !2888, line: 33, baseType: !1401, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2887, file: !2888, line: 34, baseType: !1401, size: 32, offset: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1144, file: !207, line: 563, baseType: !306, size: 128, offset: 8832)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1144, file: !207, line: 565, baseType: !306, size: 128, offset: 8960)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1144, file: !207, line: 568, baseType: !2895, size: 64, offset: 9088)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1144, file: !207, line: 570, baseType: !258, size: 32, offset: 9152)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1120, file: !352, line: 2382, baseType: !1119, size: 64, offset: 448)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1120, file: !352, line: 2383, baseType: !1337, size: 64, offset: 512)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1120, file: !352, line: 2385, baseType: !618, offset: 576)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1120, file: !352, line: 2386, baseType: !618, offset: 576)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1120, file: !352, line: 2387, baseType: !618, offset: 576)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1120, file: !352, line: 2388, baseType: !2903, offset: 576)
!2903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, elements: !1197)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1120, file: !352, line: 2390, baseType: !618, offset: 576)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1120, file: !352, line: 2391, baseType: !618, offset: 576)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1120, file: !352, line: 2392, baseType: !618, offset: 576)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1120, file: !352, line: 2393, baseType: !618, offset: 576)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1109, file: !352, line: 1197, baseType: !2909, size: 64, offset: 384)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2911)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !352, line: 2057, size: 1664, elements: !2912)
!2912 = !{!2913, !2917, !2921, !2922, !2926, !2950, !2954, !2955, !2956, !2960, !2964, !2968, !2969, !2970, !2976, !2980, !2981, !2985, !2986, !2987, !2988, !2992, !2996, !3043, !3058, !3059}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2911, file: !352, line: 2058, baseType: !2914, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{!956, !1108}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2911, file: !352, line: 2059, baseType: !2918, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !956}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2911, file: !352, line: 2060, baseType: !2918, size: 64, offset: 128)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2911, file: !352, line: 2062, baseType: !2923, size: 64, offset: 192)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{null, !956, !13}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2911, file: !352, line: 2063, baseType: !2927, size: 64, offset: 256)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!13, !956, !2930}
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !347, line: 42, size: 384, elements: !2932)
!2932 = !{!2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !2931, file: !347, line: 43, baseType: !1231, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !2931, file: !347, line: 45, baseType: !1231, size: 64, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !2931, file: !347, line: 52, baseType: !250, size: 64, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !2931, file: !347, line: 53, baseType: !250, size: 64, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !2931, file: !347, line: 55, baseType: !346, size: 32, offset: 256)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !2931, file: !347, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !2931, file: !347, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !2931, file: !347, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !2931, file: !347, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !2931, file: !347, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !2931, file: !347, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !2931, file: !347, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !2931, file: !347, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !2931, file: !347, line: 78, baseType: !2947, size: 64, offset: 320)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !347, line: 78, flags: DIFlagFwdDecl)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2911, file: !352, line: 2064, baseType: !2951, size: 64, offset: 320)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!13, !956}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2911, file: !352, line: 2065, baseType: !2918, size: 64, offset: 384)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2911, file: !352, line: 2066, baseType: !1139, size: 64, offset: 448)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2911, file: !352, line: 2067, baseType: !2957, size: 64, offset: 512)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!13, !1108, !13}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2911, file: !352, line: 2068, baseType: !2961, size: 64, offset: 576)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!13, !1108, !351}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2911, file: !352, line: 2069, baseType: !2965, size: 64, offset: 640)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!13, !1108}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2911, file: !352, line: 2070, baseType: !2961, size: 64, offset: 704)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2911, file: !352, line: 2071, baseType: !2965, size: 64, offset: 768)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2911, file: !352, line: 2072, baseType: !2971, size: 64, offset: 832)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!13, !991, !2974}
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !352, line: 62, flags: DIFlagFwdDecl)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2911, file: !352, line: 2073, baseType: !2977, size: 64, offset: 896)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!13, !1108, !2695, !1097}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2911, file: !352, line: 2074, baseType: !1139, size: 64, offset: 960)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2911, file: !352, line: 2076, baseType: !2982, size: 64, offset: 1024)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!13, !2336, !991}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2911, file: !352, line: 2077, baseType: !2982, size: 64, offset: 1088)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2911, file: !352, line: 2078, baseType: !2982, size: 64, offset: 1152)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2911, file: !352, line: 2079, baseType: !2982, size: 64, offset: 1216)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2911, file: !352, line: 2081, baseType: !2989, size: 64, offset: 1280)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!1228, !1108, !13, !1097, !244, !250}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2911, file: !352, line: 2082, baseType: !2993, size: 64, offset: 1344)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!1228, !1108, !13, !226, !244, !250}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2911, file: !352, line: 2083, baseType: !2997, size: 64, offset: 1408)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!3000, !956}
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !357, line: 296, size: 1664, elements: !3003)
!3003 = !{!3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3028, !3029, !3030}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3002, file: !357, line: 297, baseType: !1341, size: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3002, file: !357, line: 298, baseType: !306, size: 128, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3002, file: !357, line: 299, baseType: !306, size: 128, offset: 256)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3002, file: !357, line: 300, baseType: !306, size: 128, offset: 384)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3002, file: !357, line: 301, baseType: !501, size: 256, offset: 512)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3002, file: !357, line: 302, baseType: !268, size: 32, offset: 768)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3002, file: !357, line: 303, baseType: !258, size: 32, offset: 800)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3002, file: !357, line: 304, baseType: !1108, size: 64, offset: 832)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3002, file: !357, line: 305, baseType: !3013, size: 64, offset: 896)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !357, line: 68, size: 64, elements: !3014)
!3014 = !{!3015, !3027}
!3015 = !DIDerivedType(tag: DW_TAG_member, scope: !3013, file: !357, line: 69, baseType: !3016, size: 32)
!3016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3013, file: !357, line: 69, size: 32, elements: !3017)
!3017 = !{!3018, !3019, !3020}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3016, file: !357, line: 70, baseType: !962, size: 32)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3016, file: !357, line: 71, baseType: !971, size: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3016, file: !357, line: 72, baseType: !3021, size: 32)
!3021 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3022, line: 24, baseType: !3023)
!3022 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3022, line: 22, size: 32, elements: !3024)
!3024 = !{!3025}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3023, file: !3022, line: 23, baseType: !3026, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3022, line: 20, baseType: !968)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3013, file: !357, line: 74, baseType: !356, size: 32, offset: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3002, file: !357, line: 306, baseType: !250, size: 64, offset: 960)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3002, file: !357, line: 307, baseType: !248, size: 64, offset: 1024)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3002, file: !357, line: 308, baseType: !3031, size: 576, offset: 1088)
!3031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !357, line: 205, size: 576, elements: !3032)
!3032 = !{!3033, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3031, file: !357, line: 206, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !357, line: 66, baseType: !252)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3031, file: !357, line: 207, baseType: !3034, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3031, file: !357, line: 208, baseType: !3034, size: 64, offset: 128)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3031, file: !357, line: 209, baseType: !3034, size: 64, offset: 192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3031, file: !357, line: 210, baseType: !3034, size: 64, offset: 256)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3031, file: !357, line: 211, baseType: !3034, size: 64, offset: 320)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3031, file: !357, line: 212, baseType: !3034, size: 64, offset: 384)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3031, file: !357, line: 213, baseType: !1432, size: 64, offset: 448)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3031, file: !357, line: 214, baseType: !1432, size: 64, offset: 512)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2911, file: !352, line: 2085, baseType: !3044, size: 64, offset: 1472)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!1231, !1108, !3047}
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3049, line: 15, size: 256, elements: !3050)
!3049 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3050 = !{!3051, !3052, !3053, !3054, !3055}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3048, file: !3049, line: 16, baseType: !541, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3048, file: !3049, line: 19, baseType: !13, size: 32, offset: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3048, file: !3049, line: 26, baseType: !248, size: 64, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3048, file: !3049, line: 33, baseType: !248, size: 64, offset: 128)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3048, file: !3049, line: 36, baseType: !3056, size: 64, offset: 192)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !317, line: 33, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2911, file: !352, line: 2087, baseType: !3044, size: 64, offset: 1536)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2911, file: !352, line: 2089, baseType: !1139, size: 64, offset: 1600)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1109, file: !352, line: 1198, baseType: !3061, size: 64, offset: 448)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3063)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !357, line: 324, size: 704, elements: !3064)
!3064 = !{!3065, !3069, !3073, !3077, !3078, !3079, !3080, !3081, !3086, !3091, !3095}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3063, file: !357, line: 325, baseType: !3066, size: 64)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!13, !3001}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3063, file: !357, line: 326, baseType: !3070, size: 64, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!3001, !1108, !13}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3063, file: !357, line: 327, baseType: !3074, size: 64, offset: 128)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{null, !3001}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3063, file: !357, line: 328, baseType: !3066, size: 64, offset: 192)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3063, file: !357, line: 329, baseType: !3066, size: 64, offset: 256)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3063, file: !357, line: 330, baseType: !3066, size: 64, offset: 320)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3063, file: !357, line: 331, baseType: !2957, size: 64, offset: 384)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3063, file: !357, line: 334, baseType: !3082, size: 64, offset: 448)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!3085, !956}
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3063, file: !357, line: 335, baseType: !3087, size: 64, offset: 512)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!13, !956, !3090}
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3063, file: !357, line: 337, baseType: !3092, size: 64, offset: 576)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!13, !956, !3085}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3063, file: !357, line: 339, baseType: !3096, size: 64, offset: 640)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!13, !1108, !3099}
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1109, file: !352, line: 1199, baseType: !3101, size: 64, offset: 512)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3103)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !357, line: 430, size: 704, elements: !3104)
!3104 = !{!3105, !3111, !3112, !3116, !3117, !3118, !3133, !3156, !3160, !3161, !3184}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3103, file: !357, line: 431, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!13, !1108, !13, !13, !3109}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1732)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3103, file: !357, line: 432, baseType: !2957, size: 64, offset: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3103, file: !357, line: 433, baseType: !3113, size: 64, offset: 128)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!13, !1108, !7}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3103, file: !357, line: 434, baseType: !3113, size: 64, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3103, file: !357, line: 435, baseType: !2957, size: 64, offset: 256)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3103, file: !357, line: 436, baseType: !3119, size: 64, offset: 320)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!13, !1108, !13, !3122}
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !357, line: 417, size: 256, elements: !3124)
!3124 = !{!3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3123, file: !357, line: 418, baseType: !13, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3123, file: !357, line: 419, baseType: !7, size: 32, offset: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3123, file: !357, line: 420, baseType: !7, size: 32, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3123, file: !357, line: 422, baseType: !7, size: 32, offset: 96)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3123, file: !357, line: 423, baseType: !7, size: 32, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3123, file: !357, line: 424, baseType: !7, size: 32, offset: 160)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3123, file: !357, line: 425, baseType: !7, size: 32, offset: 192)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3123, file: !357, line: 426, baseType: !7, size: 32, offset: 224)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3103, file: !357, line: 437, baseType: !3134, size: 64, offset: 384)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!13, !1108, !3013, !3137}
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !357, line: 345, size: 960, elements: !3139)
!3139 = !{!3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3138, file: !357, line: 346, baseType: !13, size: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3138, file: !357, line: 347, baseType: !1029, size: 64, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3138, file: !357, line: 348, baseType: !1029, size: 64, offset: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3138, file: !357, line: 349, baseType: !1029, size: 64, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3138, file: !357, line: 350, baseType: !1029, size: 64, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3138, file: !357, line: 351, baseType: !1029, size: 64, offset: 320)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3138, file: !357, line: 352, baseType: !1029, size: 64, offset: 384)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3138, file: !357, line: 353, baseType: !511, size: 64, offset: 448)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3138, file: !357, line: 355, baseType: !511, size: 64, offset: 512)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3138, file: !357, line: 356, baseType: !13, size: 32, offset: 576)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3138, file: !357, line: 357, baseType: !13, size: 32, offset: 608)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3138, file: !357, line: 358, baseType: !1029, size: 64, offset: 640)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3138, file: !357, line: 359, baseType: !1029, size: 64, offset: 704)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3138, file: !357, line: 360, baseType: !1029, size: 64, offset: 768)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3138, file: !357, line: 361, baseType: !511, size: 64, offset: 832)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3138, file: !357, line: 362, baseType: !13, size: 32, offset: 896)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3103, file: !357, line: 438, baseType: !3157, size: 64, offset: 448)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!13, !1108, !3099, !3137}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3103, file: !357, line: 440, baseType: !3134, size: 64, offset: 512)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3103, file: !357, line: 441, baseType: !3162, size: 64, offset: 576)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!13, !1108, !3165}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !357, line: 411, size: 1408, elements: !3167)
!3167 = !{!3168, !3169}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3166, file: !357, line: 412, baseType: !7, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3166, file: !357, line: 413, baseType: !3170, size: 1344, offset: 64)
!3170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3171, size: 1344, elements: !1197)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !357, line: 397, size: 448, elements: !3172)
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3183}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3171, file: !357, line: 398, baseType: !7, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3171, file: !357, line: 399, baseType: !7, size: 32, offset: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3171, file: !357, line: 401, baseType: !7, size: 32, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3171, file: !357, line: 402, baseType: !7, size: 32, offset: 96)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3171, file: !357, line: 403, baseType: !7, size: 32, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3171, file: !357, line: 404, baseType: !7, size: 32, offset: 160)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3171, file: !357, line: 405, baseType: !7, size: 32, offset: 192)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3171, file: !357, line: 406, baseType: !1031, size: 64, offset: 256)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3171, file: !357, line: 407, baseType: !3182, size: 64, offset: 320)
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !234, line: 132, baseType: !1029)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3171, file: !357, line: 408, baseType: !3182, size: 64, offset: 384)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3103, file: !357, line: 442, baseType: !3113, size: 64, offset: 640)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1109, file: !352, line: 1200, baseType: !3186, size: 64, offset: 576)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3188)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !352, line: 54, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1109, file: !352, line: 1201, baseType: !248, size: 64, offset: 640)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1109, file: !352, line: 1202, baseType: !248, size: 64, offset: 704)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1109, file: !352, line: 1203, baseType: !248, size: 64, offset: 768)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1109, file: !352, line: 1204, baseType: !991, size: 64, offset: 832)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1109, file: !352, line: 1205, baseType: !1416, size: 320, offset: 896)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1109, file: !352, line: 1206, baseType: !13, size: 32, offset: 1216)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1109, file: !352, line: 1207, baseType: !258, size: 32, offset: 1248)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1109, file: !352, line: 1209, baseType: !230, size: 64, offset: 1280)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1109, file: !352, line: 1211, baseType: !3198, size: 64, offset: 1344)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3201)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !352, line: 1211, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1109, file: !352, line: 1223, baseType: !3203, size: 64, offset: 1408)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1008, line: 34, size: 64, elements: !3204)
!3204 = !{!3205}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3203, file: !1008, line: 35, baseType: !1011, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1109, file: !352, line: 1224, baseType: !306, size: 128, offset: 1472)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1109, file: !352, line: 1225, baseType: !3208, size: 64, offset: 1600)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !3210, line: 40, size: 7424, elements: !3211)
!3210 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!3211 = !{!3212, !3214, !3215, !3218, !3222, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3249, !3250}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !3209, file: !3210, line: 41, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !234, line: 131, baseType: !1029)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !3209, file: !3210, line: 42, baseType: !3213, size: 64, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !3209, file: !3210, line: 43, baseType: !3216, size: 64, offset: 128)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2313, line: 1453, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !3209, file: !3210, line: 44, baseType: !3219, size: 64, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3221, line: 74, flags: DIFlagFwdDecl)
!3221 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !3209, file: !3210, line: 45, baseType: !3223, size: 64, offset: 256)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !3210, line: 45, flags: DIFlagFwdDecl)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !3209, file: !3210, line: 46, baseType: !248, size: 64, offset: 320)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !3209, file: !3210, line: 47, baseType: !498, size: 8, offset: 384)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !3209, file: !3210, line: 48, baseType: !292, size: 8, offset: 392)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !3209, file: !3210, line: 49, baseType: !498, size: 8, offset: 400)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !3209, file: !3210, line: 50, baseType: !498, size: 8, offset: 408)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !3209, file: !3210, line: 51, baseType: !1113, size: 32, offset: 416)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !3209, file: !3210, line: 52, baseType: !258, size: 32, offset: 448)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !3209, file: !3210, line: 53, baseType: !268, size: 32, offset: 480)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !3209, file: !3210, line: 54, baseType: !956, size: 64, offset: 512)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !3209, file: !3210, line: 55, baseType: !230, size: 64, offset: 576)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !3209, file: !3210, line: 56, baseType: !230, size: 64, offset: 640)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !3209, file: !3210, line: 57, baseType: !3237, size: 64, offset: 704)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3239)
!3239 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !3210, line: 57, flags: DIFlagFwdDecl)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !3209, file: !3210, line: 58, baseType: !501, size: 256, offset: 768)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !3209, file: !3210, line: 60, baseType: !13, size: 32, offset: 1024)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !3209, file: !3210, line: 61, baseType: !13, size: 32, offset: 1056)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !3209, file: !3210, line: 62, baseType: !1162, size: 64, offset: 1088)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !3209, file: !3210, line: 65, baseType: !501, size: 256, offset: 1152)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !3209, file: !3210, line: 66, baseType: !1108, size: 64, offset: 1408)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !3209, file: !3210, line: 68, baseType: !3247, size: 64, offset: 1472)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !3210, line: 68, flags: DIFlagFwdDecl)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !3209, file: !3210, line: 72, baseType: !498, size: 8, offset: 1536)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !3209, file: !3210, line: 77, baseType: !3251, size: 5824, offset: 1600)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !369, line: 705, size: 5824, elements: !3252)
!3252 = !{!3253, !3254, !3256, !3259, !3260, !3313, !3383, !3384, !3385, !3386, !3387, !3394, !3558, !3571, !3581, !3585, !3587, !3588, !3589, !3593, !3600, !3601, !3604, !3607, !3611, !3614, !3615, !3616, !3617, !3618, !3619, !3649, !3650, !3651, !3654, !3657, !3666, !3667, !3668, !3669, !3670, !3671}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3251, file: !369, line: 706, baseType: !1156, size: 512)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3251, file: !369, line: 707, baseType: !3255, size: 64, offset: 512)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3251, file: !369, line: 709, baseType: !3257, size: 64, offset: 576)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !369, line: 37, flags: DIFlagFwdDecl)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3251, file: !369, line: 711, baseType: !226, size: 64, offset: 640)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3251, file: !369, line: 712, baseType: !3261, size: 64, offset: 704)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3263)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !369, line: 89, size: 384, elements: !3264)
!3264 = !{!3265, !3266, !3267, !3273, !3278, !3282}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3263, file: !369, line: 90, baseType: !226, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3263, file: !369, line: 91, baseType: !1242, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3263, file: !369, line: 92, baseType: !3268, size: 64, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!13, !3271, !1192}
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3251)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3263, file: !369, line: 93, baseType: !3274, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!1097, !3271, !3277, !1669, !1670}
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3263, file: !369, line: 95, baseType: !3279, size: 64, offset: 256)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{null, !3255}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3263, file: !369, line: 97, baseType: !3283, size: 64, offset: 320)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3285)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !381, line: 286, size: 1472, elements: !3286)
!3286 = !{!3287, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3285, file: !381, line: 287, baseType: !3288, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!13, !3255}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3285, file: !381, line: 288, baseType: !3279, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3285, file: !381, line: 289, baseType: !3288, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3285, file: !381, line: 290, baseType: !3288, size: 64, offset: 192)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3285, file: !381, line: 291, baseType: !3288, size: 64, offset: 256)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3285, file: !381, line: 292, baseType: !3288, size: 64, offset: 320)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3285, file: !381, line: 293, baseType: !3288, size: 64, offset: 384)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3285, file: !381, line: 294, baseType: !3288, size: 64, offset: 448)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3285, file: !381, line: 295, baseType: !3288, size: 64, offset: 512)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3285, file: !381, line: 296, baseType: !3288, size: 64, offset: 576)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3285, file: !381, line: 297, baseType: !3288, size: 64, offset: 640)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3285, file: !381, line: 298, baseType: !3288, size: 64, offset: 704)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3285, file: !381, line: 299, baseType: !3288, size: 64, offset: 768)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3285, file: !381, line: 300, baseType: !3288, size: 64, offset: 832)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3285, file: !381, line: 301, baseType: !3288, size: 64, offset: 896)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3285, file: !381, line: 302, baseType: !3288, size: 64, offset: 960)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3285, file: !381, line: 303, baseType: !3288, size: 64, offset: 1024)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3285, file: !381, line: 304, baseType: !3288, size: 64, offset: 1088)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3285, file: !381, line: 305, baseType: !3288, size: 64, offset: 1152)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3285, file: !381, line: 306, baseType: !3288, size: 64, offset: 1216)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3285, file: !381, line: 307, baseType: !3288, size: 64, offset: 1280)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3285, file: !381, line: 308, baseType: !3288, size: 64, offset: 1344)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3285, file: !381, line: 309, baseType: !3288, size: 64, offset: 1408)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3251, file: !369, line: 714, baseType: !3314, size: 64, offset: 768)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3316)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3317, line: 80, size: 1344, elements: !3318)
!3317 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3382}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3316, file: !3317, line: 81, baseType: !226, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3316, file: !3317, line: 82, baseType: !226, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3316, file: !3317, line: 83, baseType: !1242, size: 64, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3316, file: !3317, line: 84, baseType: !1242, size: 64, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3316, file: !3317, line: 85, baseType: !1242, size: 64, offset: 256)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3316, file: !3317, line: 87, baseType: !3325, size: 64, offset: 320)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DISubroutineType(types: !3327)
!3327 = !{!13, !3255, !3328}
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !363, line: 96, size: 1152, elements: !3330)
!3330 = !{!3331, !3332, !3333, !3334, !3335, !3336, !3337, !3341, !3345, !3346, !3347, !3348, !3349, !3357, !3358, !3359, !3360, !3361, !3362}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3329, file: !363, line: 97, baseType: !226, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3329, file: !363, line: 98, baseType: !3314, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3329, file: !363, line: 100, baseType: !1143, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3329, file: !363, line: 101, baseType: !226, size: 64, offset: 192)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3329, file: !363, line: 103, baseType: !498, size: 8, offset: 256)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3329, file: !363, line: 104, baseType: !362, size: 32, offset: 288)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3329, file: !363, line: 106, baseType: !3338, size: 64, offset: 320)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3340)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !363, line: 106, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3329, file: !363, line: 107, baseType: !3342, size: 64, offset: 384)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3344)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !363, line: 107, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3329, file: !363, line: 109, baseType: !3288, size: 64, offset: 448)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3329, file: !363, line: 110, baseType: !3279, size: 64, offset: 512)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3329, file: !363, line: 111, baseType: !3288, size: 64, offset: 576)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3329, file: !363, line: 112, baseType: !3279, size: 64, offset: 640)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3329, file: !363, line: 113, baseType: !3350, size: 64, offset: 704)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!13, !3255, !3353}
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !381, line: 60, baseType: !3354)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !381, line: 58, size: 32, elements: !3355)
!3355 = !{!3356}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3354, file: !381, line: 59, baseType: !13, size: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3329, file: !363, line: 114, baseType: !3288, size: 64, offset: 768)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3329, file: !363, line: 115, baseType: !1242, size: 64, offset: 832)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3329, file: !363, line: 116, baseType: !1242, size: 64, offset: 896)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3329, file: !363, line: 118, baseType: !3283, size: 64, offset: 960)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3329, file: !363, line: 119, baseType: !3279, size: 64, offset: 1024)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3329, file: !363, line: 121, baseType: !3363, size: 64, offset: 1088)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !363, line: 121, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3316, file: !3317, line: 88, baseType: !3268, size: 64, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3316, file: !3317, line: 89, baseType: !3288, size: 64, offset: 448)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3316, file: !3317, line: 90, baseType: !3279, size: 64, offset: 512)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3316, file: !3317, line: 91, baseType: !3279, size: 64, offset: 576)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3316, file: !3317, line: 92, baseType: !3279, size: 64, offset: 640)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3316, file: !3317, line: 94, baseType: !3288, size: 64, offset: 704)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3316, file: !3317, line: 95, baseType: !3288, size: 64, offset: 768)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3316, file: !3317, line: 97, baseType: !3350, size: 64, offset: 832)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3316, file: !3317, line: 98, baseType: !3288, size: 64, offset: 896)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3316, file: !3317, line: 100, baseType: !3288, size: 64, offset: 960)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3316, file: !3317, line: 102, baseType: !3288, size: 64, offset: 1024)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3316, file: !3317, line: 103, baseType: !3279, size: 64, offset: 1088)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3316, file: !3317, line: 105, baseType: !3283, size: 64, offset: 1152)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3316, file: !3317, line: 107, baseType: !3379, size: 64, offset: 1216)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3381)
!3381 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3317, line: 107, flags: DIFlagFwdDecl)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3316, file: !3317, line: 109, baseType: !498, size: 8, offset: 1280)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3251, file: !369, line: 715, baseType: !3328, size: 64, offset: 832)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3251, file: !369, line: 717, baseType: !230, size: 64, offset: 896)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3251, file: !369, line: 719, baseType: !230, size: 64, offset: 960)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3251, file: !369, line: 721, baseType: !501, size: 256, offset: 1024)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3251, file: !369, line: 725, baseType: !3388, size: 448, offset: 1280)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !369, line: 517, size: 448, elements: !3389)
!3389 = !{!3390, !3391, !3392, !3393}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3388, file: !369, line: 518, baseType: !306, size: 128)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3388, file: !369, line: 519, baseType: !306, size: 128, offset: 128)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3388, file: !369, line: 520, baseType: !306, size: 128, offset: 256)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3388, file: !369, line: 521, baseType: !368, size: 32, offset: 384)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3251, file: !369, line: 726, baseType: !3395, size: 2496, offset: 1728)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !381, line: 663, size: 2496, elements: !3396)
!3396 = !{!3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3441, !3442, !3443, !3444, !3445, !3446, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3551, !3555}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3395, file: !381, line: 664, baseType: !3353, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3395, file: !381, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3395, file: !381, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3395, file: !381, line: 667, baseType: !498, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3395, file: !381, line: 668, baseType: !498, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3395, file: !381, line: 669, baseType: !498, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3395, file: !381, line: 670, baseType: !498, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3395, file: !381, line: 671, baseType: !498, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3395, file: !381, line: 672, baseType: !498, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3395, file: !381, line: 673, baseType: !498, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3395, file: !381, line: 674, baseType: !498, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3395, file: !381, line: 675, baseType: !1025, size: 32, offset: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3395, file: !381, line: 676, baseType: !268, size: 32, offset: 96)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3395, file: !381, line: 678, baseType: !306, size: 128, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3395, file: !381, line: 679, baseType: !1644, size: 256, offset: 256)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3395, file: !381, line: 680, baseType: !3413, size: 64, offset: 512)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3415, line: 43, size: 1536, elements: !3416)
!3415 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3416 = !{!3417, !3418, !3419, !3420, !3421, !3424, !3425, !3426, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3414, file: !3415, line: 44, baseType: !226, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3414, file: !3415, line: 45, baseType: !13, size: 32, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3414, file: !3415, line: 46, baseType: !306, size: 128, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3414, file: !3415, line: 47, baseType: !268, size: 32, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3414, file: !3415, line: 48, baseType: !3422, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !381, line: 629, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3414, file: !3415, line: 49, baseType: !2793, size: 320, offset: 384)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3414, file: !3415, line: 50, baseType: !248, size: 64, offset: 704)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3414, file: !3415, line: 51, baseType: !3427, size: 64, offset: 768)
!3427 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !3428, line: 29, baseType: !511)
!3428 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3414, file: !3415, line: 52, baseType: !3427, size: 64, offset: 832)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3414, file: !3415, line: 53, baseType: !3427, size: 64, offset: 896)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3414, file: !3415, line: 54, baseType: !3427, size: 64, offset: 960)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3414, file: !3415, line: 55, baseType: !3427, size: 64, offset: 1024)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3414, file: !3415, line: 56, baseType: !248, size: 64, offset: 1088)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3414, file: !3415, line: 57, baseType: !248, size: 64, offset: 1152)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3414, file: !3415, line: 58, baseType: !248, size: 64, offset: 1216)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3414, file: !3415, line: 59, baseType: !248, size: 64, offset: 1280)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3414, file: !3415, line: 60, baseType: !248, size: 64, offset: 1344)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3414, file: !3415, line: 61, baseType: !3255, size: 64, offset: 1408)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3414, file: !3415, line: 62, baseType: !498, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3414, file: !3415, line: 63, baseType: !498, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3395, file: !381, line: 681, baseType: !498, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3395, file: !381, line: 682, baseType: !498, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3395, file: !381, line: 683, baseType: !498, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3395, file: !381, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3395, file: !381, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3395, file: !381, line: 690, baseType: !3447, size: 512, offset: 640)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !376, line: 118, size: 512, elements: !3448)
!3448 = !{!3449, !3455, !3456, !3461, !3513, !3514, !3515, !3516}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3447, file: !376, line: 119, baseType: !3450, size: 256)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !3451, line: 9, size: 256, elements: !3452)
!3451 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!3452 = !{!3453, !3454}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3450, file: !3451, line: 10, baseType: !1408, size: 192, align: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3450, file: !3451, line: 11, baseType: !3427, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !3447, file: !376, line: 120, baseType: !3427, size: 64, offset: 256)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3447, file: !376, line: 121, baseType: !3457, size: 64, offset: 320)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DISubroutineType(types: !3459)
!3459 = !{!375, !3460}
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3447, file: !376, line: 122, baseType: !3462, size: 64, offset: 384)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !376, line: 159, size: 512, align: 512, elements: !3464)
!3464 = !{!3465, !3490, !3491, !3494, !3499, !3500, !3508, !3512}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !3463, file: !376, line: 160, baseType: !3466, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !376, line: 215, size: 4608, align: 512, elements: !3468)
!3468 = !{!3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3467, file: !376, line: 216, baseType: !514, size: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3467, file: !376, line: 217, baseType: !7, size: 32, offset: 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !3467, file: !376, line: 218, baseType: !7, size: 32, offset: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !3467, file: !376, line: 219, baseType: !7, size: 32, offset: 96)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !3467, file: !376, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !3467, file: !376, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !3467, file: !376, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !3467, file: !376, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3467, file: !376, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3467, file: !376, line: 226, baseType: !7, size: 32, offset: 160)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !3467, file: !376, line: 227, baseType: !235, size: 16, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !3467, file: !376, line: 228, baseType: !235, size: 16, offset: 208)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !3467, file: !376, line: 229, baseType: !7, size: 32, offset: 224)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !3467, file: !376, line: 235, baseType: !3427, size: 64, offset: 256)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !3467, file: !376, line: 236, baseType: !3460, size: 64, offset: 320)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !3467, file: !376, line: 237, baseType: !3427, size: 64, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !3467, file: !376, line: 238, baseType: !3460, size: 64, offset: 448)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !3467, file: !376, line: 239, baseType: !3487, size: 4096, align: 512, offset: 512)
!3487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3463, size: 4096, align: 512, elements: !3488)
!3488 = !{!3489}
!3489 = !DISubrange(count: 8)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3463, file: !376, line: 161, baseType: !7, size: 32, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3463, file: !376, line: 162, baseType: !3492, size: 32, offset: 96)
!3492 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !234, line: 32, baseType: !3493)
!3493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !246, line: 96, baseType: !13)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3463, file: !376, line: 163, baseType: !3495, size: 32, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !998, line: 274, baseType: !3496)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !998, line: 274, size: 32, elements: !3497)
!3497 = !{!3498}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3496, file: !998, line: 274, baseType: !1002, size: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !3463, file: !376, line: 164, baseType: !3460, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3463, file: !376, line: 165, baseType: !3501, size: 128, offset: 256)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !3451, line: 14, size: 128, elements: !3502)
!3502 = !{!3503}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3501, file: !3451, line: 15, baseType: !3504, size: 128)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1409, line: 26, size: 128, elements: !3505)
!3505 = !{!3506, !3507}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3504, file: !1409, line: 27, baseType: !1686, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !3504, file: !1409, line: 28, baseType: !1413, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !3463, file: !376, line: 166, baseType: !3509, size: 64, offset: 384)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!3427}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3463, file: !376, line: 167, baseType: !3427, size: 64, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3447, file: !376, line: 123, baseType: !292, size: 8, offset: 448)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !3447, file: !376, line: 124, baseType: !292, size: 8, offset: 456)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !3447, file: !376, line: 125, baseType: !292, size: 8, offset: 464)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !3447, file: !376, line: 126, baseType: !292, size: 8, offset: 472)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3395, file: !381, line: 691, baseType: !1029, size: 64, offset: 1152)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3395, file: !381, line: 692, baseType: !1605, size: 256, offset: 1216)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3395, file: !381, line: 693, baseType: !263, size: 192, offset: 1472)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3395, file: !381, line: 694, baseType: !3422, size: 64, offset: 1664)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3395, file: !381, line: 695, baseType: !258, size: 32, offset: 1728)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3395, file: !381, line: 696, baseType: !258, size: 32, offset: 1760)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3395, file: !381, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3395, file: !381, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3395, file: !381, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3395, file: !381, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3395, file: !381, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3395, file: !381, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3395, file: !381, line: 703, baseType: !498, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3395, file: !381, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3395, file: !381, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3395, file: !381, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3395, file: !381, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3395, file: !381, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3395, file: !381, line: 709, baseType: !7, size: 32, offset: 1824)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3395, file: !381, line: 710, baseType: !380, size: 32, offset: 1856)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3395, file: !381, line: 711, baseType: !388, size: 32, offset: 1888)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3395, file: !381, line: 712, baseType: !388, size: 32, offset: 1920)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3395, file: !381, line: 713, baseType: !13, size: 32, offset: 1952)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3395, file: !381, line: 714, baseType: !13, size: 32, offset: 1984)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3395, file: !381, line: 715, baseType: !1029, size: 64, offset: 2048)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3395, file: !381, line: 716, baseType: !1029, size: 64, offset: 2112)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3395, file: !381, line: 717, baseType: !1029, size: 64, offset: 2176)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3395, file: !381, line: 718, baseType: !1029, size: 64, offset: 2240)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3395, file: !381, line: 720, baseType: !3546, size: 64, offset: 2304)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !381, line: 632, size: 64, elements: !3548)
!3548 = !{!3549, !3550}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3547, file: !381, line: 633, baseType: !268, size: 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3547, file: !381, line: 634, baseType: !7, size: 32, offset: 32)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3395, file: !381, line: 721, baseType: !3552, size: 64, offset: 2368)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{null, !3255, !1401}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3395, file: !381, line: 722, baseType: !3556, size: 64, offset: 2432)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !381, line: 722, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3251, file: !369, line: 727, baseType: !3559, size: 64, offset: 4224)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !381, line: 742, size: 1792, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3568, !3569, !3570}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3560, file: !381, line: 743, baseType: !3285, size: 1472)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3560, file: !381, line: 744, baseType: !3288, size: 64, offset: 1472)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3560, file: !381, line: 745, baseType: !3565, size: 64, offset: 1536)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !3255, !498}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3560, file: !381, line: 746, baseType: !3288, size: 64, offset: 1600)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3560, file: !381, line: 747, baseType: !3279, size: 64, offset: 1664)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3560, file: !381, line: 748, baseType: !3279, size: 64, offset: 1728)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3251, file: !369, line: 736, baseType: !3572, size: 128, offset: 4288)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !369, line: 529, size: 128, elements: !3573)
!3573 = !{!3574, !3578}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3572, file: !369, line: 531, baseType: !3575, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3577, line: 13, flags: DIFlagFwdDecl)
!3577 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3572, file: !369, line: 532, baseType: !3579, size: 64, offset: 64)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !369, line: 49, flags: DIFlagFwdDecl)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3251, file: !369, line: 738, baseType: !3582, size: 64, offset: 4416)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3584)
!3584 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !369, line: 738, flags: DIFlagFwdDecl)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3251, file: !369, line: 740, baseType: !3586, size: 64, offset: 4480)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3251, file: !369, line: 741, baseType: !1029, size: 64, offset: 4544)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3251, file: !369, line: 746, baseType: !1029, size: 64, offset: 4608)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3251, file: !369, line: 747, baseType: !3590, size: 64, offset: 4672)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3592)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !369, line: 747, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3251, file: !369, line: 749, baseType: !3594, size: 64, offset: 4736)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !369, line: 428, size: 128, elements: !3596)
!3596 = !{!3597, !3598, !3599}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3595, file: !369, line: 433, baseType: !7, size: 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3595, file: !369, line: 434, baseType: !7, size: 32, offset: 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3595, file: !369, line: 435, baseType: !248, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3251, file: !369, line: 751, baseType: !306, size: 128, offset: 4800)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3251, file: !369, line: 762, baseType: !3602, size: 64, offset: 4928)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !369, line: 762, flags: DIFlagFwdDecl)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3251, file: !369, line: 770, baseType: !3605, offset: 4992)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3606, line: 5, elements: !620)
!3606 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3251, file: !369, line: 772, baseType: !3608, size: 64, offset: 4992)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3610, line: 18, flags: DIFlagFwdDecl)
!3610 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3251, file: !369, line: 773, baseType: !3612, size: 64, offset: 5056)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3317, line: 22, flags: DIFlagFwdDecl)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3251, file: !369, line: 776, baseType: !13, size: 32, offset: 5120)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3251, file: !369, line: 778, baseType: !1113, size: 32, offset: 5152)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3251, file: !369, line: 779, baseType: !1025, size: 32, offset: 5184)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3251, file: !369, line: 781, baseType: !268, size: 32, offset: 5216)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3251, file: !369, line: 782, baseType: !306, size: 128, offset: 5248)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3251, file: !369, line: 784, baseType: !3620, size: 64, offset: 5376)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3622)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3623, line: 52, size: 768, elements: !3624)
!3623 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3633, !3637, !3638, !3639, !3640, !3644, !3648}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3622, file: !3623, line: 53, baseType: !226, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3622, file: !3623, line: 55, baseType: !1242, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3622, file: !3623, line: 56, baseType: !1242, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3622, file: !3623, line: 58, baseType: !3268, size: 64, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3622, file: !3623, line: 59, baseType: !3630, size: 64, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!1097, !3271, !3277}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3622, file: !3623, line: 61, baseType: !3634, size: 64, offset: 320)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{null, !3620}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3622, file: !3623, line: 62, baseType: !3279, size: 64, offset: 384)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3622, file: !3623, line: 64, baseType: !3288, size: 64, offset: 448)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3622, file: !3623, line: 66, baseType: !2416, size: 64, offset: 512)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3622, file: !3623, line: 67, baseType: !3641, size: 64, offset: 576)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!614, !3271}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3622, file: !3623, line: 69, baseType: !3645, size: 64, offset: 640)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{null, !3271, !1669, !1670}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3622, file: !3623, line: 71, baseType: !3283, size: 64, offset: 704)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3251, file: !369, line: 785, baseType: !1242, size: 64, offset: 5440)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3251, file: !369, line: 787, baseType: !3279, size: 64, offset: 5504)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3251, file: !369, line: 788, baseType: !3652, size: 64, offset: 5568)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !369, line: 46, flags: DIFlagFwdDecl)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3251, file: !369, line: 789, baseType: !3655, size: 64, offset: 5632)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !369, line: 48, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3251, file: !369, line: 791, baseType: !3658, size: 64, offset: 5696)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !369, line: 597, size: 128, elements: !3660)
!3660 = !{!3661, !3662, !3663, !3664, !3665}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3659, file: !369, line: 598, baseType: !395, size: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3659, file: !369, line: 599, baseType: !404, size: 32, offset: 32)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3659, file: !369, line: 600, baseType: !409, size: 32, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3659, file: !369, line: 601, baseType: !498, size: 8, offset: 96)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3659, file: !369, line: 602, baseType: !498, size: 8, offset: 104)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3251, file: !369, line: 793, baseType: !414, size: 32, offset: 5760)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3251, file: !369, line: 795, baseType: !498, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3251, file: !369, line: 796, baseType: !498, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3251, file: !369, line: 797, baseType: !498, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3251, file: !369, line: 798, baseType: !498, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3251, file: !369, line: 799, baseType: !498, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1109, file: !352, line: 1226, baseType: !3673, size: 64, offset: 1664)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !352, line: 1226, flags: DIFlagFwdDecl)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1109, file: !352, line: 1227, baseType: !3676, size: 64, offset: 1728)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !421, line: 163, size: 6848, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3725, !3726, !3727, !3728, !3730, !3731, !3732}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3677, file: !421, line: 164, baseType: !1029, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3677, file: !421, line: 165, baseType: !1408, size: 192, align: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3677, file: !421, line: 166, baseType: !306, size: 128, offset: 256)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3677, file: !421, line: 167, baseType: !248, size: 64, offset: 384)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3677, file: !421, line: 168, baseType: !248, size: 64, offset: 448)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3677, file: !421, line: 170, baseType: !2544, size: 32, offset: 512)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3677, file: !421, line: 171, baseType: !7, size: 32, offset: 544)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3677, file: !421, line: 172, baseType: !7, size: 32, offset: 576)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3677, file: !421, line: 173, baseType: !7, size: 32, offset: 608)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3677, file: !421, line: 173, baseType: !7, size: 32, offset: 640)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3677, file: !421, line: 179, baseType: !505, size: 64, offset: 704)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3677, file: !421, line: 184, baseType: !248, size: 64, offset: 768)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3677, file: !421, line: 186, baseType: !3692, size: 4672, offset: 832)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !421, line: 105, size: 4672, elements: !3693)
!3693 = !{!3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3718, !3719, !3720, !3721, !3722, !3723, !3724}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3692, file: !421, line: 106, baseType: !3676, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3692, file: !421, line: 108, baseType: !248, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3692, file: !421, line: 109, baseType: !248, size: 64, offset: 128)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3692, file: !421, line: 111, baseType: !306, size: 128, offset: 192)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3692, file: !421, line: 112, baseType: !306, size: 128, offset: 320)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3692, file: !421, line: 113, baseType: !306, size: 128, offset: 448)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3692, file: !421, line: 114, baseType: !306, size: 128, offset: 576)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3692, file: !421, line: 115, baseType: !268, size: 32, offset: 704)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3692, file: !421, line: 117, baseType: !258, size: 32, offset: 736)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3692, file: !421, line: 118, baseType: !1934, size: 1280, offset: 768)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3692, file: !421, line: 120, baseType: !248, size: 64, offset: 2048)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3692, file: !421, line: 121, baseType: !248, size: 64, offset: 2112)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3692, file: !421, line: 122, baseType: !248, size: 64, offset: 2176)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3692, file: !421, line: 123, baseType: !248, size: 64, offset: 2240)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3692, file: !421, line: 124, baseType: !248, size: 64, offset: 2304)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3692, file: !421, line: 132, baseType: !248, size: 64, offset: 2368)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3692, file: !421, line: 133, baseType: !248, size: 64, offset: 2432)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3692, file: !421, line: 135, baseType: !3712, size: 384, offset: 2496)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3713, line: 76, size: 384, elements: !3714)
!3713 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3714 = !{!3715, !3716, !3717}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3712, file: !3713, line: 78, baseType: !1531, size: 320)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3712, file: !3713, line: 80, baseType: !7, size: 32, offset: 320)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3712, file: !3713, line: 81, baseType: !514, size: 32, offset: 352)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3692, file: !421, line: 136, baseType: !13, size: 32, offset: 2880)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3692, file: !421, line: 137, baseType: !420, size: 32, offset: 2912)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3692, file: !421, line: 139, baseType: !268, size: 32, offset: 2944)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3692, file: !421, line: 140, baseType: !306, size: 128, offset: 3008)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3692, file: !421, line: 141, baseType: !2849, size: 704, offset: 3136)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3692, file: !421, line: 142, baseType: !2849, size: 704, offset: 3840)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3692, file: !421, line: 144, baseType: !306, size: 128, offset: 4544)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3677, file: !421, line: 187, baseType: !306, size: 128, offset: 5504)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3677, file: !421, line: 193, baseType: !263, size: 192, offset: 5632)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3677, file: !421, line: 195, baseType: !3255, size: 64, offset: 5824)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3677, file: !421, line: 196, baseType: !3729, size: 512, offset: 5888)
!3729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 512, elements: !1201)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3677, file: !421, line: 197, baseType: !3255, size: 64, offset: 6400)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3677, file: !421, line: 199, baseType: !2793, size: 320, offset: 6464)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3677, file: !421, line: 202, baseType: !991, size: 64, offset: 6784)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1109, file: !352, line: 1228, baseType: !3734, size: 64, offset: 1792)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !352, line: 1228, flags: DIFlagFwdDecl)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1109, file: !352, line: 1229, baseType: !1341, size: 128, offset: 1856)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1109, file: !352, line: 1230, baseType: !7, size: 32, offset: 1984)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1109, file: !352, line: 1231, baseType: !3739, size: 2496, offset: 2048)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !357, line: 521, size: 2496, elements: !3740)
!3740 = !{!3741, !3742, !3743, !3745, !3777}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3739, file: !357, line: 522, baseType: !7, size: 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3739, file: !357, line: 523, baseType: !1416, size: 320, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3739, file: !357, line: 524, baseType: !3744, size: 192, offset: 384)
!3744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !956, size: 192, elements: !1197)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3739, file: !357, line: 525, baseType: !3746, size: 1728, offset: 576)
!3746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3747, size: 1728, elements: !1197)
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !357, line: 222, size: 576, elements: !3748)
!3748 = !{!3749, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3747, file: !357, line: 223, baseType: !3750, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !357, line: 445, size: 256, elements: !3752)
!3752 = !{!3753, !3754, !3767, !3768}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3751, file: !357, line: 446, baseType: !13, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3751, file: !357, line: 447, baseType: !3755, size: 64, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3757)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !357, line: 312, size: 512, elements: !3758)
!3758 = !{!3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3757, file: !357, line: 313, baseType: !2957, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3757, file: !357, line: 314, baseType: !2957, size: 64, offset: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3757, file: !357, line: 315, baseType: !2957, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3757, file: !357, line: 316, baseType: !2957, size: 64, offset: 192)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3757, file: !357, line: 317, baseType: !3066, size: 64, offset: 256)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3757, file: !357, line: 318, baseType: !3066, size: 64, offset: 320)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3757, file: !357, line: 319, baseType: !3066, size: 64, offset: 384)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3757, file: !357, line: 320, baseType: !3096, size: 64, offset: 448)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3751, file: !357, line: 448, baseType: !1143, size: 64, offset: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3751, file: !357, line: 449, baseType: !3750, size: 64, offset: 192)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3747, file: !357, line: 224, baseType: !13, size: 32, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3747, file: !357, line: 226, baseType: !306, size: 128, offset: 128)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3747, file: !357, line: 227, baseType: !248, size: 64, offset: 256)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3747, file: !357, line: 228, baseType: !7, size: 32, offset: 320)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3747, file: !357, line: 229, baseType: !7, size: 32, offset: 352)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3747, file: !357, line: 230, baseType: !3034, size: 64, offset: 384)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3747, file: !357, line: 231, baseType: !3034, size: 64, offset: 448)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3747, file: !357, line: 232, baseType: !230, size: 64, offset: 512)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3739, file: !357, line: 526, baseType: !3778, size: 192, offset: 2304)
!3778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3755, size: 192, elements: !1197)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1109, file: !352, line: 1233, baseType: !3780, size: 2368, offset: 4544)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !352, line: 1184, size: 2368, elements: !3781)
!3781 = !{!3782, !3783, !3784}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3780, file: !352, line: 1185, baseType: !235, size: 16)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3780, file: !352, line: 1186, baseType: !235, size: 16, offset: 16)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3780, file: !352, line: 1187, baseType: !3785, size: 2304, offset: 64)
!3785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3786, size: 2304, elements: !1197)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3787, line: 12, size: 768, elements: !3788)
!3787 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3788 = !{!3789, !3797, !3798, !5261, !5262}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3786, file: !3787, line: 13, baseType: !3790, size: 384)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3791, line: 17, size: 384, elements: !3792)
!3791 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3792 = !{!3793, !3794, !3795, !3796}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3790, file: !3791, line: 18, baseType: !13, size: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3790, file: !3791, line: 19, baseType: !13, size: 32, offset: 32)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3790, file: !3791, line: 20, baseType: !263, size: 192, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3790, file: !3791, line: 22, baseType: !1283, size: 128, align: 64, offset: 256)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3786, file: !3787, line: 14, baseType: !2647, size: 64, offset: 384)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3786, file: !3787, line: 15, baseType: !3799, size: 64, offset: 448)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3800, line: 16, size: 64, elements: !3801)
!3800 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3801 = !{!3802}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3799, file: !3800, line: 17, baseType: !3803, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2313, line: 746, size: 58368, elements: !3805)
!3805 = !{!3806, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3886, !3897, !3917, !3921, !3924, !3955, !3956, !3957, !3958, !3962, !3964, !3965, !3966, !3967, !3968, !3969, !3980, !3981, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3998, !3999, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4087, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4135, !4141, !4142, !4143, !4144, !4145, !4146, !4149, !4156, !4161, !4164, !4167, !4170, !4468, !4667, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4705, !4706, !4707, !4716, !4724, !4725, !4726, !4727, !4728, !4733, !4734, !4735, !4738, !4739, !4742, !4745, !4750, !4757, !4760, !4761, !4847, !4848, !4849, !4850, !4851, !4857, !4858, !4859, !4860, !4861, !4862, !4865, !4868, !4869, !4872, !4873, !4874, !4877, !4878, !4879, !4880, !4881, !4882, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4914, !4915, !4921, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !5003, !5005, !5006, !5007, !5008, !5009, !5010, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5040, !5041, !5042}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3804, file: !2313, line: 752, baseType: !3807, size: 192)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3808, line: 56, size: 192, elements: !3809)
!3808 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3809 = !{!3810, !3811, !3812, !3813}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3807, file: !3808, line: 57, baseType: !248, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3807, file: !3808, line: 58, baseType: !248, size: 64, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3807, file: !3808, line: 59, baseType: !1025, size: 32, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3807, file: !3808, line: 61, baseType: !1025, size: 32, offset: 160)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3804, file: !2313, line: 754, baseType: !7, size: 32, offset: 192)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3804, file: !2313, line: 767, baseType: !230, size: 64, offset: 256)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3804, file: !2313, line: 768, baseType: !1328, size: 32, offset: 320)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3804, file: !2313, line: 770, baseType: !7, size: 32, offset: 352)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3804, file: !2313, line: 771, baseType: !7, size: 32, offset: 384)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3804, file: !2313, line: 774, baseType: !13, size: 32, offset: 416)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3804, file: !2313, line: 775, baseType: !3821, size: 128, offset: 448)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3822, line: 58, size: 128, elements: !3823)
!3822 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3823 = !{!3824, !3825, !3830, !3831}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3821, file: !3822, line: 59, baseType: !1277, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, scope: !3821, file: !3822, line: 60, baseType: !3826, size: 32, offset: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3821, file: !3822, line: 60, size: 32, elements: !3827)
!3827 = !{!3828, !3829}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3826, file: !3822, line: 61, baseType: !7, size: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3826, file: !3822, line: 62, baseType: !258, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3821, file: !3822, line: 65, baseType: !302, size: 16, offset: 96)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3821, file: !3822, line: 65, baseType: !302, size: 16, offset: 112)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3804, file: !2313, line: 776, baseType: !7, size: 32, offset: 576)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3804, file: !2313, line: 777, baseType: !248, size: 64, offset: 640)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3804, file: !2313, line: 778, baseType: !3803, size: 64, offset: 704)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3804, file: !2313, line: 787, baseType: !13, size: 32, offset: 768)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3804, file: !2313, line: 788, baseType: !13, size: 32, offset: 800)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3804, file: !2313, line: 790, baseType: !13, size: 32, offset: 832)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3804, file: !2313, line: 792, baseType: !13, size: 32, offset: 864)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3804, file: !2313, line: 793, baseType: !13, size: 32, offset: 896)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3804, file: !2313, line: 794, baseType: !13, size: 32, offset: 928)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3804, file: !2313, line: 795, baseType: !7, size: 32, offset: 960)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3804, file: !2313, line: 797, baseType: !3843, size: 2048, offset: 1024)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2313, line: 551, size: 2048, elements: !3844)
!3844 = !{!3845, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3865, !3868, !3869, !3870}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3843, file: !2313, line: 553, baseType: !3846, size: 128)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2313, line: 411, size: 128, elements: !3847)
!3847 = !{!3848, !3849}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3846, file: !2313, line: 412, baseType: !248, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3846, file: !2313, line: 413, baseType: !1025, size: 32, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3843, file: !2313, line: 554, baseType: !1408, size: 192, align: 64, offset: 128)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3843, file: !2313, line: 555, baseType: !1029, size: 64, offset: 320)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3843, file: !2313, line: 556, baseType: !1029, size: 64, offset: 384)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3843, file: !2313, line: 558, baseType: !306, size: 128, offset: 448)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3843, file: !2313, line: 559, baseType: !7, size: 32, offset: 576)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3843, file: !2313, line: 561, baseType: !1029, size: 64, offset: 640)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3843, file: !2313, line: 562, baseType: !1029, size: 64, offset: 704)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3843, file: !2313, line: 563, baseType: !1029, size: 64, offset: 768)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3843, file: !2313, line: 564, baseType: !1029, size: 64, offset: 832)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3843, file: !2313, line: 565, baseType: !511, size: 64, offset: 896)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3843, file: !2313, line: 566, baseType: !1029, size: 64, offset: 960)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3843, file: !2313, line: 568, baseType: !1029, size: 64, offset: 1024)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3843, file: !2313, line: 571, baseType: !13, size: 32, offset: 1088)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3843, file: !2313, line: 572, baseType: !3864, size: 64, offset: 1152)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3843, file: !2313, line: 574, baseType: !3866, size: 64, offset: 1216)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2313, line: 49, flags: DIFlagFwdDecl)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3843, file: !2313, line: 576, baseType: !3866, size: 64, offset: 1280)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3843, file: !2313, line: 578, baseType: !248, size: 64, offset: 1344)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3843, file: !2313, line: 588, baseType: !3871, size: 512, align: 512, offset: 1536)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2313, line: 497, size: 512, align: 512, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3871, file: !2313, line: 498, baseType: !1029, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3871, file: !2313, line: 499, baseType: !1029, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3871, file: !2313, line: 500, baseType: !1029, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3871, file: !2313, line: 501, baseType: !1025, size: 32, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3871, file: !2313, line: 502, baseType: !1025, size: 32, offset: 224)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3871, file: !2313, line: 503, baseType: !248, size: 64, offset: 256)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3871, file: !2313, line: 504, baseType: !248, size: 64, offset: 320)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3871, file: !2313, line: 505, baseType: !248, size: 64, offset: 384)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3871, file: !2313, line: 506, baseType: !3882, size: 64, align: 64, offset: 448)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2313, line: 445, size: 64, align: 64, elements: !3883)
!3883 = !{!3884, !3885}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3882, file: !2313, line: 446, baseType: !7, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3882, file: !2313, line: 447, baseType: !7, size: 32, offset: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3804, file: !2313, line: 798, baseType: !3887, size: 384, offset: 3072)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2313, line: 592, size: 384, elements: !3888)
!3888 = !{!3889, !3890, !3891, !3892, !3893, !3894, !3895}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3887, file: !2313, line: 593, baseType: !306, size: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3887, file: !2313, line: 594, baseType: !248, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3887, file: !2313, line: 595, baseType: !248, size: 64, offset: 192)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3887, file: !2313, line: 596, baseType: !7, size: 32, offset: 256)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3887, file: !2313, line: 597, baseType: !235, size: 16, offset: 288)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3887, file: !2313, line: 598, baseType: !235, size: 16, offset: 304)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3887, file: !2313, line: 600, baseType: !3896, size: 64, offset: 320)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3804, file: !2313, line: 799, baseType: !3898, size: 1792, offset: 3456)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2313, line: 610, size: 1792, elements: !3899)
!3899 = !{!3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3898, file: !2313, line: 611, baseType: !1408, size: 192, align: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3898, file: !2313, line: 618, baseType: !1029, size: 64, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3898, file: !2313, line: 619, baseType: !1029, size: 64, offset: 256)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3898, file: !2313, line: 620, baseType: !1029, size: 64, offset: 320)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3898, file: !2313, line: 621, baseType: !1029, size: 64, offset: 384)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3898, file: !2313, line: 622, baseType: !1029, size: 64, offset: 448)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3898, file: !2313, line: 629, baseType: !511, size: 64, offset: 512)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3898, file: !2313, line: 630, baseType: !1029, size: 64, offset: 576)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3898, file: !2313, line: 631, baseType: !7, size: 32, offset: 640)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3898, file: !2313, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3898, file: !2313, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3898, file: !2313, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3898, file: !2313, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3898, file: !2313, line: 662, baseType: !3447, size: 512, offset: 704)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3898, file: !2313, line: 671, baseType: !3447, size: 512, offset: 1216)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3898, file: !2313, line: 679, baseType: !3916, size: 64, offset: 1728)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3804, file: !2313, line: 800, baseType: !3918, size: 64, offset: 5248)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3920)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2313, line: 800, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3804, file: !2313, line: 809, baseType: !3922, size: 64, offset: 5312)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2313, line: 70, flags: DIFlagFwdDecl)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3804, file: !2313, line: 825, baseType: !3925, size: 2048, align: 512, offset: 5632)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2313, line: 509, size: 2048, align: 512, elements: !3926)
!3926 = !{!3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3925, file: !2313, line: 511, baseType: !1029, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3925, file: !2313, line: 512, baseType: !1029, size: 64, offset: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3925, file: !2313, line: 513, baseType: !1029, size: 64, offset: 128)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3925, file: !2313, line: 514, baseType: !1029, size: 64, offset: 192)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3925, file: !2313, line: 515, baseType: !1029, size: 64, offset: 256)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3925, file: !2313, line: 516, baseType: !1029, size: 64, offset: 320)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3925, file: !2313, line: 518, baseType: !1029, size: 64, offset: 384)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3925, file: !2313, line: 519, baseType: !1029, size: 64, offset: 448)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3925, file: !2313, line: 520, baseType: !511, size: 64, offset: 512)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3925, file: !2313, line: 522, baseType: !1029, size: 64, offset: 576)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3925, file: !2313, line: 523, baseType: !1029, size: 64, offset: 640)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3925, file: !2313, line: 524, baseType: !511, size: 64, offset: 704)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3925, file: !2313, line: 526, baseType: !511, size: 64, offset: 768)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3925, file: !2313, line: 527, baseType: !1029, size: 64, offset: 832)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3925, file: !2313, line: 529, baseType: !1029, size: 64, offset: 896)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3925, file: !2313, line: 530, baseType: !1029, size: 64, offset: 960)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3925, file: !2313, line: 531, baseType: !1029, size: 64, offset: 1024)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3925, file: !2313, line: 532, baseType: !1029, size: 64, offset: 1088)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3925, file: !2313, line: 533, baseType: !1029, size: 64, offset: 1152)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3925, file: !2313, line: 535, baseType: !1029, size: 64, offset: 1216)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3925, file: !2313, line: 536, baseType: !1029, size: 64, offset: 1280)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3925, file: !2313, line: 537, baseType: !1029, size: 64, offset: 1344)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3925, file: !2313, line: 538, baseType: !1029, size: 64, offset: 1408)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3925, file: !2313, line: 539, baseType: !1029, size: 64, offset: 1472)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3925, file: !2313, line: 540, baseType: !1029, size: 64, offset: 1536)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3925, file: !2313, line: 541, baseType: !1029, size: 64, offset: 1600)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3925, file: !2313, line: 542, baseType: !1029, size: 64, offset: 1664)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3925, file: !2313, line: 543, baseType: !1029, size: 64, offset: 1728)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3804, file: !2313, line: 833, baseType: !7, size: 32, offset: 7680)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3804, file: !2313, line: 836, baseType: !7, size: 32, offset: 7712)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3804, file: !2313, line: 837, baseType: !13, size: 32, offset: 7744)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3804, file: !2313, line: 838, baseType: !3959, size: 64, offset: 7808)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3961)
!3961 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !535, line: 19, baseType: !534)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3804, file: !2313, line: 839, baseType: !3963, size: 64, offset: 7872)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3804, file: !2313, line: 840, baseType: !3961, size: 64, offset: 7936)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3804, file: !2313, line: 841, baseType: !230, size: 64, offset: 8000)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3804, file: !2313, line: 843, baseType: !235, size: 16, offset: 8064)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3804, file: !2313, line: 845, baseType: !235, size: 16, offset: 8080)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3804, file: !2313, line: 848, baseType: !13, size: 32, offset: 8096)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3804, file: !2313, line: 849, baseType: !3970, size: 32, offset: 8128)
!3970 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2313, line: 718, size: 32, elements: !3971)
!3971 = !{!3972, !3979}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3970, file: !2313, line: 724, baseType: !3973, size: 32)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3970, file: !2313, line: 719, size: 32, elements: !3974)
!3974 = !{!3975, !3976, !3977, !3978}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3973, file: !2313, line: 720, baseType: !292, size: 8)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3973, file: !2313, line: 721, baseType: !292, size: 8, offset: 8)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3973, file: !2313, line: 722, baseType: !292, size: 8, offset: 16)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3973, file: !2313, line: 723, baseType: !292, size: 8, offset: 24)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3970, file: !2313, line: 725, baseType: !1025, size: 32)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3804, file: !2313, line: 850, baseType: !306, size: 128, offset: 8192)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3804, file: !2313, line: 851, baseType: !3982, size: 64, offset: 8320)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2313, line: 60, flags: DIFlagFwdDecl)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3804, file: !2313, line: 855, baseType: !248, size: 64, offset: 8384)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3804, file: !2313, line: 856, baseType: !292, size: 8, offset: 8448)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3804, file: !2313, line: 857, baseType: !292, size: 8, offset: 8456)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3804, file: !2313, line: 858, baseType: !13, size: 32, offset: 8480)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3804, file: !2313, line: 859, baseType: !306, size: 128, offset: 8512)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3804, file: !2313, line: 860, baseType: !13, size: 32, offset: 8640)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3804, file: !2313, line: 861, baseType: !306, size: 128, offset: 8704)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3804, file: !2313, line: 873, baseType: !3992, size: 256, offset: 8832)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2313, line: 376, size: 256, elements: !3993)
!3993 = !{!3994, !3995, !3996, !3997}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3992, file: !2313, line: 381, baseType: !248, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3992, file: !2313, line: 384, baseType: !1031, size: 64, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3992, file: !2313, line: 389, baseType: !1031, size: 64, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3992, file: !2313, line: 392, baseType: !1031, size: 64, offset: 192)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3804, file: !2313, line: 875, baseType: !306, size: 128, offset: 9088)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3804, file: !2313, line: 877, baseType: !4000, size: 320, offset: 9216)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !4001, line: 86, size: 320, elements: !4002)
!4001 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!4002 = !{!4003, !4004, !4005}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4000, file: !4001, line: 87, baseType: !13, size: 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !4000, file: !4001, line: 88, baseType: !306, size: 128, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !4000, file: !4001, line: 89, baseType: !306, size: 128, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3804, file: !2313, line: 878, baseType: !1408, size: 192, align: 64, offset: 9536)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3804, file: !2313, line: 881, baseType: !1851, size: 64, offset: 9728)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3804, file: !2313, line: 882, baseType: !1851, size: 64, offset: 9792)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3804, file: !2313, line: 884, baseType: !13, size: 32, offset: 9856)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3804, file: !2313, line: 885, baseType: !13, size: 32, offset: 9888)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3804, file: !2313, line: 886, baseType: !13, size: 32, offset: 9920)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3804, file: !2313, line: 888, baseType: !13, size: 32, offset: 9952)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3804, file: !2313, line: 890, baseType: !248, size: 64, offset: 9984)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3804, file: !2313, line: 893, baseType: !7, size: 32, offset: 10048)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3804, file: !2313, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3804, file: !2313, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3804, file: !2313, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3804, file: !2313, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3804, file: !2313, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3804, file: !2313, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3804, file: !2313, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3804, file: !2313, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3804, file: !2313, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3804, file: !2313, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3804, file: !2313, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3804, file: !2313, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3804, file: !2313, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3804, file: !2313, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3804, file: !2313, line: 969, baseType: !248, size: 64, offset: 10176)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3804, file: !2313, line: 971, baseType: !4031, size: 448, offset: 10240)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !433, line: 25, size: 448, elements: !4032)
!4032 = !{!4033, !4034, !4039}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !4031, file: !433, line: 26, baseType: !248, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4031, file: !433, line: 27, baseType: !4035, size: 64, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!1231, !4038}
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, scope: !4031, file: !433, line: 28, baseType: !4040, size: 320, offset: 128)
!4040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4031, file: !433, line: 28, size: 320, elements: !4041)
!4041 = !{!4042, !4052, !4077}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4040, file: !433, line: 37, baseType: !4043, size: 320)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4040, file: !433, line: 30, size: 320, elements: !4044)
!4044 = !{!4045, !4047, !4048, !4049, !4050, !4051}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4043, file: !433, line: 31, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4043, file: !433, line: 32, baseType: !1025, size: 32, offset: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4043, file: !433, line: 33, baseType: !1025, size: 32, offset: 96)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4043, file: !433, line: 34, baseType: !1025, size: 32, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4043, file: !433, line: 35, baseType: !1029, size: 64, offset: 192)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4043, file: !433, line: 36, baseType: !4046, size: 64, offset: 256)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4040, file: !433, line: 47, baseType: !4053, size: 192)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4040, file: !433, line: 39, size: 192, elements: !4054)
!4054 = !{!4055, !4056, !4057, !4076}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4053, file: !433, line: 40, baseType: !3492, size: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4053, file: !433, line: 41, baseType: !432, size: 32, offset: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, scope: !4053, file: !433, line: 42, baseType: !4058, size: 64, offset: 64)
!4058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4053, file: !433, line: 42, size: 64, elements: !4059)
!4059 = !{!4060, !4068}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4058, file: !433, line: 43, baseType: !4061, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4063, line: 7, size: 128, elements: !4064)
!4063 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4064 = !{!4065, !4067}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4062, file: !4063, line: 8, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !246, line: 93, baseType: !252)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4062, file: !4063, line: 9, baseType: !252, size: 64, offset: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4058, file: !433, line: 44, baseType: !4069, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4071, line: 7, size: 64, elements: !4072)
!4071 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4072 = !{!4073, !4075}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4070, file: !4071, line: 8, baseType: !4074, size: 32)
!4074 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4071, line: 5, baseType: !1401)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4070, file: !4071, line: 9, baseType: !1401, size: 32, offset: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4053, file: !433, line: 46, baseType: !1029, size: 64, offset: 128)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4040, file: !433, line: 55, baseType: !4078, size: 256)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4040, file: !433, line: 49, size: 256, elements: !4079)
!4079 = !{!4080, !4083, !4084, !4085, !4086}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4078, file: !433, line: 50, baseType: !4081, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !433, line: 14, flags: DIFlagFwdDecl)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4078, file: !433, line: 51, baseType: !13, size: 32, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4078, file: !433, line: 52, baseType: !13, size: 32, offset: 96)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4078, file: !433, line: 53, baseType: !248, size: 64, offset: 128)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4078, file: !433, line: 54, baseType: !248, size: 64, offset: 192)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3804, file: !2313, line: 973, baseType: !4088, size: 32, offset: 10688)
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !234, line: 27, baseType: !4089)
!4089 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !246, line: 28, baseType: !13)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3804, file: !2313, line: 974, baseType: !4088, size: 32, offset: 10720)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3804, file: !2313, line: 978, baseType: !248, size: 64, offset: 10752)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3804, file: !2313, line: 987, baseType: !3803, size: 64, offset: 10816)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3804, file: !2313, line: 990, baseType: !3803, size: 64, offset: 10880)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3804, file: !2313, line: 995, baseType: !306, size: 128, offset: 10944)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3804, file: !2313, line: 996, baseType: !306, size: 128, offset: 11072)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3804, file: !2313, line: 997, baseType: !3803, size: 64, offset: 11200)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3804, file: !2313, line: 1005, baseType: !306, size: 128, offset: 11264)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3804, file: !2313, line: 1006, baseType: !306, size: 128, offset: 11392)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3804, file: !2313, line: 1009, baseType: !1324, size: 64, offset: 11520)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3804, file: !2313, line: 1010, baseType: !4101, size: 512, offset: 11584)
!4101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1341, size: 512, elements: !1346)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3804, file: !2313, line: 1011, baseType: !306, size: 128, offset: 12096)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3804, file: !2313, line: 1012, baseType: !306, size: 128, offset: 12224)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3804, file: !2313, line: 1014, baseType: !1643, size: 64, offset: 12352)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3804, file: !2313, line: 1017, baseType: !2695, size: 64, offset: 12416)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3804, file: !2313, line: 1020, baseType: !2695, size: 64, offset: 12480)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3804, file: !2313, line: 1023, baseType: !230, size: 64, offset: 12544)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3804, file: !2313, line: 1025, baseType: !1029, size: 64, offset: 12608)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3804, file: !2313, line: 1026, baseType: !1029, size: 64, offset: 12672)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3804, file: !2313, line: 1031, baseType: !1029, size: 64, offset: 12736)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3804, file: !2313, line: 1032, baseType: !4112, size: 192, offset: 12800)
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2313, line: 324, size: 192, elements: !4113)
!4113 = !{!4114, !4115, !4116}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4112, file: !2313, line: 326, baseType: !1029, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4112, file: !2313, line: 327, baseType: !1029, size: 64, offset: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4112, file: !2313, line: 328, baseType: !514, size: 32, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3804, file: !2313, line: 1041, baseType: !248, size: 64, offset: 12992)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3804, file: !2313, line: 1042, baseType: !248, size: 64, offset: 13056)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3804, file: !2313, line: 1045, baseType: !1029, size: 64, offset: 13120)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3804, file: !2313, line: 1048, baseType: !1029, size: 64, offset: 13184)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3804, file: !2313, line: 1051, baseType: !248, size: 64, offset: 13248)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3804, file: !2313, line: 1052, baseType: !248, size: 64, offset: 13312)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3804, file: !2313, line: 1055, baseType: !4124, size: 640, offset: 13376)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4125, line: 132, size: 640, elements: !4126)
!4125 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4126 = !{!4127, !4133, !4134}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4124, file: !4125, line: 133, baseType: !4128, size: 576)
!4128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4129, size: 576, elements: !1197)
!4129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4125, line: 117, size: 192, elements: !4130)
!4130 = !{!4131, !4132}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4129, file: !4125, line: 118, baseType: !1029, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4129, file: !4125, line: 119, baseType: !3501, size: 128, offset: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4124, file: !4125, line: 134, baseType: !7, size: 32, offset: 576)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4124, file: !4125, line: 135, baseType: !7, size: 32, offset: 608)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3804, file: !2313, line: 1058, baseType: !4136, size: 448, offset: 14016)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4125, line: 144, size: 448, elements: !4137)
!4137 = !{!4138, !4139, !4140}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4136, file: !4125, line: 145, baseType: !1283, size: 128, align: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4136, file: !4125, line: 146, baseType: !501, size: 256, offset: 128)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4136, file: !4125, line: 147, baseType: !7, size: 32, offset: 384)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3804, file: !2313, line: 1064, baseType: !1366, size: 64, offset: 14464)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3804, file: !2313, line: 1067, baseType: !1366, size: 64, offset: 14528)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3804, file: !2313, line: 1070, baseType: !1366, size: 64, offset: 14592)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3804, file: !2313, line: 1074, baseType: !1393, size: 64, offset: 14656)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3804, file: !2313, line: 1084, baseType: !590, size: 128, offset: 14720)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3804, file: !2313, line: 1086, baseType: !4147, size: 64, offset: 14848)
!4147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4148, size: 64)
!4148 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2313, line: 55, flags: DIFlagFwdDecl)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3804, file: !2313, line: 1089, baseType: !4150, size: 64, offset: 14912)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4151, line: 12, size: 64, elements: !4152)
!4151 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4152 = !{!4153}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4150, file: !4151, line: 13, baseType: !4154, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4151, line: 8, flags: DIFlagFwdDecl)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3804, file: !2313, line: 1090, baseType: !4157, size: 128, offset: 14976)
!4157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4158, line: 13, size: 128, elements: !4159)
!4158 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4159 = !{!4160}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4157, file: !4158, line: 14, baseType: !306, size: 128)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3804, file: !2313, line: 1097, baseType: !4162, size: 64, offset: 15104)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2313, line: 50, flags: DIFlagFwdDecl)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3804, file: !2313, line: 1100, baseType: !4165, size: 64, offset: 15168)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2313, line: 1100, flags: DIFlagFwdDecl)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3804, file: !2313, line: 1103, baseType: !4168, size: 64, offset: 15232)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2313, line: 53, flags: DIFlagFwdDecl)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3804, file: !2313, line: 1107, baseType: !4171, size: 64, offset: 15296)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4173, line: 31, size: 576, elements: !4174)
!4173 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4174 = !{!4175, !4176, !4179, !4182, !4185, !4186, !4189, !4192, !4193}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4172, file: !4173, line: 32, baseType: !1328, size: 32)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4172, file: !4173, line: 33, baseType: !4177, size: 64, offset: 64)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4173, line: 9, flags: DIFlagFwdDecl)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4172, file: !4173, line: 34, baseType: !4180, size: 64, offset: 128)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4173, line: 10, flags: DIFlagFwdDecl)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4172, file: !4173, line: 35, baseType: !4183, size: 64, offset: 192)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4173, line: 8, flags: DIFlagFwdDecl)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4172, file: !4173, line: 36, baseType: !1357, size: 64, offset: 256)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4172, file: !4173, line: 37, baseType: !4187, size: 64, offset: 320)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1395, line: 34, flags: DIFlagFwdDecl)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4172, file: !4173, line: 38, baseType: !4190, size: 64, offset: 384)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4173, line: 38, flags: DIFlagFwdDecl)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4172, file: !4173, line: 39, baseType: !4190, size: 64, offset: 448)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4172, file: !4173, line: 40, baseType: !4194, size: 64, offset: 512)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4196, line: 771, size: 384, elements: !4197)
!4196 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4197 = !{!4198, !4199, !4200, !4201}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4195, file: !4196, line: 772, baseType: !1589, size: 192)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4195, file: !4196, line: 773, baseType: !1556, size: 64, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4195, file: !4196, line: 774, baseType: !1691, size: 64, offset: 256)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4195, file: !4196, line: 775, baseType: !4202, size: 64, offset: 320)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4204, line: 209, size: 4736, elements: !4205)
!4204 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4205 = !{!4206, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4203, file: !4204, line: 215, baseType: !4207, size: 896)
!4207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4208, size: 896, elements: !4265)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4204, line: 152, size: 1600, elements: !4210)
!4210 = !{!4211, !4316, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4446}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4209, file: !4204, line: 154, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4204, line: 389, size: 7872, elements: !4214)
!4214 = !{!4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4234, !4235, !4239, !4240, !4241, !4242, !4243, !4244, !4262, !4263, !4267, !4268, !4269, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4303, !4306, !4307, !4314}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4213, file: !4204, line: 391, baseType: !4209, size: 1600)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4213, file: !4204, line: 393, baseType: !248, size: 64, offset: 1600)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4213, file: !4204, line: 401, baseType: !13, size: 32, offset: 1664)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4213, file: !4204, line: 404, baseType: !13, size: 32, offset: 1696)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4213, file: !4204, line: 417, baseType: !13, size: 32, offset: 1728)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4213, file: !4204, line: 418, baseType: !13, size: 32, offset: 1760)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4213, file: !4204, line: 419, baseType: !13, size: 32, offset: 1792)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4213, file: !4204, line: 432, baseType: !13, size: 32, offset: 1824)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4213, file: !4204, line: 433, baseType: !13, size: 32, offset: 1856)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4213, file: !4204, line: 434, baseType: !13, size: 32, offset: 1888)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4213, file: !4204, line: 436, baseType: !13, size: 32, offset: 1920)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4213, file: !4204, line: 439, baseType: !7, size: 32, offset: 1952)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4213, file: !4204, line: 441, baseType: !2452, size: 64, offset: 1984)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4213, file: !4204, line: 442, baseType: !4229, size: 448, offset: 2048)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4204, line: 138, size: 448, elements: !4230)
!4230 = !{!4231, !4232, !4233}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4229, file: !4204, line: 140, baseType: !2452, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4229, file: !4204, line: 141, baseType: !248, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4229, file: !4204, line: 142, baseType: !2793, size: 320, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4213, file: !4204, line: 443, baseType: !4229, size: 448, offset: 2496)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4213, file: !4204, line: 446, baseType: !4236, offset: 2944)
!4236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4229, elements: !4237)
!4237 = !{!4238}
!4238 = !DISubrange(count: 0)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4213, file: !4204, line: 455, baseType: !302, size: 16, offset: 2944)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4213, file: !4204, line: 456, baseType: !302, size: 16, offset: 2960)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4213, file: !4204, line: 457, baseType: !302, size: 16, offset: 2976)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4213, file: !4204, line: 458, baseType: !302, size: 16, offset: 2992)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4213, file: !4204, line: 461, baseType: !4207, size: 896, offset: 3008)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4213, file: !4204, line: 463, baseType: !4245, size: 64, offset: 3904)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4204, line: 537, size: 41664, elements: !4247)
!4247 = !{!4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4261}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4246, file: !4204, line: 538, baseType: !2472, size: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4246, file: !4204, line: 541, baseType: !7, size: 32, offset: 64)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4246, file: !4204, line: 544, baseType: !13, size: 32, offset: 96)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4246, file: !4204, line: 547, baseType: !306, size: 128, offset: 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4246, file: !4204, line: 548, baseType: !1283, size: 128, align: 64, offset: 256)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4246, file: !4204, line: 555, baseType: !4213, size: 7872, offset: 384)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4246, file: !4204, line: 558, baseType: !4212, size: 64, offset: 8256)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4246, file: !4204, line: 561, baseType: !258, size: 32, offset: 8320)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4246, file: !4204, line: 564, baseType: !7, size: 32, offset: 8352)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4246, file: !4204, line: 567, baseType: !4258, size: 32768, offset: 8384)
!4258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 32768, elements: !4259)
!4259 = !{!4260}
!4260 = !DISubrange(count: 4096)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4246, file: !4204, line: 570, baseType: !3729, size: 512, offset: 41152)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4213, file: !4204, line: 469, baseType: !306, size: 128, offset: 3968)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4213, file: !4204, line: 478, baseType: !4264, size: 1792, offset: 4096)
!4264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 1792, elements: !4265)
!4265 = !{!4266}
!4266 = !DISubrange(count: 14)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4213, file: !4204, line: 487, baseType: !4212, size: 64, offset: 5888)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4213, file: !4204, line: 488, baseType: !4212, size: 64, offset: 5952)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4213, file: !4204, line: 491, baseType: !4270, size: 64, offset: 6016)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4204, line: 327, size: 896, elements: !4272)
!4272 = !{!4273, !4276, !4286, !4287, !4288, !4289, !4290}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4271, file: !4204, line: 332, baseType: !4274)
!4274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4275, line: 64, elements: !620)
!4275 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4271, file: !4204, line: 333, baseType: !4277, size: 192)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4204, line: 299, size: 192, elements: !4278)
!4278 = !{!4279}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4277, file: !4204, line: 300, baseType: !4280, size: 192)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4281, line: 17, size: 192, elements: !4282)
!4281 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4282 = !{!4283, !4284, !4285}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4280, file: !4281, line: 18, baseType: !1029, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4280, file: !4281, line: 19, baseType: !1029, size: 64, offset: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4280, file: !4281, line: 20, baseType: !1031, size: 64, offset: 128)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4271, file: !4204, line: 339, baseType: !4277, size: 192, offset: 192)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4271, file: !4204, line: 347, baseType: !4277, size: 192, offset: 384)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4271, file: !4204, line: 353, baseType: !4277, size: 192, offset: 576)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4271, file: !4204, line: 366, baseType: !4212, size: 64, offset: 768)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4271, file: !4204, line: 367, baseType: !4212, size: 64, offset: 832)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4213, file: !4204, line: 492, baseType: !306, size: 128, offset: 6080)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4213, file: !4204, line: 495, baseType: !4277, size: 192, offset: 6208)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4213, file: !4204, line: 496, baseType: !4277, size: 192, offset: 6400)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4213, file: !4204, line: 497, baseType: !4112, size: 192, offset: 6592)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4213, file: !4204, line: 503, baseType: !306, size: 128, offset: 6784)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4213, file: !4204, line: 504, baseType: !501, size: 256, offset: 6912)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4213, file: !4204, line: 507, baseType: !263, size: 192, offset: 7168)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4213, file: !4204, line: 510, baseType: !1605, size: 256, offset: 7360)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4213, file: !4204, line: 513, baseType: !4300, size: 64, offset: 7616)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4302, line: 214, elements: !620)
!4302 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4213, file: !4204, line: 516, baseType: !4304, offset: 7680)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4305, line: 76, elements: !620)
!4305 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4213, file: !4204, line: 519, baseType: !258, size: 32, offset: 7680)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4213, file: !4204, line: 522, baseType: !4308, size: 128, offset: 7712)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4204, line: 370, size: 128, elements: !4309)
!4309 = !{!4310, !4311, !4312, !4313}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4308, file: !4204, line: 372, baseType: !498, size: 8)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4308, file: !4204, line: 375, baseType: !13, size: 32, offset: 32)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4308, file: !4204, line: 380, baseType: !13, size: 32, offset: 64)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4308, file: !4204, line: 386, baseType: !13, size: 32, offset: 96)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4213, file: !4204, line: 529, baseType: !4315, offset: 7872)
!4315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4212, elements: !1359)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4209, file: !4204, line: 157, baseType: !4317, size: 64, offset: 64)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4204, line: 669, size: 1984, elements: !4319)
!4319 = !{!4320, !4324, !4328, !4332, !4333, !4334, !4335, !4339, !4343, !4344, !4350, !4354, !4355, !4356, !4360, !4364, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4391, !4392, !4429, !4430}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4318, file: !4204, line: 670, baseType: !4321, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{!4208, !4208}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4318, file: !4204, line: 671, baseType: !4325, size: 64, offset: 64)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!13, !4208}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4318, file: !4204, line: 672, baseType: !4329, size: 64, offset: 128)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{null, !4208}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4318, file: !4204, line: 673, baseType: !4329, size: 64, offset: 192)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4318, file: !4204, line: 674, baseType: !4329, size: 64, offset: 256)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4318, file: !4204, line: 675, baseType: !4329, size: 64, offset: 320)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4318, file: !4204, line: 676, baseType: !4336, size: 64, offset: 384)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{null, !4208, !13}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4318, file: !4204, line: 677, baseType: !4340, size: 64, offset: 448)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!13, !2336, !4208}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4318, file: !4204, line: 679, baseType: !4340, size: 64, offset: 512)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4318, file: !4204, line: 682, baseType: !4345, size: 64, offset: 576)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!13, !4348}
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4204, line: 30, flags: DIFlagFwdDecl)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4318, file: !4204, line: 683, baseType: !4351, size: 64, offset: 640)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{null, !4348}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4318, file: !4204, line: 684, baseType: !4351, size: 64, offset: 704)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4318, file: !4204, line: 685, baseType: !2895, size: 64, offset: 768)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4318, file: !4204, line: 686, baseType: !4357, size: 64, offset: 832)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!13, !3803, !4202}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4318, file: !4204, line: 688, baseType: !4361, size: 64, offset: 896)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{null, !3803, !4202}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4318, file: !4204, line: 689, baseType: !4365, size: 64, offset: 960)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{null, !3803}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4318, file: !4204, line: 690, baseType: !4365, size: 64, offset: 1024)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4318, file: !4204, line: 691, baseType: !4365, size: 64, offset: 1088)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4318, file: !4204, line: 692, baseType: !4329, size: 64, offset: 1152)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4318, file: !4204, line: 694, baseType: !498, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4318, file: !4204, line: 707, baseType: !498, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4318, file: !4204, line: 719, baseType: !498, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4318, file: !4204, line: 722, baseType: !13, size: 32, offset: 1248)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4318, file: !4204, line: 723, baseType: !226, size: 64, offset: 1280)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4318, file: !4204, line: 726, baseType: !226, size: 64, offset: 1344)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4318, file: !4204, line: 729, baseType: !4245, size: 64, offset: 1408)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4318, file: !4204, line: 732, baseType: !4379, size: 192, offset: 1472)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4380, line: 19, size: 192, elements: !4381)
!4380 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4381 = !{!4382, !4389, !4390}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4379, file: !4380, line: 20, baseType: !4383, size: 128)
!4383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !4384, line: 296, size: 128, elements: !4385)
!4384 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!4385 = !{!4386, !4387, !4388}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !4383, file: !4384, line: 297, baseType: !268, size: 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !4383, file: !4384, line: 299, baseType: !541, size: 32, offset: 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !4383, file: !4384, line: 300, baseType: !230, size: 64, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4379, file: !4380, line: 21, baseType: !7, size: 32, offset: 128)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4379, file: !4380, line: 22, baseType: !7, size: 32, offset: 160)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4318, file: !4204, line: 738, baseType: !306, size: 128, offset: 1664)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4318, file: !4204, line: 744, baseType: !4393, size: 64, offset: 1792)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4204, line: 580, size: 1728, elements: !4395)
!4395 = !{!4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4405, !4406, !4407, !4411, !4415, !4416, !4417, !4418, !4419, !4423, !4427, !4428}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4394, file: !4204, line: 586, baseType: !3729, size: 512)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4394, file: !4204, line: 587, baseType: !248, size: 64, offset: 512)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4394, file: !4204, line: 593, baseType: !244, size: 64, offset: 576)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4394, file: !4204, line: 596, baseType: !7, size: 32, offset: 640)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4394, file: !4204, line: 604, baseType: !7, size: 32, offset: 672)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4394, file: !4204, line: 610, baseType: !4317, size: 64, offset: 704)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4394, file: !4204, line: 611, baseType: !306, size: 128, offset: 768)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4394, file: !4204, line: 612, baseType: !4404, size: 64, offset: 896)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4394, file: !4204, line: 614, baseType: !2488, size: 64, offset: 960)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4394, file: !4204, line: 615, baseType: !2508, size: 64, offset: 1024)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4394, file: !4204, line: 621, baseType: !4408, size: 64, offset: 1088)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!1029, !4208, !4393}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4394, file: !4204, line: 625, baseType: !4412, size: 64, offset: 1152)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!511, !4208, !4393}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4394, file: !4204, line: 628, baseType: !2366, size: 64, offset: 1216)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4394, file: !4204, line: 631, baseType: !2354, size: 64, offset: 1280)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4394, file: !4204, line: 632, baseType: !2362, size: 64, offset: 1344)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4394, file: !4204, line: 633, baseType: !2358, size: 64, offset: 1408)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4394, file: !4204, line: 640, baseType: !4420, size: 64, offset: 1472)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!13, !4208, !4393, !1029}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4394, file: !4204, line: 645, baseType: !4424, size: 64, offset: 1536)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!13, !4208, !4393, !511}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4394, file: !4204, line: 654, baseType: !2516, size: 64, offset: 1600)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4394, file: !4204, line: 657, baseType: !2523, size: 64, offset: 1664)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4318, file: !4204, line: 745, baseType: !4393, size: 64, offset: 1856)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4318, file: !4204, line: 754, baseType: !7, size: 32, offset: 1920)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4209, file: !4204, line: 160, baseType: !2163, size: 128, offset: 128)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4209, file: !4204, line: 163, baseType: !306, size: 128, offset: 256)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4209, file: !4204, line: 164, baseType: !306, size: 128, offset: 384)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4209, file: !4204, line: 167, baseType: !306, size: 128, offset: 512)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4209, file: !4204, line: 173, baseType: !13, size: 32, offset: 640)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4209, file: !4204, line: 175, baseType: !7, size: 32, offset: 672)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4209, file: !4204, line: 183, baseType: !1029, size: 64, offset: 704)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4209, file: !4204, line: 189, baseType: !258, size: 32, offset: 768)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4209, file: !4204, line: 192, baseType: !1605, size: 256, offset: 832)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4209, file: !4204, line: 193, baseType: !4441, size: 448, offset: 1088)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1606, line: 120, size: 448, elements: !4442)
!4442 = !{!4443, !4444, !4445}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4441, file: !1606, line: 121, baseType: !1605, size: 256)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4441, file: !1606, line: 122, baseType: !1283, size: 128, align: 64, offset: 256)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4441, file: !1606, line: 125, baseType: !2854, size: 64, offset: 384)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4209, file: !4204, line: 199, baseType: !4208, size: 64, offset: 1536)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4203, file: !4204, line: 218, baseType: !1328, size: 32, offset: 896)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4203, file: !4204, line: 226, baseType: !4202, size: 64, offset: 960)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4203, file: !4204, line: 229, baseType: !4212, size: 64, offset: 1024)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4203, file: !4204, line: 232, baseType: !13, size: 32, offset: 1088)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4203, file: !4204, line: 241, baseType: !306, size: 128, offset: 1152)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4203, file: !4204, line: 242, baseType: !306, size: 128, offset: 1280)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4203, file: !4204, line: 243, baseType: !306, size: 128, offset: 1408)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4203, file: !4204, line: 246, baseType: !306, size: 128, offset: 1536)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4203, file: !4204, line: 255, baseType: !4264, size: 1792, offset: 1664)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4203, file: !4204, line: 258, baseType: !306, size: 128, offset: 3456)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4203, file: !4204, line: 259, baseType: !306, size: 128, offset: 3584)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4203, file: !4204, line: 265, baseType: !1341, size: 128, offset: 3712)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4203, file: !4204, line: 271, baseType: !306, size: 128, offset: 3840)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4203, file: !4204, line: 277, baseType: !306, size: 128, offset: 3968)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4203, file: !4204, line: 278, baseType: !306, size: 128, offset: 4096)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4203, file: !4204, line: 279, baseType: !306, size: 128, offset: 4224)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4203, file: !4204, line: 288, baseType: !4212, size: 64, offset: 4352)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4203, file: !4204, line: 289, baseType: !4212, size: 64, offset: 4416)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4203, file: !4204, line: 290, baseType: !4202, size: 64, offset: 4480)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4203, file: !4204, line: 293, baseType: !498, size: 8, offset: 4544)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4203, file: !4204, line: 296, baseType: !1283, size: 128, align: 64, offset: 4608)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3804, file: !2313, line: 1110, baseType: !4469, size: 64, offset: 15360)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4471, line: 93, size: 8768, elements: !4472)
!4471 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4472 = !{!4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4509, !4510, !4511, !4512, !4513, !4514, !4515, !4521, !4530, !4531, !4533, !4534, !4535, !4538, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4576, !4577, !4584, !4594, !4657, !4658, !4661, !4662, !4663, !4664, !4665, !4666}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4470, file: !4471, line: 94, baseType: !1328, size: 32)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4470, file: !4471, line: 95, baseType: !258, size: 32, offset: 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4470, file: !4471, line: 96, baseType: !13, size: 32, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4470, file: !4471, line: 97, baseType: !13, size: 32, offset: 96)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4470, file: !4471, line: 98, baseType: !306, size: 128, offset: 128)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4470, file: !4471, line: 100, baseType: !263, size: 192, offset: 256)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4470, file: !4471, line: 103, baseType: !3803, size: 64, offset: 448)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4470, file: !4471, line: 106, baseType: !4481, size: 192, offset: 512)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4482, line: 32, size: 192, elements: !4483)
!4482 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4483 = !{!4484, !4485}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4481, file: !4482, line: 33, baseType: !306, size: 128)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4481, file: !4482, line: 34, baseType: !4486, size: 64, offset: 128)
!4486 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4487, line: 25, baseType: !4488)
!4487 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4487, line: 23, size: 64, elements: !4489)
!4489 = !{!4490}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4488, file: !4487, line: 24, baseType: !538, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4470, file: !4471, line: 109, baseType: !1337, size: 64, offset: 704)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4470, file: !4471, line: 112, baseType: !13, size: 32, offset: 768)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4470, file: !4471, line: 114, baseType: !13, size: 32, offset: 800)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4470, file: !4471, line: 115, baseType: !3803, size: 64, offset: 832)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4470, file: !4471, line: 118, baseType: !13, size: 32, offset: 896)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4470, file: !4471, line: 119, baseType: !7, size: 32, offset: 928)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4470, file: !4471, line: 121, baseType: !4498, size: 64, offset: 960)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4471, line: 80, size: 448, elements: !4500)
!4500 = !{!4501, !4502, !4508}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4499, file: !4471, line: 81, baseType: !258, size: 32)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4499, file: !4471, line: 82, baseType: !4503, size: 128, offset: 64)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4471, line: 75, size: 128, elements: !4504)
!4504 = !{!4505, !4506}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4503, file: !4471, line: 76, baseType: !3803, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4503, file: !4471, line: 77, baseType: !4507, size: 64, offset: 64)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4499, file: !4471, line: 83, baseType: !1644, size: 256, offset: 192)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4470, file: !4471, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4470, file: !4471, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4470, file: !4471, line: 138, baseType: !7, size: 32, offset: 1056)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4470, file: !4471, line: 139, baseType: !306, size: 128, offset: 1088)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4470, file: !4471, line: 142, baseType: !3447, size: 512, offset: 1216)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4470, file: !4471, line: 143, baseType: !3427, size: 64, offset: 1728)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4470, file: !4471, line: 150, baseType: !4516, size: 256, offset: 1792)
!4516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4517, size: 256, elements: !2685)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4471, line: 38, size: 128, elements: !4518)
!4518 = !{!4519, !4520}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4517, file: !4471, line: 39, baseType: !1029, size: 64)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4517, file: !4471, line: 40, baseType: !1029, size: 64, offset: 64)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4470, file: !4471, line: 156, baseType: !4522, size: 192, offset: 2048)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4471, line: 66, size: 192, elements: !4523)
!4523 = !{!4524}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4522, file: !4471, line: 67, baseType: !4525, size: 192)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4471, line: 47, size: 192, elements: !4526)
!4526 = !{!4527, !4528, !4529}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4525, file: !4471, line: 48, baseType: !507, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4525, file: !4471, line: 49, baseType: !507, size: 64, offset: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4525, file: !4471, line: 50, baseType: !507, size: 64, offset: 128)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4470, file: !4471, line: 160, baseType: !4124, size: 640, offset: 2240)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4470, file: !4471, line: 163, baseType: !4532, size: 256, offset: 2880)
!4532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1324, size: 256, elements: !1346)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4470, file: !4471, line: 169, baseType: !1324, size: 64, offset: 3136)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4470, file: !4471, line: 172, baseType: !13, size: 32, offset: 3200)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4470, file: !4471, line: 174, baseType: !4536, size: 64, offset: 3264)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4471, line: 174, flags: DIFlagFwdDecl)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4470, file: !4471, line: 185, baseType: !4539, size: 64, offset: 3328)
!4539 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !998, line: 860, baseType: !4540)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !998, line: 853, size: 64, elements: !4541)
!4541 = !{!4542, !4543}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4540, file: !998, line: 858, baseType: !997, size: 32)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4540, file: !998, line: 859, baseType: !268, size: 32, offset: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4470, file: !4471, line: 186, baseType: !1029, size: 64, offset: 3392)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4470, file: !4471, line: 186, baseType: !1029, size: 64, offset: 3456)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4470, file: !4471, line: 186, baseType: !1029, size: 64, offset: 3520)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4470, file: !4471, line: 186, baseType: !1029, size: 64, offset: 3584)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4470, file: !4471, line: 187, baseType: !1029, size: 64, offset: 3648)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4470, file: !4471, line: 188, baseType: !1029, size: 64, offset: 3712)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4470, file: !4471, line: 189, baseType: !4112, size: 192, offset: 3776)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4470, file: !4471, line: 190, baseType: !248, size: 64, offset: 3968)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4470, file: !4471, line: 190, baseType: !248, size: 64, offset: 4032)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4470, file: !4471, line: 190, baseType: !248, size: 64, offset: 4096)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4470, file: !4471, line: 190, baseType: !248, size: 64, offset: 4160)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4470, file: !4471, line: 191, baseType: !248, size: 64, offset: 4224)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4470, file: !4471, line: 191, baseType: !248, size: 64, offset: 4288)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4470, file: !4471, line: 191, baseType: !248, size: 64, offset: 4352)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4470, file: !4471, line: 191, baseType: !248, size: 64, offset: 4416)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4470, file: !4471, line: 192, baseType: !248, size: 64, offset: 4480)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4470, file: !4471, line: 192, baseType: !248, size: 64, offset: 4544)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4470, file: !4471, line: 192, baseType: !248, size: 64, offset: 4608)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4470, file: !4471, line: 192, baseType: !248, size: 64, offset: 4672)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4470, file: !4471, line: 193, baseType: !248, size: 64, offset: 4736)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4470, file: !4471, line: 193, baseType: !248, size: 64, offset: 4800)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4470, file: !4471, line: 194, baseType: !4566, size: 448, offset: 4864)
!4566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4567, line: 12, size: 448, elements: !4568)
!4567 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4568 = !{!4569, !4570, !4571, !4572, !4573, !4574, !4575}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4566, file: !4567, line: 15, baseType: !1029, size: 64)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4566, file: !4567, line: 17, baseType: !1029, size: 64, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4566, file: !4567, line: 19, baseType: !1029, size: 64, offset: 128)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4566, file: !4567, line: 21, baseType: !1029, size: 64, offset: 192)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4566, file: !4567, line: 29, baseType: !1029, size: 64, offset: 256)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4566, file: !4567, line: 35, baseType: !1029, size: 64, offset: 320)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4566, file: !4567, line: 44, baseType: !1029, size: 64, offset: 384)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4470, file: !4471, line: 202, baseType: !1031, size: 64, offset: 5312)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4470, file: !4471, line: 213, baseType: !4578, size: 2048, offset: 5376)
!4578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4579, size: 2048, elements: !591)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4580, line: 43, size: 128, elements: !4581)
!4580 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4581 = !{!4582, !4583}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4579, file: !4580, line: 44, baseType: !247, size: 64)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4579, file: !4580, line: 45, baseType: !247, size: 64, offset: 64)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4470, file: !4471, line: 216, baseType: !4585, size: 448, offset: 7424)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4471, line: 30, size: 448, elements: !4586)
!4586 = !{!4587, !4588, !4589, !4590, !4591, !4592, !4593}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4585, file: !4471, line: 31, baseType: !13, size: 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4585, file: !4471, line: 32, baseType: !1231, size: 64, offset: 64)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4585, file: !4471, line: 33, baseType: !248, size: 64, offset: 128)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4585, file: !4471, line: 34, baseType: !1029, size: 64, offset: 192)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4585, file: !4471, line: 34, baseType: !1029, size: 64, offset: 256)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4585, file: !4471, line: 35, baseType: !248, size: 64, offset: 320)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4585, file: !4471, line: 35, baseType: !248, size: 64, offset: 384)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4470, file: !4471, line: 219, baseType: !4595, size: 64, offset: 7872)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4597, line: 41, size: 3456, elements: !4598)
!4597 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4598 = !{!4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4613, !4614, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4596, file: !4597, line: 47, baseType: !303, size: 16)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4596, file: !4597, line: 48, baseType: !1026, size: 32, offset: 32)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4596, file: !4597, line: 54, baseType: !294, size: 8, offset: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4596, file: !4597, line: 55, baseType: !294, size: 8, offset: 72)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4596, file: !4597, line: 73, baseType: !1030, size: 64, align: 64, offset: 128)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4596, file: !4597, line: 74, baseType: !1030, size: 64, offset: 192)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4596, file: !4597, line: 81, baseType: !1030, size: 64, offset: 256)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4596, file: !4597, line: 82, baseType: !1030, size: 64, offset: 320)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4596, file: !4597, line: 85, baseType: !1030, size: 64, offset: 384)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4596, file: !4597, line: 86, baseType: !1030, size: 64, offset: 448)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4596, file: !4597, line: 94, baseType: !1030, size: 64, offset: 512)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4596, file: !4597, line: 102, baseType: !1030, size: 64, offset: 576)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4596, file: !4597, line: 107, baseType: !4612, size: 256, offset: 640)
!4612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 256, elements: !1038)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4596, file: !4597, line: 108, baseType: !294, size: 8, align: 64, offset: 896)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4596, file: !4597, line: 110, baseType: !4615, size: 24, offset: 904)
!4615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 24, elements: !1197)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4596, file: !4597, line: 111, baseType: !1026, size: 32, align: 64, offset: 960)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4596, file: !4597, line: 113, baseType: !1026, size: 32, offset: 992)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4596, file: !4597, line: 114, baseType: !1026, size: 32, offset: 1024)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4596, file: !4597, line: 115, baseType: !1026, size: 32, offset: 1056)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4596, file: !4597, line: 117, baseType: !1026, size: 32, offset: 1088)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4596, file: !4597, line: 118, baseType: !1030, size: 64, align: 64, offset: 1152)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4596, file: !4597, line: 120, baseType: !1030, size: 64, offset: 1216)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4596, file: !4597, line: 121, baseType: !1030, size: 64, offset: 1280)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4596, file: !4597, line: 122, baseType: !1030, size: 64, offset: 1344)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4596, file: !4597, line: 123, baseType: !1030, size: 64, offset: 1408)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4596, file: !4597, line: 133, baseType: !1030, size: 64, offset: 1472)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4596, file: !4597, line: 137, baseType: !1030, size: 64, offset: 1536)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4596, file: !4597, line: 142, baseType: !1030, size: 64, offset: 1600)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4596, file: !4597, line: 143, baseType: !1030, size: 64, offset: 1664)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4596, file: !4597, line: 146, baseType: !1030, size: 64, offset: 1728)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4596, file: !4597, line: 147, baseType: !1030, size: 64, offset: 1792)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4596, file: !4597, line: 148, baseType: !1030, size: 64, offset: 1856)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4596, file: !4597, line: 149, baseType: !1030, size: 64, offset: 1920)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4596, file: !4597, line: 154, baseType: !1030, size: 64, offset: 1984)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4596, file: !4597, line: 155, baseType: !1030, size: 64, offset: 2048)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4596, file: !4597, line: 156, baseType: !1030, size: 64, offset: 2112)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4596, file: !4597, line: 158, baseType: !1030, size: 64, offset: 2176)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4596, file: !4597, line: 159, baseType: !1030, size: 64, offset: 2240)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4596, file: !4597, line: 162, baseType: !1030, size: 64, offset: 2304)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4596, file: !4597, line: 163, baseType: !1030, size: 64, offset: 2368)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4596, file: !4597, line: 164, baseType: !1030, size: 64, offset: 2432)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4596, file: !4597, line: 167, baseType: !1030, size: 64, offset: 2496)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4596, file: !4597, line: 168, baseType: !1030, size: 64, offset: 2560)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4596, file: !4597, line: 171, baseType: !1030, size: 64, offset: 2624)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4596, file: !4597, line: 172, baseType: !1030, size: 64, offset: 2688)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4596, file: !4597, line: 175, baseType: !1030, size: 64, offset: 2752)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4596, file: !4597, line: 178, baseType: !1030, size: 64, offset: 2816)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4596, file: !4597, line: 179, baseType: !1030, size: 64, offset: 2880)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4596, file: !4597, line: 182, baseType: !1026, size: 32, offset: 2944)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4596, file: !4597, line: 186, baseType: !1030, size: 64, align: 64, offset: 3008)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4596, file: !4597, line: 194, baseType: !1030, size: 64, offset: 3072)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4596, file: !4597, line: 195, baseType: !1030, size: 64, offset: 3136)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4596, file: !4597, line: 199, baseType: !1030, size: 64, offset: 3200)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4596, file: !4597, line: 200, baseType: !1030, size: 64, offset: 3264)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4596, file: !4597, line: 203, baseType: !1030, size: 64, offset: 3328)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4596, file: !4597, line: 204, baseType: !1030, size: 64, offset: 3392)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4470, file: !4471, line: 222, baseType: !7, size: 32, offset: 7936)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4470, file: !4471, line: 223, baseType: !4659, size: 64, offset: 8000)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4471, line: 223, flags: DIFlagFwdDecl)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4470, file: !4471, line: 230, baseType: !498, size: 8, offset: 8064)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4470, file: !4471, line: 231, baseType: !1444, size: 16, offset: 8080)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4470, file: !4471, line: 232, baseType: !1444, size: 16, offset: 8096)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4470, file: !4471, line: 234, baseType: !1851, size: 64, offset: 8128)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4470, file: !4471, line: 237, baseType: !501, size: 256, offset: 8192)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4470, file: !4471, line: 243, baseType: !1416, size: 320, offset: 8448)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3804, file: !2313, line: 1111, baseType: !4668, size: 64, offset: 15424)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4471, line: 20, size: 16640, elements: !4670)
!4670 = !{!4671, !4672, !4673, !4674}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4669, file: !4471, line: 21, baseType: !268, size: 32)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4669, file: !4471, line: 22, baseType: !1328, size: 32, offset: 32)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4669, file: !4471, line: 23, baseType: !263, size: 192, offset: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4669, file: !4471, line: 24, baseType: !4675, size: 16384, offset: 256)
!4675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4676, size: 16384, elements: !1201)
!4676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4482, line: 51, size: 256, elements: !4677)
!4677 = !{!4678}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4676, file: !4482, line: 52, baseType: !4679, size: 256)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4482, line: 37, size: 256, elements: !4680)
!4680 = !{!4681, !4688, !4689, !4693}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4679, file: !4482, line: 39, baseType: !4682, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4683, line: 83, baseType: !4684)
!4683 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4683, line: 82, baseType: !4686)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{null, !13}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4679, file: !4482, line: 40, baseType: !248, size: 64, offset: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4679, file: !4482, line: 46, baseType: !4690, size: 64, offset: 128)
!4690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4683, line: 86, baseType: !4691)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4683, line: 85, baseType: !558)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4679, file: !4482, line: 48, baseType: !4486, size: 64, offset: 192)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3804, file: !2313, line: 1112, baseType: !4486, size: 64, offset: 15488)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3804, file: !2313, line: 1113, baseType: !4486, size: 64, offset: 15552)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3804, file: !2313, line: 1115, baseType: !4486, size: 64, offset: 15616)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3804, file: !2313, line: 1116, baseType: !4481, size: 192, offset: 15680)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3804, file: !2313, line: 1117, baseType: !248, size: 64, offset: 15872)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3804, file: !2313, line: 1118, baseType: !244, size: 64, offset: 15936)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3804, file: !2313, line: 1119, baseType: !7, size: 32, offset: 16000)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3804, file: !2313, line: 1121, baseType: !1286, size: 64, offset: 16064)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3804, file: !2313, line: 1125, baseType: !4703, size: 64, offset: 16128)
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2313, line: 43, flags: DIFlagFwdDecl)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3804, file: !2313, line: 1127, baseType: !962, size: 32, offset: 16192)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3804, file: !2313, line: 1128, baseType: !7, size: 32, offset: 16224)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3804, file: !2313, line: 1130, baseType: !4708, size: 128, offset: 16256)
!4708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4709, line: 37, size: 128, elements: !4710)
!4709 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4710 = !{!4711, !4712, !4713}
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4708, file: !4709, line: 38, baseType: !13, size: 32)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4708, file: !4709, line: 39, baseType: !258, size: 32, offset: 32)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4708, file: !4709, line: 40, baseType: !4714, size: 64, offset: 64)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4709, line: 24, flags: DIFlagFwdDecl)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3804, file: !2313, line: 1131, baseType: !4717, size: 256, offset: 16384)
!4717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4718, line: 12, size: 256, elements: !4719)
!4718 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4719 = !{!4720, !4721, !4722, !4723}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4717, file: !4718, line: 13, baseType: !1097, size: 64)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4717, file: !4718, line: 14, baseType: !248, size: 64, offset: 64)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4717, file: !4718, line: 15, baseType: !248, size: 64, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4717, file: !4718, line: 16, baseType: !498, size: 8, offset: 192)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3804, file: !2313, line: 1134, baseType: !1029, size: 64, offset: 16640)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3804, file: !2313, line: 1135, baseType: !1029, size: 64, offset: 16704)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3804, file: !2313, line: 1138, baseType: !268, size: 32, offset: 16768)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3804, file: !2313, line: 1141, baseType: !514, size: 32, offset: 16800)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3804, file: !2313, line: 1143, baseType: !4729, size: 64, offset: 16832)
!4729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2313, line: 735, size: 64, elements: !4730)
!4730 = !{!4731}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4729, file: !2313, line: 736, baseType: !4732, size: 64)
!4732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4729, size: 64)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3804, file: !2313, line: 1147, baseType: !3504, size: 128, offset: 16896)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3804, file: !2313, line: 1149, baseType: !3803, size: 64, offset: 17024)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3804, file: !2313, line: 1151, baseType: !4736, size: 64, offset: 17088)
!4736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4737, size: 64)
!4737 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2313, line: 1151, flags: DIFlagFwdDecl)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3804, file: !2313, line: 1188, baseType: !230, size: 64, offset: 17152)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3804, file: !2313, line: 1191, baseType: !4740, size: 64, offset: 17216)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2313, line: 44, flags: DIFlagFwdDecl)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3804, file: !2313, line: 1194, baseType: !4743, size: 64, offset: 17280)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2313, line: 45, flags: DIFlagFwdDecl)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3804, file: !2313, line: 1197, baseType: !4746, size: 64, offset: 17344)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !926, line: 155, size: 64, elements: !4748)
!4748 = !{!4749}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4747, file: !926, line: 157, baseType: !248, size: 64)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3804, file: !2313, line: 1199, baseType: !4751, size: 64, offset: 17408)
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3221, line: 99, size: 128, elements: !4753)
!4753 = !{!4754, !4755, !4756}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4752, file: !3221, line: 100, baseType: !505, size: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4752, file: !3221, line: 101, baseType: !258, size: 32, offset: 64)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4752, file: !3221, line: 103, baseType: !235, size: 16, offset: 96)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3804, file: !2313, line: 1202, baseType: !4758, size: 64, offset: 17472)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2313, line: 48, flags: DIFlagFwdDecl)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3804, file: !2313, line: 1205, baseType: !248, size: 64, offset: 17536)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3804, file: !2313, line: 1206, baseType: !4762, size: 64, offset: 17600)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4482, line: 14, baseType: !4764)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4482, line: 12, size: 384, elements: !4765)
!4765 = !{!4766}
!4766 = !DIDerivedType(tag: DW_TAG_member, scope: !4764, file: !4482, line: 13, baseType: !4767, size: 384)
!4767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4764, file: !4482, line: 13, size: 384, elements: !4768)
!4768 = !{!4769, !4770, !4771, !4772}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4767, file: !4482, line: 13, baseType: !13, size: 32)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4767, file: !4482, line: 13, baseType: !13, size: 32, offset: 32)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4767, file: !4482, line: 13, baseType: !13, size: 32, offset: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4767, file: !4482, line: 13, baseType: !4773, size: 256, offset: 128)
!4773 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4774, line: 37, size: 256, elements: !4775)
!4774 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4775 = !{!4776, !4781, !4794, !4800, !4809, !4836, !4841}
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4773, file: !4774, line: 42, baseType: !4777, size: 64)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4773, file: !4774, line: 39, size: 64, elements: !4778)
!4778 = !{!4779, !4780}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4777, file: !4774, line: 40, baseType: !4089, size: 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4777, file: !4774, line: 41, baseType: !968, size: 32, offset: 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4773, file: !4774, line: 50, baseType: !4782, size: 192)
!4782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4773, file: !4774, line: 45, size: 192, elements: !4783)
!4783 = !{!4784, !4786, !4787, !4793}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4782, file: !4774, line: 46, baseType: !4785, size: 32)
!4785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !246, line: 95, baseType: !13)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4782, file: !4774, line: 47, baseType: !13, size: 32, offset: 32)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4782, file: !4774, line: 48, baseType: !4788, size: 64, offset: 64)
!4788 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4774, line: 11, baseType: !4789)
!4789 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4774, line: 8, size: 64, elements: !4790)
!4790 = !{!4791, !4792}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4789, file: !4774, line: 9, baseType: !13, size: 32)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4789, file: !4774, line: 10, baseType: !230, size: 64)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4782, file: !4774, line: 49, baseType: !13, size: 32, offset: 128)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4773, file: !4774, line: 57, baseType: !4795, size: 128)
!4795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4773, file: !4774, line: 53, size: 128, elements: !4796)
!4796 = !{!4797, !4798, !4799}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4795, file: !4774, line: 54, baseType: !4089, size: 32)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4795, file: !4774, line: 55, baseType: !968, size: 32, offset: 32)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4795, file: !4774, line: 56, baseType: !4788, size: 64, offset: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4773, file: !4774, line: 66, baseType: !4801, size: 256)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4773, file: !4774, line: 60, size: 256, elements: !4802)
!4802 = !{!4803, !4804, !4805, !4806, !4808}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4801, file: !4774, line: 61, baseType: !4089, size: 32)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4801, file: !4774, line: 62, baseType: !968, size: 32, offset: 32)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4801, file: !4774, line: 63, baseType: !13, size: 32, offset: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4801, file: !4774, line: 64, baseType: !4807, size: 64, offset: 128)
!4807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !246, line: 94, baseType: !1230)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4801, file: !4774, line: 65, baseType: !4807, size: 64, offset: 192)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4773, file: !4774, line: 105, baseType: !4810, size: 256)
!4810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4773, file: !4774, line: 69, size: 256, elements: !4811)
!4811 = !{!4812, !4813}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4810, file: !4774, line: 70, baseType: !230, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_member, scope: !4810, file: !4774, line: 79, baseType: !4814, size: 192, offset: 64)
!4814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4810, file: !4774, line: 79, size: 192, elements: !4815)
!4815 = !{!4816, !4817, !4818, !4825, !4830}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4814, file: !4774, line: 81, baseType: !13, size: 32)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4814, file: !4774, line: 86, baseType: !1444, size: 16)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4814, file: !4774, line: 92, baseType: !4819, size: 192)
!4819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4814, file: !4774, line: 88, size: 192, elements: !4820)
!4820 = !{!4821, !4823, !4824}
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4819, file: !4774, line: 89, baseType: !4822, size: 64)
!4822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 64, elements: !3488)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4819, file: !4774, line: 90, baseType: !230, size: 64, offset: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4819, file: !4774, line: 91, baseType: !230, size: 64, offset: 128)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4814, file: !4774, line: 97, baseType: !4826, size: 96)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4814, file: !4774, line: 94, size: 96, elements: !4827)
!4827 = !{!4828, !4829}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4826, file: !4774, line: 95, baseType: !4822, size: 64)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4826, file: !4774, line: 96, baseType: !1026, size: 32, offset: 64)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4814, file: !4774, line: 103, baseType: !4831, size: 128)
!4831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4814, file: !4774, line: 99, size: 128, elements: !4832)
!4832 = !{!4833, !4834, !4835}
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4831, file: !4774, line: 100, baseType: !248, size: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4831, file: !4774, line: 101, baseType: !1026, size: 32, offset: 64)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4831, file: !4774, line: 102, baseType: !1026, size: 32, offset: 96)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4773, file: !4774, line: 111, baseType: !4837, size: 128)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4773, file: !4774, line: 108, size: 128, elements: !4838)
!4838 = !{!4839, !4840}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4837, file: !4774, line: 109, baseType: !1231, size: 64)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4837, file: !4774, line: 110, baseType: !13, size: 32, offset: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4773, file: !4774, line: 118, baseType: !4842, size: 128)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4773, file: !4774, line: 114, size: 128, elements: !4843)
!4843 = !{!4844, !4845, !4846}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4842, file: !4774, line: 115, baseType: !230, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4842, file: !4774, line: 116, baseType: !13, size: 32, offset: 64)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4842, file: !4774, line: 117, baseType: !7, size: 32, offset: 96)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3804, file: !2313, line: 1208, baseType: !4566, size: 448, offset: 17664)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3804, file: !2313, line: 1215, baseType: !1029, size: 64, offset: 18112)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3804, file: !2313, line: 1217, baseType: !1029, size: 64, offset: 18176)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3804, file: !2313, line: 1219, baseType: !1029, size: 64, offset: 18240)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3804, file: !2313, line: 1223, baseType: !4852, size: 64, offset: 18304)
!4852 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4853, line: 99, baseType: !4854)
!4853 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4853, line: 99, size: 64, elements: !4855)
!4855 = !{!4856}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4854, file: !4853, line: 99, baseType: !538, size: 64)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3804, file: !2313, line: 1225, baseType: !997, size: 32, offset: 18368)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3804, file: !2313, line: 1226, baseType: !13, size: 32, offset: 18400)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3804, file: !2313, line: 1227, baseType: !13, size: 32, offset: 18432)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3804, file: !2313, line: 1231, baseType: !4202, size: 64, offset: 18496)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3804, file: !2313, line: 1233, baseType: !306, size: 128, offset: 18560)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3804, file: !2313, line: 1240, baseType: !4863, size: 64, offset: 18688)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4864, size: 64)
!4864 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2313, line: 62, flags: DIFlagFwdDecl)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3804, file: !2313, line: 1242, baseType: !4866, size: 64, offset: 18752)
!4866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4867, size: 64)
!4867 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2313, line: 1242, flags: DIFlagFwdDecl)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3804, file: !2313, line: 1244, baseType: !306, size: 128, offset: 18816)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3804, file: !2313, line: 1245, baseType: !4870, size: 64, offset: 18944)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2313, line: 51, flags: DIFlagFwdDecl)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3804, file: !2313, line: 1246, baseType: !501, size: 256, offset: 19008)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3804, file: !2313, line: 1247, baseType: !7, size: 32, offset: 19264)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3804, file: !2313, line: 1250, baseType: !4875, size: 64, offset: 19328)
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2313, line: 57, flags: DIFlagFwdDecl)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3804, file: !2313, line: 1251, baseType: !501, size: 256, offset: 19392)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3804, file: !2313, line: 1252, baseType: !306, size: 128, offset: 19648)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3804, file: !2313, line: 1259, baseType: !2259, size: 64, offset: 19776)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3804, file: !2313, line: 1260, baseType: !1444, size: 16, offset: 19840)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3804, file: !2313, line: 1261, baseType: !1444, size: 16, offset: 19856)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3804, file: !2313, line: 1314, baseType: !4883, size: 64, offset: 19904)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4885, line: 62, size: 256, align: 256, elements: !4886)
!4885 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4886 = !{!4887, !4888, !4889, !4890, !4891, !4892, !4893}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4884, file: !4885, line: 75, baseType: !1026, size: 32)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4884, file: !4885, line: 90, baseType: !1026, size: 32, offset: 32)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4884, file: !4885, line: 112, baseType: !1030, size: 64, offset: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4884, file: !4885, line: 132, baseType: !1026, size: 32, offset: 128)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4884, file: !4885, line: 140, baseType: !1026, size: 32, offset: 160)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4884, file: !4885, line: 149, baseType: !1026, size: 32, offset: 192)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4884, file: !4885, line: 154, baseType: !4894, offset: 224)
!4894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, elements: !1359)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3804, file: !2313, line: 1315, baseType: !1025, size: 32, offset: 19968)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3804, file: !2313, line: 1316, baseType: !1025, size: 32, offset: 20000)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3804, file: !2313, line: 1321, baseType: !248, size: 64, offset: 20032)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3804, file: !2313, line: 1325, baseType: !13, size: 32, offset: 20096)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3804, file: !2313, line: 1326, baseType: !13, size: 32, offset: 20128)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3804, file: !2313, line: 1327, baseType: !13, size: 32, offset: 20160)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3804, file: !2313, line: 1328, baseType: !13, size: 32, offset: 20192)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3804, file: !2313, line: 1329, baseType: !1283, size: 128, align: 64, offset: 20224)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3804, file: !2313, line: 1332, baseType: !4904, size: 128, offset: 20352)
!4904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4905, line: 51, size: 128, elements: !4906)
!4905 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4906 = !{!4907, !4912, !4913}
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4904, file: !4905, line: 60, baseType: !4908, size: 64)
!4908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4909, line: 7, size: 64, elements: !4910)
!4909 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4910 = !{!4911}
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4908, file: !4909, line: 12, baseType: !534, size: 64)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4904, file: !4905, line: 63, baseType: !498, size: 8, offset: 64)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4904, file: !4905, line: 70, baseType: !498, size: 8, offset: 72)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3804, file: !2313, line: 1335, baseType: !2311, size: 64, offset: 20480)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3804, file: !2313, line: 1337, baseType: !4916, size: 128, offset: 20544)
!4916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4905, line: 39, size: 128, elements: !4917)
!4917 = !{!4918, !4919, !4920}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4916, file: !4905, line: 40, baseType: !2099, size: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4916, file: !4905, line: 42, baseType: !1026, size: 32, offset: 64)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4916, file: !4905, line: 43, baseType: !1026, size: 32, offset: 96)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3804, file: !2313, line: 1340, baseType: !4922, size: 64, offset: 20672)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2313, line: 69, flags: DIFlagFwdDecl)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3804, file: !2313, line: 1351, baseType: !13, size: 32, offset: 20736)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3804, file: !2313, line: 1352, baseType: !13, size: 32, offset: 20768)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3804, file: !2313, line: 1354, baseType: !248, size: 64, offset: 20800)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3804, file: !2313, line: 1364, baseType: !1029, size: 64, offset: 20864)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3804, file: !2313, line: 1365, baseType: !1029, size: 64, offset: 20928)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3804, file: !2313, line: 1412, baseType: !248, size: 64, offset: 20992)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3804, file: !2313, line: 1453, baseType: !3216, size: 64, offset: 21056)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3804, file: !2313, line: 1457, baseType: !4932, size: 64, offset: 21120)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !439, line: 61, size: 576, elements: !4934)
!4934 = !{!4935, !4936, !4955, !4958, !4959, !4992, !5002}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4933, file: !439, line: 62, baseType: !438, size: 32)
!4936 = !DIDerivedType(tag: DW_TAG_member, scope: !4933, file: !439, line: 64, baseType: !4937, size: 192, offset: 64)
!4937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4933, file: !439, line: 64, size: 192, elements: !4938)
!4938 = !{!4939, !4950}
!4939 = !DIDerivedType(tag: DW_TAG_member, scope: !4937, file: !439, line: 65, baseType: !4940, size: 192)
!4940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4937, file: !439, line: 65, size: 192, elements: !4941)
!4941 = !{!4942, !4949}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4940, file: !439, line: 66, baseType: !4943, size: 128)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4944, line: 50, size: 128, elements: !4945)
!4944 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4945 = !{!4946, !4947, !4948}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4943, file: !4944, line: 52, baseType: !248, size: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4943, file: !4944, line: 54, baseType: !7, size: 32, offset: 64)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4943, file: !4944, line: 55, baseType: !7, size: 32, offset: 96)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4940, file: !439, line: 67, baseType: !248, size: 64, offset: 128)
!4950 = !DIDerivedType(tag: DW_TAG_member, scope: !4937, file: !439, line: 70, baseType: !4951, size: 192)
!4951 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4937, file: !439, line: 70, size: 192, elements: !4952)
!4952 = !{!4953, !4954}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4951, file: !439, line: 71, baseType: !1283, size: 128, align: 64)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4951, file: !439, line: 72, baseType: !248, size: 64, offset: 128)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4933, file: !439, line: 76, baseType: !4956, size: 64, offset: 256)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !439, line: 76, flags: DIFlagFwdDecl)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4933, file: !439, line: 77, baseType: !248, size: 64, offset: 320)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4933, file: !439, line: 79, baseType: !4960, size: 64, offset: 384)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4944, line: 25, size: 256, elements: !4962)
!4962 = !{!4963, !4969, !4973}
!4963 = !DIDerivedType(tag: DW_TAG_member, scope: !4961, file: !4944, line: 26, baseType: !4964, size: 128)
!4964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4961, file: !4944, line: 26, size: 128, elements: !4965)
!4965 = !{!4966, !4968}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4964, file: !4944, line: 27, baseType: !4967, size: 128)
!4967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 128, elements: !591)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4964, file: !4944, line: 28, baseType: !4967, size: 128)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4961, file: !4944, line: 31, baseType: !4970, size: 64, offset: 128)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4972)
!4972 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4944, line: 23, flags: DIFlagFwdDecl)
!4973 = !DIDerivedType(tag: DW_TAG_member, scope: !4961, file: !4944, line: 33, baseType: !4974, size: 64, offset: 192)
!4974 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4961, file: !4944, line: 33, size: 64, elements: !4975)
!4975 = !{!4976, !4982, !4987}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4974, file: !4944, line: 38, baseType: !4977, size: 64)
!4977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4974, file: !4944, line: 34, size: 64, elements: !4978)
!4978 = !{!4979, !4980, !4981}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4977, file: !4944, line: 35, baseType: !1401, size: 32)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4977, file: !4944, line: 36, baseType: !292, size: 8, offset: 32)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4977, file: !4944, line: 37, baseType: !292, size: 8, offset: 40)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4974, file: !4944, line: 42, baseType: !4983, size: 16)
!4983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4974, file: !4944, line: 39, size: 16, elements: !4984)
!4984 = !{!4985, !4986}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4983, file: !4944, line: 40, baseType: !292, size: 8)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4983, file: !4944, line: 41, baseType: !292, size: 8, offset: 8)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4974, file: !4944, line: 46, baseType: !4988, size: 16)
!4988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4974, file: !4944, line: 43, size: 16, elements: !4989)
!4989 = !{!4990, !4991}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4988, file: !4944, line: 44, baseType: !292, size: 8)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4988, file: !4944, line: 45, baseType: !292, size: 8, offset: 8)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4933, file: !439, line: 81, baseType: !4993, size: 64, offset: 448)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !439, line: 85, size: 384, elements: !4995)
!4995 = !{!4996, !4997, !4998, !4999, !5000, !5001}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4994, file: !439, line: 86, baseType: !4956, size: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4994, file: !439, line: 87, baseType: !248, size: 64, offset: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4994, file: !439, line: 88, baseType: !248, size: 64, offset: 128)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4994, file: !439, line: 89, baseType: !248, size: 64, offset: 192)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4994, file: !439, line: 90, baseType: !498, size: 8, offset: 256)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4994, file: !439, line: 92, baseType: !4993, size: 64, offset: 320)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4933, file: !439, line: 82, baseType: !7, size: 32, offset: 512)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3804, file: !2313, line: 1463, baseType: !5004, offset: 21184)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2313, line: 739, elements: !620)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3804, file: !2313, line: 1470, baseType: !1283, size: 128, align: 64, offset: 21184)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3804, file: !2313, line: 1471, baseType: !1328, size: 32, offset: 21312)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3804, file: !2313, line: 1472, baseType: !13, size: 32, offset: 21344)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3804, file: !2313, line: 1474, baseType: !3803, size: 64, offset: 21376)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3804, file: !2313, line: 1475, baseType: !2793, size: 320, offset: 21440)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3804, file: !2313, line: 1478, baseType: !5011, size: 64, offset: 21760)
!5011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5012, size: 64)
!5012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !5013, line: 49, size: 512, elements: !5014)
!5013 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!5014 = !{!5015, !5016, !5017, !5018, !5019, !5021, !5022, !5023, !5025}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5012, file: !5013, line: 50, baseType: !5011, size: 64)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5012, file: !5013, line: 51, baseType: !230, size: 64, offset: 64)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5012, file: !5013, line: 52, baseType: !248, size: 64, offset: 128)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5012, file: !5013, line: 53, baseType: !248, size: 64, offset: 192)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5012, file: !5013, line: 54, baseType: !5020, size: 64, offset: 256)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !5012, file: !5013, line: 56, baseType: !7, size: 32, offset: 320)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !5012, file: !5013, line: 58, baseType: !7, size: 32, offset: 352)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !5012, file: !5013, line: 59, baseType: !5024, size: 64, offset: 384)
!5024 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !234, line: 159, baseType: !1029)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !5012, file: !5013, line: 60, baseType: !614, size: 64, offset: 448)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3804, file: !2313, line: 1482, baseType: !1328, size: 32, offset: 21824)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3804, file: !2313, line: 1489, baseType: !230, size: 64, offset: 21888)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3804, file: !2313, line: 1504, baseType: !230, size: 64, offset: 21952)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3804, file: !2313, line: 1505, baseType: !1030, size: 64, offset: 22016)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3804, file: !2313, line: 1506, baseType: !1029, size: 64, offset: 22080)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3804, file: !2313, line: 1507, baseType: !1030, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3804, file: !2313, line: 1508, baseType: !1030, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3804, file: !2313, line: 1509, baseType: !1030, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3804, file: !2313, line: 1510, baseType: !1283, size: 128, align: 64, offset: 22208)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3804, file: !2313, line: 1511, baseType: !13, size: 32, offset: 22336)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3804, file: !2313, line: 1515, baseType: !5037, size: 64, offset: 22400)
!5037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1278, line: 56, size: 64, elements: !5038)
!5038 = !{!5039}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5037, file: !1278, line: 57, baseType: !1281, size: 64)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3804, file: !2313, line: 1518, baseType: !5037, size: 64, offset: 22464)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3804, file: !2313, line: 1528, baseType: !1283, size: 128, align: 64, offset: 22528)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3804, file: !2313, line: 1552, baseType: !5043, size: 35328, offset: 23040)
!5043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5044, line: 430, size: 35328, elements: !5045)
!5044 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5045 = !{!5046, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5075, !5076, !5077, !5078, !5079, !5080, !5083, !5084, !5085, !5086}
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5043, file: !5044, line: 432, baseType: !5047, size: 192)
!5047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5048, size: 192, elements: !1197)
!5048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5049, line: 16, size: 64, elements: !5050)
!5049 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5050 = !{!5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5048, file: !5049, line: 17, baseType: !302, size: 16)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5048, file: !5049, line: 18, baseType: !302, size: 16, offset: 16)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5048, file: !5049, line: 19, baseType: !302, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5048, file: !5049, line: 19, baseType: !302, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5048, file: !5049, line: 19, baseType: !302, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5048, file: !5049, line: 19, baseType: !302, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5048, file: !5049, line: 19, baseType: !302, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5048, file: !5049, line: 20, baseType: !302, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5048, file: !5049, line: 20, baseType: !302, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5048, file: !5049, line: 20, baseType: !302, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5048, file: !5049, line: 20, baseType: !302, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5048, file: !5049, line: 20, baseType: !302, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5048, file: !5049, line: 20, baseType: !302, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5043, file: !5044, line: 436, baseType: !248, size: 64, offset: 192)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5043, file: !5044, line: 440, baseType: !235, size: 16, offset: 256)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5043, file: !5044, line: 441, baseType: !235, size: 16, offset: 272)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5043, file: !5044, line: 442, baseType: !235, size: 16, offset: 288)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5043, file: !5044, line: 443, baseType: !235, size: 16, offset: 304)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5043, file: !5044, line: 447, baseType: !248, size: 64, offset: 320)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5043, file: !5044, line: 448, baseType: !248, size: 64, offset: 384)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5043, file: !5044, line: 459, baseType: !5072, size: 256, offset: 448)
!5072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5073, size: 256, elements: !1346)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !5044, line: 428, flags: DIFlagFwdDecl)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5043, file: !5044, line: 461, baseType: !248, size: 64, offset: 704)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5043, file: !5044, line: 463, baseType: !248, size: 64, offset: 768)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5043, file: !5044, line: 465, baseType: !248, size: 64, offset: 832)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5043, file: !5044, line: 466, baseType: !248, size: 64, offset: 896)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5043, file: !5044, line: 467, baseType: !248, size: 64, offset: 960)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5043, file: !5044, line: 473, baseType: !5081, size: 64, offset: 1024)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5044, line: 10, flags: DIFlagFwdDecl)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5043, file: !5044, line: 480, baseType: !248, size: 64, offset: 1088)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5043, file: !5044, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5043, file: !5044, line: 491, baseType: !1025, size: 32, offset: 1184)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5043, file: !5044, line: 501, baseType: !5087, size: 33792, offset: 1536)
!5087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5088, line: 448, size: 33792, elements: !5089)
!5088 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5089 = !{!5090, !5091, !5092, !5252, !5253, !5259, !5260}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5087, file: !5088, line: 461, baseType: !7, size: 32)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5087, file: !5088, line: 468, baseType: !248, size: 64, offset: 64)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5087, file: !5088, line: 476, baseType: !5093, size: 64, offset: 128)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5088, line: 356, size: 33280, align: 512, elements: !5095)
!5095 = !{!5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5094, file: !5088, line: 358, baseType: !7, size: 32)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5094, file: !5088, line: 361, baseType: !7, size: 32, offset: 32)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5094, file: !5088, line: 364, baseType: !1029, size: 64, offset: 64)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5094, file: !5088, line: 367, baseType: !1029, size: 64, offset: 128)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5094, file: !5088, line: 370, baseType: !1029, size: 64, offset: 192)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5094, file: !5088, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5094, file: !5088, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5094, file: !5088, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5094, file: !5088, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5094, file: !5088, line: 397, baseType: !5106, size: 32768, offset: 512)
!5106 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5088, line: 348, size: 32768, elements: !5107)
!5107 = !{!5108, !5123, !5160, !5237, !5250}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5106, file: !5088, line: 349, baseType: !5109, size: 896)
!5109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5088, line: 12, size: 896, elements: !5110)
!5110 = !{!5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5122}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5109, file: !5088, line: 13, baseType: !1025, size: 32)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5109, file: !5088, line: 14, baseType: !1025, size: 32, offset: 32)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5109, file: !5088, line: 15, baseType: !1025, size: 32, offset: 64)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5109, file: !5088, line: 16, baseType: !1025, size: 32, offset: 96)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5109, file: !5088, line: 17, baseType: !1025, size: 32, offset: 128)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5109, file: !5088, line: 18, baseType: !1025, size: 32, offset: 160)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5109, file: !5088, line: 19, baseType: !1025, size: 32, offset: 192)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5109, file: !5088, line: 22, baseType: !5119, size: 640, offset: 224)
!5119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1025, size: 640, elements: !5120)
!5120 = !{!5121}
!5121 = !DISubrange(count: 20)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5109, file: !5088, line: 25, baseType: !1025, size: 32, offset: 864)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5106, file: !5088, line: 350, baseType: !5124, size: 4096, align: 128)
!5124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5088, line: 34, size: 4096, align: 128, elements: !5125)
!5125 = !{!5126, !5127, !5128, !5129, !5130, !5145, !5146, !5147, !5149, !5151, !5155}
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5124, file: !5088, line: 35, baseType: !302, size: 16)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5124, file: !5088, line: 36, baseType: !302, size: 16, offset: 16)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5124, file: !5088, line: 37, baseType: !302, size: 16, offset: 32)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5124, file: !5088, line: 38, baseType: !302, size: 16, offset: 48)
!5130 = !DIDerivedType(tag: DW_TAG_member, scope: !5124, file: !5088, line: 39, baseType: !5131, size: 128, offset: 64)
!5131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5124, file: !5088, line: 39, size: 128, elements: !5132)
!5132 = !{!5133, !5138}
!5133 = !DIDerivedType(tag: DW_TAG_member, scope: !5131, file: !5088, line: 40, baseType: !5134, size: 128)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5131, file: !5088, line: 40, size: 128, elements: !5135)
!5135 = !{!5136, !5137}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5134, file: !5088, line: 41, baseType: !1029, size: 64)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5134, file: !5088, line: 42, baseType: !1029, size: 64, offset: 64)
!5138 = !DIDerivedType(tag: DW_TAG_member, scope: !5131, file: !5088, line: 44, baseType: !5139, size: 128)
!5139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5131, file: !5088, line: 44, size: 128, elements: !5140)
!5140 = !{!5141, !5142, !5143, !5144}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5139, file: !5088, line: 45, baseType: !1025, size: 32)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5139, file: !5088, line: 46, baseType: !1025, size: 32, offset: 32)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5139, file: !5088, line: 47, baseType: !1025, size: 32, offset: 64)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5139, file: !5088, line: 48, baseType: !1025, size: 32, offset: 96)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5124, file: !5088, line: 51, baseType: !1025, size: 32, offset: 192)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5124, file: !5088, line: 52, baseType: !1025, size: 32, offset: 224)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5124, file: !5088, line: 55, baseType: !5148, size: 1024, offset: 256)
!5148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1025, size: 1024, elements: !1038)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5124, file: !5088, line: 58, baseType: !5150, size: 2048, offset: 1280)
!5150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1025, size: 2048, elements: !1201)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5124, file: !5088, line: 60, baseType: !5152, size: 384, offset: 3328)
!5152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1025, size: 384, elements: !5153)
!5153 = !{!5154}
!5154 = !DISubrange(count: 12)
!5155 = !DIDerivedType(tag: DW_TAG_member, scope: !5124, file: !5088, line: 62, baseType: !5156, size: 384, offset: 3712)
!5156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5124, file: !5088, line: 62, size: 384, elements: !5157)
!5157 = !{!5158, !5159}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5156, file: !5088, line: 63, baseType: !5152, size: 384)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5156, file: !5088, line: 64, baseType: !5152, size: 384)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5106, file: !5088, line: 351, baseType: !5161, size: 1088)
!5161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5088, line: 79, size: 1088, elements: !5162)
!5162 = !{!5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5236}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5161, file: !5088, line: 80, baseType: !1025, size: 32)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5161, file: !5088, line: 81, baseType: !1025, size: 32, offset: 32)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5161, file: !5088, line: 82, baseType: !1025, size: 32, offset: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5161, file: !5088, line: 83, baseType: !1025, size: 32, offset: 96)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5161, file: !5088, line: 84, baseType: !1025, size: 32, offset: 128)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5161, file: !5088, line: 85, baseType: !1025, size: 32, offset: 160)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5161, file: !5088, line: 86, baseType: !1025, size: 32, offset: 192)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5161, file: !5088, line: 88, baseType: !5119, size: 640, offset: 224)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5161, file: !5088, line: 89, baseType: !292, size: 8, offset: 864)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5161, file: !5088, line: 90, baseType: !292, size: 8, offset: 872)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5161, file: !5088, line: 91, baseType: !292, size: 8, offset: 880)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5161, file: !5088, line: 92, baseType: !292, size: 8, offset: 888)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5161, file: !5088, line: 93, baseType: !292, size: 8, offset: 896)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5161, file: !5088, line: 94, baseType: !292, size: 8, offset: 904)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5161, file: !5088, line: 95, baseType: !5178, size: 64, offset: 960)
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5180, line: 11, size: 128, elements: !5181)
!5180 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5181 = !{!5182, !5183}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5179, file: !5180, line: 12, baseType: !1231, size: 64)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5179, file: !5180, line: 13, baseType: !5184, size: 64, offset: 64)
!5184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5185, size: 64)
!5185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5186, line: 103, size: 1344, elements: !5187)
!5186 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5187 = !{!5188, !5189, !5190, !5191, !5192, !5193, !5194, !5195, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5203, !5204, !5205, !5216, !5217, !5218}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5185, file: !5186, line: 109, baseType: !248, size: 64)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5185, file: !5186, line: 110, baseType: !248, size: 64, offset: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5185, file: !5186, line: 111, baseType: !248, size: 64, offset: 128)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5185, file: !5186, line: 112, baseType: !248, size: 64, offset: 192)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5185, file: !5186, line: 113, baseType: !248, size: 64, offset: 256)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5185, file: !5186, line: 114, baseType: !248, size: 64, offset: 320)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5185, file: !5186, line: 117, baseType: !248, size: 64, offset: 384)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5185, file: !5186, line: 118, baseType: !248, size: 64, offset: 448)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5185, file: !5186, line: 119, baseType: !248, size: 64, offset: 512)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5185, file: !5186, line: 120, baseType: !248, size: 64, offset: 576)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5185, file: !5186, line: 121, baseType: !248, size: 64, offset: 640)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5185, file: !5186, line: 122, baseType: !248, size: 64, offset: 704)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5185, file: !5186, line: 123, baseType: !248, size: 64, offset: 768)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5185, file: !5186, line: 124, baseType: !248, size: 64, offset: 832)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5185, file: !5186, line: 125, baseType: !248, size: 64, offset: 896)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5185, file: !5186, line: 139, baseType: !248, size: 64, offset: 960)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5185, file: !5186, line: 142, baseType: !248, size: 64, offset: 1024)
!5205 = !DIDerivedType(tag: DW_TAG_member, scope: !5185, file: !5186, line: 144, baseType: !5206, size: 64, offset: 1088)
!5206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5185, file: !5186, line: 144, size: 64, elements: !5207)
!5207 = !{!5208, !5209, !5210}
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5206, file: !5186, line: 146, baseType: !302, size: 16)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5206, file: !5186, line: 148, baseType: !1029, size: 64)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5206, file: !5186, line: 150, baseType: !5211, size: 64)
!5211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5186, line: 59, size: 64, elements: !5212)
!5212 = !{!5213, !5214, !5215}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5211, file: !5186, line: 61, baseType: !1029, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5211, file: !5186, line: 63, baseType: !1029, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5211, file: !5186, line: 65, baseType: !1029, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5185, file: !5186, line: 153, baseType: !248, size: 64, offset: 1152)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5185, file: !5186, line: 154, baseType: !248, size: 64, offset: 1216)
!5218 = !DIDerivedType(tag: DW_TAG_member, scope: !5185, file: !5186, line: 156, baseType: !5219, size: 64, offset: 1280)
!5219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5185, file: !5186, line: 156, size: 64, elements: !5220)
!5220 = !{!5221, !5222, !5223}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5219, file: !5186, line: 158, baseType: !302, size: 16)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5219, file: !5186, line: 160, baseType: !1029, size: 64)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5219, file: !5186, line: 162, baseType: !5224, size: 64)
!5224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5186, line: 69, size: 64, elements: !5225)
!5225 = !{!5226, !5227, !5228, !5229, !5230, !5231, !5232, !5233, !5234, !5235}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5224, file: !5186, line: 71, baseType: !1029, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5224, file: !5186, line: 73, baseType: !1029, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5224, file: !5186, line: 75, baseType: !1029, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5224, file: !5186, line: 77, baseType: !1029, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5224, file: !5186, line: 80, baseType: !1029, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5224, file: !5186, line: 83, baseType: !1029, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5224, file: !5186, line: 86, baseType: !1029, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5224, file: !5186, line: 88, baseType: !1029, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5224, file: !5186, line: 93, baseType: !1029, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5224, file: !5186, line: 100, baseType: !1029, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5161, file: !5088, line: 96, baseType: !1025, size: 32, offset: 1024)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5106, file: !5088, line: 352, baseType: !5238, size: 4608, align: 512)
!5238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5088, line: 333, size: 4608, align: 512, elements: !5239)
!5239 = !{!5240, !5241, !5248}
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5238, file: !5088, line: 334, baseType: !5124, size: 4096, align: 128)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5238, file: !5088, line: 335, baseType: !5242, size: 512, offset: 4096)
!5242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5088, line: 312, size: 512, elements: !5243)
!5243 = !{!5244, !5245, !5246}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5242, file: !5088, line: 313, baseType: !1029, size: 64)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5242, file: !5088, line: 314, baseType: !1029, size: 64, offset: 64)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5242, file: !5088, line: 315, baseType: !5247, size: 384, offset: 128)
!5247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 384, elements: !1462)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5238, file: !5088, line: 336, baseType: !5249, offset: 4608)
!5249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, elements: !1359)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5106, file: !5088, line: 353, baseType: !5251, size: 32768)
!5251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 32768, elements: !4259)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5087, file: !5088, line: 484, baseType: !5093, size: 64, offset: 192)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5087, file: !5088, line: 491, baseType: !5254, size: 128, offset: 256)
!5254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5088, line: 404, size: 128, elements: !5255)
!5255 = !{!5256, !5257, !5258}
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5254, file: !5088, line: 424, baseType: !1029, size: 64)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5254, file: !5088, line: 432, baseType: !7, size: 32, offset: 64)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5254, file: !5088, line: 440, baseType: !7, size: 32, offset: 96)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5087, file: !5088, line: 498, baseType: !5254, size: 128, offset: 384)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5087, file: !5088, line: 508, baseType: !5094, size: 33280, align: 512, offset: 512)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3786, file: !3787, line: 16, baseType: !263, size: 192, offset: 512)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3786, file: !3787, line: 17, baseType: !258, size: 32, offset: 704)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1109, file: !352, line: 1240, baseType: !230, size: 64, offset: 6912)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1109, file: !352, line: 1243, baseType: !1025, size: 32, offset: 6976)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1109, file: !352, line: 1245, baseType: !1432, size: 64, offset: 7040)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1109, file: !352, line: 1246, baseType: !1432, size: 64, offset: 7104)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1109, file: !352, line: 1248, baseType: !1026, size: 32, offset: 7168)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1109, file: !352, line: 1249, baseType: !5269, size: 64, offset: 7232)
!5269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5270 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !352, line: 634, flags: DIFlagFwdDecl)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1109, file: !352, line: 1252, baseType: !4612, size: 256, offset: 7296)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1109, file: !352, line: 1253, baseType: !5273, size: 128, offset: 7552)
!5273 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !5274, line: 21, baseType: !5275)
!5274 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!5275 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5274, line: 19, size: 128, elements: !5276)
!5276 = !{!5277}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5275, file: !5274, line: 20, baseType: !5278, size: 128)
!5278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 128, elements: !591)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1109, file: !352, line: 1255, baseType: !7, size: 32, offset: 7680)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1109, file: !352, line: 1261, baseType: !501, size: 256, offset: 7744)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1109, file: !352, line: 1267, baseType: !226, size: 64, offset: 8000)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1109, file: !352, line: 1269, baseType: !1054, size: 64, offset: 8064)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1109, file: !352, line: 1271, baseType: !5284, size: 448, offset: 8128)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3049, line: 63, size: 448, elements: !5285)
!5285 = !{!5286, !5291, !5292, !5293, !5294, !5295, !5296}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5284, file: !3049, line: 64, baseType: !5287, size: 64)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!248, !5290, !3047}
!5290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5284, file: !3049, line: 66, baseType: !5287, size: 64, offset: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5284, file: !3049, line: 69, baseType: !1231, size: 64, offset: 128)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5284, file: !3049, line: 70, baseType: !13, size: 32, offset: 192)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5284, file: !3049, line: 71, baseType: !7, size: 32, offset: 224)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5284, file: !3049, line: 74, baseType: !306, size: 128, offset: 256)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5284, file: !3049, line: 85, baseType: !5297, size: 64, offset: 384)
!5297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1109, file: !352, line: 1274, baseType: !505, size: 64, offset: 8576)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1109, file: !352, line: 1280, baseType: !505, size: 64, offset: 8640)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1109, file: !352, line: 1283, baseType: !13, size: 32, offset: 8704)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1109, file: !352, line: 1286, baseType: !2400, size: 32, offset: 8736)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1109, file: !352, line: 1289, baseType: !2854, size: 64, offset: 8768)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1109, file: !352, line: 1290, baseType: !1337, size: 64, offset: 8832)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1109, file: !352, line: 1297, baseType: !1556, size: 64, offset: 8896)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1109, file: !352, line: 1304, baseType: !5306, size: 64, offset: 8960)
!5306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5307, line: 49, size: 64, elements: !5308)
!5307 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5308 = !{!5309}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5306, file: !5307, line: 50, baseType: !5310, size: 64)
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5307, line: 41, size: 512, align: 512, elements: !5312)
!5312 = !{!5313, !5314, !5319}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5311, file: !5307, line: 43, baseType: !268, size: 32)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5311, file: !5307, line: 45, baseType: !5315, size: 192, offset: 64)
!5315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5307, line: 29, size: 192, elements: !5316)
!5316 = !{!5317, !5318}
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5315, file: !5307, line: 30, baseType: !306, size: 128)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5315, file: !5307, line: 32, baseType: !1231, size: 64, offset: 128)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5311, file: !5307, line: 46, baseType: !1231, size: 64, offset: 256)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1109, file: !352, line: 1305, baseType: !5306, size: 64, offset: 9024)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1109, file: !352, line: 1306, baseType: !1283, size: 128, align: 64, offset: 9088)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1109, file: !352, line: 1307, baseType: !1605, size: 256, offset: 9216)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1109, file: !352, line: 1309, baseType: !501, size: 256, offset: 9472)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1109, file: !352, line: 1314, baseType: !13, size: 32, offset: 9728)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1109, file: !352, line: 1317, baseType: !268, size: 32, align: 512, offset: 10240)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1109, file: !352, line: 1318, baseType: !306, size: 128, offset: 10304)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1109, file: !352, line: 1320, baseType: !268, size: 32, offset: 10432)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1109, file: !352, line: 1321, baseType: !306, size: 128, offset: 10496)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1103, file: !1104, line: 73, baseType: !13, size: 32, offset: 128)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1103, file: !1104, line: 74, baseType: !5331, size: 64, offset: 192)
!5331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5332, size: 64)
!5332 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1383, line: 42, flags: DIFlagFwdDecl)
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1056, file: !993, line: 141, baseType: !5335, size: 64, offset: 704)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{!13, !3109, !498}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1056, file: !993, line: 142, baseType: !5339, size: 64, offset: 768)
!5339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5340, size: 64)
!5340 = !DISubroutineType(types: !5341)
!5341 = !{!991, !991, !5342}
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !957)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !992, file: !993, line: 96, baseType: !1108, size: 64, offset: 832)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !992, file: !993, line: 97, baseType: !248, size: 64, offset: 896)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !992, file: !993, line: 98, baseType: !230, size: 64, offset: 960)
!5347 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !993, line: 100, baseType: !5348, size: 128, offset: 1024)
!5348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !993, line: 100, size: 128, elements: !5349)
!5349 = !{!5350, !5351}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5348, file: !993, line: 101, baseType: !306, size: 128)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5348, file: !993, line: 102, baseType: !5352, size: 64)
!5352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !992, file: !993, line: 104, baseType: !306, size: 128, offset: 1152)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !992, file: !993, line: 105, baseType: !306, size: 128, offset: 1280)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !992, file: !993, line: 113, baseType: !5356, size: 128, offset: 1408)
!5356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !993, line: 109, size: 128, elements: !5357)
!5357 = !{!5358, !5359, !5360}
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5356, file: !993, line: 110, baseType: !1341, size: 128)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5356, file: !993, line: 111, baseType: !1007, size: 128)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5356, file: !993, line: 112, baseType: !1283, size: 128, align: 64)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !985, file: !352, line: 1968, baseType: !5362, size: 64, offset: 64)
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5363, size: 64)
!5363 = !DISubroutineType(types: !5364)
!5364 = !{!226, !991, !956, !5365}
!5365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5366, size: 64)
!5366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !5367, line: 10, size: 128, elements: !5368)
!5367 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!5368 = !{!5369, !5370}
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5366, file: !5367, line: 11, baseType: !2440, size: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5366, file: !5367, line: 12, baseType: !230, size: 64, offset: 64)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !985, file: !352, line: 1969, baseType: !5372, size: 64, offset: 128)
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5373, size: 64)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{!13, !5331, !956, !13}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !985, file: !352, line: 1970, baseType: !5376, size: 64, offset: 192)
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5377, size: 64)
!5377 = !DISubroutineType(types: !5378)
!5378 = !{!979, !956, !13, !498}
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !985, file: !352, line: 1972, baseType: !5380, size: 64, offset: 256)
!5380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5381, size: 64)
!5381 = !DISubroutineType(types: !5382)
!5382 = !{!13, !991, !1097, !13}
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !985, file: !352, line: 1974, baseType: !5384, size: 64, offset: 320)
!5384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5385, size: 64)
!5385 = !DISubroutineType(types: !5386)
!5386 = !{!13, !5331, !956, !991, !233, !498}
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !985, file: !352, line: 1976, baseType: !5388, size: 64, offset: 384)
!5388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5389, size: 64)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{!13, !991, !956, !991}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !985, file: !352, line: 1977, baseType: !5392, size: 64, offset: 448)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!13, !956, !991}
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !985, file: !352, line: 1978, baseType: !5396, size: 64, offset: 512)
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5397, size: 64)
!5397 = !DISubroutineType(types: !5398)
!5398 = !{!13, !5331, !956, !991, !226}
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !985, file: !352, line: 1980, baseType: !5400, size: 64, offset: 576)
!5400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5401, size: 64)
!5401 = !DISubroutineType(types: !5402)
!5402 = !{!13, !5331, !956, !991, !233}
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !985, file: !352, line: 1982, baseType: !5392, size: 64, offset: 640)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !985, file: !352, line: 1983, baseType: !5405, size: 64, offset: 704)
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5406, size: 64)
!5406 = !DISubroutineType(types: !5407)
!5407 = !{!13, !5331, !956, !991, !233, !1113}
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !985, file: !352, line: 1985, baseType: !5409, size: 64, offset: 768)
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{!13, !5331, !956, !991, !956, !991, !7}
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !985, file: !352, line: 1987, baseType: !5413, size: 64, offset: 832)
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5414 = !DISubroutineType(types: !5415)
!5415 = !{!13, !5331, !991, !5416}
!5416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5417, size: 64)
!5417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !352, line: 226, size: 640, elements: !5418)
!5418 = !{!5419, !5420, !5421, !5431, !5440, !5441, !5446, !5447, !5448}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5417, file: !352, line: 227, baseType: !7, size: 32)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5417, file: !352, line: 228, baseType: !233, size: 16, offset: 32)
!5421 = !DIDerivedType(tag: DW_TAG_member, scope: !5417, file: !352, line: 241, baseType: !5422, size: 32, offset: 64)
!5422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5417, file: !352, line: 241, size: 32, elements: !5423)
!5423 = !{!5424, !5425}
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5422, file: !352, line: 242, baseType: !962, size: 32)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5422, file: !352, line: 243, baseType: !5426, size: 32)
!5426 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5427, line: 16, baseType: !5428)
!5427 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5428 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5427, line: 14, size: 32, elements: !5429)
!5429 = !{!5430}
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5428, file: !5427, line: 15, baseType: !967, size: 32)
!5431 = !DIDerivedType(tag: DW_TAG_member, scope: !5417, file: !352, line: 245, baseType: !5432, size: 32, offset: 96)
!5432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5417, file: !352, line: 245, size: 32, elements: !5433)
!5433 = !{!5434, !5435}
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5432, file: !352, line: 246, baseType: !971, size: 32)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5432, file: !352, line: 247, baseType: !5436, size: 32)
!5436 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5427, line: 20, baseType: !5437)
!5437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5427, line: 18, size: 32, elements: !5438)
!5438 = !{!5439}
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5437, file: !5427, line: 19, baseType: !975, size: 32)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5417, file: !352, line: 249, baseType: !250, size: 64, offset: 128)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5417, file: !352, line: 250, baseType: !5442, size: 128, offset: 192)
!5442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1433, line: 13, size: 128, elements: !5443)
!5443 = !{!5444, !5445}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5442, file: !1433, line: 14, baseType: !1432, size: 64)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5442, file: !1433, line: 15, baseType: !1231, size: 64, offset: 64)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5417, file: !352, line: 251, baseType: !5442, size: 128, offset: 320)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5417, file: !352, line: 252, baseType: !5442, size: 128, offset: 448)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5417, file: !352, line: 259, baseType: !1270, size: 64, offset: 576)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !985, file: !352, line: 1988, baseType: !5450, size: 64, offset: 896)
!5450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5451, size: 64)
!5451 = !DISubroutineType(types: !5452)
!5452 = !{!13, !5331, !3109, !5453, !1025, !7}
!5453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5454, size: 64)
!5454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5455, line: 22, size: 1280, elements: !5456)
!5455 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5456 = !{!5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475, !5476, !5477}
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5454, file: !5455, line: 23, baseType: !1025, size: 32)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5454, file: !5455, line: 24, baseType: !233, size: 16, offset: 32)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5454, file: !5455, line: 25, baseType: !7, size: 32, offset: 64)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5454, file: !5455, line: 26, baseType: !1440, size: 32, offset: 96)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5454, file: !5455, line: 27, baseType: !1029, size: 64, offset: 128)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5454, file: !5455, line: 28, baseType: !1029, size: 64, offset: 192)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5454, file: !5455, line: 41, baseType: !1029, size: 64, offset: 256)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5454, file: !5455, line: 42, baseType: !1113, size: 32, offset: 320)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5454, file: !5455, line: 43, baseType: !1113, size: 32, offset: 352)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5454, file: !5455, line: 44, baseType: !962, size: 32, offset: 384)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5454, file: !5455, line: 45, baseType: !971, size: 32, offset: 416)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5454, file: !5455, line: 46, baseType: !250, size: 64, offset: 448)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5454, file: !5455, line: 47, baseType: !5442, size: 128, offset: 512)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5454, file: !5455, line: 48, baseType: !5442, size: 128, offset: 640)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5454, file: !5455, line: 49, baseType: !5442, size: 128, offset: 768)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5454, file: !5455, line: 50, baseType: !5442, size: 128, offset: 896)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5454, file: !5455, line: 51, baseType: !1029, size: 64, offset: 1024)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5454, file: !5455, line: 52, baseType: !1029, size: 64, offset: 1088)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5454, file: !5455, line: 53, baseType: !1025, size: 32, offset: 1152)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5454, file: !5455, line: 54, baseType: !1025, size: 32, offset: 1184)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5454, file: !5455, line: 55, baseType: !1029, size: 64, offset: 1216)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !985, file: !352, line: 1990, baseType: !5479, size: 64, offset: 960)
!5479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5480, size: 64)
!5480 = !DISubroutineType(types: !5481)
!5481 = !{!1228, !991, !1097, !244}
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !985, file: !352, line: 1991, baseType: !5483, size: 64, offset: 1024)
!5483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5484, size: 64)
!5484 = !DISubroutineType(types: !5485)
!5485 = !{!13, !956, !5486, !1029, !1029}
!5486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5487, size: 64)
!5487 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !352, line: 55, flags: DIFlagFwdDecl)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !985, file: !352, line: 1993, baseType: !5489, size: 64, offset: 1088)
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5490, size: 64)
!5490 = !DISubroutineType(types: !5491)
!5491 = !{!13, !956, !13}
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !985, file: !352, line: 1994, baseType: !5493, size: 64, offset: 1152)
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5494, size: 64)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{!13, !956, !991, !1270, !7, !233}
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !985, file: !352, line: 1997, baseType: !5497, size: 64, offset: 1216)
!5497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5498, size: 64)
!5498 = !DISubroutineType(types: !5499)
!5499 = !{!13, !5331, !956, !1270, !233}
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !985, file: !352, line: 1999, baseType: !5501, size: 64, offset: 1280)
!5501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5502 = !DISubroutineType(types: !5503)
!5503 = !{!979, !5331, !991, !13}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !985, file: !352, line: 2001, baseType: !5505, size: 64, offset: 1344)
!5505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5506, size: 64)
!5506 = !DISubroutineType(types: !5507)
!5507 = !{!13, !5331, !991, !979, !13}
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !985, file: !352, line: 2003, baseType: !5509, size: 64, offset: 1408)
!5509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5510, size: 64)
!5510 = !DISubroutineType(types: !5511)
!5511 = !{!13, !5331, !991, !5512}
!5512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5513, size: 64)
!5513 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !352, line: 76, flags: DIFlagFwdDecl)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !985, file: !352, line: 2005, baseType: !5515, size: 64, offset: 1472)
!5515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5516, size: 64)
!5516 = !DISubroutineType(types: !5517)
!5517 = !{!13, !991, !5512}
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !985, file: !352, line: 2006, baseType: !5519, size: 64, offset: 1536)
!5519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5520, size: 64)
!5520 = !DISubroutineType(types: !5521)
!5521 = !{!5522, !956}
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !352, line: 3192, size: 192, elements: !5524)
!5524 = !{!5525, !5526}
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5523, file: !352, line: 3193, baseType: !4383, size: 128)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5523, file: !352, line: 3194, baseType: !1025, size: 32, offset: 128)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !957, file: !352, line: 655, baseType: !1108, size: 64, offset: 448)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !957, file: !352, line: 656, baseType: !952, size: 64, offset: 512)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !957, file: !352, line: 659, baseType: !230, size: 64, offset: 576)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !957, file: !352, line: 663, baseType: !248, size: 64, offset: 640)
!5531 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !352, line: 671, baseType: !5532, size: 32, offset: 704)
!5532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !352, line: 671, size: 32, elements: !5533)
!5533 = !{!5534, !5536}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5532, file: !352, line: 672, baseType: !5535, size: 32)
!5535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5532, file: !352, line: 673, baseType: !7, size: 32)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !957, file: !352, line: 675, baseType: !1113, size: 32, offset: 736)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !957, file: !352, line: 676, baseType: !250, size: 64, offset: 768)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !957, file: !352, line: 677, baseType: !5442, size: 128, offset: 832)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !957, file: !352, line: 678, baseType: !5442, size: 128, offset: 960)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !957, file: !352, line: 679, baseType: !5442, size: 128, offset: 1088)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !957, file: !352, line: 680, baseType: !268, size: 32, offset: 1216)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !957, file: !352, line: 681, baseType: !235, size: 16, offset: 1248)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !957, file: !352, line: 682, baseType: !292, size: 8, offset: 1264)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !957, file: !352, line: 683, baseType: !292, size: 8, offset: 1272)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !957, file: !352, line: 684, baseType: !3182, size: 64, offset: 1280)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !957, file: !352, line: 691, baseType: !248, size: 64, offset: 1344)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !957, file: !352, line: 692, baseType: !1416, size: 320, offset: 1408)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !957, file: !352, line: 694, baseType: !248, size: 64, offset: 1728)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !957, file: !352, line: 695, baseType: !248, size: 64, offset: 1792)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !957, file: !352, line: 697, baseType: !1341, size: 128, offset: 1856)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !957, file: !352, line: 698, baseType: !306, size: 128, offset: 1984)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !957, file: !352, line: 707, baseType: !306, size: 128, offset: 2112)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !957, file: !352, line: 708, baseType: !306, size: 128, offset: 2240)
!5555 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !352, line: 709, baseType: !5556, size: 128, offset: 2368)
!5556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !352, line: 709, size: 128, elements: !5557)
!5557 = !{!5558, !5559}
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5556, file: !352, line: 710, baseType: !1337, size: 64)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5556, file: !352, line: 711, baseType: !1283, size: 128, align: 64)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !957, file: !352, line: 713, baseType: !507, size: 64, offset: 2496)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !957, file: !352, line: 714, baseType: !507, size: 64, offset: 2560)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !957, file: !352, line: 715, baseType: !258, size: 32, offset: 2624)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !957, file: !352, line: 716, baseType: !258, size: 32, offset: 2656)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !957, file: !352, line: 717, baseType: !258, size: 32, offset: 2688)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !957, file: !352, line: 719, baseType: !258, size: 32, offset: 2720)
!5566 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !352, line: 721, baseType: !5567, size: 64, offset: 2752)
!5567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !352, line: 721, size: 64, elements: !5568)
!5568 = !{!5569, !5570}
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5567, file: !352, line: 722, baseType: !1739, size: 64)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5567, file: !352, line: 723, baseType: !2918, size: 64)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !957, file: !352, line: 725, baseType: !5572, size: 64, offset: 2816)
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5573, size: 64)
!5573 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !352, line: 725, flags: DIFlagFwdDecl)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !957, file: !352, line: 726, baseType: !953, size: 1536, align: 64, offset: 2880)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !957, file: !352, line: 727, baseType: !306, size: 128, offset: 4416)
!5576 = !DIDerivedType(tag: DW_TAG_member, scope: !957, file: !352, line: 728, baseType: !5577, size: 64, offset: 4544)
!5577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !957, file: !352, line: 728, size: 64, elements: !5578)
!5578 = !{!5579, !5580, !5583, !5584}
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5577, file: !352, line: 729, baseType: !2311, size: 64)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5577, file: !352, line: 730, baseType: !5581, size: 64)
!5581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5582, size: 64)
!5582 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !352, line: 730, flags: DIFlagFwdDecl)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5577, file: !352, line: 731, baseType: !1097, size: 64)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5577, file: !352, line: 732, baseType: !7, size: 32)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !957, file: !352, line: 735, baseType: !1026, size: 32, offset: 4608)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !957, file: !352, line: 738, baseType: !1026, size: 32, offset: 4640)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !957, file: !352, line: 739, baseType: !5269, size: 64, offset: 4672)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !957, file: !352, line: 750, baseType: !230, size: 64, offset: 4736)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !953, file: !352, line: 474, baseType: !4383, size: 128, offset: 64)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !953, file: !352, line: 475, baseType: !1416, size: 320, offset: 192)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !953, file: !352, line: 476, baseType: !541, size: 32, offset: 512)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !953, file: !352, line: 477, baseType: !258, size: 32, offset: 544)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !953, file: !352, line: 482, baseType: !3504, size: 128, offset: 576)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !953, file: !352, line: 483, baseType: !248, size: 64, offset: 704)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !953, file: !352, line: 484, baseType: !248, size: 64, offset: 768)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !953, file: !352, line: 485, baseType: !5597, size: 64, offset: 832)
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5598, size: 64)
!5598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5599)
!5599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !352, line: 404, size: 1280, elements: !5600)
!5600 = !{!5601, !5605, !5609, !5613, !5617, !5633, !5637, !5641, !5645, !5649, !5653, !5657, !5658, !5662, !5666, !5670, !5675, !5679, !5731, !5732}
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5599, file: !352, line: 405, baseType: !5602, size: 64)
!5602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5603, size: 64)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{!13, !2099, !2930}
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5599, file: !352, line: 406, baseType: !5606, size: 64, offset: 64)
!5606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5607, size: 64)
!5607 = !DISubroutineType(types: !5608)
!5608 = !{!13, !1270, !932}
!5609 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5599, file: !352, line: 409, baseType: !5610, size: 64, offset: 128)
!5610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5611, size: 64)
!5611 = !DISubroutineType(types: !5612)
!5612 = !{!13, !952, !2930}
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5599, file: !352, line: 412, baseType: !5614, size: 64, offset: 192)
!5614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5615, size: 64)
!5615 = !DISubroutineType(types: !5616)
!5616 = !{!498, !952, !932}
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5599, file: !352, line: 414, baseType: !5618, size: 64, offset: 256)
!5618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5619, size: 64)
!5619 = !DISubroutineType(types: !5620)
!5620 = !{null, !5621}
!5621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5622, size: 64)
!5622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1778, line: 1276, size: 448, elements: !5623)
!5623 = !{!5624, !5625, !5626, !5628, !5629, !5630, !5631, !5632}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5622, file: !1778, line: 1277, baseType: !1270, size: 64)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5622, file: !1778, line: 1278, baseType: !952, size: 64, offset: 64)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !5622, file: !1778, line: 1279, baseType: !5627, size: 64, offset: 128)
!5627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !5622, file: !1778, line: 1281, baseType: !248, size: 64, offset: 192)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !5622, file: !1778, line: 1282, baseType: !7, size: 32, offset: 256)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !5622, file: !1778, line: 1283, baseType: !7, size: 32, offset: 288)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !5622, file: !1778, line: 1284, baseType: !498, size: 8, offset: 320)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !5622, file: !1778, line: 1285, baseType: !248, size: 64, offset: 384)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5599, file: !352, line: 416, baseType: !5634, size: 64, offset: 320)
!5634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5635, size: 64)
!5635 = !DISubroutineType(types: !5636)
!5636 = !{!13, !1270, !952, !250, !7, !5020, !2327}
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5599, file: !352, line: 419, baseType: !5638, size: 64, offset: 384)
!5638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5639, size: 64)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{!13, !1270, !952, !250, !7, !7, !2099, !230}
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5599, file: !352, line: 424, baseType: !5642, size: 64, offset: 448)
!5642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5643, size: 64)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{!3213, !952, !3213}
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5599, file: !352, line: 425, baseType: !5646, size: 64, offset: 512)
!5646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5647, size: 64)
!5647 = !DISubroutineType(types: !5648)
!5648 = !{null, !932, !244, !244}
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5599, file: !352, line: 426, baseType: !5650, size: 64, offset: 576)
!5650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5651, size: 64)
!5651 = !DISubroutineType(types: !5652)
!5652 = !{!498, !932, !541}
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5599, file: !352, line: 427, baseType: !5654, size: 64, offset: 640)
!5654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5655, size: 64)
!5655 = !DISubroutineType(types: !5656)
!5656 = !{null, !932}
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5599, file: !352, line: 428, baseType: !1757, size: 64, offset: 704)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5599, file: !352, line: 433, baseType: !5659, size: 64, offset: 768)
!5659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5660, size: 64)
!5660 = !DISubroutineType(types: !5661)
!5661 = !{!13, !952, !932, !932, !445}
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5599, file: !352, line: 435, baseType: !5663, size: 64, offset: 832)
!5663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5664, size: 64)
!5664 = !DISubroutineType(types: !5665)
!5665 = !{!13, !932}
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5599, file: !352, line: 436, baseType: !5667, size: 64, offset: 896)
!5667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5668, size: 64)
!5668 = !DISubroutineType(types: !5669)
!5669 = !{!498, !932, !244, !244}
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5599, file: !352, line: 438, baseType: !5671, size: 64, offset: 960)
!5671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5672, size: 64)
!5672 = !DISubroutineType(types: !5673)
!5673 = !{null, !932, !5674, !5674}
!5674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5599, file: !352, line: 439, baseType: !5676, size: 64, offset: 1024)
!5676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5677, size: 64)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{!13, !952, !2099}
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5599, file: !352, line: 442, baseType: !5680, size: 64, offset: 1088)
!5680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5681, size: 64)
!5681 = !DISubroutineType(types: !5682)
!5682 = !{!13, !5683, !1270, !5730}
!5683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5684, size: 64)
!5684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !926, line: 282, size: 2176, elements: !5685)
!5685 = !{!5686, !5687, !5688, !5689, !5690, !5691, !5692, !5694, !5701, !5706, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5728}
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !5684, file: !926, line: 283, baseType: !2163, size: 128)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5684, file: !926, line: 284, baseType: !248, size: 64, offset: 128)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !5684, file: !926, line: 285, baseType: !1444, size: 16, offset: 192)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5684, file: !926, line: 286, baseType: !4000, size: 320, offset: 256)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5684, file: !926, line: 287, baseType: !2626, size: 8, offset: 576)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5684, file: !926, line: 288, baseType: !7, size: 32, offset: 608)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !5684, file: !926, line: 289, baseType: !5693, size: 64, offset: 640)
!5693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !5684, file: !926, line: 290, baseType: !5695, size: 64, offset: 704)
!5695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5696, size: 64)
!5696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !926, line: 250, size: 64, elements: !5697)
!5697 = !{!5698, !5699, !5700}
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5696, file: !926, line: 251, baseType: !268, size: 32)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5696, file: !926, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5696, file: !926, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !5684, file: !926, line: 291, baseType: !5702, size: 128, offset: 768)
!5702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !926, line: 274, size: 128, elements: !5703)
!5703 = !{!5704, !5705}
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5702, file: !926, line: 275, baseType: !5696, size: 64)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5702, file: !926, line: 276, baseType: !5696, size: 64, offset: 64)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !5684, file: !926, line: 292, baseType: !7, size: 32, offset: 896)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !5684, file: !926, line: 293, baseType: !7, size: 32, offset: 928)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5684, file: !926, line: 294, baseType: !7, size: 32, offset: 960)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !5684, file: !926, line: 295, baseType: !7, size: 32, offset: 992)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !5684, file: !926, line: 296, baseType: !7, size: 32, offset: 1024)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !5684, file: !926, line: 297, baseType: !7, size: 32, offset: 1056)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !5684, file: !926, line: 298, baseType: !2647, size: 64, offset: 1088)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !5684, file: !926, line: 299, baseType: !5714, size: 64, offset: 1152)
!5714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5715, size: 64)
!5715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !926, line: 269, size: 96, elements: !5716)
!5716 = !{!5717, !5718}
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5715, file: !926, line: 270, baseType: !5696, size: 64)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5715, file: !926, line: 271, baseType: !7, size: 32, offset: 64)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !5684, file: !926, line: 300, baseType: !1686, size: 64, offset: 1216)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5684, file: !926, line: 301, baseType: !3208, size: 64, offset: 1280)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !5684, file: !926, line: 302, baseType: !1270, size: 64, offset: 1344)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !5684, file: !926, line: 303, baseType: !7, size: 32, offset: 1408)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !5684, file: !926, line: 304, baseType: !1644, size: 256, offset: 1472)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5684, file: !926, line: 305, baseType: !268, size: 32, offset: 1728)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !5684, file: !926, line: 318, baseType: !268, size: 32, offset: 1760)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !5684, file: !926, line: 322, baseType: !1605, size: 256, offset: 1792)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !5684, file: !926, line: 323, baseType: !5702, size: 128, offset: 2048)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !5684, file: !926, line: 324, baseType: !5729, offset: 2176)
!5729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4000, elements: !1359)
!5730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5599, file: !352, line: 444, baseType: !2319, size: 64, offset: 1152)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5599, file: !352, line: 445, baseType: !5733, size: 64, offset: 1216)
!5733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5734, size: 64)
!5734 = !DISubroutineType(types: !5735)
!5735 = !{!13, !1760, !1799}
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !953, file: !352, line: 486, baseType: !248, size: 64, offset: 896)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !953, file: !352, line: 487, baseType: !1416, size: 320, offset: 960)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !953, file: !352, line: 488, baseType: !2400, size: 32, offset: 1280)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !953, file: !352, line: 489, baseType: !268, size: 32, offset: 1312)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !953, file: !352, line: 490, baseType: !306, size: 128, offset: 1344)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !953, file: !352, line: 491, baseType: !230, size: 64, offset: 1472)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !939, file: !317, line: 311, baseType: !248, size: 64, offset: 256)
!5743 = !DIDerivedType(tag: DW_TAG_member, scope: !939, file: !317, line: 312, baseType: !5744, size: 64, offset: 320)
!5744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !939, file: !317, line: 312, size: 64, elements: !5745)
!5745 = !{!5746, !5747}
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5744, file: !317, line: 313, baseType: !230, size: 64)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5744, file: !317, line: 314, baseType: !523, size: 64)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !939, file: !317, line: 316, baseType: !258, size: 32, offset: 384)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !939, file: !317, line: 317, baseType: !258, size: 32, offset: 416)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !936, file: !317, line: 323, baseType: !2100, size: 512, align: 128)
!5751 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !317, line: 325, baseType: !5752, size: 512, offset: 512)
!5752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !933, file: !317, line: 325, size: 512, elements: !5753)
!5753 = !{!5754, !5764}
!5754 = !DIDerivedType(tag: DW_TAG_member, scope: !5752, file: !317, line: 326, baseType: !5755, size: 320)
!5755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5752, file: !317, line: 326, size: 320, elements: !5756)
!5756 = !{!5757, !5758, !5759, !5760, !5761, !5762, !5763}
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !5755, file: !317, line: 327, baseType: !248, size: 64)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !5755, file: !317, line: 328, baseType: !248, size: 64, offset: 64)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !5755, file: !317, line: 329, baseType: !248, size: 64, offset: 128)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !5755, file: !317, line: 331, baseType: !258, size: 32, offset: 192)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !5755, file: !317, line: 332, baseType: !258, size: 32, offset: 224)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !5755, file: !317, line: 333, baseType: !258, size: 32, offset: 256)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !5755, file: !317, line: 335, baseType: !7, size: 32, offset: 288)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !5752, file: !317, line: 339, baseType: !2100, size: 512, align: 128)
!5765 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !317, line: 341, baseType: !5766, size: 512, offset: 1024)
!5766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !933, file: !317, line: 341, size: 512, elements: !5767)
!5767 = !{!5768, !5777, !5783}
!5768 = !DIDerivedType(tag: DW_TAG_member, scope: !5766, file: !317, line: 342, baseType: !5769, size: 384)
!5769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5766, file: !317, line: 342, size: 384, elements: !5770)
!5770 = !{!5771, !5772, !5773, !5774, !5775, !5776}
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !5769, file: !317, line: 343, baseType: !248, size: 64)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !5769, file: !317, line: 344, baseType: !248, size: 64, offset: 64)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !5769, file: !317, line: 346, baseType: !230, size: 64, offset: 128)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !5769, file: !317, line: 347, baseType: !230, size: 64, offset: 192)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !5769, file: !317, line: 348, baseType: !230, size: 64, offset: 256)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !5769, file: !317, line: 349, baseType: !230, size: 64, offset: 320)
!5777 = !DIDerivedType(tag: DW_TAG_member, scope: !5766, file: !317, line: 352, baseType: !5778, size: 256)
!5778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5766, file: !317, line: 352, size: 256, elements: !5779)
!5779 = !{!5780, !5781, !5782}
!5780 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !5778, file: !317, line: 353, baseType: !248, size: 64)
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !5778, file: !317, line: 354, baseType: !248, size: 64, offset: 64)
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !5778, file: !317, line: 356, baseType: !306, size: 128, offset: 128)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !5766, file: !317, line: 359, baseType: !2100, size: 512, align: 128)
!5784 = !{!5785, !5786, !5787, !5788, !5791, !5793, !5798}
!5785 = !DILocalVariable(name: "folio", arg: 1, scope: !929, file: !3, line: 302, type: !932)
!5786 = !DILocalVariable(name: "entry", scope: !929, file: !3, line: 304, type: !523)
!5787 = !DILocalVariable(name: "cache", scope: !929, file: !3, line: 305, type: !493)
!5788 = !DILocalVariable(name: "__vpp_verify", scope: !5789, file: !3, line: 324, type: !614)
!5789 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 324, column: 10)
!5790 = distinct !DILexicalBlock(scope: !929, file: !3, line: 324, column: 10)
!5791 = !DILocalVariable(name: "tcp_ptr__", scope: !5792, file: !3, line: 324, type: !248)
!5792 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 324, column: 10)
!5793 = !DILabel(scope: !5794, name: "repeat", file: !3, line: 329)
!5794 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 328, column: 21)
!5795 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 328, column: 7)
!5796 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 326, column: 52)
!5797 = distinct !DILexicalBlock(scope: !929, file: !3, line: 326, column: 6)
!5798 = !DILabel(scope: !929, name: "out", file: !3, line: 344)
!5799 = !DILocation(line: 302, column: 44, scope: !929)
!5800 = !DILocation(line: 304, column: 14, scope: !929)
!5801 = !DILocation(line: 305, column: 2, scope: !929)
!5802 = !DILocation(line: 305, column: 27, scope: !929)
!5803 = !DILocation(line: 307, column: 8, scope: !929)
!5804 = !DILocation(line: 307, column: 12, scope: !929)
!5805 = !DILocation(line: 309, column: 23, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !929, file: !3, line: 309, column: 6)
!5807 = !DILocation(line: 309, column: 6, scope: !5806)
!5808 = !DILocation(line: 309, column: 6, scope: !929)
!5809 = !DILocation(line: 312, column: 3, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 309, column: 31)
!5811 = !DILocation(line: 324, column: 10, scope: !5790)
!5812 = !DILocation(line: 324, column: 10, scope: !5789)
!5813 = !DILocation(line: 324, column: 10, scope: !5792)
!5814 = !{i64 2155157372}
!5815 = !DILocation(line: 324, column: 8, scope: !929)
!5816 = !DILocation(line: 326, column: 6, scope: !5797)
!5817 = !DILocation(line: 0, scope: !5797)
!5818 = !DILocation(line: 326, column: 6, scope: !929)
!5819 = !DILocation(line: 327, column: 15, scope: !5796)
!5820 = !DILocation(line: 327, column: 22, scope: !5796)
!5821 = !DILocation(line: 327, column: 3, scope: !5796)
!5822 = !DILocation(line: 328, column: 7, scope: !5795)
!5823 = !DILocation(line: 328, column: 14, scope: !5795)
!5824 = !DILocation(line: 328, column: 7, scope: !5796)
!5825 = !DILocation(line: 328, column: 21, scope: !5795)
!5826 = !DILocation(line: 329, column: 1, scope: !5794)
!5827 = !DILocation(line: 330, column: 8, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5794, file: !3, line: 330, column: 8)
!5829 = !DILocation(line: 330, column: 15, scope: !5828)
!5830 = !DILocation(line: 330, column: 8, scope: !5794)
!5831 = !DILocation(line: 331, column: 13, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 330, column: 19)
!5833 = !DILocation(line: 331, column: 20, scope: !5832)
!5834 = !DILocation(line: 331, column: 26, scope: !5832)
!5835 = !DILocation(line: 331, column: 33, scope: !5832)
!5836 = !DILocation(line: 332, column: 5, scope: !5832)
!5837 = !DILocation(line: 332, column: 12, scope: !5832)
!5838 = !DILocation(line: 332, column: 18, scope: !5832)
!5839 = !DILocation(line: 332, column: 25, scope: !5832)
!5840 = !DILocation(line: 332, column: 28, scope: !5832)
!5841 = !DILocation(line: 332, column: 32, scope: !5832)
!5842 = !DILocation(line: 332, column: 36, scope: !5832)
!5843 = !DILocation(line: 333, column: 5, scope: !5832)
!5844 = !DILocation(line: 333, column: 12, scope: !5832)
!5845 = !DILocation(line: 333, column: 14, scope: !5832)
!5846 = !DILocation(line: 334, column: 4, scope: !5832)
!5847 = !DILocation(line: 334, column: 39, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5828, file: !3, line: 334, column: 15)
!5849 = !DILocation(line: 334, column: 15, scope: !5848)
!5850 = !DILocation(line: 334, column: 15, scope: !5828)
!5851 = !DILocation(line: 335, column: 5, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 334, column: 47)
!5853 = !DILocation(line: 337, column: 3, scope: !5794)
!5854 = !DILocation(line: 338, column: 17, scope: !5796)
!5855 = !DILocation(line: 338, column: 24, scope: !5796)
!5856 = !DILocation(line: 338, column: 3, scope: !5796)
!5857 = !DILocation(line: 339, column: 13, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 339, column: 7)
!5859 = !DILocation(line: 339, column: 7, scope: !5858)
!5860 = !DILocation(line: 339, column: 7, scope: !5796)
!5861 = !DILocation(line: 340, column: 4, scope: !5858)
!5862 = !DILocation(line: 341, column: 2, scope: !5796)
!5863 = !DILocation(line: 343, column: 2, scope: !929)
!5864 = !DILocation(line: 344, column: 1, scope: !929)
!5865 = !DILocation(line: 345, column: 33, scope: !5866)
!5866 = distinct !DILexicalBlock(scope: !929, file: !3, line: 345, column: 6)
!5867 = !DILocation(line: 345, column: 6, scope: !5866)
!5868 = !DILocation(line: 345, column: 6, scope: !929)
!5869 = !DILocation(line: 346, column: 18, scope: !5870)
!5870 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 345, column: 48)
!5871 = !DILocation(line: 346, column: 3, scope: !5870)
!5872 = !DILocation(line: 347, column: 9, scope: !5870)
!5873 = !DILocation(line: 347, column: 13, scope: !5870)
!5874 = !DILocation(line: 348, column: 2, scope: !5870)
!5875 = !DILocation(line: 350, column: 1, scope: !929)
!5876 = distinct !DISubprogram(name: "folio_test_large", scope: !453, file: !453, line: 810, type: !5877, scopeLine: 811, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5879)
!5877 = !DISubroutineType(types: !5878)
!5878 = !{!498, !932}
!5879 = !{!5880}
!5880 = !DILocalVariable(name: "folio", arg: 1, scope: !5876, file: !453, line: 810, type: !932)
!5881 = !DILocation(line: 810, column: 51, scope: !5876)
!5882 = !DILocation(line: 812, column: 25, scope: !5876)
!5883 = !DILocation(line: 812, column: 9, scope: !5876)
!5884 = !DILocation(line: 812, column: 2, scope: !5876)
!5885 = distinct !DISubprogram(name: "check_cache_active", scope: !3, file: !3, line: 91, type: !2423, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5886)
!5886 = !{!5887, !5888}
!5887 = !DILocalVariable(name: "pages", scope: !5885, file: !3, line: 93, type: !1231)
!5888 = !DILabel(scope: !5885, name: "out", file: !3, line: 109)
!5889 = !DILocation(line: 93, column: 2, scope: !5885)
!5890 = !DILocation(line: 93, column: 7, scope: !5885)
!5891 = !DILocation(line: 95, column: 7, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 95, column: 6)
!5893 = !DILocation(line: 95, column: 6, scope: !5885)
!5894 = !DILocation(line: 96, column: 3, scope: !5892)
!5895 = !DILocation(line: 98, column: 10, scope: !5885)
!5896 = !DILocation(line: 98, column: 8, scope: !5885)
!5897 = !DILocation(line: 99, column: 7, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 99, column: 6)
!5899 = !DILocation(line: 99, column: 6, scope: !5885)
!5900 = !DILocation(line: 100, column: 7, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 100, column: 7)
!5902 = distinct !DILexicalBlock(scope: !5898, file: !3, line: 99, column: 31)
!5903 = !DILocation(line: 100, column: 15, scope: !5901)
!5904 = !DILocation(line: 100, column: 33, scope: !5901)
!5905 = !DILocation(line: 100, column: 13, scope: !5901)
!5906 = !DILocation(line: 100, column: 7, scope: !5902)
!5907 = !DILocation(line: 102, column: 4, scope: !5901)
!5908 = !DILocation(line: 103, column: 3, scope: !5902)
!5909 = !DILocation(line: 107, column: 6, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 107, column: 6)
!5911 = !DILocation(line: 107, column: 14, scope: !5910)
!5912 = !DILocation(line: 107, column: 32, scope: !5910)
!5913 = !DILocation(line: 107, column: 12, scope: !5910)
!5914 = !DILocation(line: 107, column: 6, scope: !5885)
!5915 = !DILocation(line: 108, column: 3, scope: !5910)
!5916 = !DILocation(line: 107, column: 34, scope: !5910)
!5917 = !DILocation(line: 109, column: 1, scope: !5885)
!5918 = !DILocation(line: 110, column: 9, scope: !5885)
!5919 = !DILocation(line: 110, column: 2, scope: !5885)
!5920 = !DILocation(line: 111, column: 1, scope: !5885)
!5921 = distinct !DISubprogram(name: "refill_swap_slots_cache", scope: !3, file: !3, line: 259, type: !5922, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5924)
!5922 = !DISubroutineType(types: !5923)
!5923 = !{!13, !493}
!5924 = !{!5925}
!5925 = !DILocalVariable(name: "cache", arg: 1, scope: !5921, file: !3, line: 259, type: !493)
!5926 = !DILocation(line: 259, column: 61, scope: !5921)
!5927 = !DILocation(line: 261, column: 7, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5921, file: !3, line: 261, column: 6)
!5929 = !DILocation(line: 261, column: 6, scope: !5921)
!5930 = !DILocation(line: 262, column: 3, scope: !5928)
!5931 = !DILocation(line: 264, column: 2, scope: !5921)
!5932 = !DILocation(line: 264, column: 9, scope: !5921)
!5933 = !DILocation(line: 264, column: 13, scope: !5921)
!5934 = !DILocation(line: 265, column: 6, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5921, file: !3, line: 265, column: 6)
!5936 = !DILocation(line: 265, column: 6, scope: !5921)
!5937 = !DILocation(line: 267, column: 9, scope: !5935)
!5938 = !DILocation(line: 267, column: 16, scope: !5935)
!5939 = !DILocation(line: 266, column: 15, scope: !5935)
!5940 = !DILocation(line: 266, column: 3, scope: !5935)
!5941 = !DILocation(line: 266, column: 10, scope: !5935)
!5942 = !DILocation(line: 266, column: 13, scope: !5935)
!5943 = !DILocation(line: 269, column: 9, scope: !5921)
!5944 = !DILocation(line: 269, column: 16, scope: !5921)
!5945 = !DILocation(line: 269, column: 2, scope: !5921)
!5946 = !DILocation(line: 270, column: 1, scope: !5921)
!5947 = !DISubprogram(name: "get_swap_pages", scope: !926, file: !926, line: 477, type: !5948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5948 = !DISubroutineType(types: !5949)
!5949 = !{!13, !13, !522, !13}
!5950 = distinct !DISubprogram(name: "mem_cgroup_try_charge_swap", scope: !926, file: !926, line: 672, type: !5951, scopeLine: 674, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5953)
!5951 = !DISubroutineType(types: !5952)
!5952 = !{!13, !932, !523}
!5953 = !{!5954, !5955}
!5954 = !DILocalVariable(name: "folio", arg: 1, scope: !5950, file: !926, line: 672, type: !932)
!5955 = !DILocalVariable(name: "entry", arg: 2, scope: !5950, file: !926, line: 673, type: !523)
!5956 = !DILocation(line: 672, column: 60, scope: !5950)
!5957 = !DILocation(line: 673, column: 23, scope: !5950)
!5958 = !DILocation(line: 675, column: 2, scope: !5950)
!5959 = !DISubprogram(name: "put_swap_folio", scope: !926, file: !926, line: 475, type: !5960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5960 = !DISubroutineType(types: !5961)
!5961 = !{null, !932, !523}
!5962 = !DISubprogram(name: "has_usable_swap", scope: !926, file: !926, line: 459, type: !2423, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5963 = distinct !DISubprogram(name: "find_next_bit", scope: !5964, file: !5964, line: 54, type: !5965, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5968)
!5964 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!5965 = !DISubroutineType(types: !5966)
!5966 = !{!248, !5967, !248, !248}
!5967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!5968 = !{!5969, !5970, !5971, !5972}
!5969 = !DILocalVariable(name: "addr", arg: 1, scope: !5963, file: !5964, line: 54, type: !5967)
!5970 = !DILocalVariable(name: "size", arg: 2, scope: !5963, file: !5964, line: 54, type: !248)
!5971 = !DILocalVariable(name: "offset", arg: 3, scope: !5963, file: !5964, line: 55, type: !248)
!5972 = !DILocalVariable(name: "val", scope: !5973, file: !5964, line: 58, type: !248)
!5973 = distinct !DILexicalBlock(scope: !5974, file: !5964, line: 57, column: 31)
!5974 = distinct !DILexicalBlock(scope: !5963, file: !5964, line: 57, column: 6)
!5975 = !DILocation(line: 54, column: 50, scope: !5963)
!5976 = !DILocation(line: 54, column: 70, scope: !5963)
!5977 = !DILocation(line: 55, column: 22, scope: !5963)
!5978 = !DILocation(line: 57, column: 6, scope: !5974)
!5979 = !DILocation(line: 57, column: 6, scope: !5963)
!5980 = !DILocation(line: 58, column: 3, scope: !5973)
!5981 = !DILocation(line: 58, column: 17, scope: !5973)
!5982 = !DILocation(line: 60, column: 7, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5973, file: !5964, line: 60, column: 7)
!5984 = !DILocation(line: 60, column: 7, scope: !5973)
!5985 = !DILocation(line: 61, column: 11, scope: !5983)
!5986 = !DILocation(line: 61, column: 4, scope: !5983)
!5987 = !DILocation(line: 63, column: 10, scope: !5973)
!5988 = !DILocation(line: 63, column: 9, scope: !5973)
!5989 = !DILocation(line: 63, column: 17, scope: !5973)
!5990 = !DILocation(line: 63, column: 15, scope: !5973)
!5991 = !DILocation(line: 63, column: 7, scope: !5973)
!5992 = !DILocation(line: 64, column: 10, scope: !5973)
!5993 = !DILocation(line: 64, column: 16, scope: !5973)
!5994 = !DILocation(line: 64, column: 29, scope: !5973)
!5995 = !DILocation(line: 64, column: 3, scope: !5973)
!5996 = !DILocation(line: 65, column: 2, scope: !5974)
!5997 = !DILocation(line: 67, column: 24, scope: !5963)
!5998 = !DILocation(line: 67, column: 30, scope: !5963)
!5999 = !DILocation(line: 67, column: 36, scope: !5963)
!6000 = !DILocation(line: 67, column: 9, scope: !5963)
!6001 = !DILocation(line: 67, column: 2, scope: !5963)
!6002 = !DILocation(line: 68, column: 1, scope: !5963)
!6003 = distinct !DISubprogram(name: "drain_slots_cache_cpu", scope: !3, file: !3, line: 168, type: !6004, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6006)
!6004 = !DISubroutineType(types: !6005)
!6005 = !{null, !7, !7, !498}
!6006 = !{!6007, !6008, !6009, !6010, !6011, !6012, !6015}
!6007 = !DILocalVariable(name: "cpu", arg: 1, scope: !6003, file: !3, line: 168, type: !7)
!6008 = !DILocalVariable(name: "type", arg: 2, scope: !6003, file: !3, line: 168, type: !7)
!6009 = !DILocalVariable(name: "free_slots", arg: 3, scope: !6003, file: !3, line: 169, type: !498)
!6010 = !DILocalVariable(name: "cache", scope: !6003, file: !3, line: 171, type: !493)
!6011 = !DILocalVariable(name: "slots", scope: !6003, file: !3, line: 172, type: !522)
!6012 = !DILocalVariable(name: "__vpp_verify", scope: !6013, file: !3, line: 174, type: !614)
!6013 = distinct !DILexicalBlock(scope: !6014, file: !3, line: 174, column: 11)
!6014 = distinct !DILexicalBlock(scope: !6003, file: !3, line: 174, column: 11)
!6015 = !DILocalVariable(name: "__ptr", scope: !6016, file: !3, line: 174, type: !248)
!6016 = distinct !DILexicalBlock(scope: !6014, file: !3, line: 174, column: 11)
!6017 = !DILocation(line: 168, column: 48, scope: !6003)
!6018 = !DILocation(line: 168, column: 66, scope: !6003)
!6019 = !DILocation(line: 169, column: 12, scope: !6003)
!6020 = !DILocation(line: 171, column: 2, scope: !6003)
!6021 = !DILocation(line: 171, column: 27, scope: !6003)
!6022 = !DILocation(line: 172, column: 2, scope: !6003)
!6023 = !DILocation(line: 172, column: 15, scope: !6003)
!6024 = !DILocation(line: 174, column: 11, scope: !6014)
!6025 = !DILocation(line: 174, column: 11, scope: !6013)
!6026 = !DILocation(line: 174, column: 11, scope: !6016)
!6027 = !DILocation(line: 174, column: 8, scope: !6003)
!6028 = !DILocation(line: 175, column: 7, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6003, file: !3, line: 175, column: 6)
!6030 = !DILocation(line: 175, column: 12, scope: !6029)
!6031 = !DILocation(line: 175, column: 27, scope: !6029)
!6032 = !DILocation(line: 175, column: 30, scope: !6029)
!6033 = !DILocation(line: 175, column: 37, scope: !6029)
!6034 = !DILocation(line: 175, column: 6, scope: !6003)
!6035 = !DILocation(line: 176, column: 15, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6029, file: !3, line: 175, column: 44)
!6037 = !DILocation(line: 176, column: 22, scope: !6036)
!6038 = !DILocation(line: 176, column: 3, scope: !6036)
!6039 = !DILocation(line: 177, column: 26, scope: !6036)
!6040 = !DILocation(line: 177, column: 33, scope: !6036)
!6041 = !DILocation(line: 177, column: 41, scope: !6036)
!6042 = !DILocation(line: 177, column: 48, scope: !6036)
!6043 = !DILocation(line: 177, column: 39, scope: !6036)
!6044 = !DILocation(line: 177, column: 53, scope: !6036)
!6045 = !DILocation(line: 177, column: 60, scope: !6036)
!6046 = !DILocation(line: 177, column: 3, scope: !6036)
!6047 = !DILocation(line: 178, column: 3, scope: !6036)
!6048 = !DILocation(line: 178, column: 10, scope: !6036)
!6049 = !DILocation(line: 178, column: 14, scope: !6036)
!6050 = !DILocation(line: 179, column: 3, scope: !6036)
!6051 = !DILocation(line: 179, column: 10, scope: !6036)
!6052 = !DILocation(line: 179, column: 13, scope: !6036)
!6053 = !DILocation(line: 180, column: 7, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6036, file: !3, line: 180, column: 7)
!6055 = !DILocation(line: 180, column: 18, scope: !6054)
!6056 = !DILocation(line: 180, column: 21, scope: !6054)
!6057 = !DILocation(line: 180, column: 28, scope: !6054)
!6058 = !DILocation(line: 180, column: 7, scope: !6036)
!6059 = !DILocation(line: 181, column: 11, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6054, file: !3, line: 180, column: 35)
!6061 = !DILocation(line: 181, column: 18, scope: !6060)
!6062 = !DILocation(line: 181, column: 4, scope: !6060)
!6063 = !DILocation(line: 182, column: 4, scope: !6060)
!6064 = !DILocation(line: 182, column: 11, scope: !6060)
!6065 = !DILocation(line: 182, column: 17, scope: !6060)
!6066 = !DILocation(line: 183, column: 3, scope: !6060)
!6067 = !DILocation(line: 184, column: 17, scope: !6036)
!6068 = !DILocation(line: 184, column: 24, scope: !6036)
!6069 = !DILocation(line: 184, column: 3, scope: !6036)
!6070 = !DILocation(line: 185, column: 2, scope: !6036)
!6071 = !DILocation(line: 186, column: 7, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6003, file: !3, line: 186, column: 6)
!6073 = !DILocation(line: 186, column: 12, scope: !6072)
!6074 = !DILocation(line: 186, column: 31, scope: !6072)
!6075 = !DILocation(line: 186, column: 34, scope: !6072)
!6076 = !DILocation(line: 186, column: 41, scope: !6072)
!6077 = !DILocation(line: 186, column: 6, scope: !6003)
!6078 = !DILocation(line: 187, column: 18, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6072, file: !3, line: 186, column: 52)
!6080 = !DILocation(line: 187, column: 25, scope: !6079)
!6081 = !DILocation(line: 187, column: 3, scope: !6079)
!6082 = !DILocation(line: 188, column: 26, scope: !6079)
!6083 = !DILocation(line: 188, column: 33, scope: !6079)
!6084 = !DILocation(line: 188, column: 44, scope: !6079)
!6085 = !DILocation(line: 188, column: 51, scope: !6079)
!6086 = !DILocation(line: 188, column: 3, scope: !6079)
!6087 = !DILocation(line: 189, column: 3, scope: !6079)
!6088 = !DILocation(line: 189, column: 10, scope: !6079)
!6089 = !DILocation(line: 189, column: 16, scope: !6079)
!6090 = !DILocation(line: 190, column: 7, scope: !6091)
!6091 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 190, column: 7)
!6092 = !DILocation(line: 190, column: 18, scope: !6091)
!6093 = !DILocation(line: 190, column: 21, scope: !6091)
!6094 = !DILocation(line: 190, column: 28, scope: !6091)
!6095 = !DILocation(line: 190, column: 7, scope: !6079)
!6096 = !DILocation(line: 191, column: 12, scope: !6097)
!6097 = distinct !DILexicalBlock(scope: !6091, file: !3, line: 190, column: 39)
!6098 = !DILocation(line: 191, column: 19, scope: !6097)
!6099 = !DILocation(line: 191, column: 10, scope: !6097)
!6100 = !DILocation(line: 192, column: 4, scope: !6097)
!6101 = !DILocation(line: 192, column: 11, scope: !6097)
!6102 = !DILocation(line: 192, column: 21, scope: !6097)
!6103 = !DILocation(line: 193, column: 3, scope: !6097)
!6104 = !DILocation(line: 194, column: 20, scope: !6079)
!6105 = !DILocation(line: 194, column: 27, scope: !6079)
!6106 = !DILocation(line: 194, column: 3, scope: !6079)
!6107 = !DILocation(line: 195, column: 10, scope: !6079)
!6108 = !DILocation(line: 195, column: 3, scope: !6079)
!6109 = !DILocation(line: 196, column: 2, scope: !6079)
!6110 = !DILocation(line: 197, column: 1, scope: !6003)
!6111 = distinct !DISubprogram(name: "variable__ffs", scope: !6112, file: !6112, line: 250, type: !6113, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6115)
!6112 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6113 = !DISubroutineType(types: !6114)
!6114 = !{!248, !248}
!6115 = !{!6116}
!6116 = !DILocalVariable(name: "word", arg: 1, scope: !6111, file: !6112, line: 250, type: !248)
!6117 = !DILocation(line: 250, column: 66, scope: !6111)
!6118 = !DILocation(line: 254, column: 11, scope: !6111)
!6119 = !DILocation(line: 252, column: 2, scope: !6111)
!6120 = !{i64 493995}
!6121 = !DILocation(line: 255, column: 9, scope: !6111)
!6122 = !DILocation(line: 255, column: 2, scope: !6111)
!6123 = !DISubprogram(name: "_find_next_bit", scope: !5964, file: !5964, line: 11, type: !5965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6124 = !DISubprogram(name: "kvfree", scope: !6125, file: !6125, line: 766, type: !6126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6125 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!6126 = !DISubroutineType(types: !6127)
!6127 = !{null, !614}
!6128 = !DISubprogram(name: "__cpuhp_setup_state", scope: !12, file: !12, line: 263, type: !6129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6129 = !DISubroutineType(types: !6130)
!6130 = !{!13, !11, !226, !498, !730, !730, !498}
!6131 = distinct !DISubprogram(name: "kvcalloc", scope: !6125, file: !6125, line: 759, type: !6132, scopeLine: 760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6134)
!6132 = !DISubroutineType(types: !6133)
!6133 = !{!230, !244, !244, !541}
!6134 = !{!6135, !6136, !6137}
!6135 = !DILocalVariable(name: "n", arg: 1, scope: !6131, file: !6125, line: 759, type: !244)
!6136 = !DILocalVariable(name: "size", arg: 2, scope: !6131, file: !6125, line: 759, type: !244)
!6137 = !DILocalVariable(name: "flags", arg: 3, scope: !6131, file: !6125, line: 759, type: !541)
!6138 = !DILocation(line: 759, column: 56, scope: !6131)
!6139 = !DILocation(line: 759, column: 66, scope: !6131)
!6140 = !DILocation(line: 759, column: 78, scope: !6131)
!6141 = !DILocation(line: 761, column: 24, scope: !6131)
!6142 = !DILocation(line: 761, column: 27, scope: !6131)
!6143 = !DILocation(line: 761, column: 33, scope: !6131)
!6144 = !DILocation(line: 761, column: 39, scope: !6131)
!6145 = !DILocation(line: 761, column: 9, scope: !6131)
!6146 = !DILocation(line: 761, column: 2, scope: !6131)
!6147 = !DISubprogram(name: "__mutex_init", scope: !502, file: !502, line: 121, type: !6148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6148 = !DISubroutineType(types: !6149)
!6149 = !{null, !653, !226, !6150}
!6150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!6151 = distinct !DISubprogram(name: "spinlock_check", scope: !910, file: !910, line: 324, type: !6152, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6155)
!6152 = !DISubroutineType(types: !6153)
!6153 = !{!6154, !913}
!6154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!6155 = !{!6156}
!6156 = !DILocalVariable(name: "lock", arg: 1, scope: !6151, file: !910, line: 324, type: !913)
!6157 = !DILocation(line: 324, column: 67, scope: !6151)
!6158 = !DILocation(line: 326, column: 10, scope: !6151)
!6159 = !DILocation(line: 326, column: 16, scope: !6151)
!6160 = !DILocation(line: 326, column: 2, scope: !6151)
!6161 = distinct !DISubprogram(name: "kvmalloc_array", scope: !6125, file: !6125, line: 749, type: !6132, scopeLine: 750, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6162)
!6162 = !{!6163, !6164, !6165, !6166}
!6163 = !DILocalVariable(name: "n", arg: 1, scope: !6161, file: !6125, line: 749, type: !244)
!6164 = !DILocalVariable(name: "size", arg: 2, scope: !6161, file: !6125, line: 749, type: !244)
!6165 = !DILocalVariable(name: "flags", arg: 3, scope: !6161, file: !6125, line: 749, type: !541)
!6166 = !DILocalVariable(name: "bytes", scope: !6161, file: !6125, line: 751, type: !244)
!6167 = !DILocation(line: 749, column: 62, scope: !6161)
!6168 = !DILocation(line: 749, column: 72, scope: !6161)
!6169 = !DILocation(line: 749, column: 84, scope: !6161)
!6170 = !DILocation(line: 751, column: 2, scope: !6161)
!6171 = !DILocation(line: 751, column: 9, scope: !6161)
!6172 = !DILocation(line: 753, column: 6, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6161, file: !6125, line: 753, column: 6)
!6174 = !DILocation(line: 753, column: 6, scope: !6161)
!6175 = !DILocation(line: 754, column: 3, scope: !6173)
!6176 = !DILocation(line: 756, column: 18, scope: !6161)
!6177 = !DILocation(line: 756, column: 25, scope: !6161)
!6178 = !DILocation(line: 756, column: 9, scope: !6161)
!6179 = !DILocation(line: 756, column: 2, scope: !6161)
!6180 = !DILocation(line: 757, column: 1, scope: !6161)
!6181 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6182, file: !6182, line: 51, type: !6183, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6185)
!6182 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6183 = !DISubroutineType(types: !6184)
!6184 = !{!498, !498}
!6185 = !{!6186}
!6186 = !DILocalVariable(name: "overflow", arg: 1, scope: !6181, file: !6182, line: 51, type: !498)
!6187 = !DILocation(line: 51, column: 60, scope: !6181)
!6188 = !DILocation(line: 53, column: 9, scope: !6181)
!6189 = !DILocation(line: 53, column: 2, scope: !6181)
!6190 = distinct !DISubprogram(name: "kvmalloc", scope: !6125, file: !6125, line: 736, type: !6191, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6193)
!6191 = !DISubroutineType(types: !6192)
!6192 = !{!230, !244, !541}
!6193 = !{!6194, !6195}
!6194 = !DILocalVariable(name: "size", arg: 1, scope: !6190, file: !6125, line: 736, type: !244)
!6195 = !DILocalVariable(name: "flags", arg: 2, scope: !6190, file: !6125, line: 736, type: !541)
!6196 = !DILocation(line: 736, column: 53, scope: !6190)
!6197 = !DILocation(line: 736, column: 65, scope: !6190)
!6198 = !DILocation(line: 738, column: 23, scope: !6190)
!6199 = !DILocation(line: 738, column: 29, scope: !6190)
!6200 = !DILocation(line: 738, column: 9, scope: !6190)
!6201 = !DILocation(line: 738, column: 2, scope: !6190)
!6202 = !DISubprogram(name: "kvmalloc_node", scope: !6125, file: !6125, line: 735, type: !6203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6203 = !DISubroutineType(types: !6204)
!6204 = !{!230, !244, !541, !13}
!6205 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !6206, file: !6206, line: 29, type: !6207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6206 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6207 = !DISubroutineType(types: !6208)
!6208 = !{null, !6154}
!6209 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !6206, file: !6206, line: 41, type: !6207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6210 = distinct !DISubprogram(name: "folio_test_head", scope: !453, file: !453, line: 789, type: !5877, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6211)
!6211 = !{!6212}
!6212 = !DILocalVariable(name: "folio", arg: 1, scope: !6210, file: !453, line: 789, type: !932)
!6213 = !DILocation(line: 789, column: 59, scope: !6210)
!6214 = !DILocation(line: 791, column: 9, scope: !6210)
!6215 = !DILocation(line: 791, column: 2, scope: !6210)
!6216 = distinct !DISubprogram(name: "_test_bit", scope: !6217, file: !6217, line: 139, type: !6218, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6223)
!6217 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!6218 = !DISubroutineType(types: !6219)
!6219 = !{!498, !248, !6220}
!6220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6221, size: 64)
!6221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6222)
!6222 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !248)
!6223 = !{!6224, !6225}
!6224 = !DILocalVariable(name: "nr", arg: 1, scope: !6216, file: !6217, line: 139, type: !248)
!6225 = !DILocalVariable(name: "addr", arg: 2, scope: !6216, file: !6217, line: 139, type: !6220)
!6226 = !DILocation(line: 139, column: 25, scope: !6216)
!6227 = !DILocation(line: 139, column: 59, scope: !6216)
!6228 = !DILocation(line: 141, column: 25, scope: !6216)
!6229 = !DILocation(line: 141, column: 32, scope: !6216)
!6230 = !DILocation(line: 141, column: 30, scope: !6216)
!6231 = !DILocation(line: 141, column: 2, scope: !6216)
!6232 = !DILocation(line: 142, column: 23, scope: !6216)
!6233 = !DILocation(line: 142, column: 27, scope: !6216)
!6234 = !DILocation(line: 142, column: 9, scope: !6216)
!6235 = !DILocation(line: 142, column: 2, scope: !6216)
!6236 = distinct !DISubprogram(name: "folio_flags", scope: !453, file: !453, line: 308, type: !6237, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6239)
!6237 = !DISubroutineType(types: !6238)
!6238 = !{!542, !932, !7}
!6239 = !{!6240, !6241, !6242}
!6240 = !DILocalVariable(name: "folio", arg: 1, scope: !6236, file: !453, line: 308, type: !932)
!6241 = !DILocalVariable(name: "n", arg: 2, scope: !6236, file: !453, line: 308, type: !7)
!6242 = !DILocalVariable(name: "page", scope: !6236, file: !453, line: 310, type: !2099)
!6243 = !DILocation(line: 308, column: 49, scope: !6236)
!6244 = !DILocation(line: 308, column: 65, scope: !6236)
!6245 = !DILocation(line: 310, column: 2, scope: !6236)
!6246 = !DILocation(line: 310, column: 15, scope: !6236)
!6247 = !DILocation(line: 310, column: 23, scope: !6236)
!6248 = !DILocation(line: 310, column: 30, scope: !6236)
!6249 = !DILocation(line: 314, column: 10, scope: !6236)
!6250 = !DILocation(line: 314, column: 15, scope: !6236)
!6251 = !DILocation(line: 314, column: 18, scope: !6236)
!6252 = !DILocation(line: 315, column: 1, scope: !6236)
!6253 = !DILocation(line: 314, column: 2, scope: !6236)
!6254 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6255, file: !6255, line: 66, type: !6256, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6261)
!6255 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6256 = !DISubroutineType(types: !6257)
!6257 = !{null, !6258, !244}
!6258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6259, size: 64)
!6259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6260)
!6260 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6261 = !{!6262, !6263}
!6262 = !DILocalVariable(name: "v", arg: 1, scope: !6254, file: !6255, line: 66, type: !6258)
!6263 = !DILocalVariable(name: "size", arg: 2, scope: !6254, file: !6255, line: 66, type: !244)
!6264 = !DILocation(line: 66, column: 73, scope: !6254)
!6265 = !DILocation(line: 66, column: 83, scope: !6254)
!6266 = !DILocation(line: 68, column: 19, scope: !6254)
!6267 = !DILocation(line: 68, column: 22, scope: !6254)
!6268 = !DILocation(line: 68, column: 2, scope: !6254)
!6269 = !DILocation(line: 69, column: 2, scope: !6254)
!6270 = !DILocation(line: 70, column: 1, scope: !6254)
!6271 = distinct !DISubprogram(name: "arch_test_bit", scope: !6112, file: !6112, line: 237, type: !6218, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6272)
!6272 = !{!6273, !6274}
!6273 = !DILocalVariable(name: "nr", arg: 1, scope: !6271, file: !6112, line: 237, type: !248)
!6274 = !DILocalVariable(name: "addr", arg: 2, scope: !6271, file: !6112, line: 237, type: !6220)
!6275 = !DILocation(line: 237, column: 29, scope: !6271)
!6276 = !DILocation(line: 237, column: 63, scope: !6271)
!6277 = !DILocation(line: 239, column: 30, scope: !6271)
!6278 = !DILocation(line: 239, column: 9, scope: !6271)
!6279 = !DILocation(line: 239, column: 54, scope: !6271)
!6280 = !DILocation(line: 239, column: 58, scope: !6271)
!6281 = !DILocation(line: 239, column: 36, scope: !6271)
!6282 = !DILocation(line: 240, column: 26, scope: !6271)
!6283 = !DILocation(line: 240, column: 30, scope: !6271)
!6284 = !DILocation(line: 240, column: 8, scope: !6271)
!6285 = !DILocation(line: 239, column: 2, scope: !6271)
!6286 = distinct !DISubprogram(name: "kasan_check_read", scope: !6287, file: !6287, line: 40, type: !6288, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6290)
!6287 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6288 = !DISubroutineType(types: !6289)
!6289 = !{!498, !6258, !7}
!6290 = !{!6291, !6292}
!6291 = !DILocalVariable(name: "p", arg: 1, scope: !6286, file: !6287, line: 40, type: !6258)
!6292 = !DILocalVariable(name: "size", arg: 2, scope: !6286, file: !6287, line: 40, type: !7)
!6293 = !DILocation(line: 40, column: 58, scope: !6286)
!6294 = !DILocation(line: 40, column: 74, scope: !6286)
!6295 = !DILocation(line: 42, column: 2, scope: !6286)
!6296 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6297, file: !6297, line: 229, type: !6298, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6300)
!6297 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6298 = !DISubroutineType(types: !6299)
!6299 = !{null, !6258, !244, !13}
!6300 = !{!6301, !6302, !6303}
!6301 = !DILocalVariable(name: "ptr", arg: 1, scope: !6296, file: !6297, line: 229, type: !6258)
!6302 = !DILocalVariable(name: "size", arg: 2, scope: !6296, file: !6297, line: 229, type: !244)
!6303 = !DILocalVariable(name: "type", arg: 3, scope: !6296, file: !6297, line: 230, type: !13)
!6304 = !DILocation(line: 229, column: 60, scope: !6296)
!6305 = !DILocation(line: 229, column: 72, scope: !6296)
!6306 = !DILocation(line: 230, column: 15, scope: !6296)
!6307 = !DILocation(line: 230, column: 23, scope: !6296)
!6308 = distinct !DISubprogram(name: "constant_test_bit", scope: !6112, file: !6112, line: 204, type: !6309, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6311)
!6309 = !DISubroutineType(types: !6310)
!6310 = !{!498, !1231, !6220}
!6311 = !{!6312, !6313}
!6312 = !DILocalVariable(name: "nr", arg: 1, scope: !6308, file: !6112, line: 204, type: !1231)
!6313 = !DILocalVariable(name: "addr", arg: 2, scope: !6308, file: !6112, line: 204, type: !6220)
!6314 = !DILocation(line: 204, column: 52, scope: !6308)
!6315 = !DILocation(line: 204, column: 86, scope: !6308)
!6316 = !DILocation(line: 206, column: 19, scope: !6308)
!6317 = !DILocation(line: 206, column: 22, scope: !6308)
!6318 = !DILocation(line: 206, column: 15, scope: !6308)
!6319 = !DILocation(line: 207, column: 4, scope: !6308)
!6320 = !DILocation(line: 207, column: 9, scope: !6308)
!6321 = !DILocation(line: 207, column: 12, scope: !6308)
!6322 = !DILocation(line: 206, column: 44, scope: !6308)
!6323 = !DILocation(line: 207, column: 37, scope: !6308)
!6324 = !DILocation(line: 206, column: 2, scope: !6308)
!6325 = distinct !DISubprogram(name: "variable_test_bit", scope: !6112, file: !6112, line: 224, type: !6309, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6326)
!6326 = !{!6327, !6328, !6329}
!6327 = !DILocalVariable(name: "nr", arg: 1, scope: !6325, file: !6112, line: 224, type: !1231)
!6328 = !DILocalVariable(name: "addr", arg: 2, scope: !6325, file: !6112, line: 224, type: !6220)
!6329 = !DILocalVariable(name: "oldbit", scope: !6325, file: !6112, line: 226, type: !498)
!6330 = !DILocation(line: 224, column: 52, scope: !6325)
!6331 = !DILocation(line: 224, column: 86, scope: !6325)
!6332 = !DILocation(line: 226, column: 2, scope: !6325)
!6333 = !DILocation(line: 226, column: 7, scope: !6325)
!6334 = !DILocation(line: 231, column: 33, scope: !6325)
!6335 = !DILocation(line: 231, column: 46, scope: !6325)
!6336 = !DILocation(line: 228, column: 2, scope: !6325)
!6337 = !{i64 2147996073, i64 2147996147}
!6338 = !DILocation(line: 233, column: 9, scope: !6325)
!6339 = !DILocation(line: 234, column: 1, scope: !6325)
!6340 = !DILocation(line: 233, column: 2, scope: !6325)
!6341 = distinct !DISubprogram(name: "get_nr_swap_pages", scope: !926, file: !926, line: 467, type: !6342, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6342 = !DISubroutineType(types: !6343)
!6343 = !{!1231}
!6344 = !DILocation(line: 469, column: 9, scope: !6341)
!6345 = !DILocation(line: 469, column: 2, scope: !6341)
!6346 = distinct !DISubprogram(name: "num_online_cpus", scope: !535, file: !535, line: 1072, type: !6347, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6347 = !DISubroutineType(types: !6348)
!6348 = !{!7}
!6349 = !DILocation(line: 1074, column: 9, scope: !6346)
!6350 = !DILocation(line: 1074, column: 2, scope: !6346)
!6351 = distinct !DISubprogram(name: "reactivate_swap_slots_cache", scope: !3, file: !3, line: 60, type: !558, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6352 = !DILocation(line: 62, column: 2, scope: !6351)
!6353 = !DILocation(line: 63, column: 25, scope: !6351)
!6354 = !DILocation(line: 64, column: 2, scope: !6351)
!6355 = !DILocation(line: 65, column: 1, scope: !6351)
!6356 = distinct !DISubprogram(name: "deactivate_swap_slots_cache", scope: !3, file: !3, line: 52, type: !558, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6357 = !DILocation(line: 54, column: 2, scope: !6356)
!6358 = !DILocation(line: 55, column: 25, scope: !6356)
!6359 = !DILocation(line: 56, column: 2, scope: !6356)
!6360 = !DILocation(line: 57, column: 2, scope: !6356)
!6361 = !DILocation(line: 58, column: 1, scope: !6356)
!6362 = distinct !DISubprogram(name: "atomic_long_read", scope: !6363, file: !6363, line: 3158, type: !6364, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6368)
!6363 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6364 = !DISubroutineType(types: !6365)
!6365 = !{!1231, !6366}
!6366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6367, size: 64)
!6367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!6368 = !{!6369}
!6369 = !DILocalVariable(name: "v", arg: 1, scope: !6362, file: !6363, line: 3158, type: !6366)
!6370 = !DILocation(line: 3158, column: 39, scope: !6362)
!6371 = !DILocation(line: 3160, column: 25, scope: !6362)
!6372 = !DILocation(line: 3160, column: 2, scope: !6362)
!6373 = !DILocation(line: 3161, column: 30, scope: !6362)
!6374 = !DILocation(line: 3161, column: 9, scope: !6362)
!6375 = !DILocation(line: 3161, column: 2, scope: !6362)
!6376 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !506, file: !506, line: 35, type: !6364, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6377)
!6377 = !{!6378}
!6378 = !DILocalVariable(name: "v", arg: 1, scope: !6376, file: !506, line: 35, type: !6366)
!6379 = !DILocation(line: 35, column: 43, scope: !6376)
!6380 = !DILocation(line: 38, column: 27, scope: !6376)
!6381 = !DILocation(line: 38, column: 9, scope: !6376)
!6382 = !DILocation(line: 38, column: 2, scope: !6376)
!6383 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !6384, file: !6384, line: 2554, type: !6385, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6389)
!6384 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!6385 = !DISubroutineType(types: !6386)
!6386 = !{!511, !6387}
!6387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6388, size: 64)
!6388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!6389 = !{!6390}
!6390 = !DILocalVariable(name: "v", arg: 1, scope: !6383, file: !6384, line: 2554, type: !6387)
!6391 = !DILocation(line: 2554, column: 37, scope: !6383)
!6392 = !DILocation(line: 2556, column: 28, scope: !6383)
!6393 = !DILocation(line: 2556, column: 9, scope: !6383)
!6394 = !DILocation(line: 2556, column: 2, scope: !6383)
!6395 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !6396, file: !6396, line: 13, type: !6385, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6397)
!6396 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!6397 = !{!6398}
!6398 = !DILocalVariable(name: "v", arg: 1, scope: !6395, file: !6396, line: 13, type: !6387)
!6399 = !DILocation(line: 13, column: 65, scope: !6395)
!6400 = !DILocation(line: 15, column: 9, scope: !6395)
!6401 = !DILocation(line: 15, column: 2, scope: !6395)
!6402 = distinct !DISubprogram(name: "raw_atomic_read", scope: !6384, file: !6384, line: 442, type: !6403, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6407)
!6403 = !DISubroutineType(types: !6404)
!6404 = !{!13, !6405}
!6405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6406, size: 64)
!6406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!6407 = !{!6408}
!6408 = !DILocalVariable(name: "v", arg: 1, scope: !6402, file: !6384, line: 442, type: !6405)
!6409 = !DILocation(line: 442, column: 33, scope: !6402)
!6410 = !DILocation(line: 444, column: 26, scope: !6402)
!6411 = !DILocation(line: 444, column: 9, scope: !6402)
!6412 = !DILocation(line: 444, column: 2, scope: !6402)
!6413 = distinct !DISubprogram(name: "arch_atomic_read", scope: !6414, file: !6414, line: 17, type: !6403, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6415)
!6414 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!6415 = !{!6416}
!6416 = !DILocalVariable(name: "v", arg: 1, scope: !6413, file: !6414, line: 17, type: !6405)
!6417 = !DILocation(line: 17, column: 61, scope: !6413)
!6418 = !DILocation(line: 23, column: 9, scope: !6413)
!6419 = !DILocation(line: 23, column: 2, scope: !6413)
