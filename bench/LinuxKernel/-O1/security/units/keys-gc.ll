; ModuleID = 'security/keys/gc.c'
source_filename = "security/keys/gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.key_type = type { ptr, i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.lock_class_key = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.10 }
%union.anon.10 = type { i64 }
%struct.spinlock = type { %union.anon.11 }
%union.anon.11 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.pcpu_hot = type { %union.anon.23 }
%union.anon.23 = type { %struct.anon.24, [16 x i8] }
%struct.anon.24 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.0, %struct.rw_semaphore, ptr, ptr, %union.anon.3, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.4, %union.anon.8, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.0 = type { %struct.rb_node }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.3 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.4 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.5, ptr, ptr, ptr }
%union.anon.5 = type { i64 }
%union.anon.8 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.anon.7 = type { i64, i64, ptr, ptr, ptr }
%struct.key_user = type { %struct.rb_node, %struct.mutex, %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.kuid_t, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.thread_info = type { i64, i64, i32, i32 }

@key_gc_delay = hidden global i32 300, align 4, !dbg !0
@key_gc_work = hidden global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @key_gc_work, i64 8), ptr getelementptr (i8, ptr @key_gc_work, i64 8) }, ptr @key_garbage_collector }, align 8, !dbg !3644
@.str = private unnamed_addr constant [6 x i8] c".dead\00", align 1, !dbg !3646
@key_type_dead = hidden global %struct.key_type { ptr @.str, i64 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %struct.lock_class_key zeroinitializer }, align 8, !dbg !3648
@key_gc_flags = internal global i64 0, align 8, !dbg !3652
@key_gc_next_run = internal global i64 9223372036854775807, align 8, !dbg !3654
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@key_gc_timer = internal global %struct.timer_list { %struct.hlist_node { ptr inttoptr (i64 -2401263026318605568 to ptr), ptr null }, i64 0, ptr @key_gc_timer_func, i32 0 }, align 8, !dbg !3656
@key_gc_dead_keytype = internal global ptr null, align 8, !dbg !3650
@system_wq = external dso_local global ptr, align 8
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched29 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !3658
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@key_garbage_collector.graveyard = internal global %struct.list_head { ptr @key_garbage_collector.graveyard, ptr @key_garbage_collector.graveyard }, align 8, !dbg !3662
@key_garbage_collector.gc_state = internal global i8 0, align 1, !dbg !3683
@key_serial_lock = external dso_local global %struct.spinlock, align 4
@key_serial_tree = external dso_local global %struct.rb_root, align 8
@key_type_keyring = external dso_local global %struct.key_type, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"security/keys/gc.c\00", align 1, !dbg !3685
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched185 = internal global ptr @__SCK__cond_resched, section ".discard.addressable", align 8, !dbg !3690
@__SCK__cond_resched = external dso_local global %struct.static_call_key, align 8
@key_jar = external dso_local global ptr, align 8
@llvm.compiler.used = appending global [2 x ptr] [ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched29, ptr @_cond_resched.__UNIQUE_ID___addressable___SCK__cond_resched185], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @key_garbage_collector(ptr noundef %work) #0 align 16 !dbg !3664 {
entry:
  %work.addr = alloca ptr, align 8
  %cursor = alloca ptr, align 8
  %key = alloca ptr, align 8
  %new_timer = alloca i64, align 8
  %limit = alloca i64, align 8
  %expiry = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %tmp58 = alloca i32, align 4
  %tmp127 = alloca i32, align 4
  %tmp130 = alloca i32, align 4
  %tmp151 = alloca i32, align 4
  %tmp156 = alloca i32, align 4
  %tmp173 = alloca i32, align 4
  %tmp197 = alloca i32, align 4
  %tmp208 = alloca i32, align 4
  %tmp209 = alloca i32, align 4
  %tmp213 = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !3666, metadata !DIExpression()), !dbg !3704
  call void @llvm.lifetime.start.p0(i64 8, ptr %cursor) #11, !dbg !3705
  call void @llvm.dbg.declare(metadata ptr %cursor, metadata !3667, metadata !DIExpression()), !dbg !3706
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #11, !dbg !3707
  call void @llvm.dbg.declare(metadata ptr %key, metadata !3668, metadata !DIExpression()), !dbg !3708
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_timer) #11, !dbg !3709
  call void @llvm.dbg.declare(metadata ptr %new_timer, metadata !3669, metadata !DIExpression()), !dbg !3710
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #11, !dbg !3709
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !3670, metadata !DIExpression()), !dbg !3711
  call void @llvm.lifetime.start.p0(i64 8, ptr %expiry) #11, !dbg !3709
  call void @llvm.dbg.declare(metadata ptr %expiry, metadata !3671, metadata !DIExpression()), !dbg !3712
  store i32 0, ptr %tmp, align 4, !dbg !3713
  %0 = load i32, ptr %tmp, align 4, !dbg !3716
  %call = call i64 @ktime_get_real_seconds() #12, !dbg !3717
  store i64 %call, ptr %limit, align 8, !dbg !3718
  %1 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3719
  %conv = zext i8 %1 to i32, !dbg !3719
  %and = and i32 %conv, 48, !dbg !3719
  %conv1 = trunc i32 %and to i8, !dbg !3719
  store i8 %conv1, ptr @key_garbage_collector.gc_state, align 1, !dbg !3719
  %2 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3720
  %conv2 = zext i8 %2 to i32, !dbg !3720
  %shl = shl i32 %conv2, 1, !dbg !3720
  %conv3 = trunc i32 %shl to i8, !dbg !3720
  store i8 %conv3, ptr @key_garbage_collector.gc_state, align 1, !dbg !3720
  %call4 = call zeroext i1 @test_and_clear_bit(i64 noundef 0, ptr noundef @key_gc_flags) #12, !dbg !3721
  br i1 %call4, label %if.then, label %if.end, !dbg !3723

if.then:                                          ; preds = %entry
  %3 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3724
  %conv5 = zext i8 %3 to i32, !dbg !3724
  %or = or i32 %conv5, 2, !dbg !3724
  %conv6 = trunc i32 %or to i8, !dbg !3724
  store i8 %conv6, ptr @key_garbage_collector.gc_state, align 1, !dbg !3724
  br label %if.end, !dbg !3725

if.end:                                           ; preds = %if.then, %entry
  %call7 = call zeroext i1 @test_and_clear_bit(i64 noundef 1, ptr noundef @key_gc_flags) #12, !dbg !3726
  br i1 %call7, label %if.then8, label %if.end12, !dbg !3728

if.then8:                                         ; preds = %if.end
  %4 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3729
  %conv9 = zext i8 %4 to i32, !dbg !3729
  %or10 = or i32 %conv9, 16, !dbg !3729
  %conv11 = trunc i32 %or10 to i8, !dbg !3729
  store i8 %conv11, ptr @key_garbage_collector.gc_state, align 1, !dbg !3729
  br label %if.end12, !dbg !3730

if.end12:                                         ; preds = %if.then8, %if.end
  store i32 0, ptr %tmp13, align 4, !dbg !3731
  %5 = load i32, ptr %tmp13, align 4, !dbg !3734
  store i64 9223372036854775807, ptr %new_timer, align 8, !dbg !3735
  call void @spin_lock(ptr noundef @key_serial_lock) #12, !dbg !3736
  %call14 = call ptr @rb_first(ptr noundef @key_serial_tree) #12, !dbg !3737
  store ptr %call14, ptr %cursor, align 8, !dbg !3738
  br label %continue_scanning, !dbg !3739

continue_scanning:                                ; preds = %if.then126, %if.end12
  call void @llvm.dbg.label(metadata !3672), !dbg !3740
  br label %while.cond, !dbg !3741

while.cond:                                       ; preds = %if.end124, %continue_scanning
  %6 = load ptr, ptr %cursor, align 8, !dbg !3742
  %tobool = icmp ne ptr %6, null, !dbg !3741
  br i1 %tobool, label %while.body, label %while.end, !dbg !3741

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !3743
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3673, metadata !DIExpression()), !dbg !3743
  %7 = load ptr, ptr %cursor, align 8, !dbg !3743
  store ptr %7, ptr %__mptr, align 8, !dbg !3743
  %8 = load ptr, ptr %__mptr, align 8, !dbg !3743
  %add.ptr = getelementptr i8, ptr %8, i64 -8, !dbg !3743
  store ptr %add.ptr, ptr %tmp15, align 8, !dbg !3743
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !3744
  %9 = load ptr, ptr %tmp15, align 8, !dbg !3743
  store ptr %9, ptr %key, align 8, !dbg !3745
  %10 = load ptr, ptr %cursor, align 8, !dbg !3746
  %call16 = call ptr @rb_next(ptr noundef %10) #12, !dbg !3747
  store ptr %call16, ptr %cursor, align 8, !dbg !3748
  %11 = load ptr, ptr %key, align 8, !dbg !3749
  %usage = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 0, !dbg !3751
  %call17 = call i32 @refcount_read(ptr noundef %usage) #12, !dbg !3752
  %cmp = icmp eq i32 %call17, 0, !dbg !3753
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !3754

if.then19:                                        ; preds = %while.body
  br label %found_unreferenced_key, !dbg !3755

if.end20:                                         ; preds = %while.body
  %12 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3756
  %conv21 = zext i8 %12 to i32, !dbg !3756
  %and22 = and i32 %conv21, 16, !dbg !3756
  %tobool23 = icmp ne i32 %and22, 0, !dbg !3756
  %lnot = xor i1 %tobool23, true, !dbg !3756
  %lnot24 = xor i1 %lnot, true, !dbg !3756
  %lnot.ext = zext i1 %lnot24 to i32, !dbg !3756
  %conv25 = sext i32 %lnot.ext to i64, !dbg !3756
  %expval = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !3756
  %tobool26 = icmp ne i64 %expval, 0, !dbg !3756
  br i1 %tobool26, label %if.then27, label %if.end41, !dbg !3758

if.then27:                                        ; preds = %if.end20
  %13 = load ptr, ptr %key, align 8, !dbg !3759
  %14 = getelementptr inbounds %struct.key, ptr %13, i32 0, i32 15, !dbg !3762
  %type = getelementptr inbounds %struct.anon.7, ptr %14, i32 0, i32 2, !dbg !3762
  %15 = load ptr, ptr %type, align 8, !dbg !3762
  %16 = load ptr, ptr @key_gc_dead_keytype, align 8, !dbg !3763
  %cmp28 = icmp eq ptr %15, %16, !dbg !3764
  br i1 %cmp28, label %if.then30, label %if.else, !dbg !3765

if.then30:                                        ; preds = %if.then27
  %17 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3766
  %conv31 = zext i8 %17 to i32, !dbg !3766
  %or32 = or i32 %conv31, 128, !dbg !3766
  %conv33 = trunc i32 %or32 to i8, !dbg !3766
  store i8 %conv33, ptr @key_garbage_collector.gc_state, align 1, !dbg !3766
  %18 = load ptr, ptr %key, align 8, !dbg !3768
  %flags = getelementptr inbounds %struct.key, ptr %18, i32 0, i32 14, !dbg !3769
  call void @set_bit(i64 noundef 0, ptr noundef %flags) #12, !dbg !3770
  %19 = load ptr, ptr %key, align 8, !dbg !3771
  %perm = getelementptr inbounds %struct.key, ptr %19, i32 0, i32 10, !dbg !3772
  store i32 0, ptr %perm, align 8, !dbg !3773
  br label %skip_dead_key, !dbg !3774

if.else:                                          ; preds = %if.then27
  %20 = load ptr, ptr %key, align 8, !dbg !3775
  %21 = getelementptr inbounds %struct.key, ptr %20, i32 0, i32 15, !dbg !3777
  %type34 = getelementptr inbounds %struct.anon.7, ptr %21, i32 0, i32 2, !dbg !3777
  %22 = load ptr, ptr %type34, align 8, !dbg !3777
  %cmp35 = icmp eq ptr %22, @key_type_keyring, !dbg !3778
  br i1 %cmp35, label %land.lhs.true, label %if.end39, !dbg !3779

land.lhs.true:                                    ; preds = %if.else
  %23 = load ptr, ptr %key, align 8, !dbg !3780
  %restrict_link = getelementptr inbounds %struct.key, ptr %23, i32 0, i32 17, !dbg !3781
  %24 = load ptr, ptr %restrict_link, align 8, !dbg !3781
  %tobool37 = icmp ne ptr %24, null, !dbg !3780
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !3782

if.then38:                                        ; preds = %land.lhs.true
  br label %found_restricted_keyring, !dbg !3783

if.end39:                                         ; preds = %land.lhs.true, %if.else
  br label %if.end40

if.end40:                                         ; preds = %if.end39
  br label %if.end41, !dbg !3785

if.end41:                                         ; preds = %if.end40, %if.end20
  %25 = load ptr, ptr %key, align 8, !dbg !3786
  %26 = getelementptr inbounds %struct.key, ptr %25, i32 0, i32 6, !dbg !3787
  %27 = load i64, ptr %26, align 8, !dbg !3787
  store i64 %27, ptr %expiry, align 8, !dbg !3788
  %28 = load i64, ptr %expiry, align 8, !dbg !3789
  %cmp42 = icmp ne i64 %28, 9223372036854775807, !dbg !3791
  br i1 %cmp42, label %if.then44, label %if.end60, !dbg !3792

if.then44:                                        ; preds = %if.end41
  %29 = load ptr, ptr %key, align 8, !dbg !3793
  %30 = getelementptr inbounds %struct.key, ptr %29, i32 0, i32 15, !dbg !3796
  %type45 = getelementptr inbounds %struct.anon.7, ptr %30, i32 0, i32 2, !dbg !3796
  %31 = load ptr, ptr %type45, align 8, !dbg !3796
  %flags46 = getelementptr inbounds %struct.key_type, ptr %31, i32 0, i32 2, !dbg !3797
  %32 = load i32, ptr %flags46, align 8, !dbg !3797
  %and47 = and i32 %32, 2, !dbg !3798
  %tobool48 = icmp ne i32 %and47, 0, !dbg !3798
  br i1 %tobool48, label %if.end51, label %if.then49, !dbg !3799

if.then49:                                        ; preds = %if.then44
  %33 = load i32, ptr @key_gc_delay, align 4, !dbg !3800
  %conv50 = zext i32 %33 to i64, !dbg !3800
  %34 = load i64, ptr %expiry, align 8, !dbg !3801
  %add = add i64 %34, %conv50, !dbg !3801
  store i64 %add, ptr %expiry, align 8, !dbg !3801
  br label %if.end51, !dbg !3802

if.end51:                                         ; preds = %if.then49, %if.then44
  %35 = load i64, ptr %expiry, align 8, !dbg !3803
  %36 = load i64, ptr %limit, align 8, !dbg !3805
  %cmp52 = icmp sgt i64 %35, %36, !dbg !3806
  br i1 %cmp52, label %land.lhs.true54, label %if.end59, !dbg !3807

land.lhs.true54:                                  ; preds = %if.end51
  %37 = load i64, ptr %expiry, align 8, !dbg !3808
  %38 = load i64, ptr %new_timer, align 8, !dbg !3809
  %cmp55 = icmp slt i64 %37, %38, !dbg !3810
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !3811

if.then57:                                        ; preds = %land.lhs.true54
  store i32 0, ptr %tmp58, align 4, !dbg !3812
  %39 = load i32, ptr %tmp58, align 4, !dbg !3816
  %40 = load ptr, ptr %key, align 8, !dbg !3817
  %41 = getelementptr inbounds %struct.key, ptr %40, i32 0, i32 6, !dbg !3818
  %42 = load i64, ptr %41, align 8, !dbg !3818
  store i64 %42, ptr %new_timer, align 8, !dbg !3819
  br label %if.end59, !dbg !3820

if.end59:                                         ; preds = %if.then57, %land.lhs.true54, %if.end51
  br label %if.end60, !dbg !3821

if.end60:                                         ; preds = %if.end59, %if.end41
  %43 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3822
  %conv61 = zext i8 %43 to i32, !dbg !3822
  %and62 = and i32 %conv61, 32, !dbg !3822
  %tobool63 = icmp ne i32 %and62, 0, !dbg !3822
  %lnot64 = xor i1 %tobool63, true, !dbg !3822
  %lnot66 = xor i1 %lnot64, true, !dbg !3822
  %lnot.ext67 = zext i1 %lnot66 to i32, !dbg !3822
  %conv68 = sext i32 %lnot.ext67 to i64, !dbg !3822
  %expval69 = call i64 @llvm.expect.i64(i64 %conv68, i64 0), !dbg !3822
  %tobool70 = icmp ne i64 %expval69, 0, !dbg !3822
  br i1 %tobool70, label %if.then71, label %if.end80, !dbg !3824

if.then71:                                        ; preds = %if.end60
  %44 = load ptr, ptr %key, align 8, !dbg !3825
  %45 = getelementptr inbounds %struct.key, ptr %44, i32 0, i32 15, !dbg !3827
  %type72 = getelementptr inbounds %struct.anon.7, ptr %45, i32 0, i32 2, !dbg !3827
  %46 = load ptr, ptr %type72, align 8, !dbg !3827
  %47 = load ptr, ptr @key_gc_dead_keytype, align 8, !dbg !3828
  %cmp73 = icmp eq ptr %46, %47, !dbg !3829
  br i1 %cmp73, label %if.then75, label %if.end79, !dbg !3830

if.then75:                                        ; preds = %if.then71
  %48 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3831
  %conv76 = zext i8 %48 to i32, !dbg !3831
  %or77 = or i32 %conv76, 128, !dbg !3831
  %conv78 = trunc i32 %or77 to i8, !dbg !3831
  store i8 %conv78, ptr @key_garbage_collector.gc_state, align 1, !dbg !3831
  br label %if.end79, !dbg !3832

if.end79:                                         ; preds = %if.then75, %if.then71
  br label %if.end80, !dbg !3828

if.end80:                                         ; preds = %if.end79, %if.end60
  %49 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3833
  %conv81 = zext i8 %49 to i32, !dbg !3833
  %and82 = and i32 %conv81, 2, !dbg !3835
  %tobool83 = icmp ne i32 %and82, 0, !dbg !3835
  br i1 %tobool83, label %if.then94, label %lor.lhs.false, !dbg !3836

lor.lhs.false:                                    ; preds = %if.end80
  %50 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3837
  %conv84 = zext i8 %50 to i32, !dbg !3837
  %and85 = and i32 %conv84, 32, !dbg !3837
  %tobool86 = icmp ne i32 %and85, 0, !dbg !3837
  %lnot87 = xor i1 %tobool86, true, !dbg !3837
  %lnot89 = xor i1 %lnot87, true, !dbg !3837
  %lnot.ext90 = zext i1 %lnot89 to i32, !dbg !3837
  %conv91 = sext i32 %lnot.ext90 to i64, !dbg !3837
  %expval92 = call i64 @llvm.expect.i64(i64 %conv91, i64 0), !dbg !3837
  %tobool93 = icmp ne i64 %expval92, 0, !dbg !3837
  br i1 %tobool93, label %if.then94, label %if.end100, !dbg !3838

if.then94:                                        ; preds = %lor.lhs.false, %if.end80
  %51 = load ptr, ptr %key, align 8, !dbg !3839
  %52 = getelementptr inbounds %struct.key, ptr %51, i32 0, i32 15, !dbg !3842
  %type95 = getelementptr inbounds %struct.anon.7, ptr %52, i32 0, i32 2, !dbg !3842
  %53 = load ptr, ptr %type95, align 8, !dbg !3842
  %cmp96 = icmp eq ptr %53, @key_type_keyring, !dbg !3843
  br i1 %cmp96, label %if.then98, label %if.end99, !dbg !3844

if.then98:                                        ; preds = %if.then94
  br label %found_keyring, !dbg !3845

if.end99:                                         ; preds = %if.then94
  br label %if.end100, !dbg !3846

if.end100:                                        ; preds = %if.end99, %lor.lhs.false
  %54 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3847
  %conv101 = zext i8 %54 to i32, !dbg !3847
  %and102 = and i32 %conv101, 64, !dbg !3847
  %tobool103 = icmp ne i32 %and102, 0, !dbg !3847
  %lnot104 = xor i1 %tobool103, true, !dbg !3847
  %lnot106 = xor i1 %lnot104, true, !dbg !3847
  %lnot.ext107 = zext i1 %lnot106 to i32, !dbg !3847
  %conv108 = sext i32 %lnot.ext107 to i64, !dbg !3847
  %expval109 = call i64 @llvm.expect.i64(i64 %conv108, i64 0), !dbg !3847
  %tobool110 = icmp ne i64 %expval109, 0, !dbg !3847
  br i1 %tobool110, label %if.then111, label %if.end117, !dbg !3849

if.then111:                                       ; preds = %if.end100
  %55 = load ptr, ptr %key, align 8, !dbg !3850
  %56 = getelementptr inbounds %struct.key, ptr %55, i32 0, i32 15, !dbg !3852
  %type112 = getelementptr inbounds %struct.anon.7, ptr %56, i32 0, i32 2, !dbg !3852
  %57 = load ptr, ptr %type112, align 8, !dbg !3852
  %58 = load ptr, ptr @key_gc_dead_keytype, align 8, !dbg !3853
  %cmp113 = icmp eq ptr %57, %58, !dbg !3854
  br i1 %cmp113, label %if.then115, label %if.end116, !dbg !3855

if.then115:                                       ; preds = %if.then111
  br label %destroy_dead_key, !dbg !3856

if.end116:                                        ; preds = %if.then111
  br label %if.end117, !dbg !3853

if.end117:                                        ; preds = %if.end116, %if.end100
  br label %skip_dead_key, !dbg !3847

skip_dead_key:                                    ; preds = %if.end117, %if.then30
  call void @llvm.dbg.label(metadata !3676), !dbg !3857
  %call118 = call i32 @spin_is_contended(ptr noundef @key_serial_lock) #12, !dbg !3858
  %tobool119 = icmp ne i32 %call118, 0, !dbg !3858
  br i1 %tobool119, label %if.then123, label %lor.lhs.false120, !dbg !3860

lor.lhs.false120:                                 ; preds = %skip_dead_key
  %call121 = call zeroext i1 @need_resched() #12, !dbg !3861
  br i1 %call121, label %if.then123, label %if.end124, !dbg !3862

if.then123:                                       ; preds = %lor.lhs.false120, %skip_dead_key
  br label %contended, !dbg !3863

if.end124:                                        ; preds = %lor.lhs.false120
  br label %while.cond, !dbg !3741, !llvm.loop !3864

while.end:                                        ; preds = %while.cond
  br label %contended, !dbg !3741

contended:                                        ; preds = %while.end, %if.then123
  call void @llvm.dbg.label(metadata !3677), !dbg !3868
  call void @spin_unlock(ptr noundef @key_serial_lock) #12, !dbg !3869
  br label %maybe_resched, !dbg !3869

maybe_resched:                                    ; preds = %if.end218, %found_keyring, %found_restricted_keyring, %found_unreferenced_key, %contended
  call void @llvm.dbg.label(metadata !3678), !dbg !3870
  %59 = load ptr, ptr %cursor, align 8, !dbg !3871
  %tobool125 = icmp ne ptr %59, null, !dbg !3871
  br i1 %tobool125, label %if.then126, label %if.end129, !dbg !3873

if.then126:                                       ; preds = %maybe_resched
  call void @__might_resched(ptr noundef @.str.1, i32 noundef 279, i32 noundef 0) #12, !dbg !3874
  %call128 = call i32 @_cond_resched() #12, !dbg !3874
  store i32 %call128, ptr %tmp127, align 4, !dbg !3874
  %60 = load i32, ptr %tmp127, align 4, !dbg !3874
  call void @spin_lock(ptr noundef @key_serial_lock) #12, !dbg !3877
  br label %continue_scanning, !dbg !3878

if.end129:                                        ; preds = %maybe_resched
  store i32 0, ptr %tmp130, align 4, !dbg !3879
  %61 = load i32, ptr %tmp130, align 4, !dbg !3882
  %62 = load i64, ptr %new_timer, align 8, !dbg !3883
  %cmp131 = icmp ne i64 %62, 9223372036854775807, !dbg !3885
  br i1 %cmp131, label %if.then133, label %if.end136, !dbg !3886

if.then133:                                       ; preds = %if.end129
  %63 = load i32, ptr @key_gc_delay, align 4, !dbg !3887
  %conv134 = zext i32 %63 to i64, !dbg !3887
  %64 = load i64, ptr %new_timer, align 8, !dbg !3889
  %add135 = add i64 %64, %conv134, !dbg !3889
  store i64 %add135, ptr %new_timer, align 8, !dbg !3889
  %65 = load i64, ptr %new_timer, align 8, !dbg !3890
  call void @key_schedule_gc(i64 noundef %65) #12, !dbg !3891
  br label %if.end136, !dbg !3892

if.end136:                                        ; preds = %if.then133, %if.end129
  %66 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3893
  %conv137 = zext i8 %66 to i32, !dbg !3893
  %and138 = and i32 %conv137, 32, !dbg !3893
  %tobool139 = icmp ne i32 %and138, 0, !dbg !3893
  %lnot140 = xor i1 %tobool139, true, !dbg !3893
  %lnot142 = xor i1 %lnot140, true, !dbg !3893
  %lnot.ext143 = zext i1 %lnot142 to i32, !dbg !3893
  %conv144 = sext i32 %lnot.ext143 to i64, !dbg !3893
  %expval145 = call i64 @llvm.expect.i64(i64 %conv144, i64 0), !dbg !3893
  %tobool146 = icmp ne i64 %expval145, 0, !dbg !3893
  br i1 %tobool146, label %if.then150, label %lor.lhs.false147, !dbg !3895

lor.lhs.false147:                                 ; preds = %if.end136
  %call148 = call i32 @list_empty(ptr noundef @key_garbage_collector.graveyard) #12, !dbg !3896
  %tobool149 = icmp ne i32 %call148, 0, !dbg !3896
  br i1 %tobool149, label %if.end152, label %if.then150, !dbg !3897

if.then150:                                       ; preds = %lor.lhs.false147, %if.end136
  store i32 0, ptr %tmp151, align 4, !dbg !3898
  %67 = load i32, ptr %tmp151, align 4, !dbg !3902
  call void @synchronize_rcu() #12, !dbg !3903
  br label %if.end152, !dbg !3904

if.end152:                                        ; preds = %if.then150, %lor.lhs.false147
  %call153 = call i32 @list_empty(ptr noundef @key_garbage_collector.graveyard) #12, !dbg !3905
  %tobool154 = icmp ne i32 %call153, 0, !dbg !3905
  br i1 %tobool154, label %if.end157, label %if.then155, !dbg !3907

if.then155:                                       ; preds = %if.end152
  store i32 0, ptr %tmp156, align 4, !dbg !3908
  %68 = load i32, ptr %tmp156, align 4, !dbg !3912
  call void @key_gc_unused_keys(ptr noundef @key_garbage_collector.graveyard) #12, !dbg !3913
  br label %if.end157, !dbg !3914

if.end157:                                        ; preds = %if.then155, %if.end152
  %69 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3915
  %conv158 = zext i8 %69 to i32, !dbg !3915
  %and159 = and i32 %conv158, 48, !dbg !3915
  %tobool160 = icmp ne i32 %and159, 0, !dbg !3915
  %lnot161 = xor i1 %tobool160, true, !dbg !3915
  %lnot163 = xor i1 %lnot161, true, !dbg !3915
  %lnot.ext164 = zext i1 %lnot163 to i32, !dbg !3915
  %conv165 = sext i32 %lnot.ext164 to i64, !dbg !3915
  %expval166 = call i64 @llvm.expect.i64(i64 %conv165, i64 0), !dbg !3915
  %tobool167 = icmp ne i64 %expval166, 0, !dbg !3915
  br i1 %tobool167, label %if.then168, label %if.end185, !dbg !3917

if.then168:                                       ; preds = %if.end157
  %70 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3918
  %conv169 = zext i8 %70 to i32, !dbg !3918
  %and170 = and i32 %conv169, 128, !dbg !3921
  %tobool171 = icmp ne i32 %and170, 0, !dbg !3921
  br i1 %tobool171, label %if.else180, label %if.then172, !dbg !3922

if.then172:                                       ; preds = %if.then168
  store i32 0, ptr %tmp173, align 4, !dbg !3923
  %71 = load i32, ptr %tmp173, align 4, !dbg !3927
  %72 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3928
  %conv174 = zext i8 %72 to i32, !dbg !3928
  %and175 = and i32 %conv174, -49, !dbg !3928
  %conv176 = trunc i32 %and175 to i8, !dbg !3928
  store i8 %conv176, ptr @key_garbage_collector.gc_state, align 1, !dbg !3928
  %73 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3929
  %conv177 = zext i8 %73 to i32, !dbg !3929
  %or178 = or i32 %conv177, 64, !dbg !3929
  %conv179 = trunc i32 %or178 to i8, !dbg !3929
  store i8 %conv179, ptr @key_garbage_collector.gc_state, align 1, !dbg !3929
  br label %if.end184, !dbg !3930

if.else180:                                       ; preds = %if.then168
  %74 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3931
  %conv181 = zext i8 %74 to i32, !dbg !3931
  %or182 = or i32 %conv181, 1, !dbg !3931
  %conv183 = trunc i32 %or182 to i8, !dbg !3931
  store i8 %conv183, ptr @key_garbage_collector.gc_state, align 1, !dbg !3931
  br label %if.end184

if.end184:                                        ; preds = %if.else180, %if.then172
  br label %if.end185, !dbg !3933

if.end185:                                        ; preds = %if.end184, %if.end157
  %75 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3934
  %conv186 = zext i8 %75 to i32, !dbg !3934
  %and187 = and i32 %conv186, 64, !dbg !3934
  %tobool188 = icmp ne i32 %and187, 0, !dbg !3934
  %lnot189 = xor i1 %tobool188, true, !dbg !3934
  %lnot191 = xor i1 %lnot189, true, !dbg !3934
  %lnot.ext192 = zext i1 %lnot191 to i32, !dbg !3934
  %conv193 = sext i32 %lnot.ext192 to i64, !dbg !3934
  %expval194 = call i64 @llvm.expect.i64(i64 %conv193, i64 0), !dbg !3934
  %tobool195 = icmp ne i64 %expval194, 0, !dbg !3934
  br i1 %tobool195, label %if.then196, label %if.end201, !dbg !3936

if.then196:                                       ; preds = %if.end185
  store i32 0, ptr %tmp197, align 4, !dbg !3937
  %76 = load i32, ptr %tmp197, align 4, !dbg !3941
  br label %do.body, !dbg !3942

do.body:                                          ; preds = %if.then196
  br label %do.body198, !dbg !3943

do.body198:                                       ; preds = %do.body
  br label %do.cond, !dbg !3945

do.cond:                                          ; preds = %do.body198
  br label %do.end, !dbg !3945

do.end:                                           ; preds = %do.cond
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !3943, !srcloc !3947
  br label %do.cond199, !dbg !3943

do.cond199:                                       ; preds = %do.end
  br label %do.end200, !dbg !3943

do.end200:                                        ; preds = %do.cond199
  call void @clear_bit(i64 noundef 2, ptr noundef @key_gc_flags) #12, !dbg !3948
  call void @wake_up_bit(ptr noundef @key_gc_flags, i32 noundef 2) #12, !dbg !3949
  br label %if.end201, !dbg !3950

if.end201:                                        ; preds = %do.end200, %if.end185
  %77 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3951
  %conv202 = zext i8 %77 to i32, !dbg !3951
  %and203 = and i32 %conv202, 1, !dbg !3953
  %tobool204 = icmp ne i32 %and203, 0, !dbg !3953
  br i1 %tobool204, label %if.then205, label %if.end207, !dbg !3954

if.then205:                                       ; preds = %if.end201
  %call206 = call zeroext i1 @schedule_work(ptr noundef @key_gc_work) #12, !dbg !3955
  br label %if.end207, !dbg !3955

if.end207:                                        ; preds = %if.then205, %if.end201
  store i32 0, ptr %tmp208, align 4, !dbg !3956
  %78 = load i32, ptr %tmp208, align 4, !dbg !3959
  call void @llvm.lifetime.end.p0(i64 8, ptr %expiry) #11, !dbg !3960
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #11, !dbg !3960
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_timer) #11, !dbg !3960
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #11, !dbg !3960
  call void @llvm.lifetime.end.p0(i64 8, ptr %cursor) #11, !dbg !3960
  ret void, !dbg !3960

found_unreferenced_key:                           ; preds = %if.then19
  call void @llvm.dbg.label(metadata !3679), !dbg !3961
  store i32 0, ptr %tmp209, align 4, !dbg !3962
  %79 = load i32, ptr %tmp209, align 4, !dbg !3965
  %80 = load ptr, ptr %key, align 8, !dbg !3966
  %81 = getelementptr inbounds %struct.key, ptr %80, i32 0, i32 2, !dbg !3967
  call void @rb_erase(ptr noundef %81, ptr noundef @key_serial_tree) #12, !dbg !3968
  call void @spin_unlock(ptr noundef @key_serial_lock) #12, !dbg !3969
  %82 = load ptr, ptr %key, align 8, !dbg !3970
  %83 = getelementptr inbounds %struct.key, ptr %82, i32 0, i32 2, !dbg !3971
  call void @list_add_tail(ptr noundef %83, ptr noundef @key_garbage_collector.graveyard) #12, !dbg !3972
  %84 = load i8, ptr @key_garbage_collector.gc_state, align 1, !dbg !3973
  %conv210 = zext i8 %84 to i32, !dbg !3973
  %or211 = or i32 %conv210, 1, !dbg !3973
  %conv212 = trunc i32 %or211 to i8, !dbg !3973
  store i8 %conv212, ptr @key_garbage_collector.gc_state, align 1, !dbg !3973
  br label %maybe_resched, !dbg !3974

found_restricted_keyring:                         ; preds = %if.then38
  call void @llvm.dbg.label(metadata !3680), !dbg !3975
  call void @spin_unlock(ptr noundef @key_serial_lock) #12, !dbg !3976
  %85 = load ptr, ptr %key, align 8, !dbg !3977
  %86 = load ptr, ptr @key_gc_dead_keytype, align 8, !dbg !3978
  call void @keyring_restriction_gc(ptr noundef %85, ptr noundef %86) #12, !dbg !3979
  br label %maybe_resched, !dbg !3980

found_keyring:                                    ; preds = %if.then98
  call void @llvm.dbg.label(metadata !3681), !dbg !3981
  call void @spin_unlock(ptr noundef @key_serial_lock) #12, !dbg !3982
  %87 = load ptr, ptr %key, align 8, !dbg !3983
  %88 = load i64, ptr %limit, align 8, !dbg !3984
  call void @keyring_gc(ptr noundef %87, i64 noundef %88) #12, !dbg !3985
  br label %maybe_resched, !dbg !3986

destroy_dead_key:                                 ; preds = %if.then115
  call void @llvm.dbg.label(metadata !3682), !dbg !3987
  call void @spin_unlock(ptr noundef @key_serial_lock) #12, !dbg !3988
  store i32 0, ptr %tmp213, align 4, !dbg !3989
  %89 = load i32, ptr %tmp213, align 4, !dbg !3992
  %90 = load ptr, ptr %key, align 8, !dbg !3993
  %sem = getelementptr inbounds %struct.key, ptr %90, i32 0, i32 3, !dbg !3994
  call void @down_write(ptr noundef %sem) #12, !dbg !3995
  %91 = load ptr, ptr %key, align 8, !dbg !3996
  %92 = getelementptr inbounds %struct.key, ptr %91, i32 0, i32 15, !dbg !3997
  %type214 = getelementptr inbounds %struct.anon.7, ptr %92, i32 0, i32 2, !dbg !3997
  store ptr @key_type_dead, ptr %type214, align 8, !dbg !3998
  %93 = load ptr, ptr @key_gc_dead_keytype, align 8, !dbg !3999
  %destroy = getelementptr inbounds %struct.key_type, ptr %93, i32 0, i32 11, !dbg !4001
  %94 = load ptr, ptr %destroy, align 8, !dbg !4001
  %tobool215 = icmp ne ptr %94, null, !dbg !3999
  br i1 %tobool215, label %if.then216, label %if.end218, !dbg !4002

if.then216:                                       ; preds = %destroy_dead_key
  %95 = load ptr, ptr @key_gc_dead_keytype, align 8, !dbg !4003
  %destroy217 = getelementptr inbounds %struct.key_type, ptr %95, i32 0, i32 11, !dbg !4004
  %96 = load ptr, ptr %destroy217, align 8, !dbg !4004
  %97 = load ptr, ptr %key, align 8, !dbg !4005
  call void %96(ptr noundef %97) #12, !dbg !4003
  br label %if.end218, !dbg !4003

if.end218:                                        ; preds = %if.then216, %destroy_dead_key
  %98 = load ptr, ptr %key, align 8, !dbg !4006
  %99 = getelementptr inbounds %struct.key, ptr %98, i32 0, i32 16, !dbg !4007
  call void @llvm.memset.p0.i64(ptr align 8 %99, i8 -67, i64 32, i1 false), !dbg !4008
  %100 = load ptr, ptr %key, align 8, !dbg !4009
  %sem219 = getelementptr inbounds %struct.key, ptr %100, i32 0, i32 3, !dbg !4010
  call void @up_write(ptr noundef %sem219) #12, !dbg !4011
  br label %maybe_resched, !dbg !4012
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @key_schedule_gc(i64 noundef %gc_at) #0 align 16 !dbg !4013 {
entry:
  %gc_at.addr = alloca i64, align 8
  %expires = alloca i64, align 8
  %now = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  store i64 %gc_at, ptr %gc_at.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gc_at.addr, metadata !4017, metadata !DIExpression()), !dbg !4020
  call void @llvm.lifetime.start.p0(i64 8, ptr %expires) #11, !dbg !4021
  call void @llvm.dbg.declare(metadata ptr %expires, metadata !4018, metadata !DIExpression()), !dbg !4022
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #11, !dbg !4023
  call void @llvm.dbg.declare(metadata ptr %now, metadata !4019, metadata !DIExpression()), !dbg !4024
  %call = call i64 @ktime_get_real_seconds() #12, !dbg !4025
  store i64 %call, ptr %now, align 8, !dbg !4024
  store i32 0, ptr %tmp, align 4, !dbg !4026
  %0 = load i32, ptr %tmp, align 4, !dbg !4029
  %1 = load i64, ptr %gc_at.addr, align 8, !dbg !4030
  %2 = load i64, ptr %now, align 8, !dbg !4032
  %cmp = icmp sle i64 %1, %2, !dbg !4033
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4034

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i1 icmp ne (i64 ptrtoint (ptr @key_gc_flags to i64), i64 0) to i32, !dbg !4035
  %3 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4035
  br i1 %3, label %land.lhs.true, label %cond.false, !dbg !4035

land.lhs.true:                                    ; preds = %lor.lhs.false
  br i1 icmp ne (i64 ptrtoint (ptr @key_gc_flags to i64), i64 0), label %land.lhs.true2, label %cond.false, !dbg !4035

land.lhs.true2:                                   ; preds = %land.lhs.true
  %4 = load i64, ptr @key_gc_flags, align 8, !dbg !4035
  %5 = call i1 @llvm.is.constant.i64(i64 %4), !dbg !4035
  br i1 %5, label %cond.true, label %cond.false, !dbg !4036

cond.true:                                        ; preds = %land.lhs.true2
  %call3 = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef @key_gc_flags) #12, !dbg !4035
  br i1 %call3, label %if.then, label %if.else, !dbg !4035

cond.false:                                       ; preds = %land.lhs.true2, %land.lhs.true, %lor.lhs.false
  %call5 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef @key_gc_flags) #12, !dbg !4035
  br i1 %call5, label %if.then, label %if.else, !dbg !4036

if.then:                                          ; preds = %cond.false, %cond.true, %entry
  store i32 0, ptr %tmp7, align 4, !dbg !4037
  %6 = load i32, ptr %tmp7, align 4, !dbg !4041
  %call8 = call zeroext i1 @schedule_work(ptr noundef @key_gc_work) #12, !dbg !4042
  br label %if.end14, !dbg !4043

if.else:                                          ; preds = %cond.false, %cond.true
  %7 = load i64, ptr %gc_at.addr, align 8, !dbg !4044
  %8 = load i64, ptr @key_gc_next_run, align 8, !dbg !4046
  %cmp9 = icmp slt i64 %7, %8, !dbg !4047
  br i1 %cmp9, label %if.then11, label %if.end, !dbg !4048

if.then11:                                        ; preds = %if.else
  store i32 0, ptr %tmp12, align 4, !dbg !4049
  %9 = load i32, ptr %tmp12, align 4, !dbg !4053
  %10 = load i64, ptr %gc_at.addr, align 8, !dbg !4054
  store i64 %10, ptr @key_gc_next_run, align 8, !dbg !4055
  %11 = load volatile i64, ptr @jiffies, align 64, !dbg !4056
  %12 = load i64, ptr %gc_at.addr, align 8, !dbg !4057
  %13 = load i64, ptr %now, align 8, !dbg !4058
  %sub = sub i64 %12, %13, !dbg !4059
  %mul = mul i64 %sub, 1000, !dbg !4060
  %add = add i64 %11, %mul, !dbg !4061
  store i64 %add, ptr %expires, align 8, !dbg !4062
  %14 = load i64, ptr %expires, align 8, !dbg !4063
  %call13 = call i32 @mod_timer(ptr noundef @key_gc_timer, i64 noundef %14) #12, !dbg !4064
  br label %if.end, !dbg !4065

if.end:                                           ; preds = %if.then11, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #11, !dbg !4066
  call void @llvm.lifetime.end.p0(i64 8, ptr %expires) #11, !dbg !4066
  ret void, !dbg !4066
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4067 dso_local i64 @ktime_get_real_seconds() #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4071 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4076, metadata !DIExpression()), !dbg !4081
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4077, metadata !DIExpression()), !dbg !4082
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !4083
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4078, metadata !DIExpression()), !dbg !4084
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4085
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4086
  %div = udiv i64 %1, 64, !dbg !4086
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4087
  store ptr %add.ptr, ptr %p, align 8, !dbg !4084
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !4088
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4079, metadata !DIExpression()), !dbg !4089
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4090
  %rem = urem i64 %2, 64, !dbg !4090
  %shl = shl i64 1, %rem, !dbg !4090
  store i64 %shl, ptr %mask, align 8, !dbg !4089
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !4091
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4080, metadata !DIExpression()), !dbg !4092
  %3 = load ptr, ptr %p, align 8, !dbg !4093
  %4 = load i64, ptr %3, align 8, !dbg !4094
  store i64 %4, ptr %val, align 8, !dbg !4092
  %5 = load i64, ptr %val, align 8, !dbg !4095
  %6 = load i64, ptr %mask, align 8, !dbg !4096
  %and = and i64 %5, %6, !dbg !4097
  %tobool = icmp ne i64 %and, 0, !dbg !4098
  %lnot = xor i1 %tobool, true, !dbg !4098
  %lnot1 = xor i1 %lnot, true, !dbg !4099
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !4100
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !4100
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !4100
  ret i1 %lnot1, !dbg !4101
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4102 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4105, metadata !DIExpression()), !dbg !4107
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4106, metadata !DIExpression()), !dbg !4108
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4109
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4110
  %div = udiv i64 %1, 64, !dbg !4110
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4111
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !4112
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4113
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4114
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !4115
  ret i1 %call, !dbg !4116
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work(ptr noundef %work) #6 align 16 !dbg !4117 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !4121, metadata !DIExpression()), !dbg !4122
  %0 = load ptr, ptr @system_wq, align 8, !dbg !4123
  %1 = load ptr, ptr %work.addr, align 8, !dbg !4124
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef %1) #12, !dbg !4125
  ret i1 %call, !dbg !4126
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4127 dso_local i32 @mod_timer(ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @key_set_expiry(ptr noundef %key, i64 noundef %expiry) #0 align 16 !dbg !4130 {
entry:
  %key.addr = alloca ptr, align 8
  %expiry.addr = alloca i64, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4134, metadata !DIExpression()), !dbg !4136
  store i64 %expiry, ptr %expiry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %expiry.addr, metadata !4135, metadata !DIExpression()), !dbg !4137
  %0 = load i64, ptr %expiry.addr, align 8, !dbg !4138
  %1 = load ptr, ptr %key.addr, align 8, !dbg !4139
  %2 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 6, !dbg !4140
  store i64 %0, ptr %2, align 8, !dbg !4141
  %3 = load i64, ptr %expiry.addr, align 8, !dbg !4142
  %cmp = icmp ne i64 %3, 9223372036854775807, !dbg !4144
  br i1 %cmp, label %if.then, label %if.end2, !dbg !4145

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %key.addr, align 8, !dbg !4146
  %5 = getelementptr inbounds %struct.key, ptr %4, i32 0, i32 15, !dbg !4149
  %type = getelementptr inbounds %struct.anon.7, ptr %5, i32 0, i32 2, !dbg !4149
  %6 = load ptr, ptr %type, align 8, !dbg !4149
  %flags = getelementptr inbounds %struct.key_type, ptr %6, i32 0, i32 2, !dbg !4150
  %7 = load i32, ptr %flags, align 8, !dbg !4150
  %and = and i32 %7, 2, !dbg !4151
  %tobool = icmp ne i32 %and, 0, !dbg !4151
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4152

if.then1:                                         ; preds = %if.then
  %8 = load i32, ptr @key_gc_delay, align 4, !dbg !4153
  %conv = zext i32 %8 to i64, !dbg !4153
  %9 = load i64, ptr %expiry.addr, align 8, !dbg !4154
  %add = add i64 %9, %conv, !dbg !4154
  store i64 %add, ptr %expiry.addr, align 8, !dbg !4154
  br label %if.end, !dbg !4155

if.end:                                           ; preds = %if.then1, %if.then
  %10 = load i64, ptr %expiry.addr, align 8, !dbg !4156
  call void @key_schedule_gc(i64 noundef %10) #12, !dbg !4157
  br label %if.end2, !dbg !4158

if.end2:                                          ; preds = %if.end, %entry
  ret void, !dbg !4159
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @key_schedule_gc_links() #0 align 16 !dbg !4160 {
entry:
  call void @set_bit(i64 noundef 0, ptr noundef @key_gc_flags) #12, !dbg !4161
  %call = call zeroext i1 @schedule_work(ptr noundef @key_gc_work) #12, !dbg !4162
  ret void, !dbg !4163
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4164 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4170, metadata !DIExpression()), !dbg !4172
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4171, metadata !DIExpression()), !dbg !4173
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4174
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4175
  %div = sdiv i64 %1, 64, !dbg !4175
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4176
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !4177
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4178
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4179
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !4180
  ret void, !dbg !4181
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @key_gc_keytype(ptr noundef %ktype) #0 align 16 !dbg !4182 {
entry:
  %ktype.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  store ptr %ktype, ptr %ktype.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ktype.addr, metadata !4186, metadata !DIExpression()), !dbg !4187
  store i32 0, ptr %tmp, align 4, !dbg !4188
  %0 = load i32, ptr %tmp, align 4, !dbg !4191
  %1 = load ptr, ptr %ktype.addr, align 8, !dbg !4192
  store ptr %1, ptr @key_gc_dead_keytype, align 8, !dbg !4193
  call void @set_bit(i64 noundef 2, ptr noundef @key_gc_flags) #12, !dbg !4194
  br label %do.body, !dbg !4195

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4196

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4198

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !4196, !srcloc !4200
  br label %do.end2, !dbg !4196

do.end2:                                          ; preds = %do.end
  call void @set_bit(i64 noundef 1, ptr noundef @key_gc_flags) #12, !dbg !4201
  store i32 0, ptr %tmp3, align 4, !dbg !4202
  %2 = load i32, ptr %tmp3, align 4, !dbg !4205
  %call = call zeroext i1 @schedule_work(ptr noundef @key_gc_work) #12, !dbg !4206
  store i32 0, ptr %tmp4, align 4, !dbg !4207
  %3 = load i32, ptr %tmp4, align 4, !dbg !4210
  %call5 = call i32 @wait_on_bit(ptr noundef @key_gc_flags, i32 noundef 2, i32 noundef 2) #12, !dbg !4211
  store ptr null, ptr @key_gc_dead_keytype, align 8, !dbg !4212
  store i32 0, ptr %tmp6, align 4, !dbg !4213
  %4 = load i32, ptr %tmp6, align 4, !dbg !4216
  ret void, !dbg !4217
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @wait_on_bit(ptr noundef %word, i32 noundef %bit, i32 noundef %mode) #6 align 16 !dbg !4218 {
entry:
  %retval = alloca i32, align 4
  %word.addr = alloca ptr, align 8
  %bit.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store ptr %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !4223, metadata !DIExpression()), !dbg !4226
  store i32 %bit, ptr %bit.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !4224, metadata !DIExpression()), !dbg !4227
  store i32 %mode, ptr %mode.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4225, metadata !DIExpression()), !dbg !4228
  br label %do.body, !dbg !4229

do.body:                                          ; preds = %entry
  call void @might_resched() #12, !dbg !4230
  br label %do.end, !dbg !4230

do.end:                                           ; preds = %do.body
  %0 = load i32, ptr %bit.addr, align 4, !dbg !4232
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4232
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4232

land.lhs.true:                                    ; preds = %do.end
  %2 = load ptr, ptr %word.addr, align 8, !dbg !4232
  %3 = ptrtoint ptr %2 to i64, !dbg !4232
  %cmp = icmp ne i64 %3, 0, !dbg !4232
  %conv = zext i1 %cmp to i32, !dbg !4232
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4232
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !4232

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %word.addr, align 8, !dbg !4232
  %6 = ptrtoint ptr %5 to i64, !dbg !4232
  %cmp2 = icmp ne i64 %6, 0, !dbg !4232
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !4232

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %word.addr, align 8, !dbg !4232
  %8 = load i64, ptr %7, align 8, !dbg !4232
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !4232
  br i1 %9, label %cond.true, label %cond.false, !dbg !4234

cond.true:                                        ; preds = %land.lhs.true4
  %10 = load i32, ptr %bit.addr, align 4, !dbg !4232
  %conv5 = sext i32 %10 to i64, !dbg !4232
  %11 = load ptr, ptr %word.addr, align 8, !dbg !4232
  %call = call zeroext i1 @generic_test_bit_acquire(i64 noundef %conv5, ptr noundef %11) #12, !dbg !4232
  br i1 %call, label %if.end, label %if.then, !dbg !4232

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true1, %land.lhs.true, %do.end
  %12 = load i32, ptr %bit.addr, align 4, !dbg !4232
  %conv7 = sext i32 %12 to i64, !dbg !4232
  %13 = load ptr, ptr %word.addr, align 8, !dbg !4232
  %call8 = call zeroext i1 @_test_bit_acquire(i64 noundef %conv7, ptr noundef %13) #12, !dbg !4232
  br i1 %call8, label %if.end, label %if.then, !dbg !4234

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !4235
  br label %return, !dbg !4235

if.end:                                           ; preds = %cond.false, %cond.true
  %14 = load ptr, ptr %word.addr, align 8, !dbg !4236
  %15 = load i32, ptr %bit.addr, align 4, !dbg !4237
  %16 = load i32, ptr %mode.addr, align 4, !dbg !4238
  %call10 = call i32 @out_of_line_wait_on_bit(ptr noundef %14, i32 noundef %15, ptr noundef @bit_wait, i32 noundef %16) #12, !dbg !4239
  store i32 %call10, ptr %retval, align 4, !dbg !4240
  br label %return, !dbg !4240

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, ptr %retval, align 4, !dbg !4241
  ret i32 %17, !dbg !4241
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !4242 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4250, metadata !DIExpression()), !dbg !4252
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4251, metadata !DIExpression()), !dbg !4253
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4254
  %1 = load i64, ptr %size.addr, align 8, !dbg !4255
  %conv = trunc i64 %1 to i32, !dbg !4255
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !4256
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4257
  %3 = load i64, ptr %size.addr, align 8, !dbg !4257
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !4257
  ret void, !dbg !4258
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4259 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4262, metadata !DIExpression()), !dbg !4264
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4263, metadata !DIExpression()), !dbg !4265
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4266
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4267
  br i1 %1, label %cond.true, label %cond.false, !dbg !4267

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4268
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4269
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !4270
  %conv = zext i1 %call to i32, !dbg !4270
  br label %cond.end, !dbg !4267

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4271
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4272
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !4273
  %conv2 = zext i1 %call1 to i32, !dbg !4273
  br label %cond.end, !dbg !4267

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4267
  %tobool = icmp ne i32 %cond, 0, !dbg !4267
  ret i1 %tobool, !dbg !4274
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !4275 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4280, metadata !DIExpression()), !dbg !4282
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4281, metadata !DIExpression()), !dbg !4283
  ret i1 true, !dbg !4284
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !4285 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4290, metadata !DIExpression()), !dbg !4293
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4291, metadata !DIExpression()), !dbg !4294
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4292, metadata !DIExpression()), !dbg !4295
  ret void, !dbg !4296
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4297 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4301, metadata !DIExpression()), !dbg !4303
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4302, metadata !DIExpression()), !dbg !4304
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4305
  %and = and i64 %0, 63, !dbg !4306
  %shl = shl i64 1, %and, !dbg !4307
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4308
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4309
  %shr = ashr i64 %2, 6, !dbg !4310
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !4308
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4308
  %and1 = and i64 %shl, %3, !dbg !4311
  %cmp = icmp ne i64 %and1, 0, !dbg !4312
  ret i1 %cmp, !dbg !4313
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4314 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4316, metadata !DIExpression()), !dbg !4319
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4317, metadata !DIExpression()), !dbg !4320
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !4321
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4318, metadata !DIExpression()), !dbg !4322
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4323
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4324
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !4325, !srcloc !4326
  %3 = icmp ult i8 %2, 2, !dbg !4325
  call void @llvm.assume(i1 %3), !dbg !4325
  store i8 %2, ptr %oldbit, align 1, !dbg !4325
  %4 = load i8, ptr %oldbit, align 1, !dbg !4327, !range !4328, !noundef !463
  %tobool = trunc i8 %4 to i1, !dbg !4327
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !4329
  ret i1 %tobool, !dbg !4330
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #6 align 16 !dbg !4331 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !4335, metadata !DIExpression()), !dbg !4337
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !4336, metadata !DIExpression()), !dbg !4338
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !4339
  %1 = load ptr, ptr %work.addr, align 8, !dbg !4340
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #12, !dbg !4341
  ret i1 %call, !dbg !4342
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4343 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @key_gc_timer_func(ptr noundef %unused) #0 align 16 !dbg !4346 {
entry:
  %unused.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %unused, ptr %unused.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unused.addr, metadata !4348, metadata !DIExpression()), !dbg !4349
  store i32 0, ptr %tmp, align 4, !dbg !4350
  %0 = load i32, ptr %tmp, align 4, !dbg !4353
  store i64 9223372036854775807, ptr @key_gc_next_run, align 8, !dbg !4354
  call void @key_schedule_gc_links() #12, !dbg !4355
  ret void, !dbg !4356
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !4357 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4359, metadata !DIExpression()), !dbg !4361
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4360, metadata !DIExpression()), !dbg !4362
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4363
  %1 = load i64, ptr %size.addr, align 8, !dbg !4364
  %conv = trunc i64 %1 to i32, !dbg !4364
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !4365
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4366
  %3 = load i64, ptr %size.addr, align 8, !dbg !4366
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #12, !dbg !4366
  ret void, !dbg !4367
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4368 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4370, metadata !DIExpression()), !dbg !4372
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4371, metadata !DIExpression()), !dbg !4373
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4374
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4376
  br i1 %1, label %if.then, label %if.else, !dbg !4377

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !4378
  %3 = load i64, ptr %nr.addr, align 8, !dbg !4378
  %shr = ashr i64 %3, 3, !dbg !4378
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !4378
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4380
  %and = and i64 %4, 7, !dbg !4380
  %sh_prom = trunc i64 %and to i32, !dbg !4380
  %shl = shl i32 1, %sh_prom, !dbg !4380
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #11, !dbg !4381, !srcloc !4382
  br label %if.end, !dbg !4383

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4384
  %6 = load i64, ptr %nr.addr, align 8, !dbg !4386
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #11, !dbg !4387, !srcloc !4388
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4389
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !4390 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4392, metadata !DIExpression()), !dbg !4394
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4393, metadata !DIExpression()), !dbg !4395
  ret i1 true, !dbg !4396
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #5 align 16 !dbg !3660 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !4397
  %0 = load ptr, ptr %tmp, align 8, !dbg !4397
  %call = call i32 %0() #12, !dbg !4399
  ret void, !dbg !4400
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @generic_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4401 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %___p1 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4403, metadata !DIExpression()), !dbg !4408
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4404, metadata !DIExpression()), !dbg !4409
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !4410
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4405, metadata !DIExpression()), !dbg !4411
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4412
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4413
  %div = udiv i64 %1, 64, !dbg !4413
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4414
  store ptr %add.ptr, ptr %p, align 8, !dbg !4411
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #11, !dbg !4415
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !4406, metadata !DIExpression()), !dbg !4415
  br label %do.body, !dbg !4416

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !4418

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4418

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %p, align 8, !dbg !4416
  %3 = load volatile i64, ptr %2, align 8, !dbg !4416
  store i64 %3, ptr %tmp, align 8, !dbg !4418
  %4 = load i64, ptr %tmp, align 8, !dbg !4416
  store i64 %4, ptr %___p1, align 8, !dbg !4415
  br label %do.body1, !dbg !4415

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !4420

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !4420

do.end3:                                          ; preds = %do.cond2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !4415, !srcloc !4422
  %5 = load i64, ptr %___p1, align 8, !dbg !4415
  store i64 %5, ptr %tmp4, align 8, !dbg !4415
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #11, !dbg !4423
  %6 = load i64, ptr %tmp4, align 8, !dbg !4415
  %7 = load i64, ptr %nr.addr, align 8, !dbg !4424
  %and = and i64 %7, 63, !dbg !4425
  %shr = lshr i64 %6, %and, !dbg !4426
  %and5 = and i64 1, %shr, !dbg !4427
  %tobool = icmp ne i64 %and5, 0, !dbg !4428
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !4429
  ret i1 %tobool, !dbg !4430
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4431 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4433, metadata !DIExpression()), !dbg !4435
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4434, metadata !DIExpression()), !dbg !4436
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4437
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4438
  %div = udiv i64 %1, 64, !dbg !4438
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4439
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !4440
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4441
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4442
  %call = call zeroext i1 @arch_test_bit_acquire(i64 noundef %2, ptr noundef %3) #12, !dbg !4443
  ret i1 %call, !dbg !4444
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4445 dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4458 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4460, metadata !DIExpression()), !dbg !4462
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4461, metadata !DIExpression()), !dbg !4463
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4464
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4465
  br i1 %1, label %cond.true, label %cond.false, !dbg !4465

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4466
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4467
  %call = call zeroext i1 @constant_test_bit_acquire(i64 noundef %2, ptr noundef %3) #12, !dbg !4468
  %conv = zext i1 %call to i32, !dbg !4468
  br label %cond.end, !dbg !4465

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4469
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4470
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !4471
  %conv2 = zext i1 %call1 to i32, !dbg !4471
  br label %cond.end, !dbg !4465

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4465
  %tobool = icmp ne i32 %cond, 0, !dbg !4465
  ret i1 %tobool, !dbg !4472
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit_acquire(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4473 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4475, metadata !DIExpression()), !dbg !4478
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4476, metadata !DIExpression()), !dbg !4479
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !4480
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4477, metadata !DIExpression()), !dbg !4481
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4482
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4483
  %shr = ashr i64 %1, 3, !dbg !4484
  %arrayidx = getelementptr i8, ptr %0, i64 %shr, !dbg !4485
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4486
  %and = and i64 %2, 7, !dbg !4487
  %sh_prom = trunc i64 %and to i32, !dbg !4488
  %shl = shl i32 1, %sh_prom, !dbg !4488
  %3 = call i8 asm sideeffect "testb $2,$1\0A\09/* output condition code nz*/\0A", "={@ccnz},*m,i,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %arrayidx, i32 %shl) #11, !dbg !4489, !srcloc !4490
  %4 = icmp ult i8 %3, 2, !dbg !4489
  call void @llvm.assume(i1 %4), !dbg !4489
  store i8 %3, ptr %oldbit, align 1, !dbg !4489
  %5 = load i8, ptr %oldbit, align 1, !dbg !4491, !range !4328, !noundef !463
  %tobool = trunc i8 %5 to i1, !dbg !4491
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !4492
  ret i1 %tobool, !dbg !4493
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4494 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4498, metadata !DIExpression()), !dbg !4500
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4499, metadata !DIExpression()), !dbg !4501
  br label %do.body, !dbg !4502

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4503

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4505
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4506
  %div = sdiv i64 %1, 64, !dbg !4506
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4507
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !4508
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4509
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4510
  %call = call zeroext i1 @arch_test_and_clear_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !4511
  ret i1 %call, !dbg !4512
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !4513 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4520
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4520
  call void @_raw_spin_lock(ptr noundef %1) #12, !dbg !4520
  ret void, !dbg !4521
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4522 dso_local ptr @rb_first(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4528 dso_local ptr @rb_next(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @refcount_read(ptr noundef %r) #6 align 16 !dbg !4533 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !4539, metadata !DIExpression()), !dbg !4540
  %0 = load ptr, ptr %r.addr, align 8, !dbg !4541
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !4542
  %call = call i32 @atomic_read(ptr noundef %refs) #12, !dbg !4543
  ret i32 %call, !dbg !4544
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @spin_is_contended(ptr noundef %lock) #5 align 16 !dbg !4545 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4549, metadata !DIExpression()), !dbg !4550
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4551
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4551
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %1, i32 0, i32 0, !dbg !4551
  %call = call i32 @queued_spin_is_contended(ptr noundef %raw_lock) #12, !dbg !4551
  ret i32 %call, !dbg !4552
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @need_resched() #5 align 16 !dbg !4553 {
entry:
  %call = call zeroext i1 @tif_need_resched() #12, !dbg !4556
  %lnot = xor i1 %call, true, !dbg !4556
  %lnot1 = xor i1 %lnot, true, !dbg !4556
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4556
  %conv = sext i32 %lnot.ext to i64, !dbg !4556
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4556
  %tobool = icmp ne i64 %expval, 0, !dbg !4556
  ret i1 %tobool, !dbg !4557
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !4558 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4560, metadata !DIExpression()), !dbg !4561
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4562
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4562
  call void @_raw_spin_unlock(ptr noundef %1) #12, !dbg !4562
  ret void, !dbg !4563
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__might_resched(ptr noundef %file, i32 noundef %line, i32 noundef %offsets) #6 align 16 !dbg !4564 {
entry:
  %file.addr = alloca ptr, align 8
  %line.addr = alloca i32, align 4
  %offsets.addr = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4568, metadata !DIExpression()), !dbg !4571
  store i32 %line, ptr %line.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %line.addr, metadata !4569, metadata !DIExpression()), !dbg !4572
  store i32 %offsets, ptr %offsets.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offsets.addr, metadata !4570, metadata !DIExpression()), !dbg !4573
  ret void, !dbg !4574
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_cond_resched() #5 align 16 !dbg !3692 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__cond_resched, ptr %tmp, align 8, !dbg !4575
  %0 = load ptr, ptr %tmp, align 8, !dbg !4575
  %call = call i32 %0() #12, !dbg !4577
  ret i32 %call, !dbg !4578
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #6 align 16 !dbg !4579 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4586, metadata !DIExpression()), !dbg !4587
  br label %do.body, !dbg !4588

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4590

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4588
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !4588
  %1 = load volatile ptr, ptr %next, align 8, !dbg !4588
  store ptr %1, ptr %tmp, align 8, !dbg !4590
  %2 = load ptr, ptr %tmp, align 8, !dbg !4588
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4592
  %cmp = icmp eq ptr %2, %3, !dbg !4593
  %conv = zext i1 %cmp to i32, !dbg !4593
  ret i32 %conv, !dbg !4594
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4595 dso_local void @synchronize_rcu() #3

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal void @key_gc_unused_keys(ptr noundef %keys) #9 align 16 !dbg !4597 {
entry:
  %keys.addr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %state = alloca i16, align 2
  %tmp2 = alloca i32, align 4
  store ptr %keys, ptr %keys.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %keys.addr, metadata !4601, metadata !DIExpression()), !dbg !4607
  br label %while.cond, !dbg !4608

while.cond:                                       ; preds = %if.end34, %entry
  %0 = load ptr, ptr %keys.addr, align 8, !dbg !4609
  %call = call i32 @list_empty(ptr noundef %0) #12, !dbg !4610
  %tobool = icmp ne i32 %call, 0, !dbg !4611
  %lnot = xor i1 %tobool, true, !dbg !4611
  br i1 %lnot, label %while.body, label %while.end, !dbg !4608

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #11, !dbg !4612
  call void @llvm.dbg.declare(metadata ptr %key, metadata !4602, metadata !DIExpression()), !dbg !4613
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !4614
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4604, metadata !DIExpression()), !dbg !4614
  %1 = load ptr, ptr %keys.addr, align 8, !dbg !4614
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4614
  %2 = load ptr, ptr %next, align 8, !dbg !4614
  store ptr %2, ptr %__mptr, align 8, !dbg !4614
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4614
  %add.ptr = getelementptr i8, ptr %3, i64 -8, !dbg !4614
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4614
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !4615
  %4 = load ptr, ptr %tmp, align 8, !dbg !4614
  store ptr %4, ptr %key, align 8, !dbg !4613
  call void @llvm.lifetime.start.p0(i64 2, ptr %state) #11, !dbg !4616
  call void @llvm.dbg.declare(metadata ptr %state, metadata !4606, metadata !DIExpression()), !dbg !4617
  %5 = load ptr, ptr %key, align 8, !dbg !4618
  %state1 = getelementptr inbounds %struct.key, ptr %5, i32 0, i32 13, !dbg !4619
  %6 = load i16, ptr %state1, align 8, !dbg !4619
  store i16 %6, ptr %state, align 2, !dbg !4617
  %7 = load ptr, ptr %key, align 8, !dbg !4620
  %8 = getelementptr inbounds %struct.key, ptr %7, i32 0, i32 2, !dbg !4621
  call void @list_del(ptr noundef %8) #12, !dbg !4622
  store i32 0, ptr %tmp2, align 4, !dbg !4623
  %9 = load i32, ptr %tmp2, align 4, !dbg !4626
  br label %do.body, !dbg !4627

do.body:                                          ; preds = %while.body
  br label %do.cond, !dbg !4628

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4628

do.end:                                           ; preds = %do.cond
  %10 = load i16, ptr %state, align 2, !dbg !4630
  %conv = sext i16 %10 to i32, !dbg !4630
  %cmp = icmp eq i32 %conv, 1, !dbg !4632
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4633

land.lhs.true:                                    ; preds = %do.end
  %11 = load ptr, ptr %key, align 8, !dbg !4634
  %12 = getelementptr inbounds %struct.key, ptr %11, i32 0, i32 15, !dbg !4635
  %type = getelementptr inbounds %struct.anon.7, ptr %12, i32 0, i32 2, !dbg !4635
  %13 = load ptr, ptr %type, align 8, !dbg !4635
  %destroy = getelementptr inbounds %struct.key_type, ptr %13, i32 0, i32 11, !dbg !4636
  %14 = load ptr, ptr %destroy, align 8, !dbg !4636
  %tobool4 = icmp ne ptr %14, null, !dbg !4634
  br i1 %tobool4, label %if.then, label %if.end, !dbg !4637

if.then:                                          ; preds = %land.lhs.true
  %15 = load ptr, ptr %key, align 8, !dbg !4638
  %16 = getelementptr inbounds %struct.key, ptr %15, i32 0, i32 15, !dbg !4639
  %type5 = getelementptr inbounds %struct.anon.7, ptr %16, i32 0, i32 2, !dbg !4639
  %17 = load ptr, ptr %type5, align 8, !dbg !4639
  %destroy6 = getelementptr inbounds %struct.key_type, ptr %17, i32 0, i32 11, !dbg !4640
  %18 = load ptr, ptr %destroy6, align 8, !dbg !4640
  %19 = load ptr, ptr %key, align 8, !dbg !4641
  call void %18(ptr noundef %19) #12, !dbg !4638
  br label %if.end, !dbg !4638

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.end
  %20 = load ptr, ptr %key, align 8, !dbg !4642
  call void @security_key_free(ptr noundef %20) #12, !dbg !4643
  %21 = load ptr, ptr %key, align 8, !dbg !4644
  %flags = getelementptr inbounds %struct.key, ptr %21, i32 0, i32 14, !dbg !4644
  %22 = ptrtoint ptr %flags to i64, !dbg !4644
  %cmp7 = icmp ne i64 %22, 0, !dbg !4644
  %conv8 = zext i1 %cmp7 to i32, !dbg !4644
  %23 = call i1 @llvm.is.constant.i32(i32 %conv8), !dbg !4644
  br i1 %23, label %land.lhs.true9, label %cond.false, !dbg !4644

land.lhs.true9:                                   ; preds = %if.end
  %24 = load ptr, ptr %key, align 8, !dbg !4644
  %flags10 = getelementptr inbounds %struct.key, ptr %24, i32 0, i32 14, !dbg !4644
  %25 = ptrtoint ptr %flags10 to i64, !dbg !4644
  %cmp11 = icmp ne i64 %25, 0, !dbg !4644
  br i1 %cmp11, label %land.lhs.true13, label %cond.false, !dbg !4644

land.lhs.true13:                                  ; preds = %land.lhs.true9
  %26 = load ptr, ptr %key, align 8, !dbg !4644
  %flags14 = getelementptr inbounds %struct.key, ptr %26, i32 0, i32 14, !dbg !4644
  %27 = load i64, ptr %flags14, align 8, !dbg !4644
  %28 = call i1 @llvm.is.constant.i64(i64 %27), !dbg !4644
  br i1 %28, label %cond.true, label %cond.false, !dbg !4646

cond.true:                                        ; preds = %land.lhs.true13
  %29 = load ptr, ptr %key, align 8, !dbg !4644
  %flags15 = getelementptr inbounds %struct.key, ptr %29, i32 0, i32 14, !dbg !4644
  %call16 = call zeroext i1 @const_test_bit(i64 noundef 2, ptr noundef %flags15) #12, !dbg !4644
  br i1 %call16, label %if.then21, label %if.end27, !dbg !4644

cond.false:                                       ; preds = %land.lhs.true13, %land.lhs.true9, %if.end
  %30 = load ptr, ptr %key, align 8, !dbg !4644
  %flags18 = getelementptr inbounds %struct.key, ptr %30, i32 0, i32 14, !dbg !4644
  %call19 = call zeroext i1 @_test_bit(i64 noundef 2, ptr noundef %flags18) #12, !dbg !4644
  br i1 %call19, label %if.then21, label %if.end27, !dbg !4646

if.then21:                                        ; preds = %cond.false, %cond.true
  %31 = load ptr, ptr %key, align 8, !dbg !4647
  %user = getelementptr inbounds %struct.key, ptr %31, i32 0, i32 4, !dbg !4649
  %32 = load ptr, ptr %user, align 8, !dbg !4649
  %lock = getelementptr inbounds %struct.key_user, ptr %32, i32 0, i32 2, !dbg !4650
  call void @spin_lock(ptr noundef %lock) #12, !dbg !4651
  %33 = load ptr, ptr %key, align 8, !dbg !4652
  %user22 = getelementptr inbounds %struct.key, ptr %33, i32 0, i32 4, !dbg !4653
  %34 = load ptr, ptr %user22, align 8, !dbg !4653
  %qnkeys = getelementptr inbounds %struct.key_user, ptr %34, i32 0, i32 7, !dbg !4654
  %35 = load i32, ptr %qnkeys, align 4, !dbg !4655
  %dec = add i32 %35, -1, !dbg !4655
  store i32 %dec, ptr %qnkeys, align 4, !dbg !4655
  %36 = load ptr, ptr %key, align 8, !dbg !4656
  %quotalen = getelementptr inbounds %struct.key, ptr %36, i32 0, i32 11, !dbg !4657
  %37 = load i16, ptr %quotalen, align 4, !dbg !4657
  %conv23 = zext i16 %37 to i32, !dbg !4656
  %38 = load ptr, ptr %key, align 8, !dbg !4658
  %user24 = getelementptr inbounds %struct.key, ptr %38, i32 0, i32 4, !dbg !4659
  %39 = load ptr, ptr %user24, align 8, !dbg !4659
  %qnbytes = getelementptr inbounds %struct.key_user, ptr %39, i32 0, i32 8, !dbg !4660
  %40 = load i32, ptr %qnbytes, align 8, !dbg !4661
  %sub = sub i32 %40, %conv23, !dbg !4661
  store i32 %sub, ptr %qnbytes, align 8, !dbg !4661
  %41 = load ptr, ptr %key, align 8, !dbg !4662
  %user25 = getelementptr inbounds %struct.key, ptr %41, i32 0, i32 4, !dbg !4663
  %42 = load ptr, ptr %user25, align 8, !dbg !4663
  %lock26 = getelementptr inbounds %struct.key_user, ptr %42, i32 0, i32 2, !dbg !4664
  call void @spin_unlock(ptr noundef %lock26) #12, !dbg !4665
  br label %if.end27, !dbg !4666

if.end27:                                         ; preds = %if.then21, %cond.false, %cond.true
  %43 = load ptr, ptr %key, align 8, !dbg !4667
  %user28 = getelementptr inbounds %struct.key, ptr %43, i32 0, i32 4, !dbg !4668
  %44 = load ptr, ptr %user28, align 8, !dbg !4668
  %nkeys = getelementptr inbounds %struct.key_user, ptr %44, i32 0, i32 4, !dbg !4669
  call void @atomic_dec(ptr noundef %nkeys) #12, !dbg !4670
  %45 = load i16, ptr %state, align 2, !dbg !4671
  %conv29 = sext i16 %45 to i32, !dbg !4671
  %cmp30 = icmp ne i32 %conv29, 0, !dbg !4673
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !4674

if.then32:                                        ; preds = %if.end27
  %46 = load ptr, ptr %key, align 8, !dbg !4675
  %user33 = getelementptr inbounds %struct.key, ptr %46, i32 0, i32 4, !dbg !4676
  %47 = load ptr, ptr %user33, align 8, !dbg !4676
  %nikeys = getelementptr inbounds %struct.key_user, ptr %47, i32 0, i32 5, !dbg !4677
  call void @atomic_dec(ptr noundef %nikeys) #12, !dbg !4678
  br label %if.end34, !dbg !4678

if.end34:                                         ; preds = %if.then32, %if.end27
  %48 = load ptr, ptr %key, align 8, !dbg !4679
  %user35 = getelementptr inbounds %struct.key, ptr %48, i32 0, i32 4, !dbg !4680
  %49 = load ptr, ptr %user35, align 8, !dbg !4680
  call void @key_user_put(ptr noundef %49) #12, !dbg !4681
  %50 = load ptr, ptr %key, align 8, !dbg !4682
  %51 = getelementptr inbounds %struct.key, ptr %50, i32 0, i32 15, !dbg !4683
  %domain_tag = getelementptr inbounds %struct.anon.7, ptr %51, i32 0, i32 3, !dbg !4683
  %52 = load ptr, ptr %domain_tag, align 8, !dbg !4683
  %call36 = call zeroext i1 @key_put_tag(ptr noundef %52) #12, !dbg !4684
  %53 = load ptr, ptr %key, align 8, !dbg !4685
  %54 = getelementptr inbounds %struct.key, ptr %53, i32 0, i32 15, !dbg !4686
  %description = getelementptr inbounds %struct.anon.7, ptr %54, i32 0, i32 4, !dbg !4686
  %55 = load ptr, ptr %description, align 8, !dbg !4686
  call void @kfree(ptr noundef %55) #12, !dbg !4687
  %56 = load ptr, ptr %key, align 8, !dbg !4688
  call void @memzero_explicit(ptr noundef %56, i64 noundef 216) #12, !dbg !4689
  %57 = load ptr, ptr @key_jar, align 8, !dbg !4690
  %58 = load ptr, ptr %key, align 8, !dbg !4691
  call void @kmem_cache_free(ptr noundef %57, ptr noundef %58) #12, !dbg !4692
  call void @llvm.lifetime.end.p0(i64 2, ptr %state) #11, !dbg !4693
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #11, !dbg !4693
  br label %while.cond, !dbg !4608, !llvm.loop !4694

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4695
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4696 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4698, metadata !DIExpression()), !dbg !4700
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4699, metadata !DIExpression()), !dbg !4701
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4702
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4703
  %div = sdiv i64 %1, 64, !dbg !4703
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4704
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !4705
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4706
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4707
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !4708
  ret void, !dbg !4709
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4710 dso_local void @wake_up_bit(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4713 dso_local void @rb_erase(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !4717 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4721, metadata !DIExpression()), !dbg !4723
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4722, metadata !DIExpression()), !dbg !4724
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4725
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4726
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4727
  %2 = load ptr, ptr %prev, align 8, !dbg !4727
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4728
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #12, !dbg !4729
  ret void, !dbg !4730
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4731 dso_local void @keyring_restriction_gc(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4734 dso_local void @keyring_gc(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4735 dso_local void @down_write(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4739 dso_local void @up_write(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !4740 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4742, metadata !DIExpression()), !dbg !4744
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4743, metadata !DIExpression()), !dbg !4745
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4746
  %1 = load i64, ptr %size.addr, align 8, !dbg !4747
  %conv = trunc i64 %1 to i32, !dbg !4747
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !4748
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4749
  %3 = load i64, ptr %size.addr, align 8, !dbg !4749
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #12, !dbg !4749
  ret void, !dbg !4750
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4751 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4753, metadata !DIExpression()), !dbg !4757
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4754, metadata !DIExpression()), !dbg !4758
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #11, !dbg !4759
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4755, metadata !DIExpression()), !dbg !4759
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4759
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4759
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #11, !dbg !4759, !srcloc !4760
  %3 = icmp ult i8 %2, 2, !dbg !4759
  call void @llvm.assume(i1 %3), !dbg !4759
  store i8 %2, ptr %c, align 1, !dbg !4759
  %4 = load i8, ptr %c, align 1, !dbg !4759, !range !4328, !noundef !463
  %tobool = trunc i8 %4 to i1, !dbg !4759
  %frombool = zext i1 %tobool to i8, !dbg !4759
  store i8 %frombool, ptr %tmp, align 1, !dbg !4759
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #11, !dbg !4761
  %5 = load i8, ptr %tmp, align 1, !dbg !4759, !range !4328, !noundef !463
  %tobool1 = trunc i8 %5 to i1, !dbg !4759
  ret i1 %tobool1, !dbg !4762
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4763 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #5 align 16 !dbg !4768 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4775, metadata !DIExpression()), !dbg !4776
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4777
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #12, !dbg !4778
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4779
  %call = call i32 @raw_atomic_read(ptr noundef %1) #12, !dbg !4780
  ret i32 %call, !dbg !4781
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #5 align 16 !dbg !4782 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4785, metadata !DIExpression()), !dbg !4786
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4787
  %call = call i32 @arch_atomic_read(ptr noundef %0) #12, !dbg !4788
  ret i32 %call, !dbg !4789
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #5 align 16 !dbg !4790 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4793, metadata !DIExpression()), !dbg !4794
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4795
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !4795
  %1 = load volatile i32, ptr %counter, align 4, !dbg !4795
  ret i32 %1, !dbg !4796
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_spin_is_contended(ptr noundef %lock) #5 align 16 !dbg !4797 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4803, metadata !DIExpression()), !dbg !4804
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4805
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !4806
  %call = call i32 @atomic_read(ptr noundef %1) #12, !dbg !4807
  %and = and i32 %call, -256, !dbg !4808
  ret i32 %and, !dbg !4809
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tif_need_resched() #5 align 16 !dbg !4810 {
entry:
  %call = call ptr @get_current() #12, !dbg !4812
  %flags = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 0, !dbg !4813
  %call1 = call zeroext i1 @arch_test_bit(i64 noundef 3, ptr noundef %flags) #12, !dbg !4814
  ret i1 %call1, !dbg !4815
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !4816 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #11, !dbg !4827
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4821, metadata !DIExpression()), !dbg !4827
  br label %do.body, !dbg !4827

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !4828
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4823, metadata !DIExpression()), !dbg !4828
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4828
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4828
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !4827
  br label %do.cond, !dbg !4828

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4828

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #11, !dbg !4829
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4825, metadata !DIExpression()), !dbg !4829
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #13, !dbg !4829, !srcloc !4830
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4829
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4829
  %3 = inttoptr i64 %2 to ptr, !dbg !4829
  store ptr %3, ptr %tmp, align 8, !dbg !4829
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #11, !dbg !4827
  %4 = load ptr, ptr %tmp, align 8, !dbg !4829
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4827
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4827
  store ptr %5, ptr %tmp1, align 8, !dbg !4827
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #11, !dbg !4831
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4827
  ret ptr %6, !dbg !4832
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4833 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__cond_resched() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #6 align 16 !dbg !4834 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4838
  call void @__list_del_entry(ptr noundef %0) #12, !dbg !4839
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4840
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4841
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !4842
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !4843
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !4844
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !4845
  ret void, !dbg !4846
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4847 dso_local void @security_key_free(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #5 align 16 !dbg !4849 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4854, metadata !DIExpression()), !dbg !4855
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4856
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !4857
  %1 = load ptr, ptr %v.addr, align 8, !dbg !4858
  call void @raw_atomic_dec(ptr noundef %1) #12, !dbg !4859
  ret void, !dbg !4860
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4861 dso_local void @key_user_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4864 dso_local zeroext i1 @key_put_tag(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4867 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memzero_explicit(ptr noundef %s, i64 noundef %count) #6 align 16 !dbg !4871 {
entry:
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4876, metadata !DIExpression()), !dbg !4878
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4877, metadata !DIExpression()), !dbg !4879
  %0 = load ptr, ptr %s.addr, align 8, !dbg !4880
  %1 = load i64, ptr %count.addr, align 8, !dbg !4881
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %1, i1 false), !dbg !4882
  %2 = load ptr, ptr %s.addr, align 8, !dbg !4883
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %2) #11, !dbg !4883, !srcloc !4884
  ret void, !dbg !4885
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4886 dso_local void @kmem_cache_free(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #6 align 16 !dbg !4892 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4894, metadata !DIExpression()), !dbg !4895
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !4896
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #12, !dbg !4898
  br i1 %call, label %if.end, label %if.then, !dbg !4899

if.then:                                          ; preds = %entry
  br label %return, !dbg !4900

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !4901
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4902
  %2 = load ptr, ptr %prev, align 8, !dbg !4902
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !4903
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4904
  %4 = load ptr, ptr %next, align 8, !dbg !4904
  call void @__list_del(ptr noundef %2, ptr noundef %4) #12, !dbg !4905
  br label %return, !dbg !4906

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4906
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #6 align 16 !dbg !4907 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !4911, metadata !DIExpression()), !dbg !4912
  ret i1 true, !dbg !4913
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !4914 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4916, metadata !DIExpression()), !dbg !4918
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4917, metadata !DIExpression()), !dbg !4919
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !4920
  %1 = load ptr, ptr %next.addr, align 8, !dbg !4921
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4922
  store ptr %0, ptr %prev1, align 8, !dbg !4923
  br label %do.body, !dbg !4924

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4925

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4927

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4925

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4929
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !4929
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !4929
  store volatile ptr %2, ptr %next4, align 8, !dbg !4929
  br label %do.end5, !dbg !4929

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4925

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4931
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #5 align 16 !dbg !4932 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4934, metadata !DIExpression()), !dbg !4935
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4936
  call void @arch_atomic_dec(ptr noundef %0) #12, !dbg !4937
  ret void, !dbg !4938
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #5 align 16 !dbg !4939 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4941, metadata !DIExpression()), !dbg !4942
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4943
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !4944
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #11, !dbg !4945, !srcloc !4946
  ret void, !dbg !4947
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4948 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4950, metadata !DIExpression()), !dbg !4952
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4951, metadata !DIExpression()), !dbg !4953
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4954
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4956
  br i1 %1, label %if.then, label %if.else, !dbg !4957

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !4958
  %3 = load i64, ptr %nr.addr, align 8, !dbg !4958
  %shr = ashr i64 %3, 3, !dbg !4958
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !4958
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4960
  %and = and i64 %4, 7, !dbg !4960
  %sh_prom = trunc i64 %and to i32, !dbg !4960
  %shl = shl i32 1, %sh_prom, !dbg !4960
  %not = xor i32 %shl, -1, !dbg !4961
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #11, !dbg !4962, !srcloc !4963
  br label %if.end, !dbg !4964

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4965
  %6 = load i64, ptr %nr.addr, align 8, !dbg !4967
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #11, !dbg !4968, !srcloc !4969
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4970
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !4971 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4975, metadata !DIExpression()), !dbg !4978
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4976, metadata !DIExpression()), !dbg !4979
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4977, metadata !DIExpression()), !dbg !4980
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4981
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !4983
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4984
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12, !dbg !4985
  br i1 %call, label %if.end, label %if.then, !dbg !4986

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4987

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !4988
  %4 = load ptr, ptr %next.addr, align 8, !dbg !4989
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !4990
  store ptr %3, ptr %prev1, align 8, !dbg !4991
  %5 = load ptr, ptr %next.addr, align 8, !dbg !4992
  %6 = load ptr, ptr %new.addr, align 8, !dbg !4993
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !4994
  store ptr %5, ptr %next2, align 8, !dbg !4995
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !4996
  %8 = load ptr, ptr %new.addr, align 8, !dbg !4997
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !4998
  store ptr %7, ptr %prev3, align 8, !dbg !4999
  br label %do.body, !dbg !5000

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5001

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5003

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5001

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5005
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5005
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5005
  store volatile ptr %9, ptr %next6, align 8, !dbg !5005
  br label %do.end7, !dbg !5005

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5001

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5007
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !5008 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5012, metadata !DIExpression()), !dbg !5015
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5013, metadata !DIExpression()), !dbg !5016
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5014, metadata !DIExpression()), !dbg !5017
  ret i1 true, !dbg !5018
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702}
!llvm.ident = !{!3703}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "key_gc_delay", scope: !2, file: !3, line: 16, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/keys/.gc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22security/keys/gc\22 -D KBUILD_BASENAME=\22gc\22 -D KBUILD_MODNAME=\22gc\22 -D __KBUILD_MODNAME=kmod_gc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/keys/gc.ll security/keys/gc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !117, globals: !3643, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "security/keys/gc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "13b30d26396004814710870a83272d48")
!4 = !{!5, !13, !18, !44, !49, !57, !62, !68, !76, !92, !99, !105, !112}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernel_pkey_operation", file: !6, line: 22, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/keyctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb6b47c8f95fa53866d7002b6a7b8c6")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "kernel_pkey_encrypt", value: 0)
!10 = !DIEnumerator(name: "kernel_pkey_decrypt", value: 1)
!11 = !DIEnumerator(name: "kernel_pkey_sign", value: 2)
!12 = !DIEnumerator(name: "kernel_pkey_verify", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 10, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "false", value: 0)
!17 = !DIEnumerator(name: "true", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 30, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!21 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!22 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!23 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!24 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!25 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!26 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!27 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!28 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!29 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!30 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!31 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!32 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!33 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!34 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!35 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!36 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!37 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!38 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!39 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!40 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!41 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!42 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!43 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !45, line: 65, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!46 = !{!47, !48}
!47 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!48 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !50, line: 9, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!51 = !{!52, !53, !54, !55, !56}
!52 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!53 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!54 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!55 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!56 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !58, line: 2052, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!59 = !{!60, !61}
!60 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!61 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !63, line: 54, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!64 = !{!65, !66, !67}
!65 = !DIEnumerator(name: "USRQUOTA", value: 0)
!66 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!67 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !69, line: 68, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!70 = !{!71, !72, !73, !74, !75}
!71 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!72 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!73 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!74 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!75 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !77, line: 1325, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!79 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!80 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!81 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!82 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!83 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!84 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!85 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!86 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!87 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!88 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!89 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!90 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!91 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !93, line: 15, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!94 = !{!95, !96, !97, !98}
!95 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!96 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!97 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!98 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !100, line: 16, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!101 = !{!102, !103, !104}
!102 = !DIEnumerator(name: "TT_NONE", value: 0)
!103 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!104 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !106, line: 51, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!107 = !{!108, !109, !110, !111}
!108 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!109 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!110 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!111 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "key_state", file: !113, line: 182, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!114 = !{!115, !116}
!115 = !DIEnumerator(name: "KEY_IS_UNINSTANTIATED", value: 0)
!116 = !DIEnumerator(name: "KEY_IS_POSITIVE", value: 1)
!117 = !{!118, !119, !121, !122, !124, !129, !132, !133, !136, !139, !142, !144, !505, !508, !516, !517, !3639, !3642}
!118 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !120, line: 42, baseType: !118)
!120 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !125, line: 22, baseType: !126)
!125 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !127, line: 30, baseType: !128)
!127 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!128 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !125, line: 23, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !127, line: 31, baseType: !131)
!131 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !135)
!135 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !138)
!138 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !113, line: 195, size: 1728, elements: !146)
!146 = !{!147, !158, !163, !180, !227, !264, !265, !272, !273, !274, !281, !286, !287, !288, !290, !291, !488, !504}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !145, file: !113, line: 196, baseType: !148, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !149, line: 113, baseType: !150)
!149 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !149, line: 111, size: 32, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !150, file: !149, line: 112, baseType: !153, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !120, line: 174, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 172, size: 32, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !154, file: !120, line: 173, baseType: !157, size: 32)
!157 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !145, file: !113, line: 197, baseType: !159, size: 32, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !113, line: 28, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !120, line: 104, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !125, line: 20, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !127, line: 26, baseType: !157)
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !113, line: 198, baseType: !164, size: 192, offset: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !113, line: 198, size: 192, elements: !165)
!165 = !{!166, !172}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !164, file: !113, line: 199, baseType: !167, size: 128)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !120, line: 190, size: 128, elements: !168)
!168 = !{!169, !171}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !120, line: 191, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !167, file: !120, line: 191, baseType: !170, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !164, file: !113, line: 200, baseType: !173, size: 192, align: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !174, line: 5, size: 192, align: 64, elements: !175)
!174 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!175 = !{!176, !177, !179}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !173, file: !174, line: 6, baseType: !118, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !173, file: !174, line: 7, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !173, file: !174, line: 8, baseType: !178, size: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !145, file: !113, line: 205, baseType: !181, size: 320, offset: 256)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !182, line: 48, size: 320, elements: !183)
!182 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!183 = !{!184, !191, !192, !197, !226}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !181, file: !182, line: 49, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !186, line: 13, baseType: !187)
!186 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !120, line: 181, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 179, size: 64, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !188, file: !120, line: 180, baseType: !124, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !181, file: !182, line: 55, baseType: !185, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !181, file: !182, line: 57, baseType: !193, size: 32, offset: 128)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !194, line: 15, size: 32, elements: !195)
!194 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !193, file: !194, line: 20, baseType: !153, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !181, file: !182, line: 59, baseType: !198, size: 32, offset: 160)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !199, line: 23, baseType: !200)
!199 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !199, line: 14, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !200, file: !199, line: 15, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !204, line: 44, baseType: !205)
!204 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !204, line: 14, size: 32, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, scope: !205, file: !204, line: 15, baseType: !208, size: 32)
!208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !205, file: !204, line: 15, size: 32, elements: !209)
!209 = !{!210, !211, !218}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !208, file: !204, line: 16, baseType: !153, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !204, line: 24, baseType: !212, size: 16)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !204, line: 24, size: 16, elements: !213)
!213 = !{!214, !217}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !212, file: !204, line: 25, baseType: !215, size: 8)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !125, line: 17, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !127, line: 21, baseType: !143)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !212, file: !204, line: 26, baseType: !215, size: 8, offset: 8)
!218 = !DIDerivedType(tag: DW_TAG_member, scope: !208, file: !204, line: 28, baseType: !219, size: 32)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !208, file: !204, line: 28, size: 32, elements: !220)
!220 = !{!221, !225}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !219, file: !204, line: 29, baseType: !222, size: 16)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !125, line: 19, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !127, line: 24, baseType: !224)
!224 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !219, file: !204, line: 30, baseType: !222, size: 16, offset: 16)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !181, file: !182, line: 60, baseType: !167, size: 128, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !145, file: !113, line: 206, baseType: !228, size: 64, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !230, line: 54, size: 704, elements: !231)
!230 = !DIFile(filename: "security/keys/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65e07b4072a82be19b875e4a608fcbf3")
!231 = !{!232, !233, !241, !250, !251, !252, !253, !262, !263}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !229, file: !230, line: 55, baseType: !173, size: 192, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "cons_lock", scope: !229, file: !230, line: 56, baseType: !234, size: 256, offset: 192)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !235, line: 66, size: 256, elements: !236)
!235 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!236 = !{!237, !238, !239, !240}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !234, file: !235, line: 67, baseType: !185, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !234, file: !235, line: 68, baseType: !198, size: 32, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !234, file: !235, line: 70, baseType: !193, size: 32, offset: 96)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !234, file: !235, line: 72, baseType: !167, size: 128, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !229, file: !230, line: 57, baseType: !242, size: 32, offset: 448)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !243, line: 29, baseType: !244)
!243 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !243, line: 17, size: 32, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !243, line: 18, baseType: !247, size: 32)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !243, line: 18, size: 32, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !247, file: !243, line: 19, baseType: !200, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !229, file: !230, line: 58, baseType: !148, size: 32, offset: 480)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !229, file: !230, line: 59, baseType: !153, size: 32, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "nikeys", scope: !229, file: !230, line: 60, baseType: !153, size: 32, offset: 544)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !229, file: !230, line: 61, baseType: !254, size: 32, offset: 576)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !255, line: 23, baseType: !256)
!255 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 21, size: 32, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !256, file: !255, line: 22, baseType: !259, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !120, line: 37, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !261, line: 49, baseType: !7)
!261 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!262 = !DIDerivedType(tag: DW_TAG_member, name: "qnkeys", scope: !229, file: !230, line: 62, baseType: !157, size: 32, offset: 608)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "qnbytes", scope: !229, file: !230, line: 63, baseType: !157, size: 32, offset: 640)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !145, file: !113, line: 207, baseType: !121, size: 64, offset: 640)
!265 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !113, line: 208, baseType: !266, size: 64, offset: 704)
!266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !113, line: 208, size: 64, elements: !267)
!267 = !{!268, !271}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !266, file: !113, line: 209, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !270, line: 8, baseType: !126)
!270 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!271 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !266, file: !113, line: 210, baseType: !269, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !145, file: !113, line: 212, baseType: !269, size: 64, offset: 768)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !145, file: !113, line: 213, baseType: !254, size: 32, offset: 832)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !145, file: !113, line: 214, baseType: !275, size: 32, offset: 864)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !255, line: 28, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 26, size: 32, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !276, file: !255, line: 27, baseType: !279, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !120, line: 38, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !261, line: 50, baseType: !7)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !145, file: !113, line: 215, baseType: !282, size: 32, offset: 896)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !113, line: 31, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !120, line: 110, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !125, line: 21, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !127, line: 27, baseType: !7)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !145, file: !113, line: 216, baseType: !224, size: 16, offset: 928)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !145, file: !113, line: 217, baseType: !224, size: 16, offset: 944)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !145, file: !113, line: 221, baseType: !289, size: 16, offset: 960)
!289 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !145, file: !113, line: 228, baseType: !118, size: 64, offset: 1024)
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !113, line: 245, baseType: !292, size: 320, offset: 1088)
!292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !113, line: 245, size: 320, elements: !293)
!293 = !{!294, !480}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !292, file: !113, line: 246, baseType: !295, size: 320)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !113, line: 114, size: 320, elements: !296)
!296 = !{!297, !298, !310, !464, !479}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !295, file: !113, line: 116, baseType: !118, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !113, line: 117, baseType: !299, size: 64, offset: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !113, line: 117, size: 64, elements: !300)
!300 = !{!301, !309}
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !113, line: 118, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !299, file: !113, line: 118, size: 64, elements: !303)
!303 = !{!304, !305}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !302, file: !113, line: 120, baseType: !222, size: 16)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !302, file: !113, line: 121, baseType: !306, size: 48, offset: 16)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 48, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 6)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !299, file: !113, line: 127, baseType: !118, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !295, file: !113, line: 129, baseType: !311, size: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !313, line: 64, size: 1344, elements: !314)
!313 = !DIFile(filename: "./include/linux/key-type.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79a6b816f9397cf1462a94b9d3d8f5a6")
!314 = !{!315, !318, !322, !323, !327, !351, !355, !359, !360, !380, !384, !388, !389, !395, !399, !404, !422, !450, !455, !459, !460}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !313, line: 66, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "def_datalen", scope: !312, file: !313, line: 72, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 61, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !261, line: 72, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !261, line: 16, baseType: !118)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !313, line: 74, baseType: !7, size: 32, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "vet_description", scope: !312, file: !313, line: 79, baseType: !324, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!157, !316}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "preparse", scope: !312, file: !313, line: 85, baseType: !328, size: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!157, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_preparsed_payload", file: !313, line: 31, size: 640, elements: !333)
!333 = !{!334, !335, !337, !345, !348, !349, !350}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "orig_description", scope: !332, file: !313, line: 32, baseType: !316, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !332, file: !313, line: 33, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !332, file: !313, line: 34, baseType: !338, size: 256, offset: 128)
!338 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !113, line: 134, size: 256, elements: !339)
!339 = !{!340, !341}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !338, file: !113, line: 135, baseType: !121, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !338, file: !113, line: 136, baseType: !342, size: 256)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 256, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 4)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !332, file: !313, line: 35, baseType: !346, size: 64, offset: 384)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !332, file: !313, line: 36, baseType: !319, size: 64, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !332, file: !313, line: 37, baseType: !319, size: 64, offset: 512)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !332, file: !313, line: 38, baseType: !269, size: 64, offset: 576)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "free_preparse", scope: !312, file: !313, line: 89, baseType: !352, size: 64, offset: 320)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !331}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "instantiate", scope: !312, file: !313, line: 95, baseType: !356, size: 64, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!157, !144, !331}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !312, file: !313, line: 102, baseType: !356, size: 64, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "match_preparse", scope: !312, file: !313, line: 108, baseType: !361, size: 64, offset: 512)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!157, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_match_data", file: !313, line: 46, size: 256, elements: !366)
!366 = !{!367, !377, !378, !379}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !365, file: !313, line: 51, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!371, !373, !375}
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !120, line: 35, baseType: !372)
!372 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "raw_data", scope: !365, file: !313, line: 54, baseType: !346, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "preparsed", scope: !365, file: !313, line: 55, baseType: !121, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_type", scope: !365, file: !313, line: 56, baseType: !7, size: 32, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "match_free", scope: !312, file: !313, line: 112, baseType: !381, size: 64, offset: 576)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !364}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "revoke", scope: !312, file: !313, line: 117, baseType: !385, size: 64, offset: 640)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !144}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !312, file: !313, line: 120, baseType: !385, size: 64, offset: 704)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "describe", scope: !312, file: !313, line: 123, baseType: !390, size: 64, offset: 768)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !373, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !113, line: 97, flags: DIFlagFwdDecl)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !312, file: !313, line: 132, baseType: !396, size: 64, offset: 832)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!138, !373, !336, !319}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "request_key", scope: !312, file: !313, line: 142, baseType: !400, size: 64, offset: 896)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "request_key_actor_t", file: !313, line: 41, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!157, !144, !121}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_restriction", scope: !312, file: !313, line: 150, baseType: !405, size: 64, offset: 960)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!408, !316}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !113, line: 176, size: 192, elements: !410)
!410 = !{!411, !420, !421}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !409, file: !113, line: 177, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !113, line: 171, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!157, !144, !416, !418, !144}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !409, file: !113, line: 178, baseType: !144, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !409, file: !113, line: 179, baseType: !311, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "asym_query", scope: !312, file: !313, line: 153, baseType: !423, size: 64, offset: 1024)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!157, !426, !441}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_params", file: !6, line: 29, size: 384, elements: !429)
!429 = !{!430, !431, !432, !433, !434, !435, !440}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !428, file: !6, line: 30, baseType: !144, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !428, file: !6, line: 31, baseType: !316, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hash_algo", scope: !428, file: !6, line: 32, baseType: !316, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !428, file: !6, line: 33, baseType: !336, size: 64, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "in_len", scope: !428, file: !6, line: 34, baseType: !285, size: 32, offset: 256)
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !6, line: 35, baseType: !436, size: 32, offset: 288)
!436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !6, line: 35, size: 32, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "out_len", scope: !436, file: !6, line: 36, baseType: !285, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "in2_len", scope: !436, file: !6, line: 37, baseType: !285, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !428, file: !6, line: 39, baseType: !5, size: 8, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_pkey_query", file: !6, line: 13, size: 128, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "supported_ops", scope: !442, file: !6, line: 14, baseType: !285, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "key_size", scope: !442, file: !6, line: 15, baseType: !285, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "max_data_size", scope: !442, file: !6, line: 16, baseType: !223, size: 16, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "max_sig_size", scope: !442, file: !6, line: 17, baseType: !223, size: 16, offset: 80)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "max_enc_size", scope: !442, file: !6, line: 18, baseType: !223, size: 16, offset: 96)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "max_dec_size", scope: !442, file: !6, line: 19, baseType: !223, size: 16, offset: 112)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "asym_eds_op", scope: !312, file: !313, line: 155, baseType: !451, size: 64, offset: 1088)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!157, !454, !346, !121}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "asym_verify_signature", scope: !312, file: !313, line: 157, baseType: !456, size: 64, offset: 1152)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!157, !454, !346, !346}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !312, file: !313, line: 161, baseType: !167, size: 128, offset: 1216)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "lock_class", scope: !312, file: !313, line: 162, baseType: !461, offset: 1344)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !462, line: 206, elements: !463)
!462 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!463 = !{}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !295, file: !113, line: 130, baseType: !465, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !113, line: 108, size: 192, elements: !467)
!467 = !{!468, !477, !478}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !466, file: !113, line: 109, baseType: !469, size: 128, align: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !120, line: 232, size: 128, align: 64, elements: !470)
!470 = !{!471, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !120, line: 233, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !469, file: !120, line: 234, baseType: !474, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !472}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !466, file: !113, line: 110, baseType: !148, size: 32, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !466, file: !113, line: 111, baseType: !371, size: 8, offset: 160)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !295, file: !113, line: 131, baseType: !316, size: 64, offset: 256)
!480 = !DIDerivedType(tag: DW_TAG_member, scope: !292, file: !113, line: 247, baseType: !481, size: 320)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !292, file: !113, line: 247, size: 320, elements: !482)
!482 = !{!483, !484, !485, !486, !487}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !481, file: !113, line: 248, baseType: !118, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !481, file: !113, line: 249, baseType: !118, size: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !481, file: !113, line: 250, baseType: !311, size: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !481, file: !113, line: 251, baseType: !465, size: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !481, file: !113, line: 252, baseType: !336, size: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !113, line: 260, baseType: !489, size: 256, offset: 1408)
!489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !113, line: 260, size: 256, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !489, file: !113, line: 261, baseType: !338, size: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !113, line: 262, baseType: !493, size: 256)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !489, file: !113, line: 262, size: 256, elements: !494)
!494 = !{!495, !496}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !493, file: !113, line: 264, baseType: !167, size: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !493, file: !113, line: 265, baseType: !497, size: 128, offset: 128)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !498, line: 22, size: 128, elements: !499)
!498 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!499 = !{!500, !503}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !497, file: !498, line: 23, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !498, line: 23, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !497, file: !498, line: 24, baseType: !118, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !145, file: !113, line: 280, baseType: !408, size: 64, offset: 1664)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !157)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !510, line: 56, size: 192, elements: !511)
!510 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!511 = !{!512, !513, !514, !515}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !509, file: !510, line: 57, baseType: !118, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !509, file: !510, line: 58, baseType: !118, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !509, file: !510, line: 59, baseType: !284, size: 32, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !509, file: !510, line: 61, baseType: !284, size: 32, offset: 160)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !519, line: 746, size: 58368, elements: !520)
!519 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !599, !610, !710, !714, !717, !748, !749, !750, !751, !762, !764, !765, !766, !767, !768, !769, !780, !781, !784, !785, !786, !787, !788, !789, !790, !791, !798, !799, !806, !807, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2786, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2801, !2802, !2803, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2835, !2841, !2842, !2843, !2844, !2845, !2847, !2850, !2857, !2862, !2865, !2868, !2871, !2875, !3015, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3057, !3058, !3059, !3068, !3076, !3077, !3078, !3079, !3080, !3085, !3086, !3087, !3090, !3091, !3094, !3097, !3100, !3108, !3111, !3112, !3198, !3199, !3200, !3201, !3202, !3208, !3209, !3210, !3211, !3214, !3215, !3218, !3232, !3233, !3236, !3237, !3238, !3241, !3242, !3243, !3244, !3245, !3246, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3278, !3279, !3285, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3297, !3369, !3371, !3372, !3373, !3374, !3375, !3387, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3416, !3417, !3418}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !518, file: !519, line: 752, baseType: !509, size: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !518, file: !519, line: 754, baseType: !7, size: 32, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !518, file: !519, line: 767, baseType: !121, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !518, file: !519, line: 768, baseType: !148, size: 32, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !518, file: !519, line: 770, baseType: !7, size: 32, offset: 352)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !518, file: !519, line: 771, baseType: !7, size: 32, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !518, file: !519, line: 774, baseType: !157, size: 32, offset: 416)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !518, file: !519, line: 775, baseType: !529, size: 128, offset: 448)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !530, line: 58, size: 128, elements: !531)
!530 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!531 = !{!532, !538, !543, !544}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !529, file: !530, line: 59, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !534, line: 60, size: 64, elements: !535)
!534 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !533, file: !534, line: 61, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, scope: !529, file: !530, line: 60, baseType: !539, size: 32, offset: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !529, file: !530, line: 60, size: 32, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !539, file: !530, line: 61, baseType: !7, size: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !539, file: !530, line: 62, baseType: !153, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !529, file: !530, line: 65, baseType: !222, size: 16, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !529, file: !530, line: 65, baseType: !222, size: 16, offset: 112)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !518, file: !519, line: 776, baseType: !7, size: 32, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !518, file: !519, line: 777, baseType: !118, size: 64, offset: 640)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !518, file: !519, line: 778, baseType: !517, size: 64, offset: 704)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !518, file: !519, line: 787, baseType: !157, size: 32, offset: 768)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !518, file: !519, line: 788, baseType: !157, size: 32, offset: 800)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !518, file: !519, line: 790, baseType: !157, size: 32, offset: 832)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !518, file: !519, line: 792, baseType: !157, size: 32, offset: 864)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !518, file: !519, line: 793, baseType: !157, size: 32, offset: 896)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !518, file: !519, line: 794, baseType: !157, size: 32, offset: 928)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !518, file: !519, line: 795, baseType: !7, size: 32, offset: 960)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !518, file: !519, line: 797, baseType: !556, size: 2048, offset: 1024)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !519, line: 551, size: 2048, elements: !557)
!557 = !{!558, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !578, !581, !582, !583}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !556, file: !519, line: 553, baseType: !559, size: 128)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !519, line: 411, size: 128, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !559, file: !519, line: 412, baseType: !118, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !559, file: !519, line: 413, baseType: !284, size: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !556, file: !519, line: 554, baseType: !173, size: 192, align: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !556, file: !519, line: 555, baseType: !129, size: 64, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !556, file: !519, line: 556, baseType: !129, size: 64, offset: 384)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !556, file: !519, line: 558, baseType: !167, size: 128, offset: 448)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !556, file: !519, line: 559, baseType: !7, size: 32, offset: 576)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !556, file: !519, line: 561, baseType: !129, size: 64, offset: 640)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !556, file: !519, line: 562, baseType: !129, size: 64, offset: 704)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !556, file: !519, line: 563, baseType: !129, size: 64, offset: 768)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !556, file: !519, line: 564, baseType: !129, size: 64, offset: 832)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !556, file: !519, line: 565, baseType: !124, size: 64, offset: 896)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !556, file: !519, line: 566, baseType: !129, size: 64, offset: 960)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !556, file: !519, line: 568, baseType: !129, size: 64, offset: 1024)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !556, file: !519, line: 571, baseType: !157, size: 32, offset: 1088)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !556, file: !519, line: 572, baseType: !577, size: 64, offset: 1152)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !556, file: !519, line: 574, baseType: !579, size: 64, offset: 1216)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !519, line: 49, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !556, file: !519, line: 576, baseType: !579, size: 64, offset: 1280)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !556, file: !519, line: 578, baseType: !118, size: 64, offset: 1344)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !556, file: !519, line: 588, baseType: !584, size: 512, align: 512, offset: 1536)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !519, line: 497, size: 512, align: 512, elements: !585)
!585 = !{!586, !587, !588, !589, !590, !591, !592, !593, !594}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !584, file: !519, line: 498, baseType: !129, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !584, file: !519, line: 499, baseType: !129, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !584, file: !519, line: 500, baseType: !129, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !584, file: !519, line: 501, baseType: !284, size: 32, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !584, file: !519, line: 502, baseType: !284, size: 32, offset: 224)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !584, file: !519, line: 503, baseType: !118, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !584, file: !519, line: 504, baseType: !118, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !584, file: !519, line: 505, baseType: !118, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !584, file: !519, line: 506, baseType: !595, size: 64, align: 64, offset: 448)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !519, line: 445, size: 64, align: 64, elements: !596)
!596 = !{!597, !598}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !595, file: !519, line: 446, baseType: !7, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !595, file: !519, line: 447, baseType: !7, size: 32, offset: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !518, file: !519, line: 798, baseType: !600, size: 384, offset: 3072)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !519, line: 592, size: 384, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !608}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !600, file: !519, line: 593, baseType: !167, size: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !600, file: !519, line: 594, baseType: !118, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !600, file: !519, line: 595, baseType: !118, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !600, file: !519, line: 596, baseType: !7, size: 32, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !600, file: !519, line: 597, baseType: !224, size: 16, offset: 288)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !600, file: !519, line: 598, baseType: !224, size: 16, offset: 304)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !600, file: !519, line: 600, baseType: !609, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !518, file: !519, line: 799, baseType: !611, size: 1792, offset: 3456)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !519, line: 610, size: 1792, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !707, !708}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !611, file: !519, line: 611, baseType: !173, size: 192, align: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !611, file: !519, line: 618, baseType: !129, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !611, file: !519, line: 619, baseType: !129, size: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !611, file: !519, line: 620, baseType: !129, size: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !611, file: !519, line: 621, baseType: !129, size: 64, offset: 384)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !611, file: !519, line: 622, baseType: !129, size: 64, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !611, file: !519, line: 629, baseType: !124, size: 64, offset: 512)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !611, file: !519, line: 630, baseType: !129, size: 64, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !519, line: 631, baseType: !7, size: 32, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !611, file: !519, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !611, file: !519, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !611, file: !519, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !611, file: !519, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !611, file: !519, line: 662, baseType: !627, size: 512, offset: 704)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !45, line: 118, size: 512, elements: !628)
!628 = !{!629, !637, !638, !643, !703, !704, !705, !706}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !627, file: !45, line: 119, baseType: !630, size: 256)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !631, line: 9, size: 256, elements: !632)
!631 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!632 = !{!633, !634}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !630, file: !631, line: 10, baseType: !173, size: 192, align: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !630, file: !631, line: 11, baseType: !635, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !636, line: 29, baseType: !124)
!636 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !627, file: !45, line: 120, baseType: !635, size: 64, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !627, file: !45, line: 121, baseType: !639, size: 64, offset: 320)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!44, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !627, file: !45, line: 122, baseType: !644, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !45, line: 159, size: 512, align: 512, elements: !646)
!646 = !{!647, !672, !673, !676, !686, !687, !698, !702}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !645, file: !45, line: 160, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !45, line: 215, size: 4608, align: 512, elements: !650)
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !649, file: !45, line: 216, baseType: !198, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !649, file: !45, line: 217, baseType: !7, size: 32, offset: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !649, file: !45, line: 218, baseType: !7, size: 32, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !649, file: !45, line: 219, baseType: !7, size: 32, offset: 96)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !649, file: !45, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !649, file: !45, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !649, file: !45, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !649, file: !45, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !649, file: !45, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !649, file: !45, line: 226, baseType: !7, size: 32, offset: 160)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !649, file: !45, line: 227, baseType: !224, size: 16, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !649, file: !45, line: 228, baseType: !224, size: 16, offset: 208)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !649, file: !45, line: 229, baseType: !7, size: 32, offset: 224)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !649, file: !45, line: 235, baseType: !635, size: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !649, file: !45, line: 236, baseType: !642, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !649, file: !45, line: 237, baseType: !635, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !649, file: !45, line: 238, baseType: !642, size: 64, offset: 448)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !649, file: !45, line: 239, baseType: !669, size: 4096, align: 512, offset: 512)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 4096, align: 512, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 8)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !645, file: !45, line: 161, baseType: !7, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !645, file: !45, line: 162, baseType: !674, size: 32, offset: 96)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !120, line: 32, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !261, line: 96, baseType: !157)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !645, file: !45, line: 163, baseType: !677, size: 32, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !678, line: 274, baseType: !679)
!678 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !678, line: 274, size: 32, elements: !680)
!680 = !{!681}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !679, file: !678, line: 274, baseType: !682, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !678, line: 69, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !678, line: 64, size: 32, elements: !684)
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !683, file: !678, line: 65, baseType: !7, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !645, file: !45, line: 164, baseType: !642, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !645, file: !45, line: 165, baseType: !688, size: 128, offset: 256)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !631, line: 14, size: 128, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !688, file: !631, line: 15, baseType: !691, size: 128)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !174, line: 26, size: 128, elements: !692)
!692 = !{!693, !697}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !691, file: !174, line: 27, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !174, line: 12, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !694, file: !174, line: 13, baseType: !178, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !691, file: !174, line: 28, baseType: !178, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !645, file: !45, line: 166, baseType: !699, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!635}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !645, file: !45, line: 167, baseType: !635, size: 64, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !627, file: !45, line: 123, baseType: !215, size: 8, offset: 448)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !627, file: !45, line: 124, baseType: !215, size: 8, offset: 456)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !627, file: !45, line: 125, baseType: !215, size: 8, offset: 464)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !627, file: !45, line: 126, baseType: !215, size: 8, offset: 472)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !611, file: !519, line: 671, baseType: !627, size: 512, offset: 1216)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !611, file: !519, line: 679, baseType: !709, size: 64, offset: 1728)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !518, file: !519, line: 800, baseType: !711, size: 64, offset: 5248)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !519, line: 800, flags: DIFlagFwdDecl)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !518, file: !519, line: 809, baseType: !715, size: 64, offset: 5312)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !519, line: 70, flags: DIFlagFwdDecl)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !518, file: !519, line: 825, baseType: !718, size: 2048, align: 512, offset: 5632)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !519, line: 509, size: 2048, align: 512, elements: !719)
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !718, file: !519, line: 511, baseType: !129, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !718, file: !519, line: 512, baseType: !129, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !718, file: !519, line: 513, baseType: !129, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !718, file: !519, line: 514, baseType: !129, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !718, file: !519, line: 515, baseType: !129, size: 64, offset: 256)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !718, file: !519, line: 516, baseType: !129, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !718, file: !519, line: 518, baseType: !129, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !718, file: !519, line: 519, baseType: !129, size: 64, offset: 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !718, file: !519, line: 520, baseType: !124, size: 64, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !718, file: !519, line: 522, baseType: !129, size: 64, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !718, file: !519, line: 523, baseType: !129, size: 64, offset: 640)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !718, file: !519, line: 524, baseType: !124, size: 64, offset: 704)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !718, file: !519, line: 526, baseType: !124, size: 64, offset: 768)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !718, file: !519, line: 527, baseType: !129, size: 64, offset: 832)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !718, file: !519, line: 529, baseType: !129, size: 64, offset: 896)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !718, file: !519, line: 530, baseType: !129, size: 64, offset: 960)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !718, file: !519, line: 531, baseType: !129, size: 64, offset: 1024)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !718, file: !519, line: 532, baseType: !129, size: 64, offset: 1088)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !718, file: !519, line: 533, baseType: !129, size: 64, offset: 1152)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !718, file: !519, line: 535, baseType: !129, size: 64, offset: 1216)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !718, file: !519, line: 536, baseType: !129, size: 64, offset: 1280)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !718, file: !519, line: 537, baseType: !129, size: 64, offset: 1344)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !718, file: !519, line: 538, baseType: !129, size: 64, offset: 1408)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !718, file: !519, line: 539, baseType: !129, size: 64, offset: 1472)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !718, file: !519, line: 540, baseType: !129, size: 64, offset: 1536)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !718, file: !519, line: 541, baseType: !129, size: 64, offset: 1600)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !718, file: !519, line: 542, baseType: !129, size: 64, offset: 1664)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !718, file: !519, line: 543, baseType: !129, size: 64, offset: 1728)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !518, file: !519, line: 833, baseType: !7, size: 32, offset: 7680)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !518, file: !519, line: 836, baseType: !7, size: 32, offset: 7712)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !518, file: !519, line: 837, baseType: !157, size: 32, offset: 7744)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !518, file: !519, line: 838, baseType: !752, size: 64, offset: 7808)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !755, line: 19, baseType: !756)
!755 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !755, line: 19, size: 64, elements: !757)
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !756, file: !755, line: 19, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 64, elements: !760)
!760 = !{!761}
!761 = !DISubrange(count: 1)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !518, file: !519, line: 839, baseType: !763, size: 64, offset: 7872)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !518, file: !519, line: 840, baseType: !754, size: 64, offset: 7936)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !518, file: !519, line: 841, baseType: !121, size: 64, offset: 8000)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !518, file: !519, line: 843, baseType: !224, size: 16, offset: 8064)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !518, file: !519, line: 845, baseType: !224, size: 16, offset: 8080)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !518, file: !519, line: 848, baseType: !157, size: 32, offset: 8096)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !518, file: !519, line: 849, baseType: !770, size: 32, offset: 8128)
!770 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !519, line: 718, size: 32, elements: !771)
!771 = !{!772, !779}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !770, file: !519, line: 724, baseType: !773, size: 32)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !770, file: !519, line: 719, size: 32, elements: !774)
!774 = !{!775, !776, !777, !778}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !773, file: !519, line: 720, baseType: !215, size: 8)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !773, file: !519, line: 721, baseType: !215, size: 8, offset: 8)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !773, file: !519, line: 722, baseType: !215, size: 8, offset: 16)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !773, file: !519, line: 723, baseType: !215, size: 8, offset: 24)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !770, file: !519, line: 725, baseType: !284, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !518, file: !519, line: 850, baseType: !167, size: 128, offset: 8192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !518, file: !519, line: 851, baseType: !782, size: 64, offset: 8320)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !519, line: 60, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !518, file: !519, line: 855, baseType: !118, size: 64, offset: 8384)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !518, file: !519, line: 856, baseType: !215, size: 8, offset: 8448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !518, file: !519, line: 857, baseType: !215, size: 8, offset: 8456)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !518, file: !519, line: 858, baseType: !157, size: 32, offset: 8480)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !518, file: !519, line: 859, baseType: !167, size: 128, offset: 8512)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !518, file: !519, line: 860, baseType: !157, size: 32, offset: 8640)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !518, file: !519, line: 861, baseType: !167, size: 128, offset: 8704)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !518, file: !519, line: 873, baseType: !792, size: 256, offset: 8832)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !519, line: 376, size: 256, elements: !793)
!793 = !{!794, !795, !796, !797}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !792, file: !519, line: 381, baseType: !118, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !792, file: !519, line: 384, baseType: !131, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !792, file: !519, line: 389, baseType: !131, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !792, file: !519, line: 392, baseType: !131, size: 64, offset: 192)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !518, file: !519, line: 875, baseType: !167, size: 128, offset: 9088)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !518, file: !519, line: 877, baseType: !800, size: 320, offset: 9216)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !801, line: 86, size: 320, elements: !802)
!801 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!802 = !{!803, !804, !805}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !800, file: !801, line: 87, baseType: !157, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !800, file: !801, line: 88, baseType: !167, size: 128, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !800, file: !801, line: 89, baseType: !167, size: 128, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !518, file: !519, line: 878, baseType: !173, size: 192, align: 64, offset: 9536)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !518, file: !519, line: 881, baseType: !808, size: 64, offset: 9728)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !77, line: 733, size: 10240, elements: !810)
!810 = !{!811, !2705}
!811 = !DIDerivedType(tag: DW_TAG_member, scope: !809, file: !77, line: 734, baseType: !812, size: 10240)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !809, file: !77, line: 734, size: 10240, elements: !813)
!813 = !{!814, !818, !831, !2603, !2604, !2605, !2606, !2607, !2608, !2615, !2616, !2617, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2656, !2658, !2661, !2685, !2686, !2687, !2690, !2691, !2692, !2695, !2696, !2697, !2703, !2704}
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !812, file: !77, line: 739, baseType: !815, size: 512, align: 512)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !812, file: !77, line: 739, size: 512, align: 512, elements: !816)
!816 = !{!817}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !815, file: !77, line: 747, baseType: !153, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !812, file: !77, line: 750, baseType: !819, size: 128, offset: 512)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !820, line: 218, size: 128, elements: !821)
!820 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!821 = !{!822, !829, !830}
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !819, file: !820, line: 219, baseType: !823, size: 32)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !819, file: !820, line: 219, size: 32, elements: !824)
!824 = !{!825, !826}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !823, file: !820, line: 220, baseType: !242, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !823, file: !820, line: 221, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !820, line: 197, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !820, line: 197, elements: !463)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !819, file: !820, line: 223, baseType: !7, size: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !819, file: !820, line: 224, baseType: !121, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !812, file: !77, line: 752, baseType: !832, size: 64, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!118, !835, !118, !118, !118, !118}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !58, line: 994, size: 1856, align: 64, elements: !837)
!837 = !{!838, !844, !845, !847, !848, !849, !852, !853, !920, !1003, !1012, !2593, !2594, !2595, !2596, !2597, !2598, !2600, !2601, !2602}
!838 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !58, line: 995, baseType: !839, size: 128)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !58, line: 995, size: 128, elements: !840)
!840 = !{!841, !842, !843}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !839, file: !58, line: 996, baseType: !533, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !839, file: !58, line: 997, baseType: !469, size: 128, align: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !839, file: !58, line: 998, baseType: !7, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !836, file: !58, line: 1005, baseType: !242, size: 32, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !836, file: !58, line: 1006, baseType: !846, size: 32, offset: 160)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !120, line: 156, baseType: !7)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !836, file: !58, line: 1007, baseType: !185, size: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !836, file: !58, line: 1008, baseType: !234, size: 256, offset: 256)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !836, file: !58, line: 1009, baseType: !850, size: 64, offset: 512)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !120, line: 52, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !261, line: 88, baseType: !128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !836, file: !58, line: 1010, baseType: !7, size: 32, offset: 576)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !836, file: !58, line: 1011, baseType: !854, size: 256, offset: 640)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !58, line: 948, size: 256, elements: !855)
!855 = !{!856, !879, !916, !917, !918, !919}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !854, file: !58, line: 949, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !858, line: 34, baseType: !859)
!858 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !858, line: 25, size: 64, elements: !860)
!860 = !{!861}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !859, file: !858, line: 26, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !863, line: 27, baseType: !864)
!863 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !863, line: 13, size: 64, elements: !865)
!865 = !{!866, !878}
!866 = !DIDerivedType(tag: DW_TAG_member, scope: !864, file: !863, line: 14, baseType: !867, size: 32)
!867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !864, file: !863, line: 14, size: 32, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !867, file: !863, line: 15, baseType: !153, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, scope: !867, file: !863, line: 16, baseType: !871, size: 32)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !867, file: !863, line: 16, size: 32, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !871, file: !863, line: 18, baseType: !215, size: 8)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !871, file: !863, line: 19, baseType: !875, size: 24, offset: 8)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 24, elements: !876)
!876 = !{!877}
!877 = !DISubrange(count: 3)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !864, file: !863, line: 26, baseType: !203, size: 32, offset: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !854, file: !58, line: 950, baseType: !880, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !50, line: 59, size: 768, elements: !882)
!882 = !{!883, !884, !885, !886, !897, !898, !905, !906}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !881, file: !50, line: 61, baseType: !148, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !881, file: !50, line: 62, baseType: !7, size: 32, offset: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !881, file: !50, line: 63, baseType: !242, size: 32, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !881, file: !50, line: 65, baseType: !887, size: 256, offset: 128)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !888, size: 256, elements: !343)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !120, line: 194, size: 64, elements: !889)
!889 = !{!890}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !888, file: !120, line: 195, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !120, line: 198, size: 128, elements: !893)
!893 = !{!894, !895}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !892, file: !120, line: 199, baseType: !891, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !892, file: !120, line: 199, baseType: !896, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !881, file: !50, line: 66, baseType: !888, size: 64, offset: 384)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !881, file: !50, line: 68, baseType: !899, size: 192, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !900, line: 41, baseType: !901)
!900 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !900, line: 37, size: 192, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !901, file: !900, line: 38, baseType: !242, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !901, file: !900, line: 39, baseType: !167, size: 128, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !881, file: !50, line: 69, baseType: !469, size: 128, align: 64, offset: 640)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !881, file: !50, line: 70, baseType: !907, offset: 768)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, elements: !914)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !50, line: 54, size: 128, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !908, file: !50, line: 55, baseType: !157, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !908, file: !50, line: 56, baseType: !912, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !50, line: 56, flags: DIFlagFwdDecl)
!914 = !{!915}
!915 = !DISubrange(count: -1)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !854, file: !58, line: 951, baseType: !49, size: 32, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !854, file: !58, line: 952, baseType: !254, size: 32, offset: 160)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !854, file: !58, line: 952, baseType: !254, size: 32, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !854, file: !58, line: 953, baseType: !157, size: 32, offset: 224)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !836, file: !58, line: 1012, baseType: !921, size: 64, offset: 896)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !923)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !924, line: 110, size: 1472, elements: !925)
!924 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!925 = !{!926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !983, !986, !990, !998}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !923, file: !924, line: 111, baseType: !185, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !923, file: !924, line: 112, baseType: !254, size: 32, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !923, file: !924, line: 113, baseType: !275, size: 32, offset: 96)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !923, file: !924, line: 114, baseType: !254, size: 32, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !923, file: !924, line: 115, baseType: !275, size: 32, offset: 160)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !923, file: !924, line: 116, baseType: !254, size: 32, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !923, file: !924, line: 117, baseType: !275, size: 32, offset: 224)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !923, file: !924, line: 118, baseType: !254, size: 32, offset: 256)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !923, file: !924, line: 119, baseType: !275, size: 32, offset: 288)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !923, file: !924, line: 120, baseType: !7, size: 32, offset: 320)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !923, file: !924, line: 121, baseType: !937, size: 64, offset: 384)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !938, line: 24, baseType: !939)
!938 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !938, line: 24, size: 64, elements: !940)
!940 = !{!941}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !939, file: !938, line: 24, baseType: !129, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !923, file: !924, line: 122, baseType: !937, size: 64, offset: 448)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !923, file: !924, line: 123, baseType: !937, size: 64, offset: 512)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !923, file: !924, line: 124, baseType: !937, size: 64, offset: 576)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !923, file: !924, line: 125, baseType: !937, size: 64, offset: 640)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !923, file: !924, line: 127, baseType: !143, size: 8, offset: 704)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !923, file: !924, line: 129, baseType: !144, size: 64, offset: 768)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !923, file: !924, line: 130, baseType: !144, size: 64, offset: 832)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !923, file: !924, line: 131, baseType: !144, size: 64, offset: 896)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !923, file: !924, line: 132, baseType: !144, size: 64, offset: 960)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !923, file: !924, line: 135, baseType: !121, size: 64, offset: 1024)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !923, file: !924, line: 137, baseType: !953, size: 64, offset: 1088)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !955, line: 14, size: 1088, elements: !956)
!955 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!956 = !{!957, !958, !967, !968, !969, !970, !971, !972}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !954, file: !955, line: 15, baseType: !148, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !954, file: !955, line: 17, baseType: !959, size: 320, offset: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !960, line: 22, size: 320, elements: !961)
!960 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!961 = !{!962, !963, !964, !965}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !959, file: !960, line: 23, baseType: !198, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !959, file: !960, line: 24, baseType: !124, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !959, file: !960, line: 26, baseType: !167, size: 128, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !959, file: !960, line: 28, baseType: !966, size: 64, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !954, file: !955, line: 19, baseType: !118, size: 64, offset: 384)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !954, file: !955, line: 20, baseType: !185, size: 64, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !954, file: !955, line: 23, baseType: !892, size: 128, offset: 512)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !954, file: !955, line: 24, baseType: !254, size: 32, offset: 640)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !954, file: !955, line: 29, baseType: !185, size: 64, offset: 704)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !954, file: !955, line: 36, baseType: !973, size: 320, offset: 768)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !974, line: 15, size: 320, elements: !975)
!974 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!975 = !{!976, !977, !978, !979, !980, !981, !982}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !973, file: !974, line: 16, baseType: !198, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !973, file: !974, line: 18, baseType: !157, size: 32, offset: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !973, file: !974, line: 19, baseType: !157, size: 32, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !973, file: !974, line: 20, baseType: !157, size: 32, offset: 96)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !973, file: !974, line: 21, baseType: !157, size: 32, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !973, file: !974, line: 22, baseType: !118, size: 64, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !973, file: !974, line: 23, baseType: !118, size: 64, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !923, file: !924, line: 138, baseType: !984, size: 64, offset: 1152)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !77, line: 901, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !923, file: !924, line: 139, baseType: !987, size: 64, offset: 1216)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !989, line: 16, flags: DIFlagFwdDecl)
!989 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!990 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !923, file: !924, line: 140, baseType: !991, size: 64, offset: 1280)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !924, line: 25, size: 64, elements: !993)
!993 = !{!994, !995, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !992, file: !924, line: 26, baseType: !153, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !992, file: !924, line: 27, baseType: !157, size: 32, offset: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !992, file: !924, line: 28, baseType: !997, offset: 64)
!997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !275, elements: !914)
!998 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !924, line: 142, baseType: !999, size: 128, offset: 1344)
!999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !923, file: !924, line: 142, size: 128, elements: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !999, file: !924, line: 143, baseType: !157, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !999, file: !924, line: 144, baseType: !469, size: 128, align: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !836, file: !58, line: 1013, baseType: !1004, size: 256, offset: 960)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !58, line: 970, size: 256, elements: !1005)
!1005 = !{!1006, !1007, !1008, !1009, !1010, !1011}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1004, file: !58, line: 971, baseType: !118, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1004, file: !58, line: 972, baseType: !7, size: 32, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1004, file: !58, line: 973, baseType: !7, size: 32, offset: 96)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1004, file: !58, line: 974, baseType: !7, size: 32, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1004, file: !58, line: 975, baseType: !7, size: 32, offset: 160)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1004, file: !58, line: 976, baseType: !850, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !836, file: !58, line: 1014, baseType: !1013, size: 128, offset: 1216)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1014, line: 8, size: 128, elements: !1015)
!1014 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1015 = !{!1016, !2592}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1013, file: !1014, line: 9, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1019, line: 70, size: 256, elements: !1020)
!1019 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1020 = !{!1021, !2589, !2590, !2591}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1018, file: !1019, line: 71, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1024, line: 82, size: 1536, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1025 = !{!1026, !1027, !1032, !1040, !1041, !1056, !2556, !2558, !2571, !2572, !2573, !2574, !2575, !2581, !2582, !2583}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1023, file: !1024, line: 84, baseType: !7, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1023, file: !1024, line: 85, baseType: !1028, size: 32, offset: 32)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !678, line: 275, baseType: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !678, line: 275, size: 32, elements: !1030)
!1030 = !{!1031}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1029, file: !678, line: 275, baseType: !682, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1023, file: !1024, line: 86, baseType: !1033, size: 128, offset: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1034, line: 38, size: 128, elements: !1035)
!1034 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1035 = !{!1036, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1033, file: !1034, line: 39, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1033, file: !1034, line: 39, baseType: !1039, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1023, file: !1024, line: 87, baseType: !1022, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1023, file: !1024, line: 88, baseType: !1042, size: 128, offset: 256)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1024, line: 49, size: 128, elements: !1043)
!1043 = !{!1044, !1053}
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !1024, line: 50, baseType: !1045, size: 64)
!1045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !1024, line: 50, size: 64, elements: !1046)
!1046 = !{!1047, !1052}
!1047 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !1024, line: 51, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1045, file: !1024, line: 51, size: 64, elements: !1049)
!1049 = !{!1050, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1048, file: !1024, line: 52, baseType: !284, size: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1048, file: !1024, line: 52, baseType: !284, size: 32, offset: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1045, file: !1024, line: 54, baseType: !129, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1042, file: !1024, line: 56, baseType: !1054, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1023, file: !1024, line: 89, baseType: !1057, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !58, line: 641, size: 4800, elements: !1059)
!1059 = !{!1060, !1062, !1063, !1064, !1065, !1066, !1067, !1070, !1071, !1265, !1818, !2366, !2367, !2368, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2538, !2541, !2542, !2543, !2552, !2553, !2554, !2555}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1058, file: !58, line: 642, baseType: !1061, size: 16)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !120, line: 24, baseType: !224)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1058, file: !58, line: 643, baseType: !224, size: 16, offset: 16)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1058, file: !58, line: 644, baseType: !254, size: 32, offset: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1058, file: !58, line: 645, baseType: !167, size: 128, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1058, file: !58, line: 646, baseType: !275, size: 32, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1058, file: !58, line: 647, baseType: !7, size: 32, offset: 224)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1058, file: !58, line: 650, baseType: !1068, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !58, line: 607, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1058, file: !58, line: 651, baseType: !1068, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1058, file: !58, line: 654, baseType: !1072, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1074)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !58, line: 1966, size: 2048, align: 512, elements: !1075)
!1075 = !{!1076, !1080, !1093, !1099, !1103, !1107, !1111, !1115, !1119, !1123, !1127, !1128, !1134, !1138, !1175, !1206, !1213, !1219, !1223, !1227, !1231, !1235, !1239, !1245, !1249}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1074, file: !58, line: 1967, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!1022, !1057, !1022, !7}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1074, file: !58, line: 1968, baseType: !1081, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!316, !1022, !1057, !1084}
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1086, line: 10, size: 128, elements: !1087)
!1086 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1087 = !{!1088, !1092}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1085, file: !1086, line: 11, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !121}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1085, file: !1086, line: 12, baseType: !121, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1074, file: !58, line: 1969, baseType: !1094, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!157, !1097, !1057, !157}
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !938, line: 42, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1074, file: !58, line: 1970, baseType: !1100, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!1068, !1057, !157, !371}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1074, file: !58, line: 1972, baseType: !1104, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!157, !1022, !336, !157}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1074, file: !58, line: 1974, baseType: !1108, size: 64, offset: 320)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!157, !1097, !1057, !1022, !1061, !371}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1074, file: !58, line: 1976, baseType: !1112, size: 64, offset: 384)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!157, !1022, !1057, !1022}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1074, file: !58, line: 1977, baseType: !1116, size: 64, offset: 448)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!157, !1057, !1022}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1074, file: !58, line: 1978, baseType: !1120, size: 64, offset: 512)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!157, !1097, !1057, !1022, !316}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1074, file: !58, line: 1980, baseType: !1124, size: 64, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!157, !1097, !1057, !1022, !1061}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1074, file: !58, line: 1982, baseType: !1116, size: 64, offset: 640)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1074, file: !58, line: 1983, baseType: !1129, size: 64, offset: 704)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!157, !1097, !1057, !1022, !1061, !1132}
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !120, line: 21, baseType: !1133)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !120, line: 18, baseType: !284)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1074, file: !58, line: 1985, baseType: !1135, size: 64, offset: 768)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!157, !1097, !1057, !1022, !1057, !1022, !7}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1074, file: !58, line: 1987, baseType: !1139, size: 64, offset: 832)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!157, !1097, !1022, !1142}
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !58, line: 226, size: 640, elements: !1144)
!1144 = !{!1145, !1146, !1147, !1157, !1166, !1167, !1172, !1173, !1174}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1143, file: !58, line: 227, baseType: !7, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1143, file: !58, line: 228, baseType: !1061, size: 16, offset: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !58, line: 241, baseType: !1148, size: 32, offset: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1143, file: !58, line: 241, size: 32, elements: !1149)
!1149 = !{!1150, !1151}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1148, file: !58, line: 242, baseType: !254, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1148, file: !58, line: 243, baseType: !1152, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1153, line: 16, baseType: !1154)
!1153 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1153, line: 14, size: 32, elements: !1155)
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1154, file: !1153, line: 15, baseType: !259, size: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, scope: !1143, file: !58, line: 245, baseType: !1158, size: 32, offset: 96)
!1158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1143, file: !58, line: 245, size: 32, elements: !1159)
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1158, file: !58, line: 246, baseType: !275, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1158, file: !58, line: 247, baseType: !1162, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1153, line: 20, baseType: !1163)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1153, line: 18, size: 32, elements: !1164)
!1164 = !{!1165}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1163, file: !1153, line: 19, baseType: !279, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1143, file: !58, line: 249, baseType: !850, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1143, file: !58, line: 250, baseType: !1168, size: 128, offset: 192)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !270, line: 13, size: 128, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1168, file: !270, line: 14, baseType: !269, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1168, file: !270, line: 15, baseType: !138, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1143, file: !58, line: 251, baseType: !1168, size: 128, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1143, file: !58, line: 252, baseType: !1168, size: 128, offset: 448)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1143, file: !58, line: 259, baseType: !835, size: 64, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1074, file: !58, line: 1988, baseType: !1176, size: 64, offset: 896)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!157, !1097, !1179, !1181, !284, !7}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1013)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1183, line: 22, size: 1280, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1182, file: !1183, line: 23, baseType: !284, size: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1182, file: !1183, line: 24, baseType: !1061, size: 16, offset: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1182, file: !1183, line: 25, baseType: !7, size: 32, offset: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1182, file: !1183, line: 26, baseType: !283, size: 32, offset: 96)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1182, file: !1183, line: 27, baseType: !129, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1182, file: !1183, line: 28, baseType: !129, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1182, file: !1183, line: 41, baseType: !129, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1182, file: !1183, line: 42, baseType: !1132, size: 32, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1182, file: !1183, line: 43, baseType: !1132, size: 32, offset: 352)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1182, file: !1183, line: 44, baseType: !254, size: 32, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1182, file: !1183, line: 45, baseType: !275, size: 32, offset: 416)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1182, file: !1183, line: 46, baseType: !850, size: 64, offset: 448)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1182, file: !1183, line: 47, baseType: !1168, size: 128, offset: 512)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1182, file: !1183, line: 48, baseType: !1168, size: 128, offset: 640)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1182, file: !1183, line: 49, baseType: !1168, size: 128, offset: 768)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1182, file: !1183, line: 50, baseType: !1168, size: 128, offset: 896)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1182, file: !1183, line: 51, baseType: !129, size: 64, offset: 1024)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1182, file: !1183, line: 52, baseType: !129, size: 64, offset: 1088)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1182, file: !1183, line: 53, baseType: !284, size: 32, offset: 1152)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1182, file: !1183, line: 54, baseType: !284, size: 32, offset: 1184)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1182, file: !1183, line: 55, baseType: !129, size: 64, offset: 1216)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1074, file: !58, line: 1990, baseType: !1207, size: 64, offset: 960)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!1210, !1022, !336, !319}
!1210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !120, line: 66, baseType: !1211)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !261, line: 73, baseType: !1212)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !261, line: 15, baseType: !138)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1074, file: !58, line: 1991, baseType: !1214, size: 64, offset: 1024)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!157, !1057, !1217, !129, !129}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !58, line: 55, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1074, file: !58, line: 1993, baseType: !1220, size: 64, offset: 1088)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!157, !1057, !157}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1074, file: !58, line: 1994, baseType: !1224, size: 64, offset: 1152)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!157, !1057, !1022, !835, !7, !1061}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1074, file: !58, line: 1997, baseType: !1228, size: 64, offset: 1216)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!157, !1097, !1057, !835, !1061}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1074, file: !58, line: 1999, baseType: !1232, size: 64, offset: 1280)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!1068, !1097, !1022, !157}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1074, file: !58, line: 2001, baseType: !1236, size: 64, offset: 1344)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!157, !1097, !1022, !1068, !157}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1074, file: !58, line: 2003, baseType: !1240, size: 64, offset: 1408)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!157, !1097, !1022, !1243}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !58, line: 76, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1074, file: !58, line: 2005, baseType: !1246, size: 64, offset: 1472)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!157, !1022, !1243}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1074, file: !58, line: 2006, baseType: !1250, size: 64, offset: 1536)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!1253, !1057}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !58, line: 3192, size: 192, elements: !1255)
!1255 = !{!1256, !1264}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1254, file: !58, line: 3193, baseType: !1257, size: 128)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1258, line: 296, size: 128, elements: !1259)
!1258 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1259 = !{!1260, !1261, !1263}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1257, file: !1258, line: 297, baseType: !242, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1257, file: !1258, line: 299, baseType: !1262, size: 32, offset: 32)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !120, line: 154, baseType: !7)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1257, file: !1258, line: 300, baseType: !121, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1254, file: !58, line: 3194, baseType: !284, size: 32, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1058, file: !58, line: 655, baseType: !1266, size: 64, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !58, line: 1190, size: 10752, elements: !1268)
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1274, !1313, !1448, !1488, !1571, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1588, !1592, !1593, !1596, !1599, !1602, !1605, !1606, !1607, !1648, !1675, !1676, !1677, !1678, !1679, !1680, !1683, !1687, !1696, !1697, !1698, !1699, !1758, !1773, !1774, !1775, !1776, !1779, !1782, !1783, !1784, !1799, !1800, !1801, !1812, !1813, !1814, !1815, !1816, !1817}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1267, file: !58, line: 1191, baseType: !167, size: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1267, file: !58, line: 1192, baseType: !1132, size: 32, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1267, file: !58, line: 1193, baseType: !143, size: 8, offset: 160)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1267, file: !58, line: 1194, baseType: !118, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1267, file: !58, line: 1195, baseType: !850, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1267, file: !58, line: 1196, baseType: !1275, size: 64, offset: 320)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !58, line: 2366, size: 576, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1286, !1290, !1294, !1298, !1302, !1303, !1304, !1305, !1306, !1307, !1309, !1310, !1311, !1312}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1276, file: !58, line: 2367, baseType: !316, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1276, file: !58, line: 2368, baseType: !157, size: 32, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1276, file: !58, line: 2376, baseType: !1281, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!157, !1284}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1019, line: 21, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1276, file: !58, line: 2377, baseType: !1287, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !58, line: 75, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1276, file: !58, line: 2378, baseType: !1291, size: 64, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!1022, !1275, !157, !316, !121}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1276, file: !58, line: 2380, baseType: !1295, size: 64, offset: 320)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{null, !1266}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1276, file: !58, line: 2381, baseType: !1299, size: 64, offset: 384)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1301, line: 103, flags: DIFlagFwdDecl)
!1301 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1276, file: !58, line: 2382, baseType: !1275, size: 64, offset: 448)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1276, file: !58, line: 2383, baseType: !888, size: 64, offset: 512)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1276, file: !58, line: 2385, baseType: !461, offset: 576)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1276, file: !58, line: 2386, baseType: !461, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1276, file: !58, line: 2387, baseType: !461, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1276, file: !58, line: 2388, baseType: !1308, offset: 576)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, elements: !876)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1276, file: !58, line: 2390, baseType: !461, offset: 576)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1276, file: !58, line: 2391, baseType: !461, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1276, file: !58, line: 2392, baseType: !461, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1276, file: !58, line: 2393, baseType: !461, offset: 576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1267, file: !58, line: 1197, baseType: !1314, size: 64, offset: 384)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1316)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !58, line: 2057, size: 1664, elements: !1317)
!1317 = !{!1318, !1322, !1326, !1327, !1331, !1337, !1341, !1342, !1343, !1347, !1351, !1355, !1356, !1357, !1363, !1368, !1369, !1373, !1374, !1375, !1376, !1380, !1384, !1431, !1446, !1447}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1316, file: !58, line: 2058, baseType: !1319, size: 64)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!1057, !1266}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1316, file: !58, line: 2059, baseType: !1323, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !1057}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1316, file: !58, line: 2060, baseType: !1323, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1316, file: !58, line: 2062, baseType: !1328, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{null, !1057, !157}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1316, file: !58, line: 2063, baseType: !1332, size: 64, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!157, !1057, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !58, line: 309, flags: DIFlagFwdDecl)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1316, file: !58, line: 2064, baseType: !1338, size: 64, offset: 320)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!157, !1057}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1316, file: !58, line: 2065, baseType: !1323, size: 64, offset: 384)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1316, file: !58, line: 2066, baseType: !1295, size: 64, offset: 448)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1316, file: !58, line: 2067, baseType: !1344, size: 64, offset: 512)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!157, !1266, !157}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1316, file: !58, line: 2068, baseType: !1348, size: 64, offset: 576)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!157, !1266, !57}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1316, file: !58, line: 2069, baseType: !1352, size: 64, offset: 640)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!157, !1266}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1316, file: !58, line: 2070, baseType: !1348, size: 64, offset: 704)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1316, file: !58, line: 2071, baseType: !1352, size: 64, offset: 768)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1316, file: !58, line: 2072, baseType: !1358, size: 64, offset: 832)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!157, !1022, !1361}
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !58, line: 62, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1316, file: !58, line: 2073, baseType: !1364, size: 64, offset: 896)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!157, !1266, !1367, !336}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1316, file: !58, line: 2074, baseType: !1295, size: 64, offset: 960)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1316, file: !58, line: 2076, baseType: !1370, size: 64, offset: 1024)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!157, !393, !1022}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1316, file: !58, line: 2077, baseType: !1370, size: 64, offset: 1088)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1316, file: !58, line: 2078, baseType: !1370, size: 64, offset: 1152)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1316, file: !58, line: 2079, baseType: !1370, size: 64, offset: 1216)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1316, file: !58, line: 2081, baseType: !1377, size: 64, offset: 1280)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!1210, !1266, !157, !336, !319, !850}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1316, file: !58, line: 2082, baseType: !1381, size: 64, offset: 1344)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!1210, !1266, !157, !316, !319, !850}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1316, file: !58, line: 2083, baseType: !1385, size: 64, offset: 1408)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!1388, !1057}
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !63, line: 296, size: 1664, elements: !1391)
!1391 = !{!1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1416, !1417, !1418}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1390, file: !63, line: 297, baseType: !892, size: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1390, file: !63, line: 298, baseType: !167, size: 128, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1390, file: !63, line: 299, baseType: !167, size: 128, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1390, file: !63, line: 300, baseType: !167, size: 128, offset: 384)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1390, file: !63, line: 301, baseType: !234, size: 256, offset: 512)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1390, file: !63, line: 302, baseType: !242, size: 32, offset: 768)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1390, file: !63, line: 303, baseType: !153, size: 32, offset: 800)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1390, file: !63, line: 304, baseType: !1266, size: 64, offset: 832)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1390, file: !63, line: 305, baseType: !1401, size: 64, offset: 896)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !63, line: 68, size: 64, elements: !1402)
!1402 = !{!1403, !1415}
!1403 = !DIDerivedType(tag: DW_TAG_member, scope: !1401, file: !63, line: 69, baseType: !1404, size: 32)
!1404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1401, file: !63, line: 69, size: 32, elements: !1405)
!1405 = !{!1406, !1407, !1408}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1404, file: !63, line: 70, baseType: !254, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1404, file: !63, line: 71, baseType: !275, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1404, file: !63, line: 72, baseType: !1409, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1410, line: 24, baseType: !1411)
!1410 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1410, line: 22, size: 32, elements: !1412)
!1412 = !{!1413}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1411, file: !1410, line: 23, baseType: !1414, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1410, line: 20, baseType: !260)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1401, file: !63, line: 74, baseType: !62, size: 32, offset: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1390, file: !63, line: 306, baseType: !850, size: 64, offset: 960)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1390, file: !63, line: 307, baseType: !118, size: 64, offset: 1024)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1390, file: !63, line: 308, baseType: !1419, size: 576, offset: 1088)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !63, line: 205, size: 576, elements: !1420)
!1420 = !{!1421, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1419, file: !63, line: 206, baseType: !1422, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !63, line: 66, baseType: !128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1419, file: !63, line: 207, baseType: !1422, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1419, file: !63, line: 208, baseType: !1422, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1419, file: !63, line: 209, baseType: !1422, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1419, file: !63, line: 210, baseType: !1422, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1419, file: !63, line: 211, baseType: !1422, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1419, file: !63, line: 212, baseType: !1422, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1419, file: !63, line: 213, baseType: !269, size: 64, offset: 448)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1419, file: !63, line: 214, baseType: !269, size: 64, offset: 512)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1316, file: !58, line: 2085, baseType: !1432, size: 64, offset: 1472)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!138, !1266, !1435}
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1437, line: 15, size: 256, elements: !1438)
!1437 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1438 = !{!1439, !1440, !1441, !1442, !1443}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1436, file: !1437, line: 16, baseType: !1262, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1436, file: !1437, line: 19, baseType: !157, size: 32, offset: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1436, file: !1437, line: 26, baseType: !118, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1436, file: !1437, line: 33, baseType: !118, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1436, file: !1437, line: 36, baseType: !1444, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !77, line: 33, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1316, file: !58, line: 2087, baseType: !1432, size: 64, offset: 1536)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1316, file: !58, line: 2089, baseType: !1295, size: 64, offset: 1600)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1267, file: !58, line: 1198, baseType: !1449, size: 64, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !63, line: 324, size: 704, elements: !1452)
!1452 = !{!1453, !1457, !1461, !1465, !1466, !1467, !1468, !1469, !1474, !1479, !1483}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1451, file: !63, line: 325, baseType: !1454, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!157, !1389}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1451, file: !63, line: 326, baseType: !1458, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!1389, !1266, !157}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1451, file: !63, line: 327, baseType: !1462, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{null, !1389}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1451, file: !63, line: 328, baseType: !1454, size: 64, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1451, file: !63, line: 329, baseType: !1454, size: 64, offset: 256)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1451, file: !63, line: 330, baseType: !1454, size: 64, offset: 320)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1451, file: !63, line: 331, baseType: !1344, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1451, file: !63, line: 334, baseType: !1470, size: 64, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!1473, !1057}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1451, file: !63, line: 335, baseType: !1475, size: 64, offset: 512)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!157, !1057, !1478}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1451, file: !63, line: 337, baseType: !1480, size: 64, offset: 576)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!157, !1057, !1473}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1451, file: !63, line: 339, baseType: !1484, size: 64, offset: 640)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!157, !1266, !1487}
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1267, file: !58, line: 1199, baseType: !1489, size: 64, offset: 512)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1491)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !63, line: 430, size: 704, elements: !1492)
!1492 = !{!1493, !1497, !1498, !1502, !1503, !1504, !1519, !1542, !1546, !1547, !1570}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1491, file: !63, line: 431, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!157, !1266, !157, !157, !1179}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1491, file: !63, line: 432, baseType: !1344, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1491, file: !63, line: 433, baseType: !1499, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!157, !1266, !7}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1491, file: !63, line: 434, baseType: !1499, size: 64, offset: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1491, file: !63, line: 435, baseType: !1344, size: 64, offset: 256)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1491, file: !63, line: 436, baseType: !1505, size: 64, offset: 320)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!157, !1266, !157, !1508}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !63, line: 417, size: 256, elements: !1510)
!1510 = !{!1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1509, file: !63, line: 418, baseType: !157, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1509, file: !63, line: 419, baseType: !7, size: 32, offset: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1509, file: !63, line: 420, baseType: !7, size: 32, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1509, file: !63, line: 422, baseType: !7, size: 32, offset: 96)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1509, file: !63, line: 423, baseType: !7, size: 32, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1509, file: !63, line: 424, baseType: !7, size: 32, offset: 160)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1509, file: !63, line: 425, baseType: !7, size: 32, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1509, file: !63, line: 426, baseType: !7, size: 32, offset: 224)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1491, file: !63, line: 437, baseType: !1520, size: 64, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!157, !1266, !1401, !1523}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !63, line: 345, size: 960, elements: !1525)
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1524, file: !63, line: 346, baseType: !157, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1524, file: !63, line: 347, baseType: !129, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1524, file: !63, line: 348, baseType: !129, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1524, file: !63, line: 349, baseType: !129, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1524, file: !63, line: 350, baseType: !129, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1524, file: !63, line: 351, baseType: !129, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1524, file: !63, line: 352, baseType: !129, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1524, file: !63, line: 353, baseType: !124, size: 64, offset: 448)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1524, file: !63, line: 355, baseType: !124, size: 64, offset: 512)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1524, file: !63, line: 356, baseType: !157, size: 32, offset: 576)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1524, file: !63, line: 357, baseType: !157, size: 32, offset: 608)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1524, file: !63, line: 358, baseType: !129, size: 64, offset: 640)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1524, file: !63, line: 359, baseType: !129, size: 64, offset: 704)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1524, file: !63, line: 360, baseType: !129, size: 64, offset: 768)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1524, file: !63, line: 361, baseType: !124, size: 64, offset: 832)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1524, file: !63, line: 362, baseType: !157, size: 32, offset: 896)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1491, file: !63, line: 438, baseType: !1543, size: 64, offset: 448)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!157, !1266, !1487, !1523}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1491, file: !63, line: 440, baseType: !1520, size: 64, offset: 512)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1491, file: !63, line: 441, baseType: !1548, size: 64, offset: 576)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!157, !1266, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !63, line: 411, size: 1408, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1552, file: !63, line: 412, baseType: !7, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1552, file: !63, line: 413, baseType: !1556, size: 1344, offset: 64)
!1556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1557, size: 1344, elements: !876)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !63, line: 397, size: 448, elements: !1558)
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1569}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1557, file: !63, line: 398, baseType: !7, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1557, file: !63, line: 399, baseType: !7, size: 32, offset: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1557, file: !63, line: 401, baseType: !7, size: 32, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1557, file: !63, line: 402, baseType: !7, size: 32, offset: 96)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1557, file: !63, line: 403, baseType: !7, size: 32, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1557, file: !63, line: 404, baseType: !7, size: 32, offset: 160)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1557, file: !63, line: 405, baseType: !7, size: 32, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1557, file: !63, line: 406, baseType: !131, size: 64, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1557, file: !63, line: 407, baseType: !1568, size: 64, offset: 320)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !120, line: 132, baseType: !129)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1557, file: !63, line: 408, baseType: !1568, size: 64, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1491, file: !63, line: 442, baseType: !1499, size: 64, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1267, file: !58, line: 1200, baseType: !1572, size: 64, offset: 576)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1574)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !58, line: 54, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1267, file: !58, line: 1201, baseType: !118, size: 64, offset: 640)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1267, file: !58, line: 1202, baseType: !118, size: 64, offset: 704)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1267, file: !58, line: 1203, baseType: !118, size: 64, offset: 768)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1267, file: !58, line: 1204, baseType: !1022, size: 64, offset: 832)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1267, file: !58, line: 1205, baseType: !181, size: 320, offset: 896)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1267, file: !58, line: 1206, baseType: !157, size: 32, offset: 1216)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1267, file: !58, line: 1207, baseType: !153, size: 32, offset: 1248)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1267, file: !58, line: 1209, baseType: !121, size: 64, offset: 1280)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1267, file: !58, line: 1211, baseType: !1584, size: 64, offset: 1344)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1587)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !58, line: 1211, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1267, file: !58, line: 1223, baseType: !1589, size: 64, offset: 1408)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1034, line: 34, size: 64, elements: !1590)
!1590 = !{!1591}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1589, file: !1034, line: 35, baseType: !1037, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1267, file: !58, line: 1224, baseType: !167, size: 128, offset: 1472)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1267, file: !58, line: 1225, baseType: !1594, size: 64, offset: 1600)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !58, line: 1225, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1267, file: !58, line: 1226, baseType: !1597, size: 64, offset: 1664)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !58, line: 1226, flags: DIFlagFwdDecl)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1267, file: !58, line: 1227, baseType: !1600, size: 64, offset: 1728)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !58, line: 50, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1267, file: !58, line: 1228, baseType: !1603, size: 64, offset: 1792)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !58, line: 1228, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1267, file: !58, line: 1229, baseType: !892, size: 128, offset: 1856)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1267, file: !58, line: 1230, baseType: !7, size: 32, offset: 1984)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1267, file: !58, line: 1231, baseType: !1608, size: 2496, offset: 2048)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !63, line: 521, size: 2496, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1614, !1646}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1608, file: !63, line: 522, baseType: !7, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1608, file: !63, line: 523, baseType: !181, size: 320, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1608, file: !63, line: 524, baseType: !1613, size: 192, offset: 384)
!1613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1057, size: 192, elements: !876)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1608, file: !63, line: 525, baseType: !1615, size: 1728, offset: 576)
!1615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1616, size: 1728, elements: !876)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !63, line: 222, size: 576, elements: !1617)
!1617 = !{!1618, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1616, file: !63, line: 223, baseType: !1619, size: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !63, line: 445, size: 256, elements: !1621)
!1621 = !{!1622, !1623, !1636, !1637}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1620, file: !63, line: 446, baseType: !157, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1620, file: !63, line: 447, baseType: !1624, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1626)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !63, line: 312, size: 512, elements: !1627)
!1627 = !{!1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1626, file: !63, line: 313, baseType: !1344, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1626, file: !63, line: 314, baseType: !1344, size: 64, offset: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1626, file: !63, line: 315, baseType: !1344, size: 64, offset: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1626, file: !63, line: 316, baseType: !1344, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1626, file: !63, line: 317, baseType: !1454, size: 64, offset: 256)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1626, file: !63, line: 318, baseType: !1454, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1626, file: !63, line: 319, baseType: !1454, size: 64, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1626, file: !63, line: 320, baseType: !1484, size: 64, offset: 448)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1620, file: !63, line: 448, baseType: !1299, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1620, file: !63, line: 449, baseType: !1619, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1616, file: !63, line: 224, baseType: !157, size: 32, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1616, file: !63, line: 226, baseType: !167, size: 128, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1616, file: !63, line: 227, baseType: !118, size: 64, offset: 256)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1616, file: !63, line: 228, baseType: !7, size: 32, offset: 320)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1616, file: !63, line: 229, baseType: !7, size: 32, offset: 352)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1616, file: !63, line: 230, baseType: !1422, size: 64, offset: 384)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1616, file: !63, line: 231, baseType: !1422, size: 64, offset: 448)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1616, file: !63, line: 232, baseType: !121, size: 64, offset: 512)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1608, file: !63, line: 526, baseType: !1647, size: 192, offset: 2304)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1624, size: 192, elements: !876)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1267, file: !58, line: 1233, baseType: !1649, size: 2368, offset: 4544)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !58, line: 1184, size: 2368, elements: !1650)
!1650 = !{!1651, !1652, !1653}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1649, file: !58, line: 1185, baseType: !224, size: 16)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1649, file: !58, line: 1186, baseType: !224, size: 16, offset: 16)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1649, file: !58, line: 1187, baseType: !1654, size: 2304, offset: 64)
!1654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1655, size: 2304, elements: !876)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1656, line: 12, size: 768, elements: !1657)
!1656 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1657 = !{!1658, !1666, !1668, !1673, !1674}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1655, file: !1656, line: 13, baseType: !1659, size: 384)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1660, line: 17, size: 384, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1661 = !{!1662, !1663, !1664, !1665}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1659, file: !1660, line: 18, baseType: !157, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1659, file: !1660, line: 19, baseType: !157, size: 32, offset: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1659, file: !1660, line: 20, baseType: !899, size: 192, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1659, file: !1660, line: 22, baseType: !469, size: 128, align: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1655, file: !1656, line: 14, baseType: !1667, size: 64, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1655, file: !1656, line: 15, baseType: !1669, size: 64, offset: 448)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1670, line: 16, size: 64, elements: !1671)
!1670 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1669, file: !1670, line: 17, baseType: !517, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1655, file: !1656, line: 16, baseType: !899, size: 192, offset: 512)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1655, file: !1656, line: 17, baseType: !153, size: 32, offset: 704)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1267, file: !58, line: 1240, baseType: !121, size: 64, offset: 6912)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1267, file: !58, line: 1243, baseType: !284, size: 32, offset: 6976)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1267, file: !58, line: 1245, baseType: !269, size: 64, offset: 7040)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1267, file: !58, line: 1246, baseType: !269, size: 64, offset: 7104)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1267, file: !58, line: 1248, baseType: !285, size: 32, offset: 7168)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1267, file: !58, line: 1249, baseType: !1681, size: 64, offset: 7232)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !58, line: 634, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1267, file: !58, line: 1252, baseType: !1684, size: 256, offset: 7296)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 256, elements: !1685)
!1685 = !{!1686}
!1686 = !DISubrange(count: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1267, file: !58, line: 1253, baseType: !1688, size: 128, offset: 7552)
!1688 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1689, line: 21, baseType: !1690)
!1689 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1689, line: 19, size: 128, elements: !1691)
!1691 = !{!1692}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1690, file: !1689, line: 20, baseType: !1693, size: 128)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 128, elements: !1694)
!1694 = !{!1695}
!1695 = !DISubrange(count: 16)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1267, file: !58, line: 1255, baseType: !7, size: 32, offset: 7680)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1267, file: !58, line: 1261, baseType: !234, size: 256, offset: 7744)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1267, file: !58, line: 1267, baseType: !316, size: 64, offset: 8000)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1267, file: !58, line: 1269, baseType: !1700, size: 64, offset: 8064)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1024, line: 128, size: 1024, align: 512, elements: !1703)
!1703 = !{!1704, !1708, !1709, !1716, !1722, !1726, !1730, !1734, !1735, !1739, !1743, !1748, !1752}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1702, file: !1024, line: 129, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!157, !1022, !7}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1702, file: !1024, line: 130, baseType: !1705, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1702, file: !1024, line: 131, baseType: !1710, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!157, !1713, !1715}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1023)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1702, file: !1024, line: 132, baseType: !1717, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!157, !1713, !7, !316, !1720}
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1042)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1702, file: !1024, line: 134, baseType: !1723, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!157, !1713}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1702, file: !1024, line: 135, baseType: !1727, size: 64, offset: 320)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!157, !1022}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1702, file: !1024, line: 136, baseType: !1731, size: 64, offset: 384)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !1022}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1702, file: !1024, line: 137, baseType: !1731, size: 64, offset: 448)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1702, file: !1024, line: 138, baseType: !1736, size: 64, offset: 512)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{null, !1022, !1057}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1702, file: !1024, line: 139, baseType: !1740, size: 64, offset: 576)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!336, !1022, !336, !157}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1702, file: !1024, line: 140, baseType: !1744, size: 64, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1017, !1747}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1702, file: !1024, line: 141, baseType: !1749, size: 64, offset: 704)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!157, !1179, !371}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1702, file: !1024, line: 142, baseType: !1753, size: 64, offset: 768)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!1022, !1022, !1756}
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1058)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1267, file: !58, line: 1271, baseType: !1759, size: 448, offset: 8128)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1437, line: 63, size: 448, elements: !1760)
!1760 = !{!1761, !1766, !1767, !1768, !1769, !1770, !1771}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1759, file: !1437, line: 64, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!118, !1765, !1435}
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1759, file: !1437, line: 66, baseType: !1762, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1759, file: !1437, line: 69, baseType: !138, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1759, file: !1437, line: 70, baseType: !157, size: 32, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1759, file: !1437, line: 71, baseType: !7, size: 32, offset: 224)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1759, file: !1437, line: 74, baseType: !167, size: 128, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1759, file: !1437, line: 85, baseType: !1772, size: 64, offset: 384)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1267, file: !58, line: 1274, baseType: !185, size: 64, offset: 8576)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1267, file: !58, line: 1280, baseType: !185, size: 64, offset: 8640)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1267, file: !58, line: 1283, baseType: !157, size: 32, offset: 8704)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1267, file: !58, line: 1286, baseType: !1777, size: 32, offset: 8736)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1778, line: 8, baseType: !284)
!1778 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1267, file: !58, line: 1289, baseType: !1780, size: 64, offset: 8768)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !19, line: 18, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1267, file: !58, line: 1290, baseType: !888, size: 64, offset: 8832)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1267, file: !58, line: 1297, baseType: !984, size: 64, offset: 8896)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1267, file: !58, line: 1304, baseType: !1785, size: 64, offset: 8960)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1786, line: 49, size: 64, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!1787 = !{!1788}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1785, file: !1786, line: 50, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1786, line: 41, size: 512, align: 512, elements: !1791)
!1791 = !{!1792, !1793, !1798}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1790, file: !1786, line: 43, baseType: !242, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1790, file: !1786, line: 45, baseType: !1794, size: 192, offset: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1786, line: 29, size: 192, elements: !1795)
!1795 = !{!1796, !1797}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1794, file: !1786, line: 30, baseType: !167, size: 128)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1794, file: !1786, line: 32, baseType: !138, size: 64, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1790, file: !1786, line: 46, baseType: !138, size: 64, offset: 256)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1267, file: !58, line: 1305, baseType: !1785, size: 64, offset: 9024)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1267, file: !58, line: 1306, baseType: !469, size: 128, align: 64, offset: 9088)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1267, file: !58, line: 1307, baseType: !1802, size: 256, offset: 9216)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !19, line: 98, size: 256, elements: !1803)
!1803 = !{!1804, !1805, !1806}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1802, file: !19, line: 99, baseType: !185, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1802, file: !19, line: 100, baseType: !167, size: 128, offset: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1802, file: !19, line: 101, baseType: !1807, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !19, line: 21, baseType: !1808)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{null, !1811}
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1267, file: !58, line: 1309, baseType: !234, size: 256, offset: 9472)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1267, file: !58, line: 1314, baseType: !157, size: 32, offset: 9728)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1267, file: !58, line: 1317, baseType: !242, size: 32, align: 512, offset: 10240)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1267, file: !58, line: 1318, baseType: !167, size: 128, offset: 10304)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1267, file: !58, line: 1320, baseType: !242, size: 32, offset: 10432)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1267, file: !58, line: 1321, baseType: !167, size: 128, offset: 10496)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1058, file: !58, line: 656, baseType: !1819, size: 64, offset: 512)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !58, line: 472, size: 1536, align: 64, elements: !1821)
!1821 = !{!1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !2360, !2361, !2362, !2363, !2364, !2365}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1820, file: !58, line: 473, baseType: !1057, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1820, file: !58, line: 474, baseType: !1257, size: 128, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1820, file: !58, line: 475, baseType: !181, size: 320, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1820, file: !58, line: 476, baseType: !1262, size: 32, offset: 512)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1820, file: !58, line: 477, baseType: !153, size: 32, offset: 544)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1820, file: !58, line: 482, baseType: !691, size: 128, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1820, file: !58, line: 483, baseType: !118, size: 64, offset: 704)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1820, file: !58, line: 484, baseType: !118, size: 64, offset: 768)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1820, file: !58, line: 485, baseType: !1831, size: 64, offset: 832)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1833)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !58, line: 404, size: 1280, elements: !1834)
!1834 = !{!1835, !2135, !2205, !2209, !2213, !2219, !2225, !2229, !2234, !2238, !2242, !2246, !2324, !2328, !2332, !2336, !2341, !2345, !2352, !2356}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1833, file: !58, line: 405, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!157, !1839, !1335}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !77, line: 74, size: 512, align: 128, elements: !1841)
!1841 = !{!1842, !1843, !2129, !2134}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1840, file: !77, line: 75, baseType: !118, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1840, file: !77, line: 83, baseType: !1844, size: 320, offset: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1840, file: !77, line: 83, size: 320, elements: !1845)
!1845 = !{!1846, !1867, !1881, !1885, !2128}
!1846 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !77, line: 84, baseType: !1847, size: 320)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1844, file: !77, line: 84, size: 320, elements: !1848)
!1848 = !{!1849, !1860, !1861, !1866}
!1849 = !DIDerivedType(tag: DW_TAG_member, scope: !1847, file: !77, line: 90, baseType: !1850, size: 128)
!1850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1847, file: !77, line: 90, size: 128, elements: !1851)
!1851 = !{!1852, !1853, !1858, !1859}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1850, file: !77, line: 91, baseType: !167, size: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, scope: !1850, file: !77, line: 94, baseType: !1854, size: 128)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !77, line: 94, size: 128, elements: !1855)
!1855 = !{!1856, !1857}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1854, file: !77, line: 96, baseType: !121, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1854, file: !77, line: 98, baseType: !7, size: 32, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1850, file: !77, line: 102, baseType: !167, size: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1850, file: !77, line: 103, baseType: !167, size: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1847, file: !77, line: 106, baseType: !1819, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1847, file: !77, line: 107, baseType: !1862, size: 64, offset: 192)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1847, file: !77, line: 107, size: 64, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1862, file: !77, line: 108, baseType: !118, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1862, file: !77, line: 109, baseType: !118, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1847, file: !77, line: 117, baseType: !118, size: 64, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !77, line: 119, baseType: !1868, size: 320)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1844, file: !77, line: 119, size: 320, elements: !1869)
!1869 = !{!1870, !1871, !1874, !1875, !1876}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1868, file: !77, line: 124, baseType: !118, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1868, file: !77, line: 125, baseType: !1872, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !77, line: 125, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1868, file: !77, line: 126, baseType: !118, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1868, file: !77, line: 127, baseType: !118, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !77, line: 128, baseType: !1877, size: 64, offset: 256)
!1877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1868, file: !77, line: 128, size: 64, elements: !1878)
!1878 = !{!1879, !1880}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1877, file: !77, line: 133, baseType: !118, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1877, file: !77, line: 138, baseType: !185, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !77, line: 141, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1844, file: !77, line: 141, size: 64, elements: !1883)
!1883 = !{!1884}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1882, file: !77, line: 142, baseType: !118, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !77, line: 144, baseType: !1886, size: 128)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1844, file: !77, line: 144, size: 128, elements: !1887)
!1887 = !{!1888, !2127}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1886, file: !77, line: 146, baseType: !1889, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !69, line: 126, size: 1216, elements: !1891)
!1891 = !{!1892, !1901, !1922, !1933, !1934, !1935, !1936, !2109, !2110, !2111}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1890, file: !69, line: 127, baseType: !1893, size: 384)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !69, line: 21, size: 384, elements: !1894)
!1894 = !{!1895, !1896, !1897, !1898, !1899, !1900}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1893, file: !69, line: 22, baseType: !118, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1893, file: !69, line: 23, baseType: !123, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1893, file: !69, line: 24, baseType: !123, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1893, file: !69, line: 25, baseType: !118, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1893, file: !69, line: 26, baseType: !118, size: 64, offset: 256)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1893, file: !69, line: 27, baseType: !118, size: 64, offset: 320)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1890, file: !69, line: 128, baseType: !1902, size: 128, offset: 384)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1903, line: 105, size: 128, elements: !1904)
!1903 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1902, file: !1903, line: 110, baseType: !118, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1902, file: !1903, line: 118, baseType: !1907, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1903, line: 95, size: 448, elements: !1909)
!1909 = !{!1910, !1911, !1917, !1918, !1919, !1920, !1921}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1908, file: !1903, line: 96, baseType: !185, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1908, file: !1903, line: 97, baseType: !1912, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1903, line: 60, baseType: !1914)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !1916}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1908, file: !1903, line: 98, baseType: !1912, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1908, file: !1903, line: 99, baseType: !371, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1908, file: !1903, line: 100, baseType: !371, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1908, file: !1903, line: 101, baseType: !469, size: 128, align: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1908, file: !1903, line: 102, baseType: !1916, size: 64, offset: 384)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1890, file: !69, line: 129, baseType: !1923, size: 256, offset: 512)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1924, line: 26, size: 256, elements: !1925)
!1924 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1923, file: !1924, line: 27, baseType: !7, size: 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1923, file: !1924, line: 28, baseType: !1928, size: 192, offset: 64)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1929, line: 43, size: 192, elements: !1930)
!1929 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1928, file: !1929, line: 44, baseType: !198, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1928, file: !1929, line: 45, baseType: !167, size: 128, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1890, file: !69, line: 130, baseType: !68, size: 32, offset: 768)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1890, file: !69, line: 131, baseType: !7, size: 32, offset: 800)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1890, file: !69, line: 132, baseType: !118, size: 64, offset: 832)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1890, file: !69, line: 133, baseType: !1937, size: 64, offset: 896)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1939)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !69, line: 77, size: 192, elements: !1940)
!1940 = !{!1941, !1945, !2105}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1939, file: !69, line: 83, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !1839}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1939, file: !69, line: 89, baseType: !1946, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!1949, !1950}
!1949 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !77, line: 1184, baseType: !7)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1952, line: 512, size: 896, elements: !1953)
!1952 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1953 = !{!1954, !2072, !2073, !2080, !2087, !2097, !2098, !2099, !2101, !2103}
!1954 = !DIDerivedType(tag: DW_TAG_member, scope: !1951, file: !1952, line: 513, baseType: !1955, size: 320)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !1952, line: 513, size: 320, elements: !1956)
!1956 = !{!1957, !2068, !2069, !2070, !2071}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1955, file: !1952, line: 514, baseType: !1958, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !77, line: 625, size: 1344, elements: !1960)
!1960 = !{!1961, !1970, !1971, !1979, !1986, !1987, !1992, !1993, !1998, !1999, !2002, !2061, !2062, !2063, !2064, !2065, !2066}
!1961 = !DIDerivedType(tag: DW_TAG_member, scope: !1959, file: !77, line: 628, baseType: !1962, size: 128)
!1962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1959, file: !77, line: 628, size: 128, elements: !1963)
!1963 = !{!1964, !1969}
!1964 = !DIDerivedType(tag: DW_TAG_member, scope: !1962, file: !77, line: 629, baseType: !1965, size: 128)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1962, file: !77, line: 629, size: 128, elements: !1966)
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1965, file: !77, line: 631, baseType: !118, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1965, file: !77, line: 632, baseType: !118, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1962, file: !77, line: 635, baseType: !469, size: 128, align: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1959, file: !77, line: 639, baseType: !808, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1959, file: !77, line: 640, baseType: !1972, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1973, line: 297, baseType: !1974)
!1973 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1973, line: 297, size: 64, elements: !1975)
!1975 = !{!1976}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1974, file: !1973, line: 297, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1978, line: 19, baseType: !118)
!1978 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1979 = !DIDerivedType(tag: DW_TAG_member, scope: !1959, file: !77, line: 646, baseType: !1980, size: 64, offset: 256)
!1980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1959, file: !77, line: 646, size: 64, elements: !1981)
!1981 = !{!1982, !1985}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1980, file: !77, line: 647, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1984)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !77, line: 542, baseType: !118)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1980, file: !77, line: 648, baseType: !1984, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1959, file: !77, line: 666, baseType: !157, size: 32, offset: 320)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1959, file: !77, line: 667, baseType: !1988, size: 64, offset: 384)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !77, line: 579, size: 320, elements: !1990)
!1990 = !{!1991}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1989, file: !77, line: 580, baseType: !181, size: 320)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1959, file: !77, line: 670, baseType: !371, size: 8, offset: 448)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1959, file: !77, line: 681, baseType: !1994, size: 256, offset: 512)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1959, file: !77, line: 678, size: 256, elements: !1995)
!1995 = !{!1996, !1997}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1994, file: !77, line: 679, baseType: !173, size: 192, align: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1994, file: !77, line: 680, baseType: !118, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1959, file: !77, line: 689, baseType: !167, size: 128, offset: 768)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1959, file: !77, line: 691, baseType: !2000, size: 64, offset: 896)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !77, line: 691, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1959, file: !77, line: 694, baseType: !2003, size: 64, offset: 960)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2005)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1952, line: 563, size: 1024, elements: !2006)
!2006 = !{!2007, !2011, !2012, !2016, !2020, !2024, !2025, !2029, !2033, !2037, !2038, !2039, !2043, !2047, !2053, !2057}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2005, file: !1952, line: 564, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{null, !1958}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2005, file: !1952, line: 569, baseType: !2008, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2005, file: !1952, line: 571, baseType: !2013, size: 64, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!157, !1958, !118}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2005, file: !1952, line: 572, baseType: !2017, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!157, !1958}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2005, file: !1952, line: 578, baseType: !2021, size: 64, offset: 256)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!157, !1958, !118, !118, !118}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2005, file: !1952, line: 580, baseType: !1946, size: 64, offset: 320)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2005, file: !1952, line: 581, baseType: !2026, size: 64, offset: 384)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!1949, !1950, !7}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2005, file: !1952, line: 582, baseType: !2030, size: 64, offset: 448)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!1949, !1950, !118, !118}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2005, file: !1952, line: 584, baseType: !2034, size: 64, offset: 512)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!118, !1958}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2005, file: !1952, line: 588, baseType: !1946, size: 64, offset: 576)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2005, file: !1952, line: 591, baseType: !1946, size: 64, offset: 640)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2005, file: !1952, line: 597, baseType: !2040, size: 64, offset: 704)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!157, !1958, !118, !121, !157, !157}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2005, file: !1952, line: 603, baseType: !2044, size: 64, offset: 768)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!316, !1958}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2005, file: !1952, line: 613, baseType: !2048, size: 64, offset: 832)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!157, !1958, !2051}
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !77, line: 717, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2005, file: !1952, line: 625, baseType: !2054, size: 64, offset: 896)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!2051, !1958, !118}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2005, file: !1952, line: 633, baseType: !2058, size: 64, offset: 960)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!1839, !1958, !118}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1959, file: !77, line: 697, baseType: !118, size: 64, offset: 1024)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1959, file: !77, line: 699, baseType: !835, size: 64, offset: 1088)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1959, file: !77, line: 700, baseType: !121, size: 64, offset: 1152)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1959, file: !77, line: 711, baseType: !185, size: 64, offset: 1216)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1959, file: !77, line: 717, baseType: !2051, size: 64, offset: 1280)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1959, file: !77, line: 722, baseType: !2067, offset: 1344)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !77, line: 570, elements: !463)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1955, file: !1952, line: 515, baseType: !1262, size: 32, offset: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1955, file: !1952, line: 516, baseType: !118, size: 64, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1955, file: !1952, line: 517, baseType: !118, size: 64, offset: 192)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1955, file: !1952, line: 518, baseType: !118, size: 64, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1951, file: !1952, line: 520, baseType: !76, size: 32, offset: 320)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1951, file: !1952, line: 522, baseType: !2074, size: 64, offset: 384)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1978, line: 22, baseType: !2076)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1978, line: 22, size: 64, elements: !2077)
!2077 = !{!2078}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2076, file: !1978, line: 22, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1978, line: 15, baseType: !118)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1951, file: !1952, line: 524, baseType: !2081, size: 64, offset: 448)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1973, line: 372, baseType: !2083)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1973, line: 372, size: 64, elements: !2084)
!2084 = !{!2085}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2083, file: !1973, line: 372, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1978, line: 16, baseType: !118)
!2087 = !DIDerivedType(tag: DW_TAG_member, scope: !1951, file: !1952, line: 527, baseType: !2088, size: 64, offset: 512)
!2088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1951, file: !1952, line: 527, size: 64, elements: !2089)
!2089 = !{!2090, !2096}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2088, file: !1952, line: 528, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1978, line: 21, baseType: !2092)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1978, line: 21, size: 64, elements: !2093)
!2093 = !{!2094}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2092, file: !1978, line: 21, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1978, line: 14, baseType: !118)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2088, file: !1952, line: 529, baseType: !2075, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1951, file: !1952, line: 534, baseType: !1839, size: 64, offset: 576)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1951, file: !1952, line: 535, baseType: !1839, size: 64, offset: 640)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1951, file: !1952, line: 541, baseType: !2100, size: 64, offset: 704)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1951, file: !1952, line: 545, baseType: !2102, size: 64, offset: 768)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1951, file: !1952, line: 549, baseType: !2104, size: 64, offset: 832)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1973, line: 520, baseType: !1839)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1939, file: !69, line: 100, baseType: !2106, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!157, !1889, !118, !118, !157}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1890, file: !69, line: 134, baseType: !121, size: 64, offset: 960)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1890, file: !69, line: 135, baseType: !157, size: 32, offset: 1024)
!2111 = !DIDerivedType(tag: DW_TAG_member, scope: !1890, file: !69, line: 136, baseType: !2112, size: 128, offset: 1088)
!2112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1890, file: !69, line: 136, size: 128, elements: !2113)
!2113 = !{!2114, !2120}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2112, file: !69, line: 137, baseType: !2115, size: 128)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2116, line: 6, size: 128, elements: !2117)
!2116 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2117 = !{!2118, !2119}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2115, file: !2116, line: 7, baseType: !129, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2115, file: !2116, line: 8, baseType: !129, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, scope: !2112, file: !69, line: 138, baseType: !2121)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2112, file: !69, line: 138, elements: !2122)
!2122 = !{!2123, !2125}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2121, file: !69, line: 138, baseType: !2124)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2121, file: !69, line: 138, elements: !463)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2121, file: !69, line: 138, baseType: !2126)
!2126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2115, elements: !914)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1886, file: !77, line: 147, baseType: !121, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1844, file: !77, line: 161, baseType: !469, size: 128, align: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !1840, file: !77, line: 164, baseType: !2130, size: 32, offset: 384)
!2130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1840, file: !77, line: 164, size: 32, elements: !2131)
!2131 = !{!2132, !2133}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2130, file: !77, line: 169, baseType: !153, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2130, file: !77, line: 177, baseType: !7, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1840, file: !77, line: 181, baseType: !153, size: 32, offset: 416)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1833, file: !58, line: 406, baseType: !2136, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!157, !835, !2139}
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !77, line: 293, size: 1536, elements: !2141)
!2141 = !{!2142, !2172, !2186}
!2142 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !77, line: 295, baseType: !2143, size: 512)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !77, line: 295, size: 512, elements: !2144)
!2144 = !{!2145, !2171}
!2145 = !DIDerivedType(tag: DW_TAG_member, scope: !2143, file: !77, line: 296, baseType: !2146, size: 448)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2143, file: !77, line: 296, size: 448, elements: !2147)
!2147 = !{!2148, !2149, !2158, !2159, !2160, !2169, !2170}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2146, file: !77, line: 298, baseType: !118, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, scope: !2146, file: !77, line: 299, baseType: !2150, size: 128, offset: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2146, file: !77, line: 299, size: 128, elements: !2151)
!2151 = !{!2152, !2153}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2150, file: !77, line: 300, baseType: !167, size: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, scope: !2150, file: !77, line: 302, baseType: !2154, size: 128)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2150, file: !77, line: 302, size: 128, elements: !2155)
!2155 = !{!2156, !2157}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2154, file: !77, line: 303, baseType: !121, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2154, file: !77, line: 305, baseType: !7, size: 32, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2146, file: !77, line: 310, baseType: !1819, size: 64, offset: 192)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2146, file: !77, line: 311, baseType: !118, size: 64, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_member, scope: !2146, file: !77, line: 312, baseType: !2161, size: 64, offset: 320)
!2161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2146, file: !77, line: 312, size: 64, elements: !2162)
!2162 = !{!2163, !2164}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2161, file: !77, line: 313, baseType: !121, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !2161, file: !77, line: 314, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !77, line: 257, baseType: !2166)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 255, size: 64, elements: !2167)
!2167 = !{!2168}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2166, file: !77, line: 256, baseType: !118, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2146, file: !77, line: 316, baseType: !153, size: 32, offset: 384)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2146, file: !77, line: 317, baseType: !153, size: 32, offset: 416)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2143, file: !77, line: 323, baseType: !1840, size: 512, align: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !77, line: 325, baseType: !2173, size: 512, offset: 512)
!2173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !77, line: 325, size: 512, elements: !2174)
!2174 = !{!2175, !2185}
!2175 = !DIDerivedType(tag: DW_TAG_member, scope: !2173, file: !77, line: 326, baseType: !2176, size: 320)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2173, file: !77, line: 326, size: 320, elements: !2177)
!2177 = !{!2178, !2179, !2180, !2181, !2182, !2183, !2184}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !2176, file: !77, line: 327, baseType: !118, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !2176, file: !77, line: 328, baseType: !118, size: 64, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !2176, file: !77, line: 329, baseType: !118, size: 64, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !2176, file: !77, line: 331, baseType: !153, size: 32, offset: 192)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !2176, file: !77, line: 332, baseType: !153, size: 32, offset: 224)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !2176, file: !77, line: 333, baseType: !153, size: 32, offset: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !2176, file: !77, line: 335, baseType: !7, size: 32, offset: 288)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !2173, file: !77, line: 339, baseType: !1840, size: 512, align: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !77, line: 341, baseType: !2187, size: 512, offset: 1024)
!2187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !77, line: 341, size: 512, elements: !2188)
!2188 = !{!2189, !2198, !2204}
!2189 = !DIDerivedType(tag: DW_TAG_member, scope: !2187, file: !77, line: 342, baseType: !2190, size: 384)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2187, file: !77, line: 342, size: 384, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2195, !2196, !2197}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !2190, file: !77, line: 343, baseType: !118, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !2190, file: !77, line: 344, baseType: !118, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !2190, file: !77, line: 346, baseType: !121, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !2190, file: !77, line: 347, baseType: !121, size: 64, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !2190, file: !77, line: 348, baseType: !121, size: 64, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !2190, file: !77, line: 349, baseType: !121, size: 64, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_member, scope: !2187, file: !77, line: 352, baseType: !2199, size: 256)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2187, file: !77, line: 352, size: 256, elements: !2200)
!2200 = !{!2201, !2202, !2203}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !2199, file: !77, line: 353, baseType: !118, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !2199, file: !77, line: 354, baseType: !118, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !2199, file: !77, line: 356, baseType: !167, size: 128, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !2187, file: !77, line: 359, baseType: !1840, size: 512, align: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1833, file: !58, line: 409, baseType: !2206, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!157, !1819, !1335}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1833, file: !58, line: 412, baseType: !2210, size: 64, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!371, !1819, !2139}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1833, file: !58, line: 414, baseType: !2214, size: 64, offset: 256)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{null, !2217}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !58, line: 310, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1833, file: !58, line: 416, baseType: !2220, size: 64, offset: 320)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!157, !835, !1819, !850, !7, !2223, !2224}
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1833, file: !58, line: 419, baseType: !2226, size: 64, offset: 384)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!157, !835, !1819, !850, !7, !7, !1839, !121}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1833, file: !58, line: 424, baseType: !2230, size: 64, offset: 448)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!2233, !1819, !2233}
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !120, line: 131, baseType: !129)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1833, file: !58, line: 425, baseType: !2235, size: 64, offset: 512)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{null, !2139, !319, !319}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1833, file: !58, line: 426, baseType: !2239, size: 64, offset: 576)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!371, !2139, !1262}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1833, file: !58, line: 427, baseType: !2243, size: 64, offset: 640)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{null, !2139}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1833, file: !58, line: 428, baseType: !2247, size: 64, offset: 704)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!1210, !2250, !2272}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !58, line: 373, size: 384, elements: !2252)
!2252 = !{!2253, !2254, !2255, !2259, !2260, !2261, !2262}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2251, file: !58, line: 374, baseType: !835, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2251, file: !58, line: 375, baseType: !850, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2251, file: !58, line: 376, baseType: !2256, size: 64, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !2250, !138}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2251, file: !58, line: 377, baseType: !121, size: 64, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2251, file: !58, line: 378, baseType: !157, size: 32, offset: 256)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2251, file: !58, line: 379, baseType: !222, size: 16, offset: 288)
!2262 = !DIDerivedType(tag: DW_TAG_member, scope: !2251, file: !58, line: 380, baseType: !2263, size: 64, offset: 320)
!2263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2251, file: !58, line: 380, size: 64, elements: !2264)
!2264 = !{!2265, !2268}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2263, file: !58, line: 386, baseType: !2266, size: 64)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !58, line: 386, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2263, file: !58, line: 395, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!1210, !121}
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2274, line: 41, size: 320, elements: !2275)
!2274 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!2275 = !{!2276, !2277, !2278, !2279, !2280, !2281, !2286, !2319}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2273, file: !2274, line: 42, baseType: !215, size: 8)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !2273, file: !2274, line: 43, baseType: !371, size: 8, offset: 8)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !2273, file: !2274, line: 44, baseType: !371, size: 8, offset: 16)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !2273, file: !2274, line: 45, baseType: !371, size: 8, offset: 24)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !2273, file: !2274, line: 46, baseType: !371, size: 8, offset: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, scope: !2273, file: !2274, line: 47, baseType: !2282, size: 64, offset: 64)
!2282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2273, file: !2274, line: 47, size: 64, elements: !2283)
!2283 = !{!2284, !2285}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !2282, file: !2274, line: 48, baseType: !319, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !2282, file: !2274, line: 49, baseType: !157, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2273, file: !2274, line: 61, baseType: !2287, size: 128, offset: 128)
!2287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2273, file: !2274, line: 61, size: 128, elements: !2288)
!2288 = !{!2289, !2295}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !2287, file: !2274, line: 67, baseType: !2290, size: 128)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2291, line: 17, size: 128, elements: !2292)
!2291 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2292 = !{!2293, !2294}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2290, file: !2291, line: 19, baseType: !121, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2290, file: !2291, line: 20, baseType: !320, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, scope: !2287, file: !2274, line: 68, baseType: !2296, size: 128)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2287, file: !2274, line: 68, size: 128, elements: !2297)
!2297 = !{!2298, !2318}
!2298 = !DIDerivedType(tag: DW_TAG_member, scope: !2296, file: !2274, line: 69, baseType: !2299, size: 64)
!2299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2296, file: !2274, line: 69, size: 64, elements: !2300)
!2300 = !{!2301, !2304, !2311, !2315, !2317}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2299, file: !2274, line: 71, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2290)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2299, file: !2274, line: 72, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2307)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !2274, line: 17, size: 128, elements: !2308)
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2307, file: !2274, line: 18, baseType: !121, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2307, file: !2274, line: 19, baseType: !319, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2299, file: !2274, line: 73, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2314)
!2314 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2274, line: 73, flags: DIFlagFwdDecl)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2299, file: !2274, line: 74, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2299, file: !2274, line: 75, baseType: !121, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2296, file: !2274, line: 77, baseType: !319, size: 64, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, scope: !2273, file: !2274, line: 80, baseType: !2320, size: 64, offset: 256)
!2320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2273, file: !2274, line: 80, size: 64, elements: !2321)
!2321 = !{!2322, !2323}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2320, file: !2274, line: 81, baseType: !118, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2320, file: !2274, line: 82, baseType: !850, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1833, file: !58, line: 433, baseType: !2325, size: 64, offset: 768)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!157, !1819, !2139, !2139, !92}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1833, file: !58, line: 435, baseType: !2329, size: 64, offset: 832)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!157, !2139}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1833, file: !58, line: 436, baseType: !2333, size: 64, offset: 896)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!371, !2139, !319, !319}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1833, file: !58, line: 438, baseType: !2337, size: 64, offset: 960)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{null, !2139, !2340, !2340}
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1833, file: !58, line: 439, baseType: !2342, size: 64, offset: 1024)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!157, !1819, !1839}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1833, file: !58, line: 442, baseType: !2346, size: 64, offset: 1088)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!157, !2349, !835, !2351}
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !58, line: 66, flags: DIFlagFwdDecl)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1833, file: !58, line: 444, baseType: !2353, size: 64, offset: 1152)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{null, !835}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1833, file: !58, line: 445, baseType: !2357, size: 64, offset: 1216)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!157, !2250, !2272}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1820, file: !58, line: 486, baseType: !118, size: 64, offset: 896)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1820, file: !58, line: 487, baseType: !181, size: 320, offset: 960)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1820, file: !58, line: 488, baseType: !1777, size: 32, offset: 1280)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1820, file: !58, line: 489, baseType: !242, size: 32, offset: 1312)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1820, file: !58, line: 490, baseType: !167, size: 128, offset: 1344)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1820, file: !58, line: 491, baseType: !121, size: 64, offset: 1472)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1058, file: !58, line: 659, baseType: !121, size: 64, offset: 576)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1058, file: !58, line: 663, baseType: !118, size: 64, offset: 640)
!2368 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !58, line: 671, baseType: !2369, size: 32, offset: 704)
!2369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !58, line: 671, size: 32, elements: !2370)
!2370 = !{!2371, !2373}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2369, file: !58, line: 672, baseType: !2372, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2369, file: !58, line: 673, baseType: !7, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1058, file: !58, line: 675, baseType: !1132, size: 32, offset: 736)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1058, file: !58, line: 676, baseType: !850, size: 64, offset: 768)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1058, file: !58, line: 677, baseType: !1168, size: 128, offset: 832)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1058, file: !58, line: 678, baseType: !1168, size: 128, offset: 960)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1058, file: !58, line: 679, baseType: !1168, size: 128, offset: 1088)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1058, file: !58, line: 680, baseType: !242, size: 32, offset: 1216)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1058, file: !58, line: 681, baseType: !224, size: 16, offset: 1248)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1058, file: !58, line: 682, baseType: !215, size: 8, offset: 1264)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1058, file: !58, line: 683, baseType: !215, size: 8, offset: 1272)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1058, file: !58, line: 684, baseType: !1568, size: 64, offset: 1280)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1058, file: !58, line: 691, baseType: !118, size: 64, offset: 1344)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1058, file: !58, line: 692, baseType: !181, size: 320, offset: 1408)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1058, file: !58, line: 694, baseType: !118, size: 64, offset: 1728)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1058, file: !58, line: 695, baseType: !118, size: 64, offset: 1792)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1058, file: !58, line: 697, baseType: !892, size: 128, offset: 1856)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1058, file: !58, line: 698, baseType: !167, size: 128, offset: 1984)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1058, file: !58, line: 707, baseType: !167, size: 128, offset: 2112)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1058, file: !58, line: 708, baseType: !167, size: 128, offset: 2240)
!2392 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !58, line: 709, baseType: !2393, size: 128, offset: 2368)
!2393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !58, line: 709, size: 128, elements: !2394)
!2394 = !{!2395, !2396}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2393, file: !58, line: 710, baseType: !888, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2393, file: !58, line: 711, baseType: !469, size: 128, align: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1058, file: !58, line: 713, baseType: !187, size: 64, offset: 2496)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1058, file: !58, line: 714, baseType: !187, size: 64, offset: 2560)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1058, file: !58, line: 715, baseType: !153, size: 32, offset: 2624)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1058, file: !58, line: 716, baseType: !153, size: 32, offset: 2656)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1058, file: !58, line: 717, baseType: !153, size: 32, offset: 2688)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1058, file: !58, line: 719, baseType: !153, size: 32, offset: 2720)
!2403 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !58, line: 721, baseType: !2404, size: 64, offset: 2752)
!2404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !58, line: 721, size: 64, elements: !2405)
!2405 = !{!2406, !2537}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2404, file: !58, line: 722, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2409)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !58, line: 1914, size: 2112, elements: !2410)
!2410 = !{!2411, !2412, !2416, !2421, !2425, !2426, !2427, !2433, !2446, !2454, !2458, !2459, !2463, !2464, !2468, !2473, !2474, !2478, !2482, !2488, !2489, !2493, !2494, !2500, !2504, !2505, !2510, !2514, !2518, !2522, !2526, !2527, !2533}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2409, file: !58, line: 1915, baseType: !1299, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2409, file: !58, line: 1916, baseType: !2413, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!850, !835, !850, !157}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2409, file: !58, line: 1917, baseType: !2417, size: 64, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!1210, !835, !336, !319, !2420}
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2409, file: !58, line: 1918, baseType: !2422, size: 64, offset: 192)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!1210, !835, !316, !319, !2420}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2409, file: !58, line: 1919, baseType: !2247, size: 64, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2409, file: !58, line: 1920, baseType: !2247, size: 64, offset: 320)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2409, file: !58, line: 1921, baseType: !2428, size: 64, offset: 384)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!157, !2250, !2431, !7}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !58, line: 53, flags: DIFlagFwdDecl)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2409, file: !58, line: 1923, baseType: !2434, size: 64, offset: 448)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!157, !835, !2437}
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !58, line: 1858, size: 128, elements: !2439)
!2439 = !{!2440, !2445}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2438, file: !58, line: 1859, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !58, line: 1855, baseType: !2442)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!371, !2437, !316, !157, !850, !129, !7}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2438, file: !58, line: 1860, baseType: !850, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2409, file: !58, line: 1924, baseType: !2447, size: 64, offset: 512)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!2450, !835, !2452}
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2451, line: 59, baseType: !7)
!2451 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !58, line: 61, flags: DIFlagFwdDecl)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2409, file: !58, line: 1925, baseType: !2455, size: 64, offset: 576)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!138, !835, !7, !118}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2409, file: !58, line: 1926, baseType: !2455, size: 64, offset: 640)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2409, file: !58, line: 1927, baseType: !2460, size: 64, offset: 704)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!157, !835, !1958}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2409, file: !58, line: 1928, baseType: !118, size: 64, offset: 768)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2409, file: !58, line: 1929, baseType: !2465, size: 64, offset: 832)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!157, !1057, !835}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2409, file: !58, line: 1930, baseType: !2469, size: 64, offset: 896)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!157, !835, !2472}
!2472 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !58, line: 1061, baseType: !121)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2409, file: !58, line: 1931, baseType: !2465, size: 64, offset: 960)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2409, file: !58, line: 1932, baseType: !2475, size: 64, offset: 1024)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!157, !835, !850, !850, !157}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2409, file: !58, line: 1933, baseType: !2479, size: 64, offset: 1088)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!157, !157, !835, !157}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2409, file: !58, line: 1934, baseType: !2483, size: 64, offset: 1152)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!157, !835, !157, !2486}
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !58, line: 1063, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2409, file: !58, line: 1935, baseType: !832, size: 64, offset: 1216)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2409, file: !58, line: 1936, baseType: !2490, size: 64, offset: 1280)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!157, !157}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2409, file: !58, line: 1937, baseType: !2483, size: 64, offset: 1344)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2409, file: !58, line: 1938, baseType: !2495, size: 64, offset: 1408)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!1210, !2498, !835, !2420, !319, !7}
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !519, line: 59, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2409, file: !58, line: 1939, baseType: !2501, size: 64, offset: 1472)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!1210, !835, !2420, !2498, !319, !7}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2409, file: !58, line: 1940, baseType: !2353, size: 64, offset: 1536)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2409, file: !58, line: 1941, baseType: !2506, size: 64, offset: 1600)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DISubroutineType(types: !2508)
!2508 = !{!157, !835, !157, !2509, !2224}
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2409, file: !58, line: 1942, baseType: !2511, size: 64, offset: 1664)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!138, !835, !157, !850, !850}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2409, file: !58, line: 1944, baseType: !2515, size: 64, offset: 1728)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{null, !393, !835}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2409, file: !58, line: 1948, baseType: !2519, size: 64, offset: 1792)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!1210, !835, !850, !835, !850, !319, !7}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2409, file: !58, line: 1950, baseType: !2523, size: 64, offset: 1856)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!850, !835, !850, !835, !850, !850, !7}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2409, file: !58, line: 1953, baseType: !2475, size: 64, offset: 1920)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2409, file: !58, line: 1954, baseType: !2528, size: 64, offset: 1984)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!157, !2531, !7}
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !58, line: 1911, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2409, file: !58, line: 1955, baseType: !2534, size: 64, offset: 2048)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!157, !2531, !2431, !7}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2404, file: !58, line: 723, baseType: !1323, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1058, file: !58, line: 725, baseType: !2539, size: 64, offset: 2816)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !58, line: 725, flags: DIFlagFwdDecl)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1058, file: !58, line: 726, baseType: !1820, size: 1536, align: 64, offset: 2880)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1058, file: !58, line: 727, baseType: !167, size: 128, offset: 4416)
!2543 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !58, line: 728, baseType: !2544, size: 64, offset: 4544)
!2544 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !58, line: 728, size: 64, elements: !2545)
!2545 = !{!2546, !2547, !2550, !2551}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2544, file: !58, line: 729, baseType: !2498, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2544, file: !58, line: 730, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !58, line: 730, flags: DIFlagFwdDecl)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2544, file: !58, line: 731, baseType: !336, size: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2544, file: !58, line: 732, baseType: !7, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1058, file: !58, line: 735, baseType: !285, size: 32, offset: 4608)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1058, file: !58, line: 738, baseType: !285, size: 32, offset: 4640)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1058, file: !58, line: 739, baseType: !1681, size: 64, offset: 4672)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1058, file: !58, line: 750, baseType: !121, size: 64, offset: 4736)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1023, file: !1024, line: 91, baseType: !2557, size: 256, offset: 448)
!2557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 256, elements: !1685)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1023, file: !1024, line: 94, baseType: !2559, size: 64, offset: 704)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2560, line: 25, size: 64, elements: !2561)
!2560 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2561 = !{!2562}
!2562 = !DIDerivedType(tag: DW_TAG_member, scope: !2559, file: !2560, line: 26, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2559, file: !2560, line: 26, size: 64, elements: !2564)
!2564 = !{!2565, !2566}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2563, file: !2560, line: 28, baseType: !130, size: 64, align: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, scope: !2563, file: !2560, line: 30, baseType: !2567, size: 64)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2563, file: !2560, line: 30, size: 64, elements: !2568)
!2568 = !{!2569, !2570}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2567, file: !2560, line: 31, baseType: !242, size: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2567, file: !2560, line: 32, baseType: !157, size: 32, offset: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1023, file: !1024, line: 95, baseType: !1700, size: 64, offset: 768)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1023, file: !1024, line: 96, baseType: !1266, size: 64, offset: 832)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1023, file: !1024, line: 97, baseType: !118, size: 64, offset: 896)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1023, file: !1024, line: 98, baseType: !121, size: 64, offset: 960)
!2575 = !DIDerivedType(tag: DW_TAG_member, scope: !1023, file: !1024, line: 100, baseType: !2576, size: 128, offset: 1024)
!2576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1023, file: !1024, line: 100, size: 128, elements: !2577)
!2577 = !{!2578, !2579}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2576, file: !1024, line: 101, baseType: !167, size: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2576, file: !1024, line: 102, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1023, file: !1024, line: 104, baseType: !167, size: 128, offset: 1152)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1023, file: !1024, line: 105, baseType: !167, size: 128, offset: 1280)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1023, file: !1024, line: 113, baseType: !2584, size: 128, offset: 1408)
!2584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1023, file: !1024, line: 109, size: 128, elements: !2585)
!2585 = !{!2586, !2587, !2588}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2584, file: !1024, line: 110, baseType: !892, size: 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2584, file: !1024, line: 111, baseType: !1033, size: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2584, file: !1024, line: 112, baseType: !469, size: 128, align: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1018, file: !1019, line: 72, baseType: !1266, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1018, file: !1019, line: 73, baseType: !157, size: 32, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1018, file: !1019, line: 74, baseType: !1097, size: 64, offset: 192)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1013, file: !1014, line: 10, baseType: !1022, size: 64, offset: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !836, file: !58, line: 1015, baseType: !1057, size: 64, offset: 1344)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !836, file: !58, line: 1016, baseType: !2407, size: 64, offset: 1408)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !836, file: !58, line: 1018, baseType: !129, size: 64, offset: 1472)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !836, file: !58, line: 1020, baseType: !121, size: 64, offset: 1536)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !836, file: !58, line: 1023, baseType: !121, size: 64, offset: 1600)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !836, file: !58, line: 1027, baseType: !2599, size: 64, offset: 1664)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !836, file: !58, line: 1029, baseType: !1819, size: 64, offset: 1728)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !836, file: !58, line: 1030, baseType: !1777, size: 32, offset: 1792)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !836, file: !58, line: 1031, baseType: !1777, size: 32, offset: 1824)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !812, file: !77, line: 756, baseType: !118, size: 64, offset: 704)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !812, file: !77, line: 757, baseType: !118, size: 64, offset: 768)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !812, file: !77, line: 760, baseType: !118, size: 64, offset: 832)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !812, file: !77, line: 761, baseType: !118, size: 64, offset: 896)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !812, file: !77, line: 763, baseType: !118, size: 64, offset: 960)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !812, file: !77, line: 764, baseType: !2609, size: 64, offset: 1024)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1973, line: 299, baseType: !2611)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1973, line: 299, size: 64, elements: !2612)
!2612 = !{!2613}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2611, file: !1973, line: 299, baseType: !2614, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1978, line: 18, baseType: !118)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !812, file: !77, line: 773, baseType: !153, size: 32, offset: 1088)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !812, file: !77, line: 785, baseType: !153, size: 32, offset: 1120)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !812, file: !77, line: 795, baseType: !2618, size: 64, offset: 1152)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !77, line: 726, size: 128, elements: !2620)
!2620 = !{!2621, !2622}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2619, file: !77, line: 727, baseType: !129, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2619, file: !77, line: 728, baseType: !157, size: 32, offset: 64)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !812, file: !77, line: 801, baseType: !118, size: 64, offset: 1216)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !812, file: !77, line: 804, baseType: !185, size: 64, offset: 1280)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !812, file: !77, line: 806, baseType: !157, size: 32, offset: 1344)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !812, file: !77, line: 808, baseType: !242, size: 32, offset: 1376)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !812, file: !77, line: 823, baseType: !181, size: 320, offset: 1408)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !812, file: !77, line: 825, baseType: !167, size: 128, offset: 1728)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !812, file: !77, line: 845, baseType: !157, size: 32, offset: 1856)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !812, file: !77, line: 849, baseType: !118, size: 64, offset: 1920)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !812, file: !77, line: 850, baseType: !118, size: 64, offset: 1984)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !812, file: !77, line: 852, baseType: !118, size: 64, offset: 2048)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !812, file: !77, line: 853, baseType: !118, size: 64, offset: 2112)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !812, file: !77, line: 854, baseType: !187, size: 64, offset: 2176)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !812, file: !77, line: 855, baseType: !118, size: 64, offset: 2240)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !812, file: !77, line: 856, baseType: !118, size: 64, offset: 2304)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !812, file: !77, line: 857, baseType: !118, size: 64, offset: 2368)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !812, file: !77, line: 858, baseType: !118, size: 64, offset: 2432)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !812, file: !77, line: 865, baseType: !682, size: 32, offset: 2496)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !812, file: !77, line: 867, baseType: !242, size: 32, offset: 2528)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !812, file: !77, line: 869, baseType: !118, size: 64, offset: 2560)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !812, file: !77, line: 869, baseType: !118, size: 64, offset: 2624)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !812, file: !77, line: 869, baseType: !118, size: 64, offset: 2688)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !812, file: !77, line: 869, baseType: !118, size: 64, offset: 2752)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !812, file: !77, line: 870, baseType: !118, size: 64, offset: 2816)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !812, file: !77, line: 870, baseType: !118, size: 64, offset: 2880)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !812, file: !77, line: 870, baseType: !118, size: 64, offset: 2944)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !812, file: !77, line: 871, baseType: !118, size: 64, offset: 3008)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !812, file: !77, line: 871, baseType: !118, size: 64, offset: 3072)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !812, file: !77, line: 871, baseType: !118, size: 64, offset: 3136)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !812, file: !77, line: 871, baseType: !118, size: 64, offset: 3200)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !812, file: !77, line: 873, baseType: !2653, size: 3328, offset: 3264)
!2653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 3328, elements: !2654)
!2654 = !{!2655}
!2655 = !DISubrange(count: 52)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !812, file: !77, line: 875, baseType: !2657, size: 1280, offset: 6592)
!2657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !959, size: 1280, elements: !343)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !812, file: !77, line: 877, baseType: !2659, size: 64, offset: 7872)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !77, line: 877, flags: DIFlagFwdDecl)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !812, file: !77, line: 880, baseType: !2662, size: 1088, offset: 7936)
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2663, line: 72, baseType: !2664)
!2663 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2663, line: 23, size: 1088, elements: !2665)
!2665 = !{!2666, !2667, !2668, !2669, !2670, !2673, !2674, !2675, !2676, !2680, !2681, !2682}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2664, file: !2663, line: 28, baseType: !129, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2664, file: !2663, line: 38, baseType: !187, size: 64, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2664, file: !2663, line: 40, baseType: !118, size: 64, offset: 128)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2664, file: !2663, line: 43, baseType: !181, size: 320, offset: 192)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2664, file: !2663, line: 44, baseType: !2671, size: 64, offset: 512)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2663, line: 44, flags: DIFlagFwdDecl)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2664, file: !2663, line: 48, baseType: !118, size: 64, offset: 576)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2664, file: !2663, line: 59, baseType: !234, size: 256, offset: 640)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2664, file: !2663, line: 60, baseType: !121, size: 64, offset: 896)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2664, file: !2663, line: 61, baseType: !2677, size: 64, offset: 960)
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2679)
!2679 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2663, line: 61, flags: DIFlagFwdDecl)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2664, file: !2663, line: 63, baseType: !153, size: 32, offset: 1024)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2664, file: !2663, line: 69, baseType: !222, size: 16, offset: 1056)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2664, file: !2663, line: 70, baseType: !2683, size: 16, offset: 1072)
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !125, line: 18, baseType: !2684)
!2684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !127, line: 23, baseType: !289)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !812, file: !77, line: 882, baseType: !118, size: 64, offset: 9024)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !812, file: !77, line: 885, baseType: !242, size: 32, offset: 9088)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !812, file: !77, line: 886, baseType: !2688, size: 64, offset: 9152)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !77, line: 732, flags: DIFlagFwdDecl)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !812, file: !77, line: 901, baseType: !984, size: 64, offset: 9216)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !812, file: !77, line: 904, baseType: !835, size: 64, offset: 9280)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !812, file: !77, line: 906, baseType: !2693, size: 64, offset: 9344)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !77, line: 906, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !812, file: !77, line: 930, baseType: !153, size: 32, offset: 9408)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !812, file: !77, line: 933, baseType: !153, size: 32, offset: 9440)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !812, file: !77, line: 935, baseType: !2698, size: 64, offset: 9472)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !106, line: 103, size: 64, elements: !2699)
!2699 = !{!2700}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2698, file: !106, line: 104, baseType: !2701, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !106, line: 101, flags: DIFlagFwdDecl)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !812, file: !77, line: 940, baseType: !185, size: 64, offset: 9536)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !812, file: !77, line: 942, baseType: !1802, size: 256, offset: 9600)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !809, file: !77, line: 986, baseType: !2706, offset: 10240)
!2706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, elements: !914)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !518, file: !519, line: 882, baseType: !808, size: 64, offset: 9792)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !518, file: !519, line: 884, baseType: !157, size: 32, offset: 9856)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !518, file: !519, line: 885, baseType: !157, size: 32, offset: 9888)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !518, file: !519, line: 886, baseType: !157, size: 32, offset: 9920)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !518, file: !519, line: 888, baseType: !157, size: 32, offset: 9952)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !518, file: !519, line: 890, baseType: !118, size: 64, offset: 9984)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !518, file: !519, line: 893, baseType: !7, size: 32, offset: 10048)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !518, file: !519, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !518, file: !519, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !518, file: !519, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !518, file: !519, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !518, file: !519, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !518, file: !519, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !518, file: !519, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !518, file: !519, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !518, file: !519, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !518, file: !519, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !518, file: !519, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !518, file: !519, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !518, file: !519, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !518, file: !519, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !518, file: !519, line: 969, baseType: !118, size: 64, offset: 10176)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !518, file: !519, line: 971, baseType: !2730, size: 448, offset: 10240)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !100, line: 25, size: 448, elements: !2731)
!2731 = !{!2732, !2733, !2738}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2730, file: !100, line: 26, baseType: !118, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2730, file: !100, line: 27, baseType: !2734, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!138, !2737}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, scope: !2730, file: !100, line: 28, baseType: !2739, size: 320, offset: 128)
!2739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2730, file: !100, line: 28, size: 320, elements: !2740)
!2740 = !{!2741, !2751, !2776}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2739, file: !100, line: 37, baseType: !2742, size: 320)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2739, file: !100, line: 30, size: 320, elements: !2743)
!2743 = !{!2744, !2746, !2747, !2748, !2749, !2750}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2742, file: !100, line: 31, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2742, file: !100, line: 32, baseType: !284, size: 32, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2742, file: !100, line: 33, baseType: !284, size: 32, offset: 96)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2742, file: !100, line: 34, baseType: !284, size: 32, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2742, file: !100, line: 35, baseType: !129, size: 64, offset: 192)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2742, file: !100, line: 36, baseType: !2745, size: 64, offset: 256)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2739, file: !100, line: 47, baseType: !2752, size: 192)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2739, file: !100, line: 39, size: 192, elements: !2753)
!2753 = !{!2754, !2755, !2756, !2775}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2752, file: !100, line: 40, baseType: !674, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2752, file: !100, line: 41, baseType: !99, size: 32, offset: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, scope: !2752, file: !100, line: 42, baseType: !2757, size: 64, offset: 64)
!2757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2752, file: !100, line: 42, size: 64, elements: !2758)
!2758 = !{!2759, !2767}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2757, file: !100, line: 43, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2762, line: 7, size: 128, elements: !2763)
!2762 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2763 = !{!2764, !2766}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2761, file: !2762, line: 8, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !261, line: 93, baseType: !128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2761, file: !2762, line: 9, baseType: !128, size: 64, offset: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2757, file: !100, line: 44, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2770, line: 7, size: 64, elements: !2771)
!2770 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2771 = !{!2772, !2774}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2769, file: !2770, line: 8, baseType: !2773, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2770, line: 5, baseType: !161)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2769, file: !2770, line: 9, baseType: !161, size: 32, offset: 32)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2752, file: !100, line: 46, baseType: !129, size: 64, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2739, file: !100, line: 55, baseType: !2777, size: 256)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2739, file: !100, line: 49, size: 256, elements: !2778)
!2778 = !{!2779, !2782, !2783, !2784, !2785}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2777, file: !100, line: 50, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !100, line: 14, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2777, file: !100, line: 51, baseType: !157, size: 32, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2777, file: !100, line: 52, baseType: !157, size: 32, offset: 96)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2777, file: !100, line: 53, baseType: !118, size: 64, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2777, file: !100, line: 54, baseType: !118, size: 64, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !518, file: !519, line: 973, baseType: !2787, size: 32, offset: 10688)
!2787 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !120, line: 27, baseType: !2788)
!2788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !261, line: 28, baseType: !157)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !518, file: !519, line: 974, baseType: !2787, size: 32, offset: 10720)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !518, file: !519, line: 978, baseType: !118, size: 64, offset: 10752)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !518, file: !519, line: 987, baseType: !517, size: 64, offset: 10816)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !518, file: !519, line: 990, baseType: !517, size: 64, offset: 10880)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !518, file: !519, line: 995, baseType: !167, size: 128, offset: 10944)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !518, file: !519, line: 996, baseType: !167, size: 128, offset: 11072)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !518, file: !519, line: 997, baseType: !517, size: 64, offset: 11200)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !518, file: !519, line: 1005, baseType: !167, size: 128, offset: 11264)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !518, file: !519, line: 1006, baseType: !167, size: 128, offset: 11392)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !518, file: !519, line: 1009, baseType: !880, size: 64, offset: 11520)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !518, file: !519, line: 1010, baseType: !2800, size: 512, offset: 11584)
!2800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !892, size: 512, elements: !343)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !518, file: !519, line: 1011, baseType: !167, size: 128, offset: 12096)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !518, file: !519, line: 1012, baseType: !167, size: 128, offset: 12224)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !518, file: !519, line: 1014, baseType: !2804, size: 64, offset: 12352)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !518, file: !519, line: 1017, baseType: !1367, size: 64, offset: 12416)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !518, file: !519, line: 1020, baseType: !1367, size: 64, offset: 12480)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !518, file: !519, line: 1023, baseType: !121, size: 64, offset: 12544)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !518, file: !519, line: 1025, baseType: !129, size: 64, offset: 12608)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !518, file: !519, line: 1026, baseType: !129, size: 64, offset: 12672)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !518, file: !519, line: 1031, baseType: !129, size: 64, offset: 12736)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !518, file: !519, line: 1032, baseType: !2812, size: 192, offset: 12800)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !519, line: 324, size: 192, elements: !2813)
!2813 = !{!2814, !2815, !2816}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2812, file: !519, line: 326, baseType: !129, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2812, file: !519, line: 327, baseType: !129, size: 64, offset: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2812, file: !519, line: 328, baseType: !198, size: 32, offset: 128)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !518, file: !519, line: 1041, baseType: !118, size: 64, offset: 12992)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !518, file: !519, line: 1042, baseType: !118, size: 64, offset: 13056)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !518, file: !519, line: 1045, baseType: !129, size: 64, offset: 13120)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !518, file: !519, line: 1048, baseType: !129, size: 64, offset: 13184)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !518, file: !519, line: 1051, baseType: !118, size: 64, offset: 13248)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !518, file: !519, line: 1052, baseType: !118, size: 64, offset: 13312)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !518, file: !519, line: 1055, baseType: !2824, size: 640, offset: 13376)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2825, line: 132, size: 640, elements: !2826)
!2825 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2826 = !{!2827, !2833, !2834}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2824, file: !2825, line: 133, baseType: !2828, size: 576)
!2828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2829, size: 576, elements: !876)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2825, line: 117, size: 192, elements: !2830)
!2830 = !{!2831, !2832}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2829, file: !2825, line: 118, baseType: !129, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2829, file: !2825, line: 119, baseType: !688, size: 128, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2824, file: !2825, line: 134, baseType: !7, size: 32, offset: 576)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2824, file: !2825, line: 135, baseType: !7, size: 32, offset: 608)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !518, file: !519, line: 1058, baseType: !2836, size: 448, offset: 14016)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2825, line: 144, size: 448, elements: !2837)
!2837 = !{!2838, !2839, !2840}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2836, file: !2825, line: 145, baseType: !469, size: 128, align: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2836, file: !2825, line: 146, baseType: !234, size: 256, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2836, file: !2825, line: 147, baseType: !7, size: 32, offset: 384)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !518, file: !519, line: 1064, baseType: !921, size: 64, offset: 14464)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !518, file: !519, line: 1067, baseType: !921, size: 64, offset: 14528)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !518, file: !519, line: 1070, baseType: !921, size: 64, offset: 14592)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !518, file: !519, line: 1074, baseType: !144, size: 64, offset: 14656)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !518, file: !519, line: 1084, baseType: !2846, size: 128, offset: 14720)
!2846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, elements: !1694)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !518, file: !519, line: 1086, baseType: !2848, size: 64, offset: 14848)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !519, line: 55, flags: DIFlagFwdDecl)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !518, file: !519, line: 1089, baseType: !2851, size: 64, offset: 14912)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2852, line: 12, size: 64, elements: !2853)
!2852 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2853 = !{!2854}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2851, file: !2852, line: 13, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2852, line: 8, flags: DIFlagFwdDecl)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !518, file: !519, line: 1090, baseType: !2858, size: 128, offset: 14976)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2859, line: 13, size: 128, elements: !2860)
!2859 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2860 = !{!2861}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2858, file: !2859, line: 14, baseType: !167, size: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !518, file: !519, line: 1097, baseType: !2863, size: 64, offset: 15104)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !519, line: 50, flags: DIFlagFwdDecl)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !518, file: !519, line: 1100, baseType: !2866, size: 64, offset: 15168)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !519, line: 1100, flags: DIFlagFwdDecl)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !518, file: !519, line: 1103, baseType: !2869, size: 64, offset: 15232)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !519, line: 53, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !518, file: !519, line: 1107, baseType: !2872, size: 64, offset: 15296)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2874, line: 35, flags: DIFlagFwdDecl)
!2874 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !518, file: !519, line: 1110, baseType: !2876, size: 64, offset: 15360)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2878, line: 93, size: 8768, elements: !2879)
!2878 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2879 = !{!2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2929, !2938, !2939, !2941, !2942, !2943, !2946, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2984, !2985, !2992, !3002, !3005, !3006, !3009, !3010, !3011, !3012, !3013, !3014}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2877, file: !2878, line: 94, baseType: !148, size: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2877, file: !2878, line: 95, baseType: !153, size: 32, offset: 32)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2877, file: !2878, line: 96, baseType: !157, size: 32, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2877, file: !2878, line: 97, baseType: !157, size: 32, offset: 96)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2877, file: !2878, line: 98, baseType: !167, size: 128, offset: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2877, file: !2878, line: 100, baseType: !899, size: 192, offset: 256)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2877, file: !2878, line: 103, baseType: !517, size: 64, offset: 448)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2877, file: !2878, line: 106, baseType: !2888, size: 192, offset: 512)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !989, line: 32, size: 192, elements: !2889)
!2889 = !{!2890, !2891}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2888, file: !989, line: 33, baseType: !167, size: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2888, file: !989, line: 34, baseType: !2892, size: 64, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2893, line: 25, baseType: !2894)
!2893 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2893, line: 23, size: 64, elements: !2895)
!2895 = !{!2896}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2894, file: !2893, line: 24, baseType: !759, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2877, file: !2878, line: 109, baseType: !888, size: 64, offset: 704)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2877, file: !2878, line: 112, baseType: !157, size: 32, offset: 768)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2877, file: !2878, line: 114, baseType: !157, size: 32, offset: 800)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2877, file: !2878, line: 115, baseType: !517, size: 64, offset: 832)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2877, file: !2878, line: 118, baseType: !157, size: 32, offset: 896)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2877, file: !2878, line: 119, baseType: !7, size: 32, offset: 928)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2877, file: !2878, line: 121, baseType: !2904, size: 64, offset: 960)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2878, line: 80, size: 448, elements: !2906)
!2906 = !{!2907, !2908, !2914}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2905, file: !2878, line: 81, baseType: !153, size: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2905, file: !2878, line: 82, baseType: !2909, size: 128, offset: 64)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2878, line: 75, size: 128, elements: !2910)
!2910 = !{!2911, !2912}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2909, file: !2878, line: 76, baseType: !517, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2909, file: !2878, line: 77, baseType: !2913, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2905, file: !2878, line: 83, baseType: !1923, size: 256, offset: 192)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2877, file: !2878, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2877, file: !2878, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2877, file: !2878, line: 138, baseType: !7, size: 32, offset: 1056)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2877, file: !2878, line: 139, baseType: !167, size: 128, offset: 1088)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2877, file: !2878, line: 142, baseType: !627, size: 512, offset: 1216)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2877, file: !2878, line: 143, baseType: !635, size: 64, offset: 1728)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2877, file: !2878, line: 150, baseType: !2922, size: 256, offset: 1792)
!2922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2923, size: 256, elements: !2927)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2878, line: 38, size: 128, elements: !2924)
!2924 = !{!2925, !2926}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2923, file: !2878, line: 39, baseType: !129, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2923, file: !2878, line: 40, baseType: !129, size: 64, offset: 64)
!2927 = !{!2928}
!2928 = !DISubrange(count: 2)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2877, file: !2878, line: 156, baseType: !2930, size: 192, offset: 2048)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2878, line: 66, size: 192, elements: !2931)
!2931 = !{!2932}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2930, file: !2878, line: 67, baseType: !2933, size: 192)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2878, line: 47, size: 192, elements: !2934)
!2934 = !{!2935, !2936, !2937}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2933, file: !2878, line: 48, baseType: !187, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2933, file: !2878, line: 49, baseType: !187, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2933, file: !2878, line: 50, baseType: !187, size: 64, offset: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2877, file: !2878, line: 160, baseType: !2824, size: 640, offset: 2240)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2877, file: !2878, line: 163, baseType: !2940, size: 256, offset: 2880)
!2940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !880, size: 256, elements: !343)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2877, file: !2878, line: 169, baseType: !880, size: 64, offset: 3136)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2877, file: !2878, line: 172, baseType: !157, size: 32, offset: 3200)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2877, file: !2878, line: 174, baseType: !2944, size: 64, offset: 3264)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2878, line: 174, flags: DIFlagFwdDecl)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2877, file: !2878, line: 185, baseType: !2947, size: 64, offset: 3328)
!2947 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !678, line: 860, baseType: !2948)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !678, line: 853, size: 64, elements: !2949)
!2949 = !{!2950, !2951}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2948, file: !678, line: 858, baseType: !1028, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2948, file: !678, line: 859, baseType: !242, size: 32, offset: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2877, file: !2878, line: 186, baseType: !129, size: 64, offset: 3392)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2877, file: !2878, line: 186, baseType: !129, size: 64, offset: 3456)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2877, file: !2878, line: 186, baseType: !129, size: 64, offset: 3520)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2877, file: !2878, line: 186, baseType: !129, size: 64, offset: 3584)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2877, file: !2878, line: 187, baseType: !129, size: 64, offset: 3648)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2877, file: !2878, line: 188, baseType: !129, size: 64, offset: 3712)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2877, file: !2878, line: 189, baseType: !2812, size: 192, offset: 3776)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2877, file: !2878, line: 190, baseType: !118, size: 64, offset: 3968)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2877, file: !2878, line: 190, baseType: !118, size: 64, offset: 4032)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2877, file: !2878, line: 190, baseType: !118, size: 64, offset: 4096)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2877, file: !2878, line: 190, baseType: !118, size: 64, offset: 4160)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2877, file: !2878, line: 191, baseType: !118, size: 64, offset: 4224)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2877, file: !2878, line: 191, baseType: !118, size: 64, offset: 4288)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2877, file: !2878, line: 191, baseType: !118, size: 64, offset: 4352)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2877, file: !2878, line: 191, baseType: !118, size: 64, offset: 4416)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2877, file: !2878, line: 192, baseType: !118, size: 64, offset: 4480)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2877, file: !2878, line: 192, baseType: !118, size: 64, offset: 4544)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2877, file: !2878, line: 192, baseType: !118, size: 64, offset: 4608)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2877, file: !2878, line: 192, baseType: !118, size: 64, offset: 4672)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2877, file: !2878, line: 193, baseType: !118, size: 64, offset: 4736)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2877, file: !2878, line: 193, baseType: !118, size: 64, offset: 4800)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2877, file: !2878, line: 194, baseType: !2974, size: 448, offset: 4864)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2975, line: 12, size: 448, elements: !2976)
!2975 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2976 = !{!2977, !2978, !2979, !2980, !2981, !2982, !2983}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2974, file: !2975, line: 15, baseType: !129, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2974, file: !2975, line: 17, baseType: !129, size: 64, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2974, file: !2975, line: 19, baseType: !129, size: 64, offset: 128)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2974, file: !2975, line: 21, baseType: !129, size: 64, offset: 192)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2974, file: !2975, line: 29, baseType: !129, size: 64, offset: 256)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2974, file: !2975, line: 35, baseType: !129, size: 64, offset: 320)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2974, file: !2975, line: 44, baseType: !129, size: 64, offset: 384)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2877, file: !2878, line: 202, baseType: !131, size: 64, offset: 5312)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2877, file: !2878, line: 213, baseType: !2986, size: 2048, offset: 5376)
!2986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2987, size: 2048, elements: !1694)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2988, line: 43, size: 128, elements: !2989)
!2988 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2989 = !{!2990, !2991}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2987, file: !2988, line: 44, baseType: !321, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2987, file: !2988, line: 45, baseType: !321, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2877, file: !2878, line: 216, baseType: !2993, size: 448, offset: 7424)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2878, line: 30, size: 448, elements: !2994)
!2994 = !{!2995, !2996, !2997, !2998, !2999, !3000, !3001}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2993, file: !2878, line: 31, baseType: !157, size: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2993, file: !2878, line: 32, baseType: !138, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2993, file: !2878, line: 33, baseType: !118, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2993, file: !2878, line: 34, baseType: !129, size: 64, offset: 192)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2993, file: !2878, line: 34, baseType: !129, size: 64, offset: 256)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2993, file: !2878, line: 35, baseType: !118, size: 64, offset: 320)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2993, file: !2878, line: 35, baseType: !118, size: 64, offset: 384)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2877, file: !2878, line: 219, baseType: !3003, size: 64, offset: 7872)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2878, line: 219, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2877, file: !2878, line: 222, baseType: !7, size: 32, offset: 7936)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2877, file: !2878, line: 223, baseType: !3007, size: 64, offset: 8000)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2878, line: 223, flags: DIFlagFwdDecl)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2877, file: !2878, line: 230, baseType: !371, size: 8, offset: 8064)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2877, file: !2878, line: 231, baseType: !289, size: 16, offset: 8080)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2877, file: !2878, line: 232, baseType: !289, size: 16, offset: 8096)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2877, file: !2878, line: 234, baseType: !808, size: 64, offset: 8128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2877, file: !2878, line: 237, baseType: !234, size: 256, offset: 8192)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2877, file: !2878, line: 243, baseType: !181, size: 320, offset: 8448)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !518, file: !519, line: 1111, baseType: !3016, size: 64, offset: 15424)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2878, line: 20, size: 16640, elements: !3018)
!3018 = !{!3019, !3020, !3021, !3022}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3017, file: !2878, line: 21, baseType: !242, size: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3017, file: !2878, line: 22, baseType: !148, size: 32, offset: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3017, file: !2878, line: 23, baseType: !899, size: 192, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3017, file: !2878, line: 24, baseType: !3023, size: 16384, offset: 256)
!3023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3024, size: 16384, elements: !3044)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !989, line: 51, size: 256, elements: !3025)
!3025 = !{!3026}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3024, file: !989, line: 52, baseType: !3027, size: 256)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !989, line: 37, size: 256, elements: !3028)
!3028 = !{!3029, !3036, !3037, !3043}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3027, file: !989, line: 39, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3031, line: 83, baseType: !3032)
!3031 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3031, line: 82, baseType: !3034)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{null, !157}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3027, file: !989, line: 40, baseType: !118, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3027, file: !989, line: 46, baseType: !3038, size: 64, offset: 128)
!3038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3031, line: 86, baseType: !3039)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3031, line: 85, baseType: !3041)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{null}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3027, file: !989, line: 48, baseType: !2892, size: 64, offset: 192)
!3044 = !{!3045}
!3045 = !DISubrange(count: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !518, file: !519, line: 1112, baseType: !2892, size: 64, offset: 15488)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !518, file: !519, line: 1113, baseType: !2892, size: 64, offset: 15552)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !518, file: !519, line: 1115, baseType: !2892, size: 64, offset: 15616)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !518, file: !519, line: 1116, baseType: !2888, size: 192, offset: 15680)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !518, file: !519, line: 1117, baseType: !118, size: 64, offset: 15872)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !518, file: !519, line: 1118, baseType: !319, size: 64, offset: 15936)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !518, file: !519, line: 1119, baseType: !7, size: 32, offset: 16000)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !518, file: !519, line: 1121, baseType: !472, size: 64, offset: 16064)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !518, file: !519, line: 1125, baseType: !3055, size: 64, offset: 16128)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !519, line: 43, flags: DIFlagFwdDecl)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !518, file: !519, line: 1127, baseType: !254, size: 32, offset: 16192)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !518, file: !519, line: 1128, baseType: !7, size: 32, offset: 16224)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !518, file: !519, line: 1130, baseType: !3060, size: 128, offset: 16256)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3061, line: 37, size: 128, elements: !3062)
!3061 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3062 = !{!3063, !3064, !3065}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3060, file: !3061, line: 38, baseType: !157, size: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3060, file: !3061, line: 39, baseType: !153, size: 32, offset: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3060, file: !3061, line: 40, baseType: !3066, size: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3061, line: 24, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !518, file: !519, line: 1131, baseType: !3069, size: 256, offset: 16384)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3070, line: 12, size: 256, elements: !3071)
!3070 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3071 = !{!3072, !3073, !3074, !3075}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3069, file: !3070, line: 13, baseType: !336, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3069, file: !3070, line: 14, baseType: !118, size: 64, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3069, file: !3070, line: 15, baseType: !118, size: 64, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3069, file: !3070, line: 16, baseType: !371, size: 8, offset: 192)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !518, file: !519, line: 1134, baseType: !129, size: 64, offset: 16640)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !518, file: !519, line: 1135, baseType: !129, size: 64, offset: 16704)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !518, file: !519, line: 1138, baseType: !242, size: 32, offset: 16768)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !518, file: !519, line: 1141, baseType: !198, size: 32, offset: 16800)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !518, file: !519, line: 1143, baseType: !3081, size: 64, offset: 16832)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !519, line: 735, size: 64, elements: !3082)
!3082 = !{!3083}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3081, file: !519, line: 736, baseType: !3084, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !518, file: !519, line: 1147, baseType: !691, size: 128, offset: 16896)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !518, file: !519, line: 1149, baseType: !517, size: 64, offset: 17024)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !518, file: !519, line: 1151, baseType: !3088, size: 64, offset: 17088)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !519, line: 1151, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !518, file: !519, line: 1188, baseType: !121, size: 64, offset: 17152)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !518, file: !519, line: 1191, baseType: !3092, size: 64, offset: 17216)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !519, line: 44, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !518, file: !519, line: 1194, baseType: !3095, size: 64, offset: 17280)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !519, line: 45, flags: DIFlagFwdDecl)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !518, file: !519, line: 1197, baseType: !3098, size: 64, offset: 17344)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !519, line: 61, flags: DIFlagFwdDecl)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !518, file: !519, line: 1199, baseType: !3101, size: 64, offset: 17408)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3103, line: 99, size: 128, elements: !3104)
!3103 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3104 = !{!3105, !3106, !3107}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3102, file: !3103, line: 100, baseType: !185, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3102, file: !3103, line: 101, baseType: !153, size: 32, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3102, file: !3103, line: 103, baseType: !224, size: 16, offset: 96)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !518, file: !519, line: 1202, baseType: !3109, size: 64, offset: 17472)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !519, line: 48, flags: DIFlagFwdDecl)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !518, file: !519, line: 1205, baseType: !118, size: 64, offset: 17536)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !518, file: !519, line: 1206, baseType: !3113, size: 64, offset: 17600)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !989, line: 14, baseType: !3115)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !989, line: 12, size: 384, elements: !3116)
!3116 = !{!3117}
!3117 = !DIDerivedType(tag: DW_TAG_member, scope: !3115, file: !989, line: 13, baseType: !3118, size: 384)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3115, file: !989, line: 13, size: 384, elements: !3119)
!3119 = !{!3120, !3121, !3122, !3123}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3118, file: !989, line: 13, baseType: !157, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3118, file: !989, line: 13, baseType: !157, size: 32, offset: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3118, file: !989, line: 13, baseType: !157, size: 32, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3118, file: !989, line: 13, baseType: !3124, size: 256, offset: 128)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3125, line: 37, size: 256, elements: !3126)
!3125 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3126 = !{!3127, !3132, !3145, !3151, !3160, !3187, !3192}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3124, file: !3125, line: 42, baseType: !3128, size: 64)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3125, line: 39, size: 64, elements: !3129)
!3129 = !{!3130, !3131}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3128, file: !3125, line: 40, baseType: !2788, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3128, file: !3125, line: 41, baseType: !260, size: 32, offset: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3124, file: !3125, line: 50, baseType: !3133, size: 192)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3125, line: 45, size: 192, elements: !3134)
!3134 = !{!3135, !3137, !3138, !3144}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3133, file: !3125, line: 46, baseType: !3136, size: 32)
!3136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !261, line: 95, baseType: !157)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3133, file: !3125, line: 47, baseType: !157, size: 32, offset: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3133, file: !3125, line: 48, baseType: !3139, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3125, line: 11, baseType: !3140)
!3140 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3125, line: 8, size: 64, elements: !3141)
!3141 = !{!3142, !3143}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3140, file: !3125, line: 9, baseType: !157, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3140, file: !3125, line: 10, baseType: !121, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3133, file: !3125, line: 49, baseType: !157, size: 32, offset: 128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3124, file: !3125, line: 57, baseType: !3146, size: 128)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3125, line: 53, size: 128, elements: !3147)
!3147 = !{!3148, !3149, !3150}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3146, file: !3125, line: 54, baseType: !2788, size: 32)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3146, file: !3125, line: 55, baseType: !260, size: 32, offset: 32)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3146, file: !3125, line: 56, baseType: !3139, size: 64, offset: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3124, file: !3125, line: 66, baseType: !3152, size: 256)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3125, line: 60, size: 256, elements: !3153)
!3153 = !{!3154, !3155, !3156, !3157, !3159}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3152, file: !3125, line: 61, baseType: !2788, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3152, file: !3125, line: 62, baseType: !260, size: 32, offset: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3152, file: !3125, line: 63, baseType: !157, size: 32, offset: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3152, file: !3125, line: 64, baseType: !3158, size: 64, offset: 128)
!3158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !261, line: 94, baseType: !1212)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3152, file: !3125, line: 65, baseType: !3158, size: 64, offset: 192)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3124, file: !3125, line: 105, baseType: !3161, size: 256)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3125, line: 69, size: 256, elements: !3162)
!3162 = !{!3163, !3164}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3161, file: !3125, line: 70, baseType: !121, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, scope: !3161, file: !3125, line: 79, baseType: !3165, size: 192, offset: 64)
!3165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3161, file: !3125, line: 79, size: 192, elements: !3166)
!3166 = !{!3167, !3168, !3169, !3176, !3181}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3165, file: !3125, line: 81, baseType: !157, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3165, file: !3125, line: 86, baseType: !289, size: 16)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3165, file: !3125, line: 92, baseType: !3170, size: 192)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3165, file: !3125, line: 88, size: 192, elements: !3171)
!3171 = !{!3172, !3174, !3175}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3170, file: !3125, line: 89, baseType: !3173, size: 64)
!3173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 64, elements: !670)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3170, file: !3125, line: 90, baseType: !121, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3170, file: !3125, line: 91, baseType: !121, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3165, file: !3125, line: 97, baseType: !3177, size: 96)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3165, file: !3125, line: 94, size: 96, elements: !3178)
!3178 = !{!3179, !3180}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3177, file: !3125, line: 95, baseType: !3173, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3177, file: !3125, line: 96, baseType: !285, size: 32, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3165, file: !3125, line: 103, baseType: !3182, size: 128)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3165, file: !3125, line: 99, size: 128, elements: !3183)
!3183 = !{!3184, !3185, !3186}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3182, file: !3125, line: 100, baseType: !118, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3182, file: !3125, line: 101, baseType: !285, size: 32, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3182, file: !3125, line: 102, baseType: !285, size: 32, offset: 96)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3124, file: !3125, line: 111, baseType: !3188, size: 128)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3125, line: 108, size: 128, elements: !3189)
!3189 = !{!3190, !3191}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3188, file: !3125, line: 109, baseType: !138, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3188, file: !3125, line: 110, baseType: !157, size: 32, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3124, file: !3125, line: 118, baseType: !3193, size: 128)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3124, file: !3125, line: 114, size: 128, elements: !3194)
!3194 = !{!3195, !3196, !3197}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3193, file: !3125, line: 115, baseType: !121, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3193, file: !3125, line: 116, baseType: !157, size: 32, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3193, file: !3125, line: 117, baseType: !7, size: 32, offset: 96)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !518, file: !519, line: 1208, baseType: !2974, size: 448, offset: 17664)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !518, file: !519, line: 1215, baseType: !129, size: 64, offset: 18112)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !518, file: !519, line: 1217, baseType: !129, size: 64, offset: 18176)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !518, file: !519, line: 1219, baseType: !129, size: 64, offset: 18240)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !518, file: !519, line: 1223, baseType: !3203, size: 64, offset: 18304)
!3203 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3204, line: 99, baseType: !3205)
!3204 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3204, line: 99, size: 64, elements: !3206)
!3206 = !{!3207}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3205, file: !3204, line: 99, baseType: !759, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !518, file: !519, line: 1225, baseType: !1028, size: 32, offset: 18368)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !518, file: !519, line: 1226, baseType: !157, size: 32, offset: 18400)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !518, file: !519, line: 1227, baseType: !157, size: 32, offset: 18432)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !518, file: !519, line: 1231, baseType: !3212, size: 64, offset: 18496)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !519, line: 1231, flags: DIFlagFwdDecl)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !518, file: !519, line: 1233, baseType: !167, size: 128, offset: 18560)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !518, file: !519, line: 1240, baseType: !3216, size: 64, offset: 18688)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !519, line: 62, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !518, file: !519, line: 1242, baseType: !3219, size: 64, offset: 18752)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3221, line: 392, size: 96, elements: !3222)
!3221 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3222 = !{!3223, !3229, !3231}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3220, file: !3221, line: 393, baseType: !3224, size: 32)
!3224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3221, line: 388, size: 32, elements: !3225)
!3225 = !{!3226}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3224, file: !3221, line: 389, baseType: !3227, size: 32)
!3227 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3228, line: 46, baseType: !284)
!3228 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3220, file: !3221, line: 394, baseType: !3230, size: 32, offset: 32)
!3230 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3228, line: 42, baseType: !161)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3220, file: !3221, line: 395, baseType: !3227, size: 32, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !518, file: !519, line: 1244, baseType: !167, size: 128, offset: 18816)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !518, file: !519, line: 1245, baseType: !3234, size: 64, offset: 18944)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !519, line: 51, flags: DIFlagFwdDecl)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !518, file: !519, line: 1246, baseType: !234, size: 256, offset: 19008)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !518, file: !519, line: 1247, baseType: !7, size: 32, offset: 19264)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !518, file: !519, line: 1250, baseType: !3239, size: 64, offset: 19328)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !519, line: 57, flags: DIFlagFwdDecl)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !518, file: !519, line: 1251, baseType: !234, size: 256, offset: 19392)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !518, file: !519, line: 1252, baseType: !167, size: 128, offset: 19648)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !518, file: !519, line: 1259, baseType: !2051, size: 64, offset: 19776)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !518, file: !519, line: 1260, baseType: !289, size: 16, offset: 19840)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !518, file: !519, line: 1261, baseType: !289, size: 16, offset: 19856)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !518, file: !519, line: 1314, baseType: !3247, size: 64, offset: 19904)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3249, line: 62, size: 256, align: 256, elements: !3250)
!3249 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3250 = !{!3251, !3252, !3253, !3254, !3255, !3256, !3257}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3248, file: !3249, line: 75, baseType: !285, size: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3248, file: !3249, line: 90, baseType: !285, size: 32, offset: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3248, file: !3249, line: 112, baseType: !130, size: 64, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3248, file: !3249, line: 132, baseType: !285, size: 32, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3248, file: !3249, line: 140, baseType: !285, size: 32, offset: 160)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3248, file: !3249, line: 149, baseType: !285, size: 32, offset: 192)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3248, file: !3249, line: 154, baseType: !3258, offset: 224)
!3258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, elements: !914)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !518, file: !519, line: 1315, baseType: !284, size: 32, offset: 19968)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !518, file: !519, line: 1316, baseType: !284, size: 32, offset: 20000)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !518, file: !519, line: 1321, baseType: !118, size: 64, offset: 20032)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !518, file: !519, line: 1325, baseType: !157, size: 32, offset: 20096)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !518, file: !519, line: 1326, baseType: !157, size: 32, offset: 20128)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !518, file: !519, line: 1327, baseType: !157, size: 32, offset: 20160)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !518, file: !519, line: 1328, baseType: !157, size: 32, offset: 20192)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !518, file: !519, line: 1329, baseType: !469, size: 128, align: 64, offset: 20224)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !518, file: !519, line: 1332, baseType: !3268, size: 128, offset: 20352)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3269, line: 51, size: 128, elements: !3270)
!3269 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3270 = !{!3271, !3276, !3277}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3268, file: !3269, line: 60, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3273, line: 7, size: 64, elements: !3274)
!3273 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3274 = !{!3275}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3272, file: !3273, line: 12, baseType: !756, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3268, file: !3269, line: 63, baseType: !371, size: 8, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3268, file: !3269, line: 70, baseType: !371, size: 8, offset: 72)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !518, file: !519, line: 1335, baseType: !2498, size: 64, offset: 20480)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !518, file: !519, line: 1337, baseType: !3280, size: 128, offset: 20544)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3269, line: 39, size: 128, elements: !3281)
!3281 = !{!3282, !3283, !3284}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3280, file: !3269, line: 40, baseType: !1839, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3280, file: !3269, line: 42, baseType: !285, size: 32, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3280, file: !3269, line: 43, baseType: !285, size: 32, offset: 96)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !518, file: !519, line: 1340, baseType: !3286, size: 64, offset: 20672)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !519, line: 69, flags: DIFlagFwdDecl)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !518, file: !519, line: 1351, baseType: !157, size: 32, offset: 20736)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !518, file: !519, line: 1352, baseType: !157, size: 32, offset: 20768)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !518, file: !519, line: 1354, baseType: !118, size: 64, offset: 20800)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !518, file: !519, line: 1364, baseType: !129, size: 64, offset: 20864)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !518, file: !519, line: 1365, baseType: !129, size: 64, offset: 20928)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !518, file: !519, line: 1412, baseType: !118, size: 64, offset: 20992)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !518, file: !519, line: 1453, baseType: !3295, size: 64, offset: 21056)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !519, line: 1453, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !518, file: !519, line: 1457, baseType: !3298, size: 64, offset: 21120)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !106, line: 61, size: 576, elements: !3300)
!3300 = !{!3301, !3302, !3321, !3324, !3325, !3358, !3368}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3299, file: !106, line: 62, baseType: !105, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, scope: !3299, file: !106, line: 64, baseType: !3303, size: 192, offset: 64)
!3303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3299, file: !106, line: 64, size: 192, elements: !3304)
!3304 = !{!3305, !3316}
!3305 = !DIDerivedType(tag: DW_TAG_member, scope: !3303, file: !106, line: 65, baseType: !3306, size: 192)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3303, file: !106, line: 65, size: 192, elements: !3307)
!3307 = !{!3308, !3315}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3306, file: !106, line: 66, baseType: !3309, size: 128)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3310, line: 50, size: 128, elements: !3311)
!3310 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3311 = !{!3312, !3313, !3314}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3309, file: !3310, line: 52, baseType: !118, size: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3309, file: !3310, line: 54, baseType: !7, size: 32, offset: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3309, file: !3310, line: 55, baseType: !7, size: 32, offset: 96)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3306, file: !106, line: 67, baseType: !118, size: 64, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, scope: !3303, file: !106, line: 70, baseType: !3317, size: 192)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3303, file: !106, line: 70, size: 192, elements: !3318)
!3318 = !{!3319, !3320}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3317, file: !106, line: 71, baseType: !469, size: 128, align: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3317, file: !106, line: 72, baseType: !118, size: 64, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3299, file: !106, line: 76, baseType: !3322, size: 64, offset: 256)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !106, line: 76, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3299, file: !106, line: 77, baseType: !118, size: 64, offset: 320)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3299, file: !106, line: 79, baseType: !3326, size: 64, offset: 384)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3310, line: 25, size: 256, elements: !3328)
!3328 = !{!3329, !3335, !3339}
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !3327, file: !3310, line: 26, baseType: !3330, size: 128)
!3330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3327, file: !3310, line: 26, size: 128, elements: !3331)
!3331 = !{!3332, !3334}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3330, file: !3310, line: 27, baseType: !3333, size: 128)
!3333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !1694)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3330, file: !3310, line: 28, baseType: !3333, size: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3327, file: !3310, line: 31, baseType: !3336, size: 64, offset: 128)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3338)
!3338 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3310, line: 23, flags: DIFlagFwdDecl)
!3339 = !DIDerivedType(tag: DW_TAG_member, scope: !3327, file: !3310, line: 33, baseType: !3340, size: 64, offset: 192)
!3340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3327, file: !3310, line: 33, size: 64, elements: !3341)
!3341 = !{!3342, !3348, !3353}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3340, file: !3310, line: 38, baseType: !3343, size: 64)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3340, file: !3310, line: 34, size: 64, elements: !3344)
!3344 = !{!3345, !3346, !3347}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3343, file: !3310, line: 35, baseType: !161, size: 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3343, file: !3310, line: 36, baseType: !215, size: 8, offset: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3343, file: !3310, line: 37, baseType: !215, size: 8, offset: 40)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3340, file: !3310, line: 42, baseType: !3349, size: 16)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3340, file: !3310, line: 39, size: 16, elements: !3350)
!3350 = !{!3351, !3352}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3349, file: !3310, line: 40, baseType: !215, size: 8)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3349, file: !3310, line: 41, baseType: !215, size: 8, offset: 8)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3340, file: !3310, line: 46, baseType: !3354, size: 16)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3340, file: !3310, line: 43, size: 16, elements: !3355)
!3355 = !{!3356, !3357}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3354, file: !3310, line: 44, baseType: !215, size: 8)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3354, file: !3310, line: 45, baseType: !215, size: 8, offset: 8)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3299, file: !106, line: 81, baseType: !3359, size: 64, offset: 448)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !106, line: 85, size: 384, elements: !3361)
!3361 = !{!3362, !3363, !3364, !3365, !3366, !3367}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3360, file: !106, line: 86, baseType: !3322, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3360, file: !106, line: 87, baseType: !118, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3360, file: !106, line: 88, baseType: !118, size: 64, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3360, file: !106, line: 89, baseType: !118, size: 64, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3360, file: !106, line: 90, baseType: !371, size: 8, offset: 256)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3360, file: !106, line: 92, baseType: !3359, size: 64, offset: 320)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3299, file: !106, line: 82, baseType: !7, size: 32, offset: 512)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !518, file: !519, line: 1463, baseType: !3370, offset: 21184)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !519, line: 739, elements: !463)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !518, file: !519, line: 1470, baseType: !469, size: 128, align: 64, offset: 21184)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !518, file: !519, line: 1471, baseType: !148, size: 32, offset: 21312)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !518, file: !519, line: 1472, baseType: !157, size: 32, offset: 21344)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !518, file: !519, line: 1474, baseType: !517, size: 64, offset: 21376)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !518, file: !519, line: 1475, baseType: !3376, size: 320, offset: 21440)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3377, line: 11, size: 320, elements: !3378)
!3377 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!3378 = !{!3379, !3380, !3381, !3386}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3376, file: !3377, line: 16, baseType: !892, size: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3376, file: !3377, line: 17, baseType: !118, size: 64, offset: 128)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3376, file: !3377, line: 18, baseType: !3382, size: 64, offset: 192)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{null, !3385}
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3376, file: !3377, line: 19, baseType: !284, size: 32, offset: 256)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !518, file: !519, line: 1478, baseType: !3388, size: 64, offset: 21760)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3390, line: 49, size: 512, elements: !3391)
!3390 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3391 = !{!3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3401}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3389, file: !3390, line: 50, baseType: !3388, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3389, file: !3390, line: 51, baseType: !121, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3389, file: !3390, line: 52, baseType: !118, size: 64, offset: 128)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3389, file: !3390, line: 53, baseType: !118, size: 64, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3389, file: !3390, line: 54, baseType: !2223, size: 64, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3389, file: !3390, line: 56, baseType: !7, size: 32, offset: 320)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3389, file: !3390, line: 58, baseType: !7, size: 32, offset: 352)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3389, file: !3390, line: 59, baseType: !3400, size: 64, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !120, line: 159, baseType: !129)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3389, file: !3390, line: 60, baseType: !346, size: 64, offset: 448)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !518, file: !519, line: 1482, baseType: !148, size: 32, offset: 21824)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !518, file: !519, line: 1489, baseType: !121, size: 64, offset: 21888)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !518, file: !519, line: 1504, baseType: !121, size: 64, offset: 21952)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !518, file: !519, line: 1505, baseType: !130, size: 64, offset: 22016)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !518, file: !519, line: 1506, baseType: !129, size: 64, offset: 22080)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !518, file: !519, line: 1507, baseType: !130, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !518, file: !519, line: 1508, baseType: !130, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !518, file: !519, line: 1509, baseType: !130, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !518, file: !519, line: 1510, baseType: !469, size: 128, align: 64, offset: 22208)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !518, file: !519, line: 1511, baseType: !157, size: 32, offset: 22336)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !518, file: !519, line: 1515, baseType: !3413, size: 64, offset: 22400)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !534, line: 56, size: 64, elements: !3414)
!3414 = !{!3415}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3413, file: !534, line: 57, baseType: !537, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !518, file: !519, line: 1518, baseType: !3413, size: 64, offset: 22464)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !518, file: !519, line: 1528, baseType: !469, size: 128, align: 64, offset: 22528)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !518, file: !519, line: 1552, baseType: !3419, size: 35328, offset: 23040)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3420, line: 430, size: 35328, elements: !3421)
!3420 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3421 = !{!3422, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3451, !3452, !3453, !3454, !3455, !3456, !3459, !3460, !3461, !3462}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3419, file: !3420, line: 432, baseType: !3423, size: 192)
!3423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3424, size: 192, elements: !876)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3425, line: 16, size: 64, elements: !3426)
!3425 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3424, file: !3425, line: 17, baseType: !222, size: 16)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3424, file: !3425, line: 18, baseType: !222, size: 16, offset: 16)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3424, file: !3425, line: 19, baseType: !222, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3424, file: !3425, line: 19, baseType: !222, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3424, file: !3425, line: 19, baseType: !222, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3424, file: !3425, line: 19, baseType: !222, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3424, file: !3425, line: 19, baseType: !222, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3424, file: !3425, line: 20, baseType: !222, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3424, file: !3425, line: 20, baseType: !222, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3424, file: !3425, line: 20, baseType: !222, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3424, file: !3425, line: 20, baseType: !222, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3424, file: !3425, line: 20, baseType: !222, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3424, file: !3425, line: 20, baseType: !222, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3419, file: !3420, line: 436, baseType: !118, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3419, file: !3420, line: 440, baseType: !224, size: 16, offset: 256)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3419, file: !3420, line: 441, baseType: !224, size: 16, offset: 272)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3419, file: !3420, line: 442, baseType: !224, size: 16, offset: 288)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3419, file: !3420, line: 443, baseType: !224, size: 16, offset: 304)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3419, file: !3420, line: 447, baseType: !118, size: 64, offset: 320)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3419, file: !3420, line: 448, baseType: !118, size: 64, offset: 384)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3419, file: !3420, line: 459, baseType: !3448, size: 256, offset: 448)
!3448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3449, size: 256, elements: !343)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3420, line: 428, flags: DIFlagFwdDecl)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3419, file: !3420, line: 461, baseType: !118, size: 64, offset: 704)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3419, file: !3420, line: 463, baseType: !118, size: 64, offset: 768)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3419, file: !3420, line: 465, baseType: !118, size: 64, offset: 832)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3419, file: !3420, line: 466, baseType: !118, size: 64, offset: 896)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3419, file: !3420, line: 467, baseType: !118, size: 64, offset: 960)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3419, file: !3420, line: 473, baseType: !3457, size: 64, offset: 1024)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3420, line: 10, flags: DIFlagFwdDecl)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3419, file: !3420, line: 480, baseType: !118, size: 64, offset: 1088)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3419, file: !3420, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3419, file: !3420, line: 491, baseType: !284, size: 32, offset: 1184)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3419, file: !3420, line: 501, baseType: !3463, size: 33792, offset: 1536)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3464, line: 448, size: 33792, elements: !3465)
!3464 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3465 = !{!3466, !3467, !3468, !3630, !3631, !3637, !3638}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3463, file: !3464, line: 461, baseType: !7, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3463, file: !3464, line: 468, baseType: !118, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3463, file: !3464, line: 476, baseType: !3469, size: 64, offset: 128)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3464, line: 356, size: 33280, align: 512, elements: !3471)
!3471 = !{!3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3470, file: !3464, line: 358, baseType: !7, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3470, file: !3464, line: 361, baseType: !7, size: 32, offset: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3470, file: !3464, line: 364, baseType: !129, size: 64, offset: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3470, file: !3464, line: 367, baseType: !129, size: 64, offset: 128)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3470, file: !3464, line: 370, baseType: !129, size: 64, offset: 192)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3470, file: !3464, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3470, file: !3464, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3470, file: !3464, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3470, file: !3464, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3470, file: !3464, line: 397, baseType: !3482, size: 32768, offset: 512)
!3482 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3464, line: 348, size: 32768, elements: !3483)
!3483 = !{!3484, !3499, !3536, !3613, !3626}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3482, file: !3464, line: 349, baseType: !3485, size: 896)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3464, line: 12, size: 896, elements: !3486)
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3498}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3485, file: !3464, line: 13, baseType: !284, size: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3485, file: !3464, line: 14, baseType: !284, size: 32, offset: 32)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3485, file: !3464, line: 15, baseType: !284, size: 32, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3485, file: !3464, line: 16, baseType: !284, size: 32, offset: 96)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3485, file: !3464, line: 17, baseType: !284, size: 32, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3485, file: !3464, line: 18, baseType: !284, size: 32, offset: 160)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3485, file: !3464, line: 19, baseType: !284, size: 32, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3485, file: !3464, line: 22, baseType: !3495, size: 640, offset: 224)
!3495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 640, elements: !3496)
!3496 = !{!3497}
!3497 = !DISubrange(count: 20)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3485, file: !3464, line: 25, baseType: !284, size: 32, offset: 864)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3482, file: !3464, line: 350, baseType: !3500, size: 4096, align: 128)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3464, line: 34, size: 4096, align: 128, elements: !3501)
!3501 = !{!3502, !3503, !3504, !3505, !3506, !3521, !3522, !3523, !3525, !3527, !3531}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3500, file: !3464, line: 35, baseType: !222, size: 16)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3500, file: !3464, line: 36, baseType: !222, size: 16, offset: 16)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3500, file: !3464, line: 37, baseType: !222, size: 16, offset: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3500, file: !3464, line: 38, baseType: !222, size: 16, offset: 48)
!3506 = !DIDerivedType(tag: DW_TAG_member, scope: !3500, file: !3464, line: 39, baseType: !3507, size: 128, offset: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3500, file: !3464, line: 39, size: 128, elements: !3508)
!3508 = !{!3509, !3514}
!3509 = !DIDerivedType(tag: DW_TAG_member, scope: !3507, file: !3464, line: 40, baseType: !3510, size: 128)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3507, file: !3464, line: 40, size: 128, elements: !3511)
!3511 = !{!3512, !3513}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3510, file: !3464, line: 41, baseType: !129, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3510, file: !3464, line: 42, baseType: !129, size: 64, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, scope: !3507, file: !3464, line: 44, baseType: !3515, size: 128)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3507, file: !3464, line: 44, size: 128, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3515, file: !3464, line: 45, baseType: !284, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3515, file: !3464, line: 46, baseType: !284, size: 32, offset: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3515, file: !3464, line: 47, baseType: !284, size: 32, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3515, file: !3464, line: 48, baseType: !284, size: 32, offset: 96)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3500, file: !3464, line: 51, baseType: !284, size: 32, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3500, file: !3464, line: 52, baseType: !284, size: 32, offset: 224)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3500, file: !3464, line: 55, baseType: !3524, size: 1024, offset: 256)
!3524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 1024, elements: !1685)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3500, file: !3464, line: 58, baseType: !3526, size: 2048, offset: 1280)
!3526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 2048, elements: !3044)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3500, file: !3464, line: 60, baseType: !3528, size: 384, offset: 3328)
!3528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 384, elements: !3529)
!3529 = !{!3530}
!3530 = !DISubrange(count: 12)
!3531 = !DIDerivedType(tag: DW_TAG_member, scope: !3500, file: !3464, line: 62, baseType: !3532, size: 384, offset: 3712)
!3532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3500, file: !3464, line: 62, size: 384, elements: !3533)
!3533 = !{!3534, !3535}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3532, file: !3464, line: 63, baseType: !3528, size: 384)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3532, file: !3464, line: 64, baseType: !3528, size: 384)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3482, file: !3464, line: 351, baseType: !3537, size: 1088)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3464, line: 79, size: 1088, elements: !3538)
!3538 = !{!3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3612}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3537, file: !3464, line: 80, baseType: !284, size: 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3537, file: !3464, line: 81, baseType: !284, size: 32, offset: 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3537, file: !3464, line: 82, baseType: !284, size: 32, offset: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3537, file: !3464, line: 83, baseType: !284, size: 32, offset: 96)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3537, file: !3464, line: 84, baseType: !284, size: 32, offset: 128)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3537, file: !3464, line: 85, baseType: !284, size: 32, offset: 160)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3537, file: !3464, line: 86, baseType: !284, size: 32, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3537, file: !3464, line: 88, baseType: !3495, size: 640, offset: 224)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3537, file: !3464, line: 89, baseType: !215, size: 8, offset: 864)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3537, file: !3464, line: 90, baseType: !215, size: 8, offset: 872)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3537, file: !3464, line: 91, baseType: !215, size: 8, offset: 880)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3537, file: !3464, line: 92, baseType: !215, size: 8, offset: 888)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3537, file: !3464, line: 93, baseType: !215, size: 8, offset: 896)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3537, file: !3464, line: 94, baseType: !215, size: 8, offset: 904)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3537, file: !3464, line: 95, baseType: !3554, size: 64, offset: 960)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3556, line: 11, size: 128, elements: !3557)
!3556 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3557 = !{!3558, !3559}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3555, file: !3556, line: 12, baseType: !138, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3555, file: !3556, line: 13, baseType: !3560, size: 64, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3562, line: 103, size: 1344, elements: !3563)
!3562 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3592, !3593, !3594}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3561, file: !3562, line: 109, baseType: !118, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3561, file: !3562, line: 110, baseType: !118, size: 64, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3561, file: !3562, line: 111, baseType: !118, size: 64, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3561, file: !3562, line: 112, baseType: !118, size: 64, offset: 192)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3561, file: !3562, line: 113, baseType: !118, size: 64, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3561, file: !3562, line: 114, baseType: !118, size: 64, offset: 320)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3561, file: !3562, line: 117, baseType: !118, size: 64, offset: 384)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3561, file: !3562, line: 118, baseType: !118, size: 64, offset: 448)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3561, file: !3562, line: 119, baseType: !118, size: 64, offset: 512)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3561, file: !3562, line: 120, baseType: !118, size: 64, offset: 576)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3561, file: !3562, line: 121, baseType: !118, size: 64, offset: 640)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3561, file: !3562, line: 122, baseType: !118, size: 64, offset: 704)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3561, file: !3562, line: 123, baseType: !118, size: 64, offset: 768)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3561, file: !3562, line: 124, baseType: !118, size: 64, offset: 832)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3561, file: !3562, line: 125, baseType: !118, size: 64, offset: 896)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3561, file: !3562, line: 139, baseType: !118, size: 64, offset: 960)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3561, file: !3562, line: 142, baseType: !118, size: 64, offset: 1024)
!3581 = !DIDerivedType(tag: DW_TAG_member, scope: !3561, file: !3562, line: 144, baseType: !3582, size: 64, offset: 1088)
!3582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3561, file: !3562, line: 144, size: 64, elements: !3583)
!3583 = !{!3584, !3585, !3586}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3582, file: !3562, line: 146, baseType: !222, size: 16)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3582, file: !3562, line: 148, baseType: !129, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3582, file: !3562, line: 150, baseType: !3587, size: 64)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3562, line: 59, size: 64, elements: !3588)
!3588 = !{!3589, !3590, !3591}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3587, file: !3562, line: 61, baseType: !129, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3587, file: !3562, line: 63, baseType: !129, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3587, file: !3562, line: 65, baseType: !129, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3561, file: !3562, line: 153, baseType: !118, size: 64, offset: 1152)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3561, file: !3562, line: 154, baseType: !118, size: 64, offset: 1216)
!3594 = !DIDerivedType(tag: DW_TAG_member, scope: !3561, file: !3562, line: 156, baseType: !3595, size: 64, offset: 1280)
!3595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3561, file: !3562, line: 156, size: 64, elements: !3596)
!3596 = !{!3597, !3598, !3599}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3595, file: !3562, line: 158, baseType: !222, size: 16)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3595, file: !3562, line: 160, baseType: !129, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3595, file: !3562, line: 162, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3562, line: 69, size: 64, elements: !3601)
!3601 = !{!3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3600, file: !3562, line: 71, baseType: !129, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3600, file: !3562, line: 73, baseType: !129, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3600, file: !3562, line: 75, baseType: !129, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3600, file: !3562, line: 77, baseType: !129, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3600, file: !3562, line: 80, baseType: !129, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3600, file: !3562, line: 83, baseType: !129, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3600, file: !3562, line: 86, baseType: !129, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3600, file: !3562, line: 88, baseType: !129, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3600, file: !3562, line: 93, baseType: !129, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3600, file: !3562, line: 100, baseType: !129, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3537, file: !3464, line: 96, baseType: !284, size: 32, offset: 1024)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3482, file: !3464, line: 352, baseType: !3614, size: 4608, align: 512)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3464, line: 333, size: 4608, align: 512, elements: !3615)
!3615 = !{!3616, !3617, !3624}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3614, file: !3464, line: 334, baseType: !3500, size: 4096, align: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3614, file: !3464, line: 335, baseType: !3618, size: 512, offset: 4096)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3464, line: 312, size: 512, elements: !3619)
!3619 = !{!3620, !3621, !3622}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3618, file: !3464, line: 313, baseType: !129, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3618, file: !3464, line: 314, baseType: !129, size: 64, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3618, file: !3464, line: 315, baseType: !3623, size: 384, offset: 128)
!3623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 384, elements: !307)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3614, file: !3464, line: 336, baseType: !3625, offset: 4608)
!3625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, elements: !914)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3482, file: !3464, line: 353, baseType: !3627, size: 32768)
!3627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 32768, elements: !3628)
!3628 = !{!3629}
!3629 = !DISubrange(count: 4096)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3463, file: !3464, line: 484, baseType: !3469, size: 64, offset: 192)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3463, file: !3464, line: 491, baseType: !3632, size: 128, offset: 256)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3464, line: 404, size: 128, elements: !3633)
!3633 = !{!3634, !3635, !3636}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3632, file: !3464, line: 424, baseType: !129, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3632, file: !3464, line: 432, baseType: !7, size: 32, offset: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3632, file: !3464, line: 440, baseType: !7, size: 32, offset: 96)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3463, file: !3464, line: 498, baseType: !3632, size: 128, offset: 384)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3463, file: !3464, line: 508, baseType: !3470, size: 33280, align: 512, offset: 512)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3641)
!3641 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !170)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3643 = !{!0, !3644, !3646, !3648, !3650, !3652, !3654, !3656, !3658, !3662, !3683, !3685, !3690}
!3644 = !DIGlobalVariableExpression(var: !3645, expr: !DIExpression())
!3645 = distinct !DIGlobalVariable(name: "key_gc_work", scope: !2, file: !3, line: 22, type: !1802, isLocal: false, isDefinition: true)
!3646 = !DIGlobalVariableExpression(var: !3647, expr: !DIExpression())
!3647 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !306, isLocal: true, isDefinition: true)
!3648 = !DIGlobalVariableExpression(var: !3649, expr: !DIExpression())
!3649 = distinct !DIGlobalVariable(name: "key_type_dead", scope: !2, file: !3, line: 43, type: !312, isLocal: false, isDefinition: true)
!3650 = !DIGlobalVariableExpression(var: !3651, expr: !DIExpression())
!3651 = distinct !DIGlobalVariable(name: "key_gc_dead_keytype", scope: !2, file: !3, line: 31, type: !311, isLocal: true, isDefinition: true)
!3652 = !DIGlobalVariableExpression(var: !3653, expr: !DIExpression())
!3653 = distinct !DIGlobalVariable(name: "key_gc_flags", scope: !2, file: !3, line: 33, type: !118, isLocal: true, isDefinition: true)
!3654 = !DIGlobalVariableExpression(var: !3655, expr: !DIExpression())
!3655 = distinct !DIGlobalVariable(name: "key_gc_next_run", scope: !2, file: !3, line: 30, type: !269, isLocal: true, isDefinition: true)
!3656 = !DIGlobalVariableExpression(var: !3657, expr: !DIExpression())
!3657 = distinct !DIGlobalVariable(name: "key_gc_timer", scope: !2, file: !3, line: 28, type: !3376, isLocal: true, isDefinition: true)
!3658 = !DIGlobalVariableExpression(var: !3659, expr: !DIExpression())
!3659 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched29", scope: !3660, file: !3661, line: 112, type: !121, isLocal: true, isDefinition: true)
!3660 = distinct !DISubprogram(name: "might_resched", scope: !3661, file: !3661, line: 110, type: !3041, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3661 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!3662 = !DIGlobalVariableExpression(var: !3663, expr: !DIExpression())
!3663 = distinct !DIGlobalVariable(name: "graveyard", scope: !3664, file: !3, line: 188, type: !167, isLocal: true, isDefinition: true)
!3664 = distinct !DISubprogram(name: "key_garbage_collector", scope: !3, file: !3, line: 186, type: !1809, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3665)
!3665 = !{!3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3676, !3677, !3678, !3679, !3680, !3681, !3682}
!3666 = !DILocalVariable(name: "work", arg: 1, scope: !3664, file: !3, line: 186, type: !1811)
!3667 = !DILocalVariable(name: "cursor", scope: !3664, file: !3, line: 197, type: !178)
!3668 = !DILocalVariable(name: "key", scope: !3664, file: !3, line: 198, type: !144)
!3669 = !DILocalVariable(name: "new_timer", scope: !3664, file: !3, line: 199, type: !269)
!3670 = !DILocalVariable(name: "limit", scope: !3664, file: !3, line: 199, type: !269)
!3671 = !DILocalVariable(name: "expiry", scope: !3664, file: !3, line: 199, type: !269)
!3672 = !DILabel(scope: !3664, name: "continue_scanning", file: !3, line: 224)
!3673 = !DILocalVariable(name: "__mptr", scope: !3674, file: !3, line: 226, type: !121)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 226, column: 9)
!3675 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 225, column: 17)
!3676 = !DILabel(scope: !3675, name: "skip_dead_key", file: !3, line: 269)
!3677 = !DILabel(scope: !3664, name: "contended", file: !3, line: 274)
!3678 = !DILabel(scope: !3664, name: "maybe_resched", file: !3, line: 277)
!3679 = !DILabel(scope: !3664, name: "found_unreferenced_key", file: !3, line: 340)
!3680 = !DILabel(scope: !3664, name: "found_restricted_keyring", file: !3, line: 352)
!3681 = !DILabel(scope: !3664, name: "found_keyring", file: !3, line: 362)
!3682 = !DILabel(scope: !3664, name: "destroy_dead_key", file: !3, line: 370)
!3683 = !DIGlobalVariableExpression(var: !3684, expr: !DIExpression())
!3684 = distinct !DIGlobalVariable(name: "gc_state", scope: !3664, file: !3, line: 189, type: !215, isLocal: true, isDefinition: true)
!3685 = !DIGlobalVariableExpression(var: !3686, expr: !DIExpression())
!3686 = distinct !DIGlobalVariable(scope: null, file: !3, line: 279, type: !3687, isLocal: true, isDefinition: true)
!3687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 152, elements: !3688)
!3688 = !{!3689}
!3689 = !DISubrange(count: 19)
!3690 = !DIGlobalVariableExpression(var: !3691, expr: !DIExpression())
!3691 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__cond_resched185", scope: !3692, file: !519, line: 2104, type: !121, isLocal: true, isDefinition: true)
!3692 = distinct !DISubprogram(name: "_cond_resched", scope: !519, file: !519, line: 2102, type: !3693, scopeLine: 2103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!157}
!3695 = !{i32 7, !"Dwarf Version", i32 5}
!3696 = !{i32 2, !"Debug Info Version", i32 3}
!3697 = !{i32 1, !"wchar_size", i32 2}
!3698 = !{i32 8, !"cf-protection-branch", i32 1}
!3699 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3700 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!3701 = !{i32 1, !"Code Model", i32 2}
!3702 = !{i32 1, !"override-stack-alignment", i32 8}
!3703 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!3704 = !DILocation(line: 186, column: 55, scope: !3664)
!3705 = !DILocation(line: 197, column: 2, scope: !3664)
!3706 = !DILocation(line: 197, column: 18, scope: !3664)
!3707 = !DILocation(line: 198, column: 2, scope: !3664)
!3708 = !DILocation(line: 198, column: 14, scope: !3664)
!3709 = !DILocation(line: 199, column: 2, scope: !3664)
!3710 = !DILocation(line: 199, column: 11, scope: !3664)
!3711 = !DILocation(line: 199, column: 22, scope: !3664)
!3712 = !DILocation(line: 199, column: 29, scope: !3664)
!3713 = !DILocation(line: 201, column: 2, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 201, column: 2)
!3715 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 201, column: 2)
!3716 = !DILocation(line: 201, column: 2, scope: !3715)
!3717 = !DILocation(line: 203, column: 10, scope: !3664)
!3718 = !DILocation(line: 203, column: 8, scope: !3664)
!3719 = !DILocation(line: 206, column: 11, scope: !3664)
!3720 = !DILocation(line: 207, column: 11, scope: !3664)
!3721 = !DILocation(line: 208, column: 6, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 208, column: 6)
!3723 = !DILocation(line: 208, column: 6, scope: !3664)
!3724 = !DILocation(line: 209, column: 12, scope: !3722)
!3725 = !DILocation(line: 209, column: 3, scope: !3722)
!3726 = !DILocation(line: 211, column: 6, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 211, column: 6)
!3728 = !DILocation(line: 211, column: 6, scope: !3664)
!3729 = !DILocation(line: 212, column: 12, scope: !3727)
!3730 = !DILocation(line: 212, column: 3, scope: !3727)
!3731 = !DILocation(line: 213, column: 2, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 213, column: 2)
!3733 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 213, column: 2)
!3734 = !DILocation(line: 213, column: 2, scope: !3733)
!3735 = !DILocation(line: 215, column: 12, scope: !3664)
!3736 = !DILocation(line: 221, column: 2, scope: !3664)
!3737 = !DILocation(line: 222, column: 11, scope: !3664)
!3738 = !DILocation(line: 222, column: 9, scope: !3664)
!3739 = !DILocation(line: 222, column: 2, scope: !3664)
!3740 = !DILocation(line: 224, column: 1, scope: !3664)
!3741 = !DILocation(line: 225, column: 2, scope: !3664)
!3742 = !DILocation(line: 225, column: 9, scope: !3664)
!3743 = !DILocation(line: 226, column: 9, scope: !3674)
!3744 = !DILocation(line: 226, column: 9, scope: !3675)
!3745 = !DILocation(line: 226, column: 7, scope: !3675)
!3746 = !DILocation(line: 227, column: 20, scope: !3675)
!3747 = !DILocation(line: 227, column: 12, scope: !3675)
!3748 = !DILocation(line: 227, column: 10, scope: !3675)
!3749 = !DILocation(line: 229, column: 22, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 229, column: 7)
!3751 = !DILocation(line: 229, column: 27, scope: !3750)
!3752 = !DILocation(line: 229, column: 7, scope: !3750)
!3753 = !DILocation(line: 229, column: 34, scope: !3750)
!3754 = !DILocation(line: 229, column: 7, scope: !3675)
!3755 = !DILocation(line: 230, column: 4, scope: !3750)
!3756 = !DILocation(line: 232, column: 7, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 232, column: 7)
!3758 = !DILocation(line: 232, column: 7, scope: !3675)
!3759 = !DILocation(line: 233, column: 8, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 233, column: 8)
!3761 = distinct !DILexicalBlock(scope: !3757, file: !3, line: 232, column: 51)
!3762 = !DILocation(line: 233, column: 13, scope: !3760)
!3763 = !DILocation(line: 233, column: 21, scope: !3760)
!3764 = !DILocation(line: 233, column: 18, scope: !3760)
!3765 = !DILocation(line: 233, column: 8, scope: !3761)
!3766 = !DILocation(line: 234, column: 14, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 233, column: 42)
!3768 = !DILocation(line: 235, column: 29, scope: !3767)
!3769 = !DILocation(line: 235, column: 34, scope: !3767)
!3770 = !DILocation(line: 235, column: 5, scope: !3767)
!3771 = !DILocation(line: 236, column: 5, scope: !3767)
!3772 = !DILocation(line: 236, column: 10, scope: !3767)
!3773 = !DILocation(line: 236, column: 15, scope: !3767)
!3774 = !DILocation(line: 237, column: 5, scope: !3767)
!3775 = !DILocation(line: 238, column: 15, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3760, file: !3, line: 238, column: 15)
!3777 = !DILocation(line: 238, column: 20, scope: !3776)
!3778 = !DILocation(line: 238, column: 25, scope: !3776)
!3779 = !DILocation(line: 238, column: 46, scope: !3776)
!3780 = !DILocation(line: 239, column: 8, scope: !3776)
!3781 = !DILocation(line: 239, column: 13, scope: !3776)
!3782 = !DILocation(line: 238, column: 15, scope: !3760)
!3783 = !DILocation(line: 240, column: 5, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3776, file: !3, line: 239, column: 28)
!3785 = !DILocation(line: 242, column: 3, scope: !3761)
!3786 = !DILocation(line: 244, column: 12, scope: !3675)
!3787 = !DILocation(line: 244, column: 17, scope: !3675)
!3788 = !DILocation(line: 244, column: 10, scope: !3675)
!3789 = !DILocation(line: 245, column: 7, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 245, column: 7)
!3791 = !DILocation(line: 245, column: 14, scope: !3790)
!3792 = !DILocation(line: 245, column: 7, scope: !3675)
!3793 = !DILocation(line: 246, column: 10, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 246, column: 8)
!3795 = distinct !DILexicalBlock(scope: !3790, file: !3, line: 245, column: 29)
!3796 = !DILocation(line: 246, column: 15, scope: !3794)
!3797 = !DILocation(line: 246, column: 21, scope: !3794)
!3798 = !DILocation(line: 246, column: 27, scope: !3794)
!3799 = !DILocation(line: 246, column: 8, scope: !3795)
!3800 = !DILocation(line: 247, column: 15, scope: !3794)
!3801 = !DILocation(line: 247, column: 12, scope: !3794)
!3802 = !DILocation(line: 247, column: 5, scope: !3794)
!3803 = !DILocation(line: 248, column: 8, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3795, file: !3, line: 248, column: 8)
!3805 = !DILocation(line: 248, column: 17, scope: !3804)
!3806 = !DILocation(line: 248, column: 15, scope: !3804)
!3807 = !DILocation(line: 248, column: 23, scope: !3804)
!3808 = !DILocation(line: 248, column: 26, scope: !3804)
!3809 = !DILocation(line: 248, column: 35, scope: !3804)
!3810 = !DILocation(line: 248, column: 33, scope: !3804)
!3811 = !DILocation(line: 248, column: 8, scope: !3795)
!3812 = !DILocation(line: 249, column: 5, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3814, file: !3, line: 249, column: 5)
!3814 = distinct !DILexicalBlock(scope: !3815, file: !3, line: 249, column: 5)
!3815 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 248, column: 46)
!3816 = !DILocation(line: 249, column: 5, scope: !3814)
!3817 = !DILocation(line: 251, column: 17, scope: !3815)
!3818 = !DILocation(line: 251, column: 22, scope: !3815)
!3819 = !DILocation(line: 251, column: 15, scope: !3815)
!3820 = !DILocation(line: 252, column: 4, scope: !3815)
!3821 = !DILocation(line: 253, column: 3, scope: !3795)
!3822 = !DILocation(line: 255, column: 7, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 255, column: 7)
!3824 = !DILocation(line: 255, column: 7, scope: !3675)
!3825 = !DILocation(line: 256, column: 8, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3823, file: !3, line: 256, column: 8)
!3827 = !DILocation(line: 256, column: 13, scope: !3826)
!3828 = !DILocation(line: 256, column: 21, scope: !3826)
!3829 = !DILocation(line: 256, column: 18, scope: !3826)
!3830 = !DILocation(line: 256, column: 8, scope: !3823)
!3831 = !DILocation(line: 257, column: 14, scope: !3826)
!3832 = !DILocation(line: 257, column: 5, scope: !3826)
!3833 = !DILocation(line: 259, column: 8, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 259, column: 7)
!3835 = !DILocation(line: 259, column: 17, scope: !3834)
!3836 = !DILocation(line: 259, column: 41, scope: !3834)
!3837 = !DILocation(line: 260, column: 7, scope: !3834)
!3838 = !DILocation(line: 259, column: 7, scope: !3675)
!3839 = !DILocation(line: 261, column: 8, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !3, line: 261, column: 8)
!3841 = distinct !DILexicalBlock(scope: !3834, file: !3, line: 260, column: 51)
!3842 = !DILocation(line: 261, column: 13, scope: !3840)
!3843 = !DILocation(line: 261, column: 18, scope: !3840)
!3844 = !DILocation(line: 261, column: 8, scope: !3841)
!3845 = !DILocation(line: 262, column: 5, scope: !3840)
!3846 = !DILocation(line: 263, column: 3, scope: !3841)
!3847 = !DILocation(line: 265, column: 7, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 265, column: 7)
!3849 = !DILocation(line: 265, column: 7, scope: !3675)
!3850 = !DILocation(line: 266, column: 8, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 266, column: 8)
!3852 = !DILocation(line: 266, column: 13, scope: !3851)
!3853 = !DILocation(line: 266, column: 21, scope: !3851)
!3854 = !DILocation(line: 266, column: 18, scope: !3851)
!3855 = !DILocation(line: 266, column: 8, scope: !3848)
!3856 = !DILocation(line: 267, column: 5, scope: !3851)
!3857 = !DILocation(line: 269, column: 2, scope: !3675)
!3858 = !DILocation(line: 270, column: 7, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 270, column: 7)
!3860 = !DILocation(line: 270, column: 43, scope: !3859)
!3861 = !DILocation(line: 270, column: 46, scope: !3859)
!3862 = !DILocation(line: 270, column: 7, scope: !3675)
!3863 = !DILocation(line: 271, column: 4, scope: !3859)
!3864 = distinct !{!3864, !3741, !3865, !3866, !3867}
!3865 = !DILocation(line: 272, column: 2, scope: !3664)
!3866 = !{!"llvm.loop.mustprogress"}
!3867 = !{!"llvm.loop.unroll.disable"}
!3868 = !DILocation(line: 274, column: 1, scope: !3664)
!3869 = !DILocation(line: 275, column: 2, scope: !3664)
!3870 = !DILocation(line: 277, column: 1, scope: !3664)
!3871 = !DILocation(line: 278, column: 6, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 278, column: 6)
!3873 = !DILocation(line: 278, column: 6, scope: !3664)
!3874 = !DILocation(line: 279, column: 3, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 279, column: 3)
!3876 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 278, column: 14)
!3877 = !DILocation(line: 280, column: 3, scope: !3876)
!3878 = !DILocation(line: 281, column: 3, scope: !3876)
!3879 = !DILocation(line: 288, column: 2, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !3, line: 288, column: 2)
!3881 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 288, column: 2)
!3882 = !DILocation(line: 288, column: 2, scope: !3881)
!3883 = !DILocation(line: 290, column: 6, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 290, column: 6)
!3885 = !DILocation(line: 290, column: 16, scope: !3884)
!3886 = !DILocation(line: 290, column: 6, scope: !3664)
!3887 = !DILocation(line: 291, column: 16, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3884, file: !3, line: 290, column: 31)
!3889 = !DILocation(line: 291, column: 13, scope: !3888)
!3890 = !DILocation(line: 292, column: 19, scope: !3888)
!3891 = !DILocation(line: 292, column: 3, scope: !3888)
!3892 = !DILocation(line: 293, column: 2, scope: !3888)
!3893 = !DILocation(line: 295, column: 6, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 295, column: 6)
!3895 = !DILocation(line: 295, column: 49, scope: !3894)
!3896 = !DILocation(line: 296, column: 7, scope: !3894)
!3897 = !DILocation(line: 295, column: 6, scope: !3664)
!3898 = !DILocation(line: 302, column: 3, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3900, file: !3, line: 302, column: 3)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 302, column: 3)
!3901 = distinct !DILexicalBlock(scope: !3894, file: !3, line: 296, column: 31)
!3902 = !DILocation(line: 302, column: 3, scope: !3900)
!3903 = !DILocation(line: 303, column: 3, scope: !3901)
!3904 = !DILocation(line: 304, column: 2, scope: !3901)
!3905 = !DILocation(line: 306, column: 7, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 306, column: 6)
!3907 = !DILocation(line: 306, column: 6, scope: !3664)
!3908 = !DILocation(line: 307, column: 3, scope: !3909)
!3909 = distinct !DILexicalBlock(scope: !3910, file: !3, line: 307, column: 3)
!3910 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 307, column: 3)
!3911 = distinct !DILexicalBlock(scope: !3906, file: !3, line: 306, column: 31)
!3912 = !DILocation(line: 307, column: 3, scope: !3910)
!3913 = !DILocation(line: 308, column: 3, scope: !3911)
!3914 = !DILocation(line: 309, column: 2, scope: !3911)
!3915 = !DILocation(line: 311, column: 6, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 311, column: 6)
!3917 = !DILocation(line: 311, column: 6, scope: !3664)
!3918 = !DILocation(line: 313, column: 9, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3920, file: !3, line: 313, column: 7)
!3920 = distinct !DILexicalBlock(scope: !3916, file: !3, line: 312, column: 31)
!3921 = !DILocation(line: 313, column: 18, scope: !3919)
!3922 = !DILocation(line: 313, column: 7, scope: !3920)
!3923 = !DILocation(line: 317, column: 4, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3925, file: !3, line: 317, column: 4)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !3, line: 317, column: 4)
!3926 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 313, column: 44)
!3927 = !DILocation(line: 317, column: 4, scope: !3925)
!3928 = !DILocation(line: 318, column: 13, scope: !3926)
!3929 = !DILocation(line: 319, column: 13, scope: !3926)
!3930 = !DILocation(line: 320, column: 3, scope: !3926)
!3931 = !DILocation(line: 321, column: 13, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 320, column: 10)
!3933 = !DILocation(line: 323, column: 2, scope: !3920)
!3934 = !DILocation(line: 325, column: 6, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 325, column: 6)
!3936 = !DILocation(line: 325, column: 6, scope: !3664)
!3937 = !DILocation(line: 326, column: 3, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3939, file: !3, line: 326, column: 3)
!3939 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 326, column: 3)
!3940 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 325, column: 50)
!3941 = !DILocation(line: 326, column: 3, scope: !3939)
!3942 = !DILocation(line: 327, column: 3, scope: !3940)
!3943 = !DILocation(line: 327, column: 3, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 327, column: 3)
!3945 = !DILocation(line: 327, column: 3, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3944, file: !3, line: 327, column: 3)
!3947 = !{i64 2154191263}
!3948 = !DILocation(line: 328, column: 3, scope: !3940)
!3949 = !DILocation(line: 329, column: 3, scope: !3940)
!3950 = !DILocation(line: 330, column: 2, scope: !3940)
!3951 = !DILocation(line: 332, column: 6, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 332, column: 6)
!3953 = !DILocation(line: 332, column: 15, scope: !3952)
!3954 = !DILocation(line: 332, column: 6, scope: !3664)
!3955 = !DILocation(line: 333, column: 3, scope: !3952)
!3956 = !DILocation(line: 334, column: 2, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3958, file: !3, line: 334, column: 2)
!3958 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 334, column: 2)
!3959 = !DILocation(line: 334, column: 2, scope: !3958)
!3960 = !DILocation(line: 380, column: 1, scope: !3664)
!3961 = !DILocation(line: 340, column: 1, scope: !3664)
!3962 = !DILocation(line: 341, column: 2, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !3, line: 341, column: 2)
!3964 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 341, column: 2)
!3965 = !DILocation(line: 341, column: 2, scope: !3964)
!3966 = !DILocation(line: 342, column: 12, scope: !3664)
!3967 = !DILocation(line: 342, column: 17, scope: !3664)
!3968 = !DILocation(line: 342, column: 2, scope: !3664)
!3969 = !DILocation(line: 343, column: 2, scope: !3664)
!3970 = !DILocation(line: 345, column: 17, scope: !3664)
!3971 = !DILocation(line: 345, column: 22, scope: !3664)
!3972 = !DILocation(line: 345, column: 2, scope: !3664)
!3973 = !DILocation(line: 346, column: 11, scope: !3664)
!3974 = !DILocation(line: 347, column: 2, scope: !3664)
!3975 = !DILocation(line: 352, column: 1, scope: !3664)
!3976 = !DILocation(line: 353, column: 2, scope: !3664)
!3977 = !DILocation(line: 354, column: 25, scope: !3664)
!3978 = !DILocation(line: 354, column: 30, scope: !3664)
!3979 = !DILocation(line: 354, column: 2, scope: !3664)
!3980 = !DILocation(line: 355, column: 2, scope: !3664)
!3981 = !DILocation(line: 362, column: 1, scope: !3664)
!3982 = !DILocation(line: 363, column: 2, scope: !3664)
!3983 = !DILocation(line: 364, column: 13, scope: !3664)
!3984 = !DILocation(line: 364, column: 18, scope: !3664)
!3985 = !DILocation(line: 364, column: 2, scope: !3664)
!3986 = !DILocation(line: 365, column: 2, scope: !3664)
!3987 = !DILocation(line: 370, column: 1, scope: !3664)
!3988 = !DILocation(line: 371, column: 2, scope: !3664)
!3989 = !DILocation(line: 372, column: 2, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3991, file: !3, line: 372, column: 2)
!3991 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 372, column: 2)
!3992 = !DILocation(line: 372, column: 2, scope: !3991)
!3993 = !DILocation(line: 373, column: 14, scope: !3664)
!3994 = !DILocation(line: 373, column: 19, scope: !3664)
!3995 = !DILocation(line: 373, column: 2, scope: !3664)
!3996 = !DILocation(line: 374, column: 2, scope: !3664)
!3997 = !DILocation(line: 374, column: 7, scope: !3664)
!3998 = !DILocation(line: 374, column: 12, scope: !3664)
!3999 = !DILocation(line: 375, column: 6, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3664, file: !3, line: 375, column: 6)
!4001 = !DILocation(line: 375, column: 27, scope: !4000)
!4002 = !DILocation(line: 375, column: 6, scope: !3664)
!4003 = !DILocation(line: 376, column: 3, scope: !4000)
!4004 = !DILocation(line: 376, column: 24, scope: !4000)
!4005 = !DILocation(line: 376, column: 32, scope: !4000)
!4006 = !DILocation(line: 377, column: 10, scope: !3664)
!4007 = !DILocation(line: 377, column: 15, scope: !3664)
!4008 = !DILocation(line: 377, column: 2, scope: !3664)
!4009 = !DILocation(line: 378, column: 12, scope: !3664)
!4010 = !DILocation(line: 378, column: 17, scope: !3664)
!4011 = !DILocation(line: 378, column: 2, scope: !3664)
!4012 = !DILocation(line: 379, column: 2, scope: !3664)
!4013 = distinct !DISubprogram(name: "key_schedule_gc", scope: !3, file: !3, line: 51, type: !4014, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4016)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{null, !269}
!4016 = !{!4017, !4018, !4019}
!4017 = !DILocalVariable(name: "gc_at", arg: 1, scope: !4013, file: !3, line: 51, type: !269)
!4018 = !DILocalVariable(name: "expires", scope: !4013, file: !3, line: 53, type: !118)
!4019 = !DILocalVariable(name: "now", scope: !4013, file: !3, line: 54, type: !269)
!4020 = !DILocation(line: 51, column: 31, scope: !4013)
!4021 = !DILocation(line: 53, column: 2, scope: !4013)
!4022 = !DILocation(line: 53, column: 16, scope: !4013)
!4023 = !DILocation(line: 54, column: 2, scope: !4013)
!4024 = !DILocation(line: 54, column: 11, scope: !4013)
!4025 = !DILocation(line: 54, column: 17, scope: !4013)
!4026 = !DILocation(line: 56, column: 2, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4028, file: !3, line: 56, column: 2)
!4028 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 56, column: 2)
!4029 = !DILocation(line: 56, column: 2, scope: !4028)
!4030 = !DILocation(line: 58, column: 6, scope: !4031)
!4031 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 58, column: 6)
!4032 = !DILocation(line: 58, column: 15, scope: !4031)
!4033 = !DILocation(line: 58, column: 12, scope: !4031)
!4034 = !DILocation(line: 58, column: 19, scope: !4031)
!4035 = !DILocation(line: 58, column: 22, scope: !4031)
!4036 = !DILocation(line: 58, column: 6, scope: !4013)
!4037 = !DILocation(line: 59, column: 3, scope: !4038)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !3, line: 59, column: 3)
!4039 = distinct !DILexicalBlock(scope: !4040, file: !3, line: 59, column: 3)
!4040 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 58, column: 68)
!4041 = !DILocation(line: 59, column: 3, scope: !4039)
!4042 = !DILocation(line: 60, column: 3, scope: !4040)
!4043 = !DILocation(line: 61, column: 2, scope: !4040)
!4044 = !DILocation(line: 61, column: 13, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 61, column: 13)
!4046 = !DILocation(line: 61, column: 21, scope: !4045)
!4047 = !DILocation(line: 61, column: 19, scope: !4045)
!4048 = !DILocation(line: 61, column: 13, scope: !4031)
!4049 = !DILocation(line: 62, column: 3, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4051, file: !3, line: 62, column: 3)
!4051 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 62, column: 3)
!4052 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 61, column: 38)
!4053 = !DILocation(line: 62, column: 3, scope: !4051)
!4054 = !DILocation(line: 63, column: 21, scope: !4052)
!4055 = !DILocation(line: 63, column: 19, scope: !4052)
!4056 = !DILocation(line: 64, column: 13, scope: !4052)
!4057 = !DILocation(line: 64, column: 24, scope: !4052)
!4058 = !DILocation(line: 64, column: 32, scope: !4052)
!4059 = !DILocation(line: 64, column: 30, scope: !4052)
!4060 = !DILocation(line: 64, column: 37, scope: !4052)
!4061 = !DILocation(line: 64, column: 21, scope: !4052)
!4062 = !DILocation(line: 64, column: 11, scope: !4052)
!4063 = !DILocation(line: 65, column: 28, scope: !4052)
!4064 = !DILocation(line: 65, column: 3, scope: !4052)
!4065 = !DILocation(line: 66, column: 2, scope: !4052)
!4066 = !DILocation(line: 67, column: 1, scope: !4013)
!4067 = !DISubprogram(name: "ktime_get_real_seconds", scope: !4068, file: !4068, line: 54, type: !4069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4068 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!269}
!4071 = distinct !DISubprogram(name: "const_test_bit", scope: !4072, file: !4072, line: 166, type: !4073, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4075)
!4072 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!371, !118, !139}
!4075 = !{!4076, !4077, !4078, !4079, !4080}
!4076 = !DILocalVariable(name: "nr", arg: 1, scope: !4071, file: !4072, line: 166, type: !118)
!4077 = !DILocalVariable(name: "addr", arg: 2, scope: !4071, file: !4072, line: 166, type: !139)
!4078 = !DILocalVariable(name: "p", scope: !4071, file: !4072, line: 168, type: !122)
!4079 = !DILocalVariable(name: "mask", scope: !4071, file: !4072, line: 169, type: !118)
!4080 = !DILocalVariable(name: "val", scope: !4071, file: !4072, line: 170, type: !118)
!4081 = !DILocation(line: 166, column: 30, scope: !4071)
!4082 = !DILocation(line: 166, column: 64, scope: !4071)
!4083 = !DILocation(line: 168, column: 2, scope: !4071)
!4084 = !DILocation(line: 168, column: 23, scope: !4071)
!4085 = !DILocation(line: 168, column: 50, scope: !4071)
!4086 = !DILocation(line: 168, column: 57, scope: !4071)
!4087 = !DILocation(line: 168, column: 55, scope: !4071)
!4088 = !DILocation(line: 169, column: 2, scope: !4071)
!4089 = !DILocation(line: 169, column: 16, scope: !4071)
!4090 = !DILocation(line: 169, column: 23, scope: !4071)
!4091 = !DILocation(line: 170, column: 2, scope: !4071)
!4092 = !DILocation(line: 170, column: 16, scope: !4071)
!4093 = !DILocation(line: 170, column: 23, scope: !4071)
!4094 = !DILocation(line: 170, column: 22, scope: !4071)
!4095 = !DILocation(line: 172, column: 12, scope: !4071)
!4096 = !DILocation(line: 172, column: 18, scope: !4071)
!4097 = !DILocation(line: 172, column: 16, scope: !4071)
!4098 = !DILocation(line: 172, column: 10, scope: !4071)
!4099 = !DILocation(line: 172, column: 9, scope: !4071)
!4100 = !DILocation(line: 173, column: 1, scope: !4071)
!4101 = !DILocation(line: 172, column: 2, scope: !4071)
!4102 = distinct !DISubprogram(name: "_test_bit", scope: !4103, file: !4103, line: 139, type: !4073, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4104)
!4103 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4104 = !{!4105, !4106}
!4105 = !DILocalVariable(name: "nr", arg: 1, scope: !4102, file: !4103, line: 139, type: !118)
!4106 = !DILocalVariable(name: "addr", arg: 2, scope: !4102, file: !4103, line: 139, type: !139)
!4107 = !DILocation(line: 139, column: 25, scope: !4102)
!4108 = !DILocation(line: 139, column: 59, scope: !4102)
!4109 = !DILocation(line: 141, column: 25, scope: !4102)
!4110 = !DILocation(line: 141, column: 32, scope: !4102)
!4111 = !DILocation(line: 141, column: 30, scope: !4102)
!4112 = !DILocation(line: 141, column: 2, scope: !4102)
!4113 = !DILocation(line: 142, column: 23, scope: !4102)
!4114 = !DILocation(line: 142, column: 27, scope: !4102)
!4115 = !DILocation(line: 142, column: 9, scope: !4102)
!4116 = !DILocation(line: 142, column: 2, scope: !4102)
!4117 = distinct !DISubprogram(name: "schedule_work", scope: !19, file: !19, line: 621, type: !4118, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4120)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!371, !1811}
!4120 = !{!4121}
!4121 = !DILocalVariable(name: "work", arg: 1, scope: !4117, file: !19, line: 621, type: !1811)
!4122 = !DILocation(line: 621, column: 54, scope: !4117)
!4123 = !DILocation(line: 623, column: 20, scope: !4117)
!4124 = !DILocation(line: 623, column: 31, scope: !4117)
!4125 = !DILocation(line: 623, column: 9, scope: !4117)
!4126 = !DILocation(line: 623, column: 2, scope: !4117)
!4127 = !DISubprogram(name: "mod_timer", scope: !3377, file: !3377, line: 172, type: !4128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!157, !3385, !118}
!4130 = distinct !DISubprogram(name: "key_set_expiry", scope: !3, file: !3, line: 72, type: !4131, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4133)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{null, !144, !269}
!4133 = !{!4134, !4135}
!4134 = !DILocalVariable(name: "key", arg: 1, scope: !4130, file: !3, line: 72, type: !144)
!4135 = !DILocalVariable(name: "expiry", arg: 2, scope: !4130, file: !3, line: 72, type: !269)
!4136 = !DILocation(line: 72, column: 33, scope: !4130)
!4137 = !DILocation(line: 72, column: 47, scope: !4130)
!4138 = !DILocation(line: 74, column: 16, scope: !4130)
!4139 = !DILocation(line: 74, column: 2, scope: !4130)
!4140 = !DILocation(line: 74, column: 7, scope: !4130)
!4141 = !DILocation(line: 74, column: 14, scope: !4130)
!4142 = !DILocation(line: 75, column: 6, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4130, file: !3, line: 75, column: 6)
!4144 = !DILocation(line: 75, column: 13, scope: !4143)
!4145 = !DILocation(line: 75, column: 6, scope: !4130)
!4146 = !DILocation(line: 76, column: 9, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 76, column: 7)
!4148 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 75, column: 28)
!4149 = !DILocation(line: 76, column: 14, scope: !4147)
!4150 = !DILocation(line: 76, column: 20, scope: !4147)
!4151 = !DILocation(line: 76, column: 26, scope: !4147)
!4152 = !DILocation(line: 76, column: 7, scope: !4148)
!4153 = !DILocation(line: 77, column: 14, scope: !4147)
!4154 = !DILocation(line: 77, column: 11, scope: !4147)
!4155 = !DILocation(line: 77, column: 4, scope: !4147)
!4156 = !DILocation(line: 78, column: 19, scope: !4148)
!4157 = !DILocation(line: 78, column: 3, scope: !4148)
!4158 = !DILocation(line: 79, column: 2, scope: !4148)
!4159 = !DILocation(line: 80, column: 1, scope: !4130)
!4160 = distinct !DISubprogram(name: "key_schedule_gc_links", scope: !3, file: !3, line: 85, type: !3041, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4161 = !DILocation(line: 87, column: 2, scope: !4160)
!4162 = !DILocation(line: 88, column: 2, scope: !4160)
!4163 = !DILocation(line: 89, column: 1, scope: !4160)
!4164 = distinct !DISubprogram(name: "set_bit", scope: !4165, file: !4165, line: 26, type: !4166, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4169)
!4165 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!4166 = !DISubroutineType(types: !4167)
!4167 = !{null, !138, !4168}
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!4169 = !{!4170, !4171}
!4170 = !DILocalVariable(name: "nr", arg: 1, scope: !4164, file: !4165, line: 26, type: !138)
!4171 = !DILocalVariable(name: "addr", arg: 2, scope: !4164, file: !4165, line: 26, type: !4168)
!4172 = !DILocation(line: 26, column: 42, scope: !4164)
!4173 = !DILocation(line: 26, column: 70, scope: !4164)
!4174 = !DILocation(line: 28, column: 26, scope: !4164)
!4175 = !DILocation(line: 28, column: 33, scope: !4164)
!4176 = !DILocation(line: 28, column: 31, scope: !4164)
!4177 = !DILocation(line: 28, column: 2, scope: !4164)
!4178 = !DILocation(line: 29, column: 15, scope: !4164)
!4179 = !DILocation(line: 29, column: 19, scope: !4164)
!4180 = !DILocation(line: 29, column: 2, scope: !4164)
!4181 = !DILocation(line: 30, column: 1, scope: !4164)
!4182 = distinct !DISubprogram(name: "key_gc_keytype", scope: !3, file: !3, line: 112, type: !4183, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4185)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{null, !311}
!4185 = !{!4186}
!4186 = !DILocalVariable(name: "ktype", arg: 1, scope: !4182, file: !3, line: 112, type: !311)
!4187 = !DILocation(line: 112, column: 38, scope: !4182)
!4188 = !DILocation(line: 114, column: 2, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4190, file: !3, line: 114, column: 2)
!4190 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 114, column: 2)
!4191 = !DILocation(line: 114, column: 2, scope: !4190)
!4192 = !DILocation(line: 116, column: 24, scope: !4182)
!4193 = !DILocation(line: 116, column: 22, scope: !4182)
!4194 = !DILocation(line: 117, column: 2, scope: !4182)
!4195 = !DILocation(line: 118, column: 2, scope: !4182)
!4196 = !DILocation(line: 118, column: 2, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 118, column: 2)
!4198 = !DILocation(line: 118, column: 2, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4197, file: !3, line: 118, column: 2)
!4200 = !{i64 2154184953}
!4201 = !DILocation(line: 119, column: 2, scope: !4182)
!4202 = !DILocation(line: 121, column: 2, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !3, line: 121, column: 2)
!4204 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 121, column: 2)
!4205 = !DILocation(line: 121, column: 2, scope: !4204)
!4206 = !DILocation(line: 122, column: 2, scope: !4182)
!4207 = !DILocation(line: 124, column: 2, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4209, file: !3, line: 124, column: 2)
!4209 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 124, column: 2)
!4210 = !DILocation(line: 124, column: 2, scope: !4209)
!4211 = !DILocation(line: 125, column: 2, scope: !4182)
!4212 = !DILocation(line: 128, column: 22, scope: !4182)
!4213 = !DILocation(line: 129, column: 2, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 129, column: 2)
!4215 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 129, column: 2)
!4216 = !DILocation(line: 129, column: 2, scope: !4215)
!4217 = !DILocation(line: 130, column: 1, scope: !4182)
!4218 = distinct !DISubprogram(name: "wait_on_bit", scope: !4219, file: !4219, line: 71, type: !4220, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4222)
!4219 = !DIFile(filename: "./include/linux/wait_bit.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ef5555205db8da6167c7f65e9d04af17")
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!157, !132, !157, !7}
!4222 = !{!4223, !4224, !4225}
!4223 = !DILocalVariable(name: "word", arg: 1, scope: !4218, file: !4219, line: 71, type: !132)
!4224 = !DILocalVariable(name: "bit", arg: 2, scope: !4218, file: !4219, line: 71, type: !157)
!4225 = !DILocalVariable(name: "mode", arg: 3, scope: !4218, file: !4219, line: 71, type: !7)
!4226 = !DILocation(line: 71, column: 28, scope: !4218)
!4227 = !DILocation(line: 71, column: 38, scope: !4218)
!4228 = !DILocation(line: 71, column: 52, scope: !4218)
!4229 = !DILocation(line: 73, column: 2, scope: !4218)
!4230 = !DILocation(line: 73, column: 2, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4218, file: !4219, line: 73, column: 2)
!4232 = !DILocation(line: 74, column: 7, scope: !4233)
!4233 = distinct !DILexicalBlock(scope: !4218, file: !4219, line: 74, column: 6)
!4234 = !DILocation(line: 74, column: 6, scope: !4218)
!4235 = !DILocation(line: 75, column: 3, scope: !4233)
!4236 = !DILocation(line: 76, column: 33, scope: !4218)
!4237 = !DILocation(line: 76, column: 39, scope: !4218)
!4238 = !DILocation(line: 78, column: 12, scope: !4218)
!4239 = !DILocation(line: 76, column: 9, scope: !4218)
!4240 = !DILocation(line: 76, column: 2, scope: !4218)
!4241 = !DILocation(line: 79, column: 1, scope: !4218)
!4242 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4243, file: !4243, line: 66, type: !4244, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4249)
!4243 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4244 = !DISubroutineType(types: !4245)
!4245 = !{null, !4246, !319}
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4248)
!4248 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4249 = !{!4250, !4251}
!4250 = !DILocalVariable(name: "v", arg: 1, scope: !4242, file: !4243, line: 66, type: !4246)
!4251 = !DILocalVariable(name: "size", arg: 2, scope: !4242, file: !4243, line: 66, type: !319)
!4252 = !DILocation(line: 66, column: 73, scope: !4242)
!4253 = !DILocation(line: 66, column: 83, scope: !4242)
!4254 = !DILocation(line: 68, column: 19, scope: !4242)
!4255 = !DILocation(line: 68, column: 22, scope: !4242)
!4256 = !DILocation(line: 68, column: 2, scope: !4242)
!4257 = !DILocation(line: 69, column: 2, scope: !4242)
!4258 = !DILocation(line: 70, column: 1, scope: !4242)
!4259 = distinct !DISubprogram(name: "arch_test_bit", scope: !4260, file: !4260, line: 237, type: !4073, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4261)
!4260 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4261 = !{!4262, !4263}
!4262 = !DILocalVariable(name: "nr", arg: 1, scope: !4259, file: !4260, line: 237, type: !118)
!4263 = !DILocalVariable(name: "addr", arg: 2, scope: !4259, file: !4260, line: 237, type: !139)
!4264 = !DILocation(line: 237, column: 29, scope: !4259)
!4265 = !DILocation(line: 237, column: 63, scope: !4259)
!4266 = !DILocation(line: 239, column: 30, scope: !4259)
!4267 = !DILocation(line: 239, column: 9, scope: !4259)
!4268 = !DILocation(line: 239, column: 54, scope: !4259)
!4269 = !DILocation(line: 239, column: 58, scope: !4259)
!4270 = !DILocation(line: 239, column: 36, scope: !4259)
!4271 = !DILocation(line: 240, column: 26, scope: !4259)
!4272 = !DILocation(line: 240, column: 30, scope: !4259)
!4273 = !DILocation(line: 240, column: 8, scope: !4259)
!4274 = !DILocation(line: 239, column: 2, scope: !4259)
!4275 = distinct !DISubprogram(name: "kasan_check_read", scope: !4276, file: !4276, line: 40, type: !4277, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4279)
!4276 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!371, !4246, !7}
!4279 = !{!4280, !4281}
!4280 = !DILocalVariable(name: "p", arg: 1, scope: !4275, file: !4276, line: 40, type: !4246)
!4281 = !DILocalVariable(name: "size", arg: 2, scope: !4275, file: !4276, line: 40, type: !7)
!4282 = !DILocation(line: 40, column: 58, scope: !4275)
!4283 = !DILocation(line: 40, column: 74, scope: !4275)
!4284 = !DILocation(line: 42, column: 2, scope: !4275)
!4285 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4286, file: !4286, line: 229, type: !4287, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4289)
!4286 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4287 = !DISubroutineType(types: !4288)
!4288 = !{null, !4246, !319, !157}
!4289 = !{!4290, !4291, !4292}
!4290 = !DILocalVariable(name: "ptr", arg: 1, scope: !4285, file: !4286, line: 229, type: !4246)
!4291 = !DILocalVariable(name: "size", arg: 2, scope: !4285, file: !4286, line: 229, type: !319)
!4292 = !DILocalVariable(name: "type", arg: 3, scope: !4285, file: !4286, line: 230, type: !157)
!4293 = !DILocation(line: 229, column: 60, scope: !4285)
!4294 = !DILocation(line: 229, column: 72, scope: !4285)
!4295 = !DILocation(line: 230, column: 15, scope: !4285)
!4296 = !DILocation(line: 230, column: 23, scope: !4285)
!4297 = distinct !DISubprogram(name: "constant_test_bit", scope: !4260, file: !4260, line: 204, type: !4298, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4300)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!371, !138, !139}
!4300 = !{!4301, !4302}
!4301 = !DILocalVariable(name: "nr", arg: 1, scope: !4297, file: !4260, line: 204, type: !138)
!4302 = !DILocalVariable(name: "addr", arg: 2, scope: !4297, file: !4260, line: 204, type: !139)
!4303 = !DILocation(line: 204, column: 52, scope: !4297)
!4304 = !DILocation(line: 204, column: 86, scope: !4297)
!4305 = !DILocation(line: 206, column: 19, scope: !4297)
!4306 = !DILocation(line: 206, column: 22, scope: !4297)
!4307 = !DILocation(line: 206, column: 15, scope: !4297)
!4308 = !DILocation(line: 207, column: 4, scope: !4297)
!4309 = !DILocation(line: 207, column: 9, scope: !4297)
!4310 = !DILocation(line: 207, column: 12, scope: !4297)
!4311 = !DILocation(line: 206, column: 44, scope: !4297)
!4312 = !DILocation(line: 207, column: 37, scope: !4297)
!4313 = !DILocation(line: 206, column: 2, scope: !4297)
!4314 = distinct !DISubprogram(name: "variable_test_bit", scope: !4260, file: !4260, line: 224, type: !4298, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4315)
!4315 = !{!4316, !4317, !4318}
!4316 = !DILocalVariable(name: "nr", arg: 1, scope: !4314, file: !4260, line: 224, type: !138)
!4317 = !DILocalVariable(name: "addr", arg: 2, scope: !4314, file: !4260, line: 224, type: !139)
!4318 = !DILocalVariable(name: "oldbit", scope: !4314, file: !4260, line: 226, type: !371)
!4319 = !DILocation(line: 224, column: 52, scope: !4314)
!4320 = !DILocation(line: 224, column: 86, scope: !4314)
!4321 = !DILocation(line: 226, column: 2, scope: !4314)
!4322 = !DILocation(line: 226, column: 7, scope: !4314)
!4323 = !DILocation(line: 231, column: 33, scope: !4314)
!4324 = !DILocation(line: 231, column: 46, scope: !4314)
!4325 = !DILocation(line: 228, column: 2, scope: !4314)
!4326 = !{i64 2148096628, i64 2148096702}
!4327 = !DILocation(line: 233, column: 9, scope: !4314)
!4328 = !{i8 0, i8 2}
!4329 = !DILocation(line: 234, column: 1, scope: !4314)
!4330 = !DILocation(line: 233, column: 2, scope: !4314)
!4331 = distinct !DISubprogram(name: "queue_work", scope: !19, file: !19, line: 559, type: !4332, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4334)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!371, !1780, !1811}
!4334 = !{!4335, !4336}
!4335 = !DILocalVariable(name: "wq", arg: 1, scope: !4331, file: !19, line: 559, type: !1780)
!4336 = !DILocalVariable(name: "work", arg: 2, scope: !4331, file: !19, line: 560, type: !1811)
!4337 = !DILocation(line: 559, column: 56, scope: !4331)
!4338 = !DILocation(line: 560, column: 30, scope: !4331)
!4339 = !DILocation(line: 562, column: 41, scope: !4331)
!4340 = !DILocation(line: 562, column: 45, scope: !4331)
!4341 = !DILocation(line: 562, column: 9, scope: !4331)
!4342 = !DILocation(line: 562, column: 2, scope: !4331)
!4343 = !DISubprogram(name: "queue_work_on", scope: !19, file: !19, line: 496, type: !4344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!371, !157, !1780, !1811}
!4346 = distinct !DISubprogram(name: "key_gc_timer_func", scope: !3, file: !3, line: 95, type: !3383, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4347)
!4347 = !{!4348}
!4348 = !DILocalVariable(name: "unused", arg: 1, scope: !4346, file: !3, line: 95, type: !3385)
!4349 = !DILocation(line: 95, column: 50, scope: !4346)
!4350 = !DILocation(line: 97, column: 2, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 97, column: 2)
!4352 = distinct !DILexicalBlock(scope: !4346, file: !3, line: 97, column: 2)
!4353 = !DILocation(line: 97, column: 2, scope: !4352)
!4354 = !DILocation(line: 98, column: 18, scope: !4346)
!4355 = !DILocation(line: 99, column: 2, scope: !4346)
!4356 = !DILocation(line: 100, column: 1, scope: !4346)
!4357 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4243, file: !4243, line: 80, type: !4244, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4358)
!4358 = !{!4359, !4360}
!4359 = !DILocalVariable(name: "v", arg: 1, scope: !4357, file: !4243, line: 80, type: !4246)
!4360 = !DILocalVariable(name: "size", arg: 2, scope: !4357, file: !4243, line: 80, type: !319)
!4361 = !DILocation(line: 80, column: 74, scope: !4357)
!4362 = !DILocation(line: 80, column: 84, scope: !4357)
!4363 = !DILocation(line: 82, column: 20, scope: !4357)
!4364 = !DILocation(line: 82, column: 23, scope: !4357)
!4365 = !DILocation(line: 82, column: 2, scope: !4357)
!4366 = !DILocation(line: 83, column: 2, scope: !4357)
!4367 = !DILocation(line: 84, column: 1, scope: !4357)
!4368 = distinct !DISubprogram(name: "arch_set_bit", scope: !4260, file: !4260, line: 52, type: !4166, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4369)
!4369 = !{!4370, !4371}
!4370 = !DILocalVariable(name: "nr", arg: 1, scope: !4368, file: !4260, line: 52, type: !138)
!4371 = !DILocalVariable(name: "addr", arg: 2, scope: !4368, file: !4260, line: 52, type: !4168)
!4372 = !DILocation(line: 52, column: 19, scope: !4368)
!4373 = !DILocation(line: 52, column: 47, scope: !4368)
!4374 = !DILocation(line: 54, column: 27, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4368, file: !4260, line: 54, column: 6)
!4376 = !DILocation(line: 54, column: 6, scope: !4375)
!4377 = !DILocation(line: 54, column: 6, scope: !4368)
!4378 = !DILocation(line: 56, column: 6, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4375, file: !4260, line: 54, column: 32)
!4380 = !DILocation(line: 57, column: 12, scope: !4379)
!4381 = !DILocation(line: 55, column: 3, scope: !4379)
!4382 = !{i64 2148083016, i64 2148083055, i64 2148083076, i64 2148083113, i64 2148083136, i64 2148083006}
!4383 = !DILocation(line: 59, column: 2, scope: !4379)
!4384 = !DILocation(line: 61, column: 8, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4375, file: !4260, line: 59, column: 9)
!4386 = !DILocation(line: 61, column: 32, scope: !4385)
!4387 = !DILocation(line: 60, column: 3, scope: !4385)
!4388 = !{i64 2148083301, i64 2148083340, i64 2148083361, i64 2148083398, i64 2148083421, i64 2148083291}
!4389 = !DILocation(line: 63, column: 1, scope: !4368)
!4390 = distinct !DISubprogram(name: "kasan_check_write", scope: !4276, file: !4276, line: 44, type: !4277, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4391)
!4391 = !{!4392, !4393}
!4392 = !DILocalVariable(name: "p", arg: 1, scope: !4390, file: !4276, line: 44, type: !4246)
!4393 = !DILocalVariable(name: "size", arg: 2, scope: !4390, file: !4276, line: 44, type: !7)
!4394 = !DILocation(line: 44, column: 59, scope: !4390)
!4395 = !DILocation(line: 44, column: 75, scope: !4390)
!4396 = !DILocation(line: 46, column: 2, scope: !4390)
!4397 = !DILocation(line: 112, column: 2, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !3660, file: !3661, line: 112, column: 2)
!4399 = !DILocation(line: 112, column: 2, scope: !3660)
!4400 = !DILocation(line: 113, column: 1, scope: !3660)
!4401 = distinct !DISubprogram(name: "generic_test_bit_acquire", scope: !4072, file: !4072, line: 137, type: !4073, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4402)
!4402 = !{!4403, !4404, !4405, !4406}
!4403 = !DILocalVariable(name: "nr", arg: 1, scope: !4401, file: !4072, line: 137, type: !118)
!4404 = !DILocalVariable(name: "addr", arg: 2, scope: !4401, file: !4072, line: 137, type: !139)
!4405 = !DILocalVariable(name: "p", scope: !4401, file: !4072, line: 139, type: !132)
!4406 = !DILocalVariable(name: "___p1", scope: !4407, file: !4072, line: 140, type: !118)
!4407 = distinct !DILexicalBlock(scope: !4401, file: !4072, line: 140, column: 16)
!4408 = !DILocation(line: 137, column: 40, scope: !4401)
!4409 = !DILocation(line: 137, column: 74, scope: !4401)
!4410 = !DILocation(line: 139, column: 2, scope: !4401)
!4411 = !DILocation(line: 139, column: 17, scope: !4401)
!4412 = !DILocation(line: 139, column: 39, scope: !4401)
!4413 = !DILocation(line: 139, column: 47, scope: !4401)
!4414 = !DILocation(line: 139, column: 45, scope: !4401)
!4415 = !DILocation(line: 140, column: 16, scope: !4407)
!4416 = !DILocation(line: 140, column: 16, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4407, file: !4072, line: 140, column: 16)
!4418 = !DILocation(line: 140, column: 16, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4417, file: !4072, line: 140, column: 16)
!4420 = !DILocation(line: 140, column: 16, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4407, file: !4072, line: 140, column: 16)
!4422 = !{i64 2148071317}
!4423 = !DILocation(line: 140, column: 16, scope: !4401)
!4424 = !DILocation(line: 140, column: 40, scope: !4401)
!4425 = !DILocation(line: 140, column: 43, scope: !4401)
!4426 = !DILocation(line: 140, column: 36, scope: !4401)
!4427 = !DILocation(line: 140, column: 13, scope: !4401)
!4428 = !DILocation(line: 140, column: 9, scope: !4401)
!4429 = !DILocation(line: 141, column: 1, scope: !4401)
!4430 = !DILocation(line: 140, column: 2, scope: !4401)
!4431 = distinct !DISubprogram(name: "_test_bit_acquire", scope: !4103, file: !4103, line: 151, type: !4073, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4432)
!4432 = !{!4433, !4434}
!4433 = !DILocalVariable(name: "nr", arg: 1, scope: !4431, file: !4103, line: 151, type: !118)
!4434 = !DILocalVariable(name: "addr", arg: 2, scope: !4431, file: !4103, line: 151, type: !139)
!4435 = !DILocation(line: 151, column: 33, scope: !4431)
!4436 = !DILocation(line: 151, column: 67, scope: !4431)
!4437 = !DILocation(line: 153, column: 25, scope: !4431)
!4438 = !DILocation(line: 153, column: 32, scope: !4431)
!4439 = !DILocation(line: 153, column: 30, scope: !4431)
!4440 = !DILocation(line: 153, column: 2, scope: !4431)
!4441 = !DILocation(line: 154, column: 31, scope: !4431)
!4442 = !DILocation(line: 154, column: 35, scope: !4431)
!4443 = !DILocation(line: 154, column: 9, scope: !4431)
!4444 = !DILocation(line: 154, column: 2, scope: !4431)
!4445 = !DISubprogram(name: "out_of_line_wait_on_bit", scope: !4219, file: !4219, line: 30, type: !4446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!157, !121, !157, !4448, !7}
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_bit_action_f", file: !4219, line: 24, baseType: !4450)
!4450 = !DISubroutineType(types: !4451)
!4451 = !{!157, !4452, !157}
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_bit_key", file: !4219, line: 10, size: 192, elements: !4454)
!4454 = !{!4455, !4456, !4457}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4453, file: !4219, line: 11, baseType: !121, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !4453, file: !4219, line: 12, baseType: !157, size: 32, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4453, file: !4219, line: 13, baseType: !118, size: 64, offset: 128)
!4458 = distinct !DISubprogram(name: "arch_test_bit_acquire", scope: !4260, file: !4260, line: 244, type: !4073, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4459)
!4459 = !{!4460, !4461}
!4460 = !DILocalVariable(name: "nr", arg: 1, scope: !4458, file: !4260, line: 244, type: !118)
!4461 = !DILocalVariable(name: "addr", arg: 2, scope: !4458, file: !4260, line: 244, type: !139)
!4462 = !DILocation(line: 244, column: 37, scope: !4458)
!4463 = !DILocation(line: 244, column: 71, scope: !4458)
!4464 = !DILocation(line: 246, column: 30, scope: !4458)
!4465 = !DILocation(line: 246, column: 9, scope: !4458)
!4466 = !DILocation(line: 246, column: 62, scope: !4458)
!4467 = !DILocation(line: 246, column: 66, scope: !4458)
!4468 = !DILocation(line: 246, column: 36, scope: !4458)
!4469 = !DILocation(line: 247, column: 26, scope: !4458)
!4470 = !DILocation(line: 247, column: 30, scope: !4458)
!4471 = !DILocation(line: 247, column: 8, scope: !4458)
!4472 = !DILocation(line: 246, column: 2, scope: !4458)
!4473 = distinct !DISubprogram(name: "constant_test_bit_acquire", scope: !4260, file: !4260, line: 210, type: !4298, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4474)
!4474 = !{!4475, !4476, !4477}
!4475 = !DILocalVariable(name: "nr", arg: 1, scope: !4473, file: !4260, line: 210, type: !138)
!4476 = !DILocalVariable(name: "addr", arg: 2, scope: !4473, file: !4260, line: 210, type: !139)
!4477 = !DILocalVariable(name: "oldbit", scope: !4473, file: !4260, line: 212, type: !371)
!4478 = !DILocation(line: 210, column: 60, scope: !4473)
!4479 = !DILocation(line: 210, column: 94, scope: !4473)
!4480 = !DILocation(line: 212, column: 2, scope: !4473)
!4481 = !DILocation(line: 212, column: 7, scope: !4473)
!4482 = !DILocation(line: 217, column: 33, scope: !4473)
!4483 = !DILocation(line: 217, column: 39, scope: !4473)
!4484 = !DILocation(line: 217, column: 42, scope: !4473)
!4485 = !DILocation(line: 217, column: 15, scope: !4473)
!4486 = !DILocation(line: 218, column: 21, scope: !4473)
!4487 = !DILocation(line: 218, column: 24, scope: !4473)
!4488 = !DILocation(line: 218, column: 17, scope: !4473)
!4489 = !DILocation(line: 214, column: 2, scope: !4473)
!4490 = !{i64 593601, i64 2148096267}
!4491 = !DILocation(line: 221, column: 9, scope: !4473)
!4492 = !DILocation(line: 222, column: 1, scope: !4473)
!4493 = !DILocation(line: 221, column: 2, scope: !4473)
!4494 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !4165, file: !4165, line: 82, type: !4495, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4497)
!4495 = !DISubroutineType(types: !4496)
!4496 = !{!371, !138, !4168}
!4497 = !{!4498, !4499}
!4498 = !DILocalVariable(name: "nr", arg: 1, scope: !4494, file: !4165, line: 82, type: !138)
!4499 = !DILocalVariable(name: "addr", arg: 2, scope: !4494, file: !4165, line: 82, type: !4168)
!4500 = !DILocation(line: 82, column: 53, scope: !4494)
!4501 = !DILocation(line: 82, column: 81, scope: !4494)
!4502 = !DILocation(line: 84, column: 2, scope: !4494)
!4503 = !DILocation(line: 84, column: 2, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4494, file: !4165, line: 84, column: 2)
!4505 = !DILocation(line: 85, column: 31, scope: !4494)
!4506 = !DILocation(line: 85, column: 38, scope: !4494)
!4507 = !DILocation(line: 85, column: 36, scope: !4494)
!4508 = !DILocation(line: 85, column: 2, scope: !4494)
!4509 = !DILocation(line: 86, column: 33, scope: !4494)
!4510 = !DILocation(line: 86, column: 37, scope: !4494)
!4511 = !DILocation(line: 86, column: 9, scope: !4494)
!4512 = !DILocation(line: 86, column: 2, scope: !4494)
!4513 = distinct !DISubprogram(name: "spin_lock", scope: !4514, file: !4514, line: 349, type: !4515, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4517)
!4514 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4515 = !DISubroutineType(types: !4516)
!4516 = !{null, !2102}
!4517 = !{!4518}
!4518 = !DILocalVariable(name: "lock", arg: 1, scope: !4513, file: !4514, line: 349, type: !2102)
!4519 = !DILocation(line: 349, column: 51, scope: !4513)
!4520 = !DILocation(line: 351, column: 2, scope: !4513)
!4521 = !DILocation(line: 352, column: 1, scope: !4513)
!4522 = !DISubprogram(name: "rb_first", scope: !4523, file: !4523, line: 46, type: !4524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4523 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e0facf00d8c55244f0fbd487ce02705")
!4524 = !DISubroutineType(types: !4525)
!4525 = !{!178, !4526}
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!4528 = !DISubprogram(name: "rb_next", scope: !4523, file: !4523, line: 44, type: !4529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!178, !4531}
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!4533 = distinct !DISubprogram(name: "refcount_read", scope: !149, file: !149, line: 145, type: !4534, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4538)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!7, !4536}
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!4538 = !{!4539}
!4539 = !DILocalVariable(name: "r", arg: 1, scope: !4533, file: !149, line: 145, type: !4536)
!4540 = !DILocation(line: 145, column: 60, scope: !4533)
!4541 = !DILocation(line: 147, column: 22, scope: !4533)
!4542 = !DILocation(line: 147, column: 25, scope: !4533)
!4543 = !DILocation(line: 147, column: 9, scope: !4533)
!4544 = !DILocation(line: 147, column: 2, scope: !4533)
!4545 = distinct !DISubprogram(name: "spin_is_contended", scope: !4514, file: !4514, line: 447, type: !4546, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4548)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!157, !2102}
!4548 = !{!4549}
!4549 = !DILocalVariable(name: "lock", arg: 1, scope: !4545, file: !4514, line: 447, type: !2102)
!4550 = !DILocation(line: 447, column: 58, scope: !4545)
!4551 = !DILocation(line: 449, column: 9, scope: !4545)
!4552 = !DILocation(line: 449, column: 2, scope: !4545)
!4553 = distinct !DISubprogram(name: "need_resched", scope: !519, file: !519, line: 2260, type: !4554, scopeLine: 2261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4554 = !DISubroutineType(types: !4555)
!4555 = !{!371}
!4556 = !DILocation(line: 2262, column: 9, scope: !4553)
!4557 = !DILocation(line: 2262, column: 2, scope: !4553)
!4558 = distinct !DISubprogram(name: "spin_unlock", scope: !4514, file: !4514, line: 389, type: !4515, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4559)
!4559 = !{!4560}
!4560 = !DILocalVariable(name: "lock", arg: 1, scope: !4558, file: !4514, line: 389, type: !2102)
!4561 = !DILocation(line: 389, column: 53, scope: !4558)
!4562 = !DILocation(line: 391, column: 2, scope: !4558)
!4563 = !DILocation(line: 392, column: 1, scope: !4558)
!4564 = distinct !DISubprogram(name: "__might_resched", scope: !3661, file: !3661, line: 184, type: !4565, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4567)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{null, !316, !157, !7}
!4567 = !{!4568, !4569, !4570}
!4568 = !DILocalVariable(name: "file", arg: 1, scope: !4564, file: !3661, line: 184, type: !316)
!4569 = !DILocalVariable(name: "line", arg: 2, scope: !4564, file: !3661, line: 184, type: !157)
!4570 = !DILocalVariable(name: "offsets", arg: 3, scope: !4564, file: !3661, line: 185, type: !7)
!4571 = !DILocation(line: 184, column: 50, scope: !4564)
!4572 = !DILocation(line: 184, column: 60, scope: !4564)
!4573 = !DILocation(line: 185, column: 23, scope: !4564)
!4574 = !DILocation(line: 185, column: 34, scope: !4564)
!4575 = !DILocation(line: 2104, column: 9, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !3692, file: !519, line: 2104, column: 9)
!4577 = !DILocation(line: 2104, column: 9, scope: !3692)
!4578 = !DILocation(line: 2104, column: 2, scope: !3692)
!4579 = distinct !DISubprogram(name: "list_empty", scope: !4580, file: !4580, line: 371, type: !4581, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4585)
!4580 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!157, !4583}
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!4585 = !{!4586}
!4586 = !DILocalVariable(name: "head", arg: 1, scope: !4579, file: !4580, line: 371, type: !4583)
!4587 = !DILocation(line: 371, column: 54, scope: !4579)
!4588 = !DILocation(line: 373, column: 9, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4579, file: !4580, line: 373, column: 9)
!4590 = !DILocation(line: 373, column: 9, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4589, file: !4580, line: 373, column: 9)
!4592 = !DILocation(line: 373, column: 34, scope: !4579)
!4593 = !DILocation(line: 373, column: 31, scope: !4579)
!4594 = !DILocation(line: 373, column: 2, scope: !4579)
!4595 = !DISubprogram(name: "synchronize_rcu", scope: !4596, file: !4596, line: 45, type: !3041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4596 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4597 = distinct !DISubprogram(name: "key_gc_unused_keys", scope: !3, file: !3, line: 135, type: !4598, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4600)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{null, !170}
!4600 = !{!4601, !4602, !4604, !4606}
!4601 = !DILocalVariable(name: "keys", arg: 1, scope: !4597, file: !3, line: 135, type: !170)
!4602 = !DILocalVariable(name: "key", scope: !4603, file: !3, line: 138, type: !144)
!4603 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 137, column: 28)
!4604 = !DILocalVariable(name: "__mptr", scope: !4605, file: !3, line: 139, type: !121)
!4605 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 139, column: 4)
!4606 = !DILocalVariable(name: "state", scope: !4603, file: !3, line: 140, type: !289)
!4607 = !DILocation(line: 135, column: 59, scope: !4597)
!4608 = !DILocation(line: 137, column: 2, scope: !4597)
!4609 = !DILocation(line: 137, column: 21, scope: !4597)
!4610 = !DILocation(line: 137, column: 10, scope: !4597)
!4611 = !DILocation(line: 137, column: 9, scope: !4597)
!4612 = !DILocation(line: 138, column: 3, scope: !4603)
!4613 = !DILocation(line: 138, column: 15, scope: !4603)
!4614 = !DILocation(line: 139, column: 4, scope: !4605)
!4615 = !DILocation(line: 139, column: 4, scope: !4603)
!4616 = !DILocation(line: 140, column: 3, scope: !4603)
!4617 = !DILocation(line: 140, column: 9, scope: !4603)
!4618 = !DILocation(line: 140, column: 17, scope: !4603)
!4619 = !DILocation(line: 140, column: 22, scope: !4603)
!4620 = !DILocation(line: 142, column: 13, scope: !4603)
!4621 = !DILocation(line: 142, column: 18, scope: !4603)
!4622 = !DILocation(line: 142, column: 3, scope: !4603)
!4623 = !DILocation(line: 144, column: 3, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4625, file: !3, line: 144, column: 3)
!4625 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 144, column: 3)
!4626 = !DILocation(line: 144, column: 3, scope: !4625)
!4627 = !DILocation(line: 145, column: 3, scope: !4603)
!4628 = !DILocation(line: 145, column: 3, scope: !4629)
!4629 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 145, column: 3)
!4630 = !DILocation(line: 153, column: 7, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 153, column: 7)
!4632 = !DILocation(line: 153, column: 13, scope: !4631)
!4633 = !DILocation(line: 153, column: 32, scope: !4631)
!4634 = !DILocation(line: 153, column: 35, scope: !4631)
!4635 = !DILocation(line: 153, column: 40, scope: !4631)
!4636 = !DILocation(line: 153, column: 46, scope: !4631)
!4637 = !DILocation(line: 153, column: 7, scope: !4603)
!4638 = !DILocation(line: 154, column: 4, scope: !4631)
!4639 = !DILocation(line: 154, column: 9, scope: !4631)
!4640 = !DILocation(line: 154, column: 15, scope: !4631)
!4641 = !DILocation(line: 154, column: 23, scope: !4631)
!4642 = !DILocation(line: 156, column: 21, scope: !4603)
!4643 = !DILocation(line: 156, column: 3, scope: !4603)
!4644 = !DILocation(line: 159, column: 7, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 159, column: 7)
!4646 = !DILocation(line: 159, column: 7, scope: !4603)
!4647 = !DILocation(line: 160, column: 15, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4645, file: !3, line: 159, column: 49)
!4649 = !DILocation(line: 160, column: 20, scope: !4648)
!4650 = !DILocation(line: 160, column: 26, scope: !4648)
!4651 = !DILocation(line: 160, column: 4, scope: !4648)
!4652 = !DILocation(line: 161, column: 4, scope: !4648)
!4653 = !DILocation(line: 161, column: 9, scope: !4648)
!4654 = !DILocation(line: 161, column: 15, scope: !4648)
!4655 = !DILocation(line: 161, column: 21, scope: !4648)
!4656 = !DILocation(line: 162, column: 26, scope: !4648)
!4657 = !DILocation(line: 162, column: 31, scope: !4648)
!4658 = !DILocation(line: 162, column: 4, scope: !4648)
!4659 = !DILocation(line: 162, column: 9, scope: !4648)
!4660 = !DILocation(line: 162, column: 15, scope: !4648)
!4661 = !DILocation(line: 162, column: 23, scope: !4648)
!4662 = !DILocation(line: 163, column: 17, scope: !4648)
!4663 = !DILocation(line: 163, column: 22, scope: !4648)
!4664 = !DILocation(line: 163, column: 28, scope: !4648)
!4665 = !DILocation(line: 163, column: 4, scope: !4648)
!4666 = !DILocation(line: 164, column: 3, scope: !4648)
!4667 = !DILocation(line: 166, column: 15, scope: !4603)
!4668 = !DILocation(line: 166, column: 20, scope: !4603)
!4669 = !DILocation(line: 166, column: 26, scope: !4603)
!4670 = !DILocation(line: 166, column: 3, scope: !4603)
!4671 = !DILocation(line: 167, column: 7, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4603, file: !3, line: 167, column: 7)
!4673 = !DILocation(line: 167, column: 13, scope: !4672)
!4674 = !DILocation(line: 167, column: 7, scope: !4603)
!4675 = !DILocation(line: 168, column: 16, scope: !4672)
!4676 = !DILocation(line: 168, column: 21, scope: !4672)
!4677 = !DILocation(line: 168, column: 27, scope: !4672)
!4678 = !DILocation(line: 168, column: 4, scope: !4672)
!4679 = !DILocation(line: 170, column: 16, scope: !4603)
!4680 = !DILocation(line: 170, column: 21, scope: !4603)
!4681 = !DILocation(line: 170, column: 3, scope: !4603)
!4682 = !DILocation(line: 171, column: 15, scope: !4603)
!4683 = !DILocation(line: 171, column: 20, scope: !4603)
!4684 = !DILocation(line: 171, column: 3, scope: !4603)
!4685 = !DILocation(line: 172, column: 9, scope: !4603)
!4686 = !DILocation(line: 172, column: 14, scope: !4603)
!4687 = !DILocation(line: 172, column: 3, scope: !4603)
!4688 = !DILocation(line: 174, column: 20, scope: !4603)
!4689 = !DILocation(line: 174, column: 3, scope: !4603)
!4690 = !DILocation(line: 175, column: 19, scope: !4603)
!4691 = !DILocation(line: 175, column: 28, scope: !4603)
!4692 = !DILocation(line: 175, column: 3, scope: !4603)
!4693 = !DILocation(line: 176, column: 2, scope: !4597)
!4694 = distinct !{!4694, !4608, !4693, !3866, !3867}
!4695 = !DILocation(line: 177, column: 1, scope: !4597)
!4696 = distinct !DISubprogram(name: "clear_bit", scope: !4165, file: !4165, line: 39, type: !4166, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4697)
!4697 = !{!4698, !4699}
!4698 = !DILocalVariable(name: "nr", arg: 1, scope: !4696, file: !4165, line: 39, type: !138)
!4699 = !DILocalVariable(name: "addr", arg: 2, scope: !4696, file: !4165, line: 39, type: !4168)
!4700 = !DILocation(line: 39, column: 44, scope: !4696)
!4701 = !DILocation(line: 39, column: 72, scope: !4696)
!4702 = !DILocation(line: 41, column: 26, scope: !4696)
!4703 = !DILocation(line: 41, column: 33, scope: !4696)
!4704 = !DILocation(line: 41, column: 31, scope: !4696)
!4705 = !DILocation(line: 41, column: 2, scope: !4696)
!4706 = !DILocation(line: 42, column: 17, scope: !4696)
!4707 = !DILocation(line: 42, column: 21, scope: !4696)
!4708 = !DILocation(line: 42, column: 2, scope: !4696)
!4709 = !DILocation(line: 43, column: 1, scope: !4696)
!4710 = !DISubprogram(name: "wake_up_bit", scope: !4219, file: !4219, line: 29, type: !4711, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{null, !121, !157}
!4713 = !DISubprogram(name: "rb_erase", scope: !4523, file: !4523, line: 40, type: !4714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4714 = !DISubroutineType(types: !4715)
!4715 = !{null, !178, !4716}
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!4717 = distinct !DISubprogram(name: "list_add_tail", scope: !4580, file: !4580, line: 181, type: !4718, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4720)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{null, !170, !170}
!4720 = !{!4721, !4722}
!4721 = !DILocalVariable(name: "new", arg: 1, scope: !4717, file: !4580, line: 181, type: !170)
!4722 = !DILocalVariable(name: "head", arg: 2, scope: !4717, file: !4580, line: 181, type: !170)
!4723 = !DILocation(line: 181, column: 52, scope: !4717)
!4724 = !DILocation(line: 181, column: 75, scope: !4717)
!4725 = !DILocation(line: 183, column: 13, scope: !4717)
!4726 = !DILocation(line: 183, column: 18, scope: !4717)
!4727 = !DILocation(line: 183, column: 24, scope: !4717)
!4728 = !DILocation(line: 183, column: 30, scope: !4717)
!4729 = !DILocation(line: 183, column: 2, scope: !4717)
!4730 = !DILocation(line: 184, column: 1, scope: !4717)
!4731 = !DISubprogram(name: "keyring_restriction_gc", scope: !230, file: !230, line: 175, type: !4732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4732 = !DISubroutineType(types: !4733)
!4733 = !{null, !144, !311}
!4734 = !DISubprogram(name: "keyring_gc", scope: !230, file: !230, line: 174, type: !4131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4735 = !DISubprogram(name: "down_write", scope: !182, file: !182, line: 187, type: !4736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{null, !4738}
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!4739 = !DISubprogram(name: "up_write", scope: !182, file: !182, line: 203, type: !4736, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4740 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4243, file: !4243, line: 94, type: !4244, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4741)
!4741 = !{!4742, !4743}
!4742 = !DILocalVariable(name: "v", arg: 1, scope: !4740, file: !4243, line: 94, type: !4246)
!4743 = !DILocalVariable(name: "size", arg: 2, scope: !4740, file: !4243, line: 94, type: !319)
!4744 = !DILocation(line: 94, column: 79, scope: !4740)
!4745 = !DILocation(line: 94, column: 89, scope: !4740)
!4746 = !DILocation(line: 96, column: 20, scope: !4740)
!4747 = !DILocation(line: 96, column: 23, scope: !4740)
!4748 = !DILocation(line: 96, column: 2, scope: !4740)
!4749 = !DILocation(line: 97, column: 2, scope: !4740)
!4750 = !DILocation(line: 98, column: 1, scope: !4740)
!4751 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !4260, file: !4260, line: 160, type: !4495, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4752)
!4752 = !{!4753, !4754, !4755}
!4753 = !DILocalVariable(name: "nr", arg: 1, scope: !4751, file: !4260, line: 160, type: !138)
!4754 = !DILocalVariable(name: "addr", arg: 2, scope: !4751, file: !4260, line: 160, type: !4168)
!4755 = !DILocalVariable(name: "c", scope: !4756, file: !4260, line: 162, type: !371)
!4756 = distinct !DILexicalBlock(scope: !4751, file: !4260, line: 162, column: 9)
!4757 = !DILocation(line: 160, column: 30, scope: !4751)
!4758 = !DILocation(line: 160, column: 58, scope: !4751)
!4759 = !DILocation(line: 162, column: 9, scope: !4756)
!4760 = !{i64 2148092369, i64 2148092408, i64 2148092429, i64 2148092466, i64 2148092489, i64 2148092498, i64 2148092601}
!4761 = !DILocation(line: 162, column: 9, scope: !4751)
!4762 = !DILocation(line: 162, column: 2, scope: !4751)
!4763 = !DISubprogram(name: "_raw_spin_lock", scope: !4764, file: !4764, line: 22, type: !4765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4764 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4765 = !DISubroutineType(types: !4766)
!4766 = !{null, !4767}
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!4768 = distinct !DISubprogram(name: "atomic_read", scope: !4769, file: !4769, line: 30, type: !4770, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4774)
!4769 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!157, !4772}
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!4774 = !{!4775}
!4775 = !DILocalVariable(name: "v", arg: 1, scope: !4768, file: !4769, line: 30, type: !4772)
!4776 = !DILocation(line: 30, column: 29, scope: !4768)
!4777 = !DILocation(line: 32, column: 25, scope: !4768)
!4778 = !DILocation(line: 32, column: 2, scope: !4768)
!4779 = !DILocation(line: 33, column: 25, scope: !4768)
!4780 = !DILocation(line: 33, column: 9, scope: !4768)
!4781 = !DILocation(line: 33, column: 2, scope: !4768)
!4782 = distinct !DISubprogram(name: "raw_atomic_read", scope: !4783, file: !4783, line: 442, type: !4770, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4784)
!4783 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4784 = !{!4785}
!4785 = !DILocalVariable(name: "v", arg: 1, scope: !4782, file: !4783, line: 442, type: !4772)
!4786 = !DILocation(line: 442, column: 33, scope: !4782)
!4787 = !DILocation(line: 444, column: 26, scope: !4782)
!4788 = !DILocation(line: 444, column: 9, scope: !4782)
!4789 = !DILocation(line: 444, column: 2, scope: !4782)
!4790 = distinct !DISubprogram(name: "arch_atomic_read", scope: !4791, file: !4791, line: 17, type: !4770, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4792)
!4791 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4792 = !{!4793}
!4793 = !DILocalVariable(name: "v", arg: 1, scope: !4790, file: !4791, line: 17, type: !4772)
!4794 = !DILocation(line: 17, column: 61, scope: !4790)
!4795 = !DILocation(line: 23, column: 9, scope: !4790)
!4796 = !DILocation(line: 23, column: 2, scope: !4790)
!4797 = distinct !DISubprogram(name: "queued_spin_is_contended", scope: !4798, file: !4798, line: 81, type: !4799, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4802)
!4798 = !DIFile(filename: "./include/asm-generic/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee2071dbdb30625b016b6622681cc28")
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!157, !4801}
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!4802 = !{!4803}
!4803 = !DILocalVariable(name: "lock", arg: 1, scope: !4797, file: !4798, line: 81, type: !4801)
!4804 = !DILocation(line: 81, column: 71, scope: !4797)
!4805 = !DILocation(line: 83, column: 22, scope: !4797)
!4806 = !DILocation(line: 83, column: 28, scope: !4797)
!4807 = !DILocation(line: 83, column: 9, scope: !4797)
!4808 = !DILocation(line: 83, column: 33, scope: !4797)
!4809 = !DILocation(line: 83, column: 2, scope: !4797)
!4810 = distinct !DISubprogram(name: "tif_need_resched", scope: !4811, file: !4811, line: 182, type: !4554, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4811 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4812 = !DILocation(line: 185, column: 28, scope: !4810)
!4813 = !DILocation(line: 185, column: 51, scope: !4810)
!4814 = !DILocation(line: 184, column: 9, scope: !4810)
!4815 = !DILocation(line: 184, column: 2, scope: !4810)
!4816 = distinct !DISubprogram(name: "get_current", scope: !4817, file: !4817, line: 39, type: !4818, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4820)
!4817 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!517}
!4820 = !{!4821, !4823, !4825}
!4821 = !DILocalVariable(name: "pscr_ret__", scope: !4822, file: !4817, line: 41, type: !517)
!4822 = distinct !DILexicalBlock(scope: !4816, file: !4817, line: 41, column: 9)
!4823 = !DILocalVariable(name: "__vpp_verify", scope: !4824, file: !4817, line: 41, type: !346)
!4824 = distinct !DILexicalBlock(scope: !4822, file: !4817, line: 41, column: 9)
!4825 = !DILocalVariable(name: "pfo_val__", scope: !4826, file: !4817, line: 41, type: !129)
!4826 = distinct !DILexicalBlock(scope: !4822, file: !4817, line: 41, column: 9)
!4827 = !DILocation(line: 41, column: 9, scope: !4822)
!4828 = !DILocation(line: 41, column: 9, scope: !4824)
!4829 = !DILocation(line: 41, column: 9, scope: !4826)
!4830 = !{i64 2148389741}
!4831 = !DILocation(line: 41, column: 9, scope: !4816)
!4832 = !DILocation(line: 41, column: 2, scope: !4816)
!4833 = !DISubprogram(name: "_raw_spin_unlock", scope: !4764, file: !4764, line: 39, type: !4765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4834 = distinct !DISubprogram(name: "list_del", scope: !4580, file: !4580, line: 227, type: !4598, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4835)
!4835 = !{!4836}
!4836 = !DILocalVariable(name: "entry", arg: 1, scope: !4834, file: !4580, line: 227, type: !170)
!4837 = !DILocation(line: 227, column: 47, scope: !4834)
!4838 = !DILocation(line: 229, column: 19, scope: !4834)
!4839 = !DILocation(line: 229, column: 2, scope: !4834)
!4840 = !DILocation(line: 230, column: 2, scope: !4834)
!4841 = !DILocation(line: 230, column: 9, scope: !4834)
!4842 = !DILocation(line: 230, column: 14, scope: !4834)
!4843 = !DILocation(line: 231, column: 2, scope: !4834)
!4844 = !DILocation(line: 231, column: 9, scope: !4834)
!4845 = !DILocation(line: 231, column: 14, scope: !4834)
!4846 = !DILocation(line: 232, column: 1, scope: !4834)
!4847 = !DISubprogram(name: "security_key_free", scope: !4848, file: !4848, line: 1920, type: !386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4848 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!4849 = distinct !DISubprogram(name: "atomic_dec", scope: !4769, file: !4769, line: 590, type: !4850, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4853)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{null, !4852}
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!4853 = !{!4854}
!4854 = !DILocalVariable(name: "v", arg: 1, scope: !4849, file: !4769, line: 590, type: !4852)
!4855 = !DILocation(line: 590, column: 22, scope: !4849)
!4856 = !DILocation(line: 592, column: 31, scope: !4849)
!4857 = !DILocation(line: 592, column: 2, scope: !4849)
!4858 = !DILocation(line: 593, column: 17, scope: !4849)
!4859 = !DILocation(line: 593, column: 2, scope: !4849)
!4860 = !DILocation(line: 594, column: 1, scope: !4849)
!4861 = !DISubprogram(name: "key_user_put", scope: !230, file: !230, line: 71, type: !4862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{null, !228}
!4864 = !DISubprogram(name: "key_put_tag", scope: !113, file: !113, line: 303, type: !4865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!371, !465}
!4867 = !DISubprogram(name: "kfree", scope: !4868, file: !4868, line: 227, type: !4869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4868 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!4869 = !DISubroutineType(types: !4870)
!4870 = !{null, !346}
!4871 = distinct !DISubprogram(name: "memzero_explicit", scope: !4872, file: !4872, line: 276, type: !4873, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4875)
!4872 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4873 = !DISubroutineType(types: !4874)
!4874 = !{null, !121, !319}
!4875 = !{!4876, !4877}
!4876 = !DILocalVariable(name: "s", arg: 1, scope: !4871, file: !4872, line: 276, type: !121)
!4877 = !DILocalVariable(name: "count", arg: 2, scope: !4871, file: !4872, line: 276, type: !319)
!4878 = !DILocation(line: 276, column: 43, scope: !4871)
!4879 = !DILocation(line: 276, column: 53, scope: !4871)
!4880 = !DILocation(line: 278, column: 9, scope: !4871)
!4881 = !DILocation(line: 278, column: 15, scope: !4871)
!4882 = !DILocation(line: 278, column: 2, scope: !4871)
!4883 = !DILocation(line: 279, column: 2, scope: !4871)
!4884 = !{i64 2148890163}
!4885 = !DILocation(line: 280, column: 1, scope: !4871)
!4886 = !DISubprogram(name: "kmem_cache_free", scope: !4868, file: !4868, line: 503, type: !4887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{null, !4889, !121}
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4891, line: 11, flags: DIFlagFwdDecl)
!4891 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4892 = distinct !DISubprogram(name: "__list_del_entry", scope: !4580, file: !4580, line: 213, type: !4598, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4893)
!4893 = !{!4894}
!4894 = !DILocalVariable(name: "entry", arg: 1, scope: !4892, file: !4580, line: 213, type: !170)
!4895 = !DILocation(line: 213, column: 55, scope: !4892)
!4896 = !DILocation(line: 215, column: 30, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4892, file: !4580, line: 215, column: 6)
!4898 = !DILocation(line: 215, column: 7, scope: !4897)
!4899 = !DILocation(line: 215, column: 6, scope: !4892)
!4900 = !DILocation(line: 216, column: 3, scope: !4897)
!4901 = !DILocation(line: 218, column: 13, scope: !4892)
!4902 = !DILocation(line: 218, column: 20, scope: !4892)
!4903 = !DILocation(line: 218, column: 26, scope: !4892)
!4904 = !DILocation(line: 218, column: 33, scope: !4892)
!4905 = !DILocation(line: 218, column: 2, scope: !4892)
!4906 = !DILocation(line: 219, column: 1, scope: !4892)
!4907 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4580, file: !4580, line: 134, type: !4908, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4910)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!371, !170}
!4910 = !{!4911}
!4911 = !DILocalVariable(name: "entry", arg: 1, scope: !4907, file: !4580, line: 134, type: !170)
!4912 = !DILocation(line: 134, column: 61, scope: !4907)
!4913 = !DILocation(line: 136, column: 2, scope: !4907)
!4914 = distinct !DISubprogram(name: "__list_del", scope: !4580, file: !4580, line: 193, type: !4718, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4915)
!4915 = !{!4916, !4917}
!4916 = !DILocalVariable(name: "prev", arg: 1, scope: !4914, file: !4580, line: 193, type: !170)
!4917 = !DILocalVariable(name: "next", arg: 2, scope: !4914, file: !4580, line: 193, type: !170)
!4918 = !DILocation(line: 193, column: 50, scope: !4914)
!4919 = !DILocation(line: 193, column: 75, scope: !4914)
!4920 = !DILocation(line: 195, column: 15, scope: !4914)
!4921 = !DILocation(line: 195, column: 2, scope: !4914)
!4922 = !DILocation(line: 195, column: 8, scope: !4914)
!4923 = !DILocation(line: 195, column: 13, scope: !4914)
!4924 = !DILocation(line: 196, column: 2, scope: !4914)
!4925 = !DILocation(line: 196, column: 2, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4914, file: !4580, line: 196, column: 2)
!4927 = !DILocation(line: 196, column: 2, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4926, file: !4580, line: 196, column: 2)
!4929 = !DILocation(line: 196, column: 2, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4926, file: !4580, line: 196, column: 2)
!4931 = !DILocation(line: 197, column: 1, scope: !4914)
!4932 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !4783, file: !4783, line: 1194, type: !4850, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4933)
!4933 = !{!4934}
!4934 = !DILocalVariable(name: "v", arg: 1, scope: !4932, file: !4783, line: 1194, type: !4852)
!4935 = !DILocation(line: 1194, column: 26, scope: !4932)
!4936 = !DILocation(line: 1197, column: 18, scope: !4932)
!4937 = !DILocation(line: 1197, column: 2, scope: !4932)
!4938 = !DILocation(line: 1201, column: 1, scope: !4932)
!4939 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !4791, file: !4791, line: 58, type: !4850, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4940)
!4940 = !{!4941}
!4941 = !DILocalVariable(name: "v", arg: 1, scope: !4939, file: !4791, line: 58, type: !4852)
!4942 = !DILocation(line: 58, column: 55, scope: !4939)
!4943 = !DILocation(line: 61, column: 16, scope: !4939)
!4944 = !DILocation(line: 61, column: 19, scope: !4939)
!4945 = !DILocation(line: 60, column: 2, scope: !4939)
!4946 = !{i64 2148928558, i64 2148928597, i64 2148928618, i64 2148928655, i64 2148928678, i64 2148928548}
!4947 = !DILocation(line: 62, column: 1, scope: !4939)
!4948 = distinct !DISubprogram(name: "arch_clear_bit", scope: !4260, file: !4260, line: 72, type: !4166, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4949)
!4949 = !{!4950, !4951}
!4950 = !DILocalVariable(name: "nr", arg: 1, scope: !4948, file: !4260, line: 72, type: !138)
!4951 = !DILocalVariable(name: "addr", arg: 2, scope: !4948, file: !4260, line: 72, type: !4168)
!4952 = !DILocation(line: 72, column: 21, scope: !4948)
!4953 = !DILocation(line: 72, column: 49, scope: !4948)
!4954 = !DILocation(line: 74, column: 27, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4948, file: !4260, line: 74, column: 6)
!4956 = !DILocation(line: 74, column: 6, scope: !4955)
!4957 = !DILocation(line: 74, column: 6, scope: !4948)
!4958 = !DILocation(line: 76, column: 6, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4955, file: !4260, line: 74, column: 32)
!4960 = !DILocation(line: 77, column: 13, scope: !4959)
!4961 = !DILocation(line: 77, column: 12, scope: !4959)
!4962 = !DILocation(line: 75, column: 3, scope: !4959)
!4963 = !{i64 2148084304, i64 2148084343, i64 2148084364, i64 2148084401, i64 2148084424, i64 2148084294}
!4964 = !DILocation(line: 78, column: 2, scope: !4959)
!4965 = !DILocation(line: 80, column: 8, scope: !4966)
!4966 = distinct !DILexicalBlock(scope: !4955, file: !4260, line: 78, column: 9)
!4967 = !DILocation(line: 80, column: 32, scope: !4966)
!4968 = !DILocation(line: 79, column: 3, scope: !4966)
!4969 = !{i64 2148084589, i64 2148084628, i64 2148084649, i64 2148084686, i64 2148084709, i64 2148084579}
!4970 = !DILocation(line: 82, column: 1, scope: !4948)
!4971 = distinct !DISubprogram(name: "__list_add", scope: !4580, file: !4580, line: 146, type: !4972, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4974)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{null, !170, !170, !170}
!4974 = !{!4975, !4976, !4977}
!4975 = !DILocalVariable(name: "new", arg: 1, scope: !4971, file: !4580, line: 146, type: !170)
!4976 = !DILocalVariable(name: "prev", arg: 2, scope: !4971, file: !4580, line: 147, type: !170)
!4977 = !DILocalVariable(name: "next", arg: 3, scope: !4971, file: !4580, line: 148, type: !170)
!4978 = !DILocation(line: 146, column: 49, scope: !4971)
!4979 = !DILocation(line: 147, column: 28, scope: !4971)
!4980 = !DILocation(line: 148, column: 28, scope: !4971)
!4981 = !DILocation(line: 150, column: 24, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4971, file: !4580, line: 150, column: 6)
!4983 = !DILocation(line: 150, column: 29, scope: !4982)
!4984 = !DILocation(line: 150, column: 35, scope: !4982)
!4985 = !DILocation(line: 150, column: 7, scope: !4982)
!4986 = !DILocation(line: 150, column: 6, scope: !4971)
!4987 = !DILocation(line: 151, column: 3, scope: !4982)
!4988 = !DILocation(line: 153, column: 15, scope: !4971)
!4989 = !DILocation(line: 153, column: 2, scope: !4971)
!4990 = !DILocation(line: 153, column: 8, scope: !4971)
!4991 = !DILocation(line: 153, column: 13, scope: !4971)
!4992 = !DILocation(line: 154, column: 14, scope: !4971)
!4993 = !DILocation(line: 154, column: 2, scope: !4971)
!4994 = !DILocation(line: 154, column: 7, scope: !4971)
!4995 = !DILocation(line: 154, column: 12, scope: !4971)
!4996 = !DILocation(line: 155, column: 14, scope: !4971)
!4997 = !DILocation(line: 155, column: 2, scope: !4971)
!4998 = !DILocation(line: 155, column: 7, scope: !4971)
!4999 = !DILocation(line: 155, column: 12, scope: !4971)
!5000 = !DILocation(line: 156, column: 2, scope: !4971)
!5001 = !DILocation(line: 156, column: 2, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4971, file: !4580, line: 156, column: 2)
!5003 = !DILocation(line: 156, column: 2, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !5002, file: !4580, line: 156, column: 2)
!5005 = !DILocation(line: 156, column: 2, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5002, file: !4580, line: 156, column: 2)
!5007 = !DILocation(line: 157, column: 1, scope: !4971)
!5008 = distinct !DISubprogram(name: "__list_add_valid", scope: !4580, file: !4580, line: 128, type: !5009, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5011)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!371, !170, !170, !170}
!5011 = !{!5012, !5013, !5014}
!5012 = !DILocalVariable(name: "new", arg: 1, scope: !5008, file: !4580, line: 128, type: !170)
!5013 = !DILocalVariable(name: "prev", arg: 2, scope: !5008, file: !4580, line: 129, type: !170)
!5014 = !DILocalVariable(name: "next", arg: 3, scope: !5008, file: !4580, line: 130, type: !170)
!5015 = !DILocation(line: 128, column: 55, scope: !5008)
!5016 = !DILocation(line: 129, column: 23, scope: !5008)
!5017 = !DILocation(line: 130, column: 23, scope: !5008)
!5018 = !DILocation(line: 132, column: 2, scope: !5008)
