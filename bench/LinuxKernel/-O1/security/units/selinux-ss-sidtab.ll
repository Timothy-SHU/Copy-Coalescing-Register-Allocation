; ModuleID = 'security/selinux/ss/sidtab.c'
source_filename = "security/selinux/ss/sidtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.static_call_key = type { ptr, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sidtab = type { [4 x %union.sidtab_entry_inner], i32, ptr, i8, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, [27 x %struct.sidtab_isid_entry], [512 x %struct.hlist_head] }
%union.sidtab_entry_inner = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.sidtab_isid_entry = type { i32, %struct.sidtab_entry }
%struct.sidtab_entry = type { i32, i32, %struct.context, ptr, %struct.hlist_node }
%struct.context = type { i32, i32, i32, i32, %struct.mls_range, ptr }
%struct.mls_range = type { [2 x %struct.mls_level] }
%struct.mls_level = type { i32, %struct.ebitmap }
%struct.ebitmap = type { ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.sidtab_convert_params = type { ptr, ptr }
%struct.sidtab_node_inner = type { [512 x %union.sidtab_entry_inner] }
%struct.sidtab_node_leaf = type { [39 x %struct.sidtab_entry] }
%struct.sidtab_str_cache = type { %struct.callback_head, %struct.list_head, ptr, i32, [0 x i8] }
%struct.callback_head = type { ptr, ptr }

@.str = private unnamed_addr constant [51 x i8] c"entries: %d\0Abuckets used: %d/%d\0Alongest chain: %d\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [54 x i8] c"\016SELinux:  Context %s is not valid (left unmapped).\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [48 x i8] c"\016SELinux:  Converting %u SID table entries...\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [29 x i8] c"security/selinux/ss/sidtab.c\00", align 1, !dbg !17
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched170 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !22
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !153
@llvm.compiler.used = appending global [1 x ptr] [ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched170], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sidtab_init(ptr noundef %s) #0 align 16 !dbg !167 {
entry:
  %s.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %.compoundliteral6 = alloca %struct.spinlock, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !501, metadata !DIExpression()), !dbg !503
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !504
  call void @llvm.dbg.declare(metadata ptr %i, metadata !502, metadata !DIExpression()), !dbg !505
  %0 = load ptr, ptr %s.addr, align 8, !dbg !506
  %roots = getelementptr inbounds %struct.sidtab, ptr %0, i32 0, i32 0, !dbg !507
  %arraydecay = getelementptr inbounds [4 x %union.sidtab_entry_inner], ptr %roots, i64 0, i64 0, !dbg !508
  call void @llvm.memset.p0.i64(ptr align 8 %arraydecay, i8 0, i64 32, i1 false), !dbg !508
  store i32 0, ptr %i, align 4, !dbg !509
  br label %for.cond, !dbg !511

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !512
  %cmp = icmp ult i32 %1, 27, !dbg !514
  br i1 %cmp, label %for.body, label %for.end, !dbg !515

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8, !dbg !516
  %isids = getelementptr inbounds %struct.sidtab, ptr %2, i32 0, i32 8, !dbg !517
  %3 = load i32, ptr %i, align 4, !dbg !518
  %idxprom = zext i32 %3 to i64, !dbg !516
  %arrayidx = getelementptr [27 x %struct.sidtab_isid_entry], ptr %isids, i64 0, i64 %idxprom, !dbg !516
  %set = getelementptr inbounds %struct.sidtab_isid_entry, ptr %arrayidx, i32 0, i32 0, !dbg !519
  store i32 0, ptr %set, align 8, !dbg !520
  br label %for.inc, !dbg !516

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !521
  %inc = add i32 %4, 1, !dbg !521
  store i32 %inc, ptr %i, align 4, !dbg !521
  br label %for.cond, !dbg !522, !llvm.loop !523

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %s.addr, align 8, !dbg !527
  %frozen = getelementptr inbounds %struct.sidtab, ptr %5, i32 0, i32 3, !dbg !528
  store i8 0, ptr %frozen, align 8, !dbg !529
  %6 = load ptr, ptr %s.addr, align 8, !dbg !530
  %count = getelementptr inbounds %struct.sidtab, ptr %6, i32 0, i32 1, !dbg !531
  store i32 0, ptr %count, align 8, !dbg !532
  %7 = load ptr, ptr %s.addr, align 8, !dbg !533
  %convert = getelementptr inbounds %struct.sidtab, ptr %7, i32 0, i32 2, !dbg !534
  store ptr null, ptr %convert, align 8, !dbg !535
  %8 = load ptr, ptr %s.addr, align 8, !dbg !536
  %context_to_sid = getelementptr inbounds %struct.sidtab, ptr %8, i32 0, i32 9, !dbg !536
  %arraydecay1 = getelementptr inbounds [512 x %struct.hlist_head], ptr %context_to_sid, i64 0, i64 0, !dbg !536
  call void @__hash_init(ptr noundef %arraydecay1, i32 noundef 512) #18, !dbg !536
  br label %do.body, !dbg !537

do.body:                                          ; preds = %for.end
  %9 = load ptr, ptr %s.addr, align 8, !dbg !538
  %lock = getelementptr inbounds %struct.sidtab, ptr %9, i32 0, i32 4, !dbg !538
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !538
  %10 = load ptr, ptr %s.addr, align 8, !dbg !538
  %lock2 = getelementptr inbounds %struct.sidtab, ptr %10, i32 0, i32 4, !dbg !538
  %11 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !538
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %11, i32 0, i32 0, !dbg !538
  %12 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !538
  %counter = getelementptr inbounds %struct.atomic_t, ptr %12, i32 0, i32 0, !dbg !538
  store i32 0, ptr %counter, align 4, !dbg !538
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lock2, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !538
  br label %do.cond, !dbg !538

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !538

do.end:                                           ; preds = %do.cond
  %13 = load ptr, ptr %s.addr, align 8, !dbg !540
  %cache_free_slots = getelementptr inbounds %struct.sidtab, ptr %13, i32 0, i32 5, !dbg !541
  store i32 256, ptr %cache_free_slots, align 8, !dbg !542
  %14 = load ptr, ptr %s.addr, align 8, !dbg !543
  %cache_lru_list = getelementptr inbounds %struct.sidtab, ptr %14, i32 0, i32 6, !dbg !544
  call void @INIT_LIST_HEAD(ptr noundef %cache_lru_list) #18, !dbg !545
  br label %do.body3, !dbg !546

do.body3:                                         ; preds = %do.end
  %15 = load ptr, ptr %s.addr, align 8, !dbg !547
  %cache_lock = getelementptr inbounds %struct.sidtab, ptr %15, i32 0, i32 7, !dbg !547
  %call4 = call ptr @spinlock_check(ptr noundef %cache_lock) #18, !dbg !547
  %16 = load ptr, ptr %s.addr, align 8, !dbg !547
  %cache_lock5 = getelementptr inbounds %struct.sidtab, ptr %16, i32 0, i32 7, !dbg !547
  %17 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral6, i32 0, i32 0, !dbg !547
  %raw_lock7 = getelementptr inbounds %struct.raw_spinlock, ptr %17, i32 0, i32 0, !dbg !547
  %18 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock7, i32 0, i32 0, !dbg !547
  %counter8 = getelementptr inbounds %struct.atomic_t, ptr %18, i32 0, i32 0, !dbg !547
  store i32 0, ptr %counter8, align 4, !dbg !547
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %cache_lock5, ptr align 4 %.compoundliteral6, i64 4, i1 false), !dbg !547
  br label %do.cond9, !dbg !547

do.cond9:                                         ; preds = %do.body3
  br label %do.end10, !dbg !547

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !549
  ret i32 0, !dbg !550
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__hash_init(ptr noundef %ht, i32 noundef %sz) #4 align 16 !dbg !551 {
entry:
  %ht.addr = alloca ptr, align 8
  %sz.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %ht, ptr %ht.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ht.addr, metadata !557, metadata !DIExpression()), !dbg !560
  store i32 %sz, ptr %sz.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sz.addr, metadata !558, metadata !DIExpression()), !dbg !561
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %i, metadata !559, metadata !DIExpression()), !dbg !563
  store i32 0, ptr %i, align 4, !dbg !564
  br label %for.cond, !dbg !566

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !567
  %1 = load i32, ptr %sz.addr, align 4, !dbg !569
  %cmp = icmp ult i32 %0, %1, !dbg !570
  br i1 %cmp, label %for.body, label %for.end, !dbg !571

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %ht.addr, align 8, !dbg !572
  %3 = load i32, ptr %i, align 4, !dbg !572
  %idxprom = zext i32 %3 to i64, !dbg !572
  %arrayidx = getelementptr %struct.hlist_head, ptr %2, i64 %idxprom, !dbg !572
  %first = getelementptr inbounds %struct.hlist_head, ptr %arrayidx, i32 0, i32 0, !dbg !572
  store ptr null, ptr %first, align 8, !dbg !572
  br label %for.inc, !dbg !572

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !573
  %inc = add i32 %4, 1, !dbg !573
  store i32 %inc, ptr %i, align 4, !dbg !573
  br label %for.cond, !dbg !574, !llvm.loop !575

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !577
  ret void, !dbg !577
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !578 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !586, metadata !DIExpression()), !dbg !587
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !588
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !589
  ret ptr %1, !dbg !590
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !591 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !596, metadata !DIExpression()), !dbg !597
  br label %do.body, !dbg !598

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !599

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !601

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !599

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !603
  %1 = load ptr, ptr %list.addr, align 8, !dbg !603
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !603
  store volatile ptr %0, ptr %next, align 8, !dbg !603
  br label %do.end3, !dbg !603

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !599

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !605

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !606

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !608

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !606

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !610
  %3 = load ptr, ptr %list.addr, align 8, !dbg !610
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !610
  store volatile ptr %2, ptr %prev, align 8, !dbg !610
  br label %do.end9, !dbg !610

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !606

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !612
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sidtab_set_initial(ptr noundef %s, i32 noundef %sid, ptr noundef %context) #0 align 16 !dbg !613 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %sid.addr = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %isid = alloca ptr, align 8
  %hash = alloca i32, align 4
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !618, metadata !DIExpression()), !dbg !625
  store i32 %sid, ptr %sid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sid.addr, metadata !619, metadata !DIExpression()), !dbg !626
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !620, metadata !DIExpression()), !dbg !627
  call void @llvm.lifetime.start.p0(i64 8, ptr %isid) #17, !dbg !628
  call void @llvm.dbg.declare(metadata ptr %isid, metadata !621, metadata !DIExpression()), !dbg !629
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #17, !dbg !630
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !623, metadata !DIExpression()), !dbg !631
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #17, !dbg !632
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !624, metadata !DIExpression()), !dbg !633
  %0 = load i32, ptr %sid.addr, align 4, !dbg !634
  %cmp = icmp eq i32 %0, 0, !dbg !636
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !637

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %sid.addr, align 4, !dbg !638
  %cmp1 = icmp ugt i32 %1, 27, !dbg !639
  br i1 %cmp1, label %if.then, label %if.end, !dbg !640

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !641
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !641

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %s.addr, align 8, !dbg !642
  %isids = getelementptr inbounds %struct.sidtab, ptr %2, i32 0, i32 8, !dbg !643
  %3 = load i32, ptr %sid.addr, align 4, !dbg !644
  %sub = sub i32 %3, 1, !dbg !645
  %idxprom = zext i32 %sub to i64, !dbg !642
  %arrayidx = getelementptr [27 x %struct.sidtab_isid_entry], ptr %isids, i64 0, i64 %idxprom, !dbg !642
  store ptr %arrayidx, ptr %isid, align 8, !dbg !646
  %4 = load ptr, ptr %isid, align 8, !dbg !647
  %entry2 = getelementptr inbounds %struct.sidtab_isid_entry, ptr %4, i32 0, i32 1, !dbg !648
  %context3 = getelementptr inbounds %struct.sidtab_entry, ptr %entry2, i32 0, i32 2, !dbg !649
  %5 = load ptr, ptr %context.addr, align 8, !dbg !650
  %call = call i32 @context_cpy(ptr noundef %context3, ptr noundef %5) #18, !dbg !651
  store i32 %call, ptr %rc, align 4, !dbg !652
  %6 = load i32, ptr %rc, align 4, !dbg !653
  %tobool = icmp ne i32 %6, 0, !dbg !653
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !655

if.then4:                                         ; preds = %if.end
  %7 = load i32, ptr %rc, align 4, !dbg !656
  store i32 %7, ptr %retval, align 4, !dbg !657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !657

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %isid, align 8, !dbg !658
  %entry6 = getelementptr inbounds %struct.sidtab_isid_entry, ptr %8, i32 0, i32 1, !dbg !659
  %cache = getelementptr inbounds %struct.sidtab_entry, ptr %entry6, i32 0, i32 3, !dbg !660
  store ptr null, ptr %cache, align 8, !dbg !661
  %9 = load ptr, ptr %isid, align 8, !dbg !662
  %set = getelementptr inbounds %struct.sidtab_isid_entry, ptr %9, i32 0, i32 0, !dbg !663
  store i32 1, ptr %set, align 8, !dbg !664
  %10 = load ptr, ptr %context.addr, align 8, !dbg !665
  %call7 = call i32 @context_compute_hash(ptr noundef %10) #18, !dbg !666
  store i32 %call7, ptr %hash, align 4, !dbg !667
  %11 = load ptr, ptr %s.addr, align 8, !dbg !668
  %12 = load ptr, ptr %context.addr, align 8, !dbg !670
  %13 = load i32, ptr %hash, align 4, !dbg !671
  %call8 = call i32 @context_to_sid(ptr noundef %11, ptr noundef %12, i32 noundef %13) #18, !dbg !672
  %tobool9 = icmp ne i32 %call8, 0, !dbg !672
  br i1 %tobool9, label %if.end19, label %if.then10, !dbg !673

if.then10:                                        ; preds = %if.end5
  %14 = load i32, ptr %sid.addr, align 4, !dbg !674
  %15 = load ptr, ptr %isid, align 8, !dbg !676
  %entry11 = getelementptr inbounds %struct.sidtab_isid_entry, ptr %15, i32 0, i32 1, !dbg !677
  %sid12 = getelementptr inbounds %struct.sidtab_entry, ptr %entry11, i32 0, i32 0, !dbg !678
  store i32 %14, ptr %sid12, align 8, !dbg !679
  %16 = load i32, ptr %hash, align 4, !dbg !680
  %17 = load ptr, ptr %isid, align 8, !dbg !681
  %entry13 = getelementptr inbounds %struct.sidtab_isid_entry, ptr %17, i32 0, i32 1, !dbg !682
  %hash14 = getelementptr inbounds %struct.sidtab_entry, ptr %entry13, i32 0, i32 1, !dbg !683
  store i32 %16, ptr %hash14, align 4, !dbg !684
  %18 = load ptr, ptr %isid, align 8, !dbg !685
  %entry15 = getelementptr inbounds %struct.sidtab_isid_entry, ptr %18, i32 0, i32 1, !dbg !685
  %list = getelementptr inbounds %struct.sidtab_entry, ptr %entry15, i32 0, i32 4, !dbg !685
  %19 = load ptr, ptr %s.addr, align 8, !dbg !685
  %context_to_sid = getelementptr inbounds %struct.sidtab, ptr %19, i32 0, i32 9, !dbg !685
  %20 = load i32, ptr %hash, align 4, !dbg !685
  %call16 = call i32 @hash_32(i32 noundef %20, i32 noundef 9) #18, !dbg !685
  %idxprom17 = zext i32 %call16 to i64, !dbg !685
  %arrayidx18 = getelementptr [512 x %struct.hlist_head], ptr %context_to_sid, i64 0, i64 %idxprom17, !dbg !685
  call void @hlist_add_head(ptr noundef %list, ptr noundef %arrayidx18) #18, !dbg !685
  br label %if.end19, !dbg !686

if.end19:                                         ; preds = %if.then10, %if.end5
  store i32 0, ptr %retval, align 4, !dbg !687
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !687

cleanup:                                          ; preds = %if.end19, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #17, !dbg !688
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #17, !dbg !688
  call void @llvm.lifetime.end.p0(i64 8, ptr %isid) #17, !dbg !688
  %21 = load i32, ptr %retval, align 4, !dbg !688
  ret i32 %21, !dbg !688
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @context_cpy(ptr noundef %dst, ptr noundef %src) #4 align 16 !dbg !689 {
entry:
  %retval = alloca i32, align 4
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !695, metadata !DIExpression()), !dbg !698
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !696, metadata !DIExpression()), !dbg !699
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #17, !dbg !700
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !697, metadata !DIExpression()), !dbg !701
  %0 = load ptr, ptr %src.addr, align 8, !dbg !702
  %user = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 0, !dbg !703
  %1 = load i32, ptr %user, align 8, !dbg !703
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !704
  %user1 = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 0, !dbg !705
  store i32 %1, ptr %user1, align 8, !dbg !706
  %3 = load ptr, ptr %src.addr, align 8, !dbg !707
  %role = getelementptr inbounds %struct.context, ptr %3, i32 0, i32 1, !dbg !708
  %4 = load i32, ptr %role, align 4, !dbg !708
  %5 = load ptr, ptr %dst.addr, align 8, !dbg !709
  %role2 = getelementptr inbounds %struct.context, ptr %5, i32 0, i32 1, !dbg !710
  store i32 %4, ptr %role2, align 4, !dbg !711
  %6 = load ptr, ptr %src.addr, align 8, !dbg !712
  %type = getelementptr inbounds %struct.context, ptr %6, i32 0, i32 2, !dbg !713
  %7 = load i32, ptr %type, align 8, !dbg !713
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !714
  %type3 = getelementptr inbounds %struct.context, ptr %8, i32 0, i32 2, !dbg !715
  store i32 %7, ptr %type3, align 8, !dbg !716
  %9 = load ptr, ptr %src.addr, align 8, !dbg !717
  %str = getelementptr inbounds %struct.context, ptr %9, i32 0, i32 5, !dbg !719
  %10 = load ptr, ptr %str, align 8, !dbg !719
  %tobool = icmp ne ptr %10, null, !dbg !717
  br i1 %tobool, label %if.then, label %if.else, !dbg !720

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %src.addr, align 8, !dbg !721
  %str4 = getelementptr inbounds %struct.context, ptr %11, i32 0, i32 5, !dbg !723
  %12 = load ptr, ptr %str4, align 8, !dbg !723
  %call = call noalias ptr @kstrdup(ptr noundef %12, i32 noundef 2080) #18, !dbg !724
  %13 = load ptr, ptr %dst.addr, align 8, !dbg !725
  %str5 = getelementptr inbounds %struct.context, ptr %13, i32 0, i32 5, !dbg !726
  store ptr %call, ptr %str5, align 8, !dbg !727
  %14 = load ptr, ptr %dst.addr, align 8, !dbg !728
  %str6 = getelementptr inbounds %struct.context, ptr %14, i32 0, i32 5, !dbg !730
  %15 = load ptr, ptr %str6, align 8, !dbg !730
  %tobool7 = icmp ne ptr %15, null, !dbg !728
  br i1 %tobool7, label %if.end, label %if.then8, !dbg !731

if.then8:                                         ; preds = %if.then
  store i32 -12, ptr %retval, align 4, !dbg !732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !732

if.end:                                           ; preds = %if.then
  %16 = load ptr, ptr %src.addr, align 8, !dbg !733
  %len = getelementptr inbounds %struct.context, ptr %16, i32 0, i32 3, !dbg !734
  %17 = load i32, ptr %len, align 4, !dbg !734
  %18 = load ptr, ptr %dst.addr, align 8, !dbg !735
  %len9 = getelementptr inbounds %struct.context, ptr %18, i32 0, i32 3, !dbg !736
  store i32 %17, ptr %len9, align 4, !dbg !737
  br label %if.end12, !dbg !738

if.else:                                          ; preds = %entry
  %19 = load ptr, ptr %dst.addr, align 8, !dbg !739
  %str10 = getelementptr inbounds %struct.context, ptr %19, i32 0, i32 5, !dbg !741
  store ptr null, ptr %str10, align 8, !dbg !742
  %20 = load ptr, ptr %dst.addr, align 8, !dbg !743
  %len11 = getelementptr inbounds %struct.context, ptr %20, i32 0, i32 3, !dbg !744
  store i32 0, ptr %len11, align 4, !dbg !745
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end
  %21 = load ptr, ptr %dst.addr, align 8, !dbg !746
  %22 = load ptr, ptr %src.addr, align 8, !dbg !747
  %call13 = call i32 @mls_context_cpy(ptr noundef %21, ptr noundef %22) #18, !dbg !748
  store i32 %call13, ptr %rc, align 4, !dbg !749
  %23 = load i32, ptr %rc, align 4, !dbg !750
  %tobool14 = icmp ne i32 %23, 0, !dbg !750
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !752

if.then15:                                        ; preds = %if.end12
  %24 = load ptr, ptr %dst.addr, align 8, !dbg !753
  %str16 = getelementptr inbounds %struct.context, ptr %24, i32 0, i32 5, !dbg !755
  %25 = load ptr, ptr %str16, align 8, !dbg !755
  call void @kfree(ptr noundef %25) #18, !dbg !756
  %26 = load ptr, ptr %dst.addr, align 8, !dbg !757
  %str17 = getelementptr inbounds %struct.context, ptr %26, i32 0, i32 5, !dbg !758
  store ptr null, ptr %str17, align 8, !dbg !759
  %27 = load ptr, ptr %dst.addr, align 8, !dbg !760
  %len18 = getelementptr inbounds %struct.context, ptr %27, i32 0, i32 3, !dbg !761
  store i32 0, ptr %len18, align 4, !dbg !762
  %28 = load i32, ptr %rc, align 4, !dbg !763
  store i32 %28, ptr %retval, align 4, !dbg !764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !764

if.end19:                                         ; preds = %if.end12
  store i32 0, ptr %retval, align 4, !dbg !765
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !765

cleanup:                                          ; preds = %if.end19, %if.then15, %if.then8
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #17, !dbg !766
  %29 = load i32, ptr %retval, align 4, !dbg !766
  ret i32 %29, !dbg !766
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !767 dso_local i32 @context_compute_hash(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @context_to_sid(ptr noundef %s, ptr noundef %context, i32 noundef %hash) #0 align 16 !dbg !770 {
entry:
  %s.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %hash.addr = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %sid = alloca i32, align 4
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu555 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %____ptr13 = alloca ptr, align 8
  %__UNIQUE_ID_rcu557 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  %__mptr22 = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !774, metadata !DIExpression()), !dbg !793
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !775, metadata !DIExpression()), !dbg !794
  store i32 %hash, ptr %hash.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %hash.addr, metadata !776, metadata !DIExpression()), !dbg !795
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #17, !dbg !796
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !777, metadata !DIExpression()), !dbg !797
  call void @llvm.lifetime.start.p0(i64 4, ptr %sid) #17, !dbg !798
  call void @llvm.dbg.declare(metadata ptr %sid, metadata !778, metadata !DIExpression()), !dbg !799
  store i32 0, ptr %sid, align 4, !dbg !799
  call void @rcu_read_lock() #18, !dbg !800
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #17, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !779, metadata !DIExpression()), !dbg !801
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu555) #17, !dbg !802
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu555, metadata !782, metadata !DIExpression()), !dbg !802
  br label %do.body, !dbg !803

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !805

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !805

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %s.addr, align 8, !dbg !803
  %context_to_sid = getelementptr inbounds %struct.sidtab, ptr %0, i32 0, i32 9, !dbg !803
  %1 = load i32, ptr %hash.addr, align 4, !dbg !803
  %call = call i32 @hash_32(i32 noundef %1, i32 noundef 9) #18, !dbg !803
  %idxprom = zext i32 %call to i64, !dbg !803
  %arrayidx = getelementptr [512 x %struct.hlist_head], ptr %context_to_sid, i64 0, i64 %idxprom, !dbg !803
  %first = getelementptr inbounds %struct.hlist_head, ptr %arrayidx, i32 0, i32 0, !dbg !803
  %2 = load volatile ptr, ptr %first, align 8, !dbg !803
  store ptr %2, ptr %tmp, align 8, !dbg !805
  %3 = load ptr, ptr %tmp, align 8, !dbg !803
  store ptr %3, ptr %__UNIQUE_ID_rcu555, align 8, !dbg !802
  %4 = load ptr, ptr %__UNIQUE_ID_rcu555, align 8, !dbg !802
  store ptr %4, ptr %tmp2, align 8, !dbg !802
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu555) #17, !dbg !801
  %5 = load ptr, ptr %tmp2, align 8, !dbg !802
  store ptr %5, ptr %____ptr, align 8, !dbg !801
  %6 = load ptr, ptr %____ptr, align 8, !dbg !801
  %tobool = icmp ne ptr %6, null, !dbg !801
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !801

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !807
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !784, metadata !DIExpression()), !dbg !807
  %7 = load ptr, ptr %____ptr, align 8, !dbg !807
  store ptr %7, ptr %__mptr, align 8, !dbg !807
  %8 = load ptr, ptr %__mptr, align 8, !dbg !807
  %add.ptr = getelementptr i8, ptr %8, i64 -88, !dbg !807
  store ptr %add.ptr, ptr %tmp4, align 8, !dbg !807
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !801
  %9 = load ptr, ptr %tmp4, align 8, !dbg !807
  br label %cond.end, !dbg !801

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !801

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ null, %cond.false ], !dbg !801
  store ptr %cond, ptr %tmp3, align 8, !dbg !801
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #17, !dbg !808
  %10 = load ptr, ptr %tmp3, align 8, !dbg !801
  store ptr %10, ptr %entry1, align 8, !dbg !808
  br label %for.cond, !dbg !808

for.cond:                                         ; preds = %cond.end26, %cond.end
  %11 = load ptr, ptr %entry1, align 8, !dbg !809
  %tobool5 = icmp ne ptr %11, null, !dbg !808
  br i1 %tobool5, label %for.body, label %for.end, !dbg !808

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %entry1, align 8, !dbg !810
  %hash6 = getelementptr inbounds %struct.sidtab_entry, ptr %12, i32 0, i32 1, !dbg !813
  %13 = load i32, ptr %hash6, align 4, !dbg !813
  %14 = load i32, ptr %hash.addr, align 4, !dbg !814
  %cmp = icmp ne i32 %13, %14, !dbg !815
  br i1 %cmp, label %if.then, label %if.end, !dbg !816

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !817

if.end:                                           ; preds = %for.body
  %15 = load ptr, ptr %entry1, align 8, !dbg !818
  %context7 = getelementptr inbounds %struct.sidtab_entry, ptr %15, i32 0, i32 2, !dbg !820
  %16 = load ptr, ptr %context.addr, align 8, !dbg !821
  %call8 = call i32 @context_cmp(ptr noundef %context7, ptr noundef %16) #18, !dbg !822
  %tobool9 = icmp ne i32 %call8, 0, !dbg !822
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !823

if.then10:                                        ; preds = %if.end
  %17 = load ptr, ptr %entry1, align 8, !dbg !824
  %sid11 = getelementptr inbounds %struct.sidtab_entry, ptr %17, i32 0, i32 0, !dbg !826
  %18 = load i32, ptr %sid11, align 8, !dbg !826
  store i32 %18, ptr %sid, align 4, !dbg !827
  br label %for.end, !dbg !828

if.end12:                                         ; preds = %if.end
  br label %for.inc, !dbg !829

for.inc:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr13) #17, !dbg !830
  call void @llvm.dbg.declare(metadata ptr %____ptr13, metadata !786, metadata !DIExpression()), !dbg !830
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu557) #17, !dbg !831
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu557, metadata !789, metadata !DIExpression()), !dbg !831
  br label %do.body14, !dbg !832

do.body14:                                        ; preds = %for.inc
  br label %do.cond15, !dbg !834

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !834

do.end16:                                         ; preds = %do.cond15
  %19 = load ptr, ptr %entry1, align 8, !dbg !832
  %list = getelementptr inbounds %struct.sidtab_entry, ptr %19, i32 0, i32 4, !dbg !832
  %next = getelementptr inbounds %struct.hlist_node, ptr %list, i32 0, i32 0, !dbg !832
  %20 = load volatile ptr, ptr %next, align 8, !dbg !832
  store ptr %20, ptr %tmp17, align 8, !dbg !834
  %21 = load ptr, ptr %tmp17, align 8, !dbg !832
  store ptr %21, ptr %__UNIQUE_ID_rcu557, align 8, !dbg !831
  %22 = load ptr, ptr %__UNIQUE_ID_rcu557, align 8, !dbg !831
  store ptr %22, ptr %tmp18, align 8, !dbg !831
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu557) #17, !dbg !830
  %23 = load ptr, ptr %tmp18, align 8, !dbg !831
  store ptr %23, ptr %____ptr13, align 8, !dbg !830
  %24 = load ptr, ptr %____ptr13, align 8, !dbg !830
  %tobool20 = icmp ne ptr %24, null, !dbg !830
  br i1 %tobool20, label %cond.true21, label %cond.false25, !dbg !830

cond.true21:                                      ; preds = %do.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr22) #17, !dbg !836
  call void @llvm.dbg.declare(metadata ptr %__mptr22, metadata !791, metadata !DIExpression()), !dbg !836
  %25 = load ptr, ptr %____ptr13, align 8, !dbg !836
  store ptr %25, ptr %__mptr22, align 8, !dbg !836
  %26 = load ptr, ptr %__mptr22, align 8, !dbg !836
  %add.ptr24 = getelementptr i8, ptr %26, i64 -88, !dbg !836
  store ptr %add.ptr24, ptr %tmp23, align 8, !dbg !836
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr22) #17, !dbg !830
  %27 = load ptr, ptr %tmp23, align 8, !dbg !836
  br label %cond.end26, !dbg !830

cond.false25:                                     ; preds = %do.end16
  br label %cond.end26, !dbg !830

cond.end26:                                       ; preds = %cond.false25, %cond.true21
  %cond27 = phi ptr [ %27, %cond.true21 ], [ null, %cond.false25 ], !dbg !830
  store ptr %cond27, ptr %tmp19, align 8, !dbg !830
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr13) #17, !dbg !809
  %28 = load ptr, ptr %tmp19, align 8, !dbg !830
  store ptr %28, ptr %entry1, align 8, !dbg !809
  br label %for.cond, !dbg !809, !llvm.loop !837

for.end:                                          ; preds = %if.then10, %for.cond
  call void @rcu_read_unlock() #18, !dbg !839
  %29 = load i32, ptr %sid, align 4, !dbg !840
  call void @llvm.lifetime.end.p0(i64 4, ptr %sid) #17, !dbg !841
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #17, !dbg !841
  ret i32 %29, !dbg !842
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_add_head(ptr noundef %n, ptr noundef %h) #4 align 16 !dbg !843 {
entry:
  %n.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !847, metadata !DIExpression()), !dbg !850
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !848, metadata !DIExpression()), !dbg !851
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #17, !dbg !852
  call void @llvm.dbg.declare(metadata ptr %first, metadata !849, metadata !DIExpression()), !dbg !853
  %0 = load ptr, ptr %h.addr, align 8, !dbg !854
  %first1 = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !855
  %1 = load ptr, ptr %first1, align 8, !dbg !855
  store ptr %1, ptr %first, align 8, !dbg !853
  br label %do.body, !dbg !856

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !857

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !859

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !859

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !857

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %first, align 8, !dbg !861
  %3 = load ptr, ptr %n.addr, align 8, !dbg !861
  %next = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 0, !dbg !861
  store volatile ptr %2, ptr %next, align 8, !dbg !861
  br label %do.cond4, !dbg !861

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !861

do.end5:                                          ; preds = %do.cond4
  br label %do.cond6, !dbg !857

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !857

do.end7:                                          ; preds = %do.cond6
  %4 = load ptr, ptr %first, align 8, !dbg !863
  %tobool = icmp ne ptr %4, null, !dbg !863
  br i1 %tobool, label %if.then, label %if.end, !dbg !865

if.then:                                          ; preds = %do.end7
  br label %do.body8, !dbg !866

do.body8:                                         ; preds = %if.then
  br label %do.body9, !dbg !867

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !869

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !869

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !867

do.body12:                                        ; preds = %do.end11
  %5 = load ptr, ptr %n.addr, align 8, !dbg !871
  %next13 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 0, !dbg !871
  %6 = load ptr, ptr %first, align 8, !dbg !871
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1, !dbg !871
  store volatile ptr %next13, ptr %pprev, align 8, !dbg !871
  br label %do.cond14, !dbg !871

do.cond14:                                        ; preds = %do.body12
  br label %do.end15, !dbg !871

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !867

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !867

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !867

if.end:                                           ; preds = %do.end17, %do.end7
  br label %do.body18, !dbg !873

do.body18:                                        ; preds = %if.end
  br label %do.body19, !dbg !874

do.body19:                                        ; preds = %do.body18
  br label %do.cond20, !dbg !876

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !876

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !874

do.body22:                                        ; preds = %do.end21
  %7 = load ptr, ptr %n.addr, align 8, !dbg !878
  %8 = load ptr, ptr %h.addr, align 8, !dbg !878
  %first23 = getelementptr inbounds %struct.hlist_head, ptr %8, i32 0, i32 0, !dbg !878
  store volatile ptr %7, ptr %first23, align 8, !dbg !878
  br label %do.cond24, !dbg !878

do.cond24:                                        ; preds = %do.body22
  br label %do.end25, !dbg !878

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !874

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !874

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !880

do.body28:                                        ; preds = %do.end27
  br label %do.body29, !dbg !881

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !883

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !883

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !881

do.body32:                                        ; preds = %do.end31
  %9 = load ptr, ptr %h.addr, align 8, !dbg !885
  %first33 = getelementptr inbounds %struct.hlist_head, ptr %9, i32 0, i32 0, !dbg !885
  %10 = load ptr, ptr %n.addr, align 8, !dbg !885
  %pprev34 = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1, !dbg !885
  store volatile ptr %first33, ptr %pprev34, align 8, !dbg !885
  br label %do.cond35, !dbg !885

do.cond35:                                        ; preds = %do.body32
  br label %do.end36, !dbg !885

do.end36:                                         ; preds = %do.cond35
  br label %do.cond37, !dbg !881

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !881

do.end38:                                         ; preds = %do.cond37
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #17, !dbg !887
  ret void, !dbg !887
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @hash_32(i32 noundef %val, i32 noundef %bits) #4 align 16 !dbg !888 {
entry:
  %val.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !893, metadata !DIExpression()), !dbg !895
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !894, metadata !DIExpression()), !dbg !896
  %0 = load i32, ptr %val.addr, align 4, !dbg !897
  %call = call i32 @__hash_32_generic(i32 noundef %0) #18, !dbg !898
  %1 = load i32, ptr %bits.addr, align 4, !dbg !899
  %sub = sub i32 32, %1, !dbg !900
  %shr = lshr i32 %call, %sub, !dbg !901
  ret i32 %shr, !dbg !902
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sidtab_hash_stats(ptr noundef %sidtab, ptr noundef %page) #0 align 16 !dbg !903 {
entry:
  %sidtab.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %chain_len = alloca i32, align 4
  %slots_used = alloca i32, align 4
  %entries = alloca i32, align 4
  %max_chain_len = alloca i32, align 4
  %cur_bucket = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %__UNIQUE_ID_rcu559 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %____ptr22 = alloca ptr, align 8
  %__UNIQUE_ID_rcu561 = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  %tmp27 = alloca ptr, align 8
  %tmp28 = alloca ptr, align 8
  %__mptr31 = alloca ptr, align 8
  %tmp32 = alloca ptr, align 8
  store ptr %sidtab, ptr %sidtab.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sidtab.addr, metadata !907, metadata !DIExpression()), !dbg !932
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !908, metadata !DIExpression()), !dbg !933
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !934
  call void @llvm.dbg.declare(metadata ptr %i, metadata !909, metadata !DIExpression()), !dbg !935
  call void @llvm.lifetime.start.p0(i64 4, ptr %chain_len) #17, !dbg !936
  call void @llvm.dbg.declare(metadata ptr %chain_len, metadata !910, metadata !DIExpression()), !dbg !937
  store i32 0, ptr %chain_len, align 4, !dbg !937
  call void @llvm.lifetime.start.p0(i64 4, ptr %slots_used) #17, !dbg !938
  call void @llvm.dbg.declare(metadata ptr %slots_used, metadata !911, metadata !DIExpression()), !dbg !939
  store i32 0, ptr %slots_used, align 4, !dbg !939
  call void @llvm.lifetime.start.p0(i64 4, ptr %entries) #17, !dbg !940
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !912, metadata !DIExpression()), !dbg !941
  store i32 0, ptr %entries, align 4, !dbg !941
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_chain_len) #17, !dbg !942
  call void @llvm.dbg.declare(metadata ptr %max_chain_len, metadata !913, metadata !DIExpression()), !dbg !943
  store i32 0, ptr %max_chain_len, align 4, !dbg !943
  call void @llvm.lifetime.start.p0(i64 4, ptr %cur_bucket) #17, !dbg !944
  call void @llvm.dbg.declare(metadata ptr %cur_bucket, metadata !914, metadata !DIExpression()), !dbg !945
  store i32 0, ptr %cur_bucket, align 4, !dbg !945
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #17, !dbg !946
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !915, metadata !DIExpression()), !dbg !947
  call void @rcu_read_lock() #18, !dbg !948
  store i32 0, ptr %i, align 4, !dbg !949
  store ptr null, ptr %entry1, align 8, !dbg !949
  br label %for.cond, !dbg !949

for.cond:                                         ; preds = %for.inc37, %entry
  %0 = load ptr, ptr %entry1, align 8, !dbg !950
  %cmp = icmp eq ptr %0, null, !dbg !950
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !950

land.rhs:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !950
  %conv = sext i32 %1 to i64, !dbg !950
  %cmp2 = icmp ult i64 %conv, 512, !dbg !950
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %2 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ], !dbg !951
  br i1 %2, label %for.body, label %for.end39, !dbg !949

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #17, !dbg !952
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !916, metadata !DIExpression()), !dbg !952
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu559) #17, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu559, metadata !921, metadata !DIExpression()), !dbg !953
  br label %do.body, !dbg !954

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !956

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !956

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %sidtab.addr, align 8, !dbg !954
  %context_to_sid = getelementptr inbounds %struct.sidtab, ptr %3, i32 0, i32 9, !dbg !954
  %4 = load i32, ptr %i, align 4, !dbg !954
  %idxprom = sext i32 %4 to i64, !dbg !954
  %arrayidx = getelementptr [512 x %struct.hlist_head], ptr %context_to_sid, i64 0, i64 %idxprom, !dbg !954
  %first = getelementptr inbounds %struct.hlist_head, ptr %arrayidx, i32 0, i32 0, !dbg !954
  %5 = load volatile ptr, ptr %first, align 8, !dbg !954
  store ptr %5, ptr %tmp, align 8, !dbg !956
  %6 = load ptr, ptr %tmp, align 8, !dbg !954
  store ptr %6, ptr %__UNIQUE_ID_rcu559, align 8, !dbg !953
  %7 = load ptr, ptr %__UNIQUE_ID_rcu559, align 8, !dbg !953
  store ptr %7, ptr %tmp4, align 8, !dbg !953
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu559) #17, !dbg !952
  %8 = load ptr, ptr %tmp4, align 8, !dbg !953
  store ptr %8, ptr %____ptr, align 8, !dbg !952
  %9 = load ptr, ptr %____ptr, align 8, !dbg !952
  %tobool = icmp ne ptr %9, null, !dbg !952
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !952

cond.true:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !958
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !923, metadata !DIExpression()), !dbg !958
  %10 = load ptr, ptr %____ptr, align 8, !dbg !958
  store ptr %10, ptr %__mptr, align 8, !dbg !958
  %11 = load ptr, ptr %__mptr, align 8, !dbg !958
  %add.ptr = getelementptr i8, ptr %11, i64 -88, !dbg !958
  store ptr %add.ptr, ptr %tmp6, align 8, !dbg !958
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !952
  %12 = load ptr, ptr %tmp6, align 8, !dbg !958
  br label %cond.end, !dbg !952

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !952

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %12, %cond.true ], [ null, %cond.false ], !dbg !952
  store ptr %cond, ptr %tmp5, align 8, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #17, !dbg !959
  %13 = load ptr, ptr %tmp5, align 8, !dbg !952
  store ptr %13, ptr %entry1, align 8, !dbg !959
  br label %for.cond7, !dbg !959

for.cond7:                                        ; preds = %cond.end35, %cond.end
  %14 = load ptr, ptr %entry1, align 8, !dbg !960
  %tobool8 = icmp ne ptr %14, null, !dbg !959
  br i1 %tobool8, label %for.body9, label %for.end, !dbg !959

for.body9:                                        ; preds = %for.cond7
  %15 = load i32, ptr %entries, align 4, !dbg !961
  %inc = add i32 %15, 1, !dbg !961
  store i32 %inc, ptr %entries, align 4, !dbg !961
  %16 = load i32, ptr %i, align 4, !dbg !963
  %17 = load i32, ptr %cur_bucket, align 4, !dbg !965
  %cmp10 = icmp eq i32 %16, %17, !dbg !966
  br i1 %cmp10, label %if.then, label %if.else, !dbg !967

if.then:                                          ; preds = %for.body9
  %18 = load i32, ptr %chain_len, align 4, !dbg !968
  %inc12 = add i32 %18, 1, !dbg !968
  store i32 %inc12, ptr %chain_len, align 4, !dbg !968
  %19 = load i32, ptr %chain_len, align 4, !dbg !970
  %cmp13 = icmp eq i32 %19, 1, !dbg !972
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !973

if.then15:                                        ; preds = %if.then
  %20 = load i32, ptr %slots_used, align 4, !dbg !974
  %inc16 = add i32 %20, 1, !dbg !974
  store i32 %inc16, ptr %slots_used, align 4, !dbg !974
  br label %if.end, !dbg !975

if.end:                                           ; preds = %if.then15, %if.then
  br label %if.end21, !dbg !976

if.else:                                          ; preds = %for.body9
  %21 = load i32, ptr %i, align 4, !dbg !977
  store i32 %21, ptr %cur_bucket, align 4, !dbg !979
  %22 = load i32, ptr %chain_len, align 4, !dbg !980
  %23 = load i32, ptr %max_chain_len, align 4, !dbg !982
  %cmp17 = icmp sgt i32 %22, %23, !dbg !983
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !984

if.then19:                                        ; preds = %if.else
  %24 = load i32, ptr %chain_len, align 4, !dbg !985
  store i32 %24, ptr %max_chain_len, align 4, !dbg !986
  br label %if.end20, !dbg !987

if.end20:                                         ; preds = %if.then19, %if.else
  store i32 0, ptr %chain_len, align 4, !dbg !988
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end
  br label %for.inc, !dbg !989

for.inc:                                          ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr22) #17, !dbg !990
  call void @llvm.dbg.declare(metadata ptr %____ptr22, metadata !925, metadata !DIExpression()), !dbg !990
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu561) #17, !dbg !991
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu561, metadata !928, metadata !DIExpression()), !dbg !991
  br label %do.body23, !dbg !992

do.body23:                                        ; preds = %for.inc
  br label %do.cond24, !dbg !994

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !994

do.end25:                                         ; preds = %do.cond24
  %25 = load ptr, ptr %entry1, align 8, !dbg !992
  %list = getelementptr inbounds %struct.sidtab_entry, ptr %25, i32 0, i32 4, !dbg !992
  %next = getelementptr inbounds %struct.hlist_node, ptr %list, i32 0, i32 0, !dbg !992
  %26 = load volatile ptr, ptr %next, align 8, !dbg !992
  store ptr %26, ptr %tmp26, align 8, !dbg !994
  %27 = load ptr, ptr %tmp26, align 8, !dbg !992
  store ptr %27, ptr %__UNIQUE_ID_rcu561, align 8, !dbg !991
  %28 = load ptr, ptr %__UNIQUE_ID_rcu561, align 8, !dbg !991
  store ptr %28, ptr %tmp27, align 8, !dbg !991
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu561) #17, !dbg !990
  %29 = load ptr, ptr %tmp27, align 8, !dbg !991
  store ptr %29, ptr %____ptr22, align 8, !dbg !990
  %30 = load ptr, ptr %____ptr22, align 8, !dbg !990
  %tobool29 = icmp ne ptr %30, null, !dbg !990
  br i1 %tobool29, label %cond.true30, label %cond.false34, !dbg !990

cond.true30:                                      ; preds = %do.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr31) #17, !dbg !996
  call void @llvm.dbg.declare(metadata ptr %__mptr31, metadata !930, metadata !DIExpression()), !dbg !996
  %31 = load ptr, ptr %____ptr22, align 8, !dbg !996
  store ptr %31, ptr %__mptr31, align 8, !dbg !996
  %32 = load ptr, ptr %__mptr31, align 8, !dbg !996
  %add.ptr33 = getelementptr i8, ptr %32, i64 -88, !dbg !996
  store ptr %add.ptr33, ptr %tmp32, align 8, !dbg !996
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr31) #17, !dbg !990
  %33 = load ptr, ptr %tmp32, align 8, !dbg !996
  br label %cond.end35, !dbg !990

cond.false34:                                     ; preds = %do.end25
  br label %cond.end35, !dbg !990

cond.end35:                                       ; preds = %cond.false34, %cond.true30
  %cond36 = phi ptr [ %33, %cond.true30 ], [ null, %cond.false34 ], !dbg !990
  store ptr %cond36, ptr %tmp28, align 8, !dbg !990
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr22) #17, !dbg !960
  %34 = load ptr, ptr %tmp28, align 8, !dbg !990
  store ptr %34, ptr %entry1, align 8, !dbg !960
  br label %for.cond7, !dbg !960, !llvm.loop !997

for.end:                                          ; preds = %for.cond7
  br label %for.inc37, !dbg !998

for.inc37:                                        ; preds = %for.end
  %35 = load i32, ptr %i, align 4, !dbg !950
  %inc38 = add i32 %35, 1, !dbg !950
  store i32 %inc38, ptr %i, align 4, !dbg !950
  br label %for.cond, !dbg !950, !llvm.loop !999

for.end39:                                        ; preds = %land.end
  call void @rcu_read_unlock() #18, !dbg !1001
  %36 = load i32, ptr %chain_len, align 4, !dbg !1002
  %37 = load i32, ptr %max_chain_len, align 4, !dbg !1004
  %cmp40 = icmp sgt i32 %36, %37, !dbg !1005
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !1006

if.then42:                                        ; preds = %for.end39
  %38 = load i32, ptr %chain_len, align 4, !dbg !1007
  store i32 %38, ptr %max_chain_len, align 4, !dbg !1008
  br label %if.end43, !dbg !1009

if.end43:                                         ; preds = %if.then42, %for.end39
  %39 = load ptr, ptr %page.addr, align 8, !dbg !1010
  %40 = load i32, ptr %entries, align 4, !dbg !1011
  %41 = load i32, ptr %slots_used, align 4, !dbg !1012
  %42 = load i32, ptr %max_chain_len, align 4, !dbg !1013
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %39, i64 noundef 4096, ptr noundef @.str, i32 noundef %40, i32 noundef %41, i32 noundef 512, i32 noundef %42) #18, !dbg !1014
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #17, !dbg !1015
  call void @llvm.lifetime.end.p0(i64 4, ptr %cur_bucket) #17, !dbg !1015
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_chain_len) #17, !dbg !1015
  call void @llvm.lifetime.end.p0(i64 4, ptr %entries) #17, !dbg !1015
  call void @llvm.lifetime.end.p0(i64 4, ptr %slots_used) #17, !dbg !1015
  call void @llvm.lifetime.end.p0(i64 4, ptr %chain_len) #17, !dbg !1015
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !1015
  ret i32 %call, !dbg !1016
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #5 align 16 !dbg !1017 {
entry:
  call void @__rcu_read_lock() #18, !dbg !1021
  br label %do.body, !dbg !1022

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1023

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !1025

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !1026

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !1028
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #4 align 16 !dbg !1029 {
entry:
  br label %do.body, !dbg !1030

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1031

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #18, !dbg !1033
  br label %do.body1, !dbg !1034

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !1035

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !1037
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1038 dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @sidtab_search_entry(ptr noundef %s, i32 noundef %sid) #0 align 16 !dbg !1044 {
entry:
  %s.addr = alloca ptr, align 8
  %sid.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1048, metadata !DIExpression()), !dbg !1050
  store i32 %sid, ptr %sid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sid.addr, metadata !1049, metadata !DIExpression()), !dbg !1051
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1052
  %1 = load i32, ptr %sid.addr, align 4, !dbg !1053
  %call = call ptr @sidtab_search_core(ptr noundef %0, i32 noundef %1, i32 noundef 0) #18, !dbg !1054
  ret ptr %call, !dbg !1055
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sidtab_search_core(ptr noundef %s, i32 noundef %sid, i32 noundef %force) #0 align 16 !dbg !1056 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %sid.addr = alloca i32, align 4
  %force.addr = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1060, metadata !DIExpression()), !dbg !1066
  store i32 %sid, ptr %sid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sid.addr, metadata !1061, metadata !DIExpression()), !dbg !1067
  store i32 %force, ptr %force.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %force.addr, metadata !1062, metadata !DIExpression()), !dbg !1068
  %0 = load i32, ptr %sid.addr, align 4, !dbg !1069
  %cmp = icmp ne i32 %0, 0, !dbg !1070
  br i1 %cmp, label %if.then, label %if.end9, !dbg !1071

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #17, !dbg !1072
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1063, metadata !DIExpression()), !dbg !1073
  %1 = load i32, ptr %sid.addr, align 4, !dbg !1074
  %cmp2 = icmp ugt i32 %1, 27, !dbg !1076
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !1077

if.then3:                                         ; preds = %if.then
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1078
  %3 = load i32, ptr %sid.addr, align 4, !dbg !1079
  %sub = sub i32 %3, 28, !dbg !1079
  %call = call ptr @sidtab_lookup(ptr noundef %2, i32 noundef %sub) #18, !dbg !1080
  store ptr %call, ptr %entry1, align 8, !dbg !1081
  br label %if.end, !dbg !1082

if.else:                                          ; preds = %if.then
  %4 = load ptr, ptr %s.addr, align 8, !dbg !1083
  %5 = load i32, ptr %sid.addr, align 4, !dbg !1084
  %call4 = call ptr @sidtab_lookup_initial(ptr noundef %4, i32 noundef %5) #18, !dbg !1085
  store ptr %call4, ptr %entry1, align 8, !dbg !1086
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %6 = load ptr, ptr %entry1, align 8, !dbg !1087
  %tobool = icmp ne ptr %6, null, !dbg !1087
  br i1 %tobool, label %land.lhs.true, label %if.end8, !dbg !1089

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %entry1, align 8, !dbg !1090
  %context = getelementptr inbounds %struct.sidtab_entry, ptr %7, i32 0, i32 2, !dbg !1091
  %len = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 3, !dbg !1092
  %8 = load i32, ptr %len, align 4, !dbg !1092
  %tobool5 = icmp ne i32 %8, 0, !dbg !1090
  br i1 %tobool5, label %lor.lhs.false, label %if.then7, !dbg !1093

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load i32, ptr %force.addr, align 4, !dbg !1094
  %tobool6 = icmp ne i32 %9, 0, !dbg !1094
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1095

if.then7:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load ptr, ptr %entry1, align 8, !dbg !1096
  store ptr %10, ptr %retval, align 8, !dbg !1097
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1097

if.end8:                                          ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1098
  br label %cleanup, !dbg !1098

cleanup:                                          ; preds = %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #17, !dbg !1098
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end9, !dbg !1099

if.end9:                                          ; preds = %cleanup.cont, %entry
  %11 = load ptr, ptr %s.addr, align 8, !dbg !1100
  %call10 = call ptr @sidtab_lookup_initial(ptr noundef %11, i32 noundef 3) #18, !dbg !1101
  store ptr %call10, ptr %retval, align 8, !dbg !1102
  br label %return, !dbg !1102

return:                                           ; preds = %if.end9, %cleanup
  %12 = load ptr, ptr %retval, align 8, !dbg !1103
  ret ptr %12, !dbg !1103

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @sidtab_search_entry_force(ptr noundef %s, i32 noundef %sid) #0 align 16 !dbg !1104 {
entry:
  %s.addr = alloca ptr, align 8
  %sid.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1106, metadata !DIExpression()), !dbg !1108
  store i32 %sid, ptr %sid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sid.addr, metadata !1107, metadata !DIExpression()), !dbg !1109
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1110
  %1 = load i32, ptr %sid.addr, align 4, !dbg !1111
  %call = call ptr @sidtab_search_core(ptr noundef %0, i32 noundef %1, i32 noundef 1) #18, !dbg !1112
  ret ptr %call, !dbg !1113
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sidtab_context_to_sid(ptr noundef %s, ptr noundef %context, ptr noundef %sid) #0 align 16 !dbg !1114 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %sid.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %count = alloca i32, align 4
  %hash = alloca i32, align 4
  %convert = alloca ptr, align 8
  %dst = alloca ptr, align 8
  %dst_convert = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %target = alloca ptr, align 8
  %tmp65 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1119, metadata !DIExpression()), !dbg !1138
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !1120, metadata !DIExpression()), !dbg !1139
  store ptr %sid, ptr %sid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sid.addr, metadata !1121, metadata !DIExpression()), !dbg !1140
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !1141
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1122, metadata !DIExpression()), !dbg !1142
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #17, !dbg !1143
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1123, metadata !DIExpression()), !dbg !1144
  call void @llvm.lifetime.start.p0(i64 4, ptr %hash) #17, !dbg !1143
  call void @llvm.dbg.declare(metadata ptr %hash, metadata !1124, metadata !DIExpression()), !dbg !1145
  %0 = load ptr, ptr %context.addr, align 8, !dbg !1146
  %call = call i32 @context_compute_hash(ptr noundef %0) #18, !dbg !1147
  store i32 %call, ptr %hash, align 4, !dbg !1145
  call void @llvm.lifetime.start.p0(i64 8, ptr %convert) #17, !dbg !1148
  call void @llvm.dbg.declare(metadata ptr %convert, metadata !1125, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #17, !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %dst, metadata !1126, metadata !DIExpression()), !dbg !1151
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst_convert) #17, !dbg !1150
  call void @llvm.dbg.declare(metadata ptr %dst_convert, metadata !1127, metadata !DIExpression()), !dbg !1152
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #17, !dbg !1153
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1128, metadata !DIExpression()), !dbg !1154
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1155
  %2 = load ptr, ptr %context.addr, align 8, !dbg !1156
  %3 = load i32, ptr %hash, align 4, !dbg !1157
  %call1 = call i32 @context_to_sid(ptr noundef %1, ptr noundef %2, i32 noundef %3) #18, !dbg !1158
  %4 = load ptr, ptr %sid.addr, align 8, !dbg !1159
  store i32 %call1, ptr %4, align 4, !dbg !1160
  %5 = load ptr, ptr %sid.addr, align 8, !dbg !1161
  %6 = load i32, ptr %5, align 4, !dbg !1163
  %tobool = icmp ne i32 %6, 0, !dbg !1163
  br i1 %tobool, label %if.then, label %if.end, !dbg !1164

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup100, !dbg !1165

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1166

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !1167

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !1168
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1129, metadata !DIExpression()), !dbg !1168
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !1168
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1133, metadata !DIExpression()), !dbg !1168
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1168
  %conv = zext i1 %cmp to i32, !dbg !1168
  store i32 1, ptr %tmp, align 4, !dbg !1168
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !1169
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !1169
  %7 = load i32, ptr %tmp, align 4, !dbg !1168
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1169
  %lock = getelementptr inbounds %struct.sidtab, ptr %8, i32 0, i32 4, !dbg !1169
  %call3 = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !1169
  %call4 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call3) #18, !dbg !1169
  store i64 %call4, ptr %flags, align 8, !dbg !1169
  br label %do.cond, !dbg !1169

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !1169

do.end:                                           ; preds = %do.cond
  br label %do.cond5, !dbg !1167

do.cond5:                                         ; preds = %do.end
  br label %do.end6, !dbg !1167

do.end6:                                          ; preds = %do.cond5
  store i32 0, ptr %rc, align 4, !dbg !1170
  %9 = load ptr, ptr %s.addr, align 8, !dbg !1171
  %10 = load ptr, ptr %context.addr, align 8, !dbg !1172
  %11 = load i32, ptr %hash, align 4, !dbg !1173
  %call7 = call i32 @context_to_sid(ptr noundef %9, ptr noundef %10, i32 noundef %11) #18, !dbg !1174
  %12 = load ptr, ptr %sid.addr, align 8, !dbg !1175
  store i32 %call7, ptr %12, align 4, !dbg !1176
  %13 = load ptr, ptr %sid.addr, align 8, !dbg !1177
  %14 = load i32, ptr %13, align 4, !dbg !1179
  %tobool8 = icmp ne i32 %14, 0, !dbg !1179
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1180

if.then9:                                         ; preds = %do.end6
  br label %out_unlock, !dbg !1181

if.end10:                                         ; preds = %do.end6
  %15 = load ptr, ptr %s.addr, align 8, !dbg !1182
  %frozen = getelementptr inbounds %struct.sidtab, ptr %15, i32 0, i32 3, !dbg !1182
  %16 = load i8, ptr %frozen, align 8, !dbg !1182, !range !1184, !noundef !1185
  %tobool11 = trunc i8 %16 to i1, !dbg !1182
  %lnot = xor i1 %tobool11, true, !dbg !1182
  %lnot12 = xor i1 %lnot, true, !dbg !1182
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !1182
  %conv13 = sext i32 %lnot.ext to i64, !dbg !1182
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !1182
  %tobool14 = icmp ne i64 %expval, 0, !dbg !1182
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1186

if.then15:                                        ; preds = %if.end10
  store i32 -116, ptr %rc, align 4, !dbg !1187
  br label %out_unlock, !dbg !1189

if.end16:                                         ; preds = %if.end10
  %17 = load ptr, ptr %s.addr, align 8, !dbg !1190
  %count17 = getelementptr inbounds %struct.sidtab, ptr %17, i32 0, i32 1, !dbg !1191
  %18 = load i32, ptr %count17, align 8, !dbg !1191
  store i32 %18, ptr %count, align 4, !dbg !1192
  store i32 -75, ptr %rc, align 4, !dbg !1193
  %19 = load i32, ptr %count, align 4, !dbg !1194
  %cmp18 = icmp uge i32 %19, -1, !dbg !1196
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !1197

if.then20:                                        ; preds = %if.end16
  br label %out_unlock, !dbg !1198

if.end21:                                         ; preds = %if.end16
  store i32 -12, ptr %rc, align 4, !dbg !1199
  %20 = load ptr, ptr %s.addr, align 8, !dbg !1200
  %21 = load i32, ptr %count, align 4, !dbg !1201
  %call22 = call ptr @sidtab_do_lookup(ptr noundef %20, i32 noundef %21, i32 noundef 1) #18, !dbg !1202
  store ptr %call22, ptr %dst, align 8, !dbg !1203
  %22 = load ptr, ptr %dst, align 8, !dbg !1204
  %tobool23 = icmp ne ptr %22, null, !dbg !1204
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !1206

if.then24:                                        ; preds = %if.end21
  br label %out_unlock, !dbg !1207

if.end25:                                         ; preds = %if.end21
  %23 = load i32, ptr %count, align 4, !dbg !1208
  %add = add i32 %23, 27, !dbg !1208
  %add26 = add i32 %add, 1, !dbg !1208
  %24 = load ptr, ptr %dst, align 8, !dbg !1209
  %sid27 = getelementptr inbounds %struct.sidtab_entry, ptr %24, i32 0, i32 0, !dbg !1210
  store i32 %add26, ptr %sid27, align 8, !dbg !1211
  %25 = load i32, ptr %hash, align 4, !dbg !1212
  %26 = load ptr, ptr %dst, align 8, !dbg !1213
  %hash28 = getelementptr inbounds %struct.sidtab_entry, ptr %26, i32 0, i32 1, !dbg !1214
  store i32 %25, ptr %hash28, align 4, !dbg !1215
  %27 = load ptr, ptr %dst, align 8, !dbg !1216
  %context29 = getelementptr inbounds %struct.sidtab_entry, ptr %27, i32 0, i32 2, !dbg !1217
  %28 = load ptr, ptr %context.addr, align 8, !dbg !1218
  %call30 = call i32 @context_cpy(ptr noundef %context29, ptr noundef %28) #18, !dbg !1219
  store i32 %call30, ptr %rc, align 4, !dbg !1220
  %29 = load i32, ptr %rc, align 4, !dbg !1221
  %tobool31 = icmp ne i32 %29, 0, !dbg !1221
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !1223

if.then32:                                        ; preds = %if.end25
  br label %out_unlock, !dbg !1224

if.end33:                                         ; preds = %if.end25
  %30 = load ptr, ptr %s.addr, align 8, !dbg !1225
  %convert34 = getelementptr inbounds %struct.sidtab, ptr %30, i32 0, i32 2, !dbg !1226
  %31 = load ptr, ptr %convert34, align 8, !dbg !1226
  store ptr %31, ptr %convert, align 8, !dbg !1227
  %32 = load ptr, ptr %convert, align 8, !dbg !1228
  %tobool35 = icmp ne ptr %32, null, !dbg !1228
  br i1 %tobool35, label %if.then36, label %if.end59, !dbg !1229

if.then36:                                        ; preds = %if.end33
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #17, !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %target, metadata !1134, metadata !DIExpression()), !dbg !1231
  %33 = load ptr, ptr %convert, align 8, !dbg !1232
  %target37 = getelementptr inbounds %struct.sidtab_convert_params, ptr %33, i32 0, i32 1, !dbg !1233
  %34 = load ptr, ptr %target37, align 8, !dbg !1233
  store ptr %34, ptr %target, align 8, !dbg !1231
  store i32 -12, ptr %rc, align 4, !dbg !1234
  %35 = load ptr, ptr %target, align 8, !dbg !1235
  %36 = load i32, ptr %count, align 4, !dbg !1236
  %call38 = call ptr @sidtab_do_lookup(ptr noundef %35, i32 noundef %36, i32 noundef 1) #18, !dbg !1237
  store ptr %call38, ptr %dst_convert, align 8, !dbg !1238
  %37 = load ptr, ptr %dst_convert, align 8, !dbg !1239
  %tobool39 = icmp ne ptr %37, null, !dbg !1239
  br i1 %tobool39, label %if.end42, label %if.then40, !dbg !1241

if.then40:                                        ; preds = %if.then36
  %38 = load ptr, ptr %dst, align 8, !dbg !1242
  %context41 = getelementptr inbounds %struct.sidtab_entry, ptr %38, i32 0, i32 2, !dbg !1244
  call void @context_destroy(ptr noundef %context41) #18, !dbg !1245
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1246

if.end42:                                         ; preds = %if.then36
  %39 = load ptr, ptr %convert, align 8, !dbg !1247
  %args = getelementptr inbounds %struct.sidtab_convert_params, ptr %39, i32 0, i32 0, !dbg !1248
  %40 = load ptr, ptr %args, align 8, !dbg !1248
  %41 = load ptr, ptr %context.addr, align 8, !dbg !1249
  %42 = load ptr, ptr %dst_convert, align 8, !dbg !1250
  %context43 = getelementptr inbounds %struct.sidtab_entry, ptr %42, i32 0, i32 2, !dbg !1251
  %call44 = call i32 @services_convert_context(ptr noundef %40, ptr noundef %41, ptr noundef %context43, i32 noundef 2080) #18, !dbg !1252
  store i32 %call44, ptr %rc, align 4, !dbg !1253
  %43 = load i32, ptr %rc, align 4, !dbg !1254
  %tobool45 = icmp ne i32 %43, 0, !dbg !1254
  br i1 %tobool45, label %if.then46, label %if.end48, !dbg !1256

if.then46:                                        ; preds = %if.end42
  %44 = load ptr, ptr %dst, align 8, !dbg !1257
  %context47 = getelementptr inbounds %struct.sidtab_entry, ptr %44, i32 0, i32 2, !dbg !1259
  call void @context_destroy(ptr noundef %context47) #18, !dbg !1260
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1261

if.end48:                                         ; preds = %if.end42
  %45 = load i32, ptr %count, align 4, !dbg !1262
  %add49 = add i32 %45, 27, !dbg !1262
  %add50 = add i32 %add49, 1, !dbg !1262
  %46 = load ptr, ptr %dst_convert, align 8, !dbg !1263
  %sid51 = getelementptr inbounds %struct.sidtab_entry, ptr %46, i32 0, i32 0, !dbg !1264
  store i32 %add50, ptr %sid51, align 8, !dbg !1265
  %47 = load ptr, ptr %dst_convert, align 8, !dbg !1266
  %context52 = getelementptr inbounds %struct.sidtab_entry, ptr %47, i32 0, i32 2, !dbg !1267
  %call53 = call i32 @context_compute_hash(ptr noundef %context52) #18, !dbg !1268
  %48 = load ptr, ptr %dst_convert, align 8, !dbg !1269
  %hash54 = getelementptr inbounds %struct.sidtab_entry, ptr %48, i32 0, i32 1, !dbg !1270
  store i32 %call53, ptr %hash54, align 4, !dbg !1271
  %49 = load i32, ptr %count, align 4, !dbg !1272
  %add55 = add i32 %49, 1, !dbg !1273
  %50 = load ptr, ptr %target, align 8, !dbg !1274
  %count56 = getelementptr inbounds %struct.sidtab, ptr %50, i32 0, i32 1, !dbg !1275
  store i32 %add55, ptr %count56, align 8, !dbg !1276
  %51 = load ptr, ptr %dst_convert, align 8, !dbg !1277
  %list = getelementptr inbounds %struct.sidtab_entry, ptr %51, i32 0, i32 4, !dbg !1277
  %52 = load ptr, ptr %target, align 8, !dbg !1277
  %context_to_sid = getelementptr inbounds %struct.sidtab, ptr %52, i32 0, i32 9, !dbg !1277
  %53 = load ptr, ptr %dst_convert, align 8, !dbg !1277
  %hash57 = getelementptr inbounds %struct.sidtab_entry, ptr %53, i32 0, i32 1, !dbg !1277
  %54 = load i32, ptr %hash57, align 4, !dbg !1277
  %call58 = call i32 @hash_32(i32 noundef %54, i32 noundef 9) #18, !dbg !1277
  %idxprom = zext i32 %call58 to i64, !dbg !1277
  %arrayidx = getelementptr [512 x %struct.hlist_head], ptr %context_to_sid, i64 0, i64 %idxprom, !dbg !1277
  call void @hlist_add_head_rcu(ptr noundef %list, ptr noundef %arrayidx) #18, !dbg !1277
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1278
  br label %cleanup, !dbg !1278

cleanup:                                          ; preds = %if.then46, %if.then40, %if.end48
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #17, !dbg !1278
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup100 [
    i32 0, label %cleanup.cont
    i32 6, label %out_unlock
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end59, !dbg !1279

if.end59:                                         ; preds = %cleanup.cont, %if.end33
  %55 = load ptr, ptr %context.addr, align 8, !dbg !1280
  %len = getelementptr inbounds %struct.context, ptr %55, i32 0, i32 3, !dbg !1282
  %56 = load i32, ptr %len, align 4, !dbg !1282
  %tobool60 = icmp ne i32 %56, 0, !dbg !1280
  br i1 %tobool60, label %if.then61, label %if.end67, !dbg !1283

if.then61:                                        ; preds = %if.end59
  br label %do.body62, !dbg !1284

do.body62:                                        ; preds = %if.then61
  br label %do.cond63, !dbg !1286

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !1286

do.end64:                                         ; preds = %do.cond63
  %57 = load ptr, ptr %context.addr, align 8, !dbg !1284
  %str = getelementptr inbounds %struct.context, ptr %57, i32 0, i32 5, !dbg !1284
  %58 = load ptr, ptr %str, align 8, !dbg !1284
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %58) #19, !dbg !1284
  store i32 %call66, ptr %tmp65, align 4, !dbg !1286
  %59 = load i32, ptr %tmp65, align 4, !dbg !1284
  br label %if.end67, !dbg !1288

if.end67:                                         ; preds = %do.end64, %if.end59
  %60 = load i32, ptr %count, align 4, !dbg !1289
  %add68 = add i32 %60, 27, !dbg !1289
  %add69 = add i32 %add68, 1, !dbg !1289
  %61 = load ptr, ptr %sid.addr, align 8, !dbg !1290
  store i32 %add69, ptr %61, align 4, !dbg !1291
  br label %do.body70, !dbg !1292

do.body70:                                        ; preds = %if.end67
  br label %do.body71, !dbg !1293

do.body71:                                        ; preds = %do.body70
  br label %do.cond72, !dbg !1295

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1295

do.end73:                                         ; preds = %do.cond72
  br label %do.body74, !dbg !1293

do.body74:                                        ; preds = %do.end73
  br label %do.body75, !dbg !1297

do.body75:                                        ; preds = %do.body74
  br label %do.cond76, !dbg !1299

do.cond76:                                        ; preds = %do.body75
  br label %do.end77, !dbg !1299

do.end77:                                         ; preds = %do.cond76
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !1297, !srcloc !1301
  br label %do.body78, !dbg !1297

do.body78:                                        ; preds = %do.end77
  br label %do.body79, !dbg !1302

do.body79:                                        ; preds = %do.body78
  br label %do.cond80, !dbg !1304

do.cond80:                                        ; preds = %do.body79
  br label %do.end81, !dbg !1304

do.end81:                                         ; preds = %do.cond80
  br label %do.body82, !dbg !1302

do.body82:                                        ; preds = %do.end81
  %62 = load i32, ptr %count, align 4, !dbg !1306
  %add83 = add i32 %62, 1, !dbg !1306
  %63 = load ptr, ptr %s.addr, align 8, !dbg !1306
  %count84 = getelementptr inbounds %struct.sidtab, ptr %63, i32 0, i32 1, !dbg !1306
  store volatile i32 %add83, ptr %count84, align 8, !dbg !1306
  br label %do.cond85, !dbg !1306

do.cond85:                                        ; preds = %do.body82
  br label %do.end86, !dbg !1306

do.end86:                                         ; preds = %do.cond85
  br label %do.cond87, !dbg !1302

do.cond87:                                        ; preds = %do.end86
  br label %do.end88, !dbg !1302

do.end88:                                         ; preds = %do.cond87
  br label %do.cond89, !dbg !1297

do.cond89:                                        ; preds = %do.end88
  br label %do.end90, !dbg !1297

do.end90:                                         ; preds = %do.cond89
  br label %do.cond91, !dbg !1293

do.cond91:                                        ; preds = %do.end90
  br label %do.end92, !dbg !1293

do.end92:                                         ; preds = %do.cond91
  %64 = load ptr, ptr %dst, align 8, !dbg !1308
  %list93 = getelementptr inbounds %struct.sidtab_entry, ptr %64, i32 0, i32 4, !dbg !1308
  %65 = load ptr, ptr %s.addr, align 8, !dbg !1308
  %context_to_sid94 = getelementptr inbounds %struct.sidtab, ptr %65, i32 0, i32 9, !dbg !1308
  %66 = load ptr, ptr %dst, align 8, !dbg !1308
  %hash95 = getelementptr inbounds %struct.sidtab_entry, ptr %66, i32 0, i32 1, !dbg !1308
  %67 = load i32, ptr %hash95, align 4, !dbg !1308
  %call96 = call i32 @hash_32(i32 noundef %67, i32 noundef 9) #18, !dbg !1308
  %idxprom97 = zext i32 %call96 to i64, !dbg !1308
  %arrayidx98 = getelementptr [512 x %struct.hlist_head], ptr %context_to_sid94, i64 0, i64 %idxprom97, !dbg !1308
  call void @hlist_add_head_rcu(ptr noundef %list93, ptr noundef %arrayidx98) #18, !dbg !1308
  store i32 0, ptr %rc, align 4, !dbg !1309
  br label %out_unlock, !dbg !1310

out_unlock:                                       ; preds = %do.end92, %cleanup, %if.then32, %if.then24, %if.then20, %if.then15, %if.then9
  call void @llvm.dbg.label(metadata !1137), !dbg !1311
  %68 = load ptr, ptr %s.addr, align 8, !dbg !1312
  %lock99 = getelementptr inbounds %struct.sidtab, ptr %68, i32 0, i32 4, !dbg !1313
  %69 = load i64, ptr %flags, align 8, !dbg !1314
  call void @spin_unlock_irqrestore(ptr noundef %lock99, i64 noundef %69) #18, !dbg !1315
  %70 = load i32, ptr %rc, align 4, !dbg !1316
  store i32 %70, ptr %retval, align 4, !dbg !1317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup100, !dbg !1317

cleanup100:                                       ; preds = %out_unlock, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #17, !dbg !1318
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst_convert) #17, !dbg !1318
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #17, !dbg !1318
  call void @llvm.lifetime.end.p0(i64 8, ptr %convert) #17, !dbg !1318
  call void @llvm.lifetime.end.p0(i64 4, ptr %hash) #17, !dbg !1318
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #17, !dbg !1318
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !1318
  %71 = load i32, ptr %retval, align 4, !dbg !1318
  ret i32 %71, !dbg !1318
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1319 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #7 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sidtab_do_lookup(ptr noundef %s, i32 noundef %index, i32 noundef %alloc) #0 align 16 !dbg !1323 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %alloc.addr = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %level = alloca i32, align 4
  %capacity_shift = alloca i32, align 4
  %leaf_index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1325, metadata !DIExpression()), !dbg !1333
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !1326, metadata !DIExpression()), !dbg !1334
  store i32 %alloc, ptr %alloc.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %alloc.addr, metadata !1327, metadata !DIExpression()), !dbg !1335
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #17, !dbg !1336
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1328, metadata !DIExpression()), !dbg !1337
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #17, !dbg !1338
  call void @llvm.dbg.declare(metadata ptr %level, metadata !1330, metadata !DIExpression()), !dbg !1339
  call void @llvm.lifetime.start.p0(i64 4, ptr %capacity_shift) #17, !dbg !1338
  call void @llvm.dbg.declare(metadata ptr %capacity_shift, metadata !1331, metadata !DIExpression()), !dbg !1340
  call void @llvm.lifetime.start.p0(i64 4, ptr %leaf_index) #17, !dbg !1338
  call void @llvm.dbg.declare(metadata ptr %leaf_index, metadata !1332, metadata !DIExpression()), !dbg !1341
  %0 = load i32, ptr %index.addr, align 4, !dbg !1342
  %conv = zext i32 %0 to i64, !dbg !1342
  %div = udiv i64 %conv, 39, !dbg !1343
  %conv2 = trunc i64 %div to i32, !dbg !1342
  store i32 %conv2, ptr %leaf_index, align 4, !dbg !1341
  %1 = load i32, ptr %index.addr, align 4, !dbg !1344
  %add = add i32 %1, 1, !dbg !1345
  %call = call i32 @sidtab_level_from_count(i32 noundef %add) #18, !dbg !1346
  store i32 %call, ptr %level, align 4, !dbg !1347
  %2 = load i32, ptr %level, align 4, !dbg !1348
  %mul = mul i32 %2, 9, !dbg !1349
  store i32 %mul, ptr %capacity_shift, align 4, !dbg !1350
  %3 = load i32, ptr %alloc.addr, align 4, !dbg !1351
  %tobool = icmp ne i32 %3, 0, !dbg !1351
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1353

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %s.addr, align 8, !dbg !1354
  %5 = load i32, ptr %level, align 4, !dbg !1355
  %call3 = call i32 @sidtab_alloc_roots(ptr noundef %4, i32 noundef %5) #18, !dbg !1356
  %cmp = icmp ne i32 %call3, 0, !dbg !1357
  br i1 %cmp, label %if.then, label %if.end, !dbg !1358

if.then:                                          ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8, !dbg !1359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1359

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1360
  %roots = getelementptr inbounds %struct.sidtab, ptr %6, i32 0, i32 0, !dbg !1361
  %7 = load i32, ptr %level, align 4, !dbg !1362
  %idxprom = zext i32 %7 to i64, !dbg !1360
  %arrayidx = getelementptr [4 x %union.sidtab_entry_inner], ptr %roots, i64 0, i64 %idxprom, !dbg !1360
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !1363
  br label %while.cond, !dbg !1364

while.cond:                                       ; preds = %if.end19, %if.end
  %8 = load i32, ptr %level, align 4, !dbg !1365
  %cmp5 = icmp ne i32 %8, 0, !dbg !1366
  br i1 %cmp5, label %while.body, label %while.end, !dbg !1364

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %capacity_shift, align 4, !dbg !1367
  %sub = sub i32 %9, 9, !dbg !1367
  store i32 %sub, ptr %capacity_shift, align 4, !dbg !1367
  %10 = load i32, ptr %level, align 4, !dbg !1369
  %dec = add i32 %10, -1, !dbg !1369
  store i32 %dec, ptr %level, align 4, !dbg !1369
  %11 = load ptr, ptr %entry1, align 8, !dbg !1370
  %12 = load ptr, ptr %11, align 8, !dbg !1371
  %entries = getelementptr inbounds %struct.sidtab_node_inner, ptr %12, i32 0, i32 0, !dbg !1372
  %13 = load i32, ptr %leaf_index, align 4, !dbg !1373
  %14 = load i32, ptr %capacity_shift, align 4, !dbg !1374
  %shr = lshr i32 %13, %14, !dbg !1375
  %idxprom7 = zext i32 %shr to i64, !dbg !1370
  %arrayidx8 = getelementptr [512 x %union.sidtab_entry_inner], ptr %entries, i64 0, i64 %idxprom7, !dbg !1370
  store ptr %arrayidx8, ptr %entry1, align 8, !dbg !1376
  %15 = load i32, ptr %capacity_shift, align 4, !dbg !1377
  %shl = shl i32 1, %15, !dbg !1378
  %sub9 = sub i32 %shl, 1, !dbg !1379
  %16 = load i32, ptr %leaf_index, align 4, !dbg !1380
  %and = and i32 %16, %sub9, !dbg !1380
  store i32 %and, ptr %leaf_index, align 4, !dbg !1380
  %17 = load ptr, ptr %entry1, align 8, !dbg !1381
  %18 = load ptr, ptr %17, align 8, !dbg !1383
  %tobool10 = icmp ne ptr %18, null, !dbg !1381
  br i1 %tobool10, label %if.end19, label %if.then11, !dbg !1384

if.then11:                                        ; preds = %while.body
  %19 = load i32, ptr %alloc.addr, align 4, !dbg !1385
  %tobool12 = icmp ne i32 %19, 0, !dbg !1385
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !1388

if.then13:                                        ; preds = %if.then11
  %call14 = call noalias ptr @kzalloc(i64 noundef 4096, i32 noundef 2080) #20, !dbg !1389
  %20 = load ptr, ptr %entry1, align 8, !dbg !1390
  store ptr %call14, ptr %20, align 8, !dbg !1391
  br label %if.end15, !dbg !1390

if.end15:                                         ; preds = %if.then13, %if.then11
  %21 = load ptr, ptr %entry1, align 8, !dbg !1392
  %22 = load ptr, ptr %21, align 8, !dbg !1394
  %tobool16 = icmp ne ptr %22, null, !dbg !1392
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !1395

if.then17:                                        ; preds = %if.end15
  store ptr null, ptr %retval, align 8, !dbg !1396
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1396

if.end18:                                         ; preds = %if.end15
  br label %if.end19, !dbg !1397

if.end19:                                         ; preds = %if.end18, %while.body
  br label %while.cond, !dbg !1364, !llvm.loop !1398

while.end:                                        ; preds = %while.cond
  %23 = load ptr, ptr %entry1, align 8, !dbg !1400
  %24 = load ptr, ptr %23, align 8, !dbg !1402
  %tobool20 = icmp ne ptr %24, null, !dbg !1400
  br i1 %tobool20, label %if.end29, label %if.then21, !dbg !1403

if.then21:                                        ; preds = %while.end
  %25 = load i32, ptr %alloc.addr, align 4, !dbg !1404
  %tobool22 = icmp ne i32 %25, 0, !dbg !1404
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !1407

if.then23:                                        ; preds = %if.then21
  %call24 = call noalias ptr @kzalloc(i64 noundef 4096, i32 noundef 2080) #20, !dbg !1408
  %26 = load ptr, ptr %entry1, align 8, !dbg !1409
  store ptr %call24, ptr %26, align 8, !dbg !1410
  br label %if.end25, !dbg !1409

if.end25:                                         ; preds = %if.then23, %if.then21
  %27 = load ptr, ptr %entry1, align 8, !dbg !1411
  %28 = load ptr, ptr %27, align 8, !dbg !1413
  %tobool26 = icmp ne ptr %28, null, !dbg !1411
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !1414

if.then27:                                        ; preds = %if.end25
  store ptr null, ptr %retval, align 8, !dbg !1415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1415

if.end28:                                         ; preds = %if.end25
  br label %if.end29, !dbg !1416

if.end29:                                         ; preds = %if.end28, %while.end
  %29 = load ptr, ptr %entry1, align 8, !dbg !1417
  %30 = load ptr, ptr %29, align 8, !dbg !1418
  %entries30 = getelementptr inbounds %struct.sidtab_node_leaf, ptr %30, i32 0, i32 0, !dbg !1419
  %31 = load i32, ptr %index.addr, align 4, !dbg !1420
  %conv31 = zext i32 %31 to i64, !dbg !1420
  %rem = urem i64 %conv31, 39, !dbg !1421
  %arrayidx32 = getelementptr [39 x %struct.sidtab_entry], ptr %entries30, i64 0, i64 %rem, !dbg !1417
  store ptr %arrayidx32, ptr %retval, align 8, !dbg !1422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1422

cleanup:                                          ; preds = %if.end29, %if.then27, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %leaf_index) #17, !dbg !1423
  call void @llvm.lifetime.end.p0(i64 4, ptr %capacity_shift) #17, !dbg !1423
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #17, !dbg !1423
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #17, !dbg !1423
  %32 = load ptr, ptr %retval, align 8, !dbg !1423
  ret ptr %32, !dbg !1423
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @context_destroy(ptr noundef %c) #4 align 16 !dbg !1424 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1428, metadata !DIExpression()), !dbg !1429
  %0 = load ptr, ptr %c.addr, align 8, !dbg !1430
  %type = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 2, !dbg !1431
  store i32 0, ptr %type, align 8, !dbg !1432
  %1 = load ptr, ptr %c.addr, align 8, !dbg !1433
  %role = getelementptr inbounds %struct.context, ptr %1, i32 0, i32 1, !dbg !1434
  store i32 0, ptr %role, align 4, !dbg !1435
  %2 = load ptr, ptr %c.addr, align 8, !dbg !1436
  %user = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 0, !dbg !1437
  store i32 0, ptr %user, align 8, !dbg !1438
  %3 = load ptr, ptr %c.addr, align 8, !dbg !1439
  %str = getelementptr inbounds %struct.context, ptr %3, i32 0, i32 5, !dbg !1440
  %4 = load ptr, ptr %str, align 8, !dbg !1440
  call void @kfree(ptr noundef %4) #18, !dbg !1441
  %5 = load ptr, ptr %c.addr, align 8, !dbg !1442
  %str1 = getelementptr inbounds %struct.context, ptr %5, i32 0, i32 5, !dbg !1443
  store ptr null, ptr %str1, align 8, !dbg !1444
  %6 = load ptr, ptr %c.addr, align 8, !dbg !1445
  %len = getelementptr inbounds %struct.context, ptr %6, i32 0, i32 3, !dbg !1446
  store i32 0, ptr %len, align 4, !dbg !1447
  %7 = load ptr, ptr %c.addr, align 8, !dbg !1448
  call void @mls_context_destroy(ptr noundef %7) #18, !dbg !1449
  ret void, !dbg !1450
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1451 dso_local i32 @services_convert_context(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hlist_add_head_rcu(ptr noundef %n, ptr noundef %h) #4 align 16 !dbg !1454 {
entry:
  %n.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %first = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1457, metadata !DIExpression()), !dbg !1462
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !1458, metadata !DIExpression()), !dbg !1463
  call void @llvm.lifetime.start.p0(i64 8, ptr %first) #17, !dbg !1464
  call void @llvm.dbg.declare(metadata ptr %first, metadata !1459, metadata !DIExpression()), !dbg !1465
  %0 = load ptr, ptr %h.addr, align 8, !dbg !1466
  %first1 = getelementptr inbounds %struct.hlist_head, ptr %0, i32 0, i32 0, !dbg !1467
  %1 = load ptr, ptr %first1, align 8, !dbg !1467
  store ptr %1, ptr %first, align 8, !dbg !1465
  %2 = load ptr, ptr %first, align 8, !dbg !1468
  %3 = load ptr, ptr %n.addr, align 8, !dbg !1469
  %next = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 0, !dbg !1470
  store ptr %2, ptr %next, align 8, !dbg !1471
  br label %do.body, !dbg !1472

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !1473

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !1475

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !1475

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !1473

do.body3:                                         ; preds = %do.end
  %4 = load ptr, ptr %h.addr, align 8, !dbg !1477
  %first4 = getelementptr inbounds %struct.hlist_head, ptr %4, i32 0, i32 0, !dbg !1477
  %5 = load ptr, ptr %n.addr, align 8, !dbg !1477
  %pprev = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1, !dbg !1477
  store volatile ptr %first4, ptr %pprev, align 8, !dbg !1477
  br label %do.cond5, !dbg !1477

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !1477

do.end6:                                          ; preds = %do.cond5
  br label %do.cond7, !dbg !1473

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !1473

do.end8:                                          ; preds = %do.cond7
  br label %do.body9, !dbg !1479

do.body9:                                         ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !1480
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !1460, metadata !DIExpression()), !dbg !1480
  %6 = load ptr, ptr %n.addr, align 8, !dbg !1480
  %7 = ptrtoint ptr %6 to i64, !dbg !1480
  store i64 %7, ptr %_r_a_p__v, align 8, !dbg !1480
  br i1 false, label %land.lhs.true, label %if.else, !dbg !1481

land.lhs.true:                                    ; preds = %do.body9
  %8 = load i64, ptr %_r_a_p__v, align 8, !dbg !1481
  %cmp = icmp eq i64 %8, 0, !dbg !1481
  br i1 %cmp, label %if.then, label %if.else, !dbg !1480

if.then:                                          ; preds = %land.lhs.true
  br label %do.body10, !dbg !1481

do.body10:                                        ; preds = %if.then
  br label %do.body11, !dbg !1483

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !1485

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !1485

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !1483

do.body14:                                        ; preds = %do.end13
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !1487
  %10 = inttoptr i64 %9 to ptr, !dbg !1487
  %11 = load ptr, ptr %h.addr, align 8, !dbg !1487
  %first15 = getelementptr inbounds %struct.hlist_head, ptr %11, i32 0, i32 0, !dbg !1487
  store volatile ptr %10, ptr %first15, align 8, !dbg !1487
  br label %do.cond16, !dbg !1487

do.cond16:                                        ; preds = %do.body14
  br label %do.end17, !dbg !1487

do.end17:                                         ; preds = %do.cond16
  br label %do.cond18, !dbg !1483

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !1483

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !1483

if.else:                                          ; preds = %land.lhs.true, %do.body9
  br label %do.body20, !dbg !1481

do.body20:                                        ; preds = %if.else
  br label %do.body21, !dbg !1489

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !1491

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !1491

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !1489

do.body24:                                        ; preds = %do.end23
  br label %do.body25, !dbg !1493

do.body25:                                        ; preds = %do.body24
  br label %do.cond26, !dbg !1495

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !1495

do.end27:                                         ; preds = %do.cond26
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !1493, !srcloc !1497
  br label %do.body28, !dbg !1493

do.body28:                                        ; preds = %do.end27
  br label %do.body29, !dbg !1498

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !1500

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !1500

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !1498

do.body32:                                        ; preds = %do.end31
  %12 = load i64, ptr %_r_a_p__v, align 8, !dbg !1502
  %13 = inttoptr i64 %12 to ptr, !dbg !1502
  %14 = load ptr, ptr %h.addr, align 8, !dbg !1502
  %first33 = getelementptr inbounds %struct.hlist_head, ptr %14, i32 0, i32 0, !dbg !1502
  store volatile ptr %13, ptr %first33, align 8, !dbg !1502
  br label %do.cond34, !dbg !1502

do.cond34:                                        ; preds = %do.body32
  br label %do.end35, !dbg !1502

do.end35:                                         ; preds = %do.cond34
  br label %do.cond36, !dbg !1498

do.cond36:                                        ; preds = %do.end35
  br label %do.end37, !dbg !1498

do.end37:                                         ; preds = %do.cond36
  br label %do.cond38, !dbg !1493

do.cond38:                                        ; preds = %do.end37
  br label %do.end39, !dbg !1493

do.end39:                                         ; preds = %do.cond38
  br label %do.cond40, !dbg !1489

do.cond40:                                        ; preds = %do.end39
  br label %do.end41, !dbg !1489

do.end41:                                         ; preds = %do.cond40
  br label %if.end

if.end:                                           ; preds = %do.end41, %do.end19
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !1479
  br label %do.cond42, !dbg !1480

do.cond42:                                        ; preds = %if.end
  br label %do.end43, !dbg !1480

do.end43:                                         ; preds = %do.cond42
  %15 = load ptr, ptr %first, align 8, !dbg !1504
  %tobool = icmp ne ptr %15, null, !dbg !1504
  br i1 %tobool, label %if.then44, label %if.end56, !dbg !1506

if.then44:                                        ; preds = %do.end43
  br label %do.body45, !dbg !1507

do.body45:                                        ; preds = %if.then44
  br label %do.body46, !dbg !1508

do.body46:                                        ; preds = %do.body45
  br label %do.cond47, !dbg !1510

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !1510

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !1508

do.body49:                                        ; preds = %do.end48
  %16 = load ptr, ptr %n.addr, align 8, !dbg !1512
  %next50 = getelementptr inbounds %struct.hlist_node, ptr %16, i32 0, i32 0, !dbg !1512
  %17 = load ptr, ptr %first, align 8, !dbg !1512
  %pprev51 = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1, !dbg !1512
  store volatile ptr %next50, ptr %pprev51, align 8, !dbg !1512
  br label %do.cond52, !dbg !1512

do.cond52:                                        ; preds = %do.body49
  br label %do.end53, !dbg !1512

do.end53:                                         ; preds = %do.cond52
  br label %do.cond54, !dbg !1508

do.cond54:                                        ; preds = %do.end53
  br label %do.end55, !dbg !1508

do.end55:                                         ; preds = %do.cond54
  br label %if.end56, !dbg !1508

if.end56:                                         ; preds = %do.end55, %do.end43
  call void @llvm.lifetime.end.p0(i64 8, ptr %first) #17, !dbg !1514
  ret void, !dbg !1514
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1515 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #5 align 16 !dbg !1519 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1523, metadata !DIExpression()), !dbg !1529
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1524, metadata !DIExpression()), !dbg !1530
  br label %do.body, !dbg !1531

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !1532
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1525, metadata !DIExpression()), !dbg !1532
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !1532
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1528, metadata !DIExpression()), !dbg !1532
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1532
  %conv = zext i1 %cmp to i32, !dbg !1532
  store i32 1, ptr %tmp, align 4, !dbg !1532
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !1533
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !1533
  %0 = load i32, ptr %tmp, align 4, !dbg !1532
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !1533
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !1533
  %3 = load i64, ptr %flags.addr, align 8, !dbg !1533
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #18, !dbg !1533
  br label %do.end, !dbg !1533

do.end:                                           ; preds = %do.body
  ret void, !dbg !1534
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sidtab_convert(ptr noundef %s, ptr noundef %params) #0 align 16 !dbg !1535 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %count = alloca i32, align 4
  %level = alloca i32, align 4
  %pos = alloca i32, align 4
  %rc = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  %__dummy32 = alloca i64, align 8
  %__dummy233 = alloca i64, align 8
  %tmp36 = alloca i32, align 4
  %__dummy49 = alloca i64, align 8
  %__dummy250 = alloca i64, align 8
  %tmp53 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1539, metadata !DIExpression()), !dbg !1563
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !1540, metadata !DIExpression()), !dbg !1564
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !1565
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1541, metadata !DIExpression()), !dbg !1566
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #17, !dbg !1567
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1542, metadata !DIExpression()), !dbg !1568
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #17, !dbg !1567
  call void @llvm.dbg.declare(metadata ptr %level, metadata !1543, metadata !DIExpression()), !dbg !1569
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #17, !dbg !1567
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !1544, metadata !DIExpression()), !dbg !1570
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #17, !dbg !1571
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1545, metadata !DIExpression()), !dbg !1572
  br label %do.body, !dbg !1573

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1574

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !1575
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1546, metadata !DIExpression()), !dbg !1575
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !1575
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1550, metadata !DIExpression()), !dbg !1575
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1575
  %conv = zext i1 %cmp to i32, !dbg !1575
  store i32 1, ptr %tmp, align 4, !dbg !1575
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !1576
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !1576
  %0 = load i32, ptr %tmp, align 4, !dbg !1575
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1576
  %lock = getelementptr inbounds %struct.sidtab, ptr %1, i32 0, i32 4, !dbg !1576
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !1576
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !1576
  store i64 %call2, ptr %flags, align 8, !dbg !1576
  br label %do.cond, !dbg !1576

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1576

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !1574

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !1574

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1577
  %convert = getelementptr inbounds %struct.sidtab, ptr %2, i32 0, i32 2, !dbg !1579
  %3 = load ptr, ptr %convert, align 8, !dbg !1579
  %tobool = icmp ne ptr %3, null, !dbg !1577
  br i1 %tobool, label %if.then, label %if.end, !dbg !1580

if.then:                                          ; preds = %do.end4
  %4 = load ptr, ptr %s.addr, align 8, !dbg !1581
  %lock5 = getelementptr inbounds %struct.sidtab, ptr %4, i32 0, i32 4, !dbg !1583
  %5 = load i64, ptr %flags, align 8, !dbg !1584
  call void @spin_unlock_irqrestore(ptr noundef %lock5, i64 noundef %5) #18, !dbg !1585
  store i32 -16, ptr %retval, align 4, !dbg !1586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1586

if.end:                                           ; preds = %do.end4
  %6 = load ptr, ptr %s.addr, align 8, !dbg !1587
  %count6 = getelementptr inbounds %struct.sidtab, ptr %6, i32 0, i32 1, !dbg !1588
  %7 = load i32, ptr %count6, align 8, !dbg !1588
  store i32 %7, ptr %count, align 4, !dbg !1589
  %8 = load i32, ptr %count, align 4, !dbg !1590
  %call7 = call i32 @sidtab_level_from_count(i32 noundef %8) #18, !dbg !1591
  store i32 %call7, ptr %level, align 4, !dbg !1592
  %9 = load ptr, ptr %params.addr, align 8, !dbg !1593
  %target = getelementptr inbounds %struct.sidtab_convert_params, ptr %9, i32 0, i32 1, !dbg !1594
  %10 = load ptr, ptr %target, align 8, !dbg !1594
  %11 = load i32, ptr %count, align 4, !dbg !1595
  %sub = sub i32 %11, 1, !dbg !1596
  %call8 = call ptr @sidtab_do_lookup(ptr noundef %10, i32 noundef %sub, i32 noundef 1) #18, !dbg !1597
  %tobool9 = icmp ne ptr %call8, null, !dbg !1597
  %12 = zext i1 %tobool9 to i64, !dbg !1597
  %cond = select i1 %tobool9, i32 0, i32 -12, !dbg !1597
  store i32 %cond, ptr %rc, align 4, !dbg !1598
  %13 = load i32, ptr %rc, align 4, !dbg !1599
  %tobool10 = icmp ne i32 %13, 0, !dbg !1599
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !1601

if.then11:                                        ; preds = %if.end
  %14 = load ptr, ptr %s.addr, align 8, !dbg !1602
  %lock12 = getelementptr inbounds %struct.sidtab, ptr %14, i32 0, i32 4, !dbg !1604
  %15 = load i64, ptr %flags, align 8, !dbg !1605
  call void @spin_unlock_irqrestore(ptr noundef %lock12, i64 noundef %15) #18, !dbg !1606
  %16 = load i32, ptr %rc, align 4, !dbg !1607
  store i32 %16, ptr %retval, align 4, !dbg !1608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1608

if.end13:                                         ; preds = %if.end
  %17 = load i32, ptr %count, align 4, !dbg !1609
  %18 = load ptr, ptr %params.addr, align 8, !dbg !1610
  %target14 = getelementptr inbounds %struct.sidtab_convert_params, ptr %18, i32 0, i32 1, !dbg !1611
  %19 = load ptr, ptr %target14, align 8, !dbg !1611
  %count15 = getelementptr inbounds %struct.sidtab, ptr %19, i32 0, i32 1, !dbg !1612
  store i32 %17, ptr %count15, align 8, !dbg !1613
  %20 = load ptr, ptr %params.addr, align 8, !dbg !1614
  %21 = load ptr, ptr %s.addr, align 8, !dbg !1615
  %convert16 = getelementptr inbounds %struct.sidtab, ptr %21, i32 0, i32 2, !dbg !1616
  store ptr %20, ptr %convert16, align 8, !dbg !1617
  %22 = load ptr, ptr %s.addr, align 8, !dbg !1618
  %lock17 = getelementptr inbounds %struct.sidtab, ptr %22, i32 0, i32 4, !dbg !1619
  %23 = load i64, ptr %flags, align 8, !dbg !1620
  call void @spin_unlock_irqrestore(ptr noundef %lock17, i64 noundef %23) #18, !dbg !1621
  br label %do.body18, !dbg !1622

do.body18:                                        ; preds = %if.end13
  br label %do.cond19, !dbg !1624

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !1624

do.end20:                                         ; preds = %do.cond19
  %24 = load i32, ptr %count, align 4, !dbg !1622
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %24) #19, !dbg !1622
  store i32 %call22, ptr %tmp21, align 4, !dbg !1624
  %25 = load i32, ptr %tmp21, align 4, !dbg !1622
  store i32 0, ptr %pos, align 4, !dbg !1626
  %26 = load ptr, ptr %params.addr, align 8, !dbg !1627
  %target23 = getelementptr inbounds %struct.sidtab_convert_params, ptr %26, i32 0, i32 1, !dbg !1628
  %27 = load ptr, ptr %target23, align 8, !dbg !1628
  %roots = getelementptr inbounds %struct.sidtab, ptr %27, i32 0, i32 0, !dbg !1629
  %28 = load i32, ptr %level, align 4, !dbg !1630
  %idxprom = zext i32 %28 to i64, !dbg !1627
  %arrayidx = getelementptr [4 x %union.sidtab_entry_inner], ptr %roots, i64 0, i64 %idxprom, !dbg !1627
  %29 = load ptr, ptr %s.addr, align 8, !dbg !1631
  %roots24 = getelementptr inbounds %struct.sidtab, ptr %29, i32 0, i32 0, !dbg !1632
  %30 = load i32, ptr %level, align 4, !dbg !1633
  %idxprom25 = zext i32 %30 to i64, !dbg !1631
  %arrayidx26 = getelementptr [4 x %union.sidtab_entry_inner], ptr %roots24, i64 0, i64 %idxprom25, !dbg !1631
  %31 = load i32, ptr %count, align 4, !dbg !1634
  %32 = load i32, ptr %level, align 4, !dbg !1635
  %33 = load ptr, ptr %params.addr, align 8, !dbg !1636
  %call27 = call i32 @sidtab_convert_tree(ptr noundef %arrayidx, ptr noundef %arrayidx26, ptr noundef %pos, i32 noundef %31, i32 noundef %32, ptr noundef %33) #18, !dbg !1637
  store i32 %call27, ptr %rc, align 4, !dbg !1638
  %34 = load i32, ptr %rc, align 4, !dbg !1639
  %tobool28 = icmp ne i32 %34, 0, !dbg !1639
  br i1 %tobool28, label %if.then29, label %if.end46, !dbg !1640

if.then29:                                        ; preds = %do.end20
  br label %do.body30, !dbg !1641

do.body30:                                        ; preds = %if.then29
  br label %do.body31, !dbg !1642

do.body31:                                        ; preds = %do.body30
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy32) #17, !dbg !1643
  call void @llvm.dbg.declare(metadata ptr %__dummy32, metadata !1551, metadata !DIExpression()), !dbg !1643
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy233) #17, !dbg !1643
  call void @llvm.dbg.declare(metadata ptr %__dummy233, metadata !1557, metadata !DIExpression()), !dbg !1643
  %cmp34 = icmp eq ptr %__dummy32, %__dummy233, !dbg !1643
  %conv35 = zext i1 %cmp34 to i32, !dbg !1643
  store i32 1, ptr %tmp36, align 4, !dbg !1643
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy233) #17, !dbg !1644
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy32) #17, !dbg !1644
  %35 = load i32, ptr %tmp36, align 4, !dbg !1643
  %36 = load ptr, ptr %s.addr, align 8, !dbg !1644
  %lock37 = getelementptr inbounds %struct.sidtab, ptr %36, i32 0, i32 4, !dbg !1644
  %call38 = call ptr @spinlock_check(ptr noundef %lock37) #18, !dbg !1644
  %call39 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call38) #18, !dbg !1644
  store i64 %call39, ptr %flags, align 8, !dbg !1644
  br label %do.cond40, !dbg !1644

do.cond40:                                        ; preds = %do.body31
  br label %do.end41, !dbg !1644

do.end41:                                         ; preds = %do.cond40
  br label %do.cond42, !dbg !1642

do.cond42:                                        ; preds = %do.end41
  br label %do.end43, !dbg !1642

do.end43:                                         ; preds = %do.cond42
  %37 = load ptr, ptr %s.addr, align 8, !dbg !1645
  %convert44 = getelementptr inbounds %struct.sidtab, ptr %37, i32 0, i32 2, !dbg !1646
  store ptr null, ptr %convert44, align 8, !dbg !1647
  %38 = load ptr, ptr %s.addr, align 8, !dbg !1648
  %lock45 = getelementptr inbounds %struct.sidtab, ptr %38, i32 0, i32 4, !dbg !1649
  %39 = load i64, ptr %flags, align 8, !dbg !1650
  call void @spin_unlock_irqrestore(ptr noundef %lock45, i64 noundef %39) #18, !dbg !1651
  %40 = load i32, ptr %rc, align 4, !dbg !1652
  store i32 %40, ptr %retval, align 4, !dbg !1653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1653

if.end46:                                         ; preds = %do.end20
  br label %do.body47, !dbg !1654

do.body47:                                        ; preds = %if.end46
  br label %do.body48, !dbg !1655

do.body48:                                        ; preds = %do.body47
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy49) #17, !dbg !1656
  call void @llvm.dbg.declare(metadata ptr %__dummy49, metadata !1558, metadata !DIExpression()), !dbg !1656
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy250) #17, !dbg !1656
  call void @llvm.dbg.declare(metadata ptr %__dummy250, metadata !1562, metadata !DIExpression()), !dbg !1656
  %cmp51 = icmp eq ptr %__dummy49, %__dummy250, !dbg !1656
  %conv52 = zext i1 %cmp51 to i32, !dbg !1656
  store i32 1, ptr %tmp53, align 4, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy250) #17, !dbg !1657
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy49) #17, !dbg !1657
  %41 = load i32, ptr %tmp53, align 4, !dbg !1656
  %42 = load ptr, ptr %s.addr, align 8, !dbg !1657
  %lock54 = getelementptr inbounds %struct.sidtab, ptr %42, i32 0, i32 4, !dbg !1657
  %call55 = call ptr @spinlock_check(ptr noundef %lock54) #18, !dbg !1657
  %call56 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call55) #18, !dbg !1657
  store i64 %call56, ptr %flags, align 8, !dbg !1657
  br label %do.cond57, !dbg !1657

do.cond57:                                        ; preds = %do.body48
  br label %do.end58, !dbg !1657

do.end58:                                         ; preds = %do.cond57
  br label %do.cond59, !dbg !1655

do.cond59:                                        ; preds = %do.end58
  br label %do.end60, !dbg !1655

do.end60:                                         ; preds = %do.cond59
  %43 = load ptr, ptr %params.addr, align 8, !dbg !1658
  %target61 = getelementptr inbounds %struct.sidtab_convert_params, ptr %43, i32 0, i32 1, !dbg !1659
  %44 = load ptr, ptr %target61, align 8, !dbg !1659
  %45 = load i32, ptr %count, align 4, !dbg !1660
  call void @sidtab_convert_hashtable(ptr noundef %44, i32 noundef %45) #18, !dbg !1661
  %46 = load ptr, ptr %s.addr, align 8, !dbg !1662
  %lock62 = getelementptr inbounds %struct.sidtab, ptr %46, i32 0, i32 4, !dbg !1663
  %47 = load i64, ptr %flags, align 8, !dbg !1664
  call void @spin_unlock_irqrestore(ptr noundef %lock62, i64 noundef %47) #18, !dbg !1665
  store i32 0, ptr %retval, align 4, !dbg !1666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1666

cleanup:                                          ; preds = %do.end60, %do.end43, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #17, !dbg !1667
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #17, !dbg !1667
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #17, !dbg !1667
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #17, !dbg !1667
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !1667
  %48 = load i32, ptr %retval, align 4, !dbg !1667
  ret i32 %48, !dbg !1667
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sidtab_level_from_count(i32 noundef %count) #0 align 16 !dbg !1668 {
entry:
  %count.addr = alloca i32, align 4
  %capacity = alloca i32, align 4
  %level = alloca i32, align 4
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1672, metadata !DIExpression()), !dbg !1675
  call void @llvm.lifetime.start.p0(i64 4, ptr %capacity) #17, !dbg !1676
  call void @llvm.dbg.declare(metadata ptr %capacity, metadata !1673, metadata !DIExpression()), !dbg !1677
  store i32 39, ptr %capacity, align 4, !dbg !1677
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #17, !dbg !1678
  call void @llvm.dbg.declare(metadata ptr %level, metadata !1674, metadata !DIExpression()), !dbg !1679
  store i32 0, ptr %level, align 4, !dbg !1679
  br label %while.cond, !dbg !1680

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %count.addr, align 4, !dbg !1681
  %1 = load i32, ptr %capacity, align 4, !dbg !1682
  %cmp = icmp ugt i32 %0, %1, !dbg !1683
  br i1 %cmp, label %while.body, label %while.end, !dbg !1680

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %capacity, align 4, !dbg !1684
  %shl = shl i32 %2, 9, !dbg !1684
  store i32 %shl, ptr %capacity, align 4, !dbg !1684
  %3 = load i32, ptr %level, align 4, !dbg !1686
  %inc = add i32 %3, 1, !dbg !1686
  store i32 %inc, ptr %level, align 4, !dbg !1686
  br label %while.cond, !dbg !1680, !llvm.loop !1687

while.end:                                        ; preds = %while.cond
  %4 = load i32, ptr %level, align 4, !dbg !1689
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #17, !dbg !1690
  call void @llvm.lifetime.end.p0(i64 4, ptr %capacity) #17, !dbg !1690
  ret i32 %4, !dbg !1691
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sidtab_convert_tree(ptr noundef %edst, ptr noundef %esrc, ptr noundef %pos, i32 noundef %count, i32 noundef %level, ptr noundef %convert) #0 align 16 !dbg !1692 {
entry:
  %retval = alloca i32, align 4
  %edst.addr = alloca ptr, align 8
  %esrc.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %convert.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %edst, ptr %edst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edst.addr, metadata !1696, metadata !DIExpression()), !dbg !1704
  store ptr %esrc, ptr %esrc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %esrc.addr, metadata !1697, metadata !DIExpression()), !dbg !1705
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !1698, metadata !DIExpression()), !dbg !1706
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1699, metadata !DIExpression()), !dbg !1707
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !1700, metadata !DIExpression()), !dbg !1708
  store ptr %convert, ptr %convert.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %convert.addr, metadata !1701, metadata !DIExpression()), !dbg !1709
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #17, !dbg !1710
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1702, metadata !DIExpression()), !dbg !1711
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !1712
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1703, metadata !DIExpression()), !dbg !1713
  %0 = load i32, ptr %level.addr, align 4, !dbg !1714
  %cmp = icmp ne i32 %0, 0, !dbg !1716
  br i1 %cmp, label %if.then, label %if.else, !dbg !1717

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %edst.addr, align 8, !dbg !1718
  %2 = load ptr, ptr %1, align 8, !dbg !1721
  %tobool = icmp ne ptr %2, null, !dbg !1718
  br i1 %tobool, label %if.end4, label %if.then1, !dbg !1722

if.then1:                                         ; preds = %if.then
  %call = call noalias ptr @kzalloc(i64 noundef 4096, i32 noundef 3264) #20, !dbg !1723
  %3 = load ptr, ptr %edst.addr, align 8, !dbg !1725
  store ptr %call, ptr %3, align 8, !dbg !1726
  %4 = load ptr, ptr %edst.addr, align 8, !dbg !1727
  %5 = load ptr, ptr %4, align 8, !dbg !1729
  %tobool2 = icmp ne ptr %5, null, !dbg !1727
  br i1 %tobool2, label %if.end, label %if.then3, !dbg !1730

if.then3:                                         ; preds = %if.then1
  store i32 -12, ptr %retval, align 4, !dbg !1731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1731

if.end:                                           ; preds = %if.then1
  br label %if.end4, !dbg !1732

if.end4:                                          ; preds = %if.end, %if.then
  store i32 0, ptr %i, align 4, !dbg !1733
  br label %while.cond, !dbg !1734

while.cond:                                       ; preds = %if.end15, %if.end4
  %6 = load i32, ptr %i, align 4, !dbg !1735
  %conv = zext i32 %6 to i64, !dbg !1735
  %cmp5 = icmp ult i64 %conv, 512, !dbg !1736
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !1737

land.rhs:                                         ; preds = %while.cond
  %7 = load ptr, ptr %pos.addr, align 8, !dbg !1738
  %8 = load i32, ptr %7, align 4, !dbg !1739
  %9 = load i32, ptr %count.addr, align 4, !dbg !1740
  %cmp7 = icmp ult i32 %8, %9, !dbg !1741
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ], !dbg !1742
  br i1 %10, label %while.body, label %while.end, !dbg !1734

while.body:                                       ; preds = %land.end
  %11 = load ptr, ptr %edst.addr, align 8, !dbg !1743
  %12 = load ptr, ptr %11, align 8, !dbg !1745
  %entries = getelementptr inbounds %struct.sidtab_node_inner, ptr %12, i32 0, i32 0, !dbg !1746
  %13 = load i32, ptr %i, align 4, !dbg !1747
  %idxprom = zext i32 %13 to i64, !dbg !1743
  %arrayidx = getelementptr [512 x %union.sidtab_entry_inner], ptr %entries, i64 0, i64 %idxprom, !dbg !1743
  %14 = load ptr, ptr %esrc.addr, align 8, !dbg !1748
  %15 = load ptr, ptr %14, align 8, !dbg !1749
  %entries9 = getelementptr inbounds %struct.sidtab_node_inner, ptr %15, i32 0, i32 0, !dbg !1750
  %16 = load i32, ptr %i, align 4, !dbg !1751
  %idxprom10 = zext i32 %16 to i64, !dbg !1748
  %arrayidx11 = getelementptr [512 x %union.sidtab_entry_inner], ptr %entries9, i64 0, i64 %idxprom10, !dbg !1748
  %17 = load ptr, ptr %pos.addr, align 8, !dbg !1752
  %18 = load i32, ptr %count.addr, align 4, !dbg !1753
  %19 = load i32, ptr %level.addr, align 4, !dbg !1754
  %sub = sub i32 %19, 1, !dbg !1755
  %20 = load ptr, ptr %convert.addr, align 8, !dbg !1756
  %call12 = call i32 @sidtab_convert_tree(ptr noundef %arrayidx, ptr noundef %arrayidx11, ptr noundef %17, i32 noundef %18, i32 noundef %sub, ptr noundef %20) #18, !dbg !1757
  store i32 %call12, ptr %rc, align 4, !dbg !1758
  %21 = load i32, ptr %rc, align 4, !dbg !1759
  %tobool13 = icmp ne i32 %21, 0, !dbg !1759
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1761

if.then14:                                        ; preds = %while.body
  %22 = load i32, ptr %rc, align 4, !dbg !1762
  store i32 %22, ptr %retval, align 4, !dbg !1763
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1763

if.end15:                                         ; preds = %while.body
  %23 = load i32, ptr %i, align 4, !dbg !1764
  %inc = add i32 %23, 1, !dbg !1764
  store i32 %inc, ptr %i, align 4, !dbg !1764
  br label %while.cond, !dbg !1734, !llvm.loop !1765

while.end:                                        ; preds = %land.end
  br label %if.end47, !dbg !1767

if.else:                                          ; preds = %entry
  %24 = load ptr, ptr %edst.addr, align 8, !dbg !1768
  %25 = load ptr, ptr %24, align 8, !dbg !1771
  %tobool16 = icmp ne ptr %25, null, !dbg !1768
  br i1 %tobool16, label %if.end22, label %if.then17, !dbg !1772

if.then17:                                        ; preds = %if.else
  %call18 = call noalias ptr @kzalloc(i64 noundef 4096, i32 noundef 3264) #20, !dbg !1773
  %26 = load ptr, ptr %edst.addr, align 8, !dbg !1775
  store ptr %call18, ptr %26, align 8, !dbg !1776
  %27 = load ptr, ptr %edst.addr, align 8, !dbg !1777
  %28 = load ptr, ptr %27, align 8, !dbg !1779
  %tobool19 = icmp ne ptr %28, null, !dbg !1777
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !1780

if.then20:                                        ; preds = %if.then17
  store i32 -12, ptr %retval, align 4, !dbg !1781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1781

if.end21:                                         ; preds = %if.then17
  br label %if.end22, !dbg !1782

if.end22:                                         ; preds = %if.end21, %if.else
  store i32 0, ptr %i, align 4, !dbg !1783
  br label %while.cond23, !dbg !1784

while.cond23:                                     ; preds = %if.end42, %if.end22
  %29 = load i32, ptr %i, align 4, !dbg !1785
  %conv24 = zext i32 %29 to i64, !dbg !1785
  %cmp25 = icmp ult i64 %conv24, 39, !dbg !1786
  br i1 %cmp25, label %land.rhs27, label %land.end30, !dbg !1787

land.rhs27:                                       ; preds = %while.cond23
  %30 = load ptr, ptr %pos.addr, align 8, !dbg !1788
  %31 = load i32, ptr %30, align 4, !dbg !1789
  %32 = load i32, ptr %count.addr, align 4, !dbg !1790
  %cmp28 = icmp ult i32 %31, %32, !dbg !1791
  br label %land.end30

land.end30:                                       ; preds = %land.rhs27, %while.cond23
  %33 = phi i1 [ false, %while.cond23 ], [ %cmp28, %land.rhs27 ], !dbg !1792
  br i1 %33, label %while.body31, label %while.end45, !dbg !1784

while.body31:                                     ; preds = %land.end30
  %34 = load ptr, ptr %convert.addr, align 8, !dbg !1793
  %args = getelementptr inbounds %struct.sidtab_convert_params, ptr %34, i32 0, i32 0, !dbg !1795
  %35 = load ptr, ptr %args, align 8, !dbg !1795
  %36 = load ptr, ptr %esrc.addr, align 8, !dbg !1796
  %37 = load ptr, ptr %36, align 8, !dbg !1797
  %entries32 = getelementptr inbounds %struct.sidtab_node_leaf, ptr %37, i32 0, i32 0, !dbg !1798
  %38 = load i32, ptr %i, align 4, !dbg !1799
  %idxprom33 = zext i32 %38 to i64, !dbg !1796
  %arrayidx34 = getelementptr [39 x %struct.sidtab_entry], ptr %entries32, i64 0, i64 %idxprom33, !dbg !1796
  %context = getelementptr inbounds %struct.sidtab_entry, ptr %arrayidx34, i32 0, i32 2, !dbg !1800
  %39 = load ptr, ptr %edst.addr, align 8, !dbg !1801
  %40 = load ptr, ptr %39, align 8, !dbg !1802
  %entries35 = getelementptr inbounds %struct.sidtab_node_leaf, ptr %40, i32 0, i32 0, !dbg !1803
  %41 = load i32, ptr %i, align 4, !dbg !1804
  %idxprom36 = zext i32 %41 to i64, !dbg !1801
  %arrayidx37 = getelementptr [39 x %struct.sidtab_entry], ptr %entries35, i64 0, i64 %idxprom36, !dbg !1801
  %context38 = getelementptr inbounds %struct.sidtab_entry, ptr %arrayidx37, i32 0, i32 2, !dbg !1805
  %call39 = call i32 @services_convert_context(ptr noundef %35, ptr noundef %context, ptr noundef %context38, i32 noundef 3264) #18, !dbg !1806
  store i32 %call39, ptr %rc, align 4, !dbg !1807
  %42 = load i32, ptr %rc, align 4, !dbg !1808
  %tobool40 = icmp ne i32 %42, 0, !dbg !1808
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !1810

if.then41:                                        ; preds = %while.body31
  %43 = load i32, ptr %rc, align 4, !dbg !1811
  store i32 %43, ptr %retval, align 4, !dbg !1812
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1812

if.end42:                                         ; preds = %while.body31
  %44 = load ptr, ptr %pos.addr, align 8, !dbg !1813
  %45 = load i32, ptr %44, align 4, !dbg !1814
  %inc43 = add i32 %45, 1, !dbg !1814
  store i32 %inc43, ptr %44, align 4, !dbg !1814
  %46 = load i32, ptr %i, align 4, !dbg !1815
  %inc44 = add i32 %46, 1, !dbg !1815
  store i32 %inc44, ptr %i, align 4, !dbg !1815
  br label %while.cond23, !dbg !1784, !llvm.loop !1816

while.end45:                                      ; preds = %land.end30
  call void @__might_resched(ptr noundef @.str.3, i32 noundef 418, i32 noundef 0) #18, !dbg !1818
  %call46 = call i32 @_cond_resched() #18, !dbg !1818
  store i32 %call46, ptr %tmp, align 4, !dbg !1818
  %47 = load i32, ptr %tmp, align 4, !dbg !1818
  br label %if.end47

if.end47:                                         ; preds = %while.end45, %while.end
  store i32 0, ptr %retval, align 4, !dbg !1820
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1820

cleanup:                                          ; preds = %if.end47, %if.then41, %if.then20, %if.then14, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !1821
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #17, !dbg !1821
  %48 = load i32, ptr %retval, align 4, !dbg !1821
  ret i32 %48, !dbg !1821
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sidtab_convert_hashtable(ptr noundef %s, i32 noundef %count) #0 align 16 !dbg !1822 {
entry:
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %entry1 = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1826, metadata !DIExpression()), !dbg !1830
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1827, metadata !DIExpression()), !dbg !1831
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #17, !dbg !1832
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !1828, metadata !DIExpression()), !dbg !1833
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !1834
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1829, metadata !DIExpression()), !dbg !1835
  store i32 0, ptr %i, align 4, !dbg !1836
  br label %for.cond, !dbg !1838

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1839
  %1 = load i32, ptr %count.addr, align 4, !dbg !1841
  %cmp = icmp ult i32 %0, %1, !dbg !1842
  br i1 %cmp, label %for.body, label %for.end, !dbg !1843

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1844
  %3 = load i32, ptr %i, align 4, !dbg !1846
  %call = call ptr @sidtab_do_lookup(ptr noundef %2, i32 noundef %3, i32 noundef 0) #18, !dbg !1847
  store ptr %call, ptr %entry1, align 8, !dbg !1848
  %4 = load i32, ptr %i, align 4, !dbg !1849
  %add = add i32 %4, 27, !dbg !1849
  %add2 = add i32 %add, 1, !dbg !1849
  %5 = load ptr, ptr %entry1, align 8, !dbg !1850
  %sid = getelementptr inbounds %struct.sidtab_entry, ptr %5, i32 0, i32 0, !dbg !1851
  store i32 %add2, ptr %sid, align 8, !dbg !1852
  %6 = load ptr, ptr %entry1, align 8, !dbg !1853
  %context = getelementptr inbounds %struct.sidtab_entry, ptr %6, i32 0, i32 2, !dbg !1854
  %call3 = call i32 @context_compute_hash(ptr noundef %context) #18, !dbg !1855
  %7 = load ptr, ptr %entry1, align 8, !dbg !1856
  %hash = getelementptr inbounds %struct.sidtab_entry, ptr %7, i32 0, i32 1, !dbg !1857
  store i32 %call3, ptr %hash, align 4, !dbg !1858
  %8 = load ptr, ptr %entry1, align 8, !dbg !1859
  %list = getelementptr inbounds %struct.sidtab_entry, ptr %8, i32 0, i32 4, !dbg !1859
  %9 = load ptr, ptr %s.addr, align 8, !dbg !1859
  %context_to_sid = getelementptr inbounds %struct.sidtab, ptr %9, i32 0, i32 9, !dbg !1859
  %10 = load ptr, ptr %entry1, align 8, !dbg !1859
  %hash4 = getelementptr inbounds %struct.sidtab_entry, ptr %10, i32 0, i32 1, !dbg !1859
  %11 = load i32, ptr %hash4, align 4, !dbg !1859
  %call5 = call i32 @hash_32(i32 noundef %11, i32 noundef 9) #18, !dbg !1859
  %idxprom = zext i32 %call5 to i64, !dbg !1859
  %arrayidx = getelementptr [512 x %struct.hlist_head], ptr %context_to_sid, i64 0, i64 %idxprom, !dbg !1859
  call void @hlist_add_head_rcu(ptr noundef %list, ptr noundef %arrayidx) #18, !dbg !1859
  br label %for.inc, !dbg !1860

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !1861
  %inc = add i32 %12, 1, !dbg !1861
  store i32 %inc, ptr %i, align 4, !dbg !1861
  br label %for.cond, !dbg !1862, !llvm.loop !1863

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !1865
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #17, !dbg !1865
  ret void, !dbg !1865
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sidtab_cancel_convert(ptr noundef %s) #0 align 16 !dbg !1866 {
entry:
  %s.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1870, metadata !DIExpression()), !dbg !1877
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !1878
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1871, metadata !DIExpression()), !dbg !1879
  br label %do.body, !dbg !1880

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1881

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !1882
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1872, metadata !DIExpression()), !dbg !1882
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !1882
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1876, metadata !DIExpression()), !dbg !1882
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1882
  %conv = zext i1 %cmp to i32, !dbg !1882
  store i32 1, ptr %tmp, align 4, !dbg !1882
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !1883
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !1883
  %0 = load i32, ptr %tmp, align 4, !dbg !1882
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1883
  %lock = getelementptr inbounds %struct.sidtab, ptr %1, i32 0, i32 4, !dbg !1883
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !1883
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !1883
  store i64 %call2, ptr %flags, align 8, !dbg !1883
  br label %do.cond, !dbg !1883

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !1883

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !1881

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !1881

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %s.addr, align 8, !dbg !1884
  %convert = getelementptr inbounds %struct.sidtab, ptr %2, i32 0, i32 2, !dbg !1885
  store ptr null, ptr %convert, align 8, !dbg !1886
  %3 = load ptr, ptr %s.addr, align 8, !dbg !1887
  %lock5 = getelementptr inbounds %struct.sidtab, ptr %3, i32 0, i32 4, !dbg !1888
  %4 = load i64, ptr %flags, align 8, !dbg !1889
  call void @spin_unlock_irqrestore(ptr noundef %lock5, i64 noundef %4) #18, !dbg !1890
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !1891
  ret void, !dbg !1891
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sidtab_freeze_begin(ptr noundef %s, ptr noundef %flags) #0 align 16 !dbg !1892 {
entry:
  %s.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1897, metadata !DIExpression()), !dbg !1904
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1898, metadata !DIExpression()), !dbg !1905
  br label %do.body, !dbg !1906

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1907

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !1908
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1899, metadata !DIExpression()), !dbg !1908
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !1908
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1903, metadata !DIExpression()), !dbg !1908
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1908
  %conv = zext i1 %cmp to i32, !dbg !1908
  store i32 1, ptr %tmp, align 4, !dbg !1908
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !1909
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !1909
  %0 = load i32, ptr %tmp, align 4, !dbg !1908
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1909
  %lock = getelementptr inbounds %struct.sidtab, ptr %1, i32 0, i32 4, !dbg !1909
  %call = call ptr @spinlock_check(ptr noundef %lock) #18, !dbg !1909
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !1909
  %2 = load ptr, ptr %flags.addr, align 8, !dbg !1909
  store i64 %call2, ptr %2, align 8, !dbg !1909
  br label %do.end, !dbg !1909

do.end:                                           ; preds = %do.body1
  br label %do.end3, !dbg !1907

do.end3:                                          ; preds = %do.end
  %3 = load ptr, ptr %s.addr, align 8, !dbg !1910
  %frozen = getelementptr inbounds %struct.sidtab, ptr %3, i32 0, i32 3, !dbg !1911
  store i8 1, ptr %frozen, align 8, !dbg !1912
  %4 = load ptr, ptr %s.addr, align 8, !dbg !1913
  %convert = getelementptr inbounds %struct.sidtab, ptr %4, i32 0, i32 2, !dbg !1914
  store ptr null, ptr %convert, align 8, !dbg !1915
  ret void, !dbg !1916
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sidtab_freeze_end(ptr noundef %s, ptr noundef %flags) #0 align 16 !dbg !1917 {
entry:
  %s.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1919, metadata !DIExpression()), !dbg !1921
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1920, metadata !DIExpression()), !dbg !1922
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1923
  %lock = getelementptr inbounds %struct.sidtab, ptr %0, i32 0, i32 4, !dbg !1924
  %1 = load ptr, ptr %flags.addr, align 8, !dbg !1925
  %2 = load i64, ptr %1, align 8, !dbg !1926
  call void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %2) #18, !dbg !1927
  ret void, !dbg !1928
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sidtab_destroy(ptr noundef %s) #0 align 16 !dbg !1929 {
entry:
  %s.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %level = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1931, metadata !DIExpression()), !dbg !1934
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !1935
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1932, metadata !DIExpression()), !dbg !1936
  call void @llvm.lifetime.start.p0(i64 4, ptr %level) #17, !dbg !1935
  call void @llvm.dbg.declare(metadata ptr %level, metadata !1933, metadata !DIExpression()), !dbg !1937
  store i32 0, ptr %i, align 4, !dbg !1938
  br label %for.cond, !dbg !1940

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1941
  %cmp = icmp ult i32 %0, 27, !dbg !1943
  br i1 %cmp, label %for.body, label %for.end, !dbg !1944

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %s.addr, align 8, !dbg !1945
  %isids = getelementptr inbounds %struct.sidtab, ptr %1, i32 0, i32 8, !dbg !1947
  %2 = load i32, ptr %i, align 4, !dbg !1948
  %idxprom = zext i32 %2 to i64, !dbg !1945
  %arrayidx = getelementptr [27 x %struct.sidtab_isid_entry], ptr %isids, i64 0, i64 %idxprom, !dbg !1945
  %set = getelementptr inbounds %struct.sidtab_isid_entry, ptr %arrayidx, i32 0, i32 0, !dbg !1949
  %3 = load i32, ptr %set, align 8, !dbg !1949
  %tobool = icmp ne i32 %3, 0, !dbg !1945
  br i1 %tobool, label %if.then, label %if.end, !dbg !1950

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %s.addr, align 8, !dbg !1951
  %isids1 = getelementptr inbounds %struct.sidtab, ptr %4, i32 0, i32 8, !dbg !1952
  %5 = load i32, ptr %i, align 4, !dbg !1953
  %idxprom2 = zext i32 %5 to i64, !dbg !1951
  %arrayidx3 = getelementptr [27 x %struct.sidtab_isid_entry], ptr %isids1, i64 0, i64 %idxprom2, !dbg !1951
  %entry4 = getelementptr inbounds %struct.sidtab_isid_entry, ptr %arrayidx3, i32 0, i32 1, !dbg !1954
  call void @sidtab_destroy_entry(ptr noundef %entry4) #18, !dbg !1955
  br label %if.end, !dbg !1955

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !1949

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4, !dbg !1956
  %inc = add i32 %6, 1, !dbg !1956
  store i32 %inc, ptr %i, align 4, !dbg !1956
  br label %for.cond, !dbg !1957, !llvm.loop !1958

for.end:                                          ; preds = %for.cond
  store i32 3, ptr %level, align 4, !dbg !1960
  br label %while.cond, !dbg !1961

while.cond:                                       ; preds = %while.body, %for.end
  %7 = load i32, ptr %level, align 4, !dbg !1962
  %tobool5 = icmp ne i32 %7, 0, !dbg !1962
  br i1 %tobool5, label %land.rhs, label %land.end, !dbg !1963

land.rhs:                                         ; preds = %while.cond
  %8 = load ptr, ptr %s.addr, align 8, !dbg !1964
  %roots = getelementptr inbounds %struct.sidtab, ptr %8, i32 0, i32 0, !dbg !1965
  %9 = load i32, ptr %level, align 4, !dbg !1966
  %idxprom6 = zext i32 %9 to i64, !dbg !1964
  %arrayidx7 = getelementptr [4 x %union.sidtab_entry_inner], ptr %roots, i64 0, i64 %idxprom6, !dbg !1964
  %10 = load ptr, ptr %arrayidx7, align 8, !dbg !1967
  %tobool8 = icmp ne ptr %10, null, !dbg !1968
  %lnot = xor i1 %tobool8, true, !dbg !1968
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ], !dbg !1969
  br i1 %11, label %while.body, label %while.end, !dbg !1961

while.body:                                       ; preds = %land.end
  %12 = load i32, ptr %level, align 4, !dbg !1970
  %dec = add i32 %12, -1, !dbg !1970
  store i32 %dec, ptr %level, align 4, !dbg !1970
  br label %while.cond, !dbg !1961, !llvm.loop !1971

while.end:                                        ; preds = %land.end
  %13 = load ptr, ptr %s.addr, align 8, !dbg !1973
  %roots9 = getelementptr inbounds %struct.sidtab, ptr %13, i32 0, i32 0, !dbg !1974
  %14 = load i32, ptr %level, align 4, !dbg !1975
  %idxprom10 = zext i32 %14 to i64, !dbg !1973
  %arrayidx11 = getelementptr [4 x %union.sidtab_entry_inner], ptr %roots9, i64 0, i64 %idxprom10, !dbg !1973
  %15 = load i32, ptr %level, align 4, !dbg !1976
  %coerce.dive = getelementptr inbounds %union.sidtab_entry_inner, ptr %arrayidx11, i32 0, i32 0, !dbg !1977
  %16 = load ptr, ptr %coerce.dive, align 8, !dbg !1977
  call void @sidtab_destroy_tree(ptr %16, i32 noundef %15) #18, !dbg !1977
  call void @llvm.lifetime.end.p0(i64 4, ptr %level) #17, !dbg !1978
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !1978
  ret void, !dbg !1978
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sidtab_destroy_entry(ptr noundef %entry1) #0 align 16 !dbg !1979 {
entry:
  %entry.addr = alloca ptr, align 8
  %__UNIQUE_ID_rcu567 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1983, metadata !DIExpression()), !dbg !1986
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1987
  %context = getelementptr inbounds %struct.sidtab_entry, ptr %0, i32 0, i32 2, !dbg !1988
  call void @context_destroy(ptr noundef %context) #18, !dbg !1989
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu567) #17, !dbg !1990
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu567, metadata !1984, metadata !DIExpression()), !dbg !1990
  br label %do.body, !dbg !1991

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !1993

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1993

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1991
  %cache = getelementptr inbounds %struct.sidtab_entry, ptr %1, i32 0, i32 3, !dbg !1991
  %2 = load volatile ptr, ptr %cache, align 8, !dbg !1991
  store ptr %2, ptr %tmp, align 8, !dbg !1993
  %3 = load ptr, ptr %tmp, align 8, !dbg !1991
  store ptr %3, ptr %__UNIQUE_ID_rcu567, align 8, !dbg !1990
  %4 = load ptr, ptr %__UNIQUE_ID_rcu567, align 8, !dbg !1990
  store ptr %4, ptr %tmp2, align 8, !dbg !1990
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu567) #17, !dbg !1995
  %5 = load ptr, ptr %tmp2, align 8, !dbg !1990
  call void @kfree(ptr noundef %5) #18, !dbg !1996
  ret void, !dbg !1997
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sidtab_destroy_tree(ptr %entry.coerce, i32 noundef %level) #0 align 16 !dbg !1998 {
entry:
  %entry2 = alloca %union.sidtab_entry_inner, align 8
  %level.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %node7 = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %union.sidtab_entry_inner, ptr %entry2, i32 0, i32 0
  store ptr %entry.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %entry2, metadata !2002, metadata !DIExpression()), !dbg !2010
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !2003, metadata !DIExpression()), !dbg !2011
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !2012
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2004, metadata !DIExpression()), !dbg !2013
  %0 = load i32, ptr %level.addr, align 4, !dbg !2014
  %cmp = icmp ne i32 %0, 0, !dbg !2015
  br i1 %cmp, label %if.then, label %if.else, !dbg !2016

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #17, !dbg !2017
  call void @llvm.dbg.declare(metadata ptr %node, metadata !2005, metadata !DIExpression()), !dbg !2018
  %1 = load ptr, ptr %entry2, align 8, !dbg !2019
  store ptr %1, ptr %node, align 8, !dbg !2018
  %2 = load ptr, ptr %node, align 8, !dbg !2020
  %tobool = icmp ne ptr %2, null, !dbg !2020
  br i1 %tobool, label %if.end, label %if.then3, !dbg !2022

if.then3:                                         ; preds = %if.then
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2023

if.end:                                           ; preds = %if.then
  store i32 0, ptr %i, align 4, !dbg !2024
  br label %for.cond, !dbg !2026

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !2027
  %conv = zext i32 %3 to i64, !dbg !2027
  %cmp4 = icmp ult i64 %conv, 512, !dbg !2029
  br i1 %cmp4, label %for.body, label %for.end, !dbg !2030

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %node, align 8, !dbg !2031
  %entries = getelementptr inbounds %struct.sidtab_node_inner, ptr %4, i32 0, i32 0, !dbg !2032
  %5 = load i32, ptr %i, align 4, !dbg !2033
  %idxprom = zext i32 %5 to i64, !dbg !2031
  %arrayidx = getelementptr [512 x %union.sidtab_entry_inner], ptr %entries, i64 0, i64 %idxprom, !dbg !2031
  %6 = load i32, ptr %level.addr, align 4, !dbg !2034
  %sub = sub i32 %6, 1, !dbg !2035
  %coerce.dive6 = getelementptr inbounds %union.sidtab_entry_inner, ptr %arrayidx, i32 0, i32 0, !dbg !2036
  %7 = load ptr, ptr %coerce.dive6, align 8, !dbg !2036
  call void @sidtab_destroy_tree(ptr %7, i32 noundef %sub) #18, !dbg !2036
  br label %for.inc, !dbg !2036

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !2037
  %inc = add i32 %8, 1, !dbg !2037
  store i32 %inc, ptr %i, align 4, !dbg !2037
  br label %for.cond, !dbg !2038, !llvm.loop !2039

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %node, align 8, !dbg !2041
  call void @kfree(ptr noundef %9) #18, !dbg !2042
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2043
  br label %cleanup, !dbg !2043

cleanup:                                          ; preds = %for.end, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #17, !dbg !2043
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup26 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end25, !dbg !2044

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %node7) #17, !dbg !2045
  call void @llvm.dbg.declare(metadata ptr %node7, metadata !2008, metadata !DIExpression()), !dbg !2046
  %10 = load ptr, ptr %entry2, align 8, !dbg !2047
  store ptr %10, ptr %node7, align 8, !dbg !2046
  %11 = load ptr, ptr %node7, align 8, !dbg !2048
  %tobool8 = icmp ne ptr %11, null, !dbg !2048
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2050

if.then9:                                         ; preds = %if.else
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup22, !dbg !2051

if.end10:                                         ; preds = %if.else
  store i32 0, ptr %i, align 4, !dbg !2052
  br label %for.cond11, !dbg !2054

for.cond11:                                       ; preds = %for.inc19, %if.end10
  %12 = load i32, ptr %i, align 4, !dbg !2055
  %conv12 = zext i32 %12 to i64, !dbg !2055
  %cmp13 = icmp ult i64 %conv12, 39, !dbg !2057
  br i1 %cmp13, label %for.body15, label %for.end21, !dbg !2058

for.body15:                                       ; preds = %for.cond11
  %13 = load ptr, ptr %node7, align 8, !dbg !2059
  %entries16 = getelementptr inbounds %struct.sidtab_node_leaf, ptr %13, i32 0, i32 0, !dbg !2060
  %14 = load i32, ptr %i, align 4, !dbg !2061
  %idxprom17 = zext i32 %14 to i64, !dbg !2059
  %arrayidx18 = getelementptr [39 x %struct.sidtab_entry], ptr %entries16, i64 0, i64 %idxprom17, !dbg !2059
  call void @sidtab_destroy_entry(ptr noundef %arrayidx18) #18, !dbg !2062
  br label %for.inc19, !dbg !2062

for.inc19:                                        ; preds = %for.body15
  %15 = load i32, ptr %i, align 4, !dbg !2063
  %inc20 = add i32 %15, 1, !dbg !2063
  store i32 %inc20, ptr %i, align 4, !dbg !2063
  br label %for.cond11, !dbg !2064, !llvm.loop !2065

for.end21:                                        ; preds = %for.cond11
  %16 = load ptr, ptr %node7, align 8, !dbg !2067
  call void @kfree(ptr noundef %16) #18, !dbg !2068
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2069
  br label %cleanup22, !dbg !2069

cleanup22:                                        ; preds = %for.end21, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %node7) #17, !dbg !2069
  %cleanup.dest23 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest23, label %cleanup26 [
    i32 0, label %cleanup.cont24
  ]

cleanup.cont24:                                   ; preds = %cleanup22
  br label %if.end25

if.end25:                                         ; preds = %cleanup.cont24, %cleanup.cont
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2070
  br label %cleanup26, !dbg !2070

cleanup26:                                        ; preds = %if.end25, %cleanup22, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !2070
  %cleanup.dest27 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest27, label %unreachable [
    i32 0, label %cleanup.cont28
    i32 1, label %cleanup.cont28
  ]

cleanup.cont28:                                   ; preds = %cleanup26, %cleanup26
  ret void, !dbg !2070

unreachable:                                      ; preds = %cleanup26
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sidtab_sid2str_put(ptr noundef %s, ptr noundef %entry1, ptr noundef %str, i32 noundef %str_len) #0 align 16 !dbg !2071 {
entry:
  %s.addr = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %str_len.addr = alloca i32, align 4
  %cache = alloca ptr, align 8
  %victim = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp9 = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  %_r_a_p__v77 = alloca i64, align 8
  %___p = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2075, metadata !DIExpression()), !dbg !2098
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2076, metadata !DIExpression()), !dbg !2099
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !2077, metadata !DIExpression()), !dbg !2100
  store i32 %str_len, ptr %str_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %str_len.addr, metadata !2078, metadata !DIExpression()), !dbg !2101
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache) #17, !dbg !2102
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !2079, metadata !DIExpression()), !dbg !2103
  call void @llvm.lifetime.start.p0(i64 8, ptr %victim) #17, !dbg !2102
  call void @llvm.dbg.declare(metadata ptr %victim, metadata !2080, metadata !DIExpression()), !dbg !2104
  store ptr null, ptr %victim, align 8, !dbg !2104
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !2105
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2081, metadata !DIExpression()), !dbg !2106
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2107
  %context = getelementptr inbounds %struct.sidtab_entry, ptr %0, i32 0, i32 2, !dbg !2109
  %len = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 3, !dbg !2110
  %1 = load i32, ptr %len, align 4, !dbg !2110
  %tobool = icmp ne i32 %1, 0, !dbg !2107
  br i1 %tobool, label %if.then, label %if.end, !dbg !2111

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2112

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !2113

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !2114

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #17, !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2082, metadata !DIExpression()), !dbg !2115
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #17, !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2086, metadata !DIExpression()), !dbg !2115
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2115
  %conv = zext i1 %cmp to i32, !dbg !2115
  store i32 1, ptr %tmp, align 4, !dbg !2115
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #17, !dbg !2116
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #17, !dbg !2116
  %2 = load i32, ptr %tmp, align 4, !dbg !2115
  %3 = load ptr, ptr %s.addr, align 8, !dbg !2116
  %cache_lock = getelementptr inbounds %struct.sidtab, ptr %3, i32 0, i32 7, !dbg !2116
  %call = call ptr @spinlock_check(ptr noundef %cache_lock) #18, !dbg !2116
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #18, !dbg !2116
  store i64 %call3, ptr %flags, align 8, !dbg !2116
  br label %do.cond, !dbg !2116

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !2116

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !2114

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !2114

do.end5:                                          ; preds = %do.cond4
  br label %do.body6, !dbg !2117

do.body6:                                         ; preds = %do.end5
  br label %do.cond7, !dbg !2119

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !2119

do.end8:                                          ; preds = %do.cond7
  %4 = load ptr, ptr %entry.addr, align 8, !dbg !2117
  %cache10 = getelementptr inbounds %struct.sidtab_entry, ptr %4, i32 0, i32 3, !dbg !2117
  %5 = load ptr, ptr %cache10, align 8, !dbg !2117
  store ptr %5, ptr %tmp9, align 8, !dbg !2119
  %6 = load ptr, ptr %tmp9, align 8, !dbg !2117
  store ptr %6, ptr %cache, align 8, !dbg !2121
  %7 = load ptr, ptr %cache, align 8, !dbg !2122
  %tobool11 = icmp ne ptr %7, null, !dbg !2122
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !2124

if.then12:                                        ; preds = %do.end8
  %8 = load ptr, ptr %cache, align 8, !dbg !2125
  %lru_member = getelementptr inbounds %struct.sidtab_str_cache, ptr %8, i32 0, i32 1, !dbg !2127
  %9 = load ptr, ptr %s.addr, align 8, !dbg !2128
  %cache_lru_list = getelementptr inbounds %struct.sidtab, ptr %9, i32 0, i32 6, !dbg !2129
  call void @list_move(ptr noundef %lru_member, ptr noundef %cache_lru_list) #18, !dbg !2130
  br label %out_unlock, !dbg !2131

if.end13:                                         ; preds = %do.end8
  %10 = load i32, ptr %str_len.addr, align 4, !dbg !2132
  %conv14 = zext i32 %10 to i64, !dbg !2132
  %call15 = call i64 @size_mul(i64 noundef %conv14, i64 noundef 1) #18, !dbg !2132
  %call16 = call i64 @size_add(i64 noundef 48, i64 noundef %call15) #18, !dbg !2132
  %call17 = call noalias ptr @kmalloc(i64 noundef %call16, i32 noundef 2080) #20, !dbg !2133
  store ptr %call17, ptr %cache, align 8, !dbg !2134
  %11 = load ptr, ptr %cache, align 8, !dbg !2135
  %tobool18 = icmp ne ptr %11, null, !dbg !2135
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !2137

if.then19:                                        ; preds = %if.end13
  br label %out_unlock, !dbg !2138

if.end20:                                         ; preds = %if.end13
  %12 = load ptr, ptr %s.addr, align 8, !dbg !2139
  %cache_free_slots = getelementptr inbounds %struct.sidtab, ptr %12, i32 0, i32 5, !dbg !2140
  %13 = load i32, ptr %cache_free_slots, align 8, !dbg !2140
  %cmp21 = icmp eq i32 %13, 0, !dbg !2141
  br i1 %cmp21, label %if.then23, label %if.else67, !dbg !2142

if.then23:                                        ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !2143
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2087, metadata !DIExpression()), !dbg !2143
  %14 = load ptr, ptr %s.addr, align 8, !dbg !2143
  %cache_lru_list24 = getelementptr inbounds %struct.sidtab, ptr %14, i32 0, i32 6, !dbg !2143
  %prev = getelementptr inbounds %struct.list_head, ptr %cache_lru_list24, i32 0, i32 1, !dbg !2143
  %15 = load ptr, ptr %prev, align 8, !dbg !2143
  store ptr %15, ptr %__mptr, align 8, !dbg !2143
  %16 = load ptr, ptr %__mptr, align 8, !dbg !2143
  %add.ptr = getelementptr i8, ptr %16, i64 -16, !dbg !2143
  store ptr %add.ptr, ptr %tmp25, align 8, !dbg !2143
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !2144
  %17 = load ptr, ptr %tmp25, align 8, !dbg !2143
  store ptr %17, ptr %victim, align 8, !dbg !2145
  %18 = load ptr, ptr %victim, align 8, !dbg !2146
  %lru_member26 = getelementptr inbounds %struct.sidtab_str_cache, ptr %18, i32 0, i32 1, !dbg !2147
  call void @list_del(ptr noundef %lru_member26) #18, !dbg !2148
  br label %do.body27, !dbg !2149

do.body27:                                        ; preds = %if.then23
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !2150
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !2091, metadata !DIExpression()), !dbg !2150
  store i64 0, ptr %_r_a_p__v, align 8, !dbg !2150
  %19 = load i64, ptr %_r_a_p__v, align 8, !dbg !2151
  %cmp28 = icmp eq i64 %19, 0, !dbg !2151
  br i1 %cmp28, label %if.then30, label %if.else, !dbg !2150

if.then30:                                        ; preds = %do.body27
  br label %do.body31, !dbg !2151

do.body31:                                        ; preds = %if.then30
  br label %do.body32, !dbg !2153

do.body32:                                        ; preds = %do.body31
  br label %do.cond33, !dbg !2155

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !2155

do.end34:                                         ; preds = %do.cond33
  br label %do.body35, !dbg !2153

do.body35:                                        ; preds = %do.end34
  %20 = load i64, ptr %_r_a_p__v, align 8, !dbg !2157
  %21 = inttoptr i64 %20 to ptr, !dbg !2157
  %22 = load ptr, ptr %victim, align 8, !dbg !2157
  %parent = getelementptr inbounds %struct.sidtab_str_cache, ptr %22, i32 0, i32 2, !dbg !2157
  %23 = load ptr, ptr %parent, align 8, !dbg !2157
  %cache36 = getelementptr inbounds %struct.sidtab_entry, ptr %23, i32 0, i32 3, !dbg !2157
  store volatile ptr %21, ptr %cache36, align 8, !dbg !2157
  br label %do.cond37, !dbg !2157

do.cond37:                                        ; preds = %do.body35
  br label %do.end38, !dbg !2157

do.end38:                                         ; preds = %do.cond37
  br label %do.cond39, !dbg !2153

do.cond39:                                        ; preds = %do.end38
  br label %do.end40, !dbg !2153

do.end40:                                         ; preds = %do.cond39
  br label %if.end64, !dbg !2153

if.else:                                          ; preds = %do.body27
  br label %do.body41, !dbg !2151

do.body41:                                        ; preds = %if.else
  br label %do.body42, !dbg !2159

do.body42:                                        ; preds = %do.body41
  br label %do.cond43, !dbg !2161

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !2161

do.end44:                                         ; preds = %do.cond43
  br label %do.body45, !dbg !2159

do.body45:                                        ; preds = %do.end44
  br label %do.body46, !dbg !2163

do.body46:                                        ; preds = %do.body45
  br label %do.cond47, !dbg !2165

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !2165

do.end48:                                         ; preds = %do.cond47
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !2163, !srcloc !2167
  br label %do.body49, !dbg !2163

do.body49:                                        ; preds = %do.end48
  br label %do.body50, !dbg !2168

do.body50:                                        ; preds = %do.body49
  br label %do.cond51, !dbg !2170

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !2170

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !2168

do.body53:                                        ; preds = %do.end52
  %24 = load i64, ptr %_r_a_p__v, align 8, !dbg !2172
  %25 = inttoptr i64 %24 to ptr, !dbg !2172
  %26 = load ptr, ptr %victim, align 8, !dbg !2172
  %parent54 = getelementptr inbounds %struct.sidtab_str_cache, ptr %26, i32 0, i32 2, !dbg !2172
  %27 = load ptr, ptr %parent54, align 8, !dbg !2172
  %cache55 = getelementptr inbounds %struct.sidtab_entry, ptr %27, i32 0, i32 3, !dbg !2172
  store volatile ptr %25, ptr %cache55, align 8, !dbg !2172
  br label %do.cond56, !dbg !2172

do.cond56:                                        ; preds = %do.body53
  br label %do.end57, !dbg !2172

do.end57:                                         ; preds = %do.cond56
  br label %do.cond58, !dbg !2168

do.cond58:                                        ; preds = %do.end57
  br label %do.end59, !dbg !2168

do.end59:                                         ; preds = %do.cond58
  br label %do.cond60, !dbg !2163

do.cond60:                                        ; preds = %do.end59
  br label %do.end61, !dbg !2163

do.end61:                                         ; preds = %do.cond60
  br label %do.cond62, !dbg !2159

do.cond62:                                        ; preds = %do.end61
  br label %do.end63, !dbg !2159

do.end63:                                         ; preds = %do.cond62
  br label %if.end64

if.end64:                                         ; preds = %do.end63, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #17, !dbg !2149
  br label %do.cond65, !dbg !2150

do.cond65:                                        ; preds = %if.end64
  br label %do.end66, !dbg !2150

do.end66:                                         ; preds = %do.cond65
  br label %if.end69, !dbg !2174

if.else67:                                        ; preds = %if.end20
  %28 = load ptr, ptr %s.addr, align 8, !dbg !2175
  %cache_free_slots68 = getelementptr inbounds %struct.sidtab, ptr %28, i32 0, i32 5, !dbg !2177
  %29 = load i32, ptr %cache_free_slots68, align 8, !dbg !2178
  %dec = add i32 %29, -1, !dbg !2178
  store i32 %dec, ptr %cache_free_slots68, align 8, !dbg !2178
  br label %if.end69

if.end69:                                         ; preds = %if.else67, %do.end66
  %30 = load ptr, ptr %entry.addr, align 8, !dbg !2179
  %31 = load ptr, ptr %cache, align 8, !dbg !2180
  %parent70 = getelementptr inbounds %struct.sidtab_str_cache, ptr %31, i32 0, i32 2, !dbg !2181
  store ptr %30, ptr %parent70, align 8, !dbg !2182
  %32 = load i32, ptr %str_len.addr, align 4, !dbg !2183
  %33 = load ptr, ptr %cache, align 8, !dbg !2184
  %len71 = getelementptr inbounds %struct.sidtab_str_cache, ptr %33, i32 0, i32 3, !dbg !2185
  store i32 %32, ptr %len71, align 8, !dbg !2186
  %34 = load ptr, ptr %cache, align 8, !dbg !2187
  %str72 = getelementptr inbounds %struct.sidtab_str_cache, ptr %34, i32 0, i32 4, !dbg !2188
  %arraydecay = getelementptr inbounds [0 x i8], ptr %str72, i64 0, i64 0, !dbg !2189
  %35 = load ptr, ptr %str.addr, align 8, !dbg !2190
  %36 = load i32, ptr %str_len.addr, align 4, !dbg !2191
  %conv73 = zext i32 %36 to i64, !dbg !2191
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay, ptr align 1 %35, i64 %conv73, i1 false), !dbg !2189
  %37 = load ptr, ptr %cache, align 8, !dbg !2192
  %lru_member74 = getelementptr inbounds %struct.sidtab_str_cache, ptr %37, i32 0, i32 1, !dbg !2193
  %38 = load ptr, ptr %s.addr, align 8, !dbg !2194
  %cache_lru_list75 = getelementptr inbounds %struct.sidtab, ptr %38, i32 0, i32 6, !dbg !2195
  call void @list_add(ptr noundef %lru_member74, ptr noundef %cache_lru_list75) #18, !dbg !2196
  br label %do.body76, !dbg !2197

do.body76:                                        ; preds = %if.end69
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v77) #17, !dbg !2198
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v77, metadata !2093, metadata !DIExpression()), !dbg !2198
  %39 = load ptr, ptr %cache, align 8, !dbg !2198
  %40 = ptrtoint ptr %39 to i64, !dbg !2198
  store i64 %40, ptr %_r_a_p__v77, align 8, !dbg !2198
  br i1 false, label %land.lhs.true, label %if.else91, !dbg !2199

land.lhs.true:                                    ; preds = %do.body76
  %41 = load i64, ptr %_r_a_p__v77, align 8, !dbg !2199
  %cmp78 = icmp eq i64 %41, 0, !dbg !2199
  br i1 %cmp78, label %if.then80, label %if.else91, !dbg !2198

if.then80:                                        ; preds = %land.lhs.true
  br label %do.body81, !dbg !2199

do.body81:                                        ; preds = %if.then80
  br label %do.body82, !dbg !2201

do.body82:                                        ; preds = %do.body81
  br label %do.cond83, !dbg !2203

do.cond83:                                        ; preds = %do.body82
  br label %do.end84, !dbg !2203

do.end84:                                         ; preds = %do.cond83
  br label %do.body85, !dbg !2201

do.body85:                                        ; preds = %do.end84
  %42 = load i64, ptr %_r_a_p__v77, align 8, !dbg !2205
  %43 = inttoptr i64 %42 to ptr, !dbg !2205
  %44 = load ptr, ptr %entry.addr, align 8, !dbg !2205
  %cache86 = getelementptr inbounds %struct.sidtab_entry, ptr %44, i32 0, i32 3, !dbg !2205
  store volatile ptr %43, ptr %cache86, align 8, !dbg !2205
  br label %do.cond87, !dbg !2205

do.cond87:                                        ; preds = %do.body85
  br label %do.end88, !dbg !2205

do.end88:                                         ; preds = %do.cond87
  br label %do.cond89, !dbg !2201

do.cond89:                                        ; preds = %do.end88
  br label %do.end90, !dbg !2201

do.end90:                                         ; preds = %do.cond89
  br label %if.end114, !dbg !2201

if.else91:                                        ; preds = %land.lhs.true, %do.body76
  br label %do.body92, !dbg !2199

do.body92:                                        ; preds = %if.else91
  br label %do.body93, !dbg !2207

do.body93:                                        ; preds = %do.body92
  br label %do.cond94, !dbg !2209

do.cond94:                                        ; preds = %do.body93
  br label %do.end95, !dbg !2209

do.end95:                                         ; preds = %do.cond94
  br label %do.body96, !dbg !2207

do.body96:                                        ; preds = %do.end95
  br label %do.body97, !dbg !2211

do.body97:                                        ; preds = %do.body96
  br label %do.cond98, !dbg !2213

do.cond98:                                        ; preds = %do.body97
  br label %do.end99, !dbg !2213

do.end99:                                         ; preds = %do.cond98
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !2211, !srcloc !2215
  br label %do.body100, !dbg !2211

do.body100:                                       ; preds = %do.end99
  br label %do.body101, !dbg !2216

do.body101:                                       ; preds = %do.body100
  br label %do.cond102, !dbg !2218

do.cond102:                                       ; preds = %do.body101
  br label %do.end103, !dbg !2218

do.end103:                                        ; preds = %do.cond102
  br label %do.body104, !dbg !2216

do.body104:                                       ; preds = %do.end103
  %45 = load i64, ptr %_r_a_p__v77, align 8, !dbg !2220
  %46 = inttoptr i64 %45 to ptr, !dbg !2220
  %47 = load ptr, ptr %entry.addr, align 8, !dbg !2220
  %cache105 = getelementptr inbounds %struct.sidtab_entry, ptr %47, i32 0, i32 3, !dbg !2220
  store volatile ptr %46, ptr %cache105, align 8, !dbg !2220
  br label %do.cond106, !dbg !2220

do.cond106:                                       ; preds = %do.body104
  br label %do.end107, !dbg !2220

do.end107:                                        ; preds = %do.cond106
  br label %do.cond108, !dbg !2216

do.cond108:                                       ; preds = %do.end107
  br label %do.end109, !dbg !2216

do.end109:                                        ; preds = %do.cond108
  br label %do.cond110, !dbg !2211

do.cond110:                                       ; preds = %do.end109
  br label %do.end111, !dbg !2211

do.end111:                                        ; preds = %do.cond110
  br label %do.cond112, !dbg !2207

do.cond112:                                       ; preds = %do.end111
  br label %do.end113, !dbg !2207

do.end113:                                        ; preds = %do.cond112
  br label %if.end114

if.end114:                                        ; preds = %do.end113, %do.end90
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v77) #17, !dbg !2197
  br label %do.cond115, !dbg !2198

do.cond115:                                       ; preds = %if.end114
  br label %do.end116, !dbg !2198

do.end116:                                        ; preds = %do.cond115
  br label %out_unlock, !dbg !2198

out_unlock:                                       ; preds = %do.end116, %if.then19, %if.then12
  call void @llvm.dbg.label(metadata !2095), !dbg !2222
  %48 = load ptr, ptr %s.addr, align 8, !dbg !2223
  %cache_lock117 = getelementptr inbounds %struct.sidtab, ptr %48, i32 0, i32 7, !dbg !2224
  %49 = load i64, ptr %flags, align 8, !dbg !2225
  call void @spin_unlock_irqrestore(ptr noundef %cache_lock117, i64 noundef %49) #18, !dbg !2226
  br label %do.body118, !dbg !2227

do.body118:                                       ; preds = %out_unlock
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p) #17, !dbg !2228
  call void @llvm.dbg.declare(metadata ptr %___p, metadata !2096, metadata !DIExpression()), !dbg !2228
  %50 = load ptr, ptr %victim, align 8, !dbg !2228
  store ptr %50, ptr %___p, align 8, !dbg !2228
  %51 = load ptr, ptr %___p, align 8, !dbg !2229
  %tobool119 = icmp ne ptr %51, null, !dbg !2229
  br i1 %tobool119, label %if.then120, label %if.end124, !dbg !2228

if.then120:                                       ; preds = %do.body118
  br label %do.body121, !dbg !2231

do.body121:                                       ; preds = %if.then120
  br label %do.cond122, !dbg !2233

do.cond122:                                       ; preds = %do.body121
  br label %do.end123, !dbg !2233

do.end123:                                        ; preds = %do.cond122
  %52 = load ptr, ptr %___p, align 8, !dbg !2231
  %rcu_member = getelementptr inbounds %struct.sidtab_str_cache, ptr %52, i32 0, i32 0, !dbg !2231
  %53 = load ptr, ptr %___p, align 8, !dbg !2231
  call void @kvfree_call_rcu(ptr noundef %rcu_member, ptr noundef %53) #18, !dbg !2231
  br label %if.end124, !dbg !2231

if.end124:                                        ; preds = %do.end123, %do.body118
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p) #17, !dbg !2227
  br label %do.cond125, !dbg !2228

do.cond125:                                       ; preds = %if.end124
  br label %do.end126, !dbg !2228

do.end126:                                        ; preds = %do.cond125
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2235
  br label %cleanup, !dbg !2235

cleanup:                                          ; preds = %do.end126, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !2235
  call void @llvm.lifetime.end.p0(i64 8, ptr %victim) #17, !dbg !2235
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache) #17, !dbg !2235
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2235

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_move(ptr noundef %list, ptr noundef %head) #4 align 16 !dbg !2236 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2240, metadata !DIExpression()), !dbg !2242
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2241, metadata !DIExpression()), !dbg !2243
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2244
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !2245
  %1 = load ptr, ptr %list.addr, align 8, !dbg !2246
  %2 = load ptr, ptr %head.addr, align 8, !dbg !2247
  call void @list_add(ptr noundef %1, ptr noundef %2) #18, !dbg !2248
  ret void, !dbg !2249
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !2250 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2254, metadata !DIExpression()), !dbg !2259
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2255, metadata !DIExpression()), !dbg !2260
  %0 = load i64, ptr %size.addr, align 8, !dbg !2261
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2262
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2263

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2264
  %tobool = icmp ne i64 %2, 0, !dbg !2264
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2265

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !2266
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2256, metadata !DIExpression()), !dbg !2267
  %3 = load i64, ptr %size.addr, align 8, !dbg !2268
  %cmp = icmp ugt i64 %3, 8192, !dbg !2270
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2271

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2272
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2273
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !2274
  store ptr %call, ptr %retval, align 8, !dbg !2275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2275

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2276
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !2276
  store i32 %call2, ptr %index, align 4, !dbg !2277
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2278
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2279
  %9 = ptrtoint ptr %8 to i64, !dbg !2279
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !2280
  %idxprom = zext i32 %call3 to i64, !dbg !2281
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2281
  %10 = load i32, ptr %index, align 4, !dbg !2282
  %idxprom4 = zext i32 %10 to i64, !dbg !2281
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2281
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2281
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2283
  %13 = load i64, ptr %size.addr, align 8, !dbg !2284
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !2285
  store ptr %call6, ptr %retval, align 8, !dbg !2286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2286

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !2287
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2288
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2289
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !2290
  store ptr %call8, ptr %retval, align 8, !dbg !2291
  br label %return, !dbg !2291

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2292
  ret ptr %16, !dbg !2292
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #4 align 16 !dbg !2293 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !2298, metadata !DIExpression()), !dbg !2301
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !2299, metadata !DIExpression()), !dbg !2302
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #17, !dbg !2303
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !2300, metadata !DIExpression()), !dbg !2304
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !2305
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !2305
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !2305
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !2305
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !2305
  store i64 %4, ptr %bytes, align 8, !dbg !2305
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !2305
  br i1 %call, label %if.then, label %if.end, !dbg !2307

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !2308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2308

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !2309
  store i64 %5, ptr %retval, align 8, !dbg !2310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2310

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #17, !dbg !2311
  %6 = load i64, ptr %retval, align 8, !dbg !2311
  ret i64 %6, !dbg !2311
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #4 align 16 !dbg !2312 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !2314, metadata !DIExpression()), !dbg !2317
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !2315, metadata !DIExpression()), !dbg !2318
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #17, !dbg !2319
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !2316, metadata !DIExpression()), !dbg !2320
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !2321
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !2321
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !2321
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !2321
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !2321
  store i64 %4, ptr %bytes, align 8, !dbg !2321
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #18, !dbg !2321
  br i1 %call, label %if.then, label %if.end, !dbg !2323

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !2324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2324

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !2325
  store i64 %5, ptr %retval, align 8, !dbg !2326
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2326

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #17, !dbg !2327
  %6 = load i64, ptr %retval, align 8, !dbg !2327
  ret i64 %6, !dbg !2327
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !2328 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2330, metadata !DIExpression()), !dbg !2331
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2332
  call void @__list_del_entry(ptr noundef %0) #18, !dbg !2333
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2334
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2335
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !2336
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !2337
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !2338
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !2339
  ret void, !dbg !2340
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !2341 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2343, metadata !DIExpression()), !dbg !2345
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2344, metadata !DIExpression()), !dbg !2346
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2347
  %1 = load ptr, ptr %head.addr, align 8, !dbg !2348
  %2 = load ptr, ptr %head.addr, align 8, !dbg !2349
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !2350
  %3 = load ptr, ptr %next, align 8, !dbg !2350
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #18, !dbg !2351
  ret void, !dbg !2352
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2353 dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sidtab_sid2str_get(ptr noundef %s, ptr noundef %entry1, ptr noundef %out, ptr noundef %out_len) #0 align 16 !dbg !2357 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %entry.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %out_len.addr = alloca ptr, align 8
  %cache = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID_rcu576 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2361, metadata !DIExpression()), !dbg !2369
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2362, metadata !DIExpression()), !dbg !2370
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !2363, metadata !DIExpression()), !dbg !2371
  store ptr %out_len, ptr %out_len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out_len.addr, metadata !2364, metadata !DIExpression()), !dbg !2372
  call void @llvm.lifetime.start.p0(i64 8, ptr %cache) #17, !dbg !2373
  call void @llvm.dbg.declare(metadata ptr %cache, metadata !2365, metadata !DIExpression()), !dbg !2374
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #17, !dbg !2375
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !2366, metadata !DIExpression()), !dbg !2376
  store i32 0, ptr %rc, align 4, !dbg !2376
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2377
  %context = getelementptr inbounds %struct.sidtab_entry, ptr %0, i32 0, i32 2, !dbg !2379
  %len = getelementptr inbounds %struct.context, ptr %context, i32 0, i32 3, !dbg !2380
  %1 = load i32, ptr %len, align 4, !dbg !2380
  %tobool = icmp ne i32 %1, 0, !dbg !2377
  br i1 %tobool, label %if.then, label %if.end, !dbg !2381

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !2382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2382

if.end:                                           ; preds = %entry
  call void @rcu_read_lock() #18, !dbg !2383
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu576) #17, !dbg !2384
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu576, metadata !2367, metadata !DIExpression()), !dbg !2384
  br label %do.body, !dbg !2385

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !2387

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2387

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !2385
  %cache2 = getelementptr inbounds %struct.sidtab_entry, ptr %2, i32 0, i32 3, !dbg !2385
  %3 = load volatile ptr, ptr %cache2, align 8, !dbg !2385
  store ptr %3, ptr %tmp, align 8, !dbg !2387
  %4 = load ptr, ptr %tmp, align 8, !dbg !2385
  store ptr %4, ptr %__UNIQUE_ID_rcu576, align 8, !dbg !2384
  br label %do.body3, !dbg !2384

do.body3:                                         ; preds = %do.end
  br label %do.cond4, !dbg !2389

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !2389

do.end5:                                          ; preds = %do.cond4
  %5 = load ptr, ptr %__UNIQUE_ID_rcu576, align 8, !dbg !2384
  store ptr %5, ptr %tmp6, align 8, !dbg !2389
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu576) #17, !dbg !2391
  %6 = load ptr, ptr %tmp6, align 8, !dbg !2384
  store ptr %6, ptr %cache, align 8, !dbg !2392
  %7 = load ptr, ptr %cache, align 8, !dbg !2393
  %tobool7 = icmp ne ptr %7, null, !dbg !2393
  br i1 %tobool7, label %if.else, label %if.then8, !dbg !2395

if.then8:                                         ; preds = %do.end5
  store i32 -2, ptr %rc, align 4, !dbg !2396
  br label %if.end17, !dbg !2398

if.else:                                          ; preds = %do.end5
  %8 = load ptr, ptr %cache, align 8, !dbg !2399
  %len9 = getelementptr inbounds %struct.sidtab_str_cache, ptr %8, i32 0, i32 3, !dbg !2401
  %9 = load i32, ptr %len9, align 8, !dbg !2401
  %10 = load ptr, ptr %out_len.addr, align 8, !dbg !2402
  store i32 %9, ptr %10, align 4, !dbg !2403
  %11 = load ptr, ptr %out.addr, align 8, !dbg !2404
  %tobool10 = icmp ne ptr %11, null, !dbg !2404
  br i1 %tobool10, label %if.then11, label %if.end16, !dbg !2406

if.then11:                                        ; preds = %if.else
  %12 = load ptr, ptr %cache, align 8, !dbg !2407
  %str = getelementptr inbounds %struct.sidtab_str_cache, ptr %12, i32 0, i32 4, !dbg !2409
  %arraydecay = getelementptr inbounds [0 x i8], ptr %str, i64 0, i64 0, !dbg !2407
  %13 = load ptr, ptr %cache, align 8, !dbg !2410
  %len12 = getelementptr inbounds %struct.sidtab_str_cache, ptr %13, i32 0, i32 3, !dbg !2411
  %14 = load i32, ptr %len12, align 8, !dbg !2411
  %conv = zext i32 %14 to i64, !dbg !2410
  %call = call ptr @kmemdup(ptr noundef %arraydecay, i64 noundef %conv, i32 noundef 2080) #22, !dbg !2412
  %15 = load ptr, ptr %out.addr, align 8, !dbg !2413
  store ptr %call, ptr %15, align 8, !dbg !2414
  %16 = load ptr, ptr %out.addr, align 8, !dbg !2415
  %17 = load ptr, ptr %16, align 8, !dbg !2417
  %tobool13 = icmp ne ptr %17, null, !dbg !2417
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !2418

if.then14:                                        ; preds = %if.then11
  store i32 -12, ptr %rc, align 4, !dbg !2419
  br label %if.end15, !dbg !2420

if.end15:                                         ; preds = %if.then14, %if.then11
  br label %if.end16, !dbg !2421

if.end16:                                         ; preds = %if.end15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then8
  call void @rcu_read_unlock() #18, !dbg !2422
  %18 = load i32, ptr %rc, align 4, !dbg !2423
  %tobool18 = icmp ne i32 %18, 0, !dbg !2423
  br i1 %tobool18, label %if.end21, label %land.lhs.true, !dbg !2425

land.lhs.true:                                    ; preds = %if.end17
  %19 = load ptr, ptr %out.addr, align 8, !dbg !2426
  %tobool19 = icmp ne ptr %19, null, !dbg !2426
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !2427

if.then20:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %s.addr, align 8, !dbg !2428
  %21 = load ptr, ptr %entry.addr, align 8, !dbg !2429
  %22 = load ptr, ptr %out.addr, align 8, !dbg !2430
  %23 = load ptr, ptr %22, align 8, !dbg !2431
  %24 = load ptr, ptr %out_len.addr, align 8, !dbg !2432
  %25 = load i32, ptr %24, align 4, !dbg !2433
  call void @sidtab_sid2str_put(ptr noundef %20, ptr noundef %21, ptr noundef %23, i32 noundef %25) #18, !dbg !2434
  br label %if.end21, !dbg !2434

if.end21:                                         ; preds = %if.then20, %land.lhs.true, %if.end17
  %26 = load i32, ptr %rc, align 4, !dbg !2435
  store i32 %26, ptr %retval, align 4, !dbg !2436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2436

cleanup:                                          ; preds = %if.end21, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #17, !dbg !2437
  call void @llvm.lifetime.end.p0(i64 8, ptr %cache) #17, !dbg !2437
  %27 = load i32, ptr %retval, align 4, !dbg !2437
  ret i32 %27, !dbg !2437
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !2438 dso_local ptr @kmemdup(ptr noundef, i64 noundef, i32 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2444 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mls_context_cpy(ptr noundef %dst, ptr noundef %src) #4 align 16 !dbg !2447 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !2449, metadata !DIExpression()), !dbg !2453
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !2450, metadata !DIExpression()), !dbg !2454
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #17, !dbg !2455
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !2451, metadata !DIExpression()), !dbg !2456
  %0 = load ptr, ptr %src.addr, align 8, !dbg !2457
  %range = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 4, !dbg !2458
  %level = getelementptr inbounds %struct.mls_range, ptr %range, i32 0, i32 0, !dbg !2459
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 0, !dbg !2457
  %sens = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 0, !dbg !2460
  %1 = load i32, ptr %sens, align 8, !dbg !2460
  %2 = load ptr, ptr %dst.addr, align 8, !dbg !2461
  %range1 = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 4, !dbg !2462
  %level2 = getelementptr inbounds %struct.mls_range, ptr %range1, i32 0, i32 0, !dbg !2463
  %arrayidx3 = getelementptr [2 x %struct.mls_level], ptr %level2, i64 0, i64 0, !dbg !2461
  %sens4 = getelementptr inbounds %struct.mls_level, ptr %arrayidx3, i32 0, i32 0, !dbg !2464
  store i32 %1, ptr %sens4, align 8, !dbg !2465
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !2466
  %range5 = getelementptr inbounds %struct.context, ptr %3, i32 0, i32 4, !dbg !2467
  %level6 = getelementptr inbounds %struct.mls_range, ptr %range5, i32 0, i32 0, !dbg !2468
  %arrayidx7 = getelementptr [2 x %struct.mls_level], ptr %level6, i64 0, i64 0, !dbg !2466
  %cat = getelementptr inbounds %struct.mls_level, ptr %arrayidx7, i32 0, i32 1, !dbg !2469
  %4 = load ptr, ptr %src.addr, align 8, !dbg !2470
  %range8 = getelementptr inbounds %struct.context, ptr %4, i32 0, i32 4, !dbg !2471
  %level9 = getelementptr inbounds %struct.mls_range, ptr %range8, i32 0, i32 0, !dbg !2472
  %arrayidx10 = getelementptr [2 x %struct.mls_level], ptr %level9, i64 0, i64 0, !dbg !2470
  %cat11 = getelementptr inbounds %struct.mls_level, ptr %arrayidx10, i32 0, i32 1, !dbg !2473
  %call = call i32 @ebitmap_cpy(ptr noundef %cat, ptr noundef %cat11) #18, !dbg !2474
  store i32 %call, ptr %rc, align 4, !dbg !2475
  %5 = load i32, ptr %rc, align 4, !dbg !2476
  %tobool = icmp ne i32 %5, 0, !dbg !2476
  br i1 %tobool, label %if.then, label %if.end, !dbg !2478

if.then:                                          ; preds = %entry
  br label %out, !dbg !2479

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %src.addr, align 8, !dbg !2480
  %range12 = getelementptr inbounds %struct.context, ptr %6, i32 0, i32 4, !dbg !2481
  %level13 = getelementptr inbounds %struct.mls_range, ptr %range12, i32 0, i32 0, !dbg !2482
  %arrayidx14 = getelementptr [2 x %struct.mls_level], ptr %level13, i64 0, i64 1, !dbg !2480
  %sens15 = getelementptr inbounds %struct.mls_level, ptr %arrayidx14, i32 0, i32 0, !dbg !2483
  %7 = load i32, ptr %sens15, align 8, !dbg !2483
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !2484
  %range16 = getelementptr inbounds %struct.context, ptr %8, i32 0, i32 4, !dbg !2485
  %level17 = getelementptr inbounds %struct.mls_range, ptr %range16, i32 0, i32 0, !dbg !2486
  %arrayidx18 = getelementptr [2 x %struct.mls_level], ptr %level17, i64 0, i64 1, !dbg !2484
  %sens19 = getelementptr inbounds %struct.mls_level, ptr %arrayidx18, i32 0, i32 0, !dbg !2487
  store i32 %7, ptr %sens19, align 8, !dbg !2488
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !2489
  %range20 = getelementptr inbounds %struct.context, ptr %9, i32 0, i32 4, !dbg !2490
  %level21 = getelementptr inbounds %struct.mls_range, ptr %range20, i32 0, i32 0, !dbg !2491
  %arrayidx22 = getelementptr [2 x %struct.mls_level], ptr %level21, i64 0, i64 1, !dbg !2489
  %cat23 = getelementptr inbounds %struct.mls_level, ptr %arrayidx22, i32 0, i32 1, !dbg !2492
  %10 = load ptr, ptr %src.addr, align 8, !dbg !2493
  %range24 = getelementptr inbounds %struct.context, ptr %10, i32 0, i32 4, !dbg !2494
  %level25 = getelementptr inbounds %struct.mls_range, ptr %range24, i32 0, i32 0, !dbg !2495
  %arrayidx26 = getelementptr [2 x %struct.mls_level], ptr %level25, i64 0, i64 1, !dbg !2493
  %cat27 = getelementptr inbounds %struct.mls_level, ptr %arrayidx26, i32 0, i32 1, !dbg !2496
  %call28 = call i32 @ebitmap_cpy(ptr noundef %cat23, ptr noundef %cat27) #18, !dbg !2497
  store i32 %call28, ptr %rc, align 4, !dbg !2498
  %11 = load i32, ptr %rc, align 4, !dbg !2499
  %tobool29 = icmp ne i32 %11, 0, !dbg !2499
  br i1 %tobool29, label %if.then30, label %if.end35, !dbg !2501

if.then30:                                        ; preds = %if.end
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !2502
  %range31 = getelementptr inbounds %struct.context, ptr %12, i32 0, i32 4, !dbg !2503
  %level32 = getelementptr inbounds %struct.mls_range, ptr %range31, i32 0, i32 0, !dbg !2504
  %arrayidx33 = getelementptr [2 x %struct.mls_level], ptr %level32, i64 0, i64 0, !dbg !2502
  %cat34 = getelementptr inbounds %struct.mls_level, ptr %arrayidx33, i32 0, i32 1, !dbg !2505
  call void @ebitmap_destroy(ptr noundef %cat34) #18, !dbg !2506
  br label %if.end35, !dbg !2506

if.end35:                                         ; preds = %if.then30, %if.end
  br label %out, !dbg !2499

out:                                              ; preds = %if.end35, %if.then
  call void @llvm.dbg.label(metadata !2452), !dbg !2507
  %13 = load i32, ptr %rc, align 4, !dbg !2508
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #17, !dbg !2509
  ret i32 %13, !dbg !2510
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2511 dso_local void @kfree(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2514 dso_local i32 @ebitmap_cpy(ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2519 dso_local void @ebitmap_destroy(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @context_cmp(ptr noundef %c1, ptr noundef %c2) #4 align 16 !dbg !2522 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca ptr, align 8
  %c2.addr = alloca ptr, align 8
  store ptr %c1, ptr %c1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c1.addr, metadata !2526, metadata !DIExpression()), !dbg !2528
  store ptr %c2, ptr %c2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c2.addr, metadata !2527, metadata !DIExpression()), !dbg !2529
  %0 = load ptr, ptr %c1.addr, align 8, !dbg !2530
  %len = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 3, !dbg !2532
  %1 = load i32, ptr %len, align 4, !dbg !2532
  %tobool = icmp ne i32 %1, 0, !dbg !2530
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2533

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %c2.addr, align 8, !dbg !2534
  %len1 = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 3, !dbg !2535
  %3 = load i32, ptr %len1, align 4, !dbg !2535
  %tobool2 = icmp ne i32 %3, 0, !dbg !2534
  br i1 %tobool2, label %if.then, label %if.end, !dbg !2536

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %c1.addr, align 8, !dbg !2537
  %len3 = getelementptr inbounds %struct.context, ptr %4, i32 0, i32 3, !dbg !2538
  %5 = load i32, ptr %len3, align 4, !dbg !2538
  %6 = load ptr, ptr %c2.addr, align 8, !dbg !2539
  %len4 = getelementptr inbounds %struct.context, ptr %6, i32 0, i32 3, !dbg !2540
  %7 = load i32, ptr %len4, align 4, !dbg !2540
  %cmp = icmp eq i32 %5, %7, !dbg !2541
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2542

land.rhs:                                         ; preds = %if.then
  %8 = load ptr, ptr %c1.addr, align 8, !dbg !2543
  %str = getelementptr inbounds %struct.context, ptr %8, i32 0, i32 5, !dbg !2544
  %9 = load ptr, ptr %str, align 8, !dbg !2544
  %10 = load ptr, ptr %c2.addr, align 8, !dbg !2545
  %str5 = getelementptr inbounds %struct.context, ptr %10, i32 0, i32 5, !dbg !2546
  %11 = load ptr, ptr %str5, align 8, !dbg !2546
  %call = call i32 @strcmp(ptr noundef %9, ptr noundef %11) #18, !dbg !2547
  %tobool6 = icmp ne i32 %call, 0, !dbg !2548
  %lnot = xor i1 %tobool6, true, !dbg !2548
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %12 = phi i1 [ false, %if.then ], [ %lnot, %land.rhs ], !dbg !2549
  %land.ext = zext i1 %12 to i32, !dbg !2542
  store i32 %land.ext, ptr %retval, align 4, !dbg !2550
  br label %return, !dbg !2550

if.end:                                           ; preds = %land.lhs.true, %entry
  %13 = load ptr, ptr %c1.addr, align 8, !dbg !2551
  %len7 = getelementptr inbounds %struct.context, ptr %13, i32 0, i32 3, !dbg !2553
  %14 = load i32, ptr %len7, align 4, !dbg !2553
  %tobool8 = icmp ne i32 %14, 0, !dbg !2551
  br i1 %tobool8, label %if.then11, label %lor.lhs.false, !dbg !2554

lor.lhs.false:                                    ; preds = %if.end
  %15 = load ptr, ptr %c2.addr, align 8, !dbg !2555
  %len9 = getelementptr inbounds %struct.context, ptr %15, i32 0, i32 3, !dbg !2556
  %16 = load i32, ptr %len9, align 4, !dbg !2556
  %tobool10 = icmp ne i32 %16, 0, !dbg !2555
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2557

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4, !dbg !2558
  br label %return, !dbg !2558

if.end12:                                         ; preds = %lor.lhs.false
  %17 = load ptr, ptr %c1.addr, align 8, !dbg !2559
  %user = getelementptr inbounds %struct.context, ptr %17, i32 0, i32 0, !dbg !2560
  %18 = load i32, ptr %user, align 8, !dbg !2560
  %19 = load ptr, ptr %c2.addr, align 8, !dbg !2561
  %user13 = getelementptr inbounds %struct.context, ptr %19, i32 0, i32 0, !dbg !2562
  %20 = load i32, ptr %user13, align 8, !dbg !2562
  %cmp14 = icmp eq i32 %18, %20, !dbg !2563
  br i1 %cmp14, label %land.lhs.true15, label %land.end24, !dbg !2564

land.lhs.true15:                                  ; preds = %if.end12
  %21 = load ptr, ptr %c1.addr, align 8, !dbg !2565
  %role = getelementptr inbounds %struct.context, ptr %21, i32 0, i32 1, !dbg !2566
  %22 = load i32, ptr %role, align 4, !dbg !2566
  %23 = load ptr, ptr %c2.addr, align 8, !dbg !2567
  %role16 = getelementptr inbounds %struct.context, ptr %23, i32 0, i32 1, !dbg !2568
  %24 = load i32, ptr %role16, align 4, !dbg !2568
  %cmp17 = icmp eq i32 %22, %24, !dbg !2569
  br i1 %cmp17, label %land.lhs.true18, label %land.end24, !dbg !2570

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %25 = load ptr, ptr %c1.addr, align 8, !dbg !2571
  %type = getelementptr inbounds %struct.context, ptr %25, i32 0, i32 2, !dbg !2572
  %26 = load i32, ptr %type, align 8, !dbg !2572
  %27 = load ptr, ptr %c2.addr, align 8, !dbg !2573
  %type19 = getelementptr inbounds %struct.context, ptr %27, i32 0, i32 2, !dbg !2574
  %28 = load i32, ptr %type19, align 8, !dbg !2574
  %cmp20 = icmp eq i32 %26, %28, !dbg !2575
  br i1 %cmp20, label %land.rhs21, label %land.end24, !dbg !2576

land.rhs21:                                       ; preds = %land.lhs.true18
  %29 = load ptr, ptr %c1.addr, align 8, !dbg !2577
  %30 = load ptr, ptr %c2.addr, align 8, !dbg !2578
  %call22 = call i32 @mls_context_cmp(ptr noundef %29, ptr noundef %30) #18, !dbg !2579
  %tobool23 = icmp ne i32 %call22, 0, !dbg !2576
  br label %land.end24

land.end24:                                       ; preds = %land.rhs21, %land.lhs.true18, %land.lhs.true15, %if.end12
  %31 = phi i1 [ false, %land.lhs.true18 ], [ false, %land.lhs.true15 ], [ false, %if.end12 ], [ %tobool23, %land.rhs21 ], !dbg !2580
  %land.ext25 = zext i1 %31 to i32, !dbg !2576
  store i32 %land.ext25, ptr %retval, align 4, !dbg !2581
  br label %return, !dbg !2581

return:                                           ; preds = %land.end24, %if.then11, %land.end
  %32 = load i32, ptr %retval, align 4, !dbg !2582
  ret i32 %32, !dbg !2582
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2583 dso_local i32 @strcmp(ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mls_context_cmp(ptr noundef %c1, ptr noundef %c2) #4 align 16 !dbg !2586 {
entry:
  %c1.addr = alloca ptr, align 8
  %c2.addr = alloca ptr, align 8
  store ptr %c1, ptr %c1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c1.addr, metadata !2588, metadata !DIExpression()), !dbg !2590
  store ptr %c2, ptr %c2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c2.addr, metadata !2589, metadata !DIExpression()), !dbg !2591
  %0 = load ptr, ptr %c1.addr, align 8, !dbg !2592
  %range = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 4, !dbg !2593
  %level = getelementptr inbounds %struct.mls_range, ptr %range, i32 0, i32 0, !dbg !2594
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 0, !dbg !2592
  %sens = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 0, !dbg !2595
  %1 = load i32, ptr %sens, align 8, !dbg !2595
  %2 = load ptr, ptr %c2.addr, align 8, !dbg !2596
  %range1 = getelementptr inbounds %struct.context, ptr %2, i32 0, i32 4, !dbg !2597
  %level2 = getelementptr inbounds %struct.mls_range, ptr %range1, i32 0, i32 0, !dbg !2598
  %arrayidx3 = getelementptr [2 x %struct.mls_level], ptr %level2, i64 0, i64 0, !dbg !2596
  %sens4 = getelementptr inbounds %struct.mls_level, ptr %arrayidx3, i32 0, i32 0, !dbg !2599
  %3 = load i32, ptr %sens4, align 8, !dbg !2599
  %cmp = icmp eq i32 %1, %3, !dbg !2600
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !2601

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %c1.addr, align 8, !dbg !2602
  %range5 = getelementptr inbounds %struct.context, ptr %4, i32 0, i32 4, !dbg !2603
  %level6 = getelementptr inbounds %struct.mls_range, ptr %range5, i32 0, i32 0, !dbg !2604
  %arrayidx7 = getelementptr [2 x %struct.mls_level], ptr %level6, i64 0, i64 0, !dbg !2602
  %cat = getelementptr inbounds %struct.mls_level, ptr %arrayidx7, i32 0, i32 1, !dbg !2605
  %5 = load ptr, ptr %c2.addr, align 8, !dbg !2606
  %range8 = getelementptr inbounds %struct.context, ptr %5, i32 0, i32 4, !dbg !2607
  %level9 = getelementptr inbounds %struct.mls_range, ptr %range8, i32 0, i32 0, !dbg !2608
  %arrayidx10 = getelementptr [2 x %struct.mls_level], ptr %level9, i64 0, i64 0, !dbg !2606
  %cat11 = getelementptr inbounds %struct.mls_level, ptr %arrayidx10, i32 0, i32 1, !dbg !2609
  %call = call i32 @ebitmap_cmp(ptr noundef %cat, ptr noundef %cat11) #18, !dbg !2610
  %tobool = icmp ne i32 %call, 0, !dbg !2610
  br i1 %tobool, label %land.lhs.true12, label %land.end, !dbg !2611

land.lhs.true12:                                  ; preds = %land.lhs.true
  %6 = load ptr, ptr %c1.addr, align 8, !dbg !2612
  %range13 = getelementptr inbounds %struct.context, ptr %6, i32 0, i32 4, !dbg !2613
  %level14 = getelementptr inbounds %struct.mls_range, ptr %range13, i32 0, i32 0, !dbg !2614
  %arrayidx15 = getelementptr [2 x %struct.mls_level], ptr %level14, i64 0, i64 1, !dbg !2612
  %sens16 = getelementptr inbounds %struct.mls_level, ptr %arrayidx15, i32 0, i32 0, !dbg !2615
  %7 = load i32, ptr %sens16, align 8, !dbg !2615
  %8 = load ptr, ptr %c2.addr, align 8, !dbg !2616
  %range17 = getelementptr inbounds %struct.context, ptr %8, i32 0, i32 4, !dbg !2617
  %level18 = getelementptr inbounds %struct.mls_range, ptr %range17, i32 0, i32 0, !dbg !2618
  %arrayidx19 = getelementptr [2 x %struct.mls_level], ptr %level18, i64 0, i64 1, !dbg !2616
  %sens20 = getelementptr inbounds %struct.mls_level, ptr %arrayidx19, i32 0, i32 0, !dbg !2619
  %9 = load i32, ptr %sens20, align 8, !dbg !2619
  %cmp21 = icmp eq i32 %7, %9, !dbg !2620
  br i1 %cmp21, label %land.rhs, label %land.end, !dbg !2621

land.rhs:                                         ; preds = %land.lhs.true12
  %10 = load ptr, ptr %c1.addr, align 8, !dbg !2622
  %range22 = getelementptr inbounds %struct.context, ptr %10, i32 0, i32 4, !dbg !2623
  %level23 = getelementptr inbounds %struct.mls_range, ptr %range22, i32 0, i32 0, !dbg !2624
  %arrayidx24 = getelementptr [2 x %struct.mls_level], ptr %level23, i64 0, i64 1, !dbg !2622
  %cat25 = getelementptr inbounds %struct.mls_level, ptr %arrayidx24, i32 0, i32 1, !dbg !2625
  %11 = load ptr, ptr %c2.addr, align 8, !dbg !2626
  %range26 = getelementptr inbounds %struct.context, ptr %11, i32 0, i32 4, !dbg !2627
  %level27 = getelementptr inbounds %struct.mls_range, ptr %range26, i32 0, i32 0, !dbg !2628
  %arrayidx28 = getelementptr [2 x %struct.mls_level], ptr %level27, i64 0, i64 1, !dbg !2626
  %cat29 = getelementptr inbounds %struct.mls_level, ptr %arrayidx28, i32 0, i32 1, !dbg !2629
  %call30 = call i32 @ebitmap_cmp(ptr noundef %cat25, ptr noundef %cat29) #18, !dbg !2630
  %tobool31 = icmp ne i32 %call30, 0, !dbg !2621
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true12, %land.lhs.true, %entry
  %12 = phi i1 [ false, %land.lhs.true12 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool31, %land.rhs ], !dbg !2631
  %land.ext = zext i1 %12 to i32, !dbg !2621
  ret i32 %land.ext, !dbg !2632
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2633 dso_local i32 @ebitmap_cmp(ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__hash_32_generic(i32 noundef %val) #4 align 16 !dbg !2636 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2638, metadata !DIExpression()), !dbg !2639
  %0 = load i32, ptr %val.addr, align 4, !dbg !2640
  %mul = mul i32 %0, 1640531527, !dbg !2641
  ret i32 %mul, !dbg !2642
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2643 dso_local void @__rcu_read_lock() #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2644 dso_local void @__rcu_read_unlock() #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sidtab_lookup(ptr noundef %s, i32 noundef %index) #0 align 16 !dbg !2645 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %___p1 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2647, metadata !DIExpression()), !dbg !2652
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !2648, metadata !DIExpression()), !dbg !2653
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #17, !dbg !2654
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2649, metadata !DIExpression()), !dbg !2655
  call void @llvm.lifetime.start.p0(i64 4, ptr %___p1) #17, !dbg !2656
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !2650, metadata !DIExpression()), !dbg !2656
  br label %do.body, !dbg !2657

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2659

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2659

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2657
  %count1 = getelementptr inbounds %struct.sidtab, ptr %0, i32 0, i32 1, !dbg !2657
  %1 = load volatile i32, ptr %count1, align 8, !dbg !2657
  store i32 %1, ptr %tmp, align 4, !dbg !2659
  %2 = load i32, ptr %tmp, align 4, !dbg !2657
  store i32 %2, ptr %___p1, align 4, !dbg !2656
  br label %do.body2, !dbg !2656

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !2661

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !2661

do.end4:                                          ; preds = %do.cond3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !2656, !srcloc !2663
  %3 = load i32, ptr %___p1, align 4, !dbg !2656
  store i32 %3, ptr %tmp5, align 4, !dbg !2656
  call void @llvm.lifetime.end.p0(i64 4, ptr %___p1) #17, !dbg !2664
  %4 = load i32, ptr %tmp5, align 4, !dbg !2656
  store i32 %4, ptr %count, align 4, !dbg !2655
  %5 = load i32, ptr %index.addr, align 4, !dbg !2665
  %6 = load i32, ptr %count, align 4, !dbg !2667
  %cmp = icmp uge i32 %5, %6, !dbg !2668
  br i1 %cmp, label %if.then, label %if.end, !dbg !2669

if.then:                                          ; preds = %do.end4
  store ptr null, ptr %retval, align 8, !dbg !2670
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2670

if.end:                                           ; preds = %do.end4
  %7 = load ptr, ptr %s.addr, align 8, !dbg !2671
  %8 = load i32, ptr %index.addr, align 4, !dbg !2672
  %call = call ptr @sidtab_do_lookup(ptr noundef %7, i32 noundef %8, i32 noundef 0) #18, !dbg !2673
  store ptr %call, ptr %retval, align 8, !dbg !2674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2674

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #17, !dbg !2675
  %9 = load ptr, ptr %retval, align 8, !dbg !2675
  ret ptr %9, !dbg !2675
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sidtab_lookup_initial(ptr noundef %s, i32 noundef %sid) #0 align 16 !dbg !2676 {
entry:
  %s.addr = alloca ptr, align 8
  %sid.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2678, metadata !DIExpression()), !dbg !2680
  store i32 %sid, ptr %sid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sid.addr, metadata !2679, metadata !DIExpression()), !dbg !2681
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2682
  %isids = getelementptr inbounds %struct.sidtab, ptr %0, i32 0, i32 8, !dbg !2683
  %1 = load i32, ptr %sid.addr, align 4, !dbg !2684
  %sub = sub i32 %1, 1, !dbg !2685
  %idxprom = zext i32 %sub to i64, !dbg !2682
  %arrayidx = getelementptr [27 x %struct.sidtab_isid_entry], ptr %isids, i64 0, i64 %idxprom, !dbg !2682
  %set = getelementptr inbounds %struct.sidtab_isid_entry, ptr %arrayidx, i32 0, i32 0, !dbg !2686
  %2 = load i32, ptr %set, align 8, !dbg !2686
  %tobool = icmp ne i32 %2, 0, !dbg !2682
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2682

cond.true:                                        ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !2687
  %isids1 = getelementptr inbounds %struct.sidtab, ptr %3, i32 0, i32 8, !dbg !2688
  %4 = load i32, ptr %sid.addr, align 4, !dbg !2689
  %sub2 = sub i32 %4, 1, !dbg !2690
  %idxprom3 = zext i32 %sub2 to i64, !dbg !2687
  %arrayidx4 = getelementptr [27 x %struct.sidtab_isid_entry], ptr %isids1, i64 0, i64 %idxprom3, !dbg !2687
  %entry5 = getelementptr inbounds %struct.sidtab_isid_entry, ptr %arrayidx4, i32 0, i32 1, !dbg !2691
  br label %cond.end, !dbg !2682

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2682

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %entry5, %cond.true ], [ null, %cond.false ], !dbg !2682
  ret ptr %cond, !dbg !2692
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sidtab_alloc_roots(ptr noundef %s, i32 noundef %level) #0 align 16 !dbg !2693 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %level.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2697, metadata !DIExpression()), !dbg !2700
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !2698, metadata !DIExpression()), !dbg !2701
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #17, !dbg !2702
  call void @llvm.dbg.declare(metadata ptr %l, metadata !2699, metadata !DIExpression()), !dbg !2703
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2704
  %roots = getelementptr inbounds %struct.sidtab, ptr %0, i32 0, i32 0, !dbg !2706
  %arrayidx = getelementptr [4 x %union.sidtab_entry_inner], ptr %roots, i64 0, i64 0, !dbg !2704
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !2707
  %tobool = icmp ne ptr %1, null, !dbg !2704
  br i1 %tobool, label %if.end7, label %if.then, !dbg !2708

if.then:                                          ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 4096, i32 noundef 2080) #20, !dbg !2709
  %2 = load ptr, ptr %s.addr, align 8, !dbg !2711
  %roots1 = getelementptr inbounds %struct.sidtab, ptr %2, i32 0, i32 0, !dbg !2712
  %arrayidx2 = getelementptr [4 x %union.sidtab_entry_inner], ptr %roots1, i64 0, i64 0, !dbg !2711
  store ptr %call, ptr %arrayidx2, align 8, !dbg !2713
  %3 = load ptr, ptr %s.addr, align 8, !dbg !2714
  %roots3 = getelementptr inbounds %struct.sidtab, ptr %3, i32 0, i32 0, !dbg !2716
  %arrayidx4 = getelementptr [4 x %union.sidtab_entry_inner], ptr %roots3, i64 0, i64 0, !dbg !2714
  %4 = load ptr, ptr %arrayidx4, align 8, !dbg !2717
  %tobool5 = icmp ne ptr %4, null, !dbg !2714
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !2718

if.then6:                                         ; preds = %if.then
  store i32 -12, ptr %retval, align 4, !dbg !2719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2719

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !2720

if.end7:                                          ; preds = %if.end, %entry
  store i32 1, ptr %l, align 4, !dbg !2721
  br label %for.cond, !dbg !2723

for.cond:                                         ; preds = %for.inc, %if.end7
  %5 = load i32, ptr %l, align 4, !dbg !2724
  %6 = load i32, ptr %level.addr, align 4, !dbg !2726
  %cmp = icmp ule i32 %5, %6, !dbg !2727
  br i1 %cmp, label %for.body, label %for.end, !dbg !2728

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %s.addr, align 8, !dbg !2729
  %roots8 = getelementptr inbounds %struct.sidtab, ptr %7, i32 0, i32 0, !dbg !2731
  %8 = load i32, ptr %l, align 4, !dbg !2732
  %idxprom = zext i32 %8 to i64, !dbg !2729
  %arrayidx9 = getelementptr [4 x %union.sidtab_entry_inner], ptr %roots8, i64 0, i64 %idxprom, !dbg !2729
  %9 = load ptr, ptr %arrayidx9, align 8, !dbg !2733
  %tobool10 = icmp ne ptr %9, null, !dbg !2729
  br i1 %tobool10, label %if.end29, label %if.then11, !dbg !2734

if.then11:                                        ; preds = %for.body
  %call12 = call noalias ptr @kzalloc(i64 noundef 4096, i32 noundef 2080) #20, !dbg !2735
  %10 = load ptr, ptr %s.addr, align 8, !dbg !2737
  %roots13 = getelementptr inbounds %struct.sidtab, ptr %10, i32 0, i32 0, !dbg !2738
  %11 = load i32, ptr %l, align 4, !dbg !2739
  %idxprom14 = zext i32 %11 to i64, !dbg !2737
  %arrayidx15 = getelementptr [4 x %union.sidtab_entry_inner], ptr %roots13, i64 0, i64 %idxprom14, !dbg !2737
  store ptr %call12, ptr %arrayidx15, align 8, !dbg !2740
  %12 = load ptr, ptr %s.addr, align 8, !dbg !2741
  %roots16 = getelementptr inbounds %struct.sidtab, ptr %12, i32 0, i32 0, !dbg !2743
  %13 = load i32, ptr %l, align 4, !dbg !2744
  %idxprom17 = zext i32 %13 to i64, !dbg !2741
  %arrayidx18 = getelementptr [4 x %union.sidtab_entry_inner], ptr %roots16, i64 0, i64 %idxprom17, !dbg !2741
  %14 = load ptr, ptr %arrayidx18, align 8, !dbg !2745
  %tobool19 = icmp ne ptr %14, null, !dbg !2741
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !2746

if.then20:                                        ; preds = %if.then11
  store i32 -12, ptr %retval, align 4, !dbg !2747
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2747

if.end21:                                         ; preds = %if.then11
  %15 = load ptr, ptr %s.addr, align 8, !dbg !2748
  %roots22 = getelementptr inbounds %struct.sidtab, ptr %15, i32 0, i32 0, !dbg !2749
  %16 = load i32, ptr %l, align 4, !dbg !2750
  %idxprom23 = zext i32 %16 to i64, !dbg !2748
  %arrayidx24 = getelementptr [4 x %union.sidtab_entry_inner], ptr %roots22, i64 0, i64 %idxprom23, !dbg !2748
  %17 = load ptr, ptr %arrayidx24, align 8, !dbg !2751
  %entries = getelementptr inbounds %struct.sidtab_node_inner, ptr %17, i32 0, i32 0, !dbg !2752
  %arrayidx25 = getelementptr [512 x %union.sidtab_entry_inner], ptr %entries, i64 0, i64 0, !dbg !2748
  %18 = load ptr, ptr %s.addr, align 8, !dbg !2753
  %roots26 = getelementptr inbounds %struct.sidtab, ptr %18, i32 0, i32 0, !dbg !2754
  %19 = load i32, ptr %l, align 4, !dbg !2755
  %sub = sub i32 %19, 1, !dbg !2756
  %idxprom27 = zext i32 %sub to i64, !dbg !2753
  %arrayidx28 = getelementptr [4 x %union.sidtab_entry_inner], ptr %roots26, i64 0, i64 %idxprom27, !dbg !2753
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx25, ptr align 8 %arrayidx28, i64 8, i1 false), !dbg !2753
  br label %if.end29, !dbg !2757

if.end29:                                         ; preds = %if.end21, %for.body
  br label %for.inc, !dbg !2733

for.inc:                                          ; preds = %if.end29
  %20 = load i32, ptr %l, align 4, !dbg !2758
  %inc = add i32 %20, 1, !dbg !2758
  store i32 %inc, ptr %l, align 4, !dbg !2758
  br label %for.cond, !dbg !2759, !llvm.loop !2760

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2762

cleanup:                                          ; preds = %for.end, %if.then20, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #17, !dbg !2763
  %21 = load i32, ptr %retval, align 4, !dbg !2763
  ret i32 %21, !dbg !2763
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !2764 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2766, metadata !DIExpression()), !dbg !2768
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2767, metadata !DIExpression()), !dbg !2769
  %0 = load i64, ptr %size.addr, align 8, !dbg !2770
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2771
  %or = or i32 %1, 256, !dbg !2772
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !2773
  ret ptr %call, !dbg !2774
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mls_context_destroy(ptr noundef %c) #4 align 16 !dbg !2775 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2777, metadata !DIExpression()), !dbg !2778
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2779
  %range = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 4, !dbg !2780
  %level = getelementptr inbounds %struct.mls_range, ptr %range, i32 0, i32 0, !dbg !2781
  %arrayidx = getelementptr [2 x %struct.mls_level], ptr %level, i64 0, i64 0, !dbg !2779
  %cat = getelementptr inbounds %struct.mls_level, ptr %arrayidx, i32 0, i32 1, !dbg !2782
  call void @ebitmap_destroy(ptr noundef %cat) #18, !dbg !2783
  %1 = load ptr, ptr %c.addr, align 8, !dbg !2784
  %range1 = getelementptr inbounds %struct.context, ptr %1, i32 0, i32 4, !dbg !2785
  %level2 = getelementptr inbounds %struct.mls_range, ptr %range1, i32 0, i32 0, !dbg !2786
  %arrayidx3 = getelementptr [2 x %struct.mls_level], ptr %level2, i64 0, i64 1, !dbg !2784
  %cat4 = getelementptr inbounds %struct.mls_level, ptr %arrayidx3, i32 0, i32 1, !dbg !2787
  call void @ebitmap_destroy(ptr noundef %cat4) #18, !dbg !2788
  %2 = load ptr, ptr %c.addr, align 8, !dbg !2789
  call void @mls_context_init(ptr noundef %2) #18, !dbg !2790
  ret void, !dbg !2791
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mls_context_init(ptr noundef %c) #4 align 16 !dbg !2792 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2794, metadata !DIExpression()), !dbg !2795
  %0 = load ptr, ptr %c.addr, align 8, !dbg !2796
  %range = getelementptr inbounds %struct.context, ptr %0, i32 0, i32 4, !dbg !2797
  call void @llvm.memset.p0.i64(ptr align 8 %range, i8 0, i64 48, i1 false), !dbg !2798
  ret void, !dbg !2799
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2800 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #7 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #4 align 16 !dbg !2803 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !2808, metadata !DIExpression()), !dbg !2811
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !2809, metadata !DIExpression()), !dbg !2812
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !2810, metadata !DIExpression()), !dbg !2813
  ret void, !dbg !2814
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #5 align 16 !dbg !24 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !2815
  %0 = load ptr, ptr %tmp, align 8, !dbg !2815
  %call = call i32 %0() #18, !dbg !2817
  ret i32 %call, !dbg !2818
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !2819 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2821, metadata !DIExpression()), !dbg !2822
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2823
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #18, !dbg !2825
  br i1 %call, label %if.end, label %if.then, !dbg !2826

if.then:                                          ; preds = %entry
  br label %return, !dbg !2827

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2828
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2829
  %2 = load ptr, ptr %prev, align 8, !dbg !2829
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !2830
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2831
  %4 = load ptr, ptr %next, align 8, !dbg !2831
  call void @__list_del(ptr noundef %2, ptr noundef %4) #18, !dbg !2832
  br label %return, !dbg !2833

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2833
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !2834 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2838, metadata !DIExpression()), !dbg !2839
  ret i1 true, !dbg !2840
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !2841 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2843, metadata !DIExpression()), !dbg !2845
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2844, metadata !DIExpression()), !dbg !2846
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !2847
  %1 = load ptr, ptr %next.addr, align 8, !dbg !2848
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2849
  store ptr %0, ptr %prev1, align 8, !dbg !2850
  br label %do.body, !dbg !2851

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2852

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !2854

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !2852

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2856
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !2856
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2856
  store volatile ptr %2, ptr %next4, align 8, !dbg !2856
  br label %do.end5, !dbg !2856

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !2852

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !2858
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2859 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !2860 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2864, metadata !DIExpression()), !dbg !2866
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2865, metadata !DIExpression()), !dbg !2867
  %0 = load i64, ptr %size.addr, align 8, !dbg !2868
  %tobool = icmp ne i64 %0, 0, !dbg !2868
  br i1 %tobool, label %if.end, label %if.then, !dbg !2870

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2871
  br label %return, !dbg !2871

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2872
  %cmp = icmp ule i64 %1, 8, !dbg !2874
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2875

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2876
  br label %return, !dbg !2876

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2877
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2879
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2880

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2881
  %cmp4 = icmp ule i64 %3, 96, !dbg !2882
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2883

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2884
  br label %return, !dbg !2884

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2885
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2887
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2888

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2889
  %cmp9 = icmp ule i64 %5, 192, !dbg !2890
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2891

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2892
  br label %return, !dbg !2892

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2893
  %cmp12 = icmp ule i64 %6, 8, !dbg !2895
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2896

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2897
  br label %return, !dbg !2897

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2898
  %cmp15 = icmp ule i64 %7, 16, !dbg !2900
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2901

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2902
  br label %return, !dbg !2902

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2903
  %cmp18 = icmp ule i64 %8, 32, !dbg !2905
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2906

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2907
  br label %return, !dbg !2907

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2908
  %cmp21 = icmp ule i64 %9, 64, !dbg !2910
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2911

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2912
  br label %return, !dbg !2912

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2913
  %cmp24 = icmp ule i64 %10, 128, !dbg !2915
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2916

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2917
  br label %return, !dbg !2917

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2918
  %cmp27 = icmp ule i64 %11, 256, !dbg !2920
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2921

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2922
  br label %return, !dbg !2922

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2923
  %cmp30 = icmp ule i64 %12, 512, !dbg !2925
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2926

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2927
  br label %return, !dbg !2927

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2928
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2930
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2931

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2932
  br label %return, !dbg !2932

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2933
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2935
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2936

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2937
  br label %return, !dbg !2937

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2938
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2940
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2941

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2942
  br label %return, !dbg !2942

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2943
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2945
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2946

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2947
  br label %return, !dbg !2947

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2948
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2950
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2951

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2952
  br label %return, !dbg !2952

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2953
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2955
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2956

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2957
  br label %return, !dbg !2957

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2958
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2960
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2961

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2962
  br label %return, !dbg !2962

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2963
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2965
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2966

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2967
  br label %return, !dbg !2967

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2968
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2970
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2971

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2972
  br label %return, !dbg !2972

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2973
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2975
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2976

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2977
  br label %return, !dbg !2977

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2978
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2980
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2981

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2982
  br label %return, !dbg !2982

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2983
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2985
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2986

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2987
  br label %return, !dbg !2987

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2988, !range !1184, !noundef !1185
  %tobool69 = trunc i8 %25 to i1, !dbg !2988
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2990

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2991

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #23, !dbg !2992, !srcloc !2995
  unreachable, !dbg !2992

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2996

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2997

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2998

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3000

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2998

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 480, i32 0, i64 12) #17, !dbg !3002, !srcloc !3004
  br label %do.end75, !dbg !3002

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2998

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3005
  br label %return, !dbg !3005

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3006
  ret i32 %26, !dbg !3006
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3007 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !3013 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3017, metadata !DIExpression()), !dbg !3019
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3018, metadata !DIExpression()), !dbg !3020
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3021
  %and = and i32 %0, 17, !dbg !3021
  %cmp = icmp eq i32 %and, 0, !dbg !3021
  %lnot = xor i1 %cmp, true, !dbg !3021
  %lnot1 = xor i1 %lnot, true, !dbg !3021
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3021
  %conv = sext i32 %lnot.ext to i64, !dbg !3021
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3021
  %tobool = icmp ne i64 %expval, 0, !dbg !3021
  br i1 %tobool, label %if.then, label %if.end, !dbg !3023

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3024
  br label %return, !dbg !3024

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3025
  %and2 = and i32 %1, 1, !dbg !3027
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3027
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3028

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3029
  br label %return, !dbg !3029

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3030
  br label %return, !dbg !3030

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3032
  ret i32 %2, !dbg !3032
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3033 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #14

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3034 dso_local void @__compiletime_assert_117() #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !3035 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !3039, metadata !DIExpression()), !dbg !3040
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !3041, !range !1184, !noundef !1185
  %tobool = trunc i8 %0 to i1, !dbg !3041
  %lnot = xor i1 %tobool, true, !dbg !3041
  %lnot1 = xor i1 %lnot, true, !dbg !3041
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3041
  %conv = sext i32 %lnot.ext to i64, !dbg !3041
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3041
  %tobool2 = icmp ne i64 %expval, 0, !dbg !3041
  ret i1 %tobool2, !dbg !3042
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !3043 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3047, metadata !DIExpression()), !dbg !3050
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3048, metadata !DIExpression()), !dbg !3051
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3049, metadata !DIExpression()), !dbg !3052
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3053
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3055
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3056
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18, !dbg !3057
  br i1 %call, label %if.end, label %if.then, !dbg !3058

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3059

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3060
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3061
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3062
  store ptr %3, ptr %prev1, align 8, !dbg !3063
  %5 = load ptr, ptr %next.addr, align 8, !dbg !3064
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3065
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !3066
  store ptr %5, ptr %next2, align 8, !dbg !3067
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3068
  %8 = load ptr, ptr %new.addr, align 8, !dbg !3069
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !3070
  store ptr %7, ptr %prev3, align 8, !dbg !3071
  br label %do.body, !dbg !3072

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3073

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3075

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3073

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !3077
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !3077
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !3077
  store volatile ptr %9, ptr %next6, align 8, !dbg !3077
  br label %do.end7, !dbg !3077

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3073

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3079
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !3080 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3084, metadata !DIExpression()), !dbg !3087
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3085, metadata !DIExpression()), !dbg !3088
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3086, metadata !DIExpression()), !dbg !3089
  ret i1 true, !dbg !3090
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone allocsize(1) }
attributes #23 = { noredzone noreturn }

!llvm.dbg.cu = !{!29}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "security/selinux/ss/sidtab.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ebf3dde186e0ed42aebace09016a905")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 51)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 346, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 54)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 458, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 48)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 418, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 29)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched170", scope: !24, file: !25, line: 2104, type: !48, isLocal: true, isDefinition: true)
!24 = distinct !DISubprogram(name: "_cond_resched", scope: !25, file: !25, line: 2102, type: !26, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29)
!25 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!26 = !DISubroutineType(types: !27)
!27 = !{!28}
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/selinux/ss/.sidtab.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -I ./security/selinux -I ./security/selinux/include -D KBUILD_MODFILE=\22security/selinux/selinux\22 -D KBUILD_BASENAME=\22sidtab\22 -D KBUILD_MODNAME=\22selinux\22 -D __KBUILD_MODNAME=kmod_selinux -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/selinux/ss/sidtab.ll security/selinux/ss/sidtab.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !30, retainedTypes: !47, globals: !152, splitDebugInlining: false, nameTableKind: None)
!30 = !{!31, !37}
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 10, baseType: !33, size: 32, elements: !34)
!32 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "false", value: 0)
!36 = !DIEnumerator(name: "true", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !38, line: 364, baseType: !33, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!39 = !{!40, !41, !42, !43, !44, !45, !46}
!40 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!41 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!42 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!43 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!44 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!45 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!46 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!47 = !{!28, !48, !49, !58, !52, !59, !64, !132, !133, !107, !135, !136, !138, !140, !142, !143, !145, !148, !97}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !54, line: 198, size: 128, elements: !55)
!54 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!55 = !{!56, !57}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !53, file: !54, line: 199, baseType: !52, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !53, file: !54, line: 199, baseType: !58, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sidtab_entry", file: !61, line: 20, size: 832, elements: !62)
!61 = !DIFile(filename: "security/selinux/ss/sidtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b761d113dc6474b3b68d9ff03af2a03a")
!62 = !{!63, !68, !69, !106, !131}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "sid", scope: !60, file: !61, line: 21, baseType: !64, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !65, line: 21, baseType: !66)
!65 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !67, line: 27, baseType: !33)
!67 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!68 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !60, file: !61, line: 22, baseType: !64, size: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !60, file: !61, line: 23, baseType: !70, size: 576, offset: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "context", file: !71, line: 27, size: 576, elements: !72)
!71 = !DIFile(filename: "security/selinux/ss/context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da62b4bf5ddec43330086032ebb96414")
!72 = !{!73, !74, !75, !76, !77, !104}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !70, file: !71, line: 28, baseType: !64, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !70, file: !71, line: 29, baseType: !64, size: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !70, file: !71, line: 30, baseType: !64, size: 32, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !70, file: !71, line: 31, baseType: !64, size: 32, offset: 96)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !70, file: !71, line: 32, baseType: !78, size: 384, offset: 128)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mls_range", file: !79, line: 26, size: 384, elements: !80)
!79 = !DIFile(filename: "security/selinux/ss/mls_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ea1e0a8d988e75a37cbe0fc79ec24320")
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !78, file: !79, line: 27, baseType: !82, size: 384)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 384, elements: !102)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mls_level", file: !79, line: 21, size: 192, elements: !84)
!84 = !{!85, !86}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sens", scope: !83, file: !79, line: 22, baseType: !64, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "cat", scope: !83, file: !79, line: 23, baseType: !87, size: 128, offset: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ebitmap", file: !88, line: 40, size: 128, elements: !89)
!88 = !DIFile(filename: "security/selinux/ss/ebitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "57a81f7285b67f9767135d87fb3569d7")
!89 = !{!90, !101}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !87, file: !88, line: 41, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ebitmap_node", file: !88, line: 34, size: 512, elements: !93)
!93 = !{!94, !95, !100}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !92, file: !88, line: 35, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "maps", scope: !92, file: !88, line: 36, baseType: !96, size: 384, offset: 64)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 384, elements: !98)
!97 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!98 = !{!99}
!99 = !DISubrange(count: 6)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "startbit", scope: !92, file: !88, line: 37, baseType: !64, size: 32, offset: 448)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "highbit", scope: !87, file: !88, line: 42, baseType: !64, size: 32, offset: 64)
!102 = !{!103}
!103 = !DISubrange(count: 2)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !70, file: !71, line: 33, baseType: !105, size: 64, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !60, file: !61, line: 25, baseType: !107, size: 64, offset: 640)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sidtab_str_cache", file: !2, line: 23, size: 384, elements: !109)
!109 = !{!110, !119, !125, !126, !127}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_member", scope: !108, file: !2, line: 24, baseType: !111, size: 128, align: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !54, line: 232, size: 128, align: 64, elements: !112)
!112 = !{!113, !115}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !54, line: 233, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !111, file: !54, line: 234, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !114}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "lru_member", scope: !108, file: !2, line: 25, baseType: !120, size: 128, offset: 128)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !54, line: 190, size: 128, elements: !121)
!121 = !{!122, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !120, file: !54, line: 191, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !120, file: !54, line: 191, baseType: !123, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !108, file: !2, line: 26, baseType: !59, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !108, file: !2, line: 27, baseType: !64, size: 32, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !108, file: !2, line: 28, baseType: !128, offset: 352)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: -1)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !60, file: !61, line: 27, baseType: !53, size: 128, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !54, line: 154, baseType: !33)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !54, line: 42, baseType: !97)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !107)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !123)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 61, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !150, line: 72, baseType: !151)
!150 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !150, line: 16, baseType: !97)
!152 = !{!0, !7, !12, !17, !22, !153}
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !38, line: 480, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 21)
!158 = !{i32 7, !"Dwarf Version", i32 5}
!159 = !{i32 2, !"Debug Info Version", i32 3}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 8, !"cf-protection-branch", i32 1}
!162 = !{i32 4, !"function_return_thunk_extern", i32 1}
!163 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!164 = !{i32 1, !"Code Model", i32 2}
!165 = !{i32 1, !"override-stack-alignment", i32 8}
!166 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!167 = distinct !DISubprogram(name: "sidtab_init", scope: !2, file: !2, line: 34, type: !168, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !500)
!168 = !DISubroutineType(types: !169)
!169 = !{!28, !170}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sidtab", file: !61, line: 75, size: 57664, elements: !172)
!172 = !{!173, !195, !196, !446, !449, !484, !485, !486, !487, !495}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "roots", scope: !171, file: !61, line: 80, baseType: !174, size: 256)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 256, elements: !193)
!175 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sidtab_entry_inner", file: !61, line: 30, size: 64, elements: !176)
!176 = !{!177, !185}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_inner", scope: !175, file: !61, line: 31, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sidtab_node_inner", file: !61, line: 58, size: 32768, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !179, file: !61, line: 59, baseType: !182, size: 32768)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 32768, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 512)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_leaf", scope: !175, file: !61, line: 32, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sidtab_node_leaf", file: !61, line: 54, size: 32448, elements: !188)
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !187, file: !61, line: 55, baseType: !190, size: 32448)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32448, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 39)
!193 = !{!194}
!194 = !DISubrange(count: 4)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !171, file: !61, line: 85, baseType: !64, size: 32, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "convert", scope: !171, file: !61, line: 87, baseType: !197, size: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sidtab_convert_params", file: !61, line: 67, size: 128, elements: !199)
!199 = !{!200, !445}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !198, file: !61, line: 68, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "convert_context_args", file: !203, line: 32, size: 128, elements: !204)
!203 = !DIFile(filename: "security/selinux/ss/services.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95c22d0eb909c06c21ef22714eadce2e")
!204 = !{!205, !444}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "oldp", scope: !202, file: !203, line: 33, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "policydb", file: !208, line: 239, size: 4736, elements: !209)
!208 = !DIFile(filename: "security/selinux/ss/policydb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f7795e8c85e617c81c5f9432b58d69e6")
!209 = !{!210, !211, !233, !236, !278, !287, !297, !307, !351, !352, !353, !354, !355, !362, !363, !366, !367, !374, !426, !433, !434, !436, !437, !438, !439, !440, !441, !442, !443}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mls_enabled", scope: !207, file: !208, line: 240, baseType: !28, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !207, file: !208, line: 243, baseType: !212, size: 1536, offset: 64)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 1536, elements: !231)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "symtab", file: !214, line: 15, size: 192, elements: !215)
!214 = !DIFile(filename: "security/selinux/ss/symtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4fa558f58a0acfc7c6989b1450f1c1b")
!215 = !{!216, !230}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !213, file: !214, line: 16, baseType: !217, size: 128)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashtab", file: !218, line: 32, size: 128, elements: !219)
!218 = !DIFile(filename: "security/selinux/ss/hashtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "93462b8c7243c7cf649d075a1a12e63d")
!219 = !{!220, !228, !229}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "htable", scope: !217, file: !218, line: 33, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hashtab_node", file: !218, line: 26, size: 192, elements: !224)
!224 = !{!225, !226, !227}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !223, file: !218, line: 27, baseType: !48, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !223, file: !218, line: 28, baseType: !48, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !223, file: !218, line: 29, baseType: !222, size: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !217, file: !218, line: 34, baseType: !64, size: 32, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "nel", scope: !217, file: !218, line: 35, baseType: !64, size: 32, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "nprim", scope: !213, file: !214, line: 17, baseType: !64, size: 32, offset: 128)
!231 = !{!232}
!232 = !DISubrange(count: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "sym_val_to_name", scope: !207, file: !208, line: 254, baseType: !234, size: 512, offset: 1600)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 512, elements: !231)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "class_val_to_struct", scope: !207, file: !208, line: 257, baseType: !237, size: 64, offset: 2112)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_datum", file: !208, line: 52, size: 576, elements: !240)
!240 = !{!241, !242, !243, !249, !250, !273, !274, !275, !276, !277}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !239, file: !208, line: 53, baseType: !64, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "comkey", scope: !239, file: !208, line: 54, baseType: !105, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "comdatum", scope: !239, file: !208, line: 55, baseType: !244, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "common_datum", file: !208, line: 46, size: 256, elements: !246)
!246 = !{!247, !248}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !245, file: !208, line: 47, baseType: !64, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !245, file: !208, line: 48, baseType: !213, size: 192, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !239, file: !208, line: 56, baseType: !213, size: 192, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "constraints", scope: !239, file: !208, line: 57, baseType: !251, size: 64, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constraint_node", file: !253, line: 57, size: 192, elements: !254)
!253 = !DIFile(filename: "security/selinux/ss/constraint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a5462a1cc40f682813f94f813d2ff99e")
!254 = !{!255, !256, !272}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !252, file: !253, line: 58, baseType: !64, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !252, file: !253, line: 59, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constraint_expr", file: !253, line: 23, size: 384, elements: !259)
!259 = !{!260, !261, !262, !263, !264, !271}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "expr_type", scope: !258, file: !253, line: 29, baseType: !64, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !258, file: !253, line: 42, baseType: !64, size: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !258, file: !253, line: 49, baseType: !64, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !258, file: !253, line: 51, baseType: !87, size: 128, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "type_names", scope: !258, file: !253, line: 52, baseType: !265, size: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type_set", file: !208, line: 161, size: 320, elements: !267)
!267 = !{!268, !269, !270}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !266, file: !208, line: 162, baseType: !87, size: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "negset", scope: !266, file: !208, line: 163, baseType: !87, size: 128, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !208, line: 164, baseType: !64, size: 32, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !258, file: !253, line: 54, baseType: !257, size: 64, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !252, file: !253, line: 60, baseType: !251, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "validatetrans", scope: !239, file: !208, line: 58, baseType: !251, size: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "default_user", scope: !239, file: !208, line: 62, baseType: !4, size: 8, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "default_role", scope: !239, file: !208, line: 63, baseType: !4, size: 8, offset: 520)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "default_type", scope: !239, file: !208, line: 64, baseType: !4, size: 8, offset: 528)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "default_range", scope: !239, file: !208, line: 73, baseType: !4, size: 8, offset: 536)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "role_val_to_struct", scope: !207, file: !208, line: 258, baseType: !279, size: 64, offset: 2176)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "role_datum", file: !208, line: 77, size: 320, elements: !282)
!282 = !{!283, !284, !285, !286}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !281, file: !208, line: 78, baseType: !64, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !281, file: !208, line: 79, baseType: !64, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "dominates", scope: !281, file: !208, line: 80, baseType: !87, size: 128, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !281, file: !208, line: 81, baseType: !87, size: 128, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "user_val_to_struct", scope: !207, file: !208, line: 259, baseType: !288, size: 64, offset: 2240)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_datum", file: !208, line: 121, size: 768, elements: !291)
!291 = !{!292, !293, !294, !295, !296}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !290, file: !208, line: 122, baseType: !64, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !290, file: !208, line: 123, baseType: !64, size: 32, offset: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "roles", scope: !290, file: !208, line: 124, baseType: !87, size: 128, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !290, file: !208, line: 125, baseType: !78, size: 384, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "dfltlevel", scope: !290, file: !208, line: 126, baseType: !83, size: 192, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "type_val_to_struct", scope: !207, file: !208, line: 260, baseType: !298, size: 64, offset: 2304)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "type_datum", file: !208, line: 113, size: 96, elements: !301)
!301 = !{!302, !303, !304, !306}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !300, file: !208, line: 114, baseType: !64, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !300, file: !208, line: 115, baseType: !64, size: 32, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !300, file: !208, line: 116, baseType: !305, size: 8, offset: 64)
!305 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "attribute", scope: !300, file: !208, line: 117, baseType: !305, size: 8, offset: 72)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "te_avtab", scope: !207, file: !208, line: 263, baseType: !308, size: 192, offset: 2368)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab", file: !309, line: 83, size: 192, elements: !310)
!309 = !DIFile(filename: "security/selinux/ss/avtab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594c41c8c01a8fbcd1845985fac73819")
!310 = !{!311, !348, !349, !350}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "htable", scope: !308, file: !309, line: 84, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_node", file: !309, line: 77, size: 192, elements: !315)
!315 = !{!316, !326, !347}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !314, file: !309, line: 78, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_key", file: !309, line: 26, size: 64, elements: !318)
!318 = !{!319, !323, !324, !325}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "source_type", scope: !317, file: !309, line: 27, baseType: !320, size: 16)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !65, line: 19, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !67, line: 24, baseType: !322)
!322 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "target_type", scope: !317, file: !309, line: 28, baseType: !320, size: 16, offset: 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "target_class", scope: !317, file: !309, line: 29, baseType: !320, size: 16, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !317, file: !309, line: 47, baseType: !320, size: 16, offset: 48)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !314, file: !309, line: 79, baseType: !327, size: 64, offset: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_datum", file: !309, line: 70, size: 64, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !327, file: !309, line: 74, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !309, line: 71, size: 64, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !330, file: !309, line: 72, baseType: !64, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "xperms", scope: !330, file: !309, line: 73, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "avtab_extended_perms", file: !309, line: 54, size: 288, elements: !336)
!336 = !{!337, !340, !341}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !335, file: !309, line: 59, baseType: !338, size: 8)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !65, line: 17, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !67, line: 21, baseType: !305)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !335, file: !309, line: 65, baseType: !338, size: 8, offset: 8)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "perms", scope: !335, file: !309, line: 67, baseType: !342, size: 256, offset: 32)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "extended_perms_data", file: !343, line: 223, size: 256, elements: !344)
!343 = !DIFile(filename: "./security/selinux/include/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb6e0d69f1ee11464ad11e15a35ebc")
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !342, file: !343, line: 224, baseType: !346, size: 256)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 256, elements: !231)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !314, file: !309, line: 80, baseType: !313, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "nel", scope: !308, file: !309, line: 85, baseType: !64, size: 32, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "nslot", scope: !308, file: !309, line: 86, baseType: !64, size: 32, offset: 96)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !308, file: !309, line: 87, baseType: !64, size: 32, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "role_tr", scope: !207, file: !208, line: 266, baseType: !217, size: 128, offset: 2560)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "filename_trans_ttypes", scope: !207, file: !208, line: 270, baseType: !87, size: 128, offset: 2688)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "filename_trans", scope: !207, file: !208, line: 272, baseType: !217, size: 128, offset: 2816)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "compat_filename_trans_count", scope: !207, file: !208, line: 274, baseType: !64, size: 32, offset: 2944)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "bool_val_to_struct", scope: !207, file: !208, line: 277, baseType: !356, size: 64, offset: 3008)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cond_bool_datum", file: !208, line: 149, size: 64, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !358, file: !208, line: 150, baseType: !66, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !358, file: !208, line: 151, baseType: !28, size: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "te_cond_avtab", scope: !207, file: !208, line: 279, baseType: !308, size: 192, offset: 3072)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "cond_list", scope: !207, file: !208, line: 281, baseType: !364, size: 64, offset: 3264)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "cond_node", file: !208, line: 154, flags: DIFlagFwdDecl)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cond_list_len", scope: !207, file: !208, line: 282, baseType: !64, size: 32, offset: 3328)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "role_allow", scope: !207, file: !208, line: 285, baseType: !368, size: 64, offset: 3392)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "role_allow", file: !208, line: 106, size: 128, elements: !370)
!370 = !{!371, !372, !373}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "role", scope: !369, file: !208, line: 107, baseType: !64, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "new_role", scope: !369, file: !208, line: 108, baseType: !64, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !369, file: !208, line: 109, baseType: !368, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ocontexts", scope: !207, file: !208, line: 289, baseType: !375, size: 576, offset: 3456)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 576, elements: !424)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ocontext", file: !208, line: 174, size: 1600, elements: !378)
!378 = !{!379, !414, !419, !421, !423}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !377, file: !208, line: 199, baseType: !380, size: 256)
!380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !208, line: 175, size: 256, elements: !381)
!381 = !{!382, !383, !389, !394, !400, !409}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !380, file: !208, line: 176, baseType: !105, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !380, file: !208, line: 181, baseType: !384, size: 48)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !208, line: 177, size: 48, elements: !385)
!385 = !{!386, !387, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !384, file: !208, line: 178, baseType: !338, size: 8)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "low_port", scope: !384, file: !208, line: 179, baseType: !320, size: 16, offset: 16)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "high_port", scope: !384, file: !208, line: 180, baseType: !320, size: 16, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !380, file: !208, line: 185, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !208, line: 182, size: 64, elements: !391)
!391 = !{!392, !393}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !390, file: !208, line: 183, baseType: !64, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !390, file: !208, line: 184, baseType: !64, size: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "node6", scope: !380, file: !208, line: 189, baseType: !395, size: 256)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !208, line: 186, size: 256, elements: !396)
!396 = !{!397, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !395, file: !208, line: 187, baseType: !398, size: 128)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 128, elements: !193)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !395, file: !208, line: 188, baseType: !398, size: 128, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ibpkey", scope: !380, file: !208, line: 194, baseType: !401, size: 128)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !208, line: 190, size: 128, elements: !402)
!402 = !{!403, !407, !408}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "subnet_prefix", scope: !401, file: !208, line: 191, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !65, line: 23, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !67, line: 31, baseType: !406)
!406 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "low_pkey", scope: !401, file: !208, line: 192, baseType: !320, size: 16, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "high_pkey", scope: !401, file: !208, line: 193, baseType: !320, size: 16, offset: 80)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ibendport", scope: !380, file: !208, line: 198, baseType: !410, size: 128)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !208, line: 195, size: 128, elements: !411)
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !410, file: !208, line: 196, baseType: !105, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !410, file: !208, line: 197, baseType: !338, size: 8, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !377, file: !208, line: 203, baseType: !415, size: 32, offset: 256)
!415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !377, file: !208, line: 200, size: 32, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sclass", scope: !415, file: !208, line: 201, baseType: !64, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "behavior", scope: !415, file: !208, line: 202, baseType: !64, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !377, file: !208, line: 204, baseType: !420, size: 1152, offset: 320)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 1152, elements: !102)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sid", scope: !377, file: !208, line: 205, baseType: !422, size: 64, offset: 1472)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !102)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !208, line: 206, baseType: !376, size: 64, offset: 1536)
!424 = !{!425}
!425 = !DISubrange(count: 9)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "genfs", scope: !207, file: !208, line: 294, baseType: !427, size: 64, offset: 4032)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "genfs", file: !208, line: 209, size: 192, elements: !429)
!429 = !{!430, !431, !432}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "fstype", scope: !428, file: !208, line: 210, baseType: !105, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !428, file: !208, line: 211, baseType: !376, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !428, file: !208, line: 212, baseType: !427, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "range_tr", scope: !207, file: !208, line: 297, baseType: !217, size: 128, offset: 4096)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "type_attr_map_array", scope: !207, file: !208, line: 300, baseType: !435, size: 64, offset: 4224)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "policycaps", scope: !207, file: !208, line: 302, baseType: !87, size: 128, offset: 4288)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "permissive_map", scope: !207, file: !208, line: 304, baseType: !87, size: 128, offset: 4416)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !207, file: !208, line: 307, baseType: !148, size: 64, offset: 4544)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "policyvers", scope: !207, file: !208, line: 309, baseType: !33, size: 32, offset: 4608)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "reject_unknown", scope: !207, file: !208, line: 311, baseType: !33, size: 1, offset: 4640, flags: DIFlagBitField, extraData: i64 4640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "allow_unknown", scope: !207, file: !208, line: 312, baseType: !33, size: 1, offset: 4641, flags: DIFlagBitField, extraData: i64 4640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "process_class", scope: !207, file: !208, line: 314, baseType: !320, size: 16, offset: 4656)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "process_trans_perms", scope: !207, file: !208, line: 315, baseType: !64, size: 32, offset: 4672)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "newp", scope: !202, file: !203, line: 34, baseType: !206, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !198, file: !61, line: 69, baseType: !170, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !171, file: !61, line: 88, baseType: !447, size: 8, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !54, line: 35, baseType: !448)
!448 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !171, file: !61, line: 89, baseType: !450, size: 32, offset: 416)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !451, line: 29, baseType: !452)
!451 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !451, line: 17, size: 32, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, scope: !452, file: !451, line: 18, baseType: !455, size: 32)
!455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !451, line: 18, size: 32, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !455, file: !451, line: 19, baseType: !458, size: 32)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !459, line: 14, size: 32, elements: !460)
!459 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!460 = !{!461}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !458, file: !459, line: 15, baseType: !462, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !463, line: 44, baseType: !464)
!463 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !463, line: 14, size: 32, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, scope: !464, file: !463, line: 15, baseType: !467, size: 32)
!467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !464, file: !463, line: 15, size: 32, elements: !468)
!468 = !{!469, !474, !479}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !467, file: !463, line: 16, baseType: !470, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !54, line: 174, baseType: !471)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 172, size: 32, elements: !472)
!472 = !{!473}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !471, file: !54, line: 173, baseType: !28, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !463, line: 24, baseType: !475, size: 16)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !467, file: !463, line: 24, size: 16, elements: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !475, file: !463, line: 25, baseType: !338, size: 8)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !475, file: !463, line: 26, baseType: !338, size: 8, offset: 8)
!479 = !DIDerivedType(tag: DW_TAG_member, scope: !467, file: !463, line: 28, baseType: !480, size: 32)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !467, file: !463, line: 28, size: 32, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !480, file: !463, line: 29, baseType: !320, size: 16)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !480, file: !463, line: 30, baseType: !320, size: 16, offset: 16)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "cache_free_slots", scope: !171, file: !61, line: 93, baseType: !64, size: 32, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lru_list", scope: !171, file: !61, line: 94, baseType: !120, size: 128, offset: 512)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "cache_lock", scope: !171, file: !61, line: 95, baseType: !450, size: 32, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "isids", scope: !171, file: !61, line: 99, baseType: !488, size: 24192, offset: 704)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 24192, elements: !493)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sidtab_isid_entry", file: !61, line: 62, size: 896, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !489, file: !61, line: 63, baseType: !28, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !489, file: !61, line: 64, baseType: !60, size: 832, offset: 64)
!493 = !{!494}
!494 = !DISubrange(count: 27)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "context_to_sid", scope: !171, file: !61, line: 102, baseType: !496, size: 32768, offset: 24896)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 32768, elements: !183)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !54, line: 194, size: 64, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !497, file: !54, line: 195, baseType: !52, size: 64)
!500 = !{!501, !502}
!501 = !DILocalVariable(name: "s", arg: 1, scope: !167, file: !2, line: 34, type: !170)
!502 = !DILocalVariable(name: "i", scope: !167, file: !2, line: 36, type: !64)
!503 = !DILocation(line: 34, column: 32, scope: !167)
!504 = !DILocation(line: 36, column: 2, scope: !167)
!505 = !DILocation(line: 36, column: 6, scope: !167)
!506 = !DILocation(line: 38, column: 9, scope: !167)
!507 = !DILocation(line: 38, column: 12, scope: !167)
!508 = !DILocation(line: 38, column: 2, scope: !167)
!509 = !DILocation(line: 40, column: 9, scope: !510)
!510 = distinct !DILexicalBlock(scope: !167, file: !2, line: 40, column: 2)
!511 = !DILocation(line: 40, column: 7, scope: !510)
!512 = !DILocation(line: 40, column: 14, scope: !513)
!513 = distinct !DILexicalBlock(scope: !510, file: !2, line: 40, column: 2)
!514 = !DILocation(line: 40, column: 16, scope: !513)
!515 = !DILocation(line: 40, column: 2, scope: !510)
!516 = !DILocation(line: 41, column: 3, scope: !513)
!517 = !DILocation(line: 41, column: 6, scope: !513)
!518 = !DILocation(line: 41, column: 12, scope: !513)
!519 = !DILocation(line: 41, column: 15, scope: !513)
!520 = !DILocation(line: 41, column: 19, scope: !513)
!521 = !DILocation(line: 40, column: 35, scope: !513)
!522 = !DILocation(line: 40, column: 2, scope: !513)
!523 = distinct !{!523, !515, !524, !525, !526}
!524 = !DILocation(line: 41, column: 21, scope: !510)
!525 = !{!"llvm.loop.mustprogress"}
!526 = !{!"llvm.loop.unroll.disable"}
!527 = !DILocation(line: 43, column: 2, scope: !167)
!528 = !DILocation(line: 43, column: 5, scope: !167)
!529 = !DILocation(line: 43, column: 12, scope: !167)
!530 = !DILocation(line: 44, column: 2, scope: !167)
!531 = !DILocation(line: 44, column: 5, scope: !167)
!532 = !DILocation(line: 44, column: 11, scope: !167)
!533 = !DILocation(line: 45, column: 2, scope: !167)
!534 = !DILocation(line: 45, column: 5, scope: !167)
!535 = !DILocation(line: 45, column: 13, scope: !167)
!536 = !DILocation(line: 46, column: 2, scope: !167)
!537 = !DILocation(line: 48, column: 2, scope: !167)
!538 = !DILocation(line: 48, column: 2, scope: !539)
!539 = distinct !DILexicalBlock(scope: !167, file: !2, line: 48, column: 2)
!540 = !DILocation(line: 51, column: 2, scope: !167)
!541 = !DILocation(line: 51, column: 5, scope: !167)
!542 = !DILocation(line: 51, column: 22, scope: !167)
!543 = !DILocation(line: 52, column: 18, scope: !167)
!544 = !DILocation(line: 52, column: 21, scope: !167)
!545 = !DILocation(line: 52, column: 2, scope: !167)
!546 = !DILocation(line: 53, column: 2, scope: !167)
!547 = !DILocation(line: 53, column: 2, scope: !548)
!548 = distinct !DILexicalBlock(scope: !167, file: !2, line: 53, column: 2)
!549 = !DILocation(line: 57, column: 1, scope: !167)
!550 = !DILocation(line: 56, column: 2, scope: !167)
!551 = distinct !DISubprogram(name: "__hash_init", scope: !552, file: !552, line: 34, type: !553, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !556)
!552 = !DIFile(filename: "./include/linux/hashtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8373c67526b9fd2b14c024eb7bd64273")
!553 = !DISubroutineType(types: !554)
!554 = !{null, !555, !33}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!556 = !{!557, !558, !559}
!557 = !DILocalVariable(name: "ht", arg: 1, scope: !551, file: !552, line: 34, type: !555)
!558 = !DILocalVariable(name: "sz", arg: 2, scope: !551, file: !552, line: 34, type: !33)
!559 = !DILocalVariable(name: "i", scope: !551, file: !552, line: 36, type: !33)
!560 = !DILocation(line: 34, column: 51, scope: !551)
!561 = !DILocation(line: 34, column: 68, scope: !551)
!562 = !DILocation(line: 36, column: 2, scope: !551)
!563 = !DILocation(line: 36, column: 15, scope: !551)
!564 = !DILocation(line: 38, column: 9, scope: !565)
!565 = distinct !DILexicalBlock(scope: !551, file: !552, line: 38, column: 2)
!566 = !DILocation(line: 38, column: 7, scope: !565)
!567 = !DILocation(line: 38, column: 14, scope: !568)
!568 = distinct !DILexicalBlock(scope: !565, file: !552, line: 38, column: 2)
!569 = !DILocation(line: 38, column: 18, scope: !568)
!570 = !DILocation(line: 38, column: 16, scope: !568)
!571 = !DILocation(line: 38, column: 2, scope: !565)
!572 = !DILocation(line: 39, column: 3, scope: !568)
!573 = !DILocation(line: 38, column: 23, scope: !568)
!574 = !DILocation(line: 38, column: 2, scope: !568)
!575 = distinct !{!575, !571, !576, !525, !526}
!576 = !DILocation(line: 39, column: 3, scope: !565)
!577 = !DILocation(line: 40, column: 1, scope: !551)
!578 = distinct !DISubprogram(name: "spinlock_check", scope: !579, file: !579, line: 324, type: !580, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !585)
!579 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!580 = !DISubroutineType(types: !581)
!581 = !{!582, !584}
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !459, line: 23, baseType: !458)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!585 = !{!586}
!586 = !DILocalVariable(name: "lock", arg: 1, scope: !578, file: !579, line: 324, type: !584)
!587 = !DILocation(line: 324, column: 67, scope: !578)
!588 = !DILocation(line: 326, column: 10, scope: !578)
!589 = !DILocation(line: 326, column: 16, scope: !578)
!590 = !DILocation(line: 326, column: 2, scope: !578)
!591 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !592, file: !592, line: 35, type: !593, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !595)
!592 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!593 = !DISubroutineType(types: !594)
!594 = !{null, !123}
!595 = !{!596}
!596 = !DILocalVariable(name: "list", arg: 1, scope: !591, file: !592, line: 35, type: !123)
!597 = !DILocation(line: 35, column: 53, scope: !591)
!598 = !DILocation(line: 37, column: 2, scope: !591)
!599 = !DILocation(line: 37, column: 2, scope: !600)
!600 = distinct !DILexicalBlock(scope: !591, file: !592, line: 37, column: 2)
!601 = !DILocation(line: 37, column: 2, scope: !602)
!602 = distinct !DILexicalBlock(scope: !600, file: !592, line: 37, column: 2)
!603 = !DILocation(line: 37, column: 2, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !592, line: 37, column: 2)
!605 = !DILocation(line: 38, column: 2, scope: !591)
!606 = !DILocation(line: 38, column: 2, scope: !607)
!607 = distinct !DILexicalBlock(scope: !591, file: !592, line: 38, column: 2)
!608 = !DILocation(line: 38, column: 2, scope: !609)
!609 = distinct !DILexicalBlock(scope: !607, file: !592, line: 38, column: 2)
!610 = !DILocation(line: 38, column: 2, scope: !611)
!611 = distinct !DILexicalBlock(scope: !607, file: !592, line: 38, column: 2)
!612 = !DILocation(line: 39, column: 1, scope: !591)
!613 = distinct !DISubprogram(name: "sidtab_set_initial", scope: !2, file: !2, line: 77, type: !614, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !617)
!614 = !DISubroutineType(types: !615)
!615 = !{!28, !170, !64, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!617 = !{!618, !619, !620, !621, !623, !624}
!618 = !DILocalVariable(name: "s", arg: 1, scope: !613, file: !2, line: 77, type: !170)
!619 = !DILocalVariable(name: "sid", arg: 2, scope: !613, file: !2, line: 77, type: !64)
!620 = !DILocalVariable(name: "context", arg: 3, scope: !613, file: !2, line: 77, type: !616)
!621 = !DILocalVariable(name: "isid", scope: !613, file: !2, line: 79, type: !622)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!623 = !DILocalVariable(name: "hash", scope: !613, file: !2, line: 80, type: !64)
!624 = !DILocalVariable(name: "rc", scope: !613, file: !2, line: 81, type: !28)
!625 = !DILocation(line: 77, column: 39, scope: !613)
!626 = !DILocation(line: 77, column: 46, scope: !613)
!627 = !DILocation(line: 77, column: 67, scope: !613)
!628 = !DILocation(line: 79, column: 2, scope: !613)
!629 = !DILocation(line: 79, column: 28, scope: !613)
!630 = !DILocation(line: 80, column: 2, scope: !613)
!631 = !DILocation(line: 80, column: 6, scope: !613)
!632 = !DILocation(line: 81, column: 2, scope: !613)
!633 = !DILocation(line: 81, column: 6, scope: !613)
!634 = !DILocation(line: 83, column: 6, scope: !635)
!635 = distinct !DILexicalBlock(scope: !613, file: !2, line: 83, column: 6)
!636 = !DILocation(line: 83, column: 10, scope: !635)
!637 = !DILocation(line: 83, column: 15, scope: !635)
!638 = !DILocation(line: 83, column: 18, scope: !635)
!639 = !DILocation(line: 83, column: 22, scope: !635)
!640 = !DILocation(line: 83, column: 6, scope: !613)
!641 = !DILocation(line: 84, column: 3, scope: !635)
!642 = !DILocation(line: 86, column: 10, scope: !613)
!643 = !DILocation(line: 86, column: 13, scope: !613)
!644 = !DILocation(line: 86, column: 19, scope: !613)
!645 = !DILocation(line: 86, column: 23, scope: !613)
!646 = !DILocation(line: 86, column: 7, scope: !613)
!647 = !DILocation(line: 88, column: 20, scope: !613)
!648 = !DILocation(line: 88, column: 26, scope: !613)
!649 = !DILocation(line: 88, column: 32, scope: !613)
!650 = !DILocation(line: 88, column: 41, scope: !613)
!651 = !DILocation(line: 88, column: 7, scope: !613)
!652 = !DILocation(line: 88, column: 5, scope: !613)
!653 = !DILocation(line: 89, column: 6, scope: !654)
!654 = distinct !DILexicalBlock(scope: !613, file: !2, line: 89, column: 6)
!655 = !DILocation(line: 89, column: 6, scope: !613)
!656 = !DILocation(line: 90, column: 10, scope: !654)
!657 = !DILocation(line: 90, column: 3, scope: !654)
!658 = !DILocation(line: 93, column: 2, scope: !613)
!659 = !DILocation(line: 93, column: 8, scope: !613)
!660 = !DILocation(line: 93, column: 14, scope: !613)
!661 = !DILocation(line: 93, column: 20, scope: !613)
!662 = !DILocation(line: 95, column: 2, scope: !613)
!663 = !DILocation(line: 95, column: 8, scope: !613)
!664 = !DILocation(line: 95, column: 12, scope: !613)
!665 = !DILocation(line: 97, column: 30, scope: !613)
!666 = !DILocation(line: 97, column: 9, scope: !613)
!667 = !DILocation(line: 97, column: 7, scope: !613)
!668 = !DILocation(line: 105, column: 22, scope: !669)
!669 = distinct !DILexicalBlock(scope: !613, file: !2, line: 105, column: 6)
!670 = !DILocation(line: 105, column: 25, scope: !669)
!671 = !DILocation(line: 105, column: 34, scope: !669)
!672 = !DILocation(line: 105, column: 7, scope: !669)
!673 = !DILocation(line: 105, column: 6, scope: !613)
!674 = !DILocation(line: 106, column: 21, scope: !675)
!675 = distinct !DILexicalBlock(scope: !669, file: !2, line: 105, column: 41)
!676 = !DILocation(line: 106, column: 3, scope: !675)
!677 = !DILocation(line: 106, column: 9, scope: !675)
!678 = !DILocation(line: 106, column: 15, scope: !675)
!679 = !DILocation(line: 106, column: 19, scope: !675)
!680 = !DILocation(line: 107, column: 22, scope: !675)
!681 = !DILocation(line: 107, column: 3, scope: !675)
!682 = !DILocation(line: 107, column: 9, scope: !675)
!683 = !DILocation(line: 107, column: 15, scope: !675)
!684 = !DILocation(line: 107, column: 20, scope: !675)
!685 = !DILocation(line: 108, column: 3, scope: !675)
!686 = !DILocation(line: 109, column: 2, scope: !675)
!687 = !DILocation(line: 111, column: 2, scope: !613)
!688 = !DILocation(line: 112, column: 1, scope: !613)
!689 = distinct !DISubprogram(name: "context_cpy", scope: !71, file: !71, line: 151, type: !690, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !694)
!690 = !DISubroutineType(types: !691)
!691 = !{!28, !616, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!694 = !{!695, !696, !697}
!695 = !DILocalVariable(name: "dst", arg: 1, scope: !689, file: !71, line: 151, type: !616)
!696 = !DILocalVariable(name: "src", arg: 2, scope: !689, file: !71, line: 151, type: !692)
!697 = !DILocalVariable(name: "rc", scope: !689, file: !71, line: 153, type: !28)
!698 = !DILocation(line: 151, column: 47, scope: !689)
!699 = !DILocation(line: 151, column: 74, scope: !689)
!700 = !DILocation(line: 153, column: 2, scope: !689)
!701 = !DILocation(line: 153, column: 6, scope: !689)
!702 = !DILocation(line: 155, column: 14, scope: !689)
!703 = !DILocation(line: 155, column: 19, scope: !689)
!704 = !DILocation(line: 155, column: 2, scope: !689)
!705 = !DILocation(line: 155, column: 7, scope: !689)
!706 = !DILocation(line: 155, column: 12, scope: !689)
!707 = !DILocation(line: 156, column: 14, scope: !689)
!708 = !DILocation(line: 156, column: 19, scope: !689)
!709 = !DILocation(line: 156, column: 2, scope: !689)
!710 = !DILocation(line: 156, column: 7, scope: !689)
!711 = !DILocation(line: 156, column: 12, scope: !689)
!712 = !DILocation(line: 157, column: 14, scope: !689)
!713 = !DILocation(line: 157, column: 19, scope: !689)
!714 = !DILocation(line: 157, column: 2, scope: !689)
!715 = !DILocation(line: 157, column: 7, scope: !689)
!716 = !DILocation(line: 157, column: 12, scope: !689)
!717 = !DILocation(line: 158, column: 6, scope: !718)
!718 = distinct !DILexicalBlock(scope: !689, file: !71, line: 158, column: 6)
!719 = !DILocation(line: 158, column: 11, scope: !718)
!720 = !DILocation(line: 158, column: 6, scope: !689)
!721 = !DILocation(line: 159, column: 22, scope: !722)
!722 = distinct !DILexicalBlock(scope: !718, file: !71, line: 158, column: 16)
!723 = !DILocation(line: 159, column: 27, scope: !722)
!724 = !DILocation(line: 159, column: 14, scope: !722)
!725 = !DILocation(line: 159, column: 3, scope: !722)
!726 = !DILocation(line: 159, column: 8, scope: !722)
!727 = !DILocation(line: 159, column: 12, scope: !722)
!728 = !DILocation(line: 160, column: 8, scope: !729)
!729 = distinct !DILexicalBlock(scope: !722, file: !71, line: 160, column: 7)
!730 = !DILocation(line: 160, column: 13, scope: !729)
!731 = !DILocation(line: 160, column: 7, scope: !722)
!732 = !DILocation(line: 161, column: 4, scope: !729)
!733 = !DILocation(line: 162, column: 14, scope: !722)
!734 = !DILocation(line: 162, column: 19, scope: !722)
!735 = !DILocation(line: 162, column: 3, scope: !722)
!736 = !DILocation(line: 162, column: 8, scope: !722)
!737 = !DILocation(line: 162, column: 12, scope: !722)
!738 = !DILocation(line: 163, column: 2, scope: !722)
!739 = !DILocation(line: 164, column: 3, scope: !740)
!740 = distinct !DILexicalBlock(scope: !718, file: !71, line: 163, column: 9)
!741 = !DILocation(line: 164, column: 8, scope: !740)
!742 = !DILocation(line: 164, column: 12, scope: !740)
!743 = !DILocation(line: 165, column: 3, scope: !740)
!744 = !DILocation(line: 165, column: 8, scope: !740)
!745 = !DILocation(line: 165, column: 12, scope: !740)
!746 = !DILocation(line: 167, column: 23, scope: !689)
!747 = !DILocation(line: 167, column: 28, scope: !689)
!748 = !DILocation(line: 167, column: 7, scope: !689)
!749 = !DILocation(line: 167, column: 5, scope: !689)
!750 = !DILocation(line: 168, column: 6, scope: !751)
!751 = distinct !DILexicalBlock(scope: !689, file: !71, line: 168, column: 6)
!752 = !DILocation(line: 168, column: 6, scope: !689)
!753 = !DILocation(line: 169, column: 9, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !71, line: 168, column: 10)
!755 = !DILocation(line: 169, column: 14, scope: !754)
!756 = !DILocation(line: 169, column: 3, scope: !754)
!757 = !DILocation(line: 170, column: 3, scope: !754)
!758 = !DILocation(line: 170, column: 8, scope: !754)
!759 = !DILocation(line: 170, column: 12, scope: !754)
!760 = !DILocation(line: 171, column: 3, scope: !754)
!761 = !DILocation(line: 171, column: 8, scope: !754)
!762 = !DILocation(line: 171, column: 12, scope: !754)
!763 = !DILocation(line: 172, column: 10, scope: !754)
!764 = !DILocation(line: 172, column: 3, scope: !754)
!765 = !DILocation(line: 174, column: 2, scope: !689)
!766 = !DILocation(line: 175, column: 1, scope: !689)
!767 = !DISubprogram(name: "context_compute_hash", scope: !71, file: !71, line: 198, type: !768, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!768 = !DISubroutineType(types: !769)
!769 = !{!64, !692}
!770 = distinct !DISubprogram(name: "context_to_sid", scope: !2, file: !2, line: 59, type: !771, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{!64, !170, !616, !64}
!773 = !{!774, !775, !776, !777, !778, !779, !782, !784, !786, !789, !791}
!774 = !DILocalVariable(name: "s", arg: 1, scope: !770, file: !2, line: 59, type: !170)
!775 = !DILocalVariable(name: "context", arg: 2, scope: !770, file: !2, line: 59, type: !616)
!776 = !DILocalVariable(name: "hash", arg: 3, scope: !770, file: !2, line: 59, type: !64)
!777 = !DILocalVariable(name: "entry", scope: !770, file: !2, line: 61, type: !59)
!778 = !DILocalVariable(name: "sid", scope: !770, file: !2, line: 62, type: !64)
!779 = !DILocalVariable(name: "____ptr", scope: !780, file: !2, line: 65, type: !52)
!780 = distinct !DILexicalBlock(scope: !781, file: !2, line: 65, column: 2)
!781 = distinct !DILexicalBlock(scope: !770, file: !2, line: 65, column: 2)
!782 = !DILocalVariable(name: "__UNIQUE_ID_rcu555", scope: !783, file: !2, line: 65, type: !52)
!783 = distinct !DILexicalBlock(scope: !780, file: !2, line: 65, column: 2)
!784 = !DILocalVariable(name: "__mptr", scope: !785, file: !2, line: 65, type: !48)
!785 = distinct !DILexicalBlock(scope: !780, file: !2, line: 65, column: 2)
!786 = !DILocalVariable(name: "____ptr", scope: !787, file: !2, line: 65, type: !52)
!787 = distinct !DILexicalBlock(scope: !788, file: !2, line: 65, column: 2)
!788 = distinct !DILexicalBlock(scope: !781, file: !2, line: 65, column: 2)
!789 = !DILocalVariable(name: "__UNIQUE_ID_rcu557", scope: !790, file: !2, line: 65, type: !52)
!790 = distinct !DILexicalBlock(scope: !787, file: !2, line: 65, column: 2)
!791 = !DILocalVariable(name: "__mptr", scope: !792, file: !2, line: 65, type: !48)
!792 = distinct !DILexicalBlock(scope: !787, file: !2, line: 65, column: 2)
!793 = !DILocation(line: 59, column: 42, scope: !770)
!794 = !DILocation(line: 59, column: 61, scope: !770)
!795 = !DILocation(line: 59, column: 74, scope: !770)
!796 = !DILocation(line: 61, column: 2, scope: !770)
!797 = !DILocation(line: 61, column: 23, scope: !770)
!798 = !DILocation(line: 62, column: 2, scope: !770)
!799 = !DILocation(line: 62, column: 6, scope: !770)
!800 = !DILocation(line: 64, column: 2, scope: !770)
!801 = !DILocation(line: 65, column: 2, scope: !780)
!802 = !DILocation(line: 65, column: 2, scope: !783)
!803 = !DILocation(line: 65, column: 2, scope: !804)
!804 = distinct !DILexicalBlock(scope: !783, file: !2, line: 65, column: 2)
!805 = !DILocation(line: 65, column: 2, scope: !806)
!806 = distinct !DILexicalBlock(scope: !804, file: !2, line: 65, column: 2)
!807 = !DILocation(line: 65, column: 2, scope: !785)
!808 = !DILocation(line: 65, column: 2, scope: !781)
!809 = !DILocation(line: 65, column: 2, scope: !788)
!810 = !DILocation(line: 66, column: 7, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !2, line: 66, column: 7)
!812 = distinct !DILexicalBlock(scope: !788, file: !2, line: 65, column: 67)
!813 = !DILocation(line: 66, column: 14, scope: !811)
!814 = !DILocation(line: 66, column: 22, scope: !811)
!815 = !DILocation(line: 66, column: 19, scope: !811)
!816 = !DILocation(line: 66, column: 7, scope: !812)
!817 = !DILocation(line: 67, column: 4, scope: !811)
!818 = !DILocation(line: 68, column: 20, scope: !819)
!819 = distinct !DILexicalBlock(scope: !812, file: !2, line: 68, column: 7)
!820 = !DILocation(line: 68, column: 27, scope: !819)
!821 = !DILocation(line: 68, column: 36, scope: !819)
!822 = !DILocation(line: 68, column: 7, scope: !819)
!823 = !DILocation(line: 68, column: 7, scope: !812)
!824 = !DILocation(line: 69, column: 10, scope: !825)
!825 = distinct !DILexicalBlock(scope: !819, file: !2, line: 68, column: 46)
!826 = !DILocation(line: 69, column: 17, scope: !825)
!827 = !DILocation(line: 69, column: 8, scope: !825)
!828 = !DILocation(line: 70, column: 4, scope: !825)
!829 = !DILocation(line: 72, column: 2, scope: !812)
!830 = !DILocation(line: 65, column: 2, scope: !787)
!831 = !DILocation(line: 65, column: 2, scope: !790)
!832 = !DILocation(line: 65, column: 2, scope: !833)
!833 = distinct !DILexicalBlock(scope: !790, file: !2, line: 65, column: 2)
!834 = !DILocation(line: 65, column: 2, scope: !835)
!835 = distinct !DILexicalBlock(scope: !833, file: !2, line: 65, column: 2)
!836 = !DILocation(line: 65, column: 2, scope: !792)
!837 = distinct !{!837, !808, !838, !525, !526}
!838 = !DILocation(line: 72, column: 2, scope: !781)
!839 = !DILocation(line: 73, column: 2, scope: !770)
!840 = !DILocation(line: 74, column: 9, scope: !770)
!841 = !DILocation(line: 75, column: 1, scope: !770)
!842 = !DILocation(line: 74, column: 2, scope: !770)
!843 = distinct !DISubprogram(name: "hlist_add_head", scope: !592, file: !592, line: 1021, type: !844, scopeLine: 1022, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !846)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !52, !555}
!846 = !{!847, !848, !849}
!847 = !DILocalVariable(name: "n", arg: 1, scope: !843, file: !592, line: 1021, type: !52)
!848 = !DILocalVariable(name: "h", arg: 2, scope: !843, file: !592, line: 1021, type: !555)
!849 = !DILocalVariable(name: "first", scope: !843, file: !592, line: 1023, type: !52)
!850 = !DILocation(line: 1021, column: 54, scope: !843)
!851 = !DILocation(line: 1021, column: 76, scope: !843)
!852 = !DILocation(line: 1023, column: 2, scope: !843)
!853 = !DILocation(line: 1023, column: 21, scope: !843)
!854 = !DILocation(line: 1023, column: 29, scope: !843)
!855 = !DILocation(line: 1023, column: 32, scope: !843)
!856 = !DILocation(line: 1024, column: 2, scope: !843)
!857 = !DILocation(line: 1024, column: 2, scope: !858)
!858 = distinct !DILexicalBlock(scope: !843, file: !592, line: 1024, column: 2)
!859 = !DILocation(line: 1024, column: 2, scope: !860)
!860 = distinct !DILexicalBlock(scope: !858, file: !592, line: 1024, column: 2)
!861 = !DILocation(line: 1024, column: 2, scope: !862)
!862 = distinct !DILexicalBlock(scope: !858, file: !592, line: 1024, column: 2)
!863 = !DILocation(line: 1025, column: 6, scope: !864)
!864 = distinct !DILexicalBlock(scope: !843, file: !592, line: 1025, column: 6)
!865 = !DILocation(line: 1025, column: 6, scope: !843)
!866 = !DILocation(line: 1026, column: 3, scope: !864)
!867 = !DILocation(line: 1026, column: 3, scope: !868)
!868 = distinct !DILexicalBlock(scope: !864, file: !592, line: 1026, column: 3)
!869 = !DILocation(line: 1026, column: 3, scope: !870)
!870 = distinct !DILexicalBlock(scope: !868, file: !592, line: 1026, column: 3)
!871 = !DILocation(line: 1026, column: 3, scope: !872)
!872 = distinct !DILexicalBlock(scope: !868, file: !592, line: 1026, column: 3)
!873 = !DILocation(line: 1027, column: 2, scope: !843)
!874 = !DILocation(line: 1027, column: 2, scope: !875)
!875 = distinct !DILexicalBlock(scope: !843, file: !592, line: 1027, column: 2)
!876 = !DILocation(line: 1027, column: 2, scope: !877)
!877 = distinct !DILexicalBlock(scope: !875, file: !592, line: 1027, column: 2)
!878 = !DILocation(line: 1027, column: 2, scope: !879)
!879 = distinct !DILexicalBlock(scope: !875, file: !592, line: 1027, column: 2)
!880 = !DILocation(line: 1028, column: 2, scope: !843)
!881 = !DILocation(line: 1028, column: 2, scope: !882)
!882 = distinct !DILexicalBlock(scope: !843, file: !592, line: 1028, column: 2)
!883 = !DILocation(line: 1028, column: 2, scope: !884)
!884 = distinct !DILexicalBlock(scope: !882, file: !592, line: 1028, column: 2)
!885 = !DILocation(line: 1028, column: 2, scope: !886)
!886 = distinct !DILexicalBlock(scope: !882, file: !592, line: 1028, column: 2)
!887 = !DILocation(line: 1029, column: 1, scope: !843)
!888 = distinct !DISubprogram(name: "hash_32", scope: !889, file: !889, line: 65, type: !890, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !892)
!889 = !DIFile(filename: "./include/linux/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "38c20be4852b6978c0a05b86a66f0046")
!890 = !DISubroutineType(types: !891)
!891 = !{!64, !64, !33}
!892 = !{!893, !894}
!893 = !DILocalVariable(name: "val", arg: 1, scope: !888, file: !889, line: 65, type: !64)
!894 = !DILocalVariable(name: "bits", arg: 2, scope: !888, file: !889, line: 65, type: !33)
!895 = !DILocation(line: 65, column: 31, scope: !888)
!896 = !DILocation(line: 65, column: 49, scope: !888)
!897 = !DILocation(line: 68, column: 19, scope: !888)
!898 = !DILocation(line: 68, column: 9, scope: !888)
!899 = !DILocation(line: 68, column: 33, scope: !888)
!900 = !DILocation(line: 68, column: 31, scope: !888)
!901 = !DILocation(line: 68, column: 24, scope: !888)
!902 = !DILocation(line: 68, column: 2, scope: !888)
!903 = distinct !DISubprogram(name: "sidtab_hash_stats", scope: !2, file: !2, line: 114, type: !904, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !906)
!904 = !DISubroutineType(types: !905)
!905 = !{!28, !170, !105}
!906 = !{!907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !921, !923, !925, !928, !930}
!907 = !DILocalVariable(name: "sidtab", arg: 1, scope: !903, file: !2, line: 114, type: !170)
!908 = !DILocalVariable(name: "page", arg: 2, scope: !903, file: !2, line: 114, type: !105)
!909 = !DILocalVariable(name: "i", scope: !903, file: !2, line: 116, type: !28)
!910 = !DILocalVariable(name: "chain_len", scope: !903, file: !2, line: 117, type: !28)
!911 = !DILocalVariable(name: "slots_used", scope: !903, file: !2, line: 118, type: !28)
!912 = !DILocalVariable(name: "entries", scope: !903, file: !2, line: 119, type: !28)
!913 = !DILocalVariable(name: "max_chain_len", scope: !903, file: !2, line: 120, type: !28)
!914 = !DILocalVariable(name: "cur_bucket", scope: !903, file: !2, line: 121, type: !28)
!915 = !DILocalVariable(name: "entry", scope: !903, file: !2, line: 122, type: !59)
!916 = !DILocalVariable(name: "____ptr", scope: !917, file: !2, line: 125, type: !52)
!917 = distinct !DILexicalBlock(scope: !918, file: !2, line: 125, column: 2)
!918 = distinct !DILexicalBlock(scope: !919, file: !2, line: 125, column: 2)
!919 = distinct !DILexicalBlock(scope: !920, file: !2, line: 125, column: 2)
!920 = distinct !DILexicalBlock(scope: !903, file: !2, line: 125, column: 2)
!921 = !DILocalVariable(name: "__UNIQUE_ID_rcu559", scope: !922, file: !2, line: 125, type: !52)
!922 = distinct !DILexicalBlock(scope: !917, file: !2, line: 125, column: 2)
!923 = !DILocalVariable(name: "__mptr", scope: !924, file: !2, line: 125, type: !48)
!924 = distinct !DILexicalBlock(scope: !917, file: !2, line: 125, column: 2)
!925 = !DILocalVariable(name: "____ptr", scope: !926, file: !2, line: 125, type: !52)
!926 = distinct !DILexicalBlock(scope: !927, file: !2, line: 125, column: 2)
!927 = distinct !DILexicalBlock(scope: !918, file: !2, line: 125, column: 2)
!928 = !DILocalVariable(name: "__UNIQUE_ID_rcu561", scope: !929, file: !2, line: 125, type: !52)
!929 = distinct !DILexicalBlock(scope: !926, file: !2, line: 125, column: 2)
!930 = !DILocalVariable(name: "__mptr", scope: !931, file: !2, line: 125, type: !48)
!931 = distinct !DILexicalBlock(scope: !926, file: !2, line: 125, column: 2)
!932 = !DILocation(line: 114, column: 38, scope: !903)
!933 = !DILocation(line: 114, column: 52, scope: !903)
!934 = !DILocation(line: 116, column: 2, scope: !903)
!935 = !DILocation(line: 116, column: 6, scope: !903)
!936 = !DILocation(line: 117, column: 2, scope: !903)
!937 = !DILocation(line: 117, column: 6, scope: !903)
!938 = !DILocation(line: 118, column: 2, scope: !903)
!939 = !DILocation(line: 118, column: 6, scope: !903)
!940 = !DILocation(line: 119, column: 2, scope: !903)
!941 = !DILocation(line: 119, column: 6, scope: !903)
!942 = !DILocation(line: 120, column: 2, scope: !903)
!943 = !DILocation(line: 120, column: 6, scope: !903)
!944 = !DILocation(line: 121, column: 2, scope: !903)
!945 = !DILocation(line: 121, column: 6, scope: !903)
!946 = !DILocation(line: 122, column: 2, scope: !903)
!947 = !DILocation(line: 122, column: 23, scope: !903)
!948 = !DILocation(line: 124, column: 2, scope: !903)
!949 = !DILocation(line: 125, column: 2, scope: !920)
!950 = !DILocation(line: 125, column: 2, scope: !919)
!951 = !DILocation(line: 0, scope: !919)
!952 = !DILocation(line: 125, column: 2, scope: !917)
!953 = !DILocation(line: 125, column: 2, scope: !922)
!954 = !DILocation(line: 125, column: 2, scope: !955)
!955 = distinct !DILexicalBlock(scope: !922, file: !2, line: 125, column: 2)
!956 = !DILocation(line: 125, column: 2, scope: !957)
!957 = distinct !DILexicalBlock(scope: !955, file: !2, line: 125, column: 2)
!958 = !DILocation(line: 125, column: 2, scope: !924)
!959 = !DILocation(line: 125, column: 2, scope: !918)
!960 = !DILocation(line: 125, column: 2, scope: !927)
!961 = !DILocation(line: 126, column: 10, scope: !962)
!962 = distinct !DILexicalBlock(scope: !927, file: !2, line: 125, column: 60)
!963 = !DILocation(line: 127, column: 7, scope: !964)
!964 = distinct !DILexicalBlock(scope: !962, file: !2, line: 127, column: 7)
!965 = !DILocation(line: 127, column: 12, scope: !964)
!966 = !DILocation(line: 127, column: 9, scope: !964)
!967 = !DILocation(line: 127, column: 7, scope: !962)
!968 = !DILocation(line: 128, column: 13, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !2, line: 127, column: 24)
!970 = !DILocation(line: 129, column: 8, scope: !971)
!971 = distinct !DILexicalBlock(scope: !969, file: !2, line: 129, column: 8)
!972 = !DILocation(line: 129, column: 18, scope: !971)
!973 = !DILocation(line: 129, column: 8, scope: !969)
!974 = !DILocation(line: 130, column: 15, scope: !971)
!975 = !DILocation(line: 130, column: 5, scope: !971)
!976 = !DILocation(line: 131, column: 3, scope: !969)
!977 = !DILocation(line: 132, column: 17, scope: !978)
!978 = distinct !DILexicalBlock(scope: !964, file: !2, line: 131, column: 10)
!979 = !DILocation(line: 132, column: 15, scope: !978)
!980 = !DILocation(line: 133, column: 8, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !2, line: 133, column: 8)
!982 = !DILocation(line: 133, column: 20, scope: !981)
!983 = !DILocation(line: 133, column: 18, scope: !981)
!984 = !DILocation(line: 133, column: 8, scope: !978)
!985 = !DILocation(line: 134, column: 21, scope: !981)
!986 = !DILocation(line: 134, column: 19, scope: !981)
!987 = !DILocation(line: 134, column: 5, scope: !981)
!988 = !DILocation(line: 135, column: 14, scope: !978)
!989 = !DILocation(line: 137, column: 2, scope: !962)
!990 = !DILocation(line: 125, column: 2, scope: !926)
!991 = !DILocation(line: 125, column: 2, scope: !929)
!992 = !DILocation(line: 125, column: 2, scope: !993)
!993 = distinct !DILexicalBlock(scope: !929, file: !2, line: 125, column: 2)
!994 = !DILocation(line: 125, column: 2, scope: !995)
!995 = distinct !DILexicalBlock(scope: !993, file: !2, line: 125, column: 2)
!996 = !DILocation(line: 125, column: 2, scope: !931)
!997 = distinct !{!997, !959, !998, !525, !526}
!998 = !DILocation(line: 137, column: 2, scope: !918)
!999 = distinct !{!999, !949, !1000, !525, !526}
!1000 = !DILocation(line: 137, column: 2, scope: !920)
!1001 = !DILocation(line: 138, column: 2, scope: !903)
!1002 = !DILocation(line: 140, column: 6, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !903, file: !2, line: 140, column: 6)
!1004 = !DILocation(line: 140, column: 18, scope: !1003)
!1005 = !DILocation(line: 140, column: 16, scope: !1003)
!1006 = !DILocation(line: 140, column: 6, scope: !903)
!1007 = !DILocation(line: 141, column: 19, scope: !1003)
!1008 = !DILocation(line: 141, column: 17, scope: !1003)
!1009 = !DILocation(line: 141, column: 3, scope: !1003)
!1010 = !DILocation(line: 143, column: 19, scope: !903)
!1011 = !DILocation(line: 144, column: 28, scope: !903)
!1012 = !DILocation(line: 145, column: 5, scope: !903)
!1013 = !DILocation(line: 145, column: 38, scope: !903)
!1014 = !DILocation(line: 143, column: 9, scope: !903)
!1015 = !DILocation(line: 146, column: 1, scope: !903)
!1016 = !DILocation(line: 143, column: 2, scope: !903)
!1017 = distinct !DISubprogram(name: "rcu_read_lock", scope: !1018, file: !1018, line: 782, type: !1019, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29)
!1018 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null}
!1021 = !DILocation(line: 784, column: 2, scope: !1017)
!1022 = !DILocation(line: 786, column: 2, scope: !1017)
!1023 = !DILocation(line: 786, column: 2, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1017, file: !1018, line: 786, column: 2)
!1025 = !DILocation(line: 787, column: 2, scope: !1017)
!1026 = !DILocation(line: 787, column: 2, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1017, file: !1018, line: 787, column: 2)
!1028 = !DILocation(line: 789, column: 1, scope: !1017)
!1029 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !1018, file: !1018, line: 813, type: !1019, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29)
!1030 = !DILocation(line: 815, column: 2, scope: !1029)
!1031 = !DILocation(line: 815, column: 2, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1029, file: !1018, line: 815, column: 2)
!1033 = !DILocation(line: 818, column: 2, scope: !1029)
!1034 = !DILocation(line: 819, column: 2, scope: !1029)
!1035 = !DILocation(line: 819, column: 2, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1029, file: !1018, line: 819, column: 2)
!1037 = !DILocation(line: 820, column: 1, scope: !1029)
!1038 = !DISubprogram(name: "scnprintf", scope: !1039, file: !1039, line: 14, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1039 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!28, !105, !148, !1042, null}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1044 = distinct !DISubprogram(name: "sidtab_search_entry", scope: !2, file: !2, line: 255, type: !1045, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1047)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!59, !170, !64}
!1047 = !{!1048, !1049}
!1048 = !DILocalVariable(name: "s", arg: 1, scope: !1044, file: !2, line: 255, type: !170)
!1049 = !DILocalVariable(name: "sid", arg: 2, scope: !1044, file: !2, line: 255, type: !64)
!1050 = !DILocation(line: 255, column: 57, scope: !1044)
!1051 = !DILocation(line: 255, column: 64, scope: !1044)
!1052 = !DILocation(line: 257, column: 28, scope: !1044)
!1053 = !DILocation(line: 257, column: 31, scope: !1044)
!1054 = !DILocation(line: 257, column: 9, scope: !1044)
!1055 = !DILocation(line: 257, column: 2, scope: !1044)
!1056 = distinct !DISubprogram(name: "sidtab_search_core", scope: !2, file: !2, line: 238, type: !1057, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1059)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!59, !170, !64, !28}
!1059 = !{!1060, !1061, !1062, !1063}
!1060 = !DILocalVariable(name: "s", arg: 1, scope: !1056, file: !2, line: 238, type: !170)
!1061 = !DILocalVariable(name: "sid", arg: 2, scope: !1056, file: !2, line: 238, type: !64)
!1062 = !DILocalVariable(name: "force", arg: 3, scope: !1056, file: !2, line: 239, type: !28)
!1063 = !DILocalVariable(name: "entry", scope: !1064, file: !2, line: 242, type: !59)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 241, column: 16)
!1065 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 241, column: 6)
!1066 = !DILocation(line: 238, column: 63, scope: !1056)
!1067 = !DILocation(line: 238, column: 70, scope: !1056)
!1068 = !DILocation(line: 239, column: 17, scope: !1056)
!1069 = !DILocation(line: 241, column: 6, scope: !1065)
!1070 = !DILocation(line: 241, column: 10, scope: !1065)
!1071 = !DILocation(line: 241, column: 6, scope: !1056)
!1072 = !DILocation(line: 242, column: 3, scope: !1064)
!1073 = !DILocation(line: 242, column: 24, scope: !1064)
!1074 = !DILocation(line: 244, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 244, column: 7)
!1076 = !DILocation(line: 244, column: 11, scope: !1075)
!1077 = !DILocation(line: 244, column: 7, scope: !1064)
!1078 = !DILocation(line: 245, column: 26, scope: !1075)
!1079 = !DILocation(line: 245, column: 29, scope: !1075)
!1080 = !DILocation(line: 245, column: 12, scope: !1075)
!1081 = !DILocation(line: 245, column: 10, scope: !1075)
!1082 = !DILocation(line: 245, column: 4, scope: !1075)
!1083 = !DILocation(line: 247, column: 34, scope: !1075)
!1084 = !DILocation(line: 247, column: 37, scope: !1075)
!1085 = !DILocation(line: 247, column: 12, scope: !1075)
!1086 = !DILocation(line: 247, column: 10, scope: !1075)
!1087 = !DILocation(line: 248, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 248, column: 7)
!1089 = !DILocation(line: 248, column: 13, scope: !1088)
!1090 = !DILocation(line: 248, column: 18, scope: !1088)
!1091 = !DILocation(line: 248, column: 25, scope: !1088)
!1092 = !DILocation(line: 248, column: 33, scope: !1088)
!1093 = !DILocation(line: 248, column: 37, scope: !1088)
!1094 = !DILocation(line: 248, column: 40, scope: !1088)
!1095 = !DILocation(line: 248, column: 7, scope: !1064)
!1096 = !DILocation(line: 249, column: 11, scope: !1088)
!1097 = !DILocation(line: 249, column: 4, scope: !1088)
!1098 = !DILocation(line: 250, column: 2, scope: !1065)
!1099 = !DILocation(line: 250, column: 2, scope: !1064)
!1100 = !DILocation(line: 252, column: 31, scope: !1056)
!1101 = !DILocation(line: 252, column: 9, scope: !1056)
!1102 = !DILocation(line: 252, column: 2, scope: !1056)
!1103 = !DILocation(line: 253, column: 1, scope: !1056)
!1104 = distinct !DISubprogram(name: "sidtab_search_entry_force", scope: !2, file: !2, line: 260, type: !1045, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1105)
!1105 = !{!1106, !1107}
!1106 = !DILocalVariable(name: "s", arg: 1, scope: !1104, file: !2, line: 260, type: !170)
!1107 = !DILocalVariable(name: "sid", arg: 2, scope: !1104, file: !2, line: 260, type: !64)
!1108 = !DILocation(line: 260, column: 63, scope: !1104)
!1109 = !DILocation(line: 260, column: 70, scope: !1104)
!1110 = !DILocation(line: 262, column: 28, scope: !1104)
!1111 = !DILocation(line: 262, column: 31, scope: !1104)
!1112 = !DILocation(line: 262, column: 9, scope: !1104)
!1113 = !DILocation(line: 262, column: 2, scope: !1104)
!1114 = distinct !DISubprogram(name: "sidtab_context_to_sid", scope: !2, file: !2, line: 265, type: !1115, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1118)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!28, !170, !616, !1117}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!1118 = !{!1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1133, !1134, !1137}
!1119 = !DILocalVariable(name: "s", arg: 1, scope: !1114, file: !2, line: 265, type: !170)
!1120 = !DILocalVariable(name: "context", arg: 2, scope: !1114, file: !2, line: 265, type: !616)
!1121 = !DILocalVariable(name: "sid", arg: 3, scope: !1114, file: !2, line: 266, type: !1117)
!1122 = !DILocalVariable(name: "flags", scope: !1114, file: !2, line: 268, type: !97)
!1123 = !DILocalVariable(name: "count", scope: !1114, file: !2, line: 269, type: !64)
!1124 = !DILocalVariable(name: "hash", scope: !1114, file: !2, line: 269, type: !64)
!1125 = !DILocalVariable(name: "convert", scope: !1114, file: !2, line: 270, type: !197)
!1126 = !DILocalVariable(name: "dst", scope: !1114, file: !2, line: 271, type: !59)
!1127 = !DILocalVariable(name: "dst_convert", scope: !1114, file: !2, line: 271, type: !59)
!1128 = !DILocalVariable(name: "rc", scope: !1114, file: !2, line: 272, type: !28)
!1129 = !DILocalVariable(name: "__dummy", scope: !1130, file: !2, line: 279, type: !97)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !2, line: 279, column: 2)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !2, line: 279, column: 2)
!1132 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 279, column: 2)
!1133 = !DILocalVariable(name: "__dummy2", scope: !1130, file: !2, line: 279, type: !97)
!1134 = !DILocalVariable(name: "target", scope: !1135, file: !2, line: 321, type: !170)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 320, column: 15)
!1136 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 320, column: 6)
!1137 = !DILabel(scope: !1114, name: "out_unlock", file: !2, line: 356)
!1138 = !DILocation(line: 265, column: 42, scope: !1114)
!1139 = !DILocation(line: 265, column: 61, scope: !1114)
!1140 = !DILocation(line: 266, column: 11, scope: !1114)
!1141 = !DILocation(line: 268, column: 2, scope: !1114)
!1142 = !DILocation(line: 268, column: 16, scope: !1114)
!1143 = !DILocation(line: 269, column: 2, scope: !1114)
!1144 = !DILocation(line: 269, column: 6, scope: !1114)
!1145 = !DILocation(line: 269, column: 13, scope: !1114)
!1146 = !DILocation(line: 269, column: 41, scope: !1114)
!1147 = !DILocation(line: 269, column: 20, scope: !1114)
!1148 = !DILocation(line: 270, column: 2, scope: !1114)
!1149 = !DILocation(line: 270, column: 32, scope: !1114)
!1150 = !DILocation(line: 271, column: 2, scope: !1114)
!1151 = !DILocation(line: 271, column: 23, scope: !1114)
!1152 = !DILocation(line: 271, column: 29, scope: !1114)
!1153 = !DILocation(line: 272, column: 2, scope: !1114)
!1154 = !DILocation(line: 272, column: 6, scope: !1114)
!1155 = !DILocation(line: 274, column: 24, scope: !1114)
!1156 = !DILocation(line: 274, column: 27, scope: !1114)
!1157 = !DILocation(line: 274, column: 36, scope: !1114)
!1158 = !DILocation(line: 274, column: 9, scope: !1114)
!1159 = !DILocation(line: 274, column: 3, scope: !1114)
!1160 = !DILocation(line: 274, column: 7, scope: !1114)
!1161 = !DILocation(line: 275, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 275, column: 6)
!1163 = !DILocation(line: 275, column: 6, scope: !1162)
!1164 = !DILocation(line: 275, column: 6, scope: !1114)
!1165 = !DILocation(line: 276, column: 3, scope: !1162)
!1166 = !DILocation(line: 279, column: 2, scope: !1114)
!1167 = !DILocation(line: 279, column: 2, scope: !1132)
!1168 = !DILocation(line: 279, column: 2, scope: !1130)
!1169 = !DILocation(line: 279, column: 2, scope: !1131)
!1170 = !DILocation(line: 281, column: 5, scope: !1114)
!1171 = !DILocation(line: 282, column: 24, scope: !1114)
!1172 = !DILocation(line: 282, column: 27, scope: !1114)
!1173 = !DILocation(line: 282, column: 36, scope: !1114)
!1174 = !DILocation(line: 282, column: 9, scope: !1114)
!1175 = !DILocation(line: 282, column: 3, scope: !1114)
!1176 = !DILocation(line: 282, column: 7, scope: !1114)
!1177 = !DILocation(line: 283, column: 7, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 283, column: 6)
!1179 = !DILocation(line: 283, column: 6, scope: !1178)
!1180 = !DILocation(line: 283, column: 6, scope: !1114)
!1181 = !DILocation(line: 284, column: 3, scope: !1178)
!1182 = !DILocation(line: 286, column: 6, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 286, column: 6)
!1184 = !{i8 0, i8 2}
!1185 = !{}
!1186 = !DILocation(line: 286, column: 6, scope: !1114)
!1187 = !DILocation(line: 291, column: 6, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1183, file: !2, line: 286, column: 27)
!1189 = !DILocation(line: 292, column: 3, scope: !1188)
!1190 = !DILocation(line: 295, column: 10, scope: !1114)
!1191 = !DILocation(line: 295, column: 13, scope: !1114)
!1192 = !DILocation(line: 295, column: 8, scope: !1114)
!1193 = !DILocation(line: 298, column: 5, scope: !1114)
!1194 = !DILocation(line: 299, column: 6, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 299, column: 6)
!1196 = !DILocation(line: 299, column: 12, scope: !1195)
!1197 = !DILocation(line: 299, column: 6, scope: !1114)
!1198 = !DILocation(line: 300, column: 3, scope: !1195)
!1199 = !DILocation(line: 303, column: 5, scope: !1114)
!1200 = !DILocation(line: 304, column: 25, scope: !1114)
!1201 = !DILocation(line: 304, column: 28, scope: !1114)
!1202 = !DILocation(line: 304, column: 8, scope: !1114)
!1203 = !DILocation(line: 304, column: 6, scope: !1114)
!1204 = !DILocation(line: 305, column: 7, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 305, column: 6)
!1206 = !DILocation(line: 305, column: 6, scope: !1114)
!1207 = !DILocation(line: 306, column: 3, scope: !1205)
!1208 = !DILocation(line: 308, column: 13, scope: !1114)
!1209 = !DILocation(line: 308, column: 2, scope: !1114)
!1210 = !DILocation(line: 308, column: 7, scope: !1114)
!1211 = !DILocation(line: 308, column: 11, scope: !1114)
!1212 = !DILocation(line: 309, column: 14, scope: !1114)
!1213 = !DILocation(line: 309, column: 2, scope: !1114)
!1214 = !DILocation(line: 309, column: 7, scope: !1114)
!1215 = !DILocation(line: 309, column: 12, scope: !1114)
!1216 = !DILocation(line: 311, column: 20, scope: !1114)
!1217 = !DILocation(line: 311, column: 25, scope: !1114)
!1218 = !DILocation(line: 311, column: 34, scope: !1114)
!1219 = !DILocation(line: 311, column: 7, scope: !1114)
!1220 = !DILocation(line: 311, column: 5, scope: !1114)
!1221 = !DILocation(line: 312, column: 6, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 312, column: 6)
!1223 = !DILocation(line: 312, column: 6, scope: !1114)
!1224 = !DILocation(line: 313, column: 3, scope: !1222)
!1225 = !DILocation(line: 319, column: 12, scope: !1114)
!1226 = !DILocation(line: 319, column: 15, scope: !1114)
!1227 = !DILocation(line: 319, column: 10, scope: !1114)
!1228 = !DILocation(line: 320, column: 6, scope: !1136)
!1229 = !DILocation(line: 320, column: 6, scope: !1114)
!1230 = !DILocation(line: 321, column: 3, scope: !1135)
!1231 = !DILocation(line: 321, column: 18, scope: !1135)
!1232 = !DILocation(line: 321, column: 27, scope: !1135)
!1233 = !DILocation(line: 321, column: 36, scope: !1135)
!1234 = !DILocation(line: 323, column: 6, scope: !1135)
!1235 = !DILocation(line: 324, column: 34, scope: !1135)
!1236 = !DILocation(line: 324, column: 42, scope: !1135)
!1237 = !DILocation(line: 324, column: 17, scope: !1135)
!1238 = !DILocation(line: 324, column: 15, scope: !1135)
!1239 = !DILocation(line: 325, column: 8, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 325, column: 7)
!1241 = !DILocation(line: 325, column: 7, scope: !1135)
!1242 = !DILocation(line: 326, column: 21, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 325, column: 21)
!1244 = !DILocation(line: 326, column: 26, scope: !1243)
!1245 = !DILocation(line: 326, column: 4, scope: !1243)
!1246 = !DILocation(line: 327, column: 4, scope: !1243)
!1247 = !DILocation(line: 330, column: 33, scope: !1135)
!1248 = !DILocation(line: 330, column: 42, scope: !1135)
!1249 = !DILocation(line: 331, column: 12, scope: !1135)
!1250 = !DILocation(line: 331, column: 22, scope: !1135)
!1251 = !DILocation(line: 331, column: 35, scope: !1135)
!1252 = !DILocation(line: 330, column: 8, scope: !1135)
!1253 = !DILocation(line: 330, column: 6, scope: !1135)
!1254 = !DILocation(line: 333, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 333, column: 7)
!1256 = !DILocation(line: 333, column: 7, scope: !1135)
!1257 = !DILocation(line: 334, column: 21, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 333, column: 11)
!1259 = !DILocation(line: 334, column: 26, scope: !1258)
!1260 = !DILocation(line: 334, column: 4, scope: !1258)
!1261 = !DILocation(line: 335, column: 4, scope: !1258)
!1262 = !DILocation(line: 337, column: 22, scope: !1135)
!1263 = !DILocation(line: 337, column: 3, scope: !1135)
!1264 = !DILocation(line: 337, column: 16, scope: !1135)
!1265 = !DILocation(line: 337, column: 20, scope: !1135)
!1266 = !DILocation(line: 338, column: 45, scope: !1135)
!1267 = !DILocation(line: 338, column: 58, scope: !1135)
!1268 = !DILocation(line: 338, column: 23, scope: !1135)
!1269 = !DILocation(line: 338, column: 3, scope: !1135)
!1270 = !DILocation(line: 338, column: 16, scope: !1135)
!1271 = !DILocation(line: 338, column: 21, scope: !1135)
!1272 = !DILocation(line: 339, column: 19, scope: !1135)
!1273 = !DILocation(line: 339, column: 25, scope: !1135)
!1274 = !DILocation(line: 339, column: 3, scope: !1135)
!1275 = !DILocation(line: 339, column: 11, scope: !1135)
!1276 = !DILocation(line: 339, column: 17, scope: !1135)
!1277 = !DILocation(line: 341, column: 3, scope: !1135)
!1278 = !DILocation(line: 343, column: 2, scope: !1136)
!1279 = !DILocation(line: 343, column: 2, scope: !1135)
!1280 = !DILocation(line: 345, column: 6, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 345, column: 6)
!1282 = !DILocation(line: 345, column: 15, scope: !1281)
!1283 = !DILocation(line: 345, column: 6, scope: !1114)
!1284 = !DILocation(line: 346, column: 3, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1281, file: !2, line: 346, column: 3)
!1286 = !DILocation(line: 346, column: 3, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 346, column: 3)
!1288 = !DILocation(line: 346, column: 3, scope: !1281)
!1289 = !DILocation(line: 349, column: 9, scope: !1114)
!1290 = !DILocation(line: 349, column: 3, scope: !1114)
!1291 = !DILocation(line: 349, column: 7, scope: !1114)
!1292 = !DILocation(line: 352, column: 2, scope: !1114)
!1293 = !DILocation(line: 352, column: 2, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 352, column: 2)
!1295 = !DILocation(line: 352, column: 2, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 352, column: 2)
!1297 = !DILocation(line: 352, column: 2, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 352, column: 2)
!1299 = !DILocation(line: 352, column: 2, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 352, column: 2)
!1301 = !{i64 2158027608}
!1302 = !DILocation(line: 352, column: 2, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !2, line: 352, column: 2)
!1304 = !DILocation(line: 352, column: 2, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 352, column: 2)
!1306 = !DILocation(line: 352, column: 2, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1303, file: !2, line: 352, column: 2)
!1308 = !DILocation(line: 353, column: 2, scope: !1114)
!1309 = !DILocation(line: 355, column: 5, scope: !1114)
!1310 = !DILocation(line: 355, column: 2, scope: !1114)
!1311 = !DILocation(line: 356, column: 1, scope: !1114)
!1312 = !DILocation(line: 357, column: 26, scope: !1114)
!1313 = !DILocation(line: 357, column: 29, scope: !1114)
!1314 = !DILocation(line: 357, column: 35, scope: !1114)
!1315 = !DILocation(line: 357, column: 2, scope: !1114)
!1316 = !DILocation(line: 358, column: 9, scope: !1114)
!1317 = !DILocation(line: 358, column: 2, scope: !1114)
!1318 = !DILocation(line: 359, column: 1, scope: !1114)
!1319 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !1320, file: !1320, line: 32, type: !1321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1320 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!97, !582}
!1323 = distinct !DISubprogram(name: "sidtab_do_lookup", scope: !2, file: !2, line: 181, type: !1057, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1330, !1331, !1332}
!1325 = !DILocalVariable(name: "s", arg: 1, scope: !1323, file: !2, line: 181, type: !170)
!1326 = !DILocalVariable(name: "index", arg: 2, scope: !1323, file: !2, line: 181, type: !64)
!1327 = !DILocalVariable(name: "alloc", arg: 3, scope: !1323, file: !2, line: 182, type: !28)
!1328 = !DILocalVariable(name: "entry", scope: !1323, file: !2, line: 184, type: !1329)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!1330 = !DILocalVariable(name: "level", scope: !1323, file: !2, line: 185, type: !64)
!1331 = !DILocalVariable(name: "capacity_shift", scope: !1323, file: !2, line: 185, type: !64)
!1332 = !DILocalVariable(name: "leaf_index", scope: !1323, file: !2, line: 185, type: !64)
!1333 = !DILocation(line: 181, column: 61, scope: !1323)
!1334 = !DILocation(line: 181, column: 68, scope: !1323)
!1335 = !DILocation(line: 182, column: 15, scope: !1323)
!1336 = !DILocation(line: 184, column: 2, scope: !1323)
!1337 = !DILocation(line: 184, column: 28, scope: !1323)
!1338 = !DILocation(line: 185, column: 2, scope: !1323)
!1339 = !DILocation(line: 185, column: 6, scope: !1323)
!1340 = !DILocation(line: 185, column: 13, scope: !1323)
!1341 = !DILocation(line: 185, column: 29, scope: !1323)
!1342 = !DILocation(line: 185, column: 42, scope: !1323)
!1343 = !DILocation(line: 185, column: 48, scope: !1323)
!1344 = !DILocation(line: 188, column: 34, scope: !1323)
!1345 = !DILocation(line: 188, column: 40, scope: !1323)
!1346 = !DILocation(line: 188, column: 10, scope: !1323)
!1347 = !DILocation(line: 188, column: 8, scope: !1323)
!1348 = !DILocation(line: 189, column: 19, scope: !1323)
!1349 = !DILocation(line: 189, column: 25, scope: !1323)
!1350 = !DILocation(line: 189, column: 17, scope: !1323)
!1351 = !DILocation(line: 192, column: 6, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 192, column: 6)
!1353 = !DILocation(line: 192, column: 12, scope: !1352)
!1354 = !DILocation(line: 192, column: 34, scope: !1352)
!1355 = !DILocation(line: 192, column: 37, scope: !1352)
!1356 = !DILocation(line: 192, column: 15, scope: !1352)
!1357 = !DILocation(line: 192, column: 44, scope: !1352)
!1358 = !DILocation(line: 192, column: 6, scope: !1323)
!1359 = !DILocation(line: 193, column: 3, scope: !1352)
!1360 = !DILocation(line: 196, column: 11, scope: !1323)
!1361 = !DILocation(line: 196, column: 14, scope: !1323)
!1362 = !DILocation(line: 196, column: 20, scope: !1323)
!1363 = !DILocation(line: 196, column: 8, scope: !1323)
!1364 = !DILocation(line: 197, column: 2, scope: !1323)
!1365 = !DILocation(line: 197, column: 9, scope: !1323)
!1366 = !DILocation(line: 197, column: 15, scope: !1323)
!1367 = !DILocation(line: 198, column: 18, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 197, column: 21)
!1369 = !DILocation(line: 199, column: 3, scope: !1368)
!1370 = !DILocation(line: 201, column: 12, scope: !1368)
!1371 = !DILocation(line: 201, column: 19, scope: !1368)
!1372 = !DILocation(line: 201, column: 30, scope: !1368)
!1373 = !DILocation(line: 201, column: 38, scope: !1368)
!1374 = !DILocation(line: 201, column: 52, scope: !1368)
!1375 = !DILocation(line: 201, column: 49, scope: !1368)
!1376 = !DILocation(line: 201, column: 9, scope: !1368)
!1377 = !DILocation(line: 202, column: 28, scope: !1368)
!1378 = !DILocation(line: 202, column: 25, scope: !1368)
!1379 = !DILocation(line: 202, column: 44, scope: !1368)
!1380 = !DILocation(line: 202, column: 14, scope: !1368)
!1381 = !DILocation(line: 204, column: 8, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1368, file: !2, line: 204, column: 7)
!1383 = !DILocation(line: 204, column: 15, scope: !1382)
!1384 = !DILocation(line: 204, column: 7, scope: !1368)
!1385 = !DILocation(line: 205, column: 8, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 205, column: 8)
!1387 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 204, column: 26)
!1388 = !DILocation(line: 205, column: 8, scope: !1387)
!1389 = !DILocation(line: 206, column: 24, scope: !1386)
!1390 = !DILocation(line: 206, column: 5, scope: !1386)
!1391 = !DILocation(line: 206, column: 22, scope: !1386)
!1392 = !DILocation(line: 208, column: 9, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 208, column: 8)
!1394 = !DILocation(line: 208, column: 16, scope: !1393)
!1395 = !DILocation(line: 208, column: 8, scope: !1387)
!1396 = !DILocation(line: 209, column: 5, scope: !1393)
!1397 = !DILocation(line: 210, column: 3, scope: !1387)
!1398 = distinct !{!1398, !1364, !1399, !525, !526}
!1399 = !DILocation(line: 211, column: 2, scope: !1323)
!1400 = !DILocation(line: 212, column: 7, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1323, file: !2, line: 212, column: 6)
!1402 = !DILocation(line: 212, column: 14, scope: !1401)
!1403 = !DILocation(line: 212, column: 6, scope: !1323)
!1404 = !DILocation(line: 213, column: 7, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 213, column: 7)
!1406 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 212, column: 24)
!1407 = !DILocation(line: 213, column: 7, scope: !1406)
!1408 = !DILocation(line: 214, column: 22, scope: !1405)
!1409 = !DILocation(line: 214, column: 4, scope: !1405)
!1410 = !DILocation(line: 214, column: 20, scope: !1405)
!1411 = !DILocation(line: 216, column: 8, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 216, column: 7)
!1413 = !DILocation(line: 216, column: 15, scope: !1412)
!1414 = !DILocation(line: 216, column: 7, scope: !1406)
!1415 = !DILocation(line: 217, column: 4, scope: !1412)
!1416 = !DILocation(line: 218, column: 2, scope: !1406)
!1417 = !DILocation(line: 219, column: 10, scope: !1323)
!1418 = !DILocation(line: 219, column: 17, scope: !1323)
!1419 = !DILocation(line: 219, column: 27, scope: !1323)
!1420 = !DILocation(line: 219, column: 35, scope: !1323)
!1421 = !DILocation(line: 219, column: 41, scope: !1323)
!1422 = !DILocation(line: 219, column: 2, scope: !1323)
!1423 = !DILocation(line: 220, column: 1, scope: !1323)
!1424 = distinct !DISubprogram(name: "context_destroy", scope: !71, file: !71, line: 177, type: !1425, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !616}
!1427 = !{!1428}
!1428 = !DILocalVariable(name: "c", arg: 1, scope: !1424, file: !71, line: 177, type: !616)
!1429 = !DILocation(line: 177, column: 52, scope: !1424)
!1430 = !DILocation(line: 179, column: 22, scope: !1424)
!1431 = !DILocation(line: 179, column: 25, scope: !1424)
!1432 = !DILocation(line: 179, column: 30, scope: !1424)
!1433 = !DILocation(line: 179, column: 12, scope: !1424)
!1434 = !DILocation(line: 179, column: 15, scope: !1424)
!1435 = !DILocation(line: 179, column: 20, scope: !1424)
!1436 = !DILocation(line: 179, column: 2, scope: !1424)
!1437 = !DILocation(line: 179, column: 5, scope: !1424)
!1438 = !DILocation(line: 179, column: 10, scope: !1424)
!1439 = !DILocation(line: 180, column: 8, scope: !1424)
!1440 = !DILocation(line: 180, column: 11, scope: !1424)
!1441 = !DILocation(line: 180, column: 2, scope: !1424)
!1442 = !DILocation(line: 181, column: 2, scope: !1424)
!1443 = !DILocation(line: 181, column: 5, scope: !1424)
!1444 = !DILocation(line: 181, column: 9, scope: !1424)
!1445 = !DILocation(line: 182, column: 2, scope: !1424)
!1446 = !DILocation(line: 182, column: 5, scope: !1424)
!1447 = !DILocation(line: 182, column: 9, scope: !1424)
!1448 = !DILocation(line: 183, column: 22, scope: !1424)
!1449 = !DILocation(line: 183, column: 2, scope: !1424)
!1450 = !DILocation(line: 184, column: 1, scope: !1424)
!1451 = !DISubprogram(name: "services_convert_context", scope: !203, file: !203, line: 42, type: !1452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!28, !201, !616, !616, !132}
!1454 = distinct !DISubprogram(name: "hlist_add_head_rcu", scope: !1455, file: !1455, line: 584, type: !844, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1456)
!1455 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!1456 = !{!1457, !1458, !1459, !1460}
!1457 = !DILocalVariable(name: "n", arg: 1, scope: !1454, file: !1455, line: 584, type: !52)
!1458 = !DILocalVariable(name: "h", arg: 2, scope: !1454, file: !1455, line: 585, type: !555)
!1459 = !DILocalVariable(name: "first", scope: !1454, file: !1455, line: 587, type: !52)
!1460 = !DILocalVariable(name: "_r_a_p__v", scope: !1461, file: !1455, line: 591, type: !135)
!1461 = distinct !DILexicalBlock(scope: !1454, file: !1455, line: 591, column: 2)
!1462 = !DILocation(line: 584, column: 58, scope: !1454)
!1463 = !DILocation(line: 585, column: 25, scope: !1454)
!1464 = !DILocation(line: 587, column: 2, scope: !1454)
!1465 = !DILocation(line: 587, column: 21, scope: !1454)
!1466 = !DILocation(line: 587, column: 29, scope: !1454)
!1467 = !DILocation(line: 587, column: 32, scope: !1454)
!1468 = !DILocation(line: 589, column: 12, scope: !1454)
!1469 = !DILocation(line: 589, column: 2, scope: !1454)
!1470 = !DILocation(line: 589, column: 5, scope: !1454)
!1471 = !DILocation(line: 589, column: 10, scope: !1454)
!1472 = !DILocation(line: 590, column: 2, scope: !1454)
!1473 = !DILocation(line: 590, column: 2, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1454, file: !1455, line: 590, column: 2)
!1475 = !DILocation(line: 590, column: 2, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1474, file: !1455, line: 590, column: 2)
!1477 = !DILocation(line: 590, column: 2, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !1455, line: 590, column: 2)
!1479 = !DILocation(line: 591, column: 2, scope: !1454)
!1480 = !DILocation(line: 591, column: 2, scope: !1461)
!1481 = !DILocation(line: 591, column: 2, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1461, file: !1455, line: 591, column: 2)
!1483 = !DILocation(line: 591, column: 2, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1482, file: !1455, line: 591, column: 2)
!1485 = !DILocation(line: 591, column: 2, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1484, file: !1455, line: 591, column: 2)
!1487 = !DILocation(line: 591, column: 2, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1484, file: !1455, line: 591, column: 2)
!1489 = !DILocation(line: 591, column: 2, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1482, file: !1455, line: 591, column: 2)
!1491 = !DILocation(line: 591, column: 2, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1490, file: !1455, line: 591, column: 2)
!1493 = !DILocation(line: 591, column: 2, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !1455, line: 591, column: 2)
!1495 = !DILocation(line: 591, column: 2, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1494, file: !1455, line: 591, column: 2)
!1497 = !{i64 2151629595}
!1498 = !DILocation(line: 591, column: 2, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1494, file: !1455, line: 591, column: 2)
!1500 = !DILocation(line: 591, column: 2, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1499, file: !1455, line: 591, column: 2)
!1502 = !DILocation(line: 591, column: 2, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1499, file: !1455, line: 591, column: 2)
!1504 = !DILocation(line: 592, column: 6, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1454, file: !1455, line: 592, column: 6)
!1506 = !DILocation(line: 592, column: 6, scope: !1454)
!1507 = !DILocation(line: 593, column: 3, scope: !1505)
!1508 = !DILocation(line: 593, column: 3, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !1455, line: 593, column: 3)
!1510 = !DILocation(line: 593, column: 3, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1509, file: !1455, line: 593, column: 3)
!1512 = !DILocation(line: 593, column: 3, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1509, file: !1455, line: 593, column: 3)
!1514 = !DILocation(line: 594, column: 1, scope: !1454)
!1515 = !DISubprogram(name: "_printk", scope: !1516, file: !1516, line: 153, type: !1517, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1516 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!28, !1042, null}
!1519 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !579, file: !579, line: 404, type: !1520, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1522)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{null, !584, !97}
!1522 = !{!1523, !1524, !1525, !1528}
!1523 = !DILocalVariable(name: "lock", arg: 1, scope: !1519, file: !579, line: 404, type: !584)
!1524 = !DILocalVariable(name: "flags", arg: 2, scope: !1519, file: !579, line: 404, type: !97)
!1525 = !DILocalVariable(name: "__dummy", scope: !1526, file: !579, line: 406, type: !97)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !579, line: 406, column: 2)
!1527 = distinct !DILexicalBlock(scope: !1519, file: !579, line: 406, column: 2)
!1528 = !DILocalVariable(name: "__dummy2", scope: !1526, file: !579, line: 406, type: !97)
!1529 = !DILocation(line: 404, column: 64, scope: !1519)
!1530 = !DILocation(line: 404, column: 84, scope: !1519)
!1531 = !DILocation(line: 406, column: 2, scope: !1519)
!1532 = !DILocation(line: 406, column: 2, scope: !1526)
!1533 = !DILocation(line: 406, column: 2, scope: !1527)
!1534 = !DILocation(line: 407, column: 1, scope: !1519)
!1535 = distinct !DISubprogram(name: "sidtab_convert", scope: !2, file: !2, line: 423, type: !1536, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!28, !170, !197}
!1538 = !{!1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1550, !1551, !1557, !1558, !1562}
!1539 = !DILocalVariable(name: "s", arg: 1, scope: !1535, file: !2, line: 423, type: !170)
!1540 = !DILocalVariable(name: "params", arg: 2, scope: !1535, file: !2, line: 423, type: !197)
!1541 = !DILocalVariable(name: "flags", scope: !1535, file: !2, line: 425, type: !97)
!1542 = !DILocalVariable(name: "count", scope: !1535, file: !2, line: 426, type: !64)
!1543 = !DILocalVariable(name: "level", scope: !1535, file: !2, line: 426, type: !64)
!1544 = !DILocalVariable(name: "pos", scope: !1535, file: !2, line: 426, type: !64)
!1545 = !DILocalVariable(name: "rc", scope: !1535, file: !2, line: 427, type: !28)
!1546 = !DILocalVariable(name: "__dummy", scope: !1547, file: !2, line: 429, type: !97)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 429, column: 2)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 429, column: 2)
!1549 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 429, column: 2)
!1550 = !DILocalVariable(name: "__dummy2", scope: !1547, file: !2, line: 429, type: !97)
!1551 = !DILocalVariable(name: "__dummy", scope: !1552, file: !2, line: 466, type: !97)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !2, line: 466, column: 3)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 466, column: 3)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 466, column: 3)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 464, column: 10)
!1556 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 464, column: 6)
!1557 = !DILocalVariable(name: "__dummy2", scope: !1552, file: !2, line: 466, type: !97)
!1558 = !DILocalVariable(name: "__dummy", scope: !1559, file: !2, line: 475, type: !97)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 475, column: 2)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !2, line: 475, column: 2)
!1561 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 475, column: 2)
!1562 = !DILocalVariable(name: "__dummy2", scope: !1559, file: !2, line: 475, type: !97)
!1563 = !DILocation(line: 423, column: 35, scope: !1535)
!1564 = !DILocation(line: 423, column: 68, scope: !1535)
!1565 = !DILocation(line: 425, column: 2, scope: !1535)
!1566 = !DILocation(line: 425, column: 16, scope: !1535)
!1567 = !DILocation(line: 426, column: 2, scope: !1535)
!1568 = !DILocation(line: 426, column: 6, scope: !1535)
!1569 = !DILocation(line: 426, column: 13, scope: !1535)
!1570 = !DILocation(line: 426, column: 20, scope: !1535)
!1571 = !DILocation(line: 427, column: 2, scope: !1535)
!1572 = !DILocation(line: 427, column: 6, scope: !1535)
!1573 = !DILocation(line: 429, column: 2, scope: !1535)
!1574 = !DILocation(line: 429, column: 2, scope: !1549)
!1575 = !DILocation(line: 429, column: 2, scope: !1547)
!1576 = !DILocation(line: 429, column: 2, scope: !1548)
!1577 = !DILocation(line: 432, column: 6, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 432, column: 6)
!1579 = !DILocation(line: 432, column: 9, scope: !1578)
!1580 = !DILocation(line: 432, column: 6, scope: !1535)
!1581 = !DILocation(line: 433, column: 27, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !2, line: 432, column: 18)
!1583 = !DILocation(line: 433, column: 30, scope: !1582)
!1584 = !DILocation(line: 433, column: 36, scope: !1582)
!1585 = !DILocation(line: 433, column: 3, scope: !1582)
!1586 = !DILocation(line: 434, column: 3, scope: !1582)
!1587 = !DILocation(line: 437, column: 10, scope: !1535)
!1588 = !DILocation(line: 437, column: 13, scope: !1535)
!1589 = !DILocation(line: 437, column: 8, scope: !1535)
!1590 = !DILocation(line: 438, column: 34, scope: !1535)
!1591 = !DILocation(line: 438, column: 10, scope: !1535)
!1592 = !DILocation(line: 438, column: 8, scope: !1535)
!1593 = !DILocation(line: 443, column: 24, scope: !1535)
!1594 = !DILocation(line: 443, column: 32, scope: !1535)
!1595 = !DILocation(line: 443, column: 40, scope: !1535)
!1596 = !DILocation(line: 443, column: 46, scope: !1535)
!1597 = !DILocation(line: 443, column: 7, scope: !1535)
!1598 = !DILocation(line: 443, column: 5, scope: !1535)
!1599 = !DILocation(line: 444, column: 6, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 444, column: 6)
!1601 = !DILocation(line: 444, column: 6, scope: !1535)
!1602 = !DILocation(line: 445, column: 27, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1600, file: !2, line: 444, column: 10)
!1604 = !DILocation(line: 445, column: 30, scope: !1603)
!1605 = !DILocation(line: 445, column: 36, scope: !1603)
!1606 = !DILocation(line: 445, column: 3, scope: !1603)
!1607 = !DILocation(line: 446, column: 10, scope: !1603)
!1608 = !DILocation(line: 446, column: 3, scope: !1603)
!1609 = !DILocation(line: 450, column: 26, scope: !1535)
!1610 = !DILocation(line: 450, column: 2, scope: !1535)
!1611 = !DILocation(line: 450, column: 10, scope: !1535)
!1612 = !DILocation(line: 450, column: 18, scope: !1535)
!1613 = !DILocation(line: 450, column: 24, scope: !1535)
!1614 = !DILocation(line: 453, column: 15, scope: !1535)
!1615 = !DILocation(line: 453, column: 2, scope: !1535)
!1616 = !DILocation(line: 453, column: 5, scope: !1535)
!1617 = !DILocation(line: 453, column: 13, scope: !1535)
!1618 = !DILocation(line: 456, column: 26, scope: !1535)
!1619 = !DILocation(line: 456, column: 29, scope: !1535)
!1620 = !DILocation(line: 456, column: 35, scope: !1535)
!1621 = !DILocation(line: 456, column: 2, scope: !1535)
!1622 = !DILocation(line: 458, column: 2, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 458, column: 2)
!1624 = !DILocation(line: 458, column: 2, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 458, column: 2)
!1626 = !DILocation(line: 461, column: 6, scope: !1535)
!1627 = !DILocation(line: 462, column: 28, scope: !1535)
!1628 = !DILocation(line: 462, column: 36, scope: !1535)
!1629 = !DILocation(line: 462, column: 44, scope: !1535)
!1630 = !DILocation(line: 462, column: 50, scope: !1535)
!1631 = !DILocation(line: 463, column: 7, scope: !1535)
!1632 = !DILocation(line: 463, column: 10, scope: !1535)
!1633 = !DILocation(line: 463, column: 16, scope: !1535)
!1634 = !DILocation(line: 463, column: 30, scope: !1535)
!1635 = !DILocation(line: 463, column: 37, scope: !1535)
!1636 = !DILocation(line: 463, column: 44, scope: !1535)
!1637 = !DILocation(line: 462, column: 7, scope: !1535)
!1638 = !DILocation(line: 462, column: 5, scope: !1535)
!1639 = !DILocation(line: 464, column: 6, scope: !1556)
!1640 = !DILocation(line: 464, column: 6, scope: !1535)
!1641 = !DILocation(line: 466, column: 3, scope: !1555)
!1642 = !DILocation(line: 466, column: 3, scope: !1554)
!1643 = !DILocation(line: 466, column: 3, scope: !1552)
!1644 = !DILocation(line: 466, column: 3, scope: !1553)
!1645 = !DILocation(line: 467, column: 3, scope: !1555)
!1646 = !DILocation(line: 467, column: 6, scope: !1555)
!1647 = !DILocation(line: 467, column: 14, scope: !1555)
!1648 = !DILocation(line: 468, column: 27, scope: !1555)
!1649 = !DILocation(line: 468, column: 30, scope: !1555)
!1650 = !DILocation(line: 468, column: 36, scope: !1555)
!1651 = !DILocation(line: 468, column: 3, scope: !1555)
!1652 = !DILocation(line: 469, column: 10, scope: !1555)
!1653 = !DILocation(line: 469, column: 3, scope: !1555)
!1654 = !DILocation(line: 475, column: 2, scope: !1535)
!1655 = !DILocation(line: 475, column: 2, scope: !1561)
!1656 = !DILocation(line: 475, column: 2, scope: !1559)
!1657 = !DILocation(line: 475, column: 2, scope: !1560)
!1658 = !DILocation(line: 476, column: 27, scope: !1535)
!1659 = !DILocation(line: 476, column: 35, scope: !1535)
!1660 = !DILocation(line: 476, column: 43, scope: !1535)
!1661 = !DILocation(line: 476, column: 2, scope: !1535)
!1662 = !DILocation(line: 477, column: 26, scope: !1535)
!1663 = !DILocation(line: 477, column: 29, scope: !1535)
!1664 = !DILocation(line: 477, column: 35, scope: !1535)
!1665 = !DILocation(line: 477, column: 2, scope: !1535)
!1666 = !DILocation(line: 479, column: 2, scope: !1535)
!1667 = !DILocation(line: 480, column: 1, scope: !1535)
!1668 = distinct !DISubprogram(name: "sidtab_level_from_count", scope: !2, file: !2, line: 148, type: !1669, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1671)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!64, !64}
!1671 = !{!1672, !1673, !1674}
!1672 = !DILocalVariable(name: "count", arg: 1, scope: !1668, file: !2, line: 148, type: !64)
!1673 = !DILocalVariable(name: "capacity", scope: !1668, file: !2, line: 150, type: !64)
!1674 = !DILocalVariable(name: "level", scope: !1668, file: !2, line: 151, type: !64)
!1675 = !DILocation(line: 148, column: 40, scope: !1668)
!1676 = !DILocation(line: 150, column: 2, scope: !1668)
!1677 = !DILocation(line: 150, column: 6, scope: !1668)
!1678 = !DILocation(line: 151, column: 2, scope: !1668)
!1679 = !DILocation(line: 151, column: 6, scope: !1668)
!1680 = !DILocation(line: 153, column: 2, scope: !1668)
!1681 = !DILocation(line: 153, column: 9, scope: !1668)
!1682 = !DILocation(line: 153, column: 17, scope: !1668)
!1683 = !DILocation(line: 153, column: 15, scope: !1668)
!1684 = !DILocation(line: 154, column: 12, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1668, file: !2, line: 153, column: 27)
!1686 = !DILocation(line: 155, column: 3, scope: !1685)
!1687 = distinct !{!1687, !1680, !1688, !525, !526}
!1688 = !DILocation(line: 156, column: 2, scope: !1668)
!1689 = !DILocation(line: 157, column: 9, scope: !1668)
!1690 = !DILocation(line: 158, column: 1, scope: !1668)
!1691 = !DILocation(line: 157, column: 2, scope: !1668)
!1692 = distinct !DISubprogram(name: "sidtab_convert_tree", scope: !2, file: !2, line: 375, type: !1693, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1695)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!28, !1329, !1329, !1117, !64, !64, !197}
!1695 = !{!1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703}
!1696 = !DILocalVariable(name: "edst", arg: 1, scope: !1692, file: !2, line: 375, type: !1329)
!1697 = !DILocalVariable(name: "esrc", arg: 2, scope: !1692, file: !2, line: 376, type: !1329)
!1698 = !DILocalVariable(name: "pos", arg: 3, scope: !1692, file: !2, line: 377, type: !1117)
!1699 = !DILocalVariable(name: "count", arg: 4, scope: !1692, file: !2, line: 377, type: !64)
!1700 = !DILocalVariable(name: "level", arg: 5, scope: !1692, file: !2, line: 377, type: !64)
!1701 = !DILocalVariable(name: "convert", arg: 6, scope: !1692, file: !2, line: 378, type: !197)
!1702 = !DILocalVariable(name: "rc", scope: !1692, file: !2, line: 380, type: !28)
!1703 = !DILocalVariable(name: "i", scope: !1692, file: !2, line: 381, type: !64)
!1704 = !DILocation(line: 375, column: 58, scope: !1692)
!1705 = !DILocation(line: 376, column: 37, scope: !1692)
!1706 = !DILocation(line: 377, column: 16, scope: !1692)
!1707 = !DILocation(line: 377, column: 25, scope: !1692)
!1708 = !DILocation(line: 377, column: 36, scope: !1692)
!1709 = !DILocation(line: 378, column: 41, scope: !1692)
!1710 = !DILocation(line: 380, column: 2, scope: !1692)
!1711 = !DILocation(line: 380, column: 6, scope: !1692)
!1712 = !DILocation(line: 381, column: 2, scope: !1692)
!1713 = !DILocation(line: 381, column: 6, scope: !1692)
!1714 = !DILocation(line: 383, column: 6, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1692, file: !2, line: 383, column: 6)
!1716 = !DILocation(line: 383, column: 12, scope: !1715)
!1717 = !DILocation(line: 383, column: 6, scope: !1692)
!1718 = !DILocation(line: 384, column: 8, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !2, line: 384, column: 7)
!1720 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 383, column: 18)
!1721 = !DILocation(line: 384, column: 14, scope: !1719)
!1722 = !DILocation(line: 384, column: 7, scope: !1720)
!1723 = !DILocation(line: 385, column: 22, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1719, file: !2, line: 384, column: 25)
!1725 = !DILocation(line: 385, column: 4, scope: !1724)
!1726 = !DILocation(line: 385, column: 20, scope: !1724)
!1727 = !DILocation(line: 387, column: 9, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 387, column: 8)
!1729 = !DILocation(line: 387, column: 15, scope: !1728)
!1730 = !DILocation(line: 387, column: 8, scope: !1724)
!1731 = !DILocation(line: 388, column: 5, scope: !1728)
!1732 = !DILocation(line: 389, column: 3, scope: !1724)
!1733 = !DILocation(line: 390, column: 5, scope: !1720)
!1734 = !DILocation(line: 391, column: 3, scope: !1720)
!1735 = !DILocation(line: 391, column: 10, scope: !1720)
!1736 = !DILocation(line: 391, column: 12, scope: !1720)
!1737 = !DILocation(line: 391, column: 35, scope: !1720)
!1738 = !DILocation(line: 391, column: 39, scope: !1720)
!1739 = !DILocation(line: 391, column: 38, scope: !1720)
!1740 = !DILocation(line: 391, column: 45, scope: !1720)
!1741 = !DILocation(line: 391, column: 43, scope: !1720)
!1742 = !DILocation(line: 0, scope: !1720)
!1743 = !DILocation(line: 392, column: 30, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1720, file: !2, line: 391, column: 52)
!1745 = !DILocation(line: 392, column: 36, scope: !1744)
!1746 = !DILocation(line: 392, column: 47, scope: !1744)
!1747 = !DILocation(line: 392, column: 55, scope: !1744)
!1748 = !DILocation(line: 393, column: 9, scope: !1744)
!1749 = !DILocation(line: 393, column: 15, scope: !1744)
!1750 = !DILocation(line: 393, column: 26, scope: !1744)
!1751 = !DILocation(line: 393, column: 34, scope: !1744)
!1752 = !DILocation(line: 394, column: 8, scope: !1744)
!1753 = !DILocation(line: 394, column: 13, scope: !1744)
!1754 = !DILocation(line: 394, column: 20, scope: !1744)
!1755 = !DILocation(line: 394, column: 26, scope: !1744)
!1756 = !DILocation(line: 395, column: 8, scope: !1744)
!1757 = !DILocation(line: 392, column: 9, scope: !1744)
!1758 = !DILocation(line: 392, column: 7, scope: !1744)
!1759 = !DILocation(line: 396, column: 8, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 396, column: 8)
!1761 = !DILocation(line: 396, column: 8, scope: !1744)
!1762 = !DILocation(line: 397, column: 12, scope: !1760)
!1763 = !DILocation(line: 397, column: 5, scope: !1760)
!1764 = !DILocation(line: 398, column: 5, scope: !1744)
!1765 = distinct !{!1765, !1734, !1766, !525, !526}
!1766 = !DILocation(line: 399, column: 3, scope: !1720)
!1767 = !DILocation(line: 400, column: 2, scope: !1720)
!1768 = !DILocation(line: 401, column: 8, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 401, column: 7)
!1770 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 400, column: 9)
!1771 = !DILocation(line: 401, column: 14, scope: !1769)
!1772 = !DILocation(line: 401, column: 7, scope: !1770)
!1773 = !DILocation(line: 402, column: 21, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 401, column: 24)
!1775 = !DILocation(line: 402, column: 4, scope: !1774)
!1776 = !DILocation(line: 402, column: 19, scope: !1774)
!1777 = !DILocation(line: 404, column: 9, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1774, file: !2, line: 404, column: 8)
!1779 = !DILocation(line: 404, column: 15, scope: !1778)
!1780 = !DILocation(line: 404, column: 8, scope: !1774)
!1781 = !DILocation(line: 405, column: 5, scope: !1778)
!1782 = !DILocation(line: 406, column: 3, scope: !1774)
!1783 = !DILocation(line: 407, column: 5, scope: !1770)
!1784 = !DILocation(line: 408, column: 3, scope: !1770)
!1785 = !DILocation(line: 408, column: 10, scope: !1770)
!1786 = !DILocation(line: 408, column: 12, scope: !1770)
!1787 = !DILocation(line: 408, column: 34, scope: !1770)
!1788 = !DILocation(line: 408, column: 38, scope: !1770)
!1789 = !DILocation(line: 408, column: 37, scope: !1770)
!1790 = !DILocation(line: 408, column: 44, scope: !1770)
!1791 = !DILocation(line: 408, column: 42, scope: !1770)
!1792 = !DILocation(line: 0, scope: !1770)
!1793 = !DILocation(line: 409, column: 34, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 408, column: 51)
!1795 = !DILocation(line: 409, column: 43, scope: !1794)
!1796 = !DILocation(line: 410, column: 7, scope: !1794)
!1797 = !DILocation(line: 410, column: 13, scope: !1794)
!1798 = !DILocation(line: 410, column: 23, scope: !1794)
!1799 = !DILocation(line: 410, column: 31, scope: !1794)
!1800 = !DILocation(line: 410, column: 34, scope: !1794)
!1801 = !DILocation(line: 411, column: 7, scope: !1794)
!1802 = !DILocation(line: 411, column: 13, scope: !1794)
!1803 = !DILocation(line: 411, column: 23, scope: !1794)
!1804 = !DILocation(line: 411, column: 31, scope: !1794)
!1805 = !DILocation(line: 411, column: 34, scope: !1794)
!1806 = !DILocation(line: 409, column: 9, scope: !1794)
!1807 = !DILocation(line: 409, column: 7, scope: !1794)
!1808 = !DILocation(line: 413, column: 8, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1794, file: !2, line: 413, column: 8)
!1810 = !DILocation(line: 413, column: 8, scope: !1794)
!1811 = !DILocation(line: 414, column: 12, scope: !1809)
!1812 = !DILocation(line: 414, column: 5, scope: !1809)
!1813 = !DILocation(line: 415, column: 6, scope: !1794)
!1814 = !DILocation(line: 415, column: 10, scope: !1794)
!1815 = !DILocation(line: 416, column: 5, scope: !1794)
!1816 = distinct !{!1816, !1784, !1817, !525, !526}
!1817 = !DILocation(line: 417, column: 3, scope: !1770)
!1818 = !DILocation(line: 418, column: 3, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1770, file: !2, line: 418, column: 3)
!1820 = !DILocation(line: 420, column: 2, scope: !1692)
!1821 = !DILocation(line: 421, column: 1, scope: !1692)
!1822 = distinct !DISubprogram(name: "sidtab_convert_hashtable", scope: !2, file: !2, line: 361, type: !1823, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1825)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !170, !64}
!1825 = !{!1826, !1827, !1828, !1829}
!1826 = !DILocalVariable(name: "s", arg: 1, scope: !1822, file: !2, line: 361, type: !170)
!1827 = !DILocalVariable(name: "count", arg: 2, scope: !1822, file: !2, line: 361, type: !64)
!1828 = !DILocalVariable(name: "entry", scope: !1822, file: !2, line: 363, type: !59)
!1829 = !DILocalVariable(name: "i", scope: !1822, file: !2, line: 364, type: !64)
!1830 = !DILocation(line: 361, column: 53, scope: !1822)
!1831 = !DILocation(line: 361, column: 60, scope: !1822)
!1832 = !DILocation(line: 363, column: 2, scope: !1822)
!1833 = !DILocation(line: 363, column: 23, scope: !1822)
!1834 = !DILocation(line: 364, column: 2, scope: !1822)
!1835 = !DILocation(line: 364, column: 6, scope: !1822)
!1836 = !DILocation(line: 366, column: 9, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1822, file: !2, line: 366, column: 2)
!1838 = !DILocation(line: 366, column: 7, scope: !1837)
!1839 = !DILocation(line: 366, column: 14, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !2, line: 366, column: 2)
!1841 = !DILocation(line: 366, column: 18, scope: !1840)
!1842 = !DILocation(line: 366, column: 16, scope: !1840)
!1843 = !DILocation(line: 366, column: 2, scope: !1837)
!1844 = !DILocation(line: 367, column: 28, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 366, column: 30)
!1846 = !DILocation(line: 367, column: 31, scope: !1845)
!1847 = !DILocation(line: 367, column: 11, scope: !1845)
!1848 = !DILocation(line: 367, column: 9, scope: !1845)
!1849 = !DILocation(line: 368, column: 16, scope: !1845)
!1850 = !DILocation(line: 368, column: 3, scope: !1845)
!1851 = !DILocation(line: 368, column: 10, scope: !1845)
!1852 = !DILocation(line: 368, column: 14, scope: !1845)
!1853 = !DILocation(line: 369, column: 39, scope: !1845)
!1854 = !DILocation(line: 369, column: 46, scope: !1845)
!1855 = !DILocation(line: 369, column: 17, scope: !1845)
!1856 = !DILocation(line: 369, column: 3, scope: !1845)
!1857 = !DILocation(line: 369, column: 10, scope: !1845)
!1858 = !DILocation(line: 369, column: 15, scope: !1845)
!1859 = !DILocation(line: 371, column: 3, scope: !1845)
!1860 = !DILocation(line: 372, column: 2, scope: !1845)
!1861 = !DILocation(line: 366, column: 26, scope: !1840)
!1862 = !DILocation(line: 366, column: 2, scope: !1840)
!1863 = distinct !{!1863, !1843, !1864, !525, !526}
!1864 = !DILocation(line: 372, column: 2, scope: !1837)
!1865 = !DILocation(line: 373, column: 1, scope: !1822)
!1866 = distinct !DISubprogram(name: "sidtab_cancel_convert", scope: !2, file: !2, line: 482, type: !1867, scopeLine: 483, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !170}
!1869 = !{!1870, !1871, !1872, !1876}
!1870 = !DILocalVariable(name: "s", arg: 1, scope: !1866, file: !2, line: 482, type: !170)
!1871 = !DILocalVariable(name: "flags", scope: !1866, file: !2, line: 484, type: !97)
!1872 = !DILocalVariable(name: "__dummy", scope: !1873, file: !2, line: 487, type: !97)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 487, column: 2)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !2, line: 487, column: 2)
!1875 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 487, column: 2)
!1876 = !DILocalVariable(name: "__dummy2", scope: !1873, file: !2, line: 487, type: !97)
!1877 = !DILocation(line: 482, column: 43, scope: !1866)
!1878 = !DILocation(line: 484, column: 2, scope: !1866)
!1879 = !DILocation(line: 484, column: 16, scope: !1866)
!1880 = !DILocation(line: 487, column: 2, scope: !1866)
!1881 = !DILocation(line: 487, column: 2, scope: !1875)
!1882 = !DILocation(line: 487, column: 2, scope: !1873)
!1883 = !DILocation(line: 487, column: 2, scope: !1874)
!1884 = !DILocation(line: 488, column: 2, scope: !1866)
!1885 = !DILocation(line: 488, column: 5, scope: !1866)
!1886 = !DILocation(line: 488, column: 13, scope: !1866)
!1887 = !DILocation(line: 489, column: 26, scope: !1866)
!1888 = !DILocation(line: 489, column: 29, scope: !1866)
!1889 = !DILocation(line: 489, column: 35, scope: !1866)
!1890 = !DILocation(line: 489, column: 2, scope: !1866)
!1891 = !DILocation(line: 490, column: 1, scope: !1866)
!1892 = distinct !DISubprogram(name: "sidtab_freeze_begin", scope: !2, file: !2, line: 492, type: !1893, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1896)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !170, !1895}
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!1896 = !{!1897, !1898, !1899, !1903}
!1897 = !DILocalVariable(name: "s", arg: 1, scope: !1892, file: !2, line: 492, type: !170)
!1898 = !DILocalVariable(name: "flags", arg: 2, scope: !1892, file: !2, line: 492, type: !1895)
!1899 = !DILocalVariable(name: "__dummy", scope: !1900, file: !2, line: 494, type: !97)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !2, line: 494, column: 2)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !2, line: 494, column: 2)
!1902 = distinct !DILexicalBlock(scope: !1892, file: !2, line: 494, column: 2)
!1903 = !DILocalVariable(name: "__dummy2", scope: !1900, file: !2, line: 494, type: !97)
!1904 = !DILocation(line: 492, column: 41, scope: !1892)
!1905 = !DILocation(line: 492, column: 59, scope: !1892)
!1906 = !DILocation(line: 494, column: 2, scope: !1892)
!1907 = !DILocation(line: 494, column: 2, scope: !1902)
!1908 = !DILocation(line: 494, column: 2, scope: !1900)
!1909 = !DILocation(line: 494, column: 2, scope: !1901)
!1910 = !DILocation(line: 495, column: 2, scope: !1892)
!1911 = !DILocation(line: 495, column: 5, scope: !1892)
!1912 = !DILocation(line: 495, column: 12, scope: !1892)
!1913 = !DILocation(line: 496, column: 2, scope: !1892)
!1914 = !DILocation(line: 496, column: 5, scope: !1892)
!1915 = !DILocation(line: 496, column: 13, scope: !1892)
!1916 = !DILocation(line: 497, column: 1, scope: !1892)
!1917 = distinct !DISubprogram(name: "sidtab_freeze_end", scope: !2, file: !2, line: 498, type: !1893, scopeLine: 499, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1918)
!1918 = !{!1919, !1920}
!1919 = !DILocalVariable(name: "s", arg: 1, scope: !1917, file: !2, line: 498, type: !170)
!1920 = !DILocalVariable(name: "flags", arg: 2, scope: !1917, file: !2, line: 498, type: !1895)
!1921 = !DILocation(line: 498, column: 39, scope: !1917)
!1922 = !DILocation(line: 498, column: 57, scope: !1917)
!1923 = !DILocation(line: 500, column: 26, scope: !1917)
!1924 = !DILocation(line: 500, column: 29, scope: !1917)
!1925 = !DILocation(line: 500, column: 36, scope: !1917)
!1926 = !DILocation(line: 500, column: 35, scope: !1917)
!1927 = !DILocation(line: 500, column: 2, scope: !1917)
!1928 = !DILocation(line: 501, column: 1, scope: !1917)
!1929 = distinct !DISubprogram(name: "sidtab_destroy", scope: !2, file: !2, line: 536, type: !1867, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1930)
!1930 = !{!1931, !1932, !1933}
!1931 = !DILocalVariable(name: "s", arg: 1, scope: !1929, file: !2, line: 536, type: !170)
!1932 = !DILocalVariable(name: "i", scope: !1929, file: !2, line: 538, type: !64)
!1933 = !DILocalVariable(name: "level", scope: !1929, file: !2, line: 538, type: !64)
!1934 = !DILocation(line: 536, column: 36, scope: !1929)
!1935 = !DILocation(line: 538, column: 2, scope: !1929)
!1936 = !DILocation(line: 538, column: 6, scope: !1929)
!1937 = !DILocation(line: 538, column: 9, scope: !1929)
!1938 = !DILocation(line: 540, column: 9, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 540, column: 2)
!1940 = !DILocation(line: 540, column: 7, scope: !1939)
!1941 = !DILocation(line: 540, column: 14, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 540, column: 2)
!1943 = !DILocation(line: 540, column: 16, scope: !1942)
!1944 = !DILocation(line: 540, column: 2, scope: !1939)
!1945 = !DILocation(line: 541, column: 7, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1942, file: !2, line: 541, column: 7)
!1947 = !DILocation(line: 541, column: 10, scope: !1946)
!1948 = !DILocation(line: 541, column: 16, scope: !1946)
!1949 = !DILocation(line: 541, column: 19, scope: !1946)
!1950 = !DILocation(line: 541, column: 7, scope: !1942)
!1951 = !DILocation(line: 542, column: 26, scope: !1946)
!1952 = !DILocation(line: 542, column: 29, scope: !1946)
!1953 = !DILocation(line: 542, column: 35, scope: !1946)
!1954 = !DILocation(line: 542, column: 38, scope: !1946)
!1955 = !DILocation(line: 542, column: 4, scope: !1946)
!1956 = !DILocation(line: 540, column: 35, scope: !1942)
!1957 = !DILocation(line: 540, column: 2, scope: !1942)
!1958 = distinct !{!1958, !1944, !1959, !525, !526}
!1959 = !DILocation(line: 542, column: 43, scope: !1939)
!1960 = !DILocation(line: 544, column: 8, scope: !1929)
!1961 = !DILocation(line: 545, column: 2, scope: !1929)
!1962 = !DILocation(line: 545, column: 9, scope: !1929)
!1963 = !DILocation(line: 545, column: 15, scope: !1929)
!1964 = !DILocation(line: 545, column: 19, scope: !1929)
!1965 = !DILocation(line: 545, column: 22, scope: !1929)
!1966 = !DILocation(line: 545, column: 28, scope: !1929)
!1967 = !DILocation(line: 545, column: 35, scope: !1929)
!1968 = !DILocation(line: 545, column: 18, scope: !1929)
!1969 = !DILocation(line: 0, scope: !1929)
!1970 = !DILocation(line: 546, column: 3, scope: !1929)
!1971 = distinct !{!1971, !1961, !1972, !525, !526}
!1972 = !DILocation(line: 546, column: 5, scope: !1929)
!1973 = !DILocation(line: 548, column: 22, scope: !1929)
!1974 = !DILocation(line: 548, column: 25, scope: !1929)
!1975 = !DILocation(line: 548, column: 31, scope: !1929)
!1976 = !DILocation(line: 548, column: 39, scope: !1929)
!1977 = !DILocation(line: 548, column: 2, scope: !1929)
!1978 = !DILocation(line: 554, column: 1, scope: !1929)
!1979 = distinct !DISubprogram(name: "sidtab_destroy_entry", scope: !2, file: !2, line: 503, type: !1980, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !1982)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{null, !59}
!1982 = !{!1983, !1984}
!1983 = !DILocalVariable(name: "entry", arg: 1, scope: !1979, file: !2, line: 503, type: !59)
!1984 = !DILocalVariable(name: "__UNIQUE_ID_rcu567", scope: !1985, file: !2, line: 507, type: !107)
!1985 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 507, column: 8)
!1986 = !DILocation(line: 503, column: 55, scope: !1979)
!1987 = !DILocation(line: 505, column: 19, scope: !1979)
!1988 = !DILocation(line: 505, column: 26, scope: !1979)
!1989 = !DILocation(line: 505, column: 2, scope: !1979)
!1990 = !DILocation(line: 507, column: 8, scope: !1985)
!1991 = !DILocation(line: 507, column: 8, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1985, file: !2, line: 507, column: 8)
!1993 = !DILocation(line: 507, column: 8, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1992, file: !2, line: 507, column: 8)
!1995 = !DILocation(line: 507, column: 8, scope: !1979)
!1996 = !DILocation(line: 507, column: 2, scope: !1979)
!1997 = !DILocation(line: 509, column: 1, scope: !1979)
!1998 = distinct !DISubprogram(name: "sidtab_destroy_tree", scope: !2, file: !2, line: 511, type: !1999, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2001)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{null, !175, !64}
!2001 = !{!2002, !2003, !2004, !2005, !2008}
!2002 = !DILocalVariable(name: "entry", arg: 1, scope: !1998, file: !2, line: 511, type: !175)
!2003 = !DILocalVariable(name: "level", arg: 2, scope: !1998, file: !2, line: 511, type: !64)
!2004 = !DILocalVariable(name: "i", scope: !1998, file: !2, line: 513, type: !64)
!2005 = !DILocalVariable(name: "node", scope: !2006, file: !2, line: 516, type: !178)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 515, column: 18)
!2007 = distinct !DILexicalBlock(scope: !1998, file: !2, line: 515, column: 6)
!2008 = !DILocalVariable(name: "node", scope: !2009, file: !2, line: 525, type: !186)
!2009 = distinct !DILexicalBlock(scope: !2007, file: !2, line: 524, column: 9)
!2010 = !DILocation(line: 511, column: 58, scope: !1998)
!2011 = !DILocation(line: 511, column: 69, scope: !1998)
!2012 = !DILocation(line: 513, column: 2, scope: !1998)
!2013 = !DILocation(line: 513, column: 6, scope: !1998)
!2014 = !DILocation(line: 515, column: 6, scope: !2007)
!2015 = !DILocation(line: 515, column: 12, scope: !2007)
!2016 = !DILocation(line: 515, column: 6, scope: !1998)
!2017 = !DILocation(line: 516, column: 3, scope: !2006)
!2018 = !DILocation(line: 516, column: 29, scope: !2006)
!2019 = !DILocation(line: 516, column: 42, scope: !2006)
!2020 = !DILocation(line: 518, column: 8, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 518, column: 7)
!2022 = !DILocation(line: 518, column: 7, scope: !2006)
!2023 = !DILocation(line: 519, column: 4, scope: !2021)
!2024 = !DILocation(line: 521, column: 10, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2006, file: !2, line: 521, column: 3)
!2026 = !DILocation(line: 521, column: 8, scope: !2025)
!2027 = !DILocation(line: 521, column: 15, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !2, line: 521, column: 3)
!2029 = !DILocation(line: 521, column: 17, scope: !2028)
!2030 = !DILocation(line: 521, column: 3, scope: !2025)
!2031 = !DILocation(line: 522, column: 24, scope: !2028)
!2032 = !DILocation(line: 522, column: 30, scope: !2028)
!2033 = !DILocation(line: 522, column: 38, scope: !2028)
!2034 = !DILocation(line: 522, column: 42, scope: !2028)
!2035 = !DILocation(line: 522, column: 48, scope: !2028)
!2036 = !DILocation(line: 522, column: 4, scope: !2028)
!2037 = !DILocation(line: 521, column: 42, scope: !2028)
!2038 = !DILocation(line: 521, column: 3, scope: !2028)
!2039 = distinct !{!2039, !2030, !2040, !525, !526}
!2040 = !DILocation(line: 522, column: 51, scope: !2025)
!2041 = !DILocation(line: 523, column: 9, scope: !2006)
!2042 = !DILocation(line: 523, column: 3, scope: !2006)
!2043 = !DILocation(line: 524, column: 2, scope: !2007)
!2044 = !DILocation(line: 524, column: 2, scope: !2006)
!2045 = !DILocation(line: 525, column: 3, scope: !2009)
!2046 = !DILocation(line: 525, column: 28, scope: !2009)
!2047 = !DILocation(line: 525, column: 41, scope: !2009)
!2048 = !DILocation(line: 527, column: 8, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2009, file: !2, line: 527, column: 7)
!2050 = !DILocation(line: 527, column: 7, scope: !2009)
!2051 = !DILocation(line: 528, column: 4, scope: !2049)
!2052 = !DILocation(line: 530, column: 10, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2009, file: !2, line: 530, column: 3)
!2054 = !DILocation(line: 530, column: 8, scope: !2053)
!2055 = !DILocation(line: 530, column: 15, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2053, file: !2, line: 530, column: 3)
!2057 = !DILocation(line: 530, column: 17, scope: !2056)
!2058 = !DILocation(line: 530, column: 3, scope: !2053)
!2059 = !DILocation(line: 531, column: 26, scope: !2056)
!2060 = !DILocation(line: 531, column: 32, scope: !2056)
!2061 = !DILocation(line: 531, column: 40, scope: !2056)
!2062 = !DILocation(line: 531, column: 4, scope: !2056)
!2063 = !DILocation(line: 530, column: 41, scope: !2056)
!2064 = !DILocation(line: 530, column: 3, scope: !2056)
!2065 = distinct !{!2065, !2058, !2066, !525, !526}
!2066 = !DILocation(line: 531, column: 42, scope: !2053)
!2067 = !DILocation(line: 532, column: 9, scope: !2009)
!2068 = !DILocation(line: 532, column: 3, scope: !2009)
!2069 = !DILocation(line: 533, column: 2, scope: !2007)
!2070 = !DILocation(line: 534, column: 1, scope: !1998)
!2071 = distinct !DISubprogram(name: "sidtab_sid2str_put", scope: !2, file: !2, line: 558, type: !2072, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2074)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{null, !170, !59, !1042, !64}
!2074 = !{!2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2086, !2087, !2091, !2093, !2095, !2096}
!2075 = !DILocalVariable(name: "s", arg: 1, scope: !2071, file: !2, line: 558, type: !170)
!2076 = !DILocalVariable(name: "entry", arg: 2, scope: !2071, file: !2, line: 558, type: !59)
!2077 = !DILocalVariable(name: "str", arg: 3, scope: !2071, file: !2, line: 559, type: !1042)
!2078 = !DILocalVariable(name: "str_len", arg: 4, scope: !2071, file: !2, line: 559, type: !64)
!2079 = !DILocalVariable(name: "cache", scope: !2071, file: !2, line: 561, type: !107)
!2080 = !DILocalVariable(name: "victim", scope: !2071, file: !2, line: 561, type: !107)
!2081 = !DILocalVariable(name: "flags", scope: !2071, file: !2, line: 562, type: !97)
!2082 = !DILocalVariable(name: "__dummy", scope: !2083, file: !2, line: 568, type: !97)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !2, line: 568, column: 2)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !2, line: 568, column: 2)
!2085 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 568, column: 2)
!2086 = !DILocalVariable(name: "__dummy2", scope: !2083, file: !2, line: 568, type: !97)
!2087 = !DILocalVariable(name: "__mptr", scope: !2088, file: !2, line: 584, type: !48)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !2, line: 584, column: 12)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !2, line: 582, column: 32)
!2090 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 582, column: 6)
!2091 = !DILocalVariable(name: "_r_a_p__v", scope: !2092, file: !2, line: 587, type: !135)
!2092 = distinct !DILexicalBlock(scope: !2089, file: !2, line: 587, column: 3)
!2093 = !DILocalVariable(name: "_r_a_p__v", scope: !2094, file: !2, line: 596, type: !135)
!2094 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 596, column: 2)
!2095 = !DILabel(scope: !2071, name: "out_unlock", file: !2, line: 598)
!2096 = !DILocalVariable(name: "___p", scope: !2097, file: !2, line: 600, type: !107)
!2097 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 600, column: 2)
!2098 = !DILocation(line: 558, column: 40, scope: !2071)
!2099 = !DILocation(line: 558, column: 64, scope: !2071)
!2100 = !DILocation(line: 559, column: 16, scope: !2071)
!2101 = !DILocation(line: 559, column: 25, scope: !2071)
!2102 = !DILocation(line: 561, column: 2, scope: !2071)
!2103 = !DILocation(line: 561, column: 27, scope: !2071)
!2104 = !DILocation(line: 561, column: 35, scope: !2071)
!2105 = !DILocation(line: 562, column: 2, scope: !2071)
!2106 = !DILocation(line: 562, column: 16, scope: !2071)
!2107 = !DILocation(line: 565, column: 6, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 565, column: 6)
!2109 = !DILocation(line: 565, column: 13, scope: !2108)
!2110 = !DILocation(line: 565, column: 21, scope: !2108)
!2111 = !DILocation(line: 565, column: 6, scope: !2071)
!2112 = !DILocation(line: 566, column: 3, scope: !2108)
!2113 = !DILocation(line: 568, column: 2, scope: !2071)
!2114 = !DILocation(line: 568, column: 2, scope: !2085)
!2115 = !DILocation(line: 568, column: 2, scope: !2083)
!2116 = !DILocation(line: 568, column: 2, scope: !2084)
!2117 = !DILocation(line: 570, column: 10, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 570, column: 10)
!2119 = !DILocation(line: 570, column: 10, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2118, file: !2, line: 570, column: 10)
!2121 = !DILocation(line: 570, column: 8, scope: !2071)
!2122 = !DILocation(line: 572, column: 6, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 572, column: 6)
!2124 = !DILocation(line: 572, column: 6, scope: !2071)
!2125 = !DILocation(line: 574, column: 14, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2123, file: !2, line: 572, column: 13)
!2127 = !DILocation(line: 574, column: 21, scope: !2126)
!2128 = !DILocation(line: 574, column: 34, scope: !2126)
!2129 = !DILocation(line: 574, column: 37, scope: !2126)
!2130 = !DILocation(line: 574, column: 3, scope: !2126)
!2131 = !DILocation(line: 575, column: 3, scope: !2126)
!2132 = !DILocation(line: 578, column: 18, scope: !2071)
!2133 = !DILocation(line: 578, column: 10, scope: !2071)
!2134 = !DILocation(line: 578, column: 8, scope: !2071)
!2135 = !DILocation(line: 579, column: 7, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2071, file: !2, line: 579, column: 6)
!2137 = !DILocation(line: 579, column: 6, scope: !2071)
!2138 = !DILocation(line: 580, column: 3, scope: !2136)
!2139 = !DILocation(line: 582, column: 6, scope: !2090)
!2140 = !DILocation(line: 582, column: 9, scope: !2090)
!2141 = !DILocation(line: 582, column: 26, scope: !2090)
!2142 = !DILocation(line: 582, column: 6, scope: !2071)
!2143 = !DILocation(line: 584, column: 12, scope: !2088)
!2144 = !DILocation(line: 584, column: 12, scope: !2089)
!2145 = !DILocation(line: 584, column: 10, scope: !2089)
!2146 = !DILocation(line: 586, column: 13, scope: !2089)
!2147 = !DILocation(line: 586, column: 21, scope: !2089)
!2148 = !DILocation(line: 586, column: 3, scope: !2089)
!2149 = !DILocation(line: 587, column: 3, scope: !2089)
!2150 = !DILocation(line: 587, column: 3, scope: !2092)
!2151 = !DILocation(line: 587, column: 3, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2092, file: !2, line: 587, column: 3)
!2153 = !DILocation(line: 587, column: 3, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 587, column: 3)
!2155 = !DILocation(line: 587, column: 3, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2154, file: !2, line: 587, column: 3)
!2157 = !DILocation(line: 587, column: 3, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2154, file: !2, line: 587, column: 3)
!2159 = !DILocation(line: 587, column: 3, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 587, column: 3)
!2161 = !DILocation(line: 587, column: 3, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2160, file: !2, line: 587, column: 3)
!2163 = !DILocation(line: 587, column: 3, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !2, line: 587, column: 3)
!2165 = !DILocation(line: 587, column: 3, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 587, column: 3)
!2167 = !{i64 2158095095}
!2168 = !DILocation(line: 587, column: 3, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !2, line: 587, column: 3)
!2170 = !DILocation(line: 587, column: 3, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2169, file: !2, line: 587, column: 3)
!2172 = !DILocation(line: 587, column: 3, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2169, file: !2, line: 587, column: 3)
!2174 = !DILocation(line: 588, column: 2, scope: !2089)
!2175 = !DILocation(line: 589, column: 3, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2090, file: !2, line: 588, column: 9)
!2177 = !DILocation(line: 589, column: 6, scope: !2176)
!2178 = !DILocation(line: 589, column: 22, scope: !2176)
!2179 = !DILocation(line: 591, column: 18, scope: !2071)
!2180 = !DILocation(line: 591, column: 2, scope: !2071)
!2181 = !DILocation(line: 591, column: 9, scope: !2071)
!2182 = !DILocation(line: 591, column: 16, scope: !2071)
!2183 = !DILocation(line: 592, column: 15, scope: !2071)
!2184 = !DILocation(line: 592, column: 2, scope: !2071)
!2185 = !DILocation(line: 592, column: 9, scope: !2071)
!2186 = !DILocation(line: 592, column: 13, scope: !2071)
!2187 = !DILocation(line: 593, column: 9, scope: !2071)
!2188 = !DILocation(line: 593, column: 16, scope: !2071)
!2189 = !DILocation(line: 593, column: 2, scope: !2071)
!2190 = !DILocation(line: 593, column: 21, scope: !2071)
!2191 = !DILocation(line: 593, column: 26, scope: !2071)
!2192 = !DILocation(line: 594, column: 12, scope: !2071)
!2193 = !DILocation(line: 594, column: 19, scope: !2071)
!2194 = !DILocation(line: 594, column: 32, scope: !2071)
!2195 = !DILocation(line: 594, column: 35, scope: !2071)
!2196 = !DILocation(line: 594, column: 2, scope: !2071)
!2197 = !DILocation(line: 596, column: 2, scope: !2071)
!2198 = !DILocation(line: 596, column: 2, scope: !2094)
!2199 = !DILocation(line: 596, column: 2, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2094, file: !2, line: 596, column: 2)
!2201 = !DILocation(line: 596, column: 2, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 596, column: 2)
!2203 = !DILocation(line: 596, column: 2, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 596, column: 2)
!2205 = !DILocation(line: 596, column: 2, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 596, column: 2)
!2207 = !DILocation(line: 596, column: 2, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2200, file: !2, line: 596, column: 2)
!2209 = !DILocation(line: 596, column: 2, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2208, file: !2, line: 596, column: 2)
!2211 = !DILocation(line: 596, column: 2, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2208, file: !2, line: 596, column: 2)
!2213 = !DILocation(line: 596, column: 2, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2212, file: !2, line: 596, column: 2)
!2215 = !{i64 2158102799}
!2216 = !DILocation(line: 596, column: 2, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2212, file: !2, line: 596, column: 2)
!2218 = !DILocation(line: 596, column: 2, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2217, file: !2, line: 596, column: 2)
!2220 = !DILocation(line: 596, column: 2, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2217, file: !2, line: 596, column: 2)
!2222 = !DILocation(line: 598, column: 1, scope: !2071)
!2223 = !DILocation(line: 599, column: 26, scope: !2071)
!2224 = !DILocation(line: 599, column: 29, scope: !2071)
!2225 = !DILocation(line: 599, column: 41, scope: !2071)
!2226 = !DILocation(line: 599, column: 2, scope: !2071)
!2227 = !DILocation(line: 600, column: 2, scope: !2071)
!2228 = !DILocation(line: 600, column: 2, scope: !2097)
!2229 = !DILocation(line: 600, column: 2, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2097, file: !2, line: 600, column: 2)
!2231 = !DILocation(line: 600, column: 2, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2230, file: !2, line: 600, column: 2)
!2233 = !DILocation(line: 600, column: 2, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2232, file: !2, line: 600, column: 2)
!2235 = !DILocation(line: 601, column: 1, scope: !2071)
!2236 = distinct !DISubprogram(name: "list_move", scope: !592, file: !592, line: 296, type: !2237, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !123, !123}
!2239 = !{!2240, !2241}
!2240 = !DILocalVariable(name: "list", arg: 1, scope: !2236, file: !592, line: 296, type: !123)
!2241 = !DILocalVariable(name: "head", arg: 2, scope: !2236, file: !592, line: 296, type: !123)
!2242 = !DILocation(line: 296, column: 48, scope: !2236)
!2243 = !DILocation(line: 296, column: 72, scope: !2236)
!2244 = !DILocation(line: 298, column: 19, scope: !2236)
!2245 = !DILocation(line: 298, column: 2, scope: !2236)
!2246 = !DILocation(line: 299, column: 11, scope: !2236)
!2247 = !DILocation(line: 299, column: 17, scope: !2236)
!2248 = !DILocation(line: 299, column: 2, scope: !2236)
!2249 = !DILocation(line: 300, column: 1, scope: !2236)
!2250 = distinct !DISubprogram(name: "kmalloc", scope: !38, file: !38, line: 591, type: !2251, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!48, !148, !132}
!2253 = !{!2254, !2255, !2256}
!2254 = !DILocalVariable(name: "size", arg: 1, scope: !2250, file: !38, line: 591, type: !148)
!2255 = !DILocalVariable(name: "flags", arg: 2, scope: !2250, file: !38, line: 591, type: !132)
!2256 = !DILocalVariable(name: "index", scope: !2257, file: !38, line: 594, type: !33)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !38, line: 593, column: 42)
!2258 = distinct !DILexicalBlock(scope: !2250, file: !38, line: 593, column: 6)
!2259 = !DILocation(line: 591, column: 61, scope: !2250)
!2260 = !DILocation(line: 591, column: 73, scope: !2250)
!2261 = !DILocation(line: 593, column: 27, scope: !2258)
!2262 = !DILocation(line: 593, column: 6, scope: !2258)
!2263 = !DILocation(line: 593, column: 33, scope: !2258)
!2264 = !DILocation(line: 593, column: 36, scope: !2258)
!2265 = !DILocation(line: 593, column: 6, scope: !2250)
!2266 = !DILocation(line: 594, column: 3, scope: !2257)
!2267 = !DILocation(line: 594, column: 16, scope: !2257)
!2268 = !DILocation(line: 596, column: 7, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2257, file: !38, line: 596, column: 7)
!2270 = !DILocation(line: 596, column: 12, scope: !2269)
!2271 = !DILocation(line: 596, column: 7, scope: !2257)
!2272 = !DILocation(line: 597, column: 25, scope: !2269)
!2273 = !DILocation(line: 597, column: 31, scope: !2269)
!2274 = !DILocation(line: 597, column: 11, scope: !2269)
!2275 = !DILocation(line: 597, column: 4, scope: !2269)
!2276 = !DILocation(line: 599, column: 11, scope: !2257)
!2277 = !DILocation(line: 599, column: 9, scope: !2257)
!2278 = !DILocation(line: 601, column: 33, scope: !2257)
!2279 = !DILocation(line: 601, column: 40, scope: !2257)
!2280 = !DILocation(line: 601, column: 20, scope: !2257)
!2281 = !DILocation(line: 601, column: 5, scope: !2257)
!2282 = !DILocation(line: 601, column: 51, scope: !2257)
!2283 = !DILocation(line: 602, column: 5, scope: !2257)
!2284 = !DILocation(line: 602, column: 12, scope: !2257)
!2285 = !DILocation(line: 600, column: 10, scope: !2257)
!2286 = !DILocation(line: 600, column: 3, scope: !2257)
!2287 = !DILocation(line: 603, column: 2, scope: !2258)
!2288 = !DILocation(line: 604, column: 19, scope: !2250)
!2289 = !DILocation(line: 604, column: 25, scope: !2250)
!2290 = !DILocation(line: 604, column: 9, scope: !2250)
!2291 = !DILocation(line: 604, column: 2, scope: !2250)
!2292 = !DILocation(line: 605, column: 1, scope: !2250)
!2293 = distinct !DISubprogram(name: "size_add", scope: !2294, file: !2294, line: 208, type: !2295, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2297)
!2294 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!148, !148, !148}
!2297 = !{!2298, !2299, !2300}
!2298 = !DILocalVariable(name: "addend1", arg: 1, scope: !2293, file: !2294, line: 208, type: !148)
!2299 = !DILocalVariable(name: "addend2", arg: 2, scope: !2293, file: !2294, line: 208, type: !148)
!2300 = !DILocalVariable(name: "bytes", scope: !2293, file: !2294, line: 210, type: !148)
!2301 = !DILocation(line: 208, column: 51, scope: !2293)
!2302 = !DILocation(line: 208, column: 67, scope: !2293)
!2303 = !DILocation(line: 210, column: 2, scope: !2293)
!2304 = !DILocation(line: 210, column: 9, scope: !2293)
!2305 = !DILocation(line: 212, column: 6, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2293, file: !2294, line: 212, column: 6)
!2307 = !DILocation(line: 212, column: 6, scope: !2293)
!2308 = !DILocation(line: 213, column: 3, scope: !2306)
!2309 = !DILocation(line: 215, column: 9, scope: !2293)
!2310 = !DILocation(line: 215, column: 2, scope: !2293)
!2311 = !DILocation(line: 216, column: 1, scope: !2293)
!2312 = distinct !DISubprogram(name: "size_mul", scope: !2294, file: !2294, line: 189, type: !2295, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2313)
!2313 = !{!2314, !2315, !2316}
!2314 = !DILocalVariable(name: "factor1", arg: 1, scope: !2312, file: !2294, line: 189, type: !148)
!2315 = !DILocalVariable(name: "factor2", arg: 2, scope: !2312, file: !2294, line: 189, type: !148)
!2316 = !DILocalVariable(name: "bytes", scope: !2312, file: !2294, line: 191, type: !148)
!2317 = !DILocation(line: 189, column: 51, scope: !2312)
!2318 = !DILocation(line: 189, column: 67, scope: !2312)
!2319 = !DILocation(line: 191, column: 2, scope: !2312)
!2320 = !DILocation(line: 191, column: 9, scope: !2312)
!2321 = !DILocation(line: 193, column: 6, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2312, file: !2294, line: 193, column: 6)
!2323 = !DILocation(line: 193, column: 6, scope: !2312)
!2324 = !DILocation(line: 194, column: 3, scope: !2322)
!2325 = !DILocation(line: 196, column: 9, scope: !2312)
!2326 = !DILocation(line: 196, column: 2, scope: !2312)
!2327 = !DILocation(line: 197, column: 1, scope: !2312)
!2328 = distinct !DISubprogram(name: "list_del", scope: !592, file: !592, line: 227, type: !593, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2329)
!2329 = !{!2330}
!2330 = !DILocalVariable(name: "entry", arg: 1, scope: !2328, file: !592, line: 227, type: !123)
!2331 = !DILocation(line: 227, column: 47, scope: !2328)
!2332 = !DILocation(line: 229, column: 19, scope: !2328)
!2333 = !DILocation(line: 229, column: 2, scope: !2328)
!2334 = !DILocation(line: 230, column: 2, scope: !2328)
!2335 = !DILocation(line: 230, column: 9, scope: !2328)
!2336 = !DILocation(line: 230, column: 14, scope: !2328)
!2337 = !DILocation(line: 231, column: 2, scope: !2328)
!2338 = !DILocation(line: 231, column: 9, scope: !2328)
!2339 = !DILocation(line: 231, column: 14, scope: !2328)
!2340 = !DILocation(line: 232, column: 1, scope: !2328)
!2341 = distinct !DISubprogram(name: "list_add", scope: !592, file: !592, line: 167, type: !2237, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2342)
!2342 = !{!2343, !2344}
!2343 = !DILocalVariable(name: "new", arg: 1, scope: !2341, file: !592, line: 167, type: !123)
!2344 = !DILocalVariable(name: "head", arg: 2, scope: !2341, file: !592, line: 167, type: !123)
!2345 = !DILocation(line: 167, column: 47, scope: !2341)
!2346 = !DILocation(line: 167, column: 70, scope: !2341)
!2347 = !DILocation(line: 169, column: 13, scope: !2341)
!2348 = !DILocation(line: 169, column: 18, scope: !2341)
!2349 = !DILocation(line: 169, column: 24, scope: !2341)
!2350 = !DILocation(line: 169, column: 30, scope: !2341)
!2351 = !DILocation(line: 169, column: 2, scope: !2341)
!2352 = !DILocation(line: 170, column: 1, scope: !2341)
!2353 = !DISubprogram(name: "kvfree_call_rcu", scope: !2354, file: !2354, line: 37, type: !2355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2354 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !114, !48}
!2357 = distinct !DISubprogram(name: "sidtab_sid2str_get", scope: !2, file: !2, line: 603, type: !2358, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!28, !170, !59, !235, !1117}
!2360 = !{!2361, !2362, !2363, !2364, !2365, !2366, !2367}
!2361 = !DILocalVariable(name: "s", arg: 1, scope: !2357, file: !2, line: 603, type: !170)
!2362 = !DILocalVariable(name: "entry", arg: 2, scope: !2357, file: !2, line: 603, type: !59)
!2363 = !DILocalVariable(name: "out", arg: 3, scope: !2357, file: !2, line: 604, type: !235)
!2364 = !DILocalVariable(name: "out_len", arg: 4, scope: !2357, file: !2, line: 604, type: !1117)
!2365 = !DILocalVariable(name: "cache", scope: !2357, file: !2, line: 606, type: !107)
!2366 = !DILocalVariable(name: "rc", scope: !2357, file: !2, line: 607, type: !28)
!2367 = !DILocalVariable(name: "__UNIQUE_ID_rcu576", scope: !2368, file: !2, line: 614, type: !107)
!2368 = distinct !DILexicalBlock(scope: !2357, file: !2, line: 614, column: 10)
!2369 = !DILocation(line: 603, column: 39, scope: !2357)
!2370 = !DILocation(line: 603, column: 63, scope: !2357)
!2371 = !DILocation(line: 604, column: 17, scope: !2357)
!2372 = !DILocation(line: 604, column: 27, scope: !2357)
!2373 = !DILocation(line: 606, column: 2, scope: !2357)
!2374 = !DILocation(line: 606, column: 27, scope: !2357)
!2375 = !DILocation(line: 607, column: 2, scope: !2357)
!2376 = !DILocation(line: 607, column: 6, scope: !2357)
!2377 = !DILocation(line: 609, column: 6, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2357, file: !2, line: 609, column: 6)
!2379 = !DILocation(line: 609, column: 13, scope: !2378)
!2380 = !DILocation(line: 609, column: 21, scope: !2378)
!2381 = !DILocation(line: 609, column: 6, scope: !2357)
!2382 = !DILocation(line: 610, column: 3, scope: !2378)
!2383 = !DILocation(line: 612, column: 2, scope: !2357)
!2384 = !DILocation(line: 614, column: 10, scope: !2368)
!2385 = !DILocation(line: 614, column: 10, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2368, file: !2, line: 614, column: 10)
!2387 = !DILocation(line: 614, column: 10, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2386, file: !2, line: 614, column: 10)
!2389 = !DILocation(line: 614, column: 10, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2368, file: !2, line: 614, column: 10)
!2391 = !DILocation(line: 614, column: 10, scope: !2357)
!2392 = !DILocation(line: 614, column: 8, scope: !2357)
!2393 = !DILocation(line: 615, column: 7, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2357, file: !2, line: 615, column: 6)
!2395 = !DILocation(line: 615, column: 6, scope: !2357)
!2396 = !DILocation(line: 616, column: 6, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2394, file: !2, line: 615, column: 14)
!2398 = !DILocation(line: 617, column: 2, scope: !2397)
!2399 = !DILocation(line: 618, column: 14, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2394, file: !2, line: 617, column: 9)
!2401 = !DILocation(line: 618, column: 21, scope: !2400)
!2402 = !DILocation(line: 618, column: 4, scope: !2400)
!2403 = !DILocation(line: 618, column: 12, scope: !2400)
!2404 = !DILocation(line: 619, column: 7, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2400, file: !2, line: 619, column: 7)
!2406 = !DILocation(line: 619, column: 7, scope: !2400)
!2407 = !DILocation(line: 620, column: 19, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2405, file: !2, line: 619, column: 12)
!2409 = !DILocation(line: 620, column: 26, scope: !2408)
!2410 = !DILocation(line: 620, column: 31, scope: !2408)
!2411 = !DILocation(line: 620, column: 38, scope: !2408)
!2412 = !DILocation(line: 620, column: 11, scope: !2408)
!2413 = !DILocation(line: 620, column: 5, scope: !2408)
!2414 = !DILocation(line: 620, column: 9, scope: !2408)
!2415 = !DILocation(line: 621, column: 10, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 621, column: 8)
!2417 = !DILocation(line: 621, column: 9, scope: !2416)
!2418 = !DILocation(line: 621, column: 8, scope: !2408)
!2419 = !DILocation(line: 622, column: 8, scope: !2416)
!2420 = !DILocation(line: 622, column: 5, scope: !2416)
!2421 = !DILocation(line: 623, column: 3, scope: !2408)
!2422 = !DILocation(line: 626, column: 2, scope: !2357)
!2423 = !DILocation(line: 628, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2357, file: !2, line: 628, column: 6)
!2425 = !DILocation(line: 628, column: 10, scope: !2424)
!2426 = !DILocation(line: 628, column: 13, scope: !2424)
!2427 = !DILocation(line: 628, column: 6, scope: !2357)
!2428 = !DILocation(line: 629, column: 22, scope: !2424)
!2429 = !DILocation(line: 629, column: 25, scope: !2424)
!2430 = !DILocation(line: 629, column: 33, scope: !2424)
!2431 = !DILocation(line: 629, column: 32, scope: !2424)
!2432 = !DILocation(line: 629, column: 39, scope: !2424)
!2433 = !DILocation(line: 629, column: 38, scope: !2424)
!2434 = !DILocation(line: 629, column: 3, scope: !2424)
!2435 = !DILocation(line: 630, column: 9, scope: !2357)
!2436 = !DILocation(line: 630, column: 2, scope: !2357)
!2437 = !DILocation(line: 631, column: 1, scope: !2357)
!2438 = !DISubprogram(name: "kmemdup", scope: !2439, file: !2439, line: 219, type: !2440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2439 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!48, !2442, !148, !132}
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2444 = !DISubprogram(name: "kstrdup", scope: !2439, file: !2439, line: 216, type: !2445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!105, !1042, !132}
!2447 = distinct !DISubprogram(name: "mls_context_cpy", scope: !71, file: !71, line: 41, type: !690, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2448)
!2448 = !{!2449, !2450, !2451, !2452}
!2449 = !DILocalVariable(name: "dst", arg: 1, scope: !2447, file: !71, line: 41, type: !616)
!2450 = !DILocalVariable(name: "src", arg: 2, scope: !2447, file: !71, line: 41, type: !692)
!2451 = !DILocalVariable(name: "rc", scope: !2447, file: !71, line: 43, type: !28)
!2452 = !DILabel(scope: !2447, name: "out", file: !71, line: 54)
!2453 = !DILocation(line: 41, column: 51, scope: !2447)
!2454 = !DILocation(line: 41, column: 78, scope: !2447)
!2455 = !DILocation(line: 43, column: 2, scope: !2447)
!2456 = !DILocation(line: 43, column: 6, scope: !2447)
!2457 = !DILocation(line: 45, column: 29, scope: !2447)
!2458 = !DILocation(line: 45, column: 34, scope: !2447)
!2459 = !DILocation(line: 45, column: 40, scope: !2447)
!2460 = !DILocation(line: 45, column: 49, scope: !2447)
!2461 = !DILocation(line: 45, column: 2, scope: !2447)
!2462 = !DILocation(line: 45, column: 7, scope: !2447)
!2463 = !DILocation(line: 45, column: 13, scope: !2447)
!2464 = !DILocation(line: 45, column: 22, scope: !2447)
!2465 = !DILocation(line: 45, column: 27, scope: !2447)
!2466 = !DILocation(line: 46, column: 20, scope: !2447)
!2467 = !DILocation(line: 46, column: 25, scope: !2447)
!2468 = !DILocation(line: 46, column: 31, scope: !2447)
!2469 = !DILocation(line: 46, column: 40, scope: !2447)
!2470 = !DILocation(line: 46, column: 46, scope: !2447)
!2471 = !DILocation(line: 46, column: 51, scope: !2447)
!2472 = !DILocation(line: 46, column: 57, scope: !2447)
!2473 = !DILocation(line: 46, column: 66, scope: !2447)
!2474 = !DILocation(line: 46, column: 7, scope: !2447)
!2475 = !DILocation(line: 46, column: 5, scope: !2447)
!2476 = !DILocation(line: 47, column: 6, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2447, file: !71, line: 47, column: 6)
!2478 = !DILocation(line: 47, column: 6, scope: !2447)
!2479 = !DILocation(line: 48, column: 3, scope: !2477)
!2480 = !DILocation(line: 50, column: 29, scope: !2447)
!2481 = !DILocation(line: 50, column: 34, scope: !2447)
!2482 = !DILocation(line: 50, column: 40, scope: !2447)
!2483 = !DILocation(line: 50, column: 49, scope: !2447)
!2484 = !DILocation(line: 50, column: 2, scope: !2447)
!2485 = !DILocation(line: 50, column: 7, scope: !2447)
!2486 = !DILocation(line: 50, column: 13, scope: !2447)
!2487 = !DILocation(line: 50, column: 22, scope: !2447)
!2488 = !DILocation(line: 50, column: 27, scope: !2447)
!2489 = !DILocation(line: 51, column: 20, scope: !2447)
!2490 = !DILocation(line: 51, column: 25, scope: !2447)
!2491 = !DILocation(line: 51, column: 31, scope: !2447)
!2492 = !DILocation(line: 51, column: 40, scope: !2447)
!2493 = !DILocation(line: 51, column: 46, scope: !2447)
!2494 = !DILocation(line: 51, column: 51, scope: !2447)
!2495 = !DILocation(line: 51, column: 57, scope: !2447)
!2496 = !DILocation(line: 51, column: 66, scope: !2447)
!2497 = !DILocation(line: 51, column: 7, scope: !2447)
!2498 = !DILocation(line: 51, column: 5, scope: !2447)
!2499 = !DILocation(line: 52, column: 6, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2447, file: !71, line: 52, column: 6)
!2501 = !DILocation(line: 52, column: 6, scope: !2447)
!2502 = !DILocation(line: 53, column: 20, scope: !2500)
!2503 = !DILocation(line: 53, column: 25, scope: !2500)
!2504 = !DILocation(line: 53, column: 31, scope: !2500)
!2505 = !DILocation(line: 53, column: 40, scope: !2500)
!2506 = !DILocation(line: 53, column: 3, scope: !2500)
!2507 = !DILocation(line: 54, column: 1, scope: !2447)
!2508 = !DILocation(line: 55, column: 9, scope: !2447)
!2509 = !DILocation(line: 56, column: 1, scope: !2447)
!2510 = !DILocation(line: 55, column: 2, scope: !2447)
!2511 = !DISubprogram(name: "kfree", scope: !38, file: !38, line: 227, type: !2512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{null, !2442}
!2514 = !DISubprogram(name: "ebitmap_cpy", scope: !88, file: !88, line: 126, type: !2515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!28, !435, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!2519 = !DISubprogram(name: "ebitmap_destroy", scope: !88, file: !88, line: 131, type: !2520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{null, !435}
!2522 = distinct !DISubprogram(name: "context_cmp", scope: !71, file: !71, line: 186, type: !2523, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!28, !692, !692}
!2525 = !{!2526, !2527}
!2526 = !DILocalVariable(name: "c1", arg: 1, scope: !2522, file: !71, line: 186, type: !692)
!2527 = !DILocalVariable(name: "c2", arg: 2, scope: !2522, file: !71, line: 186, type: !692)
!2528 = !DILocation(line: 186, column: 53, scope: !2522)
!2529 = !DILocation(line: 186, column: 79, scope: !2522)
!2530 = !DILocation(line: 188, column: 6, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2522, file: !71, line: 188, column: 6)
!2532 = !DILocation(line: 188, column: 10, scope: !2531)
!2533 = !DILocation(line: 188, column: 14, scope: !2531)
!2534 = !DILocation(line: 188, column: 17, scope: !2531)
!2535 = !DILocation(line: 188, column: 21, scope: !2531)
!2536 = !DILocation(line: 188, column: 6, scope: !2522)
!2537 = !DILocation(line: 189, column: 11, scope: !2531)
!2538 = !DILocation(line: 189, column: 15, scope: !2531)
!2539 = !DILocation(line: 189, column: 22, scope: !2531)
!2540 = !DILocation(line: 189, column: 26, scope: !2531)
!2541 = !DILocation(line: 189, column: 19, scope: !2531)
!2542 = !DILocation(line: 189, column: 30, scope: !2531)
!2543 = !DILocation(line: 189, column: 41, scope: !2531)
!2544 = !DILocation(line: 189, column: 45, scope: !2531)
!2545 = !DILocation(line: 189, column: 50, scope: !2531)
!2546 = !DILocation(line: 189, column: 54, scope: !2531)
!2547 = !DILocation(line: 189, column: 34, scope: !2531)
!2548 = !DILocation(line: 189, column: 33, scope: !2531)
!2549 = !DILocation(line: 0, scope: !2531)
!2550 = !DILocation(line: 189, column: 3, scope: !2531)
!2551 = !DILocation(line: 190, column: 6, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2522, file: !71, line: 190, column: 6)
!2553 = !DILocation(line: 190, column: 10, scope: !2552)
!2554 = !DILocation(line: 190, column: 14, scope: !2552)
!2555 = !DILocation(line: 190, column: 17, scope: !2552)
!2556 = !DILocation(line: 190, column: 21, scope: !2552)
!2557 = !DILocation(line: 190, column: 6, scope: !2522)
!2558 = !DILocation(line: 191, column: 3, scope: !2552)
!2559 = !DILocation(line: 192, column: 11, scope: !2522)
!2560 = !DILocation(line: 192, column: 15, scope: !2522)
!2561 = !DILocation(line: 192, column: 23, scope: !2522)
!2562 = !DILocation(line: 192, column: 27, scope: !2522)
!2563 = !DILocation(line: 192, column: 20, scope: !2522)
!2564 = !DILocation(line: 192, column: 33, scope: !2522)
!2565 = !DILocation(line: 193, column: 4, scope: !2522)
!2566 = !DILocation(line: 193, column: 8, scope: !2522)
!2567 = !DILocation(line: 193, column: 16, scope: !2522)
!2568 = !DILocation(line: 193, column: 20, scope: !2522)
!2569 = !DILocation(line: 193, column: 13, scope: !2522)
!2570 = !DILocation(line: 193, column: 26, scope: !2522)
!2571 = !DILocation(line: 194, column: 4, scope: !2522)
!2572 = !DILocation(line: 194, column: 8, scope: !2522)
!2573 = !DILocation(line: 194, column: 16, scope: !2522)
!2574 = !DILocation(line: 194, column: 20, scope: !2522)
!2575 = !DILocation(line: 194, column: 13, scope: !2522)
!2576 = !DILocation(line: 194, column: 26, scope: !2522)
!2577 = !DILocation(line: 195, column: 19, scope: !2522)
!2578 = !DILocation(line: 195, column: 23, scope: !2522)
!2579 = !DILocation(line: 195, column: 3, scope: !2522)
!2580 = !DILocation(line: 0, scope: !2522)
!2581 = !DILocation(line: 192, column: 2, scope: !2522)
!2582 = !DILocation(line: 196, column: 1, scope: !2522)
!2583 = !DISubprogram(name: "strcmp", scope: !2439, file: !2439, line: 88, type: !2584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!28, !1042, !1042}
!2586 = distinct !DISubprogram(name: "mls_context_cmp", scope: !71, file: !71, line: 131, type: !2523, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2587)
!2587 = !{!2588, !2589}
!2588 = !DILocalVariable(name: "c1", arg: 1, scope: !2586, file: !71, line: 131, type: !692)
!2589 = !DILocalVariable(name: "c2", arg: 2, scope: !2586, file: !71, line: 131, type: !692)
!2590 = !DILocation(line: 131, column: 57, scope: !2586)
!2591 = !DILocation(line: 131, column: 83, scope: !2586)
!2592 = !DILocation(line: 133, column: 11, scope: !2586)
!2593 = !DILocation(line: 133, column: 15, scope: !2586)
!2594 = !DILocation(line: 133, column: 21, scope: !2586)
!2595 = !DILocation(line: 133, column: 30, scope: !2586)
!2596 = !DILocation(line: 133, column: 38, scope: !2586)
!2597 = !DILocation(line: 133, column: 42, scope: !2586)
!2598 = !DILocation(line: 133, column: 48, scope: !2586)
!2599 = !DILocation(line: 133, column: 57, scope: !2586)
!2600 = !DILocation(line: 133, column: 35, scope: !2586)
!2601 = !DILocation(line: 133, column: 63, scope: !2586)
!2602 = !DILocation(line: 134, column: 16, scope: !2586)
!2603 = !DILocation(line: 134, column: 20, scope: !2586)
!2604 = !DILocation(line: 134, column: 26, scope: !2586)
!2605 = !DILocation(line: 134, column: 35, scope: !2586)
!2606 = !DILocation(line: 134, column: 41, scope: !2586)
!2607 = !DILocation(line: 134, column: 45, scope: !2586)
!2608 = !DILocation(line: 134, column: 51, scope: !2586)
!2609 = !DILocation(line: 134, column: 60, scope: !2586)
!2610 = !DILocation(line: 134, column: 3, scope: !2586)
!2611 = !DILocation(line: 134, column: 65, scope: !2586)
!2612 = !DILocation(line: 135, column: 4, scope: !2586)
!2613 = !DILocation(line: 135, column: 8, scope: !2586)
!2614 = !DILocation(line: 135, column: 14, scope: !2586)
!2615 = !DILocation(line: 135, column: 23, scope: !2586)
!2616 = !DILocation(line: 135, column: 31, scope: !2586)
!2617 = !DILocation(line: 135, column: 35, scope: !2586)
!2618 = !DILocation(line: 135, column: 41, scope: !2586)
!2619 = !DILocation(line: 135, column: 50, scope: !2586)
!2620 = !DILocation(line: 135, column: 28, scope: !2586)
!2621 = !DILocation(line: 135, column: 56, scope: !2586)
!2622 = !DILocation(line: 136, column: 16, scope: !2586)
!2623 = !DILocation(line: 136, column: 20, scope: !2586)
!2624 = !DILocation(line: 136, column: 26, scope: !2586)
!2625 = !DILocation(line: 136, column: 35, scope: !2586)
!2626 = !DILocation(line: 136, column: 41, scope: !2586)
!2627 = !DILocation(line: 136, column: 45, scope: !2586)
!2628 = !DILocation(line: 136, column: 51, scope: !2586)
!2629 = !DILocation(line: 136, column: 60, scope: !2586)
!2630 = !DILocation(line: 136, column: 3, scope: !2586)
!2631 = !DILocation(line: 0, scope: !2586)
!2632 = !DILocation(line: 133, column: 2, scope: !2586)
!2633 = !DISubprogram(name: "ebitmap_cmp", scope: !88, file: !88, line: 125, type: !2634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!28, !2517, !2517}
!2636 = distinct !DISubprogram(name: "__hash_32_generic", scope: !889, file: !889, line: 60, type: !1669, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2637)
!2637 = !{!2638}
!2638 = !DILocalVariable(name: "val", arg: 1, scope: !2636, file: !889, line: 60, type: !64)
!2639 = !DILocation(line: 60, column: 41, scope: !2636)
!2640 = !DILocation(line: 62, column: 9, scope: !2636)
!2641 = !DILocation(line: 62, column: 13, scope: !2636)
!2642 = !DILocation(line: 62, column: 2, scope: !2636)
!2643 = !DISubprogram(name: "__rcu_read_lock", scope: !1018, file: !1018, line: 74, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2644 = !DISubprogram(name: "__rcu_read_unlock", scope: !1018, file: !1018, line: 75, type: !1019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2645 = distinct !DISubprogram(name: "sidtab_lookup", scope: !2, file: !2, line: 222, type: !1045, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2646)
!2646 = !{!2647, !2648, !2649, !2650}
!2647 = !DILocalVariable(name: "s", arg: 1, scope: !2645, file: !2, line: 222, type: !170)
!2648 = !DILocalVariable(name: "index", arg: 2, scope: !2645, file: !2, line: 222, type: !64)
!2649 = !DILocalVariable(name: "count", scope: !2645, file: !2, line: 225, type: !64)
!2650 = !DILocalVariable(name: "___p1", scope: !2651, file: !2, line: 225, type: !64)
!2651 = distinct !DILexicalBlock(scope: !2645, file: !2, line: 225, column: 14)
!2652 = !DILocation(line: 222, column: 58, scope: !2645)
!2653 = !DILocation(line: 222, column: 65, scope: !2645)
!2654 = !DILocation(line: 225, column: 2, scope: !2645)
!2655 = !DILocation(line: 225, column: 6, scope: !2645)
!2656 = !DILocation(line: 225, column: 14, scope: !2651)
!2657 = !DILocation(line: 225, column: 14, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2651, file: !2, line: 225, column: 14)
!2659 = !DILocation(line: 225, column: 14, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2658, file: !2, line: 225, column: 14)
!2661 = !DILocation(line: 225, column: 14, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2651, file: !2, line: 225, column: 14)
!2663 = !{i64 2158017257}
!2664 = !DILocation(line: 225, column: 14, scope: !2645)
!2665 = !DILocation(line: 227, column: 6, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2645, file: !2, line: 227, column: 6)
!2667 = !DILocation(line: 227, column: 15, scope: !2666)
!2668 = !DILocation(line: 227, column: 12, scope: !2666)
!2669 = !DILocation(line: 227, column: 6, scope: !2645)
!2670 = !DILocation(line: 228, column: 3, scope: !2666)
!2671 = !DILocation(line: 230, column: 26, scope: !2645)
!2672 = !DILocation(line: 230, column: 29, scope: !2645)
!2673 = !DILocation(line: 230, column: 9, scope: !2645)
!2674 = !DILocation(line: 230, column: 2, scope: !2645)
!2675 = !DILocation(line: 231, column: 1, scope: !2645)
!2676 = distinct !DISubprogram(name: "sidtab_lookup_initial", scope: !2, file: !2, line: 233, type: !1045, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2677)
!2677 = !{!2678, !2679}
!2678 = !DILocalVariable(name: "s", arg: 1, scope: !2676, file: !2, line: 233, type: !170)
!2679 = !DILocalVariable(name: "sid", arg: 2, scope: !2676, file: !2, line: 233, type: !64)
!2680 = !DILocation(line: 233, column: 66, scope: !2676)
!2681 = !DILocation(line: 233, column: 73, scope: !2676)
!2682 = !DILocation(line: 235, column: 9, scope: !2676)
!2683 = !DILocation(line: 235, column: 12, scope: !2676)
!2684 = !DILocation(line: 235, column: 18, scope: !2676)
!2685 = !DILocation(line: 235, column: 22, scope: !2676)
!2686 = !DILocation(line: 235, column: 27, scope: !2676)
!2687 = !DILocation(line: 235, column: 34, scope: !2676)
!2688 = !DILocation(line: 235, column: 37, scope: !2676)
!2689 = !DILocation(line: 235, column: 43, scope: !2676)
!2690 = !DILocation(line: 235, column: 47, scope: !2676)
!2691 = !DILocation(line: 235, column: 52, scope: !2676)
!2692 = !DILocation(line: 235, column: 2, scope: !2676)
!2693 = distinct !DISubprogram(name: "sidtab_alloc_roots", scope: !2, file: !2, line: 160, type: !2694, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2696)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!28, !170, !64}
!2696 = !{!2697, !2698, !2699}
!2697 = !DILocalVariable(name: "s", arg: 1, scope: !2693, file: !2, line: 160, type: !170)
!2698 = !DILocalVariable(name: "level", arg: 2, scope: !2693, file: !2, line: 160, type: !64)
!2699 = !DILocalVariable(name: "l", scope: !2693, file: !2, line: 162, type: !64)
!2700 = !DILocation(line: 160, column: 46, scope: !2693)
!2701 = !DILocation(line: 160, column: 53, scope: !2693)
!2702 = !DILocation(line: 162, column: 2, scope: !2693)
!2703 = !DILocation(line: 162, column: 6, scope: !2693)
!2704 = !DILocation(line: 164, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2693, file: !2, line: 164, column: 6)
!2706 = !DILocation(line: 164, column: 10, scope: !2705)
!2707 = !DILocation(line: 164, column: 19, scope: !2705)
!2708 = !DILocation(line: 164, column: 6, scope: !2693)
!2709 = !DILocation(line: 165, column: 26, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2705, file: !2, line: 164, column: 29)
!2711 = !DILocation(line: 165, column: 3, scope: !2710)
!2712 = !DILocation(line: 165, column: 6, scope: !2710)
!2713 = !DILocation(line: 165, column: 24, scope: !2710)
!2714 = !DILocation(line: 167, column: 8, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2710, file: !2, line: 167, column: 7)
!2716 = !DILocation(line: 167, column: 11, scope: !2715)
!2717 = !DILocation(line: 167, column: 20, scope: !2715)
!2718 = !DILocation(line: 167, column: 7, scope: !2710)
!2719 = !DILocation(line: 168, column: 4, scope: !2715)
!2720 = !DILocation(line: 169, column: 2, scope: !2710)
!2721 = !DILocation(line: 170, column: 9, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2693, file: !2, line: 170, column: 2)
!2723 = !DILocation(line: 170, column: 7, scope: !2722)
!2724 = !DILocation(line: 170, column: 14, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2722, file: !2, line: 170, column: 2)
!2726 = !DILocation(line: 170, column: 19, scope: !2725)
!2727 = !DILocation(line: 170, column: 16, scope: !2725)
!2728 = !DILocation(line: 170, column: 2, scope: !2722)
!2729 = !DILocation(line: 171, column: 8, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2725, file: !2, line: 171, column: 7)
!2731 = !DILocation(line: 171, column: 11, scope: !2730)
!2732 = !DILocation(line: 171, column: 17, scope: !2730)
!2733 = !DILocation(line: 171, column: 20, scope: !2730)
!2734 = !DILocation(line: 171, column: 7, scope: !2725)
!2735 = !DILocation(line: 172, column: 28, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2730, file: !2, line: 171, column: 31)
!2737 = !DILocation(line: 172, column: 4, scope: !2736)
!2738 = !DILocation(line: 172, column: 7, scope: !2736)
!2739 = !DILocation(line: 172, column: 13, scope: !2736)
!2740 = !DILocation(line: 172, column: 26, scope: !2736)
!2741 = !DILocation(line: 174, column: 9, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2736, file: !2, line: 174, column: 8)
!2743 = !DILocation(line: 174, column: 12, scope: !2742)
!2744 = !DILocation(line: 174, column: 18, scope: !2742)
!2745 = !DILocation(line: 174, column: 21, scope: !2742)
!2746 = !DILocation(line: 174, column: 8, scope: !2736)
!2747 = !DILocation(line: 175, column: 5, scope: !2742)
!2748 = !DILocation(line: 176, column: 4, scope: !2736)
!2749 = !DILocation(line: 176, column: 7, scope: !2736)
!2750 = !DILocation(line: 176, column: 13, scope: !2736)
!2751 = !DILocation(line: 176, column: 16, scope: !2736)
!2752 = !DILocation(line: 176, column: 27, scope: !2736)
!2753 = !DILocation(line: 176, column: 40, scope: !2736)
!2754 = !DILocation(line: 176, column: 43, scope: !2736)
!2755 = !DILocation(line: 176, column: 49, scope: !2736)
!2756 = !DILocation(line: 176, column: 51, scope: !2736)
!2757 = !DILocation(line: 177, column: 3, scope: !2736)
!2758 = !DILocation(line: 170, column: 26, scope: !2725)
!2759 = !DILocation(line: 170, column: 2, scope: !2725)
!2760 = distinct !{!2760, !2728, !2761, !525, !526}
!2761 = !DILocation(line: 177, column: 3, scope: !2722)
!2762 = !DILocation(line: 178, column: 2, scope: !2693)
!2763 = !DILocation(line: 179, column: 1, scope: !2693)
!2764 = distinct !DISubprogram(name: "kzalloc", scope: !38, file: !38, line: 719, type: !2251, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2765)
!2765 = !{!2766, !2767}
!2766 = !DILocalVariable(name: "size", arg: 1, scope: !2764, file: !38, line: 719, type: !148)
!2767 = !DILocalVariable(name: "flags", arg: 2, scope: !2764, file: !38, line: 719, type: !132)
!2768 = !DILocation(line: 719, column: 52, scope: !2764)
!2769 = !DILocation(line: 719, column: 64, scope: !2764)
!2770 = !DILocation(line: 721, column: 17, scope: !2764)
!2771 = !DILocation(line: 721, column: 23, scope: !2764)
!2772 = !DILocation(line: 721, column: 29, scope: !2764)
!2773 = !DILocation(line: 721, column: 9, scope: !2764)
!2774 = !DILocation(line: 721, column: 2, scope: !2764)
!2775 = distinct !DISubprogram(name: "mls_context_destroy", scope: !71, file: !71, line: 139, type: !1425, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2776)
!2776 = !{!2777}
!2777 = !DILocalVariable(name: "c", arg: 1, scope: !2775, file: !71, line: 139, type: !616)
!2778 = !DILocation(line: 139, column: 56, scope: !2775)
!2779 = !DILocation(line: 141, column: 19, scope: !2775)
!2780 = !DILocation(line: 141, column: 22, scope: !2775)
!2781 = !DILocation(line: 141, column: 28, scope: !2775)
!2782 = !DILocation(line: 141, column: 37, scope: !2775)
!2783 = !DILocation(line: 141, column: 2, scope: !2775)
!2784 = !DILocation(line: 142, column: 19, scope: !2775)
!2785 = !DILocation(line: 142, column: 22, scope: !2775)
!2786 = !DILocation(line: 142, column: 28, scope: !2775)
!2787 = !DILocation(line: 142, column: 37, scope: !2775)
!2788 = !DILocation(line: 142, column: 2, scope: !2775)
!2789 = !DILocation(line: 143, column: 19, scope: !2775)
!2790 = !DILocation(line: 143, column: 2, scope: !2775)
!2791 = !DILocation(line: 144, column: 1, scope: !2775)
!2792 = distinct !DISubprogram(name: "mls_context_init", scope: !71, file: !71, line: 36, type: !1425, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2793)
!2793 = !{!2794}
!2794 = !DILocalVariable(name: "c", arg: 1, scope: !2792, file: !71, line: 36, type: !616)
!2795 = !DILocation(line: 36, column: 53, scope: !2792)
!2796 = !DILocation(line: 38, column: 10, scope: !2792)
!2797 = !DILocation(line: 38, column: 13, scope: !2792)
!2798 = !DILocation(line: 38, column: 2, scope: !2792)
!2799 = !DILocation(line: 39, column: 1, scope: !2792)
!2800 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !1320, file: !1320, line: 43, type: !2801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{null, !582, !97}
!2803 = distinct !DISubprogram(name: "__might_resched", scope: !2804, file: !2804, line: 184, type: !2805, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2807)
!2804 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!2805 = !DISubroutineType(types: !2806)
!2806 = !{null, !1042, !28, !33}
!2807 = !{!2808, !2809, !2810}
!2808 = !DILocalVariable(name: "file", arg: 1, scope: !2803, file: !2804, line: 184, type: !1042)
!2809 = !DILocalVariable(name: "line", arg: 2, scope: !2803, file: !2804, line: 184, type: !28)
!2810 = !DILocalVariable(name: "offsets", arg: 3, scope: !2803, file: !2804, line: 185, type: !33)
!2811 = !DILocation(line: 184, column: 50, scope: !2803)
!2812 = !DILocation(line: 184, column: 60, scope: !2803)
!2813 = !DILocation(line: 185, column: 23, scope: !2803)
!2814 = !DILocation(line: 185, column: 34, scope: !2803)
!2815 = !DILocation(line: 2104, column: 9, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !24, file: !25, line: 2104, column: 9)
!2817 = !DILocation(line: 2104, column: 9, scope: !24)
!2818 = !DILocation(line: 2104, column: 2, scope: !24)
!2819 = distinct !DISubprogram(name: "__list_del_entry", scope: !592, file: !592, line: 213, type: !593, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2820)
!2820 = !{!2821}
!2821 = !DILocalVariable(name: "entry", arg: 1, scope: !2819, file: !592, line: 213, type: !123)
!2822 = !DILocation(line: 213, column: 55, scope: !2819)
!2823 = !DILocation(line: 215, column: 30, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2819, file: !592, line: 215, column: 6)
!2825 = !DILocation(line: 215, column: 7, scope: !2824)
!2826 = !DILocation(line: 215, column: 6, scope: !2819)
!2827 = !DILocation(line: 216, column: 3, scope: !2824)
!2828 = !DILocation(line: 218, column: 13, scope: !2819)
!2829 = !DILocation(line: 218, column: 20, scope: !2819)
!2830 = !DILocation(line: 218, column: 26, scope: !2819)
!2831 = !DILocation(line: 218, column: 33, scope: !2819)
!2832 = !DILocation(line: 218, column: 2, scope: !2819)
!2833 = !DILocation(line: 219, column: 1, scope: !2819)
!2834 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !592, file: !592, line: 134, type: !2835, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!447, !123}
!2837 = !{!2838}
!2838 = !DILocalVariable(name: "entry", arg: 1, scope: !2834, file: !592, line: 134, type: !123)
!2839 = !DILocation(line: 134, column: 61, scope: !2834)
!2840 = !DILocation(line: 136, column: 2, scope: !2834)
!2841 = distinct !DISubprogram(name: "__list_del", scope: !592, file: !592, line: 193, type: !2237, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2842)
!2842 = !{!2843, !2844}
!2843 = !DILocalVariable(name: "prev", arg: 1, scope: !2841, file: !592, line: 193, type: !123)
!2844 = !DILocalVariable(name: "next", arg: 2, scope: !2841, file: !592, line: 193, type: !123)
!2845 = !DILocation(line: 193, column: 50, scope: !2841)
!2846 = !DILocation(line: 193, column: 75, scope: !2841)
!2847 = !DILocation(line: 195, column: 15, scope: !2841)
!2848 = !DILocation(line: 195, column: 2, scope: !2841)
!2849 = !DILocation(line: 195, column: 8, scope: !2841)
!2850 = !DILocation(line: 195, column: 13, scope: !2841)
!2851 = !DILocation(line: 196, column: 2, scope: !2841)
!2852 = !DILocation(line: 196, column: 2, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2841, file: !592, line: 196, column: 2)
!2854 = !DILocation(line: 196, column: 2, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2853, file: !592, line: 196, column: 2)
!2856 = !DILocation(line: 196, column: 2, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2853, file: !592, line: 196, column: 2)
!2858 = !DILocation(line: 197, column: 1, scope: !2841)
!2859 = !DISubprogram(name: "kmalloc_large", scope: !38, file: !38, line: 531, type: !2251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2860 = distinct !DISubprogram(name: "__kmalloc_index", scope: !38, file: !38, line: 444, type: !2861, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !2863)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!33, !148, !447}
!2863 = !{!2864, !2865}
!2864 = !DILocalVariable(name: "size", arg: 1, scope: !2860, file: !38, line: 444, type: !148)
!2865 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2860, file: !38, line: 445, type: !447)
!2866 = !DILocation(line: 444, column: 60, scope: !2860)
!2867 = !DILocation(line: 445, column: 16, scope: !2860)
!2868 = !DILocation(line: 447, column: 7, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 447, column: 6)
!2870 = !DILocation(line: 447, column: 6, scope: !2860)
!2871 = !DILocation(line: 448, column: 3, scope: !2869)
!2872 = !DILocation(line: 450, column: 6, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 450, column: 6)
!2874 = !DILocation(line: 450, column: 11, scope: !2873)
!2875 = !DILocation(line: 450, column: 6, scope: !2860)
!2876 = !DILocation(line: 451, column: 3, scope: !2873)
!2877 = !DILocation(line: 453, column: 32, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 453, column: 6)
!2879 = !DILocation(line: 453, column: 37, scope: !2878)
!2880 = !DILocation(line: 453, column: 42, scope: !2878)
!2881 = !DILocation(line: 453, column: 45, scope: !2878)
!2882 = !DILocation(line: 453, column: 50, scope: !2878)
!2883 = !DILocation(line: 453, column: 6, scope: !2860)
!2884 = !DILocation(line: 454, column: 3, scope: !2878)
!2885 = !DILocation(line: 455, column: 32, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 455, column: 6)
!2887 = !DILocation(line: 455, column: 37, scope: !2886)
!2888 = !DILocation(line: 455, column: 43, scope: !2886)
!2889 = !DILocation(line: 455, column: 46, scope: !2886)
!2890 = !DILocation(line: 455, column: 51, scope: !2886)
!2891 = !DILocation(line: 455, column: 6, scope: !2860)
!2892 = !DILocation(line: 456, column: 3, scope: !2886)
!2893 = !DILocation(line: 457, column: 6, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 457, column: 6)
!2895 = !DILocation(line: 457, column: 11, scope: !2894)
!2896 = !DILocation(line: 457, column: 6, scope: !2860)
!2897 = !DILocation(line: 457, column: 26, scope: !2894)
!2898 = !DILocation(line: 458, column: 6, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 458, column: 6)
!2900 = !DILocation(line: 458, column: 11, scope: !2899)
!2901 = !DILocation(line: 458, column: 6, scope: !2860)
!2902 = !DILocation(line: 458, column: 26, scope: !2899)
!2903 = !DILocation(line: 459, column: 6, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 459, column: 6)
!2905 = !DILocation(line: 459, column: 11, scope: !2904)
!2906 = !DILocation(line: 459, column: 6, scope: !2860)
!2907 = !DILocation(line: 459, column: 26, scope: !2904)
!2908 = !DILocation(line: 460, column: 6, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 460, column: 6)
!2910 = !DILocation(line: 460, column: 11, scope: !2909)
!2911 = !DILocation(line: 460, column: 6, scope: !2860)
!2912 = !DILocation(line: 460, column: 26, scope: !2909)
!2913 = !DILocation(line: 461, column: 6, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 461, column: 6)
!2915 = !DILocation(line: 461, column: 11, scope: !2914)
!2916 = !DILocation(line: 461, column: 6, scope: !2860)
!2917 = !DILocation(line: 461, column: 26, scope: !2914)
!2918 = !DILocation(line: 462, column: 6, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 462, column: 6)
!2920 = !DILocation(line: 462, column: 11, scope: !2919)
!2921 = !DILocation(line: 462, column: 6, scope: !2860)
!2922 = !DILocation(line: 462, column: 26, scope: !2919)
!2923 = !DILocation(line: 463, column: 6, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 463, column: 6)
!2925 = !DILocation(line: 463, column: 11, scope: !2924)
!2926 = !DILocation(line: 463, column: 6, scope: !2860)
!2927 = !DILocation(line: 463, column: 26, scope: !2924)
!2928 = !DILocation(line: 464, column: 6, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 464, column: 6)
!2930 = !DILocation(line: 464, column: 11, scope: !2929)
!2931 = !DILocation(line: 464, column: 6, scope: !2860)
!2932 = !DILocation(line: 464, column: 26, scope: !2929)
!2933 = !DILocation(line: 465, column: 6, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 465, column: 6)
!2935 = !DILocation(line: 465, column: 11, scope: !2934)
!2936 = !DILocation(line: 465, column: 6, scope: !2860)
!2937 = !DILocation(line: 465, column: 26, scope: !2934)
!2938 = !DILocation(line: 466, column: 6, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 466, column: 6)
!2940 = !DILocation(line: 466, column: 11, scope: !2939)
!2941 = !DILocation(line: 466, column: 6, scope: !2860)
!2942 = !DILocation(line: 466, column: 26, scope: !2939)
!2943 = !DILocation(line: 467, column: 6, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 467, column: 6)
!2945 = !DILocation(line: 467, column: 11, scope: !2944)
!2946 = !DILocation(line: 467, column: 6, scope: !2860)
!2947 = !DILocation(line: 467, column: 26, scope: !2944)
!2948 = !DILocation(line: 468, column: 6, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 468, column: 6)
!2950 = !DILocation(line: 468, column: 11, scope: !2949)
!2951 = !DILocation(line: 468, column: 6, scope: !2860)
!2952 = !DILocation(line: 468, column: 26, scope: !2949)
!2953 = !DILocation(line: 469, column: 6, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 469, column: 6)
!2955 = !DILocation(line: 469, column: 11, scope: !2954)
!2956 = !DILocation(line: 469, column: 6, scope: !2860)
!2957 = !DILocation(line: 469, column: 26, scope: !2954)
!2958 = !DILocation(line: 470, column: 6, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 470, column: 6)
!2960 = !DILocation(line: 470, column: 11, scope: !2959)
!2961 = !DILocation(line: 470, column: 6, scope: !2860)
!2962 = !DILocation(line: 470, column: 26, scope: !2959)
!2963 = !DILocation(line: 471, column: 6, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 471, column: 6)
!2965 = !DILocation(line: 471, column: 11, scope: !2964)
!2966 = !DILocation(line: 471, column: 6, scope: !2860)
!2967 = !DILocation(line: 471, column: 26, scope: !2964)
!2968 = !DILocation(line: 472, column: 6, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 472, column: 6)
!2970 = !DILocation(line: 472, column: 11, scope: !2969)
!2971 = !DILocation(line: 472, column: 6, scope: !2860)
!2972 = !DILocation(line: 472, column: 26, scope: !2969)
!2973 = !DILocation(line: 473, column: 6, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 473, column: 6)
!2975 = !DILocation(line: 473, column: 11, scope: !2974)
!2976 = !DILocation(line: 473, column: 6, scope: !2860)
!2977 = !DILocation(line: 473, column: 26, scope: !2974)
!2978 = !DILocation(line: 474, column: 6, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 474, column: 6)
!2980 = !DILocation(line: 474, column: 11, scope: !2979)
!2981 = !DILocation(line: 474, column: 6, scope: !2860)
!2982 = !DILocation(line: 474, column: 27, scope: !2979)
!2983 = !DILocation(line: 475, column: 6, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 475, column: 6)
!2985 = !DILocation(line: 475, column: 11, scope: !2984)
!2986 = !DILocation(line: 475, column: 6, scope: !2860)
!2987 = !DILocation(line: 475, column: 32, scope: !2984)
!2988 = !DILocation(line: 477, column: 50, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2860, file: !38, line: 477, column: 6)
!2990 = !DILocation(line: 477, column: 6, scope: !2860)
!2991 = !DILocation(line: 478, column: 3, scope: !2989)
!2992 = !DILocation(line: 478, column: 3, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !38, line: 478, column: 3)
!2994 = distinct !DILexicalBlock(scope: !2989, file: !38, line: 478, column: 3)
!2995 = !{i32 -2143548564}
!2996 = !DILocation(line: 478, column: 3, scope: !2994)
!2997 = !DILocation(line: 480, column: 3, scope: !2989)
!2998 = !DILocation(line: 480, column: 3, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2989, file: !38, line: 480, column: 3)
!3000 = !DILocation(line: 480, column: 3, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2999, file: !38, line: 480, column: 3)
!3002 = !DILocation(line: 480, column: 3, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2999, file: !38, line: 480, column: 3)
!3004 = !{i64 2151418935, i64 2151418964, i64 2151419010, i64 2151419068, i64 2151419122, i64 2151419176, i64 2151419231, i64 2151419262}
!3005 = !DILocation(line: 483, column: 2, scope: !2860)
!3006 = !DILocation(line: 484, column: 1, scope: !2860)
!3007 = !DISubprogram(name: "kmalloc_trace", scope: !38, file: !38, line: 525, type: !3008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!48, !3010, !132, !148}
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3012, line: 11, flags: DIFlagFwdDecl)
!3012 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3013 = distinct !DISubprogram(name: "kmalloc_type", scope: !38, file: !38, line: 401, type: !3014, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!37, !132, !97}
!3016 = !{!3017, !3018}
!3017 = !DILocalVariable(name: "flags", arg: 1, scope: !3013, file: !38, line: 401, type: !132)
!3018 = !DILocalVariable(name: "caller", arg: 2, scope: !3013, file: !38, line: 401, type: !97)
!3019 = !DILocation(line: 401, column: 67, scope: !3013)
!3020 = !DILocation(line: 401, column: 88, scope: !3013)
!3021 = !DILocation(line: 407, column: 6, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3013, file: !38, line: 407, column: 6)
!3023 = !DILocation(line: 407, column: 6, scope: !3013)
!3024 = !DILocation(line: 413, column: 3, scope: !3022)
!3025 = !DILocation(line: 423, column: 38, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3013, file: !38, line: 423, column: 6)
!3027 = !DILocation(line: 423, column: 44, scope: !3026)
!3028 = !DILocation(line: 423, column: 6, scope: !3013)
!3029 = !DILocation(line: 424, column: 3, scope: !3026)
!3030 = !DILocation(line: 426, column: 3, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3013, file: !38, line: 425, column: 6)
!3032 = !DILocation(line: 429, column: 1, scope: !3013)
!3033 = !DISubprogram(name: "__kmalloc", scope: !38, file: !38, line: 488, type: !2251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3034 = !DISubprogram(name: "__compiletime_assert_117", scope: !38, file: !38, line: 478, type: !1019, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3035 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2294, file: !2294, line: 51, type: !3036, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!447, !447}
!3038 = !{!3039}
!3039 = !DILocalVariable(name: "overflow", arg: 1, scope: !3035, file: !2294, line: 51, type: !447)
!3040 = !DILocation(line: 51, column: 60, scope: !3035)
!3041 = !DILocation(line: 53, column: 9, scope: !3035)
!3042 = !DILocation(line: 53, column: 2, scope: !3035)
!3043 = distinct !DISubprogram(name: "__list_add", scope: !592, file: !592, line: 146, type: !3044, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !3046)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !123, !123, !123}
!3046 = !{!3047, !3048, !3049}
!3047 = !DILocalVariable(name: "new", arg: 1, scope: !3043, file: !592, line: 146, type: !123)
!3048 = !DILocalVariable(name: "prev", arg: 2, scope: !3043, file: !592, line: 147, type: !123)
!3049 = !DILocalVariable(name: "next", arg: 3, scope: !3043, file: !592, line: 148, type: !123)
!3050 = !DILocation(line: 146, column: 49, scope: !3043)
!3051 = !DILocation(line: 147, column: 28, scope: !3043)
!3052 = !DILocation(line: 148, column: 28, scope: !3043)
!3053 = !DILocation(line: 150, column: 24, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3043, file: !592, line: 150, column: 6)
!3055 = !DILocation(line: 150, column: 29, scope: !3054)
!3056 = !DILocation(line: 150, column: 35, scope: !3054)
!3057 = !DILocation(line: 150, column: 7, scope: !3054)
!3058 = !DILocation(line: 150, column: 6, scope: !3043)
!3059 = !DILocation(line: 151, column: 3, scope: !3054)
!3060 = !DILocation(line: 153, column: 15, scope: !3043)
!3061 = !DILocation(line: 153, column: 2, scope: !3043)
!3062 = !DILocation(line: 153, column: 8, scope: !3043)
!3063 = !DILocation(line: 153, column: 13, scope: !3043)
!3064 = !DILocation(line: 154, column: 14, scope: !3043)
!3065 = !DILocation(line: 154, column: 2, scope: !3043)
!3066 = !DILocation(line: 154, column: 7, scope: !3043)
!3067 = !DILocation(line: 154, column: 12, scope: !3043)
!3068 = !DILocation(line: 155, column: 14, scope: !3043)
!3069 = !DILocation(line: 155, column: 2, scope: !3043)
!3070 = !DILocation(line: 155, column: 7, scope: !3043)
!3071 = !DILocation(line: 155, column: 12, scope: !3043)
!3072 = !DILocation(line: 156, column: 2, scope: !3043)
!3073 = !DILocation(line: 156, column: 2, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3043, file: !592, line: 156, column: 2)
!3075 = !DILocation(line: 156, column: 2, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3074, file: !592, line: 156, column: 2)
!3077 = !DILocation(line: 156, column: 2, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3074, file: !592, line: 156, column: 2)
!3079 = !DILocation(line: 157, column: 1, scope: !3043)
!3080 = distinct !DISubprogram(name: "__list_add_valid", scope: !592, file: !592, line: 128, type: !3081, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !29, retainedNodes: !3083)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!447, !123, !123, !123}
!3083 = !{!3084, !3085, !3086}
!3084 = !DILocalVariable(name: "new", arg: 1, scope: !3080, file: !592, line: 128, type: !123)
!3085 = !DILocalVariable(name: "prev", arg: 2, scope: !3080, file: !592, line: 129, type: !123)
!3086 = !DILocalVariable(name: "next", arg: 3, scope: !3080, file: !592, line: 130, type: !123)
!3087 = !DILocation(line: 128, column: 55, scope: !3080)
!3088 = !DILocation(line: 129, column: 23, scope: !3080)
!3089 = !DILocation(line: 130, column: 23, scope: !3080)
!3090 = !DILocation(line: 132, column: 2, scope: !3080)
